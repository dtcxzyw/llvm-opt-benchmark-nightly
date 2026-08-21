Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_intersections?download=true
inline.NumInlined: 39101
inline.NumDeleted: 8957
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 153
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_:bb.a
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i25 = load ptr, ptr %.phi.trans.insert.i24, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33: ; preds = %bb.p, %bb.q
  %i.bo = phi i64 [ %.pre34, %bb.p ], [ %i.ay, %bb.q ]
  %.pre-phi.i27 = phi i1 [ %.pre.i32, %bb.p ], [ %i.bb, %bb.q ]
  %i.bp = phi ptr [ %i.bg, %bb.p ], [ %.pre8.i25, %bb.q ]
  %i.bq = select i1 %.pre-phi.i27, ptr %0, ptr %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = select i1 %i.bt, ptr %i.u, ptr %i.bv
  %i.bx = shl i64 %i.bo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %i.bw, i64 %i.bx, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !6981, !range !13, !noundef !14
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bz, ptr %i.ca, align 8, !tbaa !6981
  br label %bb.y

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  %i.cb = icmp eq ptr %0, %2
  br i1 %i.cb, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %2)
  invoke void @_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %5)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.cg = load i8, ptr %i.cf, align 2, !range !13
  %i.ch = trunc nuw i8 %i.cg to i1
  %or.cond.i1.i = select i1 %i.ce, i1 true, i1 %i.ch
  br i1 %or.cond.i1.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load i64, ptr %i.ci, align 16
  %i.cm = shl i64 %i.cl, 3
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cm) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i: ; preds = %bb.u, %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.cr = load i8, ptr %i.cq, align 2, !range !13
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = load i64, ptr %5, align 16
  %i.cw = shl i64 %i.cv, 3
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cw) #37
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.z

bb.x:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(27) %i.cy, ptr noundef nonnull align 16 dereferenceable(27) %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33
  ret void

bb.z:                                             ; preds = %bb.w, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.cx, %bb.w ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL6RandomC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
_ZN4CGAL6Random7get_intEii.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !7112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 78606, ptr %i.c, align 8, !tbaa !7116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = call i64 @time(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.e = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !7117
  %i.h = mul i64 %i.e, 245109059551232
  %i.i = add i64 %i.h, 48083817484545
  %i.j = and i64 %i.i, 281474976665857            ; 2 uses
  %sum.shift = lshr i64 %i.j, 33
  %i.k = trunc nuw nsw i64 %sum.shift to i32
  store i64 %i.j, ptr %i.c, align 8, !tbaa !7116
  store i32 %i.k, ptr %0, align 8, !tbaa !7118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_10Triangle_3IS1_EEiEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %class.anon.971, align 8            ; 5 uses
  %5 = alloca %class.anon.970, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38
          to label %bb.b unwind label %bb.k       ; 8 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !61     ; 6 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.nonneg.i.i.i = sub i32 0, %i.q
  %i.s = urem i32 %.nonneg.i.i.i, 3
  %i.t = xor i32 %i.s, 3
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i32 %i.q, 2
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = urem i32 %i.q, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.t, %bb.c ], [ %i.v, %bb.e ], [ %i.q, %bb.d ]
  switch i32 %.0.i.i.i, label %bb.h [
    i32 0, label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i

_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.y = phi ptr [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %i.p, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.z, align 4, !tbaa !350
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 16 dereferenceable(48) %i.y, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.ab, align 16, !tbaa !7119
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.ac, align 8, !tbaa !355
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_vertex_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_10Triangle_3INS_5EpeckEEEiEEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i32 %i.q, ptr %i.ad, align 16, !tbaa !7122
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.af = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !101
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i
  %i.ak = atomicrmw add ptr %i.ah, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.i, %bb.j
  store ptr %i.m, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.al = load i32, ptr %i.c, align 4
  %i.am = and i32 %i.al, -24577
  %i.an = or disjoint i32 %i.am, %i.i
  store i32 %i.an, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.k:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.09 = extractvalue { ptr, i32 } %i.ao, 1
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.aq = icmp eq i32 %.09, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %.010 = extractvalue { ptr, i32 } %i.ao, 0
  %i.ar = call ptr @__cxa_begin_catch(ptr %.010) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.as = load i32, ptr %i.c, align 4
  %i.at = and i32 %i.as, -24577
  %i.au = or disjoint i32 %i.at, %i.i
  store i32 %i.au, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38 ; 3 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.aw, ptr %5, align 8, !tbaa !7124
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !59
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ay, align 8, !tbaa !59
  %i.az = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.az, align 8, !tbaa !59
  %i.ba = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.p ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ba) #39
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  store ptr null, ptr %i.az, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.q:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  store ptr null, ptr %i.az, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load i32, ptr %3, align 4, !tbaa !61    ; 5 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.nonneg.i.i = sub i32 0, %i.bf
  %i.bh = urem i32 %.nonneg.i.i, 3
  %i.bi = xor i32 %i.bh, 3
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bj = icmp samesign ugt i32 %i.bf, 2
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = urem i32 %i.bf, 3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i32 [ %i.bi, %bb.r ], [ %i.bk, %bb.t ], [ %i.bf, %bb.s ]
  switch i32 %.0.i.i, label %bb.w [
    i32 0, label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 336
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit

bb.w:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 528
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit

_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.bn = phi ptr [ %i.bm, %bb.w ], [ %i.bl, %bb.v ], [ %i.be, %bb.u ]
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(80) %i.av, ptr noundef nonnull align 16 dereferenceable(192) %i.bn)
          to label %_ZN4CGAL6HandleD2Ev.exit17 unwind label %bb.z

_ZN4CGAL6HandleD2Ev.exit17:                       ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit
  store ptr %i.av, ptr %0, align 8, !tbaa !101
  br label %bb.aa

bb.x:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k
  %.merged14 = phi { ptr, i32 } [ %i.bo, %bb.x ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bp = load i32, ptr %i.a, align 4
  %i.bq = and i32 %i.bp, -24577
  %i.br = or disjoint i32 %i.bq, %i.i
  store i32 %i.br, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.z ], [ %i.bb, %bb.p ]
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 80) #37
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit17
  ret void

bb.ab:                                            ; preds = %.body, %bb.y
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged14, %bb.y ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #29

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(192) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !7127
  %i.a = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %1), !noalias !7127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !7127
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fneg double %i.b
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = add i64 %.0, %index                     ; 2 uses
  %i.dd = xor i64 %i.dc, -1
  %i.de = add i64 %.187, %i.dd                    ; 2 uses
  %i.df = sub i64 %i.de, %i.b
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %wide.load = load <2 x i64>, ptr %i.dh, align 8, !tbaa !6973, !alias.scope !7314
  %i.di = shl <2 x i64> %wide.load, %broadcast.splat143 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.de
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  store <2 x i64> %i.di, ptr %i.dk, align 8, !tbaa !6973, !alias.scope !7317, !noalias !7319
  %i.dl = add i64 %i.dc, %i.b
  %i.dm = sub i64 %invariant.op, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %wide.load144 = load <2 x i64>, ptr %i.do, align 8, !tbaa !6973, !alias.scope !7321
  %i.dp = lshr <2 x i64> %wide.load144, %broadcast.splat
  %i.dq = or disjoint <2 x i64> %i.dp, %i.di
  store <2 x i64> %i.dq, ptr %i.dk, align 8, !tbaa !6973, !alias.scope !7317, !noalias !7319
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !7322

middle.block:                                     ; preds = %vector.body
  %i.ds = add i64 %n.vec, -1
  %i.dt = add i64 %.0, %i.ds
  %i.du = sub i64 %i.cf, %i.dt
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.db, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ei, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dv = xor i64 %.1108, -1
  %i.dw = add i64 %.187, %i.dv                    ; 2 uses
  %i.dx = sub i64 %i.dw, %i.b
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !6973
  %i.ea = shl i64 %i.dz, %i.d                     ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dw ; 2 uses
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !6973
  %i.ec = add i64 %.1108, %i.b
  %i.ed = sub i64 %invariant.op, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !6973
  %i.eg = lshr i64 %i.ef, %i.ce
  %i.eh = or disjoint i64 %i.eg, %i.ea
  store i64 %i.eh, ptr %i.eb, align 8, !tbaa !6973
  %i.ei = add i64 %.1108, 1                       ; 3 uses
  %i.ej = sub nsw i64 %.187, %i.ei                ; 2 uses
  %.not96 = icmp slt i64 %i.ej, %i.cc
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !7323

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.u
  %.1.lcssa = phi i64 [ %.0, %bb.u ], [ %i.db, %middle.block ], [ %i.ei, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cd, %bb.u ], [ %i.du, %middle.block ], [ %i.ej, %scalar.ph ]
  %i.ek = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.ek
  br i1 %.not97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.el = xor i64 %.1.lcssa, -1
  %i.em = add i64 %.187, %i.el                    ; 2 uses
  %i.en = sub i64 %i.em, %i.b
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !6973
  %i.eq = shl i64 %i.ep, %i.d
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.em
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !6973
  %i.es = add i64 %.1.lcssa, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2 = phi i64 [ %i.es, %bb.v ], [ %.1.lcssa, %._crit_edge ]
  %i.et = sub i64 %.187, %.2
  %i.eu = shl i64 %i.et, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.eu, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.w, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8VectorC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 265
  %i.b = load i8, ptr %i.a, align 1, !tbaa !601, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 266
  %i.e = load i8, ptr %i.d, align 2, !range !13
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i.i.i.i = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %i.g, align 16
  %i.k = shl i64 %i.j, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i

_ZN4CGAL9cpp_floatD2Ev.exit.i:                    ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 169
  %i.m = load i8, ptr %i.l, align 1, !tbaa !601, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.p = load i8, ptr %i.o, align 2, !range !13
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i.i.1.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i.1.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i, label %bb.c

bb.c:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %i.r, align 16
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #37
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i:                  ; preds = %bb.c, %_ZN4CGAL9cpp_floatD2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.x = load i8, ptr %i.w, align 1, !tbaa !601, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.aa = load i8, ptr %i.z, align 2, !range !13
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i.i.i.2.i = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i.2.i, label %_ZNSt5arrayIN4CGAL9cpp_floatELm3EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i64, ptr %0, align 16
  %i.af = shl i64 %i.ae, 3
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.af) #37
  br label %_ZNSt5arrayIN4CGAL9cpp_floatELm3EED2Ev.exit

_ZNSt5arrayIN4CGAL9cpp_floatELm3EED2Ev.exit:      ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.1045, align 8           ; 5 uses
  %6 = alloca %class.anon.1044, align 8           ; 4 uses
  %7 = alloca %class.anon.1045, align 8           ; 5 uses
  %8 = alloca %class.anon.1044, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [2 x %"class.CGAL::Point_3.931"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.CGAL::SegmentC3.1108", align 16 ; 55 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false)
  %.sroa.0.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !350
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.s, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i, i64 96, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr %i.s, ptr %i.t, align 16, !tbaa !7324
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i32 0, ptr %i.u, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEESX_EEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.p, ptr %i.v, align 16, !tbaa !101
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ab = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ah = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !101
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
  %i.au = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.av = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.av, ptr %8, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !59
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %7, ptr %i.ax, align 8, !tbaa !59
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !59
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !59
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !59
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %4, align 8, !tbaa !101   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.bd, ptr %6, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8, !tbaa !59
  store ptr %5, ptr %i.ax, align 8, !tbaa !59
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !59
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20:        ; preds = %bb.k
  %.not.i.i.i.i21 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #39
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !59
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  store ptr null, ptr %i.ax, align 8, !tbaa !59
  store ptr null, ptr %i.ay, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZN4CGAL9SegmentC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EESK_(ptr noundef nonnull align 16 dereferenceable(384) %9, ptr noundef nonnull align 16 dereferenceable(192) %i.bc, ptr noundef nonnull align 16 dereferenceable(192) %i.bi)
          to label %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_.exit unwind label %bb.ad

_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_.exit: ; preds = %bb.o
  invoke void @_ZN4CGAL10Lazy_rep_0INS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_9SegmentC3ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(128) %i.au, ptr noundef nonnull align 16 dereferenceable(384) %9)
          to label %_ZN4CGAL6HandleD2Ev.exit27 unwind label %bb.ae

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_.exit
  store ptr %i.au, ptr %0, align 8, !tbaa !101
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 320
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 377
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 378
  %i.bp = load i8, ptr %i.bo, align 2, !range !13
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i1.i.i.i28 = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %or.cond.i1.i.i.i28, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit27
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i64, ptr %i.br, align 16
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bv) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29: ; preds = %bb.p, %_ZN4CGAL6HandleD2Ev.exit27
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 345
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9, !range !13, !noundef !14
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 346
  %i.ca = load i8, ptr %i.bz, align 2, !range !13
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i.i.i.i30 = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i.i30, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31, label %bb.q

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 328
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i64, ptr %i.bk, align 16
  %i.cf = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #37
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31: ; preds = %bb.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 313
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 314
  %i.cl = load i8, ptr %i.ck, align 2, !range !13
  %i.cm = trunc nuw i8 %i.cl to i1
  %or.cond.i1.i.i.1.i32 = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %or.cond.i1.i.i.1.i32, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i33, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 296
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i64, ptr %i.cn, align 16
  %i.cr = shl i64 %i.cq, 3
end_hunk_1
begin_hunk_2_@_ZNK4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, i1 noundef zeroext true)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !60
  %i.v = load <2 x double>, ptr %i.s, align 16, !tbaa !60
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
  store <2 x double> %i.ae, ptr %i.s, align 16, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.af, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #37
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ag release, align 16
  %i.ah = load ptr, ptr %i.b, align 16, !tbaa !101 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i12 = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !7515
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
  %i.as = load ptr, ptr %i.b, align 16, !tbaa !101 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.as) #23, !inline_history !7515
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !101
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.ax = load ptr, ptr %i.k, align 16, !tbaa !101 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i2.i = icmp eq i8 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load atomic i32, ptr %i.az monotonic, align 4 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #23, !inline_history !7515
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
  %i.bi = load ptr, ptr %i.k, align 16, !tbaa !101 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(12) %i.bi) #23, !inline_history !7515
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !101
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.1045, align 8           ; 5 uses
  %5 = alloca %class.anon.1044, align 8           ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !101    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !350
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !7063
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !352
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !355
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !101
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
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
  store ptr %i.m, ptr %0, align 8, !tbaa !101
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !59
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !59
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !59
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !59
  store ptr null, ptr %i.an, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !59
  store ptr null, ptr %i.an, align 8, !tbaa !59
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
  store i32 1, ptr %i.av, align 4, !tbaa !350
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ax = fneg double %i.at
  %i.ay = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.au, i64 1
  store <2 x double> %i.az, ptr %i.aw, align 16, !tbaa !60
  %i.ba = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ba, ptr noundef nonnull align 16 dereferenceable(64) %i.ar)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 64) #37
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !352
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.bd, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !67
  store ptr %i.aj, ptr %0, align 8, !tbaa !101
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #37
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !7519
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

end_hunk_2
begin_hunk_3_@_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_x_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.k = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.p, ptr %i.q, align 16, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.r release, align 16
  %i.s = load ptr, ptr %i.b, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !7521
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
  %i.ad = load ptr, ptr %i.b, align 16, !tbaa !101 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !7521
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !101
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEED0Ev(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !67
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #37, !inline_history !7511
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
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #37, !inline_history !7511
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #37, !inline_history !7511
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 3 uses
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #37
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.1045, align 8           ; 5 uses
  %5 = alloca %class.anon.1044, align 8           ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !101    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !350
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !7063
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !352
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !355
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !101
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
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
  store ptr %i.m, ptr %0, align 8, !tbaa !101
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !59
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !59
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !59
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !59
  store ptr null, ptr %i.an, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !59
  store ptr null, ptr %i.an, align 8, !tbaa !59
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
  store i32 1, ptr %i.aw, align 4, !tbaa !350
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !60
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #37
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !352
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !67
  store ptr %i.aj, ptr %0, align 8, !tbaa !101
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #37
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !7519
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
begin_hunk_4_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED0Ev:bb.a
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
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #37, !inline_history !7511
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #37, !inline_history !7511
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.1045, align 8           ; 5 uses
  %3 = alloca %class.anon.1044, align 8           ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !101 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !59
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !59
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !59
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !59
  store ptr null, ptr %i.f, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !59
  store ptr null, ptr %i.f, align 8, !tbaa !59
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
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !7521
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !101 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !7521
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !101
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %4 = alloca %class.anon.1045, align 8           ; 5 uses
  %5 = alloca %class.anon.1044, align 8           ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !101    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.p, align 4, !tbaa !350
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !7063
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.r, align 16, !tbaa !352
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.s, align 8, !tbaa !355
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.t, align 16, !tbaa !101
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
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
  store ptr %i.m, ptr %0, align 8, !tbaa !101
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
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #38 ; 8 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.ak, ptr %5, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !59
  %i.am = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.am, align 8, !tbaa !59
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.an, align 8, !tbaa !59
  %i.ao = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ao) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.am, align 8, !tbaa !59
  store ptr null, ptr %i.an, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.am, align 8, !tbaa !59
  store ptr null, ptr %i.an, align 8, !tbaa !59
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
  store i32 1, ptr %i.aw, align 4, !tbaa !350
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %i.aj, align 16, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ay = fneg double %i.au
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1
  store <2 x double> %i.ba, ptr %i.ax, align 16, !tbaa !60
  %i.bb = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38
          to label %.noexc13 unwind label %bb.p   ; 3 uses

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.bb, ptr noundef nonnull align 16 dereferenceable(64) %i.as)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc13
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 64) #37
  br label %.body

bb.m:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bb, ptr %i.bd, align 16, !tbaa !352
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.be, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.aj, align 16, !tbaa !67
  store ptr %i.aj, ptr %0, align 8, !tbaa !101
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
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 48) #37
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !7519
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
begin_hunk_5_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED0Ev:bb.a
_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #37, !inline_history !7511
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Point_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_z_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_7Point_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.1045, align 8           ; 5 uses
  %3 = alloca %class.anon.1044, align 8           ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !101 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !7267
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !59
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !59
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !59
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #39
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !59
  store ptr null, ptr %i.f, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !59
  store ptr null, ptr %i.f, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
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
  store <2 x double> %i.q, ptr %i.r, align 16, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.s release, align 16
  %i.t = load ptr, ptr %i.b, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !7521
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
  %i.ae = load ptr, ptr %i.b, align 16, !tbaa !101 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !7521
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !101
  br label %_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_7Point_3INS_5EpeckEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %5) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %class.anon.1184, align 8           ; 5 uses
  %7 = alloca %class.anon.1183, align 8           ; 4 uses
  %8 = alloca %class.anon.1184, align 8           ; 5 uses
  %9 = alloca %class.anon.1183, align 8           ; 4 uses
  %10 = alloca %class.anon.1184, align 8          ; 5 uses
  %11 = alloca %class.anon.1183, align 8          ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.04.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::PointC3.946", align 16 ; 30 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38
          to label %bb.b unwind label %bb.e       ; 11 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %5, align 8, !tbaa !101    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false)
  %.sroa.04.16..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false)
  %.sroa.04.32..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !350
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.v, align 16, !tbaa !7119
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.w, align 8, !tbaa !355
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors17Construct_point_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_13Lazy_exact_ntISJ_EESW_SW_EEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.r, ptr %i.x, align 16, !tbaa !101
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8
  %i.ab = add nsw i32 %i.aa, 1
  store atomic i32 %i.ab, ptr %i.z monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ad = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !101
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = add nsw i32 %i.af, 1
  store atomic i32 %i.ag, ptr %i.ae monotonic, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ai = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !101
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4
  %i.al = add nsw i32 %i.ak, 1
  store atomic i32 %i.al, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.am = atomicrmw add ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ao = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = atomicrmw add ptr %i.ap, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.as = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw add ptr %i.at, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i)
  store ptr %i.m, ptr %0, align 8, !tbaa !101
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
  %i.bf = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #38 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bg = load ptr, ptr %3, align 8, !tbaa !101   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.bg, ptr %11, align 8, !tbaa !7512
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %11, ptr %10, align 8, !tbaa !59
  %i.bi = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 9 uses
  store ptr %10, ptr %i.bi, align 8, !tbaa !59
  %i.bj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 9 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !59
  %i.bk = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bh, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bk) #39
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !59
  store ptr null, ptr %i.bj, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.bi, align 8, !tbaa !59
  store ptr null, ptr %i.bj, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load atomic ptr, ptr %i.bm monotonic, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !101   ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.bo, ptr %9, align 8, !tbaa !7512
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %9, ptr %8, align 8, !tbaa !59
  store ptr %8, ptr %i.bi, align 8, !tbaa !59
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !59
  %i.bq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bp, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22:        ; preds = %bb.k
  %.not.i.i.i.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bq) #39
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !59
  store ptr null, ptr %i.bj, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i22
  store ptr null, ptr %i.bi, align 8, !tbaa !59
  store ptr null, ptr %i.bj, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bt = load atomic ptr, ptr %i.bs monotonic, align 8
  %i.bu = load ptr, ptr %5, align 8, !tbaa !101   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bu, ptr %7, align 8, !tbaa !7512
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %7, ptr %6, align 8, !tbaa !59
  store ptr %6, ptr %i.bi, align 8, !tbaa !59
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.bj, align 8, !tbaa !59
  %i.bw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.bv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27 unwind label %bb.r ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27:        ; preds = %bb.o
  %.not.i.i.i.i28 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i28, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bw) #39
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.bi, align 8, !tbaa !59
  store ptr null, ptr %i.bj, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.s:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i27
  store ptr null, ptr %i.bi, align 8, !tbaa !59
  store ptr null, ptr %i.bj, align 8, !tbaa !59
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
  store ptr %i.bf, ptr %0, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 185
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 186
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !10279
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #38 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !6892 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !6892
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !173 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7225
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !6892
  store ptr %i.o, ptr %.02530, align 8, !tbaa !173
  store ptr %.02530, ptr %i.g, align 8, !tbaa !6892
  store ptr %i.g, ptr %i.m, align 8, !tbaa !175
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !173
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !175
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !173
  store ptr %i.r, ptr %.02530, align 8, !tbaa !173
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !175
  store ptr %.02530, ptr %i.s, align 8, !tbaa !173
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10280

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !6824   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !6826
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #37
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !6826
  store ptr %.0.i, ptr %0, align 8, !tbaa !6824
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_10Triangle_3IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %class.anon.971, align 8            ; 5 uses
  %8 = alloca %class.anon.970, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::PlaneC3.1223", align 16 ; 7 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.CGAL::Plane_3.1225", align 16 ; 48 uses
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
          to label %bb.b unwind label %bb.e       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !10281
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !10288
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !10288
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !10288
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  invoke void @_ZN4CGAL19plane_from_pointsC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_S6_(ptr noundef nonnull align 16 dereferenceable(144) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !7063, !noalias !10281
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !7063, !noalias !10281
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !7063, !noalias !10281
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !10288
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !10288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %12, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !10281
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.ab, align 4, !tbaa !350
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ac, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.ac, ptr %i.ad, align 16, !tbaa !10291
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.ae, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors28Construct_supporting_plane_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_10Triangle_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ag = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !101
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store atomic i32 %i.ak, ptr %i.ai monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.al = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.am = load i32, ptr %i.c, align 4
  %i.an = and i32 %i.am, -24577
  %i.ao = or disjoint i32 %i.an, %i.i
  store i32 %i.ao, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 112) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ap, %bb.e ] ; 3 uses
  %.08 = extractvalue { ptr, i32 } %.pn, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.as = icmp eq i32 %.08, %i.ar
  br i1 %i.as, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %bb.g
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.at = call ptr @__cxa_begin_catch(ptr %.09) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.au = load i32, ptr %i.c, align 4
  %i.av = and i32 %i.au, -24577
  %i.aw = or disjoint i32 %i.av, %i.i
  store i32 %i.aw, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ay = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.ay, ptr %8, align 8, !tbaa !7124
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !59
  %i.ba = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %7, ptr %i.ba, align 8, !tbaa !59
  %i.bb = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bb, align 8, !tbaa !59
  %i.bc = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #39
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  store ptr null, ptr %i.bb, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  store ptr null, ptr %i.bb, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 336
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 528
  invoke void @_ZN4CGAL7Plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EESK_SK_(ptr noundef nonnull align 16 dereferenceable(256) %13, ptr noundef nonnull align 16 dereferenceable(576) %i.bg, ptr noundef nonnull align 16 dereferenceable(192) %i.bh, ptr noundef nonnull align 16 dereferenceable(192) %i.bi)
          to label %_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit unwind label %bb.af

_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !10294
  %i.bj = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(256) %13)
          to label %.noexc18 unwind label %bb.ag  ; 2 uses

.noexc18:                                         ; preds = %_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !10294
  %i.bk = extractvalue { double, double } %i.bj, 0
  %i.bl = extractvalue { double, double } %i.bj, 1
  %i.bm = fneg double %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bl, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !10294
  %i.bq = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.bp)
          to label %.noexc19 unwind label %bb.ag  ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !10294
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  %i.bt = fneg double %i.br
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bs, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !10294
  %i.bx = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.bw)
          to label %.noexc20 unwind label %bb.ag  ; 2 uses

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !10294
  %i.by = extractvalue { double, double } %i.bx, 0
  %i.bz = extractvalue { double, double } %i.bx, 1
  %i.ca = fneg double %i.by
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !10294
  %i.ce = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.cd)
          to label %.noexc21 unwind label %bb.ag  ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !10294
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 1, ptr %i.cf, align 4, !tbaa !350
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %i.ax, align 16, !tbaa !67
  %i.cg = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #38
          to label %_ZN4CGAL10Lazy_rep_0INS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit unwind label %bb.ag ; 45 uses

_ZN4CGAL10Lazy_rep_0INS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit: ; preds = %.noexc21
  %i.ch = extractvalue { double, double } %i.ce, 0
  %i.ci = fneg double %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = extractvalue { double, double } %i.ce, 1
  %i.cl = insertelement <2 x double> %i.cj, double %i.ck, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store <2 x double> %i.bo, ptr %i.cg, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %i.bv, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store <2 x double> %i.cc, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store <2 x double> %i.cl, ptr %.sroa.6.0..sroa_idx.i, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 3 uses
  store i64 0, ptr %i.cn, align 16, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 16, !tbaa !6972 ; 2 uses
  store i64 %i.cq, ptr %i.co, align 16, !tbaa !6972
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !6981, !range !13, !noundef !14
  store i8 %i.ct, ptr %i.cr, align 8, !tbaa !6981
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 89
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 25 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 90
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 26
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !6982, !range !13, !noundef !14
end_hunk_6
