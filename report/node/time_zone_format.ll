inline.NumInlined: 497
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
  %i.ap = add nuw nsw i64 %i.ao, %.zext10.i.i
  %i.aq = add nsw i64 %i.ap, %i.am
  %i.ar = srem i64 %i.aq, 7
  %i.as = getelementptr [4 x i8], ptr @__const._ZN4absl13time_internal4cctz6detail11get_weekdayERKNS2_10civil_timeINS2_10second_tagEEE.k_weekday_by_mon_off, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = load i32, ptr %i.at, align 4, !noalias !5 ; 2 uses
  %i.av = icmp ult i32 %i.au, 6
  %switch.offset.i.i = add nsw i32 %i.au, 1
  %.0.i.i = select i1 %i.av, i32 %switch.offset.i.i, i32 0
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 %.0.i.i, ptr %i.aw, align 8, !alias.scope !5
  %i.ax = icmp sgt i8 %i.s, 2
  %i.ay = and i64 %i.v, 3
  %i.az = icmp eq i64 %i.ay, 0
  %or.cond.i = and i1 %i.ax, %i.az
  br i1 %or.cond.i, label %bb.e, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = srem i64 %i.v, 100
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = icmp eq i64 %i.ab, 0
  %i.bc = zext i1 %i.bb to i32
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.bd = phi i32 [ 0, %bb.d ], [ %i.bc, %bb.f ], [ 1, %bb.e ]
  %i.be = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl13time_internal4cctz6detail11get_yeardayERKNS2_10civil_timeINS2_10second_tagEEE.k_month_offsets, i64 %i.ai
  %i.bf = load i32, ptr %i.be, align 4, !noalias !5
  %i.bg = add nsw i32 %i.o, -1
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = add i32 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.bi, ptr %i.bj, align 4, !alias.scope !5
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bl = load i8, ptr %i.bk, align 4, !range !8, !noalias !5, !noundef !9
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.bm, ptr %i.bn, align 16, !alias.scope !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bo = load ptr, ptr %1, align 8               ; 5 uses
  %i.bp = load i64, ptr %i.e, align 8             ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 12 uses
  %.not1017 = icmp samesign eq i64 %i.bp, 0
  br i1 %.not1017, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 25 uses
  %i.bv = ptrtoint ptr %.0.i845.idx.sroa.gep1044 to i64 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 32 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 22 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 19 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i446 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cw = add i64 %i.bp, %i.br                    ; 2 uses
  %i.cx = sub i64 0, %i.b
  %scevgep1041 = getelementptr i8, ptr %i.a, i64 %i.cx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread846
  %.02641019 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6, %.thread846 ] ; 7 uses
  %.02681018 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6274, %.thread846 ] ; 6 uses
  %scevgep = getelementptr i8, ptr %.02681018, i64 %i.cw
  %.026810181036 = ptrtoint ptr %.02681018 to i64
  %i.cy = sub i64 0, %.026810181036
  %scevgep1037 = getelementptr i8, ptr %scevgep, i64 %i.cy
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %.12691009 = phi ptr [ %.02681018, %.preheader ], [ %i.da, %bb.h ] ; 3 uses
  %i.cz = load i8, ptr %.12691009, align 1
  %.not310 = icmp eq i8 %i.cz, 37
  br i1 %.not310, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %.12691009, i64 1 ; 2 uses
  %.not309 = icmp eq ptr %i.da, %i.bq
  br i1 %.not309, label %.critedge, label %bb.g, !llvm.loop !10

.critedge:                                        ; preds = %bb.h, %bb.g
  %.1269.lcssa = phi ptr [ %scevgep1037, %bb.h ], [ %.12691009, %bb.g ] ; 9 uses
  %.1269.lcssa1039 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not311 = icmp ne ptr %.1269.lcssa, %.02681018
  %i.db = icmp eq ptr %.02641019, %.02681018
  %or.cond = select i1 %.not311, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.critedge
  %i.dc = ptrtoint ptr %.02641019 to i64
  %i.dd = sub i64 %.1269.lcssa1039, %i.dc         ; 5 uses
  %i.de = load i64, ptr %i.d, align 8             ; 5 uses
  %i.df = sub i64 9223372036854775807, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dd
  br i1 %i.dg, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.i
  %i.dh = add i64 %i.de, %i.dd                    ; 3 uses
  %i.di = load ptr, ptr %0, align 8               ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.c
  br i1 %i.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dk = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.dk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dl = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dm = phi i64 [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.dh, %i.dm
  br i1 %.not.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq ptr %.1269.lcssa, %.02641019
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.de ; 2 uses
  %cond.i.i = icmp eq i64 %i.dd, 1
  br i1 %cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.do = load i8, ptr %.02641019, align 1
  store i8 %i.do, ptr %i.dn, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %.02641019, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.de, i64 noundef 0, ptr noundef %.02641019, i64 noundef %i.dd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  store i64 %i.dh, ptr %i.d, align 8
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  store i8 0, ptr %i.dq, align 1
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %.critedge
  %.1265 = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.02641019, %.critedge ] ; 7 uses
  %.0263 = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.02681018, %.critedge ] ; 2 uses
  %.not3121010 = icmp eq ptr %.1269.lcssa, %i.bq
  br i1 %.not3121010, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %scevgep1038 = getelementptr i8, ptr %.1269.lcssa, i64 %i.cw
  %i.dr = sub i64 0, %.1269.lcssa1039
  %scevgep1040 = getelementptr i8, ptr %scevgep1038, i64 %i.dr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.22701011 = phi ptr [ %i.du, %bb.q ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.ds = load i8, ptr %.22701011, align 1
  %i.dt = icmp eq i8 %i.ds, 37                    ; 3 uses
  br i1 %i.dt, label %bb.q, label %.critedge2

bb.q:                                             ; preds = %.lr.ph
  %i.du = getelementptr inbounds nuw i8, ptr %.22701011, i64 1 ; 2 uses
  %.not312 = icmp eq ptr %i.du, %i.bq
  br i1 %.not312, label %.critedge2, label %.lr.ph, !llvm.loop !12

.critedge2:                                       ; preds = %.lr.ph, %bb.q, %bb.p
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %bb.p ], [ %scevgep1040, %bb.q ], [ %.22701011, %.lr.ph ] ; 43 uses
  %.not312.lcssa = phi i1 [ true, %bb.p ], [ %i.dt, %bb.q ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.not313 = icmp ne ptr %.2270.lcssa, %.0263
  %i.dv = icmp eq ptr %.1265, %.0263
  %or.cond336 = select i1 %.not313, i1 %i.dv, i1 false
  br i1 %or.cond336, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %.critedge2
  %i.dw = ptrtoint ptr %.2270.lcssa to i64
  %i.dx = ptrtoint ptr %.1265 to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 1                       ; 6 uses
  %i.ea = load i64, ptr %i.d, align 8             ; 5 uses
  %i.eb = sub i64 9223372036854775807, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dz
  br i1 %i.ec, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338: ; preds = %bb.r
  %i.ed = add i64 %i.ea, %i.dz                    ; 3 uses
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.c
  br i1 %i.ef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i344: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338
  %i.eg = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338
  %i.eh = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i340: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i344
  %i.ei = phi i64 [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i344 ]
  %.not.i.i341 = icmp ugt i64 %i.ed, %i.ei
  br i1 %.not.i.i341, label %bb.x, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i340
  %.not8.i.i342 = icmp eq i64 %i.dz, 0
  br i1 %.not8.i.i342, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ea ; 2 uses
  %cond.i.i343 = icmp eq i64 %i.dz, 1
  br i1 %cond.i.i343, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ek = load i8, ptr %.1265, align 1
  store i8 %i.ek, ptr %i.ej, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %.1265, i64 %i.dz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i340
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ea, i64 noundef 0, ptr noundef %.1265, i64 noundef %i.dz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345: ; preds = %bb.t, %bb.v, %bb.w, %bb.x
  store i64 %i.ed, ptr %i.d, align 8
  %i.el = load ptr, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  store i8 0, ptr %i.em, align 1
  %i.en = and i64 %i.dy, -2
  %i.eo = getelementptr inbounds nuw i8, ptr %.1265, i64 %i.en ; 4 uses
  %.not314 = icmp ne ptr %i.eo, %.2270.lcssa
  %or.cond337 = and i1 %.not312.lcssa, %.not314
  br i1 %or.cond337, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = load i64, ptr %i.d, align 8             ; 4 uses
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %i.et = load ptr, ptr %0, align 8               ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.c
  br i1 %i.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.y
  %i.ev = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ev)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.ew = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ex = phi i64 [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ey = icmp ugt i64 %i.es, %i.ex
  br i1 %i.ey, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.er, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.z
  %i.ez = phi ptr [ %.pre.i, %bb.z ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  store i8 %i.eq, ptr %i.fa, align 1
  store i64 %i.es, ptr %i.d, align 8
  %i.fb = load ptr, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.es
  store i8 0, ptr %i.fc, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %.critedge2
  %.3267 = phi ptr [ %.1265, %.critedge2 ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit345 ] ; 57 uses
  br i1 %.not312.lcssa, label %.thread846, label %bb.ab, !llvm.loop !13

bb.ab:                                            ; preds = %bb.aa
  %i.fd = ptrtoint ptr %.2270.lcssa to i64
  %i.fe = sub i64 %i.fd, %.1269.lcssa1039
  %i.ff = and i64 %i.fe, 1
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.thread846, label %bb.ac, !llvm.loop !13

bb.ac:                                            ; preds = %bb.ab
  %i.fh = load i8, ptr %.2270.lcssa, align 1      ; 3 uses
  %i.fi = sext i8 %i.fh to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fi, i64 18)
  %.not315 = icmp eq ptr %memchr, null
  br i1 %.not315, label %bb.el, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not334 = icmp eq ptr %i.fj, %.3267
  br i1 %.not334, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.bs, ptr %7, align 8
  store i64 0, ptr %i.bt, align 8
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %.3267 to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 8 uses
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %bb.af, label %._crit_edge.i.i

bb.af:                                            ; preds = %bb.ae
  %i.fo = icmp slt i64 %i.fm, 0
  br i1 %i.fo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.fp = add nuw i64 %i.fm, 1                    ; 2 uses
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !14

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ah
  %i.fr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #20 ; 2 uses
  store ptr %i.fr, ptr %7, align 8
  store i64 %i.fm, ptr %i.bs, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.ae
  %i.fs = phi ptr [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.bs, %bb.ae ] ; 3 uses
  switch i64 %i.fm, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.ft = load i8, ptr %.3267, align 1
  store i8 %i.ft, ptr %i.fs, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.ak:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr align 1 %.3267, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.aj, %bb.ak
  store i64 %i.fm, ptr %i.bt, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm
  store i8 0, ptr %i.fu, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.bs
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  %i.fx = load i64, ptr %i.bs, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.pre = load i8, ptr %.2270.lcssa, align 1
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ad
  %i.fz = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fh, %bb.ad ]
  switch i8 %i.fz, label %bb.ek [
    i8 89, label %bb.am
    i8 109, label %bb.az
    i8 100, label %bb.bd
    i8 101, label %bb.bd
    i8 70, label %bb.bh
    i8 85, label %bb.bu
    i8 117, label %bb.by
    i8 87, label %bb.ch
    i8 119, label %bb.cl
    i8 72, label %bb.cu
    i8 77, label %bb.cy
    i8 83, label %bb.dc
    i8 84, label %bb.dg
    i8 122, label %bb.dk
    i8 90, label %bb.do
    i8 115, label %bb.dv
    i8 37, label %bb.ei
  ]

bb.am:                                            ; preds = %bb.al
  %i.ga = load i64, ptr %5, align 8               ; 4 uses
  %i.gb = icmp slt i64 %i.ga, 0                   ; 2 uses
  br i1 %i.gb, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.gc = icmp eq i64 %i.ga, -9223372036854775808
  br i1 %i.gc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i8 56, ptr %i.bu, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.026.i = phi ptr [ %i.bu, %bb.ao ], [ %.0.i845.idx.sroa.gep1044, %bb.an ]
  %.022.i = phi i32 [ -2, %bb.ao ], [ -1, %bb.an ]
  %.1.i = phi i64 [ -922337203685477580, %bb.ao ], [ %i.ga, %bb.an ]
  %i.gd = sub nsw i64 0, %.1.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %.127.i = phi ptr [ %.026.i, %bb.ap ], [ %.0.i845.idx.sroa.gep1044, %bb.am ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.ap ], [ 0, %bb.am ] ; 2 uses
  %.2.i = phi i64 [ %i.gd, %bb.ap ], [ %i.ga, %bb.am ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.ge = add nsw i32 %.123.i, -2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.ar ], [ %i.ge, %bb.aq ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.ar ], [ %scevgep40.i, %bb.aq ] ; 2 uses
  %.228.i = phi ptr [ %i.gj, %bb.ar ], [ %.127.i, %bb.aq ] ; 2 uses
  %.224.i = phi i32 [ %i.gf, %bb.ar ], [ %.123.i, %bb.aq ] ; 3 uses
  %.3.i = phi i64 [ %i.gk, %bb.ar ], [ %.2.i, %bb.aq ] ; 3 uses
  %i.gf = add i32 %.224.i, -1                     ; 2 uses
  %i.gg = urem i64 %.3.i, 10
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = getelementptr inbounds i8, ptr %.228.i, i64 -1 ; 3 uses
  store i8 %i.gi, ptr %i.gj, align 1
  %i.gk = udiv i64 %.3.i, 10
  %.not.i = icmp ult i64 %.3.i, 10
  %scevgep41.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv42.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.ar, !llvm.loop !15

.preheader.i:                                     ; preds = %bb.ar
  %i.gl = icmp sgt i32 %.224.i, 1
  br i1 %i.gl, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.gm = getelementptr i8, ptr %.228.i, i64 -2
  %i.gn = add nsw i32 %.224.i, -2
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = sub nsw i64 0, %i.go
  %scevgep.i = getelementptr i8, ptr %i.gm, i64 %i.gp
  %i.gq = zext nneg i32 %i.gf to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.gq, i1 false)
  %i.gr = zext i32 %indvars.iv42.i to i64
  %i.gs = sub nsw i64 0, %i.gr
  %scevgep43.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.gs
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.preheader.i
  %.329.lcssa.i = phi ptr [ %i.gj, %.preheader.i ], [ %scevgep43.i, %.lr.ph.preheader.i ] ; 2 uses
  br i1 %i.gb, label %bb.as, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

bb.as:                                            ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds i8, ptr %.329.lcssa.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gt, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit: ; preds = %._crit_edge.i, %bb.as
  %.4.i = phi ptr [ %i.gt, %bb.as ], [ %.329.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.gu = ptrtoint ptr %.4.i to i64
  %i.gv = sub i64 %i.bv, %i.gu                    ; 5 uses
  %i.gw = load i64, ptr %i.d, align 8             ; 5 uses
  %i.gx = sub i64 9223372036854775807, %i.gw
  %i.gy = icmp ult i64 %i.gx, %i.gv
  br i1 %i.gy, label %bb.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i348

bb.at:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i348: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit
  %i.gz = add i64 %i.gv, %i.gw                    ; 5 uses
  %i.ha = load ptr, ptr %0, align 8               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i606: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  %i.aau = add nsw i64 %i.aas, 9                  ; 3 uses
  %i.aav = load ptr, ptr %0, align 8              ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.c
  br i1 %i.aaw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i612: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i606
  %i.aax = icmp ult i64 %i.aas, 16
  call void @llvm.assume(i1 %i.aax)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i607: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i606
  %i.aay = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i608

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i608: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i607, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i612
  %i.aaz = phi i64 [ %i.aay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i607 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i612 ]
  %.not.i.i609 = icmp ugt i64 %i.aau, %i.aaz
  br i1 %.not.i.i609, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i608
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.aas
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aba, ptr noundef nonnull align 1 dereferenceable(9) %i.ci, i64 9, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613

bb.fm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i608
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aas, i64 noundef 0, ptr noundef nonnull %i.ci, i64 noundef 9)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613: ; preds = %bb.fl, %bb.fm
  store i64 %i.aau, ptr %i.d, align 8
  %i.abb = load ptr, ptr %0, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aau
  store i8 0, ptr %i.abc, align 1
  %i.abd = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread846, !llvm.loop !13

bb.fn:                                            ; preds = %bb.fb
  %i.abe = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  %.not318 = icmp eq ptr %i.abe, %i.bq
  br i1 %.not318, label %.thread846, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = icmp eq i8 %i.abf, 122
  br i1 %i.abg, label %bb.fp, label %.thread846

bb.fp:                                            ; preds = %bb.fo
  %i.abh = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not331 = icmp eq ptr %i.abh, %.3267
  br i1 %.not331, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3267, ptr noundef nonnull %i.abh, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.abi = load ptr, ptr %12, align 8             ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.cr
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614: ; preds = %bb.fq
  %i.abk = load i64, ptr %i.cr, align 8
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit616, %bb.fp
  %i.abm = load i32, ptr %i.bx, align 8           ; 2 uses
  %i.abn = icmp slt i32 %i.abm, 0
  %spec.select.i617 = select i1 %i.abn, i8 45, i8 43 ; 2 uses
  %spec.select45.i618 = call i32 @llvm.abs.i32(i32 %i.abm, i1 true) ; 5 uses
  %i.abo = urem i32 %spec.select45.i618, 60       ; 2 uses
  %i.abp = udiv i32 %spec.select45.i618, 60
  %i.abq = urem i32 %i.abp, 60                    ; 2 uses
  %.not945 = icmp eq i32 %i.abo, 0
  br i1 %.not945, label %bb.fs, label %.thread

.thread:                                          ; preds = %bb.fr
  %.lhs.trunc58.i627 = trunc nuw nsw i32 %i.abo to i8 ; 2 uses
  %i.abr = urem i8 %.lhs.trunc58.i627, 10
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1
  store i8 %i.abu, ptr %i.bu, align 1
  %i.abv = udiv i8 %.lhs.trunc58.i627, 10
  %i.abw = zext nneg i8 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1
  store i8 %i.aby, ptr %i.by, align 8
  store i8 58, ptr %.0.i845.idx.sroa.gep, align 1
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.abz = icmp samesign ult i32 %spec.select45.i618, 3600
  %i.aca = icmp eq i32 %i.abq, 0                  ; 2 uses
  %or.cond3.i620 = and i1 %i.abz, %i.aca
  %spec.select47.i621 = select i1 %or.cond3.i620, i8 43, i8 %spec.select.i617
  br i1 %i.aca, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit628, label %bb.ft

bb.ft:                                            ; preds = %.thread, %bb.fs
  %.0.i845.idx.sroa.phi = phi ptr [ %.0.i845.idx.sroa.gep, %.thread ], [ %.0.i845.idx.sroa.gep1044, %bb.fs ] ; 2 uses
  %.0.i845.idx.sroa.phi1235 = phi ptr [ %.0.i845.idx.sroa.gep1236, %.thread ], [ %.0.i845.idx.sroa.gep1237, %bb.fs ]
  %.0.i845.idx = phi i64 [ 20, %.thread ], [ 23, %bb.fs ]
  %.lhs.trunc.i626 = trunc nuw nsw i32 %i.abq to i8 ; 2 uses
  %i.acb = urem i8 %.lhs.trunc.i626, 10
  %i.acc = zext nneg i8 %i.acb to i64
  %i.acd = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1
  %i.acf = getelementptr inbounds i8, ptr %.0.i845.idx.sroa.phi, i64 -1
  store i8 %i.ace, ptr %i.acf, align 1
  %i.acg = udiv i8 %.lhs.trunc.i626, 10
  %i.ach = zext nneg i8 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1
  %i.ack = getelementptr inbounds i8, ptr %.0.i845.idx.sroa.phi, i64 -2
  store i8 %i.acj, ptr %i.ack, align 1
  store i8 58, ptr %.0.i845.idx.sroa.phi1235, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit628

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit628: ; preds = %bb.fs, %bb.ft
  %.141.i843 = phi i8 [ %spec.select.i617, %bb.ft ], [ %spec.select47.i621, %bb.fs ]
  %.1.i624.idx = phi i64 [ %.0.i845.idx, %bb.ft ], [ 26, %bb.fs ] ; 3 uses
  %.1.i624.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i624.idx ; 2 uses
  %i.acl = udiv i32 %spec.select45.i618, 3600
  %i.acm = urem i32 %i.acl, 10
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acn
  %i.acp = load i8, ptr %i.aco, align 1
  %i.acq = getelementptr inbounds i8, ptr %.1.i624.ptr, i64 -1
  store i8 %i.acp, ptr %i.acq, align 1
  %i.acr = udiv i32 %spec.select45.i618, 36000
  %.lhs.trunc56.i625 = trunc nuw i32 %i.acr to i16
  %i.acs = urem i16 %.lhs.trunc56.i625, 10
  %i.act = zext nneg i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1
  %i.acw = getelementptr inbounds i8, ptr %.1.i624.ptr, i64 -2
  store i8 %i.acv, ptr %i.acw, align 1
  %i.acx = getelementptr i8, ptr %i.a, i64 %.1.i624.idx
  %.ptr = getelementptr i8, ptr %i.acx, i64 -3    ; 3 uses
  store i8 %.141.i843, ptr %.ptr, align 1
  %gepdiff = sub nuw nsw i64 29, %.1.i624.idx     ; 4 uses
  %i.acy = load i64, ptr %i.d, align 8            ; 5 uses
  %i.acz = sub i64 9223372036854775807, %i.acy
  %i.ada = icmp ult i64 %i.acz, %gepdiff
  br i1 %i.ada, label %bb.fu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i629

bb.fu:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit628
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i629: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit628
  %i.adb = add i64 %i.acy, %gepdiff               ; 3 uses
  %i.adc = load ptr, ptr %0, align 8              ; 2 uses
  %i.add = icmp eq ptr %i.adc, %i.c
  br i1 %i.add, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i635: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i629
  %i.ade = icmp ult i64 %i.acy, 16
  call void @llvm.assume(i1 %i.ade)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i630: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i629
  %i.adf = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i631

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i631: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i630, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i635
  %i.adg = phi i64 [ %i.adf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i630 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i635 ]
  %.not.i.i632 = icmp ugt i64 %i.adb, %i.adg
  br i1 %.not.i.i632, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i631
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.acy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adh, ptr nonnull align 1 %.ptr, i64 %gepdiff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit636

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i631
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.acy, i64 noundef 0, ptr noundef nonnull %.ptr, i64 noundef %gepdiff)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit636

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit636: ; preds = %bb.fv, %bb.fw
  store i64 %i.adb, ptr %i.d, align 8
  %i.adi = load ptr, ptr %0, align 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adb
  store i8 0, ptr %i.adj, align 1
  %i.adk = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 4 ; 2 uses
  br label %.thread846, !llvm.loop !13

bb.fx:                                            ; preds = %bb.el
  %i.adl = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 1 ; 12 uses
  %i.adm = icmp eq ptr %i.adl, %i.bq
  br i1 %i.adm, label %.thread846, label %bb.fy, !llvm.loop !13

bb.fy:                                            ; preds = %bb.fx
  %i.adn = load i8, ptr %i.adl, align 1           ; 3 uses
  switch i8 %i.adn, label %bb.jk [
    i8 84, label %bb.fz
    i8 122, label %bb.gl
    i8 42, label %bb.gx
    i8 52, label %bb.in
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.ado = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not330 = icmp eq ptr %i.ado, %.3267
  br i1 %.not330, label %bb.gh, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.cn, ptr %14, align 8
  store i64 0, ptr %i.co, align 8
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %.3267 to i64
  %i.adr = sub i64 %i.adp, %i.adq                 ; 8 uses
  %i.ads = icmp ugt i64 %i.adr, 15
  br i1 %i.ads, label %bb.gb, label %._crit_edge.i.i637

bb.gb:                                            ; preds = %bb.ga
  %i.adt = icmp slt i64 %i.adr, 0
  br i1 %i.adt, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.gd:                                            ; preds = %bb.gb
  %i.adu = add nuw i64 %i.adr, 1                  ; 2 uses
  %i.adv = icmp slt i64 %i.adu, 0
  br i1 %i.adv, label %bb.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i638, !prof !14

bb.ge:                                            ; preds = %bb.gd
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i638: ; preds = %bb.gd
  %i.adw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adu) #20 ; 2 uses
  store ptr %i.adw, ptr %14, align 8
  store i64 %i.adr, ptr %i.cn, align 8
  br label %._crit_edge.i.i637

._crit_edge.i.i637:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i638, %bb.ga
  %i.adx = phi ptr [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i638 ], [ %i.cn, %bb.ga ] ; 3 uses
  switch i64 %i.adr, label %bb.gg [
    i64 1, label %bb.gf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit639
  ]

bb.gf:                                            ; preds = %._crit_edge.i.i637
  %i.ady = load i8, ptr %.3267, align 1
  store i8 %i.ady, ptr %i.adx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit639

bb.gg:                                            ; preds = %._crit_edge.i.i637
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adx, ptr align 1 %.3267, i64 %i.adr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit639: ; preds = %._crit_edge.i.i637, %bb.gf, %bb.gg
  store i64 %i.adr, ptr %i.co, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.adr
  store i8 0, ptr %i.adz, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.aea = load ptr, ptr %14, align 8             ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.cn
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit639
  %i.aec = load i64, ptr %i.cn, align 8
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit639, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.gh

bb.gh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, %bb.fz
  %i.aee = load i64, ptr %i.d, align 8            ; 5 uses
  %i.aef = icmp eq i64 %i.aee, 9223372036854775807
  br i1 %i.aef, label %bb.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i643

bb.gi:                                            ; preds = %bb.gh
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i643: ; preds = %bb.gh
  %i.aeg = add nsw i64 %i.aee, 1                  ; 3 uses
  %i.aeh = load ptr, ptr %0, align 8              ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.c
  br i1 %i.aei, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i649, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i644

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i649: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i643
  %i.aej = icmp ult i64 %i.aee, 16
  call void @llvm.assume(i1 %i.aej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i644: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i643
  %i.aek = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i645: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i644, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i649
  %i.ael = phi i64 [ %i.aek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i644 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i649 ]
  %.not.i.i646 = icmp ugt i64 %i.aeg, %i.ael
  br i1 %.not.i.i646, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i645
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aee
  store i8 84, ptr %i.aem, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit650

bb.gk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i645
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aee, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit650: ; preds = %bb.gj, %bb.gk
  store i64 %i.aeg, ptr %i.d, align 8
  %i.aen = load ptr, ptr %0, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aeg
  store i8 0, ptr %i.aeo, align 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  br label %.thread846

bb.gl:                                            ; preds = %bb.fy
  %i.aeq = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not329 = icmp eq ptr %i.aeq, %.3267
  br i1 %.not329, label %bb.gt, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.cl, ptr %15, align 8
  store i64 0, ptr %i.cm, align 8
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %.3267 to i64
  %i.aet = sub i64 %i.aer, %i.aes                 ; 8 uses
  %i.aeu = icmp ugt i64 %i.aet, 15
  br i1 %i.aeu, label %bb.gn, label %._crit_edge.i.i651

bb.gn:                                            ; preds = %bb.gm
  %i.aev = icmp slt i64 %i.aet, 0
  br i1 %i.aev, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.gp:                                            ; preds = %bb.gn
  %i.aew = add nuw i64 %i.aet, 1                  ; 2 uses
  %i.aex = icmp slt i64 %i.aew, 0
  br i1 %i.aex, label %bb.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i652, !prof !14

bb.gq:                                            ; preds = %bb.gp
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i652: ; preds = %bb.gp
  %i.aey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aew) #20 ; 2 uses
  store ptr %i.aey, ptr %15, align 8
  store i64 %i.aet, ptr %i.cl, align 8
  br label %._crit_edge.i.i651

._crit_edge.i.i651:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i652, %bb.gm
  %i.aez = phi ptr [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i652 ], [ %i.cl, %bb.gm ] ; 3 uses
  switch i64 %i.aet, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit653
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i651
  %i.afa = load i8, ptr %.3267, align 1
  store i8 %i.afa, ptr %i.aez, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit653

bb.gs:                                            ; preds = %._crit_edge.i.i651
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aez, ptr align 1 %.3267, i64 %i.aet, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit653

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit653: ; preds = %._crit_edge.i.i651, %bb.gr, %bb.gs
  store i64 %i.aet, ptr %i.cm, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aet
  store i8 0, ptr %i.afb, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.afc = load ptr, ptr %15, align 8             ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.cl
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i654

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i654: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit653
  %i.afe = load i64, ptr %i.cl, align 8
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit653, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i654
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, %bb.gl
end_hunk_1
begin_hunk_2_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
  br i1 %i.ajt, label %bb.hu, label %bb.hx

bb.hu:                                            ; preds = %bb.ht
  %i.aju = icmp eq i64 %i.ajs, -9223372036854775808
  br i1 %i.aju, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  store i8 56, ptr %i.bu, align 1
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.026.i729 = phi ptr [ %i.bu, %bb.hv ], [ %.0.i845.idx.sroa.gep1044, %bb.hu ]
  %.022.i730 = phi i32 [ 13, %bb.hv ], [ 14, %bb.hu ]
  %.1.i731 = phi i64 [ -922337203685477580, %bb.hv ], [ %i.ajs, %bb.hu ]
  %i.ajv = sub nsw i64 0, %.1.i731
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.ht
  %.127.i710 = phi ptr [ %.026.i729, %bb.hw ], [ %.0.i845.idx.sroa.gep1044, %bb.ht ] ; 2 uses
  %.123.i711 = phi i32 [ %.022.i730, %bb.hw ], [ 15, %bb.ht ] ; 2 uses
  %.2.i712 = phi i64 [ %i.ajv, %bb.hw ], [ %i.ajs, %bb.ht ]
  %scevgep40.i713 = getelementptr i8, ptr %.127.i710, i64 -2
  %i.ajw = add nsw i32 %.123.i711, -2
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hy, %bb.hx
  %indvars.iv42.i714 = phi i32 [ %indvars.iv.next.i721, %bb.hy ], [ %i.ajw, %bb.hx ] ; 2 uses
  %indvars.iv.i715 = phi ptr [ %scevgep41.i720, %bb.hy ], [ %scevgep40.i713, %bb.hx ] ; 2 uses
  %.228.i716 = phi ptr [ %i.akb, %bb.hy ], [ %.127.i710, %bb.hx ] ; 2 uses
  %.224.i717 = phi i32 [ %i.ajx, %bb.hy ], [ %.123.i711, %bb.hx ] ; 3 uses
  %.3.i718 = phi i64 [ %i.akc, %bb.hy ], [ %.2.i712, %bb.hx ] ; 3 uses
  %i.ajx = add i32 %.224.i717, -1                 ; 2 uses
  %i.ajy = urem i64 %.3.i718, 10
  %i.ajz = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1
  %i.akb = getelementptr inbounds i8, ptr %.228.i716, i64 -1 ; 3 uses
  store i8 %i.aka, ptr %i.akb, align 1
  %i.akc = udiv i64 %.3.i718, 10
  %.not.i719 = icmp ult i64 %.3.i718, 10
  %scevgep41.i720 = getelementptr i8, ptr %indvars.iv.i715, i64 -1
  %indvars.iv.next.i721 = add i32 %indvars.iv42.i714, -1
  br i1 %.not.i719, label %.preheader.i722, label %bb.hy, !llvm.loop !15

.preheader.i722:                                  ; preds = %bb.hy
  %i.akd = icmp sgt i32 %.224.i717, 1
  br i1 %i.akd, label %.lr.ph.preheader.i726, label %._crit_edge.i723

.lr.ph.preheader.i726:                            ; preds = %.preheader.i722
  %i.ake = getelementptr i8, ptr %.228.i716, i64 -2
  %i.akf = add nsw i32 %.224.i717, -2
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = sub nsw i64 0, %i.akg
  %scevgep.i727 = getelementptr i8, ptr %i.ake, i64 %i.akh
  %i.aki = zext nneg i32 %i.ajx to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i727, i8 48, i64 %i.aki, i1 false)
  %i.akj = zext i32 %indvars.iv42.i714 to i64
  %i.akk = sub nsw i64 0, %i.akj
  %scevgep43.i728 = getelementptr i8, ptr %indvars.iv.i715, i64 %i.akk
  br label %._crit_edge.i723

._crit_edge.i723:                                 ; preds = %.lr.ph.preheader.i726, %.preheader.i722
  %.329.lcssa.i724 = phi ptr [ %i.akb, %.preheader.i722 ], [ %scevgep43.i728, %.lr.ph.preheader.i726 ] ; 2 uses
  br i1 %i.ajt, label %bb.hz, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732

bb.hz:                                            ; preds = %._crit_edge.i723
  %i.akl = getelementptr inbounds i8, ptr %.329.lcssa.i724, i64 -1 ; 2 uses
  store i8 45, ptr %i.akl, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732: ; preds = %._crit_edge.i723, %bb.hz
  %.4.i725 = phi ptr [ %i.akl, %bb.hz ], [ %.329.lcssa.i724, %._crit_edge.i723 ] ; 8 uses
  %.4.i7251042 = ptrtoint ptr %.4.i725 to i64
  %scevgep1043 = getelementptr i8, ptr %scevgep1041, i64 %.4.i7251042 ; 2 uses
  %.not3271182 = icmp eq ptr %.0.i845.idx.sroa.gep1044, %.4.i725
  br i1 %.not3271182, label %.critedge4, label %.lr.ph1185

bb.ia:                                            ; preds = %.lr.ph1185
  %.not327 = icmp eq ptr %i.akm, %.4.i725
  br i1 %.not327, label %.critedge4, label %.lr.ph1185, !llvm.loop !16

.lr.ph1185:                                       ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732, %bb.ia
  %.01183 = phi ptr [ %i.akm, %bb.ia ], [ %.0.i845.idx.sroa.gep1044, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732 ] ; 2 uses
  %i.akm = getelementptr inbounds i8, ptr %.01183, i64 -1 ; 3 uses
  %i.akn = load i8, ptr %i.akm, align 1
  %i.ako = icmp eq i8 %i.akn, 48
  br i1 %i.ako, label %bb.ia, label %..critedge4_crit_edge1187, !llvm.loop !16

..critedge4_crit_edge1187:                        ; preds = %.lr.ph1185
  br label %.critedge4, !llvm.loop !16

.critedge4:                                       ; preds = %bb.ia, %..critedge4_crit_edge1187, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732
  %.not327.lcssa = phi i1 [ true, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732 ], [ false, %..critedge4_crit_edge1187 ], [ true, %bb.ia ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep1043, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit732 ], [ %.01183, %..critedge4_crit_edge1187 ], [ %scevgep1043, %bb.ia ] ; 2 uses
  %i.akp = load i8, ptr %i.agr, align 1
  switch i8 %i.akp, label %bb.ig [
    i8 83, label %bb.ib
    i8 102, label %bb.ie
  ]

bb.ib:                                            ; preds = %.critedge4
  br i1 %.not327.lcssa, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.akq = getelementptr inbounds i8, ptr %.4.i725, i64 -1 ; 2 uses
  store i8 46, ptr %i.akq, align 1
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.0262 = phi ptr [ %i.akq, %bb.ic ], [ %.4.i725, %bb.ib ] ; 2 uses
  %i.akr = load i8, ptr %i.i, align 4             ; 2 uses
  %i.aks = srem i8 %i.akr, 10
  %i.akt = sext i8 %i.aks to i64
  %i.aku = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.akt
  %i.akv = load i8, ptr %i.aku, align 1
  %i.akw = getelementptr inbounds i8, ptr %.0262, i64 -1
  store i8 %i.akv, ptr %i.akw, align 1
  %i.akx = sdiv i8 %i.akr, 10
  %i.aky = srem i8 %i.akx, 10
  %i.akz = sext i8 %i.aky to i64
  %i.ala = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.akz
  %i.alb = load i8, ptr %i.ala, align 1
  %i.alc = getelementptr inbounds i8, ptr %.0262, i64 -2 ; 2 uses
  store i8 %i.alb, ptr %i.alc, align 1
  br label %bb.ig

bb.ie:                                            ; preds = %.critedge4
  br i1 %.not327.lcssa, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.ald = getelementptr inbounds i8, ptr %.4.i725, i64 -1 ; 2 uses
  store i8 48, ptr %i.ald, align 1
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if, %bb.id, %.critedge4
  %.1 = phi ptr [ %.4.i725, %.critedge4 ], [ %i.alc, %bb.id ], [ %i.ald, %bb.if ], [ %.4.i725, %bb.ie ] ; 5 uses
  %i.ale = ptrtoint ptr %.0.lcssa to i64
  %i.alf = ptrtoint ptr %.1 to i64
  %i.alg = sub i64 %i.ale, %i.alf                 ; 5 uses
  %i.alh = load i64, ptr %i.d, align 8            ; 5 uses
  %i.ali = sub i64 9223372036854775807, %i.alh
  %i.alj = icmp ult i64 %i.ali, %i.alg
  br i1 %i.alj, label %bb.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i733

bb.ih:                                            ; preds = %bb.ig
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i733: ; preds = %bb.ig
  %i.alk = add i64 %i.alg, %i.alh                 ; 3 uses
  %i.all = load ptr, ptr %0, align 8              ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.c
  br i1 %i.alm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i739, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i734

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i739: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i733
  %i.aln = icmp ult i64 %i.alh, 16
  call void @llvm.assume(i1 %i.aln)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i734: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i733
  %i.alo = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i735: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i734, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i739
  %i.alp = phi i64 [ %i.alo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i734 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i739 ]
  %.not.i.i736 = icmp ugt i64 %i.alk, %i.alp
  br i1 %.not.i.i736, label %bb.im, label %bb.ii

bb.ii:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i735
  %.not8.i.i737 = icmp eq ptr %.0.lcssa, %.1
  br i1 %.not8.i.i737, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.alq = getelementptr inbounds nuw i8, ptr %i.all, i64 %i.alh ; 2 uses
  %cond.i.i738 = icmp eq i64 %i.alg, 1
  br i1 %cond.i.i738, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.alr = load i8, ptr %.1, align 1
  store i8 %i.alr, ptr %i.alq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740

bb.il:                                            ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alq, ptr nonnull align 1 %.1, i64 %i.alg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740

bb.im:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i735
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.alh, i64 noundef 0, ptr noundef nonnull %.1, i64 noundef %i.alg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740: ; preds = %bb.ii, %bb.ik, %bb.il, %bb.im
  store i64 %i.alk, ptr %i.d, align 8
  %i.als = load ptr, ptr %0, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.alk
  store i8 0, ptr %i.alt, align 1
  %i.alu = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread846

bb.in:                                            ; preds = %bb.fy
  %i.alv = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not322 = icmp eq ptr %i.alv, %i.bq
  br i1 %.not322, label %bb.jl, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.alw = load i8, ptr %i.alv, align 1
  %i.alx = icmp eq i8 %i.alw, 89
  br i1 %i.alx, label %bb.ip, label %bb.jl

bb.ip:                                            ; preds = %bb.io
  %i.aly = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not325 = icmp eq ptr %i.aly, %.3267
  br i1 %.not325, label %bb.ix, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %i.ce, ptr %18, align 8
  store i64 0, ptr %i.cf, align 8
  %i.alz = ptrtoint ptr %i.aly to i64
  %i.ama = ptrtoint ptr %.3267 to i64
  %i.amb = sub i64 %i.alz, %i.ama                 ; 8 uses
  %i.amc = icmp ugt i64 %i.amb, 15
  br i1 %i.amc, label %bb.ir, label %._crit_edge.i.i741

bb.ir:                                            ; preds = %bb.iq
  %i.amd = icmp slt i64 %i.amb, 0
  br i1 %i.amd, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.it:                                            ; preds = %bb.ir
  %i.ame = add nuw i64 %i.amb, 1                  ; 2 uses
  %i.amf = icmp slt i64 %i.ame, 0
  br i1 %i.amf, label %bb.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i742, !prof !14

bb.iu:                                            ; preds = %bb.it
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i742: ; preds = %bb.it
  %i.amg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ame) #20 ; 2 uses
  store ptr %i.amg, ptr %18, align 8
  store i64 %i.amb, ptr %i.ce, align 8
  br label %._crit_edge.i.i741

._crit_edge.i.i741:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i742, %bb.iq
  %i.amh = phi ptr [ %i.amg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i742 ], [ %i.ce, %bb.iq ] ; 3 uses
  switch i64 %i.amb, label %bb.iw [
    i64 1, label %bb.iv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit743
  ]

bb.iv:                                            ; preds = %._crit_edge.i.i741
  %i.ami = load i8, ptr %.3267, align 1
  store i8 %i.ami, ptr %i.amh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit743

bb.iw:                                            ; preds = %._crit_edge.i.i741
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amh, ptr align 1 %.3267, i64 %i.amb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit743

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit743: ; preds = %._crit_edge.i.i741, %bb.iv, %bb.iw
  store i64 %i.amb, ptr %i.cf, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.amb
  store i8 0, ptr %i.amj, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.amk = load ptr, ptr %18, align 8             ; 2 uses
  %i.aml = icmp eq ptr %i.amk, %i.ce
  br i1 %i.aml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit743
  %i.amm = load i64, ptr %i.ce, align 8
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amk, i64 noundef %i.amn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit743, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.ix

bb.ix:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, %bb.ip
  %i.amo = load i64, ptr %5, align 8              ; 4 uses
  %i.amp = icmp slt i64 %i.amo, 0                 ; 2 uses
  br i1 %i.amp, label %bb.iy, label %bb.jb

bb.iy:                                            ; preds = %bb.ix
  %i.amq = icmp eq i64 %i.amo, -9223372036854775808
  br i1 %i.amq, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  store i8 56, ptr %i.bu, align 1
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %.026.i766 = phi ptr [ %i.bu, %bb.iz ], [ %.0.i845.idx.sroa.gep1044, %bb.iy ]
  %.022.i767 = phi i32 [ 2, %bb.iz ], [ 3, %bb.iy ]
  %.1.i768 = phi i64 [ -922337203685477580, %bb.iz ], [ %i.amo, %bb.iy ]
  %i.amr = sub nsw i64 0, %.1.i768
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.ix
  %.127.i747 = phi ptr [ %.026.i766, %bb.ja ], [ %.0.i845.idx.sroa.gep1044, %bb.ix ] ; 2 uses
  %.123.i748 = phi i32 [ %.022.i767, %bb.ja ], [ 4, %bb.ix ] ; 2 uses
  %.2.i749 = phi i64 [ %i.amr, %bb.ja ], [ %i.amo, %bb.ix ]
  %scevgep40.i750 = getelementptr i8, ptr %.127.i747, i64 -2
  %i.ams = add nsw i32 %.123.i748, -2
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jc, %bb.jb
  %indvars.iv42.i751 = phi i32 [ %indvars.iv.next.i758, %bb.jc ], [ %i.ams, %bb.jb ] ; 2 uses
  %indvars.iv.i752 = phi ptr [ %scevgep41.i757, %bb.jc ], [ %scevgep40.i750, %bb.jb ] ; 2 uses
  %.228.i753 = phi ptr [ %i.amx, %bb.jc ], [ %.127.i747, %bb.jb ] ; 2 uses
  %.224.i754 = phi i32 [ %i.amt, %bb.jc ], [ %.123.i748, %bb.jb ] ; 3 uses
  %.3.i755 = phi i64 [ %i.amy, %bb.jc ], [ %.2.i749, %bb.jb ] ; 3 uses
  %i.amt = add i32 %.224.i754, -1                 ; 2 uses
  %i.amu = urem i64 %.3.i755, 10
  %i.amv = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.amu
  %i.amw = load i8, ptr %i.amv, align 1
  %i.amx = getelementptr inbounds i8, ptr %.228.i753, i64 -1 ; 3 uses
  store i8 %i.amw, ptr %i.amx, align 1
  %i.amy = udiv i64 %.3.i755, 10
  %.not.i756 = icmp ult i64 %.3.i755, 10
  %scevgep41.i757 = getelementptr i8, ptr %indvars.iv.i752, i64 -1
  %indvars.iv.next.i758 = add i32 %indvars.iv42.i751, -1
  br i1 %.not.i756, label %.preheader.i759, label %bb.jc, !llvm.loop !15

.preheader.i759:                                  ; preds = %bb.jc
  %i.amz = icmp sgt i32 %.224.i754, 1
  br i1 %i.amz, label %.lr.ph.preheader.i763, label %._crit_edge.i760

.lr.ph.preheader.i763:                            ; preds = %.preheader.i759
  %i.ana = getelementptr i8, ptr %.228.i753, i64 -2
  %i.anb = add nsw i32 %.224.i754, -2
  %i.anc = zext nneg i32 %i.anb to i64
  %i.and = sub nsw i64 0, %i.anc
  %scevgep.i764 = getelementptr i8, ptr %i.ana, i64 %i.and
  %i.ane = zext nneg i32 %i.amt to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i764, i8 48, i64 %i.ane, i1 false)
  %i.anf = zext i32 %indvars.iv42.i751 to i64
  %i.ang = sub nsw i64 0, %i.anf
  %scevgep43.i765 = getelementptr i8, ptr %indvars.iv.i752, i64 %i.ang
  br label %._crit_edge.i760

._crit_edge.i760:                                 ; preds = %.lr.ph.preheader.i763, %.preheader.i759
  %.329.lcssa.i761 = phi ptr [ %i.amx, %.preheader.i759 ], [ %scevgep43.i765, %.lr.ph.preheader.i763 ] ; 2 uses
  br i1 %i.amp, label %bb.jd, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit769

bb.jd:                                            ; preds = %._crit_edge.i760
  %i.anh = getelementptr inbounds i8, ptr %.329.lcssa.i761, i64 -1 ; 2 uses
  store i8 45, ptr %i.anh, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit769

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit769: ; preds = %._crit_edge.i760, %bb.jd
  %.4.i762 = phi ptr [ %i.anh, %bb.jd ], [ %.329.lcssa.i761, %._crit_edge.i760 ] ; 5 uses
  %i.ani = ptrtoint ptr %.4.i762 to i64
  %i.anj = sub i64 %i.bv, %i.ani                  ; 5 uses
  %i.ank = load i64, ptr %i.d, align 8            ; 5 uses
  %i.anl = sub i64 9223372036854775807, %i.ank
  %i.anm = icmp ult i64 %i.anl, %i.anj
  br i1 %i.anm, label %bb.je, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i770

bb.je:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit769
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i770: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit769
  %i.ann = add i64 %i.anj, %i.ank                 ; 3 uses
  %i.ano = load ptr, ptr %0, align 8              ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.c
  br i1 %i.anp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i776: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i770
  %i.anq = icmp ult i64 %i.ank, 16
  call void @llvm.assume(i1 %i.anq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i771: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i770
  %i.anr = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i772: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i771, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i776
  %i.ans = phi i64 [ %i.anr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i771 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i776 ]
  %.not.i.i773 = icmp ugt i64 %i.ann, %i.ans
  br i1 %.not.i.i773, label %bb.jj, label %bb.jf

bb.jf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i772
  %.not8.i.i774 = icmp eq ptr %.0.i845.idx.sroa.gep1044, %.4.i762
  br i1 %.not8.i.i774, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ank ; 2 uses
  %cond.i.i775 = icmp eq i64 %i.anj, 1
  br i1 %cond.i.i775, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.anu = load i8, ptr %.4.i762, align 1
  store i8 %i.anu, ptr %i.ant, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777

bb.ji:                                            ; preds = %bb.jg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ant, ptr nonnull align 1 %.4.i762, i64 %i.anj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777

bb.jj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i772
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ank, i64 noundef 0, ptr noundef nonnull %.4.i762, i64 noundef %i.anj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777: ; preds = %bb.jf, %bb.jh, %bb.ji, %bb.jj
  store i64 %i.ann, ptr %i.d, align 8
  %i.anv = load ptr, ptr %0, align 8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.ann
  store i8 0, ptr %i.anw, align 1
  %i.anx = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread846

bb.jk:                                            ; preds = %bb.fy
  %i.any = sext i8 %i.adn to i32
  %isdigittmp = add nsw i32 %i.any, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.jl, label %.thread846

bb.jl:                                            ; preds = %bb.jk, %bb.io, %bb.in
  %21 = sext i8 %i.adn to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %21, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread846, label %.thread859

.thread859:                                       ; preds = %bb.jl, %bb.jn
  %memchr100.i = phi ptr [ %memchr.i, %bb.jn ], [ %memchr95.i, %bb.jl ]
  %.199.i.idx = phi i64 [ %.199.i.add, %bb.jn ], [ 1, %bb.jl ] ; 2 uses
  %.05397.i = phi i32 [ %i.aoh, %bb.jn ], [ 0, %bb.jl ] ; 3 uses
  %i.anz = ptrtoint ptr %memchr100.i to i64
  %i.aoa = trunc i64 %i.anz to i32
  %i.aob = sub i32 %i.aoa, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.aoc = icmp sgt i32 %i.aob, 9
  br i1 %i.aoc, label %select.unfold.i, label %.lr.ph1192

.lr.ph1192:                                       ; preds = %.thread859
  %i.aod = icmp slt i32 %.05397.i, -214748364
  br i1 %i.aod, label %.thread846, label %bb.jm

bb.jm:                                            ; preds = %.lr.ph1192
  %i.aoe = mul nsw i32 %.05397.i, 10              ; 2 uses
  %i.aof = or disjoint i32 %i.aob, -2147483648
  %i.aog = icmp slt i32 %i.aoe, %i.aof
  br i1 %i.aog, label %.thread846, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aoh = sub nsw i32 %i.aoe, %i.aob             ; 2 uses
  %.199.i.add = add nuw nsw i64 %.199.i.idx, 1    ; 3 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.199.i.add
  %i.aoj = load i8, ptr %i.aoi, align 1
  %i.aok = sext i8 %i.aoj to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aok, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.thread859

select.unfold.i:                                  ; preds = %bb.jn, %.thread859
  %.255.ph.i = phi i32 [ %i.aoh, %bb.jn ], [ %.05397.i, %.thread859 ] ; 4 uses
  %.3.ph.i.idx = phi i64 [ %.199.i.add, %bb.jn ], [ %.199.i.idx, %.thread859 ] ; 2 uses
  %.3.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.3.ph.i.idx ; 4 uses
  %i.aol = icmp eq i64 %.3.ph.i.idx, 1
  %22 = icmp eq i32 %.255.ph.i, -2147483648
  %or.cond80.i = select i1 %i.aol, i1 true, i1 %22
  br i1 %or.cond80.i, label %.thread846, label %bb.jo

bb.jo:                                            ; preds = %select.unfold.i
  %i.aom = sub nsw i32 0, %.255.ph.i              ; 5 uses
  %or.cond77.i = icmp ugt i32 %i.aom, 1024
  br i1 %or.cond77.i, label %.thread846, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit: ; preds = %bb.jo
  %23 = load i8, ptr %.3.ph.i.ptr, align 1
  switch i8 %23, label %.thread846 [
    i8 83, label %bb.jp
    i8 102, label %bb.jp
  ]

bb.jp:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit
  %i.aon = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not324 = icmp eq ptr %i.aon, %.3267
  br i1 %.not324, label %bb.jx, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.cp, ptr %19, align 8
  store i64 0, ptr %i.cq, align 8
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = ptrtoint ptr %.3267 to i64
  %i.aoq = sub i64 %i.aoo, %i.aop                 ; 8 uses
  %i.aor = icmp ugt i64 %i.aoq, 15
  br i1 %i.aor, label %bb.jr, label %._crit_edge.i.i783

bb.jr:                                            ; preds = %bb.jq
  %i.aos = icmp slt i64 %i.aoq, 0
  br i1 %i.aos, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.jt:                                            ; preds = %bb.jr
  %i.aot = add nuw i64 %i.aoq, 1                  ; 2 uses
  %i.aou = icmp slt i64 %i.aot, 0
  br i1 %i.aou, label %bb.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784, !prof !14

bb.ju:                                            ; preds = %bb.jt
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784: ; preds = %bb.jt
  %i.aov = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aot) #20 ; 2 uses
  store ptr %i.aov, ptr %19, align 8
  store i64 %i.aoq, ptr %i.cp, align 8
  br label %._crit_edge.i.i783

._crit_edge.i.i783:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784, %bb.jq
  %i.aow = phi ptr [ %i.aov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i784 ], [ %i.cp, %bb.jq ] ; 3 uses
  switch i64 %i.aoq, label %bb.jw [
    i64 1, label %bb.jv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785
  ]

bb.jv:                                            ; preds = %._crit_edge.i.i783
  %i.aox = load i8, ptr %.3267, align 1
  store i8 %i.aox, ptr %i.aow, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785

bb.jw:                                            ; preds = %._crit_edge.i.i783
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aow, ptr align 1 %.3267, i64 %i.aoq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785: ; preds = %._crit_edge.i.i783, %bb.jv, %bb.jw
  store i64 %i.aoq, ptr %i.cq, align 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.aoq
  store i8 0, ptr %i.aoy, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.aoz = load ptr, ptr %19, align 8             ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, %i.cp
  br i1 %i.apa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785
  %i.apb = load i64, ptr %i.cp, align 8
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit785, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.jx

bb.jx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, %bb.jp
  %.not944 = icmp eq i32 %.255.ph.i, 0
  br i1 %.not944, label %bb.kj, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.apd = icmp samesign ugt i32 %i.aom, 18
  br i1 %i.apd, label %.thread863, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ape = icmp samesign ugt i32 %i.aom, 15
  br i1 %i.ape, label %.thread863, label %bb.ka

.thread863:                                       ; preds = %bb.jy, %bb.jz
  %.0838866 = phi i32 [ %i.aom, %bb.jz ], [ 18, %bb.jy ] ; 2 uses
  %i.apf = load i64, ptr %3, align 8
  %i.apg = zext nneg i32 %.0838866 to i64
  %i.aph = getelementptr [8 x i8], ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.apg
  %i.api = getelementptr i8, ptr %i.aph, i64 -120
  %i.apj = load i64, ptr %i.api, align 8
  %i.apk = mul nsw i64 %i.apj, %i.apf
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.apl = load i64, ptr %3, align 8
  %24 = sext i32 %.255.ph.i to i64
  %25 = getelementptr [8 x i8], ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %24
  %26 = getelementptr i8, ptr %25, i64 120
  %i.apm = load i64, ptr %26, align 8
  %i.apn = sdiv i64 %i.apl, %i.apm
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %.thread863
  %.0838865 = phi i32 [ %.0838866, %.thread863 ], [ %i.aom, %bb.ka ] ; 3 uses
  %i.apo = phi i64 [ %i.apk, %.thread863 ], [ %i.apn, %bb.ka ] ; 4 uses
  %i.app = icmp slt i64 %i.apo, 0                 ; 2 uses
  br i1 %i.app, label %bb.kc, label %bb.kf

bb.kc:                                            ; preds = %bb.kb
  %i.apq = add nsw i32 %.0838865, -1
  %i.apr = icmp eq i64 %i.apo, -9223372036854775808
  br i1 %i.apr, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.aps = add nsw i32 %.0838865, -2
  store i8 56, ptr %i.bu, align 1
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.026.i808 = phi ptr [ %i.bu, %bb.kd ], [ %.0.i845.idx.sroa.gep1044, %bb.kc ]
  %.022.i809 = phi i32 [ %i.aps, %bb.kd ], [ %i.apq, %bb.kc ]
  %.1.i810 = phi i64 [ -922337203685477580, %bb.kd ], [ %i.apo, %bb.kc ]
  %i.apt = sub nsw i64 0, %.1.i810
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kb
  %.127.i789 = phi ptr [ %.026.i808, %bb.ke ], [ %.0.i845.idx.sroa.gep1044, %bb.kb ] ; 2 uses
  %.123.i790 = phi i32 [ %.022.i809, %bb.ke ], [ %.0838865, %bb.kb ] ; 2 uses
  %.2.i791 = phi i64 [ %i.apt, %bb.ke ], [ %i.apo, %bb.kb ]
  %scevgep40.i792 = getelementptr i8, ptr %.127.i789, i64 -2
  %i.apu = add nsw i32 %.123.i790, -2
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kg, %bb.kf
  %indvars.iv42.i793 = phi i32 [ %indvars.iv.next.i800, %bb.kg ], [ %i.apu, %bb.kf ] ; 2 uses
  %indvars.iv.i794 = phi ptr [ %scevgep41.i799, %bb.kg ], [ %scevgep40.i792, %bb.kf ] ; 2 uses
  %.228.i795 = phi ptr [ %i.apz, %bb.kg ], [ %.127.i789, %bb.kf ] ; 2 uses
  %.224.i796 = phi i32 [ %i.apv, %bb.kg ], [ %.123.i790, %bb.kf ] ; 3 uses
  %.3.i797 = phi i64 [ %i.aqa, %bb.kg ], [ %.2.i791, %bb.kf ] ; 3 uses
  %i.apv = add i32 %.224.i796, -1                 ; 2 uses
  %i.apw = urem i64 %.3.i797, 10
  %i.apx = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apw
  %i.apy = load i8, ptr %i.apx, align 1
  %i.apz = getelementptr inbounds i8, ptr %.228.i795, i64 -1 ; 3 uses
  store i8 %i.apy, ptr %i.apz, align 1
  %i.aqa = udiv i64 %.3.i797, 10
  %.not.i798 = icmp ult i64 %.3.i797, 10
  %scevgep41.i799 = getelementptr i8, ptr %indvars.iv.i794, i64 -1
  %indvars.iv.next.i800 = add i32 %indvars.iv42.i793, -1
  br i1 %.not.i798, label %.preheader.i801, label %bb.kg, !llvm.loop !15

.preheader.i801:                                  ; preds = %bb.kg
  %i.aqb = icmp sgt i32 %.224.i796, 1
  br i1 %i.aqb, label %.lr.ph.preheader.i805, label %._crit_edge.i802

.lr.ph.preheader.i805:                            ; preds = %.preheader.i801
  %i.aqc = getelementptr i8, ptr %.228.i795, i64 -2
  %i.aqd = add nsw i32 %.224.i796, -2
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = sub nsw i64 0, %i.aqe
  %scevgep.i806 = getelementptr i8, ptr %i.aqc, i64 %i.aqf
  %i.aqg = zext nneg i32 %i.apv to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i806, i8 48, i64 %i.aqg, i1 false)
  %i.aqh = zext i32 %indvars.iv42.i793 to i64
  %i.aqi = sub nsw i64 0, %i.aqh
  %scevgep43.i807 = getelementptr i8, ptr %indvars.iv.i794, i64 %i.aqi
  br label %._crit_edge.i802

._crit_edge.i802:                                 ; preds = %.lr.ph.preheader.i805, %.preheader.i801
  %.329.lcssa.i803 = phi ptr [ %i.apz, %.preheader.i801 ], [ %scevgep43.i807, %.lr.ph.preheader.i805 ] ; 2 uses
  br i1 %i.app, label %bb.kh, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811

bb.kh:                                            ; preds = %._crit_edge.i802
  %i.aqj = getelementptr inbounds i8, ptr %.329.lcssa.i803, i64 -1 ; 2 uses
  store i8 45, ptr %i.aqj, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811: ; preds = %._crit_edge.i802, %bb.kh
  %.4.i804 = phi ptr [ %i.aqj, %bb.kh ], [ %.329.lcssa.i803, %._crit_edge.i802 ] ; 2 uses
  %i.aqk = load i8, ptr %.3.ph.i.ptr, align 1
  %i.aql = icmp eq i8 %i.aqk, 83
  br i1 %i.aql, label %bb.ki, label %.thread867

bb.ki:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811
  %i.aqm = getelementptr inbounds i8, ptr %.4.i804, i64 -1 ; 2 uses
  store i8 46, ptr %i.aqm, align 1
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.jx
  %.2.ph = phi ptr [ %.0.i845.idx.sroa.gep1044, %bb.jx ], [ %i.aqm, %bb.ki ] ; 3 uses
  %.pr = load i8, ptr %.3.ph.i.ptr, align 1
  %i.aqn = icmp eq i8 %.pr, 83
  br i1 %i.aqn, label %bb.kk, label %.thread867

bb.kk:                                            ; preds = %bb.kj
  %i.aqo = load i8, ptr %i.i, align 4             ; 2 uses
  %i.aqp = srem i8 %i.aqo, 10
  %i.aqq = sext i8 %i.aqp to i64
  %i.aqr = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aqq
  %i.aqs = load i8, ptr %i.aqr, align 1
  %i.aqt = getelementptr inbounds i8, ptr %.2.ph, i64 -1
  store i8 %i.aqs, ptr %i.aqt, align 1
  %i.aqu = sdiv i8 %i.aqo, 10
  %i.aqv = srem i8 %i.aqu, 10
  %i.aqw = sext i8 %i.aqv to i64
  %i.aqx = getelementptr inbounds i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aqw
  %i.aqy = load i8, ptr %i.aqx, align 1
  %i.aqz = getelementptr inbounds i8, ptr %.2.ph, i64 -2 ; 2 uses
  store i8 %i.aqy, ptr %i.aqz, align 1
  br label %.thread867

.thread867:                                       ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811, %bb.kk, %bb.kj
  %.3 = phi ptr [ %i.aqz, %bb.kk ], [ %.2.ph, %bb.kj ], [ %.4.i804, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit811 ] ; 5 uses
  %i.ara = ptrtoint ptr %.3 to i64
  %i.arb = sub i64 %i.bv, %i.ara                  ; 5 uses
  %i.arc = load i64, ptr %i.d, align 8            ; 5 uses
  %i.ard = sub i64 9223372036854775807, %i.arc
  %i.are = icmp ult i64 %i.ard, %i.arb
  br i1 %i.are, label %bb.kl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812

bb.kl:                                            ; preds = %.thread867
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812: ; preds = %.thread867
  %i.arf = add i64 %i.arb, %i.arc                 ; 3 uses
  %i.arg = load ptr, ptr %0, align 8              ; 2 uses
  %i.arh = icmp eq ptr %i.arg, %i.c
  br i1 %i.arh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812
  %i.ari = icmp ult i64 %i.arc, 16
  call void @llvm.assume(i1 %i.ari)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i812
  %i.arj = load i64, ptr %i.c, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818
  %i.ark = phi i64 [ %i.arj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i813 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i818 ]
  %.not.i.i815 = icmp ugt i64 %i.arf, %i.ark
  br i1 %.not.i.i815, label %bb.kq, label %bb.km

bb.km:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814
  %.not8.i.i816 = icmp eq ptr %.0.i845.idx.sroa.gep1044, %.3
  br i1 %.not8.i.i816, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.arc ; 2 uses
  %cond.i.i817 = icmp eq i64 %i.arb, 1
  br i1 %cond.i.i817, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.arm = load i8, ptr %.3, align 1
  store i8 %i.arm, ptr %i.arl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819

bb.kp:                                            ; preds = %bb.kn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arl, ptr align 1 %.3, i64 %i.arb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819

bb.kq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i814
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.arc, i64 noundef 0, ptr noundef %.3, i64 noundef %i.arb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819: ; preds = %bb.km, %bb.ko, %bb.kp, %bb.kq
  store i64 %i.arf, ptr %i.d, align 8
  %i.arn = load ptr, ptr %0, align 8
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.arf
  store i8 0, ptr %i.aro, align 1
  %i.arp = getelementptr inbounds nuw i8, ptr %.3.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread846

.thread846:                                       ; preds = %.lr.ph1192, %bb.jm, %bb.jl, %bb.gx, %bb.el, %select.unfold.i, %bb.jo, %bb.hk, %bb.em, %bb.fn, %bb.fo, %bb.fa, %bb.en, %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit703, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777, %bb.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit675, %bb.fx, %bb.aa, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit591, %bb.ek
  %.6274 = phi ptr [ %i.adl, %bb.fx ], [ %i.wr, %bb.ek ], [ %i.yu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit591 ], [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613 ], [ %i.adk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit636 ], [ %.2270.lcssa, %bb.aa ], [ %.2270.lcssa, %bb.ab ], [ %.2270.lcssa, %bb.el ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit650 ], [ %i.agq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit675 ], [ %i.aja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit703 ], [ %i.alu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740 ], [ %i.anx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777 ], [ %.2270.lcssa, %bb.em ], [ %i.adl, %bb.jk ], [ %i.adl, %bb.hk ], [ %i.arp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819 ], [ %i.adl, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit ], [ %.2270.lcssa, %bb.fb ], [ %.2270.lcssa, %bb.en ], [ %.2270.lcssa, %bb.fa ], [ %.2270.lcssa, %bb.fo ], [ %.2270.lcssa, %bb.fn ], [ %i.adl, %bb.gx ], [ %i.adl, %bb.jo ], [ %i.adl, %select.unfold.i ], [ %i.adl, %bb.jl ], [ %i.adl, %bb.jm ], [ %i.adl, %.lr.ph1192 ] ; 2 uses
  %.6 = phi ptr [ %.3267, %bb.fx ], [ %i.wr, %bb.ek ], [ %i.yu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit591 ], [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit613 ], [ %i.adk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit636 ], [ %.3267, %bb.aa ], [ %.3267, %bb.ab ], [ %.3267, %bb.el ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit650 ], [ %i.agq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit675 ], [ %i.aja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit703 ], [ %i.alu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit740 ], [ %i.anx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit777 ], [ %.3267, %bb.em ], [ %.3267, %bb.jk ], [ %.3267, %bb.hk ], [ %i.arp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit819 ], [ %.3267, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit ], [ %.3267, %bb.fb ], [ %.3267, %bb.en ], [ %.3267, %bb.fa ], [ %.3267, %bb.fo ], [ %.3267, %bb.fn ], [ %.3267, %bb.gx ], [ %.3267, %bb.jo ], [ %.3267, %select.unfold.i ], [ %.3267, %bb.jl ], [ %.3267, %bb.jm ], [ %.3267, %.lr.ph1192 ] ; 2 uses
  %.not = icmp eq ptr %.6274, %i.bq
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread846, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit
  %.0264.lcssa = phi ptr [ %i.bo, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit ], [ %.6, %.thread846 ] ; 4 uses
  %.not308 = icmp eq ptr %i.bq, %.0264.lcssa
  br i1 %.not308, label %bb.ky, label %bb.kr

bb.kr:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.arq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.arq, ptr %20, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.arr, align 8
  %i.ars = ptrtoint ptr %i.bq to i64
  %i.art = ptrtoint ptr %.0264.lcssa to i64
  %i.aru = sub i64 %i.ars, %i.art                 ; 8 uses
  %i.arv = icmp ugt i64 %i.aru, 15
  br i1 %i.arv, label %bb.ks, label %._crit_edge.i.i820

bb.ks:                                            ; preds = %bb.kr
  %i.arw = icmp slt i64 %i.aru, 0
  br i1 %i.arw, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.ku:                                            ; preds = %bb.ks
  %i.arx = add nuw i64 %i.aru, 1                  ; 2 uses
  %i.ary = icmp slt i64 %i.arx, 0
  br i1 %i.ary, label %bb.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i821, !prof !14

bb.kv:                                            ; preds = %bb.ku
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i821: ; preds = %bb.ku
  %i.arz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arx) #20 ; 2 uses
  store ptr %i.arz, ptr %20, align 8
  store i64 %i.aru, ptr %i.arq, align 8
  br label %._crit_edge.i.i820

._crit_edge.i.i820:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i821, %bb.kr
  %i.asa = phi ptr [ %i.arz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i821 ], [ %i.arq, %bb.kr ] ; 3 uses
  switch i64 %i.aru, label %bb.kx [
    i64 1, label %bb.kw
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit822
  ]

bb.kw:                                            ; preds = %._crit_edge.i.i820
  %i.asb = load i8, ptr %.0264.lcssa, align 1
  store i8 %i.asb, ptr %i.asa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit822

bb.kx:                                            ; preds = %._crit_edge.i.i820
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.asa, ptr align 1 %.0264.lcssa, i64 %i.aru, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit822

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit822: ; preds = %._crit_edge.i.i820, %bb.kw, %bb.kx
  store i64 %i.aru, ptr %i.arr, align 8
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.aru
  store i8 0, ptr %i.asc, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.asd = load ptr, ptr %20, align 8             ; 2 uses
  %i.ase = icmp eq ptr %i.asd, %i.arq
  br i1 %i.ase, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit822
  %i.asf = load i64, ptr %i.arq, align 8
  %i.asg = add i64 %i.asf, 1
  call void @_ZdlPvm(ptr noundef %i.asd, i64 noundef %i.asg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit822, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i823
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.ky

bb.ky:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit825, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1
  store i8 %i.o, ptr %i.k, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = load i64, ptr %i.b, align 8
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8
  store i64 %.0, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4absl13time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS3_3_V212system_clockENS3_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind writable sret(%"struct.absl::time_internal::cctz::time_zone::absolute_lookup") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = shl i64 %i.b, 1                          ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit17.2, %_ZNSt6vectorIcSaIcEED2Ev.exit17.1, %_ZNSt6vectorIcSaIcEED2Ev.exit17, %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 5 uses
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = add nsw i64 %i.c, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %1, align 8
  %i.i = tail call i64 @strftime(ptr noundef nonnull %i.e, i64 noundef %i.c, ptr noundef %i.h, ptr noundef nonnull %2) #18 ; 2 uses
  %.not15 = icmp eq i64 %i.i, 0
  br i1 %.not15, label %_ZNSt6vectorIcSaIcEED2Ev.exit17, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.lcssa31 = phi ptr [ %i.e, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ab, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.aj, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ar, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 4 uses
  %.lcssa29 = phi i64 [ %i.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.af, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.an, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.av, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 5 uses
  %.lcssa27 = phi i64 [ %i.c, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.z, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.ah, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ap, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  %i.l = sub i64 9223372036854775807, %i.k
end_hunk_2
