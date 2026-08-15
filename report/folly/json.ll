inline.NumInlined: 4901
inline.NumDeleted: 1765
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E_clES7_:bb.a
bb.o:                                             ; preds = %bb.n
  %i.df = add i64 %.sroa.5.0.copyload, 3          ; 2 uses
  %i.dg = icmp ult i64 %i.ct, %.sroa.2.0.copyload
  br i1 %i.dg, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i: ; preds = %bb.o
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !12, !noalias !485
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 1
  store i8 %i.dh, ptr %.sroa.024.0, align 1, !tbaa !12, !noalias !485
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i, %bb.o, %bb.n
  %.sroa.526.0.copyload.i = phi i64 [ %i.df, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i ], [ %i.df, %bb.o ], [ %i.ct, %bb.n ] ; 2 uses
  %.sroa.024.0.copyload.i = phi ptr [ %i.di, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i ], [ %.sroa.024.0, %bb.o ], [ %.sroa.024.0, %bb.n ] ; 3 uses
  %i.dj = add i64 %.sroa.526.0.copyload.i, 1      ; 2 uses
  %i.dk = icmp ult i64 %.sroa.526.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.dk, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !12, !noalias !485
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload.i, i64 1
  store i8 %i.dm, ptr %.sroa.024.0.copyload.i, align 1, !tbaa !12, !noalias !485
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i
  %.sroa.521.0.copyload.i = phi i64 [ %i.ct, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.dj, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %i.dj, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ] ; 3 uses
  %.sroa.019.0.copyload.i = phi ptr [ %.sroa.024.0, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.dn, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %.sroa.024.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ] ; 3 uses
  %.1.i = phi i32 [ %.0.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.da, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %i.da, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ]
  %i.do = shl nuw nsw i32 %.1.i, 1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.dp ; 2 uses
  %i.dr = add i64 %.sroa.521.0.copyload.i, 1
  %i.ds = icmp ult i64 %.sroa.521.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.ds, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i
  %i.dt = load i8, ptr %i.dq, align 1, !tbaa !12, !noalias !485
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.i, i64 1
  store i8 %i.dt, ptr %.sroa.019.0.copyload.i, align 1, !tbaa !12, !noalias !485
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i
  %.sroa.024.2 = phi ptr [ %i.du, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i ], [ %.sroa.019.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i ] ; 3 uses
  %i.dv = icmp ult i64 %i.dr, %.sroa.2.0.copyload
  br i1 %i.dv, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i, label %_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !12, !noalias !485
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.024.2, i64 1
  store i8 %i.dx, ptr %.sroa.024.2, align 1, !tbaa !12, !noalias !485
  br label %_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit

_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i
  %.sroa.024.6 = phi ptr [ %i.dy, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i ], [ %.sroa.024.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i ]
  %i.dz = add i64 %.sroa.521.0.copyload.i, 2
  store ptr %.sroa.024.6, ptr %0, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dz, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cr, ptr %.sroa.23.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %3) local_unnamed_addr #21 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.not5.i = icmp eq ptr %1, %2
  br i1 %.not5.i, label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = sub i64 %i.b, %i.a
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol
  %.sroa.7.0.prol = phi i64 [ %i.f, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ %.sroa.3.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.07.i.prol = phi ptr [ %i.e, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.0.copyload46.i.prol = phi ptr [ %.sroa.0.0.copyload3.i.prol, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ %.sroa.08.0.copyload, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 1 ; 2 uses
  %i.f = add i64 %.sroa.7.0.prol, 1               ; 2 uses
  %i.g = icmp ult i64 %.sroa.7.0.prol, %.sroa.2.0.copyload
  br i1 %i.g, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol: ; preds = %.lr.ph.i.prol
  %i.h = load i8, ptr %.07.i.prol, align 1, !tbaa !12, !noalias !488
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload46.i.prol, i64 1
  store i8 %i.h, ptr %.sroa.0.0.copyload46.i.prol, align 1, !tbaa !12, !noalias !488
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol, %.lr.ph.i.prol
  %.sroa.0.0.copyload3.i.prol = phi ptr [ %.sroa.0.0.copyload46.i.prol, %.lr.ph.i.prol ], [ %i.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.prol ] ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !491

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol, %.lr.ph.i.preheader
  %.sroa.0.0.copyload3.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.0.0.copyload3.i.prol, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %.sroa.7.0.unr = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.preheader ], [ %i.f, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %.07.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.e, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %.sroa.0.0.copyload46.i.unr = phi ptr [ %.sroa.08.0.copyload, %.lr.ph.i.preheader ], [ %.sroa.0.0.copyload3.i.prol, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.prol ]
  %i.j = sub i64 %i.a, %i.b
  %i.k = icmp ugt i64 %i.j, -4
  br i1 %i.k, label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3
  %.sroa.7.0 = phi i64 [ %i.ab, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ], [ %.sroa.7.0.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.07.i = phi ptr [ %i.aa, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ], [ %.07.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.0.copyload46.i = phi ptr [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ], [ %.sroa.0.0.copyload46.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.m = add i64 %.sroa.7.0, 1
  %i.n = icmp ult i64 %.sroa.7.0, %.sroa.2.0.copyload
  br i1 %i.n, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %.lr.ph.i
  %i.o = load i8, ptr %.07.i, align 1, !tbaa !12, !noalias !488
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload46.i, i64 1
  store i8 %i.o, ptr %.sroa.0.0.copyload46.i, align 1, !tbaa !12, !noalias !488
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %.lr.ph.i
  %.sroa.0.0.copyload3.i = phi ptr [ %.sroa.0.0.copyload46.i, %.lr.ph.i ], [ %i.p, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 2
  %i.r = add i64 %.sroa.7.0, 2
  %i.s = icmp ult i64 %i.m, %.sroa.2.0.copyload
  br i1 %i.s, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.t = load i8, ptr %i.l, align 1, !tbaa !12, !noalias !488
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i, i64 1
  store i8 %i.t, ptr %.sroa.0.0.copyload3.i, align 1, !tbaa !12, !noalias !488
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.0.0.copyload3.i.1 = phi ptr [ %.sroa.0.0.copyload3.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ], [ %i.u, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1 ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 3
  %i.w = add i64 %.sroa.7.0, 3
  %i.x = icmp ult i64 %i.r, %.sroa.2.0.copyload
  br i1 %i.x, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %i.y = load i8, ptr %i.q, align 1, !tbaa !12, !noalias !488
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.1, i64 1
  store i8 %i.y, ptr %.sroa.0.0.copyload3.i.1, align 1, !tbaa !12, !noalias !488
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %.sroa.0.0.copyload3.i.2 = phi ptr [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ], [ %i.z, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 2 uses
  %i.ab = add i64 %.sroa.7.0, 4
  %i.ac = icmp ult i64 %i.w, %.sroa.2.0.copyload
  br i1 %i.ac, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !12, !noalias !488
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.2, i64 1
  store i8 %i.ad, ptr %.sroa.0.0.copyload3.i.2, align 1, !tbaa !12, !noalias !488
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %.sroa.0.0.copyload3.i.3 = phi ptr [ %.sroa.0.0.copyload3.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2 ], [ %i.ae, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3 ] ; 2 uses
  %.not.i.3 = icmp eq ptr %i.aa, %2
  br i1 %.not.i.3, label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit, label %.lr.ph.i, !llvm.loop !492

_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3, %.lr.ph.i.prol.loopexit
  %.sroa.0.0.copyload3.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ]
  %i.af = add i64 %.sroa.3.0.copyload, %i.b
  %i.ag = sub i64 %i.af, %i.a
  br label %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit

_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit: ; preds = %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit, %bb.a
  %.sroa.7.1 = phi i64 [ %.sroa.3.0.copyload, %bb.a ], [ %i.ag, %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit ]
  %.sroa.0.0.copyload4.lcssa.i = phi ptr [ %.sroa.08.0.copyload, %bb.a ], [ %.sroa.0.0.copyload3.i.lcssa, %_ZN3fmt2v96detail8copy_strIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_.exit.loopexit ]
  store ptr %.sroa.0.0.copyload4.lcssa.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.c, ptr %.sroa.9.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E0_EESH_SH_SO_mmOT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.13 = alloca [7 x i8], align 1            ; 3 uses
  %6 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 11 uses
  %8 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %10 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %11 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !286
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %4) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %.sroa.034.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %.sroa.034.0.copyload, ptr %9, align 8
  %.sroa.10.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx41, align 8
  %.sroa.11.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx53, align 8
  %.sroa.12.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx65, align 8
  %.sroa.13.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %9, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx77, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %8, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %9, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.034.0.copyload39 = load ptr, ptr %8, align 8
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.10.0.copyload50 = load i64, ptr %.sroa.10.0..sroa_idx49, align 8
  %.sroa.11.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload62 = load i64, ptr %.sroa.11.0..sroa_idx61, align 8
  %.sroa.12.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.12.0.copyload74 = load i8, ptr %.sroa.12.0..sroa_idx73, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload, %bb.a ], [ %.sroa.12.0.copyload74, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.a ], [ %.sroa.11.0.copyload62, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.0.copyload50, %bb.b ] ; 2 uses
  %.sroa.034.0 = phi ptr [ %.sroa.034.0.copyload, %bb.a ], [ %.sroa.034.0.copyload39, %bb.b ] ; 3 uses
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.586.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  store ptr %.sroa.034.0, ptr %7, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.10.0, ptr %.sroa.283.0..sroa_idx, align 8
  %.sroa.384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 %.sroa.11.0, ptr %.sroa.384.0..sroa_idx, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i8 %.sroa.12.0, ptr %.sroa.485.0..sroa_idx, align 8
  %i.o = load ptr, ptr %5, align 8, !tbaa !493, !noalias !495, !nonnull !28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !297, !noalias !495 ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.35, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12, !noalias !495
  %i.t = add i64 %.sroa.11.0, 1
  store i64 %i.t, ptr %.sroa.384.0..sroa_idx, align 8, !tbaa !471, !noalias !498
  %i.u = icmp ult i64 %.sroa.11.0, %.sroa.10.0
  br i1 %i.u, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 1
  store ptr %i.v, ptr %7, align 8, !tbaa !56, !noalias !498
  store i8 %i.s, ptr %.sroa.034.0, align 1, !tbaa !12, !noalias !495
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !495
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !501, !noalias !495, !nonnull !28, !align !47
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13, !noalias !495
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !502, !noalias !495, !nonnull !28, !align !327
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60, !noalias !495
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !503, !noalias !495, !nonnull !28, !align !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !298, !noalias !495
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !504, !noalias !495, !nonnull !28, !align !47
  call void @_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %6, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7, i64 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ah), !noalias !495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !495
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !505, !noalias !495, !nonnull !28, !align !327
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !noalias !495
  %i.am = and i32 %i.al, 524288
  %.not1.i = icmp eq i32 %i.am, 0
  %.sroa.0.0.copyload21 = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.6.0.copyload24 = load i64, ptr %.sroa.283.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0.copyload28 = load i64, ptr %.sroa.384.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.8.0.copyload32 = load i64, ptr %.sroa.485.0..sroa_idx, align 8
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

bb.f:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.an = add i64 %.sroa.7.0.copyload28, 1        ; 3 uses
  %i.ao = icmp ult i64 %.sroa.7.0.copyload28, %.sroa.6.0.copyload24
  br i1 %i.ao, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !506, !noalias !495, !nonnull !28
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !495
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload21, i64 1
  store i8 %i.ar, ptr %.sroa.0.0.copyload21, align 1, !tbaa !12, !noalias !495
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i, %bb.f
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload21, %bb.f ], [ %i.as, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !507, !noalias !495, !nonnull !28, !align !327
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60, !noalias !495 ; 6 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = load i64, ptr %.sroa.485.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

.lr.ph.i.i:                                       ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !508, !noalias !495, !nonnull !28 ; 3 uses
  %xtraiter = and i32 %i.av, 1
  %i.ba = icmp eq i32 %i.av, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.av, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1, %.lr.ph.i.i.new
  %.sroa.713.0.i = phi i64 [ %i.an, %.lr.ph.i.i.new ], [ %i.bf, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.new ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ]
  %i.bb = add i64 %.sroa.713.0.i, 1
  %i.bc = icmp ult i64 %.sroa.713.0.i, %.sroa.6.0.copyload24
  br i1 %i.bc, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i: ; preds = %bb.g
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !12, !noalias !509
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i, i64 1
  store i8 %i.bd, ptr %.sroa.0.0.copyload45.i.i, align 1, !tbaa !12, !noalias !509
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, %bb.g
  %.sroa.0.0.copyload3.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.g ], [ %i.be, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i ] ; 3 uses
  %i.bf = add i64 %.sroa.713.0.i, 2               ; 2 uses
  %i.bg = icmp ult i64 %i.bb, %.sroa.6.0.copyload24
  br i1 %i.bg, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !12, !noalias !509
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  store i8 %i.bh, ptr %.sroa.0.0.copyload3.i.i, align 1, !tbaa !12, !noalias !509
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %.sroa.0.0.copyload3.i.i.1 = phi ptr [ %.sroa.0.0.copyload3.i.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i ], [ %i.bi, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, label %bb.g, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.713.0.i.epil.init = phi i64 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ]
  %.sroa.0.0.copyload45.i.i.epil.init = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod96 = trunc i32 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.bj = icmp ult i64 %.sroa.713.0.i.epil.init, %.sroa.6.0.copyload24
  br i1 %i.bj, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil: ; preds = %.epil.preheader
  %i.bk = load i8, ptr %i.az, align 1, !tbaa !12, !noalias !509
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i.epil.init, i64 1
  store i8 %i.bk, ptr %.sroa.0.0.copyload45.i.i.epil.init, align 1, !tbaa !12, !noalias !509
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i: ; preds = %.epil.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa
  %.sroa.0.0.copyload3.i.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ], [ %.sroa.0.0.copyload45.i.i.epil.init, %.epil.preheader ], [ %i.bl, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil ]
  %i.bm = add nsw i32 %i.av, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %.sroa.7.0.copyload28, 2
  %i.bp = add i64 %i.bo, %i.bn
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i, %bb.e, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload32, %bb.e ], [ %i.ax, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %i.ax, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload28, %bb.e ], [ %i.bp, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %i.an, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload21, %bb.e ], [ %.sroa.0.0.copyload3.i.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %.sroa.0.0.copyload, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0 to i8 ; 2 uses
  %.not20 = icmp eq i64 %i.c, %i.l
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %.sroa.0.0, ptr %11, align 8
  %.sroa.10.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.6.0.copyload24, ptr %.sroa.10.0..sroa_idx45, align 8
  %.sroa.11.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.11.0..sroa_idx57, align 8
  %.sroa.12.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 %.sroa.8.0.extract.trunc, ptr %.sroa.12.0..sroa_idx69, align 8
  %.sroa.13.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %11, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx79, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %10, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %11, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.034.0.copyload40 = load ptr, ptr %10, align 8
  %.sroa.10.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.10.0.copyload52 = load i64, ptr %.sroa.10.0..sroa_idx51, align 8
  %.sroa.11.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.11.0.copyload64 = load i64, ptr %.sroa.11.0..sroa_idx63, align 8
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.12.0.copyload76 = load i8, ptr %.sroa.12.0..sroa_idx75, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit
  %.sroa.12.1 = phi i8 [ %.sroa.8.0.extract.trunc, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.12.0.copyload76, %bb.h ]
  %.sroa.11.1 = phi i64 [ %.sroa.7.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.11.0.copyload64, %bb.h ]
  %.sroa.10.1 = phi i64 [ %.sroa.6.0.copyload24, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.10.0.copyload52, %bb.h ]
  %.sroa.034.1 = phi ptr [ %.sroa.0.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.034.0.copyload40, %bb.h ]
  store ptr %.sroa.034.1, ptr %0, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.690.0..sroa_idx, align 8
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.791.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(40) %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 4 uses
  %i.b = alloca [20 x i8], align 16               ; 4 uses
  %6 = alloca %"struct.fmt::v9::detail::format_decimal_result.65", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v9::basic_memory_buffer", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !307
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !515
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = icmp ugt i64 %2, 99
  br i1 %i.g, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.021.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %2, %bb.b ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.i = urem i64 %.021.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.j
  %i.l = load i16, ptr %i.k, align 1, !noalias !515
  store i16 %i.l, ptr %i.h, align 1, !noalias !515
  %i.m = udiv i64 %.021.i.i.i, 100                ; 2 uses
  %i.n = icmp ugt i64 %.021.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !320

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.019.lcssa.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %2, %bb.b ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = icmp samesign ult i64 %.0.lcssa.i.i.i, 10
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !12, !noalias !515
  br label %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.t = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1, !noalias !515
  store i16 %i.v, ptr %i.s, align 1, !noalias !515
  br label %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit

_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %1, i64 25, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %i.w, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(25) %7, i64 25, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.033.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.234.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 8 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph.i.preheader, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.z = icmp ult i32 %4, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %4, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3, %.lr.ph.i.preheader.new
  %.sroa.7.0 = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.preheader.new ], [ %i.aj, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ] ; 5 uses
  %.sroa.0.0.copyload45.i = phi ptr [ %.sroa.033.0.copyload, %.lr.ph.i.preheader.new ], [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ]
  %i.aa = add i64 %.sroa.7.0, 1
  %i.ab = icmp ult i64 %.sroa.7.0, %.sroa.234.0.copyload
  br i1 %i.ab, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i, i64 1
  store i8 48, ptr %.sroa.0.0.copyload45.i, align 1, !tbaa !12, !noalias !518
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %.lr.ph.i
  %.sroa.0.0.copyload3.i = phi ptr [ %.sroa.0.0.copyload45.i, %.lr.ph.i ], [ %i.ac, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i ] ; 3 uses
  %i.ad = add i64 %.sroa.7.0, 2
  %i.ae = icmp ult i64 %i.aa, %.sroa.234.0.copyload
  br i1 %i.ae, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i, i64 1
  store i8 48, ptr %.sroa.0.0.copyload3.i, align 1, !tbaa !12, !noalias !518
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.0.0.copyload3.i.1 = phi ptr [ %.sroa.0.0.copyload3.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ], [ %i.af, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1 ] ; 3 uses
  %i.ag = add i64 %.sroa.7.0, 3
  %i.ah = icmp ult i64 %i.ad, %.sroa.234.0.copyload
  br i1 %i.ah, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.1, i64 1
  store i8 48, ptr %.sroa.0.0.copyload3.i.1, align 1, !tbaa !12, !noalias !518
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %.sroa.0.0.copyload3.i.2 = phi ptr [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ], [ %i.ai, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2 ] ; 3 uses
  %i.aj = add i64 %.sroa.7.0, 4                   ; 2 uses
  %i.ak = icmp ult i64 %i.ag, %.sroa.234.0.copyload
  br i1 %i.ak, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.2, i64 1
  store i8 48, ptr %.sroa.0.0.copyload3.i.2, align 1, !tbaa !12, !noalias !518
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %.sroa.0.0.copyload3.i.3 = phi ptr [ %.sroa.0.0.copyload3.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2 ], [ %i.al, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3 ] ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.7.0.epil.init = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.preheader ], [ %i.aj, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa ]
  %.sroa.0.0.copyload45.i.epil.init = phi ptr [ %.sroa.033.0.copyload, %.lr.ph.i.preheader ], [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.7.0.epil = phi i64 [ %i.am, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ], [ %.sroa.7.0.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.sroa.0.0.copyload45.i.epil = phi ptr [ %.sroa.0.0.copyload3.i.epil, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ], [ %.sroa.0.0.copyload45.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.am = add i64 %.sroa.7.0.epil, 1
  %i.an = icmp ult i64 %.sroa.7.0.epil, %.sroa.234.0.copyload
  br i1 %i.an, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil: ; preds = %.lr.ph.i.epil
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.epil, i64 1
  store i8 48, ptr %.sroa.0.0.copyload45.i.epil, align 1, !tbaa !12, !noalias !518
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, %.lr.ph.i.epil
  %.sroa.0.0.copyload3.i.epil = phi ptr [ %.sroa.0.0.copyload45.i.epil, %.lr.ph.i.epil ], [ %i.ao, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil ] ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !521

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa
  %.sroa.0.0.copyload3.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.copyload3.i.epil, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ]
  %i.ap = add nsw i32 %4, -1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add i64 %.sroa.3.0.copyload, %i.aq
  %i.as = add i64 %i.ar, 1
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit: ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit, %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit
  %.sroa.7.1 = phi i64 [ %.sroa.3.0.copyload, %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit ], [ %i.as, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit ]
  %.sroa.0.0.copyload4.lcssa.i = phi ptr [ %.sroa.033.0.copyload, %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmEET0_S8_T1_i.exit ], [ %.sroa.0.0.copyload3.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit ]
  store ptr %.sroa.0.0.copyload4.lcssa.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.234.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.x, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store i64 0, ptr %i.av, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %8, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !333
  store i64 500, ptr %i.au, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
end_hunk_0
begin_hunk_1_@_ZNK3fmt2v96detail14digit_groupingIcE5applyINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_SA_NS0_17basic_string_viewIT0_EE:bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !307   ; 2 uses
  %.not.i58 = icmp eq i8 %i.g, 0
  br i1 %.not.i58, label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.j = phi i8 [ %i.g, %.lr.ph ], [ %i.ad, %bb.i ]
  %i.k = phi ptr [ %i.e, %.lr.ph ], [ %i.ae, %bb.i ] ; 3 uses
  %i.l = phi i64 [ 1, %.lr.ph ], [ %.pre-phi.i25, %bb.i ] ; 4 uses
  %.sroa.642.060 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.i ]
  %.sroa.041.059 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.041.1, %bb.i ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !37
  %i.n = load i64, ptr %i.i, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  %i.p = icmp eq ptr %.sroa.041.059, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.o, i64 -1
  %.sink.i.pre = load i8, ptr %i.q, align 1, !tbaa !12
  br label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr %.sroa.041.059, align 1, !tbaa !12 ; 2 uses
  %i.s = add i8 %i.r, -127
  %or.cond.i = icmp ult i8 %i.s, -126
  br i1 %or.cond.i, label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.041.059, i64 1
  br label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit

_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit: ; preds = %bb.c, %bb.e
  %.sink.i = phi i8 [ %.sink.i.pre, %bb.c ], [ %i.r, %bb.e ]
  %.sroa.041.1 = phi ptr [ %.sroa.041.059, %bb.c ], [ %i.t, %bb.e ]
  %i.u = sext i8 %.sink.i to i32
  %i.v = add nsw i32 %.sroa.642.060, %i.u         ; 4 uses
  %.not = icmp ne i32 %i.v, 0
  %.not21 = icmp slt i32 %i.v, %i.a
  %or.cond = and i1 %.not, %.not21
  br i1 %or.cond, label %bb.g, label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit

bb.f:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !339  ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.x, %i.e
  br i1 %.not.i.i31, label %_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEED2Ev.exit32, label %bb.n

bb.g:                                             ; preds = %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.y = add i64 %i.l, 1                          ; 3 uses
  %i.z = load i64, ptr %i.c, align 8, !tbaa !341
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %5, align 8, !tbaa !44
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.y)
          to label %.noexc28 unwind label %bb.f, !inline_history !343

.noexc28:                                         ; preds = %bb.h
  %.pre.i26 = load i64, ptr %i.d, align 8, !tbaa !342 ; 2 uses
  %.pre2.i27 = add i64 %.pre.i26, 1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !339
  %.pre72 = load i8, ptr %i.f, align 8, !tbaa !307
  br label %bb.i

bb.i:                                             ; preds = %.noexc28, %bb.g
  %i.ad = phi i8 [ %i.j, %bb.g ], [ %.pre72, %.noexc28 ] ; 2 uses
  %i.ae = phi ptr [ %i.k, %bb.g ], [ %.pre, %.noexc28 ] ; 3 uses
  %.pre-phi.i25 = phi i64 [ %i.y, %bb.g ], [ %.pre2.i27, %.noexc28 ] ; 3 uses
  %i.af = phi i64 [ %i.l, %bb.g ], [ %.pre.i26, %.noexc28 ]
  store i64 %.pre-phi.i25, ptr %i.d, align 8, !tbaa !342
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !60
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, label %bb.b

_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit: ; preds = %bb.i, %bb.d, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit
  %i.ah = phi ptr [ %i.ae, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.ai = phi i64 [ %.pre-phi.i25, %bb.i ], [ %i.l, %bb.d ], [ %i.l, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit ]
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = add i32 %i.aj, -1
  br label %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread

_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread: ; preds = %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit, %bb.a
  %i.al = phi ptr [ %i.ah, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ %i.e, %bb.a ]
  %i.am = phi i32 [ %i.ak, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread.loopexit ], [ 0, %bb.a ]
  %.promoted = load ptr, ptr %2, align 8          ; 2 uses
  %i.an = icmp sgt i32 %i.a, 0
  br i1 %i.an, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %wide.trip.count = and i64 %4, 2147483647
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %.cont
  %.pre77 = load ptr, ptr %i.b, align 8, !tbaa !339
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread
  %i.ao = phi ptr [ %i.al, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread ], [ %.pre77, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.033.0.copyload65.lcssa = phi ptr [ %.promoted, %_ZNK3fmt2v96detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.thread ], [ %.sroa.033.0.copyload62, %._crit_edge.loopexit ]
  store ptr %.sroa.033.0.copyload65.lcssa, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.not.i.i = icmp eq ptr %i.ao, %i.e
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !341
  %i.aq = shl i64 %i.ap, 2
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.aq) #35
  br label %_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEED2Ev.exit: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.k:                                             ; preds = %.lr.ph69, %.cont
  %indvars.iv = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next, %.cont ] ; 3 uses
  %.068 = phi i32 [ %i.am, %.lr.ph69 ], [ %.1, %.cont ] ; 3 uses
  %.sroa.033.0.copyload6566 = phi ptr [ %.promoted, %.lr.ph69 ], [ %.sroa.033.0.copyload62, %.cont ] ; 4 uses
  %i.ar = sub i64 %4, %indvars.iv
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !339
  %i.at = sext i32 %.068 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60
  %i.aw = trunc i64 %i.ar to i32
  %i.ax = icmp eq i32 %i.av, %i.aw
  %.sroa.5.0.copyload.pre73 = load i64, ptr %.sroa.534.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0.copyload.pre75 = load i64, ptr %.sroa.635.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = load i8, ptr %i.f, align 8, !tbaa !307
  %i.az = add i64 %.sroa.6.0.copyload.pre75, 1    ; 2 uses
  store i64 %i.az, ptr %.sroa.635.0..sroa_idx, align 8, !tbaa !471, !noalias !522
  %i.ba = icmp ult i64 %.sroa.6.0.copyload.pre75, %.sroa.5.0.copyload.pre73
  br i1 %i.ba, label %.then39, label %.cont38

.then39:                                          ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload6566, i64 1
  store i8 %i.ay, ptr %.sroa.033.0.copyload6566, align 1, !tbaa !12
  %.sroa.5.0.copyload.pre.pre = load i64, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.6.0.copyload.pre.pre = load i64, ptr %.sroa.635.0..sroa_idx, align 8
  br label %.cont38

.cont38:                                          ; preds = %bb.l, %.then39
  %.sroa.6.0.copyload.pre = phi i64 [ %i.az, %bb.l ], [ %.sroa.6.0.copyload.pre.pre, %.then39 ]
  %.sroa.5.0.copyload.pre = phi i64 [ %.sroa.5.0.copyload.pre73, %bb.l ], [ %.sroa.5.0.copyload.pre.pre, %.then39 ]
  %.sroa.033.0.copyload64 = phi ptr [ %.sroa.033.0.copyload6566, %bb.l ], [ %i.bb, %.then39 ]
  %i.bc = add nsw i32 %.068, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %.cont38
  %.sroa.6.0.copyload = phi i64 [ %.sroa.6.0.copyload.pre, %.cont38 ], [ %.sroa.6.0.copyload.pre75, %bb.k ] ; 2 uses
  %.sroa.5.0.copyload = phi i64 [ %.sroa.5.0.copyload.pre, %.cont38 ], [ %.sroa.5.0.copyload.pre73, %bb.k ]
  %.sroa.033.0.copyload63 = phi ptr [ %.sroa.033.0.copyload64, %.cont38 ], [ %.sroa.033.0.copyload6566, %bb.k ] ; 3 uses
  %.1 = phi i32 [ %i.bc, %.cont38 ], [ %.068, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12
  %i.bf = add i64 %.sroa.6.0.copyload, 1
  store i64 %i.bf, ptr %.sroa.635.0..sroa_idx, align 8, !tbaa !471, !noalias !525
  %i.bg = icmp ult i64 %.sroa.6.0.copyload, %.sroa.5.0.copyload
  br i1 %i.bg, label %.then, label %.cont

.then:                                            ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.033.0.copyload63, i64 1
  store i8 %i.be, ptr %.sroa.033.0.copyload63, align 1, !tbaa !12
  br label %.cont

.cont:                                            ; preds = %bb.m, %.then
  %.sroa.033.0.copyload62 = phi ptr [ %.sroa.033.0.copyload63, %bb.m ], [ %i.bh, %.then ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !528

bb.n:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !341
  %i.bj = shl i64 %i.bi, 2
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.bj) #35
  br label %_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEED2Ev.exit32

_ZN3fmt2v919basic_memory_bufferIiLm500ESaIiEED2Ev.exit32: ; preds = %bb.f, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E1_EESH_SH_SO_mmOT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(64) %5) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.13 = alloca [7 x i8], align 1            ; 3 uses
  %6 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 11 uses
  %8 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %10 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %11 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !286
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %4) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %.sroa.027.0.copyload, ptr %9, align 8
  %.sroa.10.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx34, align 8
  %.sroa.11.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx46, align 8
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx58, align 8
  %.sroa.13.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %9, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx70, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %8, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %9, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.027.0.copyload32 = load ptr, ptr %8, align 8
  %.sroa.10.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.10.0.copyload43 = load i64, ptr %.sroa.10.0..sroa_idx42, align 8
  %.sroa.11.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload55 = load i64, ptr %.sroa.11.0..sroa_idx54, align 8
  %.sroa.12.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.12.0.copyload67 = load i8, ptr %.sroa.12.0..sroa_idx66, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload, %bb.a ], [ %.sroa.12.0.copyload67, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.a ], [ %.sroa.11.0.copyload55, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.0.copyload43, %bb.b ] ; 2 uses
  %.sroa.027.0 = phi ptr [ %.sroa.027.0.copyload, %bb.a ], [ %.sroa.027.0.copyload32, %bb.b ] ; 3 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  store ptr %.sroa.027.0, ptr %7, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.10.0, ptr %.sroa.277.0..sroa_idx, align 8
  %.sroa.378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 %.sroa.11.0, ptr %.sroa.378.0..sroa_idx, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 %.sroa.12.0, ptr %.sroa.479.0..sroa_idx, align 8
  %i.o = load ptr, ptr %5, align 8, !tbaa !529, !noalias !531, !nonnull !28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !297, !noalias !531 ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.35, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12, !noalias !531
  %i.t = add i64 %.sroa.11.0, 1
  store i64 %i.t, ptr %.sroa.378.0..sroa_idx, align 8, !tbaa !471, !noalias !534
  %i.u = icmp ult i64 %.sroa.11.0, %.sroa.10.0
  br i1 %i.u, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 1
  store ptr %i.v, ptr %7, align 8, !tbaa !56, !noalias !534
  store i8 %i.s, ptr %.sroa.027.0, align 1, !tbaa !12, !noalias !531
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !531
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !537, !noalias !531, !nonnull !28, !align !47
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13, !noalias !531
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !538, !noalias !531, !nonnull !28, !align !327
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60, !noalias !531
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !539, !noalias !531, !nonnull !28, !align !327
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !60, !noalias !531
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !540, !noalias !531, !nonnull !28
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12, !noalias !531
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !541, !noalias !531, !nonnull !28, !align !47
  call void @_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcmNS1_14digit_groupingIcEEEET_SA_T1_iiT0_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %6, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7, i64 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ae, i8 noundef signext %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.aj), !noalias !531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !noalias !531
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !531
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !542, !noalias !531, !nonnull !28, !align !327
  %i.am = load i32, ptr %i.al, align 4, !tbaa !60, !noalias !531 ; 6 uses
  %i.an = icmp sgt i32 %i.am, 0
  %.sroa.010.0.copyload.i = load ptr, ptr %7, align 8 ; 3 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.277.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.378.0..sroa_idx, align 8 ; 4 uses
  %i.ao = load i64, ptr %.sroa.479.0..sroa_idx, align 8
  br i1 %i.an, label %.lr.ph.i.i, label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit

.lr.ph.i.i:                                       ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !543, !noalias !531, !nonnull !28 ; 3 uses
  %xtraiter = and i32 %i.am, 1
  %i.ar = icmp eq i32 %i.am, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.am, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1, %.lr.ph.i.i.new
  %.sroa.76.0.i = phi i64 [ %.sroa.3.0.copyload.i, %.lr.ph.i.i.new ], [ %i.aw, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i.i = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i.new ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ]
  %i.as = add i64 %.sroa.76.0.i, 1
  %i.at = icmp ult i64 %.sroa.76.0.i, %.sroa.2.0.copyload.i
  br i1 %i.at, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i: ; preds = %bb.e
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !544
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i, i64 1
  store i8 %i.au, ptr %.sroa.0.0.copyload45.i.i, align 1, !tbaa !12, !noalias !544
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, %bb.e
  %.sroa.0.0.copyload3.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.e ], [ %i.av, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i ] ; 3 uses
  %i.aw = add i64 %.sroa.76.0.i, 2                ; 2 uses
  %i.ax = icmp ult i64 %i.as, %.sroa.2.0.copyload.i
  br i1 %i.ax, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !544
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  store i8 %i.ay, ptr %.sroa.0.0.copyload3.i.i, align 1, !tbaa !12, !noalias !544
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %.sroa.0.0.copyload3.i.i.1 = phi ptr [ %.sroa.0.0.copyload3.i.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i ], [ %i.az, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, label %bb.e, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.76.0.i.epil.init = phi i64 [ %.sroa.3.0.copyload.i, %.lr.ph.i.i ], [ %i.aw, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ]
  %.sroa.0.0.copyload45.i.i.epil.init = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod90 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod90)
  %i.ba = icmp ult i64 %.sroa.76.0.i.epil.init, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil: ; preds = %.epil.preheader
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !544
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i.epil.init, i64 1
  store i8 %i.bb, ptr %.sroa.0.0.copyload45.i.i.epil.init, align 1, !tbaa !12, !noalias !544
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i: ; preds = %.epil.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa
  %.sroa.0.0.copyload3.i.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ], [ %.sroa.0.0.copyload45.i.i.epil.init, %.epil.preheader ], [ %i.bc, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil ]
  %i.bd = zext nneg i32 %i.am to i64
  %i.be = add i64 %.sroa.3.0.copyload.i, %i.bd
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit

_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i
  %.sroa.6.0 = phi i64 [ %i.be, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %.sroa.3.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload3.i.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %.sroa.010.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.7.0.extract.trunc = trunc i64 %i.ao to i8 ; 2 uses
  %.not20 = icmp eq i64 %i.c, %i.l
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %.sroa.0.0, ptr %11, align 8
  %.sroa.10.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.10.0..sroa_idx38, align 8
  %.sroa.11.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.11.0..sroa_idx50, align 8
  %.sroa.12.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.12.0..sroa_idx62, align 8
  %.sroa.13.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %11, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx72, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %10, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %11, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.027.0.copyload33 = load ptr, ptr %10, align 8
  %.sroa.10.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.10.0.copyload45 = load i64, ptr %.sroa.10.0..sroa_idx44, align 8
  %.sroa.11.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.11.0.copyload57 = load i64, ptr %.sroa.11.0..sroa_idx56, align 8
  %.sroa.12.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.12.0.copyload69 = load i8, ptr %.sroa.12.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit
  %.sroa.12.1 = phi i8 [ %.sroa.7.0.extract.trunc, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.12.0.copyload69, %bb.f ]
  %.sroa.11.1 = phi i64 [ %.sroa.6.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.11.0.copyload57, %bb.f ]
  %.sroa.10.1 = phi i64 [ %.sroa.2.0.copyload.i, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.10.0.copyload45, %bb.f ]
  %.sroa.027.1 = phi ptr [ %.sroa.0.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIdEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.027.0.copyload33, %bb.f ]
  store ptr %.sroa.027.1, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcmNS1_14digit_groupingIcEEEET_SA_T1_iiT0_RKT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef signext %5, ptr noundef nonnull align 8 dereferenceable(40) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 4 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v9::basic_memory_buffer", align 8 ; 9 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !307
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !547
  %.not.i.i = icmp eq i8 %5, 0
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e     ; 5 uses
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %2, 99
  br i1 %i.g, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.021.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %2, %bb.c ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.i = urem i64 %.021.i.i.i, 100
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.j
  %i.l = load i16, ptr %i.k, align 1, !noalias !547
  store i16 %i.l, ptr %i.h, align 1, !noalias !547
  %i.m = udiv i64 %.021.i.i.i, 100                ; 2 uses
  %i.n = icmp ugt i64 %.021.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !320

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.019.lcssa.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %2, %bb.c ], [ %i.m, %.lr.ph.i.i.i ] ; 3 uses
  %i.o = icmp samesign ult i64 %.0.lcssa.i.i.i, 10
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.p = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !12, !noalias !547
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.t = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1, !noalias !547
  store i16 %i.v, ptr %i.s, align 1, !noalias !547
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.f, i64 1        ; 4 uses
  %i.x = sub nsw i32 %3, %4                       ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.z = lshr i32 %i.x, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.030.lcssa.i.i = phi i64 [ %2, %bb.f ], [ %i.ag, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.w, %bb.f ], [ %i.ab, %.lr.ph.i.i ] ; 2 uses
  %i.aa = and i32 %i.x, 1
  %.not33.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not33.i.i, label %bb.h, label %bb.g

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02849.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.w, %.lr.ph.preheader.i.i ]
  %.02948.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %i.z, %.lr.ph.preheader.i.i ] ; 2 uses
  %.03047.i.i = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %2, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.02849.i.i, i64 -2 ; 3 uses
  %i.ac = urem i64 %.03047.i.i, 100
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 1, !noalias !547
  store i16 %i.af, ptr %i.ab, align 1, !noalias !547
  %i.ag = udiv i64 %.03047.i.i, 100               ; 2 uses
  %i.ah = add nsw i32 %.02948.i.i, -1
  %i.ai = icmp samesign ugt i32 %.02948.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !321

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aj = urem i64 %.030.lcssa.i.i, 10
  %i.ak = trunc nuw nsw i64 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !12, !noalias !547
  %i.an = udiv i64 %.030.lcssa.i.i, 10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.131.i.i = phi i64 [ %i.an, %bb.g ], [ %.030.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.am, %bb.g ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %i.ao = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 3 uses
  store i8 %5, ptr %i.ao, align 1, !tbaa !12, !noalias !547
  %i.ap = icmp ugt i64 %.131.i.i, 99
  br i1 %i.ap, label %.lr.ph.i40.i.i, label %._crit_edge.i34.i.i

.lr.ph.i40.i.i:                                   ; preds = %bb.h, %.lr.ph.i40.i.i
  %.021.i41.i.i = phi i64 [ %i.av, %.lr.ph.i40.i.i ], [ %.131.i.i, %bb.h ] ; 3 uses
  %.01920.i42.i.i = phi ptr [ %i.aq, %.lr.ph.i40.i.i ], [ %i.ao, %bb.h ]
  %i.aq = getelementptr inbounds i8, ptr %.01920.i42.i.i, i64 -2 ; 3 uses
  %i.ar = urem i64 %.021.i41.i.i, 100
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.as
  %i.au = load i16, ptr %i.at, align 1, !noalias !547
  store i16 %i.au, ptr %i.aq, align 1, !noalias !547
  %i.av = udiv i64 %.021.i41.i.i, 100             ; 2 uses
  %i.aw = icmp ugt i64 %.021.i41.i.i, 9999
  br i1 %i.aw, label %.lr.ph.i40.i.i, label %._crit_edge.i34.i.i, !llvm.loop !320

._crit_edge.i34.i.i:                              ; preds = %.lr.ph.i40.i.i, %bb.h
  %.019.lcssa.i35.i.i = phi ptr [ %i.ao, %bb.h ], [ %i.aq, %.lr.ph.i40.i.i ] ; 2 uses
  %.0.lcssa.i36.i.i = phi i64 [ %.131.i.i, %bb.h ], [ %i.av, %.lr.ph.i40.i.i ] ; 3 uses
  %i.ax = icmp samesign ult i64 %.0.lcssa.i36.i.i, 10
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i34.i.i
  %i.ay = trunc nuw nsw i64 %.0.lcssa.i36.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  %i.ba = getelementptr inbounds i8, ptr %.019.lcssa.i35.i.i, i64 -1
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !12, !noalias !547
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

bb.j:                                             ; preds = %._crit_edge.i34.i.i
  %i.bb = getelementptr inbounds i8, ptr %.019.lcssa.i35.i.i, i64 -2
  %i.bc = shl nuw nsw i64 %.0.lcssa.i36.i.i, 1
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 1, !noalias !547
  store i16 %i.be, ptr %i.bb, align 1, !noalias !547
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit: ; preds = %bb.d, %bb.e, %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.w, %bb.i ], [ %i.w, %bb.j ]
  call void @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_(ptr dead_on_unwind writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef nonnull %i.b, ptr noundef %.0.i.i, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !547
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.bh, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %8, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !333
  store i64 500, ptr %i.bg, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.not.i.i15 = icmp eq i8 %5, 0
  %i.bj = sext i32 %3 to i64
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bj   ; 5 uses
  br i1 %.not.i.i15, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp ugt i64 %2, 99
  br i1 %i.bl, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i34

.lr.ph.i.i.i37:                                   ; preds = %bb.l, %.lr.ph.i.i.i37
  %.021.i.i.i38 = phi i64 [ %i.br, %.lr.ph.i.i.i37 ], [ %2, %bb.l ] ; 3 uses
  %.01920.i.i.i39 = phi ptr [ %i.bm, %.lr.ph.i.i.i37 ], [ %i.bk, %bb.l ]
  %i.bm = getelementptr inbounds i8, ptr %.01920.i.i.i39, i64 -2 ; 3 uses
  %i.bn = urem i64 %.021.i.i.i38, 100
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 1
  store i16 %i.bq, ptr %i.bm, align 1
  %i.br = udiv i64 %.021.i.i.i38, 100             ; 2 uses
  %i.bs = icmp ugt i64 %.021.i.i.i38, 9999
  br i1 %i.bs, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i34, !llvm.loop !320

._crit_edge.i.i.i34:                              ; preds = %.lr.ph.i.i.i37, %bb.l
  %.019.lcssa.i.i.i35 = phi ptr [ %i.bk, %bb.l ], [ %i.bm, %.lr.ph.i.i.i37 ] ; 2 uses
  %.0.lcssa.i.i.i36 = phi i64 [ %2, %bb.l ], [ %i.br, %.lr.ph.i.i.i37 ] ; 3 uses
  %i.bt = icmp samesign ult i64 %.0.lcssa.i.i.i36, 10
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i34
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i.i36 to i8
  %i.bv = or disjoint i8 %i.bu, 48
  %i.bw = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i35, i64 -1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !12
  br label %_ZN3fmt2v96detail17write_significandIcmTnNSt9enable_ifIXsr3std11is_integralIT0_EE5valueEiE4typeELi0EEEPT_S8_S4_iiS7_.exit.i

bb.n:                                             ; preds = %._crit_edge.i.i.i34
end_hunk_1
begin_hunk_2_@_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E_clES7_:bb.a
  %i.bz = icmp eq i32 %i.bv, 1
  br i1 %i.bz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.bv, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1, %.lr.ph.i.new
  %.sroa.714.0 = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.new ], [ %i.ce, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i = phi ptr [ %.sroa.0.0.copyload.pre, %.lr.ph.i.new ], [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ]
  %i.ca = add i64 %.sroa.714.0, 1
  %i.cb = icmp ult i64 %.sroa.714.0, %.sroa.2.0.copyload
  br i1 %i.cb, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.k
  %i.cc = load i8, ptr %i.by, align 4, !tbaa !12, !noalias !642
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i, i64 1
  store i8 %i.cc, ptr %.sroa.0.0.copyload45.i, align 1, !tbaa !12, !noalias !642
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.k
  %.sroa.0.0.copyload3.i = phi ptr [ %.sroa.0.0.copyload45.i, %bb.k ], [ %i.cd, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i ] ; 3 uses
  %i.ce = add i64 %.sroa.714.0, 2                 ; 2 uses
  %i.cf = icmp ult i64 %i.ca, %.sroa.2.0.copyload
  br i1 %i.cf, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.cg = load i8, ptr %i.by, align 4, !tbaa !12, !noalias !642
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i, i64 1
  store i8 %i.cg, ptr %.sroa.0.0.copyload3.i, align 1, !tbaa !12, !noalias !642
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.0.0.copyload3.i.1 = phi ptr [ %.sroa.0.0.copyload3.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ], [ %i.ch, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa, label %bb.k, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa, %.lr.ph.i
  %.sroa.714.0.epil.init = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i ], [ %i.ce, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa ]
  %.sroa.0.0.copyload45.i.epil.init = phi ptr [ %.sroa.0.0.copyload.pre, %.lr.ph.i ], [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa ] ; 3 uses
  %lcmp.mod73 = trunc i32 %i.bv to i1
  call void @llvm.assume(i1 %lcmp.mod73)
  %i.ci = icmp ult i64 %.sroa.714.0.epil.init, %.sroa.2.0.copyload
  br i1 %i.ci, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil: ; preds = %.epil.preheader
  %i.cj = load i8, ptr %i.by, align 4, !tbaa !12, !noalias !642
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.epil.init, i64 1
  store i8 %i.cj, ptr %.sroa.0.0.copyload45.i.epil.init, align 1, !tbaa !12, !noalias !642
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit: ; preds = %.epil.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa
  %.sroa.0.0.copyload3.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.unr-lcssa ], [ %.sroa.0.0.copyload45.i.epil.init, %.epil.preheader ], [ %i.ck, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil ]
  %i.cl = add nsw i32 %i.bv, -1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = add i64 %.sroa.3.0.copyload, %i.cm
  %i.co = add i64 %i.cn, 1
  %.sroa.623.sroa.0.0.extract.trunc = trunc i64 %i.bx to i8
  store i8 %.sroa.623.sroa.0.0.extract.trunc, ptr %.sroa.419.0..sroa_idx, align 8
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge

_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge: ; preds = %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit
  %.sroa.5.0.copyload = phi i64 [ %i.co, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit ], [ %.sroa.3.0.copyload, %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit ] ; 4 uses
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload3.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit ], [ %.sroa.0.0.copyload.pre, %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit ] ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = add i64 %.sroa.5.0.copyload, 1
  %i.cq = icmp ult i64 %.sroa.5.0.copyload, %.sroa.2.0.copyload
  br i1 %i.cq, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then: ; preds = %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !622
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  store ptr %i.ct, ptr %2, align 8, !tbaa !56, !noalias !645
  store i8 %i.cs, ptr %.sroa.0.0.copyload, align 1, !tbaa !12
  %.sroa.031.0.copyload.pre = load ptr, ptr %2, align 8
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont: ; preds = %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then
  %.sroa.031.0.copyload = phi ptr [ %.sroa.0.0.copyload, %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit._crit_edge ], [ %.sroa.031.0.copyload.pre, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.then ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !623 ; 4 uses
  %i.cw = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cx = icmp slt i32 %i.cv, 0
  %i.cy = add i64 %.sroa.5.0.copyload, 2          ; 3 uses
  %i.cz = icmp ult i64 %i.cp, %.sroa.2.0.copyload ; 2 uses
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont
  br i1 %i.cz, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3: ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 1
  store i8 45, ptr %.sroa.031.0.copyload, align 1, !tbaa !12, !noalias !648
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3, %bb.l
  %.sroa.024.5 = phi ptr [ %i.da, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i3 ], [ %.sroa.031.0.copyload, %bb.l ]
  %i.db = sub nsw i32 0, %i.cv
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i

bb.m:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit1.cont
  br i1 %i.cz, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i: ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 1
  store i8 43, ptr %.sroa.031.0.copyload, align 1, !tbaa !12, !noalias !648
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i, %bb.m, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2
  %.sroa.024.0 = phi ptr [ %.sroa.024.5, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2 ], [ %i.dc, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i ], [ %.sroa.031.0.copyload, %bb.m ] ; 5 uses
  %.0.i = phi i32 [ %i.db, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i2 ], [ %i.cv, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.then.i ], [ %i.cv, %bb.m ] ; 5 uses
  %i.dd = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.dd, label %bb.n, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

bb.n:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i
  %i.de = udiv i32 %.0.i, 100
  %i.df = urem i32 %.0.i, 100                     ; 2 uses
  %i.dg = shl nuw nsw i32 %i.de, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.dh ; 2 uses
  %i.dj = icmp samesign ugt i32 %.0.i, 999
  br i1 %i.dj, label %bb.o, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

bb.o:                                             ; preds = %bb.n
  %i.dk = add i64 %.sroa.5.0.copyload, 3          ; 2 uses
  %i.dl = icmp ult i64 %i.cy, %.sroa.2.0.copyload
  br i1 %i.dl, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i: ; preds = %bb.o
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !12, !noalias !648
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 1
  store i8 %i.dm, ptr %.sroa.024.0, align 1, !tbaa !12, !noalias !648
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i, %bb.o, %bb.n
  %.sroa.526.0.copyload.i = phi i64 [ %i.dk, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i ], [ %i.dk, %bb.o ], [ %i.cy, %bb.n ] ; 2 uses
  %.sroa.024.0.copyload.i = phi ptr [ %i.dn, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.then.i ], [ %.sroa.024.0, %bb.o ], [ %.sroa.024.0, %bb.n ] ; 3 uses
  %i.do = add i64 %.sroa.526.0.copyload.i, 1      ; 2 uses
  %i.dp = icmp ult i64 %.sroa.526.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.dp, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !12, !noalias !648
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.024.0.copyload.i, i64 1
  store i8 %i.dr, ptr %.sroa.024.0.copyload.i, align 1, !tbaa !12, !noalias !648
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i
  %.sroa.521.0.copyload.i = phi i64 [ %i.cy, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.do, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %i.do, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ] ; 3 uses
  %.sroa.019.0.copyload.i = phi ptr [ %.sroa.024.0, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.ds, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %.sroa.024.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ] ; 3 uses
  %.1.i = phi i32 [ %.0.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit14.cont.i ], [ %i.df, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.then.i ], [ %i.df, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit15.cont.i ]
  %i.dt = shl nuw nsw i32 %.1.i, 1
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.du ; 2 uses
  %i.dw = add i64 %.sroa.521.0.copyload.i, 1
  %i.dx = icmp ult i64 %.sroa.521.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.dx, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !12, !noalias !648
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.019.0.copyload.i, i64 1
  store i8 %i.dy, ptr %.sroa.019.0.copyload.i, align 1, !tbaa !12, !noalias !648
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i
  %.sroa.024.2 = phi ptr [ %i.dz, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.then.i ], [ %.sroa.019.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit16.cont.i ] ; 3 uses
  %i.ea = icmp ult i64 %i.dw, %.sroa.2.0.copyload
  br i1 %i.ea, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i, label %_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !12, !noalias !648
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.024.2, i64 1
  store i8 %i.ec, ptr %.sroa.024.2, align 1, !tbaa !12, !noalias !648
  br label %_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit

_ZN3fmt2v96detail14write_exponentIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEEET0_iS8_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i
  %.sroa.024.6 = phi ptr [ %i.ed, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit18.then.i ], [ %.sroa.024.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit17.cont.i ]
  %i.ee = add i64 %.sroa.521.0.copyload.i, 2
  store ptr %.sroa.024.6, ptr %0, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ee, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cw, ptr %.sroa.23.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E0_EESH_SH_SO_mmOT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.13 = alloca [7 x i8], align 1            ; 3 uses
  %6 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 11 uses
  %8 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %10 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %11 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !286
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %4) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %.sroa.034.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %.sroa.034.0.copyload, ptr %9, align 8
  %.sroa.10.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx41, align 8
  %.sroa.11.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx53, align 8
  %.sroa.12.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx65, align 8
  %.sroa.13.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %9, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx77, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %8, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %9, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.034.0.copyload39 = load ptr, ptr %8, align 8
  %.sroa.10.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.10.0.copyload50 = load i64, ptr %.sroa.10.0..sroa_idx49, align 8
  %.sroa.11.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload62 = load i64, ptr %.sroa.11.0..sroa_idx61, align 8
  %.sroa.12.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.12.0.copyload74 = load i8, ptr %.sroa.12.0..sroa_idx73, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload, %bb.a ], [ %.sroa.12.0.copyload74, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.a ], [ %.sroa.11.0.copyload62, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.0.copyload50, %bb.b ] ; 2 uses
  %.sroa.034.0 = phi ptr [ %.sroa.034.0.copyload, %bb.a ], [ %.sroa.034.0.copyload39, %bb.b ] ; 3 uses
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.586.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  store ptr %.sroa.034.0, ptr %7, align 8
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.10.0, ptr %.sroa.283.0..sroa_idx, align 8
  %.sroa.384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 %.sroa.11.0, ptr %.sroa.384.0..sroa_idx, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i8 %.sroa.12.0, ptr %.sroa.485.0..sroa_idx, align 8
  %i.o = load ptr, ptr %5, align 8, !tbaa !651, !noalias !653, !nonnull !28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !297, !noalias !653 ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.35, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12, !noalias !653
  %i.t = add i64 %.sroa.11.0, 1
  store i64 %i.t, ptr %.sroa.384.0..sroa_idx, align 8, !tbaa !471, !noalias !656
  %i.u = icmp ult i64 %.sroa.11.0, %.sroa.10.0
  br i1 %i.u, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 1
  store ptr %i.v, ptr %7, align 8, !tbaa !56, !noalias !656
  store i8 %i.s, ptr %.sroa.034.0, align 1, !tbaa !12, !noalias !653
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !653
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !659, !noalias !653, !nonnull !28, !align !327
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60, !noalias !653
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !660, !noalias !653, !nonnull !28, !align !327
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60, !noalias !653
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !661, !noalias !653, !nonnull !28, !align !327
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !578, !noalias !653
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !662, !noalias !653, !nonnull !28, !align !47
  call void @_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %6, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.ah), !noalias !653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !653
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !663, !noalias !653, !nonnull !28, !align !327
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !noalias !653
  %i.am = and i32 %i.al, 524288
  %.not1.i = icmp eq i32 %i.am, 0
  %.sroa.0.0.copyload21 = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.6.0.copyload24 = load i64, ptr %.sroa.283.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0.copyload28 = load i64, ptr %.sroa.384.0..sroa_idx, align 8 ; 4 uses
  br i1 %.not1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.8.0.copyload32 = load i64, ptr %.sroa.485.0..sroa_idx, align 8
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

bb.f:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.an = add i64 %.sroa.7.0.copyload28, 1        ; 3 uses
  %i.ao = icmp ult i64 %.sroa.7.0.copyload28, %.sroa.6.0.copyload24
  br i1 %i.ao, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i: ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !664, !noalias !653, !nonnull !28
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !653
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload21, i64 1
  store i8 %i.ar, ptr %.sroa.0.0.copyload21, align 1, !tbaa !12, !noalias !653
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i, %bb.f
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload21, %bb.f ], [ %i.as, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.then.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !665, !noalias !653, !nonnull !28, !align !327
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60, !noalias !653 ; 6 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = load i64, ptr %.sroa.485.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

.lr.ph.i.i:                                       ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !666, !noalias !653, !nonnull !28 ; 3 uses
  %xtraiter = and i32 %i.av, 1
  %i.ba = icmp eq i32 %i.av, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.av, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1, %.lr.ph.i.i.new
  %.sroa.713.0.i = phi i64 [ %i.an, %.lr.ph.i.i.new ], [ %i.bf, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.new ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ]
  %i.bb = add i64 %.sroa.713.0.i, 1
  %i.bc = icmp ult i64 %.sroa.713.0.i, %.sroa.6.0.copyload24
  br i1 %i.bc, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i: ; preds = %bb.g
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !12, !noalias !667
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i, i64 1
  store i8 %i.bd, ptr %.sroa.0.0.copyload45.i.i, align 1, !tbaa !12, !noalias !667
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, %bb.g
  %.sroa.0.0.copyload3.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.g ], [ %i.be, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i ] ; 3 uses
  %i.bf = add i64 %.sroa.713.0.i, 2               ; 2 uses
  %i.bg = icmp ult i64 %i.bb, %.sroa.6.0.copyload24
  br i1 %i.bg, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !12, !noalias !667
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  store i8 %i.bh, ptr %.sroa.0.0.copyload3.i.i, align 1, !tbaa !12, !noalias !667
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %.sroa.0.0.copyload3.i.i.1 = phi ptr [ %.sroa.0.0.copyload3.i.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i ], [ %i.bi, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, label %bb.g, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.713.0.i.epil.init = phi i64 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ]
  %.sroa.0.0.copyload45.i.i.epil.init = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod96 = trunc i32 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod96)
  %i.bj = icmp ult i64 %.sroa.713.0.i.epil.init, %.sroa.6.0.copyload24
  br i1 %i.bj, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil: ; preds = %.epil.preheader
  %i.bk = load i8, ptr %i.az, align 1, !tbaa !12, !noalias !667
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i.epil.init, i64 1
  store i8 %i.bk, ptr %.sroa.0.0.copyload45.i.i.epil.init, align 1, !tbaa !12, !noalias !667
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i: ; preds = %.epil.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa
  %.sroa.0.0.copyload3.i.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ], [ %.sroa.0.0.copyload45.i.i.epil.init, %.epil.preheader ], [ %i.bl, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil ]
  %i.bm = add nsw i32 %i.av, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %.sroa.7.0.copyload28, 2
  %i.bp = add i64 %i.bo, %i.bn
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit

_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i, %bb.e, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload32, %bb.e ], [ %i.ax, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %i.ax, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i ]
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload28, %bb.e ], [ %i.bp, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %i.an, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload21, %bb.e ], [ %.sroa.0.0.copyload3.i.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %.sroa.0.0.copyload, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit2.cont.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0 to i8 ; 2 uses
  %.not20 = icmp eq i64 %i.c, %i.l
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %.sroa.0.0, ptr %11, align 8
  %.sroa.10.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.6.0.copyload24, ptr %.sroa.10.0..sroa_idx45, align 8
  %.sroa.11.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.11.0..sroa_idx57, align 8
  %.sroa.12.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 %.sroa.8.0.extract.trunc, ptr %.sroa.12.0..sroa_idx69, align 8
  %.sroa.13.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %11, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx79, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %10, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %11, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.034.0.copyload40 = load ptr, ptr %10, align 8
  %.sroa.10.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.10.0.copyload52 = load i64, ptr %.sroa.10.0..sroa_idx51, align 8
  %.sroa.11.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.11.0.copyload64 = load i64, ptr %.sroa.11.0..sroa_idx63, align 8
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.12.0.copyload76 = load i8, ptr %.sroa.12.0..sroa_idx75, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit
  %.sroa.12.1 = phi i8 [ %.sroa.8.0.extract.trunc, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.12.0.copyload76, %bb.h ]
  %.sroa.11.1 = phi i64 [ %.sroa.7.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.11.0.copyload64, %bb.h ]
  %.sroa.10.1 = phi i64 [ %.sroa.6.0.copyload24, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.10.0.copyload52, %bb.h ]
  %.sroa.034.1 = phi ptr [ %.sroa.0.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E0_clES7_.exit ], [ %.sroa.034.0.copyload40, %bb.h ]
  store ptr %.sroa.034.1, ptr %0, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.690.0..sroa_idx, align 8
  %.sroa.791.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.791.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjNS1_14digit_groupingIcEEEET0_SA_T1_iiRKT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(40) %5) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %6 = alloca %"struct.fmt::v9::detail::format_decimal_result.65", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v9::basic_memory_buffer", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !307
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !673
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 3 uses
  %i.g = icmp ugt i32 %2, 99
  br i1 %i.g, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.021.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ %2, %bb.b ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.i = urem i32 %.021.i.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.k
  %i.m = load i16, ptr %i.l, align 1, !noalias !673
  store i16 %i.m, ptr %i.h, align 1, !noalias !673
  %i.n = udiv i32 %.021.i.i.i, 100                ; 2 uses
  %i.o = icmp ugt i32 %.021.i.i.i, 9999
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !589

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.b
  %.019.lcssa.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.b ], [ %i.n, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = icmp samesign ult i32 %.0.lcssa.i.i.i, 10
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.q = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.r = or disjoint i8 %i.q, 48
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12, !noalias !673
  br label %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.u = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.v
  %i.x = load i16, ptr %i.w, align 1, !noalias !673
  store i16 %i.x, ptr %i.t, align 1, !noalias !673
  br label %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit

_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %1, i64 25, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %i.y, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(25) %7, i64 25, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.033.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.234.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 8 ; 6 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.aa = icmp sgt i32 %4, 0
  br i1 %i.aa, label %.lr.ph.i.preheader, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

.lr.ph.i.preheader:                               ; preds = %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit
  %xtraiter = and i32 %4, 3                       ; 3 uses
  %i.ab = icmp ult i32 %4, 4
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %4, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3, %.lr.ph.i.preheader.new
  %.sroa.7.0 = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.preheader.new ], [ %i.al, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ] ; 5 uses
  %.sroa.0.0.copyload45.i = phi ptr [ %.sroa.033.0.copyload, %.lr.ph.i.preheader.new ], [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3 ]
  %i.ac = add i64 %.sroa.7.0, 1
  %i.ad = icmp ult i64 %.sroa.7.0, %.sroa.234.0.copyload
  br i1 %i.ad, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i, i64 1
  store i8 48, ptr %.sroa.0.0.copyload45.i, align 1, !tbaa !12, !noalias !676
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %.lr.ph.i
  %.sroa.0.0.copyload3.i = phi ptr [ %.sroa.0.0.copyload45.i, %.lr.ph.i ], [ %i.ae, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i ] ; 3 uses
  %i.af = add i64 %.sroa.7.0, 2
  %i.ag = icmp ult i64 %i.ac, %.sroa.234.0.copyload
  br i1 %i.ag, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i, i64 1
  store i8 48, ptr %.sroa.0.0.copyload3.i, align 1, !tbaa !12, !noalias !676
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %.sroa.0.0.copyload3.i.1 = phi ptr [ %.sroa.0.0.copyload3.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ], [ %i.ah, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.1 ] ; 3 uses
  %i.ai = add i64 %.sroa.7.0, 3
  %i.aj = icmp ult i64 %i.af, %.sroa.234.0.copyload
  br i1 %i.aj, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.1, i64 1
  store i8 48, ptr %.sroa.0.0.copyload3.i.1, align 1, !tbaa !12, !noalias !676
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1
  %.sroa.0.0.copyload3.i.2 = phi ptr [ %.sroa.0.0.copyload3.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.1 ], [ %i.ak, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.2 ] ; 3 uses
  %i.al = add i64 %.sroa.7.0, 4                   ; 2 uses
  %i.am = icmp ult i64 %i.ai, %.sroa.234.0.copyload
  br i1 %i.am, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.2, i64 1
  store i8 48, ptr %.sroa.0.0.copyload3.i.2, align 1, !tbaa !12, !noalias !676
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2
  %.sroa.0.0.copyload3.i.3 = phi ptr [ %.sroa.0.0.copyload3.i.2, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.2 ], [ %i.an, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.3 ] ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.3
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.7.0.epil.init = phi i64 [ %.sroa.3.0.copyload, %.lr.ph.i.preheader ], [ %i.al, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa ]
  %.sroa.0.0.copyload45.i.epil.init = phi ptr [ %.sroa.033.0.copyload, %.lr.ph.i.preheader ], [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.7.0.epil = phi i64 [ %i.ao, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ], [ %.sroa.7.0.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.sroa.0.0.copyload45.i.epil = phi ptr [ %.sroa.0.0.copyload3.i.epil, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ], [ %.sroa.0.0.copyload45.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = add i64 %.sroa.7.0.epil, 1
  %i.ap = icmp ult i64 %.sroa.7.0.epil, %.sroa.234.0.copyload
  br i1 %i.ap, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil: ; preds = %.lr.ph.i.epil
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.epil, i64 1
  store i8 48, ptr %.sroa.0.0.copyload45.i.epil, align 1, !tbaa !12, !noalias !676
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil, %.lr.ph.i.epil
  %.sroa.0.0.copyload3.i.epil = phi ptr [ %.sroa.0.0.copyload45.i.epil, %.lr.ph.i.epil ], [ %i.aq, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.epil ] ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !679

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa
  %.sroa.0.0.copyload3.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.3, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.copyload3.i.epil, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.epil ]
  %i.ar = add nsw i32 %4, -1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %.sroa.3.0.copyload, %i.as
  %i.au = add i64 %i.at, 1
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit: ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit, %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit
  %.sroa.7.1 = phi i64 [ %.sroa.3.0.copyload, %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit ], [ %i.au, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit ]
  %.sroa.0.0.copyload4.lcssa.i = phi ptr [ %.sroa.033.0.copyload, %_ZN3fmt2v96detail17write_significandIcNS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjEET0_S8_T1_i.exit ], [ %.sroa.0.0.copyload3.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.loopexit ]
  store ptr %.sroa.0.0.copyload4.lcssa.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.234.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.z, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store i64 0, ptr %i.ax, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %8, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !333
  store i64 500, ptr %i.aw, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.az = sext i32 %3 to i64
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 %i.az ; 3 uses
  %i.bb = icmp ugt i32 %2, 99
  br i1 %i.bb, label %.lr.ph.i.i.i15, label %._crit_edge.i.i.i12

.lr.ph.i.i.i15:                                   ; preds = %bb.e, %.lr.ph.i.i.i15
  %.021.i.i.i16 = phi i32 [ %i.bi, %.lr.ph.i.i.i15 ], [ %2, %bb.e ] ; 3 uses
  %.01920.i.i.i17 = phi ptr [ %i.bc, %.lr.ph.i.i.i15 ], [ %i.ba, %bb.e ]
  %i.bc = getelementptr inbounds i8, ptr %.01920.i.i.i17, i64 -2 ; 3 uses
  %i.bd = urem i32 %.021.i.i.i16, 100
  %i.be = shl nuw nsw i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 1
  store i16 %i.bh, ptr %i.bc, align 1
  %i.bi = udiv i32 %.021.i.i.i16, 100             ; 2 uses
  %i.bj = icmp ugt i32 %.021.i.i.i16, 9999
  br i1 %i.bj, label %.lr.ph.i.i.i15, label %._crit_edge.i.i.i12, !llvm.loop !589

._crit_edge.i.i.i12:                              ; preds = %.lr.ph.i.i.i15, %bb.e
  %.019.lcssa.i.i.i13 = phi ptr [ %i.ba, %bb.e ], [ %i.bc, %.lr.ph.i.i.i15 ] ; 2 uses
  %.0.lcssa.i.i.i14 = phi i32 [ %2, %bb.e ], [ %i.bi, %.lr.ph.i.i.i15 ] ; 3 uses
  %i.bk = icmp samesign ult i32 %.0.lcssa.i.i.i14, 10
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i12
  %i.bl = trunc nuw nsw i32 %.0.lcssa.i.i.i14 to i8
  %i.bm = or disjoint i8 %i.bl, 48
  %i.bn = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i13, i64 -1
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !12
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i12
  %i.bo = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i13, i64 -2
  %i.bp = shl nuw nsw i32 %.0.lcssa.i.i.i14, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 1
  store i16 %i.bs, ptr %i.bo, align 1
  br label %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i

_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i: ; preds = %bb.g, %bb.f
  %i.bt = invoke ptr @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS0_8appenderEEET1_T0_S6_S5_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ba, ptr nonnull %8)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.bu = icmp sgt i32 %4, 0
  br i1 %i.bu, label %.lr.ph.i18, label %_ZN3fmt2v96detail6fill_nINS0_8appenderEicEET_S4_T0_RKT1_.exit

.lr.ph.i18:                                       ; preds = %bb.h, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i
  %.04.i = phi i32 [ %i.ce, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i ], [ 0, %bb.h ]
  %i.bv = load i64, ptr %i.ax, align 8, !tbaa !336 ; 2 uses
  %i.bw = add i64 %i.bv, 1                        ; 3 uses
  %i.bx = load i64, ptr %i.aw, align 8, !tbaa !335
  %i.by = icmp ugt i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.i, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i

bb.i:                                             ; preds = %.lr.ph.i18
  %i.bz = load ptr, ptr %8, align 8, !tbaa !44
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bw)
          to label %.noexc unwind label %bb.m, !inline_history !337

.noexc:                                           ; preds = %bb.i
  %.pre.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !336 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i: ; preds = %.noexc, %.lr.ph.i18
  %.pre-phi.i.i.i = phi i64 [ %i.bw, %.lr.ph.i18 ], [ %.pre2.i.i.i, %.noexc ]
  %i.cb = phi i64 [ %i.bv, %.lr.ph.i18 ], [ %.pre.i.i.i, %.noexc ]
  %i.cc = load ptr, ptr %i.av, align 8, !tbaa !333
  store i64 %.pre-phi.i.i.i, ptr %i.ax, align 8, !tbaa !336
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store i8 48, ptr %i.cd, align 1, !tbaa !12
  %i.ce = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i19 = icmp eq i32 %i.ce, %4
  br i1 %exitcond.not.i19, label %_ZN3fmt2v96detail6fill_nINS0_8appenderEicEET_S4_T0_RKT1_.exit, label %.lr.ph.i18, !llvm.loop !338

_ZN3fmt2v96detail6fill_nINS0_8appenderEicEET_S4_T0_RKT1_.exit: ; preds = %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSERKc.exit.i, %bb.h
  %i.cf = load ptr, ptr %i.av, align 8, !tbaa !333
  %i.cg = load i64, ptr %i.ax, align 8, !tbaa !336
  invoke void @_ZNK3fmt2v96detail14digit_groupingIcE5applyINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_SA_NS0_17basic_string_viewIT0_EE(ptr dead_on_unwind writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, ptr %i.cf, i64 %i.cg)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3fmt2v96detail6fill_nINS0_8appenderEicEET_S4_T0_RKT1_.exit
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !333 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ch, %i.ay
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = load i64, ptr %i.aw, align 8, !tbaa !335
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ci) #35
  br label %_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.p

bb.l:                                             ; preds = %_ZN3fmt2v96detail14format_decimalIcjNS0_8appenderETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEENS1_21format_decimal_resultIS7_EES7_T0_i.exit.i, %_ZN3fmt2v96detail6fill_nINS0_8appenderEicEET_S4_T0_RKT1_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.l ], [ %i.ck, %bb.m ]
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !333 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.cl, %i.ay
  br i1 %.not.i.i20, label %_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = load i64, ptr %i.aw, align 8, !tbaa !335
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cm) #35
  br label %_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit21

_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit21: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN3fmt2v919basic_memory_bufferIcLm500ESaIcEED2Ev.exit, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail12write_paddedILNS0_5align4typeE2ENS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcRZNS1_14do_write_floatIS9_NS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SG_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEEUlS9_E1_EESH_SH_SO_mmOT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(64) %5) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.13 = alloca [7 x i8], align 1            ; 3 uses
  %6 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 11 uses
  %8 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %10 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 7 uses
  %11 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !286
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %4) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.36, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 11 ; 2 uses
  %.sroa.027.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %.sroa.027.0.copyload, ptr %9, align 8
  %.sroa.10.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx34, align 8
  %.sroa.11.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx46, align 8
  %.sroa.12.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx58, align 8
  %.sroa.13.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %9, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx70, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %8, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %9, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.027.0.copyload32 = load ptr, ptr %8, align 8
  %.sroa.10.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.10.0.copyload43 = load i64, ptr %.sroa.10.0..sroa_idx42, align 8
  %.sroa.11.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload55 = load i64, ptr %.sroa.11.0..sroa_idx54, align 8
  %.sroa.12.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.12.0.copyload67 = load i8, ptr %.sroa.12.0..sroa_idx66, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.12.0 = phi i8 [ %.sroa.12.0.copyload, %bb.a ], [ %.sroa.12.0.copyload67, %bb.b ]
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.a ], [ %.sroa.11.0.copyload55, %bb.b ] ; 3 uses
  %.sroa.10.0 = phi i64 [ %.sroa.10.0.copyload, %bb.a ], [ %.sroa.10.0.copyload43, %bb.b ] ; 2 uses
  %.sroa.027.0 = phi ptr [ %.sroa.027.0.copyload, %bb.a ], [ %.sroa.027.0.copyload32, %bb.b ] ; 3 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.580.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx, i64 7, i1 false)
  store ptr %.sroa.027.0, ptr %7, align 8
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.sroa.10.0, ptr %.sroa.277.0..sroa_idx, align 8
  %.sroa.378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i64 %.sroa.11.0, ptr %.sroa.378.0..sroa_idx, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 %.sroa.12.0, ptr %.sroa.479.0..sroa_idx, align 8
  %i.o = load ptr, ptr %5, align 8, !tbaa !680, !noalias !682, !nonnull !28
  %i.p = load i8, ptr %i.o, align 1, !tbaa !297, !noalias !682 ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.35, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12, !noalias !682
  %i.t = add i64 %.sroa.11.0, 1
  store i64 %i.t, ptr %.sroa.378.0..sroa_idx, align 8, !tbaa !471, !noalias !685
  %i.u = icmp ult i64 %.sroa.11.0, %.sroa.10.0
  br i1 %i.u, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.027.0, i64 1
  store ptr %i.v, ptr %7, align 8, !tbaa !56, !noalias !685
  store i8 %i.s, ptr %.sroa.027.0, align 1, !tbaa !12, !noalias !682
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !682
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !688, !noalias !682, !nonnull !28, !align !327
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60, !noalias !682
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !689, !noalias !682, !nonnull !28, !align !327
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !60, !noalias !682
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !690, !noalias !682, !nonnull !28, !align !327
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !60, !noalias !682
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !691, !noalias !682, !nonnull !28
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12, !noalias !682
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !692, !noalias !682, !nonnull !28, !align !47
  call void @_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcjNS1_14digit_groupingIcEEEET_SA_T1_iiT0_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %6, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ae, i8 noundef signext %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.aj), !noalias !682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %6, i64 25, i1 false), !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !682
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !693, !noalias !682, !nonnull !28, !align !327
  %i.am = load i32, ptr %i.al, align 4, !tbaa !60, !noalias !682 ; 6 uses
  %i.an = icmp sgt i32 %i.am, 0
  %.sroa.010.0.copyload.i = load ptr, ptr %7, align 8 ; 3 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.277.0..sroa_idx, align 8 ; 5 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.378.0..sroa_idx, align 8 ; 4 uses
  %i.ao = load i64, ptr %.sroa.479.0..sroa_idx, align 8
  br i1 %i.an, label %.lr.ph.i.i, label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit

.lr.ph.i.i:                                       ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !694, !noalias !682, !nonnull !28 ; 3 uses
  %xtraiter = and i32 %i.am, 1
  %i.ar = icmp eq i32 %i.am, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.am, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1, %.lr.ph.i.i.new
  %.sroa.76.0.i = phi i64 [ %.sroa.3.0.copyload.i, %.lr.ph.i.i.new ], [ %i.aw, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %.sroa.0.0.copyload45.i.i = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i.new ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1 ]
  %i.as = add i64 %.sroa.76.0.i, 1
  %i.at = icmp ult i64 %.sroa.76.0.i, %.sroa.2.0.copyload.i
  br i1 %i.at, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i: ; preds = %bb.e
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !695
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i, i64 1
  store i8 %i.au, ptr %.sroa.0.0.copyload45.i.i, align 1, !tbaa !12, !noalias !695
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i, %bb.e
  %.sroa.0.0.copyload3.i.i = phi ptr [ %.sroa.0.0.copyload45.i.i, %bb.e ], [ %i.av, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i ] ; 3 uses
  %i.aw = add i64 %.sroa.76.0.i, 2                ; 2 uses
  %i.ax = icmp ult i64 %i.as, %.sroa.2.0.copyload.i
  br i1 %i.ax, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !695
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload3.i.i, i64 1
  store i8 %i.ay, ptr %.sroa.0.0.copyload3.i.i, align 1, !tbaa !12, !noalias !695
  br label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i
  %.sroa.0.0.copyload3.i.i.1 = phi ptr [ %.sroa.0.0.copyload3.i.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i ], [ %i.az, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.1 ] ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, label %bb.e, !llvm.loop !481

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.76.0.i.epil.init = phi i64 [ %.sroa.3.0.copyload.i, %.lr.ph.i.i ], [ %i.aw, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ]
  %.sroa.0.0.copyload45.i.i.epil.init = phi ptr [ %.sroa.010.0.copyload.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ] ; 3 uses
  %lcmp.mod90 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod90)
  %i.ba = icmp ult i64 %.sroa.76.0.i.epil.init, %.sroa.2.0.copyload.i
  br i1 %i.ba, label %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil: ; preds = %.epil.preheader
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !12, !noalias !695
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload45.i.i.epil.init, i64 1
  store i8 %i.bb, ptr %.sroa.0.0.copyload45.i.i.epil.init, align 1, !tbaa !12, !noalias !695
  br label %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i

_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i: ; preds = %.epil.preheader, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa
  %.sroa.0.0.copyload3.i.i.lcssa = phi ptr [ %.sroa.0.0.copyload3.i.i.1, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i.unr-lcssa ], [ %.sroa.0.0.copyload45.i.i.epil.init, %.epil.preheader ], [ %i.bc, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.then.i.i.epil ]
  %i.bd = zext nneg i32 %i.am to i64
  %i.be = add i64 %.sroa.3.0.copyload.i, %i.bd
  br label %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit

_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit: ; preds = %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i
  %.sroa.6.0 = phi i64 [ %i.be, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %.sroa.3.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload3.i.i.lcssa, %_ZN3fmt2v96detail6fill_nINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEicEET_S8_T0_RKT1_.exit.i ], [ %.sroa.010.0.copyload.i, %_ZN3fmt2v96detail19truncating_iteratorIPcSt17integral_constantIbLb0EEEppEi.exit.cont.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.7.0.extract.trunc = trunc i64 %i.ao to i8 ; 2 uses
  %.not20 = icmp eq i64 %i.c, %i.l
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store ptr %.sroa.0.0, ptr %11, align 8
  %.sroa.10.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.10.0..sroa_idx38, align 8
  %.sroa.11.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.11.0..sroa_idx50, align 8
  %.sroa.12.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 %.sroa.7.0.extract.trunc, ptr %.sroa.12.0..sroa_idx62, align 8
  %.sroa.13.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %11, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx72, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @_ZN3fmt2v96detail4fillINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcEET_S8_mRKNS1_6fill_tIT0_EE(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %10, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %11, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  %.sroa.027.0.copyload33 = load ptr, ptr %10, align 8
  %.sroa.10.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.10.0.copyload45 = load i64, ptr %.sroa.10.0..sroa_idx44, align 8
  %.sroa.11.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.11.0.copyload57 = load i64, ptr %.sroa.11.0..sroa_idx56, align 8
  %.sroa.12.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.12.0.copyload69 = load i8, ptr %.sroa.12.0..sroa_idx68, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit
  %.sroa.12.1 = phi i8 [ %.sroa.7.0.extract.trunc, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.12.0.copyload69, %bb.f ]
  %.sroa.11.1 = phi i64 [ %.sroa.6.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.11.0.copyload57, %bb.f ]
  %.sroa.10.1 = phi i64 [ %.sroa.2.0.copyload.i, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.10.0.copyload45, %bb.f ]
  %.sroa.027.1 = phi ptr [ %.sroa.0.0, %_ZZN3fmt2v96detail14do_write_floatINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEENS1_9dragonbox10decimal_fpIfEEcNS1_14digit_groupingIcEEEET_SD_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlS7_E1_clES7_.exit ], [ %.sroa.027.0.copyload33, %bb.f ]
  store ptr %.sroa.027.1, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.1, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.12.1, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEcjNS1_14digit_groupingIcEEEET_SA_T1_iiT0_RKT2_(ptr dead_on_unwind noalias writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef signext %5, ptr noundef nonnull align 8 dereferenceable(40) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 4 uses
  %i.b = alloca [11 x i8], align 1                ; 4 uses
  %7 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %8 = alloca %"class.fmt::v9::basic_memory_buffer", align 8 ; 9 uses
  %9 = alloca %"class.fmt::v9::detail::truncating_iterator", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !307
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34, !noalias !698
  %.not.i.i = icmp eq i8 %5, 0
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e     ; 5 uses
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %2, 99
  br i1 %i.g, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.021.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ %2, %bb.c ] ; 3 uses
  %.01920.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.01920.i.i.i, i64 -2 ; 3 uses
  %i.i = urem i32 %.021.i.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.k
  %i.m = load i16, ptr %i.l, align 1, !noalias !698
  store i16 %i.m, ptr %i.h, align 1, !noalias !698
  %i.n = udiv i32 %.021.i.i.i, 100                ; 2 uses
  %i.o = icmp ugt i32 %.021.i.i.i, 9999
  br i1 %i.o, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !589

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.019.lcssa.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.h, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i32 [ %2, %bb.c ], [ %i.n, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = icmp samesign ult i32 %.0.lcssa.i.i.i, 10
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.q = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.r = or disjoint i8 %i.q, 48
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !12, !noalias !698
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i, i64 -2
  %i.u = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.v
  %i.x = load i16, ptr %i.w, align 1, !noalias !698
  store i16 %i.x, ptr %i.t, align 1, !noalias !698
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %i.f, i64 1        ; 4 uses
  %i.z = sub nsw i32 %3, %4                       ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.ab = lshr i32 %i.z, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.f
  %.030.lcssa.i.i = phi i32 [ %2, %bb.f ], [ %i.aj, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.y, %bb.f ], [ %i.ad, %.lr.ph.i.i ] ; 2 uses
  %i.ac = and i32 %i.z, 1
  %.not33.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not33.i.i, label %bb.h, label %bb.g

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.02849.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.y, %.lr.ph.preheader.i.i ]
  %.02948.i.i = phi i32 [ %i.ak, %.lr.ph.i.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 2 uses
  %.03047.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %2, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.02849.i.i, i64 -2 ; 3 uses
  %i.ae = urem i32 %.03047.i.i, 100
  %i.af = shl nuw nsw i32 %i.ae, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 1, !noalias !698
  store i16 %i.ai, ptr %i.ad, align 1, !noalias !698
  %i.aj = udiv i32 %.03047.i.i, 100               ; 2 uses
  %i.ak = add nsw i32 %.02948.i.i, -1
  %i.al = icmp samesign ugt i32 %.02948.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !590

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.am = urem i32 %.030.lcssa.i.i, 10
  %i.an = trunc nuw nsw i32 %i.am to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !12, !noalias !698
  %i.aq = udiv i32 %.030.lcssa.i.i, 10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.131.i.i = phi i32 [ %i.aq, %bb.g ], [ %.030.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ap, %bb.g ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %i.ar = getelementptr inbounds i8, ptr %.1.i.i, i64 -1 ; 3 uses
  store i8 %5, ptr %i.ar, align 1, !tbaa !12, !noalias !698
  %i.as = icmp ugt i32 %.131.i.i, 99
  br i1 %i.as, label %.lr.ph.i40.i.i, label %._crit_edge.i34.i.i

.lr.ph.i40.i.i:                                   ; preds = %bb.h, %.lr.ph.i40.i.i
  %.021.i41.i.i = phi i32 [ %i.az, %.lr.ph.i40.i.i ], [ %.131.i.i, %bb.h ] ; 3 uses
  %.01920.i42.i.i = phi ptr [ %i.at, %.lr.ph.i40.i.i ], [ %i.ar, %bb.h ]
  %i.at = getelementptr inbounds i8, ptr %.01920.i42.i.i, i64 -2 ; 3 uses
  %i.au = urem i32 %.021.i41.i.i, 100
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 1, !noalias !698
  store i16 %i.ay, ptr %i.at, align 1, !noalias !698
  %i.az = udiv i32 %.021.i41.i.i, 100             ; 2 uses
  %i.ba = icmp ugt i32 %.021.i41.i.i, 9999
  br i1 %i.ba, label %.lr.ph.i40.i.i, label %._crit_edge.i34.i.i, !llvm.loop !589

._crit_edge.i34.i.i:                              ; preds = %.lr.ph.i40.i.i, %bb.h
  %.019.lcssa.i35.i.i = phi ptr [ %i.ar, %bb.h ], [ %i.at, %.lr.ph.i40.i.i ] ; 2 uses
  %.0.lcssa.i36.i.i = phi i32 [ %.131.i.i, %bb.h ], [ %i.az, %.lr.ph.i40.i.i ] ; 3 uses
  %i.bb = icmp samesign ult i32 %.0.lcssa.i36.i.i, 10
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i34.i.i
  %i.bc = trunc nuw nsw i32 %.0.lcssa.i36.i.i to i8
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = getelementptr inbounds i8, ptr %.019.lcssa.i35.i.i, i64 -1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !12, !noalias !698
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

bb.j:                                             ; preds = %._crit_edge.i34.i.i
  %i.bf = getelementptr inbounds i8, ptr %.019.lcssa.i35.i.i, i64 -2
  %i.bg = shl nuw nsw i32 %.0.lcssa.i36.i.i, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 1, !noalias !698
  store i16 %i.bj, ptr %i.bf, align 1, !noalias !698
  br label %_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit

_ZN3fmt2v96detail17write_significandINS1_19truncating_iteratorIPcSt17integral_constantIbLb0EEEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEESB_SB_T0_iiT1_.exit: ; preds = %bb.d, %bb.e, %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.y, %bb.i ], [ %i.y, %bb.j ]
  call void @_ZN3fmt2v96detail17copy_str_noinlineIcPcNS1_19truncating_iteratorIS3_St17integral_constantIbLb0EEEEEET1_T0_S9_S8_(ptr dead_on_unwind writable sret(%"class.fmt::v9::detail::truncating_iterator") align 8 %0, ptr noundef nonnull %i.b, ptr noundef %.0.i.i, ptr noundef nonnull byval(%"class.fmt::v9::detail::truncating_iterator") align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34, !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ab

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %8, align 8, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !333
  store i64 500, ptr %i.bl, align 8, !tbaa !335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.not.i.i15 = icmp eq i8 %5, 0
  %i.bo = sext i32 %3 to i64
  %i.bp = getelementptr i8, ptr %i.a, i64 %i.bo   ; 5 uses
  br i1 %.not.i.i15, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp ugt i32 %2, 99
  br i1 %i.bq, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i34

.lr.ph.i.i.i37:                                   ; preds = %bb.l, %.lr.ph.i.i.i37
  %.021.i.i.i38 = phi i32 [ %i.bx, %.lr.ph.i.i.i37 ], [ %2, %bb.l ] ; 3 uses
  %.01920.i.i.i39 = phi ptr [ %i.br, %.lr.ph.i.i.i37 ], [ %i.bp, %bb.l ]
  %i.br = getelementptr inbounds i8, ptr %.01920.i.i.i39, i64 -2 ; 3 uses
  %i.bs = urem i32 %.021.i.i.i38, 100
  %i.bt = shl nuw nsw i32 %i.bs, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @.str.38, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 1
  store i16 %i.bw, ptr %i.br, align 1
  %i.bx = udiv i32 %.021.i.i.i38, 100             ; 2 uses
  %i.by = icmp ugt i32 %.021.i.i.i38, 9999
  br i1 %i.by, label %.lr.ph.i.i.i37, label %._crit_edge.i.i.i34, !llvm.loop !589

._crit_edge.i.i.i34:                              ; preds = %.lr.ph.i.i.i37, %bb.l
  %.019.lcssa.i.i.i35 = phi ptr [ %i.bp, %bb.l ], [ %i.br, %.lr.ph.i.i.i37 ] ; 2 uses
  %.0.lcssa.i.i.i36 = phi i32 [ %2, %bb.l ], [ %i.bx, %.lr.ph.i.i.i37 ] ; 3 uses
  %i.bz = icmp samesign ult i32 %.0.lcssa.i.i.i36, 10
  br i1 %i.bz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i34
  %i.ca = trunc nuw nsw i32 %.0.lcssa.i.i.i36 to i8
end_hunk_2
