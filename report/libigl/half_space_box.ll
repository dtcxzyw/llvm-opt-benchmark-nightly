Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/half_space_box?download=true
inline.NumInlined: 5732
inline.NumDeleted: 1668
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_:bb.a
bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i = phi i1 [ false, %bb.j ], [ %i.ar, %bb.i ]
  store i64 %spec.select.i.i, ptr %i.v, align 16, !tbaa !1484
  store i64 %.sroa.speculated.i.i, ptr %i.u, align 16, !tbaa !19
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !19
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !1484
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

bb.l:                                             ; preds = %bb.g
  store i64 %spec.select.i.i, ptr %i.v, align 16, !tbaa !1484
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i: ; preds = %bb.l, %bb.k
  %i.as = phi i64 [ %.pre, %bb.k ], [ %i.w, %bb.l ]
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.k ], [ %i.z, %bb.l ]
  %i.at = phi ptr [ %i.ae, %bb.k ], [ %.pre8.i, %bb.l ]
  %i.au = select i1 %.pre-phi.i, ptr %i.u, ptr %i.at
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !9, !range !13, !noundef !14
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 8), align 8
  %i.ay = select i1 %i.aw, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr %i.ax
  %i.az = shl i64 %i.as, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.ay, i64 %i.az, i1 false)
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !1493, !range !13, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !1493
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit: ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.bc, align 16, !tbaa !1484
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 16, !tbaa !1484 ; 2 uses
  %spec.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.be, i64 288230376151711744) ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bh = trunc nuw i8 %i.bg to i1                ; 2 uses
  %i.bi = load i64, ptr %0, align 16
  %spec.select.i8.i.i23 = select i1 %i.bh, i64 2, i64 %i.bi ; 2 uses
  %i.bj = icmp ugt i64 %spec.select.i.i22, %spec.select.i8.i.i23
  br i1 %i.bj, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28, label %bb.q

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  %i.bk = shl nuw nsw i64 %spec.select.i8.i.i23, 2
  %.sroa.speculated16.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %spec.select.i.i22)
  %.sroa.speculated.i.i30 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i29, i64 288230376151711744) ; 2 uses
  %i.bl = shl nuw nsw i64 %.sroa.speculated.i.i30, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #34 ; 3 uses
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = select i1 %i.bo, ptr %0, ptr %i.bq
  %i.bs = load i64, ptr %i.bc, align 16, !tbaa !1484
  %i.bt = shl i64 %i.bs, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.br, i64 %i.bt, i1 false)
  br i1 %i.bo, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !1494, !range !13, !noundef !14
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %0, align 16
  %i.by = shl i64 %i.bx, 3
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.by) #33
  %.pre.pre.i31 = load i8, ptr %i.bf, align 1, !tbaa !9, !range !13
  %i.bz = trunc nuw i8 %.pre.pre.i31 to i1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28
  store i8 0, ptr %i.bf, align 1, !tbaa !9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre.i32 = phi i1 [ false, %bb.o ], [ %i.bz, %bb.n ]
  store i64 %spec.select.i.i22, ptr %i.bc, align 16, !tbaa !1484
  store i64 %.sroa.speculated.i.i30, ptr %0, align 16, !tbaa !19
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !19
  %.pre34 = load i64, ptr %i.bd, align 16, !tbaa !1484
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  store i64 %spec.select.i.i22, ptr %i.bc, align 16, !tbaa !1484
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i25 = load ptr, ptr %.phi.trans.insert.i24, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33: ; preds = %bb.p, %bb.q
  %i.ca = phi i64 [ %.pre34, %bb.p ], [ %i.be, %bb.q ]
  %.pre-phi.i27 = phi i1 [ %.pre.i32, %bb.p ], [ %i.bh, %bb.q ]
  %i.cb = phi ptr [ %i.bm, %bb.p ], [ %.pre8.i25, %bb.q ]
  %i.cc = select i1 %.pre-phi.i27, ptr %0, ptr %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = select i1 %i.cf, ptr %i.u, ptr %i.ch
  %i.cj = shl i64 %i.ca, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cc, ptr align 8 %i.ci, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1493, !range !13, !noundef !14
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !1493
  br label %bb.y

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  %i.cn = icmp eq ptr %0, %2
  br i1 %i.cn, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %2)
  invoke void @_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %5)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.cs = load i8, ptr %i.cr, align 2, !range !13
  %i.ct = trunc nuw i8 %i.cs to i1
  %or.cond.i1.i = select i1 %i.cq, i1 true, i1 %i.ct
  br i1 %or.cond.i1.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i64, ptr %i.cu, align 16
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cy) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i: ; preds = %bb.u, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9, !range !13, !noundef !14
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.dd = load i8, ptr %i.dc, align 2, !range !13
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i.i = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i64, ptr %5, align 16
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.di) #33
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.z

bb.x:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(27) %i.dk, ptr noundef nonnull align 16 dereferenceable(27) %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33
  ret void

bb.z:                                             ; preds = %bb.w, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.dj, %bb.w ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltERKNS_13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEEi(ptr noundef nonnull align 8 dereferenceable(9) %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::multiprecision::number", align 16 ; 14 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %class.anon.165, align 8            ; 5 uses
  %4 = alloca %class.anon.164, align 8            ; 4 uses
  %5 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.c = sitofp i32 %1 to double                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !19
  %i.f = fcmp olt double %i.e, %i.c
  br i1 %i.f, label %_ZN4CGALltERKNS_11Interval_ntILb0EEEd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = load double, ptr %i.g, align 16, !tbaa !19
  %i.h = fneg double %6
  %i.i = fcmp ugt double %i.c, %i.h
  br i1 %i.i, label %bb.c, label %_ZN4CGALltERKNS_11Interval_ntILb0EEEd.exit

bb.c:                                             ; preds = %bb.b
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEEd.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEEd.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi i16 [ 257, %bb.a ], [ 256, %bb.c ], [ 0, %bb.b ] ; 3 uses
  store i16 %.sroa.4.0.i, ptr %5, align 2
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.j = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEEd.exit
  %i.k = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %5)
  br label %bb.m

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEEd.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.b, ptr %4, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %4, ptr %3, align 8, !tbaa !1627
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %3, ptr %i.m, align 8, !tbaa !1627
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.n, align 8, !tbaa !1627
  %i.o = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.o) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.m, align 8, !tbaa !1627
  store ptr null, ptr %i.n, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.m, align 8, !tbaa !1627
  store ptr null, ptr %i.n, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = sext i32 %1 to i64
  store i64 %i.s, ptr %i.a, align 8, !tbaa !1485
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2IxEERKT_PKNSt9enable_ifIXaasr3std16is_constructibleIS7_SA_EE5valuentsr3std17is_floating_pointISA_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null)
  %i.t = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.r, ptr noundef nonnull align 16 dereferenceable(64) %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 57
  %i.v = load i8, ptr %i.u, align 1, !tbaa !9, !range !13, !noundef !14
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.y = load i8, ptr %i.x, align 2, !range !13
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i1.i.i.i.i.i = select i1 %i.w, i1 true, i1 %i.z
  br i1 %or.cond.i1.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load i64, ptr %i.aa, align 16
  %i.ae = shl i64 %i.ad, 3
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.aj = load i8, ptr %i.ai, align 2, !range !13
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.ah, i1 true, i1 %i.ak
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost14multiprecisionltINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSE_RKSF_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %2, align 16
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ao) #33
  br label %_ZN5boost14multiprecisionltINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSE_RKSF_.exit

bb.l:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

_ZN5boost14multiprecisionltINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSE_RKSF_.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, %bb.k
  %i.aq = icmp slt i32 %i.t, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecisionltINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSE_RKSF_.exit, %bb.d
  %.0 = phi i1 [ %i.k, %bb.d ], [ %i.aq, %_ZN5boost14multiprecisionltINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISD_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISF_EE5valueEbE4typeERKSE_RKSF_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.3", align 1  ; 5 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !1628, !range !13, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1630, !range !13, !noundef !14
  %i.d = icmp eq i8 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %i.a to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.107, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL30Uncertain_conversion_exceptionE, i64 16), ptr %i.f, align 8, !tbaa !26
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE, ptr nonnull @_ZNSt11range_errorD2Ev) #35
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1607   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !19
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.g ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nounwind
end_hunk_0
begin_hunk_1_@_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.at:                                            ; preds = %bb.ac, %bb.ae, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35, %bb.c, %bb.b
  %.1 = phi i32 [ %i.ah, %bb.b ], [ 0, %bb.c ], [ %i.fa, %bb.ac ], [ %i.fc, %bb.ae ], [ %.05.i.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35 ]
  ret i32 %.1
}

declare void @__once_proxy() #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv() #11 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1627
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1631, !nonnull !14, !align !1633
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1624 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(44) %i.d), !inline_history !1634
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i, label %bb.b

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
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !1635
  br label %_ZN4CGAL6HandleD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !36  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !1635
  br label %_ZN4CGAL6HandleD2Ev.exit.i

_ZN4CGAL6HandleD2Ev.exit.i:                       ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 10 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit.i
  fence acquire
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 58
  %i.x = load i8, ptr %i.w, align 2, !range !13
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i1.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.z, align 16
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #33, !inline_history !1636
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 25
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
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #33, !inline_history !1636
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33, !inline_history !1636
  br label %_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit

_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_AbsIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN5boost14multiprecision8backends8eval_absINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit: ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !19
  %4 = load double, ptr %i.l, align 16, !tbaa !19
  %i.o = fneg double %4
  %i.p = fcmp oeq double %i.n, %i.o
  br i1 %i.p, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.q = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1
  %i.t = fneg double %i.r
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1
  store <2 x double> %i.v, ptr %i.l, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.f, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.w, %bb.h ], [ %i.k, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.i:                                             ; preds = %bb.g, %_ZN4CGAL3absIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEENS_22Real_embeddable_traitsIT_E3Abs11result_typeERKSF_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.x release, align 16
  %i.y = load ptr, ptr %i.b, align 16, !tbaa !36  ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i6 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  br i1 %.not.i.i.i6, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #23, !inline_history !1637
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.ab, -1
  store atomic i32 %i.ag, ptr %i.aa monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.n:                                             ; preds = %bb.j
  br i1 %i.ac, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = atomicrmw sub ptr %i.aa, i32 1 release, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.aj = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.aj) #23, !inline_history !1637
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit

_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit: ; preds = %bb.i, %_ZN4CGAL6Handle6decrefEv.exit.i.i
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.pd(<2 x double>, <2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.max.pd(<2 x double>, <2 x double>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x double> @llvm.x86.sse2.min.sd(<2 x double>, <2 x double>) #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED0Ev(ptr noundef nonnull align 16 dereferenceable(44) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #36
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends8eval_absINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #11 comdat {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.a, align 16, !tbaa !1484
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !1484
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 288230376151711744) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i64, ptr %0, align 16
  %spec.select.i8.i.i = select i1 %i.f, i64 2, i64 %i.g ; 2 uses
  %i.h = icmp ugt i64 %spec.select.i.i, %spec.select.i8.i.i
  br i1 %i.h, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.b
  %i.i = shl nuw nsw i64 %spec.select.i8.i.i, 2
  %.sroa.speculated16.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %spec.select.i.i)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i, i64 288230376151711744) ; 2 uses
  %i.j = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #34 ; 3 uses
  %i.l = load i8, ptr %i.d, align 1, !tbaa !9, !range !13, !noundef !14
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = select i1 %i.m, ptr %0, ptr %i.o
  %i.q = load i64, ptr %i.a, align 16, !tbaa !1484
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.p, i64 %i.r, i1 false)
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.t = load i8, ptr %i.s, align 2, !tbaa !1494, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %0, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.w) #33
  %.pre.pre.i = load i8, ptr %i.d, align 1, !tbaa !9, !range !13
  %i.x = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  store i8 0, ptr %i.d, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i = phi i1 [ false, %bb.e ], [ %i.x, %bb.d ]
  store i64 %spec.select.i.i, ptr %i.a, align 16, !tbaa !1484
  store i64 %.sroa.speculated.i.i, ptr %0, align 16, !tbaa !19
  store ptr %i.k, ptr %i.n, align 8, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i, ptr %i.a, align 16, !tbaa !1484
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.f ], [ %i.f, %bb.g ]
  %i.y = phi ptr [ %i.k, %bb.f ], [ %.pre8.i, %bb.g ]
  %i.z = select i1 %.pre-phi.i, ptr %0, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %i.ac, ptr %1, ptr %i.ae
  %i.ag = load i64, ptr %i.b, align 16, !tbaa !1484
  %i.ah = shl i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %i.af, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ai, align 8, !tbaa !1493
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 0, ptr %i.al, align 16, !tbaa !1484
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 16, !tbaa !1484
  %spec.select.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 288230376151711744) ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED0Ev:bb.a

_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 10 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit.i
  fence acquire
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 58
  %i.x = load i8, ptr %i.w, align 2, !range !13
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i1.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.z, align 16
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #33, !inline_history !1660
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 25
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
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #33, !inline_history !1660
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33, !inline_history !1660
  br label %_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev.exit

_ZN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL8Vector_3INS0_5EpeckEEELb0EED2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_23CartesianKernelFunctors11Compute_y_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 16 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.193, align 8            ; 5 uses
  %3 = alloca %class.anon.192, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !1656
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_8Vector_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
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
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
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
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.t) #23, !inline_history !1662
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
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1662
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
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %class.anon.165, align 8            ; 5 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !19
  %6 = load double, ptr %i.d, align 16, !tbaa !19
  %i.g = fneg double %6
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = load double, ptr %i.i, align 16, !tbaa !19
  %8 = fneg double %7
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !19
  %i.j = fcmp ugt double %10, %8
  br i1 %i.j, label %bb.d, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

bb.d:                                             ; preds = %bb.c
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i16 [ 257, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.k = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.l = trunc i16 %.sroa.4.0.i to i1
  br label %bb.m

bb.f:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.a, ptr %5, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1627
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !1627
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !1627
  %i.p = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #35
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !1627
  store ptr null, ptr %i.o, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !1627
  store ptr null, ptr %i.o, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.t, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  store ptr %2, ptr %i.n, align 8, !tbaa !1627
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !1627
  %i.v = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #35
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !1627
  store ptr null, ptr %i.o, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.n, align 8, !tbaa !1627
  store ptr null, ptr %i.o, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %i.y)
  %i.aa = icmp slt i32 %i.z, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.l, %bb.e ], [ %i.aa, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors24Compute_squared_length_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_8Vector_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = alloca %"class.boost::multiprecision::number", align 16 ; 17 uses
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
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !19 ; 3 uses
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.q, <2 x double> %i.r)
  %i.t = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.q, <2 x double> %i.r)
  %i.u = shufflevector <2 x double> %i.s, <2 x double> %i.t, <2 x i32> <i32 0, i32 3>
  %i.v = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.u, <2 x double> <double -0.000000e+00, double poison>)
  %i.w = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.v) #23, !srcloc !80 ; 2 uses
  %i.x = bitcast <2 x double> %i.w to <2 x i64>
  %i.y = xor <2 x i64> %i.x, <i64 -9223372036854775808, i64 0>
  %i.z = bitcast <2 x i64> %i.y to <2 x double>
  %i.aa = fmul <2 x double> %i.w, %i.z
  %i.ab = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aa) #23, !srcloc !80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load <2 x double>, ptr %i.ac, align 16, !tbaa !19 ; 3 uses
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.af = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ad, <2 x double> %i.ae)
  %i.ag = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ad, <2 x double> %i.ae)
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.ai = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ah, <2 x double> <double -0.000000e+00, double poison>)
  %i.aj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ai) #23, !srcloc !80 ; 2 uses
  %i.ak = bitcast <2 x double> %i.aj to <2 x i64>
  %i.al = xor <2 x i64> %i.ak, <i64 -9223372036854775808, i64 0>
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = fmul <2 x double> %i.aj, %i.am
  %i.ao = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.an) #23, !srcloc !80
  %i.ap = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ab) #23, !srcloc !80
  %i.aq = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ao) #29, !srcloc !81
  %i.ar = fadd <2 x double> %i.ap, %i.aq
  %i.as = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ar) #23, !srcloc !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !19 ; 3 uses
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.au, <2 x double> %i.av)
  %i.ax = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.au, <2 x double> %i.av)
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.az = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ay, <2 x double> <double -0.000000e+00, double poison>)
  %i.ba = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.az) #23, !srcloc !80 ; 2 uses
  %i.bb = bitcast <2 x double> %i.ba to <2 x i64>
  %i.bc = xor <2 x i64> %i.bb, <i64 -9223372036854775808, i64 0>
  %i.bd = bitcast <2 x i64> %i.bc to <2 x double>
  %i.be = fmul <2 x double> %i.ba, %i.bd
  %i.bf = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.be) #23, !srcloc !80
  %i.bg = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.as) #23, !srcloc !80
  %i.bh = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bf) #29, !srcloc !81
  %i.bi = fadd <2 x double> %i.bg, %i.bh
  %i.bj = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.bi) #23, !srcloc !80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.bk, align 4, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x double> %i.bj, ptr %i.bl, align 16, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.bm, align 16, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 0, ptr %i.bn, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_20CommonKernelFunctors24Compute_squared_length_3INS_16Simple_cartesianIS2_EEEENSH_INSI_ISF_EEEENS_11To_intervalISF_EELb0EJNS_8Vector_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bp = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  store ptr %i.bp, ptr %i.bo, align 16, !tbaa !36
end_hunk_2
begin_hunk_3_@_ZN4CGAL14Lazy_exact_OppIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i, label %bb.b

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
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !1635
  br label %_ZN4CGAL6HandleD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !36  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !1635
  br label %_ZN4CGAL6HandleD2Ev.exit.i

_ZN4CGAL6HandleD2Ev.exit.i:                       ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 10 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit.i
  fence acquire
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 58
  %i.x = load i8, ptr %i.w, align 2, !range !13
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i1.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i64, ptr %i.z, align 16
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #33, !inline_history !1636
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 25
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
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #33, !inline_history !1636
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #33, !inline_history !1636
  br label %_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit

_ZN4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_OppIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.c, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
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
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1493, !range !13, !alias.scope !1916, !noundef !14 ; 2 uses
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i8 %i.n, 1
  store i8 %i.p, ptr %i.m, align 8, !tbaa !1493, !alias.scope !1916
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 16, !alias.scope !1916
  %i.s = icmp ne i64 %i.r, 1
  %or.cond.i.not.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %i.s
  br i1 %or.cond.i.not.i.i.i.i.i.i, label %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_8terminalESB_vvvEEEEvRKT_RKSF_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !alias.scope !1916, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1916
  %i.y = select i1 %i.v, ptr %i.a, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1485
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.m, align 8, !tbaa !1493, !alias.scope !1916
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
  %4 = load double, ptr %i.ac, align 16, !tbaa !19
  %i.af = fneg double %4
  %i.ag = fcmp oeq double %i.ae, %i.af
  br i1 %i.ag, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ah = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1
  %i.ak = fneg double %i.ai
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  store <2 x double> %i.am, ptr %i.ac, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.an, %bb.k ], [ %i.ab, %bb.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.j, %_ZN4CGAL8oppositeIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ao release, align 16
  %i.ap = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNK4CGAL16Lazy_exact_unaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE9prune_dagEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i6 = icmp eq i8 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4 ; 2 uses
  %i.at = icmp eq i32 %i.as, 1                    ; 2 uses
  br i1 %.not.i.i.i6, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.ap) #23, !inline_history !1637
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.as, -1
  store atomic i32 %i.ax, ptr %i.ar monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = atomicrmw sub ptr %i.ar, i32 1 release, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.s, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.ba = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ba) #23, !inline_history !1637
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
  store ptr %i.t, ptr %i.u, align 16, !tbaa !1684
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
  %.09 = extractvalue { ptr, i32 } %i.ag, 1
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ai = icmp eq i32 %.09, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %.0 = extractvalue { ptr, i32 } %i.ag, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
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
end_hunk_3
begin_hunk_4_@_ZN4CGAL8Vector_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRKSE_SJ_SJ_EEOT_OT0_OT1_:bb.a
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 90
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !1494, !range !13, !noundef !14
  store i8 %i.aw, ptr %i.au, align 2, !tbaa !1494
  %i.ax = trunc nuw i8 %i.at to i1
  %i.ay = shl i64 %i.an, 3
  %.sink = select i1 %i.ax, i64 %i.ay, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.ak, ptr nonnull align 16 dereferenceable(64) %i.a, i64 %.sink, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 0, ptr %i.az, align 16, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bd = load i64, ptr %i.bc, align 16, !tbaa !1484 ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 16, !tbaa !1484
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !1493, !range !13, !noundef !14
  store i8 %i.bg, ptr %i.be, align 8, !tbaa !1493
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 121
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 122
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !1494, !range !13, !noundef !14
  store i8 %i.bm, ptr %i.bk, align 2, !tbaa !1494
  %i.bn = trunc nuw i8 %i.bj to i1
  %i.bo = shl i64 %i.bd, 3
  %.sink9 = select i1 %i.bn, i64 %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.az, ptr nonnull align 16 dereferenceable(27) %i.ba, i64 %.sink9, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i64 0, ptr %i.bp, align 16, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.bs = load i64, ptr %i.br, align 16, !tbaa !1484 ; 2 uses
  store i64 %i.bs, ptr %i.bq, align 16, !tbaa !1484
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !1493, !range !13, !noundef !14
  store i8 %i.bv, ptr %i.bt, align 8, !tbaa !1493
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 153
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 154
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !1494, !range !13, !noundef !14
  store i8 %i.cb, ptr %i.bz, align 2, !tbaa !1494
  %i.cc = trunc nuw i8 %i.by to i1
  %i.cd = shl i64 %i.bs, 3
  %.sink10 = select i1 %i.cc, i64 %i.cd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.bp, ptr nonnull align 16 dereferenceable(64) %i.b, i64 %.sink10, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i64 0, ptr %i.ce, align 16, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ci = load i64, ptr %i.ch, align 16, !tbaa !1484 ; 2 uses
  store i64 %i.ci, ptr %i.cg, align 16, !tbaa !1484
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1493, !range !13, !noundef !14
  store i8 %i.cl, ptr %i.cj, align 8, !tbaa !1493
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 185
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 186
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !1494, !range !13, !noundef !14
  store i8 %i.cr, ptr %i.cp, align 2, !tbaa !1494
  %i.cs = trunc nuw i8 %i.co to i1
  br i1 %i.cs, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ce, ptr noundef nonnull align 16 dereferenceable(27) %i.cf, i64 16, i1 false), !tbaa.struct !1556
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  %i.ct = shl i64 %i.ci, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.ce, ptr nonnull align 16 dereferenceable(27) %i.cf, i64 %i.ct, i1 false)
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %class.anon.165, align 8            ; 5 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.c, ptr %5, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, i1 noundef zeroext false)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %6 = load double, ptr %i.s, align 16, !tbaa !19
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !36 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = atomicrmw sub ptr %i.ax, i32 1 release, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !36 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #23, !inline_history !1928
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !1577
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1577
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !1577
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.u, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.u, ptr %i.v, align 16, !tbaa !1684
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 72
end_hunk_4
begin_hunk_5_@_ZN4CGAL23lazy_reset_member_tupleIJNS_15Return_base_tagENS_13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEESG_SG_EJLm0ELm1ELm2ELm3EEEEvRSt5tupleIJDpT_EESt16integer_sequenceImJXspT0_EEE:bb.a
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !1770
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i6

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i6

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !36  ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i6, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !1770
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i6

_ZN4CGAL6Handle6decrefEv.exit.i.i.i6:             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  store ptr null, ptr %i.r, align 8, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit7

_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit7: ; preds = %_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i6
  %i.ai = load ptr, ptr %0, align 8, !tbaa !36    ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i8, label %_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit11, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit7
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i9 = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4 ; 2 uses
  %i.am = icmp eq i32 %i.al, 1                    ; 2 uses
  br i1 %.not.i.i.i.i9, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #23, !inline_history !1770
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i10

bb.u:                                             ; preds = %bb.s
  %i.aq = add nsw i32 %i.al, -1
  store atomic i32 %i.aq, ptr %i.ak monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i10

bb.v:                                             ; preds = %bb.r
  br i1 %i.am, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = atomicrmw sub ptr %i.ak, i32 1 release, align 4
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.x, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i10

bb.x:                                             ; preds = %bb.w, %bb.v
  fence acquire
  %i.at = load ptr, ptr %0, align 8, !tbaa !36    ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i10, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.at) #23, !inline_history !1770
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i10

_ZN4CGAL6Handle6decrefEv.exit.i.i.i10:            ; preds = %bb.y, %bb.x, %bb.w, %bb.u, %bb.t
  store ptr null, ptr %0, align 8, !tbaa !36
  br label %_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit11

_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit11: ; preds = %_ZN4CGAL17lazy_reset_memberINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEEvRT_.exit7, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %class.anon.165, align 8            ; 5 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.c, ptr %5, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
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
  %i.u = load double, ptr %i.t, align 8, !tbaa !19
  %6 = load double, ptr %i.s, align 16, !tbaa !19
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !36 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = atomicrmw sub ptr %i.ax, i32 1 release, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !36 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !36
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_MulIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_MulIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %class.anon.165, align 8            ; 5 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.c, ptr %5, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8 ; 5 uses
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  %i.r = icmp eq ptr %i.j, %i.q
  br i1 %i.r, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %i.s, ptr noundef nonnull align 16 dereferenceable(27) %i.t, ptr noundef nonnull align 16 dereferenceable(27) %i.u)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.l

bb.k:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  invoke void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(27) %i.v)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc.i, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #23
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %bb.k, %.noexc.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !19
  %6 = load double, ptr %i.x, align 16, !tbaa !19
  %i.aa = fneg double %6
  %i.ab = fcmp oeq double %i.z, %i.aa
  br i1 %i.ab, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ac = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.ad = extractvalue { double, double } %i.ac, 0
  %i.ae = extractvalue { double, double } %i.ac, 1
  %i.af = fneg double %i.ad
  %i.ag = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.ae, i64 1
  store <2 x double> %i.ah, ptr %i.x, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.l, %bb.n, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ai, %bb.n ], [ %i.w, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.o:                                             ; preds = %bb.m, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19multiply_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.aj release, align 16
  %i.ak = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i12 = icmp eq i8 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load atomic i32, ptr %i.am monotonic, align 4 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ak) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.as = add nsw i32 %i.an, -1
  store atomic i32 %i.as, ptr %i.am monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.p
  br i1 %i.ao, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = atomicrmw sub ptr %i.am, i32 1 release, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.v, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.v:                                             ; preds = %bb.u, %bb.t
  fence acquire
  %i.av = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.o
  %i.ba = load ptr, ptr %i.k, align 16, !tbaa !36 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.ba, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i2.i = icmp eq i8 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 4 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(12) %i.ba) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.bi = add nsw i32 %i.bd, -1
  store atomic i32 %i.bi, ptr %i.bc monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.x
  br i1 %i.be, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = atomicrmw sub ptr %i.bc, i32 1 release, align 4
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.ad, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  fence acquire
  %i.bl = load ptr, ptr %i.k, align 16, !tbaa !36 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bl) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z
  store ptr null, ptr %i.k, align 16, !tbaa !36
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors32Construct_cross_product_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_8Vector_3IS1_EESS_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Vector_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %"struct.boost::multiprecision::detail::expression.415", align 8 ; 7 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.415", align 8 ; 7 uses
  %9 = alloca %"struct.boost::multiprecision::detail::expression.415", align 8 ; 7 uses
  %10 = alloca %class.anon.193, align 8           ; 5 uses
  %11 = alloca %class.anon.192, align 8           ; 4 uses
  %12 = alloca %class.anon.193, align 8           ; 5 uses
  %13 = alloca %class.anon.192, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"class.CGAL::Vector_3.182", align 16 ; 37 uses
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
          to label %bb.b unwind label %bb.c       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4CGAL10Lazy_rep_nINS_8Vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors32Construct_cross_product_vector_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS1_INS_5EpeckEEESV_EEC2IJRKSV_SZ_EEERKSO_RKSP_DpOT_(ptr noundef nonnull align 16 dereferenceable(96) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN4CGAL6HandleD2Ev.exit unwind label %bb.d

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.b
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.n = load i32, ptr %i.c, align 4
  %i.o = and i32 %i.n, -24577
  %i.p = or disjoint i32 %i.o, %i.i
  store i32 %i.p, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.e

end_hunk_5
begin_hunk_6_@_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEESI_Li0EEENS0_15redux_evaluatorINS_5BlockIKNS_6MatrixISI_Lin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEELi0ELi0EE3runISP_EESI_RKSQ_RKSJ_RKT_:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4, !noalias !2105
  %i.bm = add nsw i32 %i.bl, 1
  store atomic i32 %i.bm, ptr %i.bk monotonic, align 4, !noalias !2105
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32

bb.q:                                             ; preds = %.lr.ph
  %i.bn = atomicrmw add ptr %i.bk, i32 1 monotonic, align 4, !noalias !2105 ; 0 uses
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32

_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2106
  invoke void @_ZNK4CGAL3MaxINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESt4lessISF_EEclERKSF_SK_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2106
  %i.bo = load ptr, ptr %0, align 8, !tbaa !595   ; 5 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !595
  store ptr %i.bp, ptr %0, align 8, !tbaa !595
  store ptr %i.bo, ptr %5, align 8, !tbaa !595
  %.not.i.i33 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i33, label %_ZN4CGAL6HandleD2Ev.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i34 = icmp eq i8 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bs = load atomic i32, ptr %i.br monotonic, align 4 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1                    ; 2 uses
  br i1 %.not.i.i.i34, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bo) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit35

bb.v:                                             ; preds = %bb.t
  %i.bx = add nsw i32 %i.bs, -1
  store atomic i32 %i.bx, ptr %i.br monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit35

bb.w:                                             ; preds = %bb.s
  br i1 %i.bt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = atomicrmw sub ptr %i.br, i32 1 release, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.y, label %_ZN4CGAL6HandleD2Ev.exit35

bb.y:                                             ; preds = %bb.x, %bb.w
  fence acquire
  %i.ca = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN4CGAL6HandleD2Ev.exit35, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit35

_ZN4CGAL6HandleD2Ev.exit35:                       ; preds = %bb.r, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z
  %i.cf = load ptr, ptr %6, align 8, !tbaa !36    ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i36, label %_ZN4CGAL6HandleD2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit35
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i37 = icmp eq i8 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ci = load atomic i32, ptr %i.ch monotonic, align 4 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1                    ; 2 uses
  br i1 %.not.i.i.i37, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(12) %i.cf) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit38

bb.ad:                                            ; preds = %bb.ab
  %i.cn = add nsw i32 %i.ci, -1
  store atomic i32 %i.cn, ptr %i.ch monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit38

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.cj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = atomicrmw sub ptr %i.ch, i32 1 release, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.ag, label %_ZN4CGAL6HandleD2Ev.exit38

bb.ag:                                            ; preds = %bb.af, %bb.ae
  fence acquire
  %i.cq = load ptr, ptr %6, align 8, !tbaa !36    ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN4CGAL6HandleD2Ev.exit38, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(12) %i.cq) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit38

_ZN4CGAL6HandleD2Ev.exit38:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit35, %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cv = add nuw nsw i64 %.02058, 1              ; 2 uses
  %i.cw = load i64, ptr %i.bd, align 8, !tbaa !922
  %i.cx = icmp slt i64 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !2115

bb.ai:                                            ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %0) #23
  resume { ptr, i32 } %i.cy

._crit_edge:                                      ; preds = %_ZN4CGAL6HandleD2Ev.exit38, %_ZN4CGAL6HandleD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN4CGAL6Handle5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #23, !inline_history !2116
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
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #23, !inline_history !2116
  br label %_ZN4CGAL6Handle5resetEv.exit

_ZN4CGAL6Handle5resetEv.exit:                     ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL3MaxINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESt4lessISF_EEclERKSF_SK_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !36     ; 5 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = add nsw i32 %i.f, 1
  store atomic i32 %i.g, ptr %i.e monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %5 = load double, ptr %i.i, align 16, !tbaa !19
  %i.l = fneg double %5
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %_ZN4CGALgtERKNS_11Interval_ntILb0EEES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = load double, ptr %i.n, align 16, !tbaa !19
  %7 = fneg double %6
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %9 = load double, ptr %8, align 8, !tbaa !19
  %i.o = fcmp ugt double %9, %7
  br i1 %i.o, label %bb.g, label %_ZN4CGALgtERKNS_11Interval_ntILb0EEES3_.exit

bb.g:                                             ; preds = %bb.f
  br label %_ZN4CGALgtERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALgtERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.4.0.i.i = phi i16 [ 257, %bb.e ], [ 256, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store i16 %.sroa.4.0.i.i, ptr %4, align 2
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.p = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN4CGALgtERKNS_11Interval_ntILb0EEES3_.exit
  %i.q = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %4)
  %i.r = select i1 %i.q, ptr %2, ptr %3
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !36
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i10 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = add nsw i32 %i.v, 1
  store atomic i32 %i.w, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11

bb.k:                                             ; preds = %_ZN4CGALgtERKNS_11Interval_ntILb0EEES3_.exit
  %i.y = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 9 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %3, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load <2 x double>, ptr %i.aa, align 16, !tbaa !19 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ac, align 16, !tbaa !19 ; 2 uses
  %i.af = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ad, <2 x double> %i.ae)
  %i.ag = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ad, <2 x double> %i.ae)
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> %i.ag, <2 x i32> <i32 0, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 1, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.ah, ptr %i.aj, align 16, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.ak, align 16, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.z, ptr %i.am, align 16, !tbaa !36
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 8
  %i.aq = add nsw i32 %i.ap, 1
  store atomic i32 %i.aq, ptr %i.ao monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.as = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add nsw i32 %i.au, 1
  store atomic i32 %i.av, ptr %i.at monotonic, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aw = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ay = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 16, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_MaxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %i.y, align 16, !tbaa !26
  store ptr %i.y, ptr %0, align 8, !tbaa !36
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11: ; preds = %bb.j, %bb.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit: ; preds = %bb.d, %bb.c, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_MaxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_MaxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %class.anon.165, align 8            ; 5 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.c, ptr %5, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i4:           ; preds = %bb.e
  %.not.i.i.i5 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  %i.s = icmp slt i32 %i.r, 0
  %..i.i.i = select i1 %i.s, ptr %i.q, ptr %i.j
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %..i.i.i)
          to label %_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit unwind label %bb.k

_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit: ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !19
  %6 = load double, ptr %i.t, align 16, !tbaa !19
  %i.w = fneg double %6
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.y = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.z = extractvalue { double, double } %i.y, 0
  %i.aa = extractvalue { double, double } %i.y, 1
  %i.ab = fneg double %i.z
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  store <2 x double> %i.ad, ptr %i.t, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.l

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ae, %bb.k ], [ %i.o, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.j, %_ZN4CGAL3maxIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.af release, align 16
  %i.ag = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i10 = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1                    ; 2 uses
  br i1 %.not.i.i.i10, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.aj, -1
  store atomic i32 %i.ao, ptr %i.ai monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.m
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = atomicrmw sub ptr %i.ai, i32 1 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.s, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.l
  %i.aw = load ptr, ptr %i.k, align 16, !tbaa !36 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i2.i = icmp eq i8 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.aw) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.x:                                             ; preds = %bb.v
  %i.be = add nsw i32 %i.az, -1
  store atomic i32 %i.be, ptr %i.ay monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.u
  br i1 %i.ba, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = atomicrmw sub ptr %i.ay, i32 1 release, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.aa, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  fence acquire
  %i.bh = load ptr, ptr %i.k, align 16, !tbaa !36 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bh) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  store ptr null, ptr %i.k, align 16, !tbaa !36
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10redux_implINS0_13scalar_min_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEESI_Li0EEENS0_15redux_evaluatorINS_5BlockIKNS_6MatrixISI_Lin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEELi0ELi0EE3runISP_EESI_RKSQ_RKSJ_RKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.CGAL::Min", align 1        ; 3 uses
  %5 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 7 uses
  %6 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %i.a = load i8, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i, !prof !2089

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 0, ptr %i.f, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEEE, i64 16), ptr %i.c, align 16, !tbaa !26
  store ptr %i.c, ptr @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8, !tbaa !36
  %i.g = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4CGAL6HandleD2Ev, ptr nonnull @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, ptr nonnull @__dso_handle) #23 ; 0 uses
  store i8 1, ptr @_ZGVZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z, align 8
  br label %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i

_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i: ; preds = %bb.b, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEvE1z)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !36
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i
  %i.l = atomicrmw add ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !935, !noalias !2117
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36, !noalias !2117 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = atomicrmw add ptr %i.o, i32 1 monotonic, align 4, !noalias !2122 ; 0 uses
  %i.q = atomicrmw add ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.e

.thread.i.i.i:                                    ; preds = %_ZN4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE4zeroEv.exit.i.i
  %i.r = load atomic i32, ptr %i.k monotonic, align 4
  %i.s = add nsw i32 %i.r, 1
  store atomic i32 %i.s, ptr %i.k monotonic, align 4
  %i.t = load ptr, ptr %1, align 8, !tbaa !935, !noalias !2122
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36, !noalias !2122 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 4, !noalias !2122
  %i.x = add nsw i32 %i.w, 1
  store atomic i32 %i.x, ptr %i.v monotonic, align 4, !noalias !2122
  %i.y = load atomic i32, ptr %i.v monotonic, align 4
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.v monotonic, align 4
  %i.aa = load atomic i32, ptr %i.k monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread.i.i.i
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
end_hunk_6
begin_hunk_7_@_ZN5Eigen8internal10redux_implINS0_13scalar_min_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEESI_Li0EEENS0_15redux_evaluatorINS_5BlockIKNS_6MatrixISI_Lin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEELi0ELi0EE3runISP_EESI_RKSQ_RKSJ_RKT_:bb.a
  %.not.i.i.i30 = icmp eq i8 %i.ar, 0
  %i.as = load atomic i32, ptr %i.ap monotonic, align 4 ; 2 uses
  %i.at = icmp eq i32 %i.as, 1                    ; 2 uses
  br i1 %.not.i.i.i30, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = add nsw i32 %i.as, -1
  store atomic i32 %i.ax, ptr %i.ap monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.m:                                             ; preds = %bb.i
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = atomicrmw sub ptr %i.ap, i32 1 release, align 4
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, %bb.k, %bb.l, %bb.n, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !922
  %i.bf = icmp sgt i64 %i.be, 1
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit38
  %.02058 = phi i64 [ %i.cv, %_ZN4CGAL6HandleD2Ev.exit38 ], [ 1, %_ZN4CGAL6HandleD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.bg = load ptr, ptr %1, align 8, !tbaa !935, !noalias !2131
  %i.bh = getelementptr [16 x i8], ptr %i.bg, i64 %.02058
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36, !noalias !2131 ; 2 uses
  store ptr %i.bi, ptr %6, align 8, !tbaa !36, !alias.scope !2131
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !2131
  %.not.i.i.i.i.i.i31 = icmp eq i8 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4, !noalias !2131
  %i.bm = add nsw i32 %i.bl, 1
  store atomic i32 %i.bm, ptr %i.bk monotonic, align 4, !noalias !2131
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32

bb.q:                                             ; preds = %.lr.ph
  %i.bn = atomicrmw add ptr %i.bk, i32 1 monotonic, align 4, !noalias !2131 ; 0 uses
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32

_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2132
  invoke void @_ZNK4CGAL3MinINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESt4lessISF_EEclERKSF_SK_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %6)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2132
  %i.bo = load ptr, ptr %0, align 8, !tbaa !595   ; 5 uses
  %i.bp = load ptr, ptr %5, align 8, !tbaa !595
  store ptr %i.bp, ptr %0, align 8, !tbaa !595
  store ptr %i.bo, ptr %5, align 8, !tbaa !595
  %.not.i.i33 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i33, label %_ZN4CGAL6HandleD2Ev.exit35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i34 = icmp eq i8 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bs = load atomic i32, ptr %i.br monotonic, align 4 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 1                    ; 2 uses
  br i1 %.not.i.i.i34, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(12) %i.bo) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit35

bb.v:                                             ; preds = %bb.t
  %i.bx = add nsw i32 %i.bs, -1
  store atomic i32 %i.bx, ptr %i.br monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit35

bb.w:                                             ; preds = %bb.s
  br i1 %i.bt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = atomicrmw sub ptr %i.br, i32 1 release, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.y, label %_ZN4CGAL6HandleD2Ev.exit35

bb.y:                                             ; preds = %bb.x, %bb.w
  fence acquire
  %i.ca = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN4CGAL6HandleD2Ev.exit35, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit35

_ZN4CGAL6HandleD2Ev.exit35:                       ; preds = %bb.r, %bb.u, %bb.v, %bb.x, %bb.y, %bb.z
  %i.cf = load ptr, ptr %6, align 8, !tbaa !36    ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i36, label %_ZN4CGAL6HandleD2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit35
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i37 = icmp eq i8 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ci = load atomic i32, ptr %i.ch monotonic, align 4 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1                    ; 2 uses
  br i1 %.not.i.i.i37, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !26
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(12) %i.cf) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit38

bb.ad:                                            ; preds = %bb.ab
  %i.cn = add nsw i32 %i.ci, -1
  store atomic i32 %i.cn, ptr %i.ch monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit38

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.cj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = atomicrmw sub ptr %i.ch, i32 1 release, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.ag, label %_ZN4CGAL6HandleD2Ev.exit38

bb.ag:                                            ; preds = %bb.af, %bb.ae
  fence acquire
  %i.cq = load ptr, ptr %6, align 8, !tbaa !36    ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN4CGAL6HandleD2Ev.exit38, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(12) %i.cq) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit38

_ZN4CGAL6HandleD2Ev.exit38:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit35, %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cv = add nuw nsw i64 %.02058, 1              ; 2 uses
  %i.cw = load i64, ptr %i.bd, align 8, !tbaa !922
  %i.cx = icmp slt i64 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !2141

bb.ai:                                            ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEE17coeffByOuterInnerEll.exit32
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %0) #23
  resume { ptr, i32 } %i.cy

._crit_edge:                                      ; preds = %_ZN4CGAL6HandleD2Ev.exit38, %_ZN4CGAL6HandleD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL3MinINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEESt4lessISF_EEclERKSF_SK_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.CGAL::Uncertain", align 2   ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !36     ; 5 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic i32, ptr %i.e monotonic, align 4
  %i.g = add nsw i32 %i.f, 1
  store atomic i32 %i.g, ptr %i.e monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw add ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !19
  %5 = load double, ptr %i.i, align 16, !tbaa !19
  %i.l = fneg double %5
  %i.m = fcmp olt double %i.k, %i.l
  br i1 %i.m, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %6 = load double, ptr %i.n, align 16, !tbaa !19
  %7 = fneg double %6
  %8 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %9 = load double, ptr %8, align 8, !tbaa !19
  %i.o = fcmp ugt double %9, %7
  br i1 %i.o, label %bb.g, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

bb.g:                                             ; preds = %bb.f
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.4.0.i = phi i16 [ 257, %bb.e ], [ 256, %bb.g ], [ 0, %bb.f ] ; 3 uses
  store i16 %.sroa.4.0.i, ptr %4, align 2
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.p = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.p, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.q = call noundef zeroext i1 @_ZNK4CGAL9UncertainIbE12make_certainEv(ptr noundef nonnull align 1 dereferenceable(2) %4)
  %i.r = select i1 %i.q, ptr %2, ptr %3
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !36
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i10 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load atomic i32, ptr %i.u monotonic, align 4
  %i.w = add nsw i32 %i.v, 1
  store atomic i32 %i.w, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11

bb.k:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.y = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 9 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %3, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load <2 x double>, ptr %i.aa, align 16, !tbaa !19 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.ac, align 16, !tbaa !19 ; 2 uses
  %i.af = tail call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.ad, <2 x double> %i.ae)
  %i.ag = tail call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.ad, <2 x double> %i.ae)
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 1, ptr %i.ai, align 4, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.ah, ptr %i.aj, align 16, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.ak, align 16, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 0, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store ptr %i.z, ptr %i.am, align 16, !tbaa !36
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 8
  %i.aq = add nsw i32 %i.ap, 1
  store atomic i32 %i.aq, ptr %i.ao monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.as = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.as, ptr %i.ar, align 16, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add nsw i32 %i.au, 1
  store atomic i32 %i.av, ptr %i.at monotonic, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aw = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.ay = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 16, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_MinIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE, i64 16), ptr %i.y, align 16, !tbaa !26
  store ptr %i.y, ptr %0, align 8, !tbaa !36
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11: ; preds = %bb.j, %bb.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit: ; preds = %bb.d, %bb.c, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEC2ERKSE_.exit11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %0, align 16, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !36  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !36  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !36  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i2 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i2, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit3

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit3

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit3

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.r, align 16, !tbaa !36 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !39
  br label %_ZN4CGAL6HandleD2Ev.exit3

_ZN4CGAL6HandleD2Ev.exit3:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit3
  fence acquire
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !range !13
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i1.i.i.i = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 16
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #33, !inline_history !1660
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  %i.az = load i8, ptr %i.ay, align 2, !range !13
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.aj, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #33, !inline_history !1660
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #33, !inline_history !1660
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit3, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_MinIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_MinIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.165, align 8            ; 5 uses
  %3 = alloca %class.anon.164, align 8            ; 4 uses
  %4 = alloca %class.anon.165, align 8            ; 5 uses
  %5 = alloca %class.anon.164, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !36  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.c, ptr %5, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !1627
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !1627
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !36  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.l, ptr %3, align 8, !tbaa !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %3, ptr %2, align 8, !tbaa !1627
  store ptr %2, ptr %i.e, align 8, !tbaa !1627
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !1627
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i4:           ; preds = %bb.e
  %.not.i.i.i5 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i4
  store ptr null, ptr %i.e, align 8, !tbaa !1627
  store ptr null, ptr %i.f, align 8, !tbaa !1627
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.q, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  %i.s = icmp slt i32 %i.r, 0
  %..i.i.i = select i1 %i.s, ptr %i.q, ptr %i.j
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %..i.i.i)
          to label %_ZN4CGAL3minIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit unwind label %bb.k

_ZN4CGAL3minIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit: ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !19
  %6 = load double, ptr %i.t, align 16, !tbaa !19
  %i.w = fneg double %6
  %i.x = fcmp oeq double %i.v, %i.w
  br i1 %i.x, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL3minIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.y = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.z = extractvalue { double, double } %i.y, 0
  %i.aa = extractvalue { double, double } %i.y, 1
  %i.ab = fneg double %i.z
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  store <2 x double> %i.ad, ptr %i.t, align 16, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.l

bb.k:                                             ; preds = %.noexc, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.h, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ae, %bb.k ], [ %i.o, %bb.h ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %bb.j, %_ZN4CGAL3minIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEET_RKSE_SG_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.af release, align 16
  %i.ag = load ptr, ptr %i.b, align 16, !tbaa !36 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i10 = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1                    ; 2 uses
  br i1 %.not.i.i.i10, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ag) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ao = add nsw i32 %i.aj, -1
  store atomic i32 %i.ao, ptr %i.ai monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.m
  br i1 %i.ak, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = atomicrmw sub ptr %i.ai, i32 1 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.s, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.ar = load ptr, ptr %i.b, align 16, !tbaa !36 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o
  store ptr null, ptr %i.b, align 16, !tbaa !36
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.l
  %i.aw = load ptr, ptr %i.k, align 16, !tbaa !36 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.aw, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i2.i = icmp eq i8 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(12) %i.aw) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.x:                                             ; preds = %bb.v
  %i.be = add nsw i32 %i.az, -1
  store atomic i32 %i.be, ptr %i.ay monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.u
  br i1 %i.ba, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = atomicrmw sub ptr %i.ay, i32 1 release, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.aa, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  fence acquire
  %i.bh = load ptr, ptr %i.k, align 16, !tbaa !36 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(12) %i.bh) #23, !inline_history !1928
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  store ptr null, ptr %i.k, align 16, !tbaa !36
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl8copyleft4cgal14half_space_boxIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi4ELi0ELin1ELi4EEEiEEvRKNS5_7Plane_3INS5_5EpeckEEERKNS3_10MatrixBaseIT_EERNS4_ISK_Li8ELi3ELi0ELi8ELi3EEERNS4_IT0_Li12ELi3ELi0ELi12ELi3EEEENKUlRKSK_S12_E_clES12_S12_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 6 uses
  %i.p = tail call noundef zeroext i1 @_ZN4CGALltERKNS_13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEEi(ptr noundef nonnull align 8 dereferenceable(9) %3, i32 noundef 0)
  br i1 %i.p, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  %i.q = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34, !noalias !2148 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2148
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.o), !noalias !2148
  %i.r = load i32, ptr %i.o, align 4, !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2148
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.m), !noalias !2148
  %i.s = load i32, ptr %i.m, align 4, !noalias !2148
  %i.t = and i32 %i.s, -24577
  %i.u = or disjoint i32 %i.t, 16384
  store i32 %i.u, ptr %i.n, align 4, !noalias !2148
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.n), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2148
  %i.v = load ptr, ptr %2, align 8, !tbaa !36, !noalias !2148 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load <2 x double>, ptr %i.w, align 16, !tbaa !19, !noalias !2148 ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = call noundef <2 x double> @llvm.x86.sse2.min.pd(<2 x double> %i.x, <2 x double> %i.y)
  %i.aa = call noundef <2 x double> @llvm.x86.sse2.max.pd(<2 x double> %i.x, <2 x double> %i.y)
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> %i.aa, <2 x i32> <i32 0, i32 3>
  %i.ac = call noundef <2 x double> @llvm.x86.sse2.min.sd(<2 x double> %i.ab, <2 x double> <double -0.000000e+00, double poison>)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 1, ptr %i.ad, align 4, !tbaa !17, !noalias !2148
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %i.ac, ptr %i.ae, align 16, !tbaa !19, !noalias !2148
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.af, align 16, !tbaa !20, !noalias !2148
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !24, !noalias !2148
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.v, ptr %i.ah, align 16, !tbaa !36, !noalias !2148
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !2148
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

end_hunk_7
