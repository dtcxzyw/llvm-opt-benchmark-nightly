Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/resolve_intersections?download=true
inline.NumInlined: 4233
inline.NumDeleted: 1663
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_:bb.a
  %i.am = phi i64 [ %.pre, %bb.k ], [ %i.w, %bb.l ]
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.k ], [ %i.z, %bb.l ]
  %i.an = phi ptr [ %i.ae, %bb.k ], [ %.pre8.i, %bb.l ]
  %i.ao = select i1 %.pre-phi.i, ptr %i.u, ptr %i.an
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !9, !range !13, !noundef !14
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 8), align 8
  %i.as = select i1 %i.aq, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr %i.ar
  %i.at = shl i64 %i.am, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ao, ptr align 8 %i.as, i64 %i.at, i1 false)
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !273, !range !13, !noundef !14
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.au, ptr %i.av, align 8, !tbaa !273
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit: ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.aw, align 16, !tbaa !265
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 16, !tbaa !265 ; 3 uses
  %spec.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 288230376151711744) ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bb = trunc nuw i8 %i.ba to i1                ; 3 uses
  %i.bc = load i64, ptr %0, align 16              ; 2 uses
  %spec.select.i8.i.i23 = select i1 %i.bb, i64 2, i64 %i.bc ; 2 uses
  %i.bd = icmp ugt i64 %spec.select.i.i22, %spec.select.i8.i.i23
  br i1 %i.bd, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28, label %bb.q

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  %i.be = shl nuw nsw i64 %spec.select.i8.i.i23, 2
  %.sroa.speculated16.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %spec.select.i.i22)
  %.sroa.speculated.i.i30 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i29, i64 288230376151711744) ; 2 uses
  %i.bf = shl nuw nsw i64 %.sroa.speculated.i.i30, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #37 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  br i1 %i.bb, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !274, !range !13, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = shl i64 %i.bc, 3
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #35
  %.pre.pre.i31 = load i8, ptr %i.az, align 1, !tbaa !9, !range !13
  %i.bn = trunc nuw i8 %.pre.pre.i31 to i1
  %.pre34.pre = load i64, ptr %i.ax, align 16, !tbaa !265
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28
  store i8 0, ptr %i.az, align 1, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre34 = phi i64 [ %i.ay, %bb.o ], [ %.pre34.pre, %bb.n ]
  %.pre.i32 = phi i1 [ false, %bb.o ], [ %i.bn, %bb.n ]
  store i64 %spec.select.i.i22, ptr %i.aw, align 16, !tbaa !265
  store i64 %.sroa.speculated.i.i30, ptr %0, align 16, !tbaa !41
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !41
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  store i64 %spec.select.i.i22, ptr %i.aw, align 16, !tbaa !265
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
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !273, !range !13, !noundef !14
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.bz, ptr %i.ca, align 8, !tbaa !273
  br label %bb.y

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  %i.cb = icmp eq ptr %0, %2
  br i1 %i.cb, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
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
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cm) #35
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
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cw) #35
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_source_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_9Segment_2IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.anon.148, align 8            ; 5 uses
  %4 = alloca %class.anon.147, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.q, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, ptr noundef nonnull align 16 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.s, align 16, !tbaa !400
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 0, ptr %i.t, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_source_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !64
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
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
  store ptr %i.m, ptr %0, align 8, !tbaa !64
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
  %i.af = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ag = icmp eq i32 %.07, %i.af
  br i1 %i.ag, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.ae, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %.08) #22 ; 0 uses
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
  %i.al = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 3 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !64    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.am, ptr %4, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %4, ptr %3, align 8, !tbaa !406
  %i.ao = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.ao, align 8, !tbaa !406
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ap, align 8, !tbaa !406
  %i.aq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aq) #36
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ao, align 8, !tbaa !406
  store ptr null, ptr %i.ap, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ao, align 8, !tbaa !406
  store ptr null, ptr %i.ap, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.at = load atomic ptr, ptr %i.as monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(64) %i.al, ptr noundef nonnull align 16 dereferenceable(128) %i.au)
          to label %_ZN4CGAL6HandleD2Ev.exit15 unwind label %bb.n

_ZN4CGAL6HandleD2Ev.exit15:                       ; preds = %bb.k
  store ptr %i.al, ptr %0, align 8, !tbaa !64
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
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 64) #35
  br label %bb.p

bb.o:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit15
  ret void

bb.p:                                             ; preds = %.body, %bb.m
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged12, %bb.m ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #28

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(128) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !407
  %i.a = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(128) %1), !noalias !407 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !407
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fneg double %i.b
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !407
  %i.h = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.g), !noalias !407 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !407
  %i.i = extractvalue { double, double } %i.h, 0
  %i.j = extractvalue { double, double } %i.h, 1
  %i.k = fneg double %i.i
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = insertelement <2 x double> %i.l, double %i.j, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.n, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.f, ptr %i.o, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.m, ptr %.sroa.4.0..sroa_idx, align 16
  %i.p = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #37 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(128) %i.p, ptr noundef nonnull align 16 dereferenceable(128) %1)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(64) %i.g)
          to label %_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEC2IS6_RKSL_EEOT_OT0_.exit unwind label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %i.p) #22
  br label %.body.i

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

end_hunk_0
begin_hunk_1_@_ZSt20__throw_system_errori

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #9 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !406
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !434, !nonnull !14, !align !436
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !403  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(92) %i.d), !inline_history !437
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 122
  %i.h = load i8, ptr %i.g, align 2, !range !13
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i1.i.i.i.i.i = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond.i1.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %i.j, align 16
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9, !range !13, !noundef !14
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 90
  %i.s = load i8, ptr %i.r, align 2, !range !13
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %i.c, align 16
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #35
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !range !13, !noundef !14
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.ac = load i8, ptr %i.ab, align 2, !range !13
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i1.i.i.1.i.i.i = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i1.i.i.1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load i64, ptr %i.ae, align 16
  %i.ai = shl i64 %i.ah, 3
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i: ; preds = %bb.e, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !range !13, !noundef !14
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.an = load i8, ptr %i.am, align 2, !range !13
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.b, align 16
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.as) #35
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 128) #35
  br label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(64) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #37 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(128) %i.d)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %.ptr.1.i.i.i.i.i)
          to label %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit unwind label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(128) %i.d) #22
  br label %.body

_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit: ; preds = %.noexc
  store atomic ptr %i.d, ptr %i.a release, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.preheader.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %.preheader.preheader.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 128) #35
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_target_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_9Segment_2IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.anon.148, align 8            ; 5 uses
  %4 = alloca %class.anon.147, align 8            ; 4 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr null, ptr %i.t, align 16, !tbaa !400
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 0, ptr %i.u, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_target_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_9Segment_2INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  store ptr %i.w, ptr %i.v, align 16, !tbaa !64
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
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
  store ptr %i.m, ptr %0, align 8, !tbaa !64
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
  %i.ag = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ah = icmp eq i32 %.07, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %.08 = extractvalue { ptr, i32 } %i.af, 0
  %i.ai = call ptr @__cxa_begin_catch(ptr %.08) #22 ; 0 uses
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
  %i.am = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 3 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !64    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.an, ptr %4, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %4, ptr %3, align 8, !tbaa !406
  %i.ap = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.ap, align 8, !tbaa !406
  %i.aq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_9Segment_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.aq, align 8, !tbaa !406
  %i.ar = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #36
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ap, align 8, !tbaa !406
  store ptr null, ptr %i.aq, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ap, align 8, !tbaa !406
  store ptr null, ptr %i.aq, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(64) %i.am, ptr noundef nonnull align 16 dereferenceable(128) %i.av)
          to label %_ZN4CGAL6HandleD2Ev.exit15 unwind label %bb.n

_ZN4CGAL6HandleD2Ev.exit15:                       ; preds = %bb.k
  store ptr %i.am, ptr %0, align 8, !tbaa !64
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
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 64) #35
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
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #22, !inline_history !410
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
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !64  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #22, !inline_history !410
  br label %_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL9Segment_2INS0_5EpeckEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #22
end_hunk_1
begin_hunk_2_@_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EEC2EOSI_:bb.a
  store i64 0, ptr %i.dj, align 16, !tbaa !265
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
  %i.b = load i8, ptr %i.a, align 16, !tbaa !458
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !515
  %i.e = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(257) %1), !noalias !515 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !515
  %i.f = extractvalue { double, double } %i.e, 0
  %i.g = extractvalue { double, double } %i.e, 1
  %i.h = fneg double %i.f
  %i.i = insertelement <2 x double> poison, double %i.h, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.g, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !515
  %i.k = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !515 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !515
  %i.l = extractvalue { double, double } %i.k, 0
  %i.m = extractvalue { double, double } %i.k, 1
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.m, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !513  ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80 ; 2 uses
  %i.t = load i8, ptr %i.s, align 16, !tbaa !442, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 2 uses
  %i.w = load i8, ptr %i.v, align 16, !tbaa !449
  %i.x = icmp eq i8 %i.w, 0
  store <2 x double> %i.j, ptr %i.r, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 16
  br i1 %i.x, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.v, align 16, !tbaa !449
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.e:                                             ; preds = %bb.b
  store <2 x double> %i.j, ptr %i.r, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 0, ptr %i.y, align 16, !tbaa !449
  store i8 1, ptr %i.s, align 16, !tbaa !442
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !518
  %i.z = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(257) %1), !noalias !518 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !518
  %i.aa = extractvalue { double, double } %i.z, 0
  %i.ab = extractvalue { double, double } %i.z, 1
  %i.ac = fneg double %i.aa
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !518
  %i.af = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !518 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !518
  %i.ag = extractvalue { double, double } %i.af, 0
  %i.ah = extractvalue { double, double } %i.af, 1
  %i.ai = fneg double %i.ag
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ah, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !523
  %i.am = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(128) %i.al), !noalias !523 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !523
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %i.ap = fneg double %i.an
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !523
  %i.at = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.as), !noalias !523 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !523
  %i.au = extractvalue { double, double } %i.at, 0
  %i.av = extractvalue { double, double } %i.at, 1
  %i.aw = fneg double %i.au
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.av, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !513 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 16, !tbaa !442, !range !13, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 16, !tbaa !449
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
  store i8 1, ptr %i.be, align 16, !tbaa !449
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
  store i8 1, ptr %i.bh, align 16, !tbaa !449
  store i8 1, ptr %i.bb, align 16, !tbaa !442
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_2ISQ_EENS5_9Segment_2ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISU_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !449
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.110, ptr %i.j, align 8, !tbaa !138
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #36
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_2IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.l, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.m, align 16, !tbaa !400
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.n, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !64
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
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
  %i.v = load ptr, ptr %0, align 8, !tbaa !444    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !134, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !136
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !64
  store i8 0, ptr %i.z, align 8, !tbaa !136
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #38
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !136
  store i8 1, ptr %i.w, align 8, !tbaa !134
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !55  ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #22, !inline_history !57
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
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #22, !inline_history !57
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #35
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(72) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #22, !inline_history !526
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
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !64  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #22, !inline_history !526
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  tail call void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(60) dereferenceable(60) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_2IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #22, !inline_history !527
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
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !64 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #22, !inline_history !535
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !64
  br label %_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke, %_ZNK4CGAL8internal12Variant_castINS_7Point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEclIJSI_NS_9Segment_2ISH_EEEEERKSI_RKSt8optionalISt7variantIJDpT_EEE.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.preheader.preheader.i.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.aw, %bb.n ], [ %i.r, %.preheader.preheader.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 128) #35
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_2ISB_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEEENSD_ISU_EEEEENS3_19Cartesian_converterISU_SB_NS3_12NT_converterIST_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS16_ENUlvE_8__invokeEv() #9 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !406
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !536, !nonnull !14, !align !436
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !528  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(124) %i.d), !inline_history !538
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !136   ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.u, label %bb.b, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !64     ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #22, !inline_history !539
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
  %i.o = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #22, !inline_history !539
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i7.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #22, !inline_history !540
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
  %i.ad = load ptr, ptr %0, align 8, !tbaa !64    ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #22, !inline_history !540
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  store i8 -1, ptr %i.a, align 8, !tbaa !136
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS3_5EpeckEEENS3_9Segment_2IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_2INS_5EpeckEEENS_9Segment_2IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISV_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #37 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load i8, ptr %i.g, align 16, !tbaa !449
  %.not.i.i.i.i = icmp eq i8 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.110, ptr %i.j, align 8, !tbaa !138
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #36
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_2IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.l, ptr noundef nonnull align 16 dereferenceable(64) %i.f, i64 64, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.l, ptr %i.m, align 16, !tbaa !541
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.n, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !64
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
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
  %i.v = load ptr, ptr %0, align 8, !tbaa !444    ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !134, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !136
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_2INS2_5EpeckEEENS2_9Segment_2IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !64
  store i8 1, ptr %i.z, align 8, !tbaa !136
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #38
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !136
  store i8 1, ptr %i.w, align 8, !tbaa !134
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !55  ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #22, !inline_history !57
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
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #22, !inline_history !57
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_2INS0_5EpeckEEENS0_9Segment_2IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_2INS1_5EpeckEEENS1_9Segment_2IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #35
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(104) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #22, !inline_history !526
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
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !64  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #22, !inline_history !526
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !20
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
  tail call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %i.v) #22, !inline_history !544
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 320) #35, !inline_history !544
  br label %_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_2IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_2INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_2IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED0Ev:bb.a
bb.a:
  tail call void @llvm.trap() #38
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9, !range !13, !noundef !14
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !13
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9, !range !13, !noundef !14
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !13
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #35
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #35
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !20
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
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #35, !inline_history !748
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
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #35, !inline_history !748
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #35, !inline_history !748
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEdE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load double, ptr %i.b, align 16, !tbaa !37
  %i.d = fpext double %i.c to x86_fp80
  %i.e = invoke noundef nonnull align 16 dereferenceable(64) ptr @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEaSIeEENSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueERS8_E4typeESB_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, x86_fp80 noundef %i.d)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2IdEERKT_PNSt9enable_ifIXaaaaoooosr5boost14multiprecision6detail25is_convertible_arithmeticISD_S9_EE5valuesr3std7is_sameINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_EE5valuesr3std14is_convertibleISD_PKcEE5valuentsr3std14is_convertibleINS0_6detail9canonicalISD_S9_E4typeES9_EE5valuentsr6detail24is_restricted_conversionISS_S9_EE5valueEvE4typeE.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #22
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
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #35
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_2IS1_EEST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_2") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.354, align 8            ; 5 uses
  %6 = alloca %class.anon.353, align 8            ; 4 uses
  %7 = alloca %class.anon.354, align 8            ; 5 uses
  %8 = alloca %class.anon.353, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [2 x %"class.CGAL::Point_2.120"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.CGAL::SegmentC2", align 16  ; 7 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #37
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !64     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(32) %i.o, i64 32, i1 false)
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.s, ptr %i.t, align 16, !tbaa !541
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.u, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_2INS_5EpeckEEESX_EEE, i64 16), ptr %i.m, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  store ptr %i.p, ptr %i.v, align 16, !tbaa !64
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !41
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 8
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ab = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.ah = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !64
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
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #22
  %i.ap = icmp eq i32 %.011, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %.012 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.012) #22 ; 0 uses
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
  %i.au = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.av = load ptr, ptr %3, align 8, !tbaa !64    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %i.av, ptr %8, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %8, ptr %7, align 8, !tbaa !406
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %7, ptr %i.ax, align 8, !tbaa !406
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !406
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #36
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !406
  store ptr null, ptr %i.ay, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !406
  store ptr null, ptr %i.ay, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %4, align 8, !tbaa !64    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.bd, ptr %6, align 8, !tbaa !749
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !406
  store ptr %5, ptr %i.ax, align 8, !tbaa !406
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_2INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !406
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20:        ; preds = %bb.k
  %.not.i.i.i.i21 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #36
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !406
  store ptr null, ptr %i.ay, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  store ptr null, ptr %i.ax, align 8, !tbaa !406
  store ptr null, ptr %i.ay, align 8, !tbaa !406
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZN4CGAL9SegmentC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_2ISF_EESK_(ptr noundef nonnull align 16 dereferenceable(256) %9, ptr noundef nonnull align 16 dereferenceable(128) %i.bc, ptr noundef nonnull align 16 dereferenceable(128) %i.bi)
          to label %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit unwind label %bb.r

_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit: ; preds = %bb.o
  invoke void @_ZN4CGAL10Lazy_rep_0INS_9Segment_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_9SegmentC2ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(96) %i.au, ptr noundef nonnull align 16 dereferenceable(256) %9)
          to label %_ZN4CGAL6HandleD2Ev.exit27 unwind label %bb.s

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_2ISG_EESM_.exit
  store ptr %i.au, ptr %0, align 8, !tbaa !64
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
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
  call void @_ZNSt5arrayIN4CGAL7Point_2INS0_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEELm2EED2Ev(ptr noundef nonnull align 16 dead_on_return(256) dereferenceable(256) %9) #22
  br label %.body

.body:                                            ; preds = %bb.j, %bb.n, %bb.r, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.bo, %bb.s ], [ %i.ba, %bb.j ], [ %i.bn, %bb.r ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 96) #35
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
end_hunk_4
