inline.NumInlined: 496
inline.NumDeleted: 172
begin_hunk_0_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
  %i.am = sext i32 %i.al to i64
  %i.an = add nuw nsw i64 %i.af, %i.ae
  %i.ao = sub nuw nsw i64 %i.an, %.zext.i.i
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
  %.not963 = icmp samesign eq i64 %i.bp, 0
  br i1 %.not963, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 25 uses
  %i.bv = ptrtoint ptr %.0.i791.idx.sroa.gep990 to i64 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 32 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 22 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 19 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 18 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i430 = getelementptr inbounds nuw i8, ptr %9, i64 8
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
  %scevgep987 = getelementptr i8, ptr %i.a, i64 %i.cx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread792
  %.0264965 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6, %.thread792 ] ; 7 uses
  %.0268964 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6274, %.thread792 ] ; 6 uses
  %scevgep = getelementptr i8, ptr %.0268964, i64 %i.cw
  %.0268964982 = ptrtoint ptr %.0268964 to i64
  %i.cy = sub i64 0, %.0268964982
  %scevgep983 = getelementptr i8, ptr %scevgep, i64 %i.cy
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %.1269955 = phi ptr [ %.0268964, %.preheader ], [ %i.da, %bb.h ] ; 3 uses
  %i.cz = load i8, ptr %.1269955, align 1
  %.not310 = icmp eq i8 %i.cz, 37
  br i1 %.not310, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %.1269955, i64 1 ; 2 uses
  %.not309 = icmp eq ptr %i.da, %i.bq
  br i1 %.not309, label %.critedge, label %bb.g, !llvm.loop !10

.critedge:                                        ; preds = %bb.h, %bb.g
  %.1269.lcssa = phi ptr [ %scevgep983, %bb.h ], [ %.1269955, %bb.g ] ; 9 uses
  %.1269.lcssa985 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not311 = icmp ne ptr %.1269.lcssa, %.0268964
  %i.db = icmp eq ptr %.0264965, %.0268964
  %or.cond = select i1 %.not311, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.i, label %bb.q

bb.i:                                             ; preds = %.critedge
  %i.dc = ptrtoint ptr %.0264965 to i64
  %i.dd = sub i64 %.1269.lcssa985, %i.dc          ; 5 uses
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
  %i.dj = icmp eq ptr %i.di, %i.c                 ; 2 uses
  br i1 %i.dj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dk = icmp ult i64 %i.de, 16
  call void @llvm.assume(i1 %i.dk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dl = load i64, ptr %i.c, align 8
  %i.dm = select i1 %i.dj, i64 15, i64 %i.dl
  %.not.i.i = icmp ugt i64 %i.dh, %i.dm
  br i1 %.not.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq ptr %.1269.lcssa, %.0264965
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.de ; 2 uses
  %cond.i.i = icmp eq i64 %i.dd, 1
  br i1 %cond.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.do = load i8, ptr %.0264965, align 1
  store i8 %i.do, ptr %i.dn, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %.0264965, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.de, i64 noundef 0, ptr noundef %.0264965, i64 noundef %i.dd)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.l, %bb.n, %bb.o, %bb.p
  store i64 %i.dh, ptr %i.d, align 8
  %i.dp = load ptr, ptr %0, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  store i8 0, ptr %i.dq, align 1
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %.critedge
  %.1265 = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.0264965, %.critedge ] ; 7 uses
  %.0263 = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.0268964, %.critedge ] ; 2 uses
  %.not312956 = icmp eq ptr %.1269.lcssa, %i.bq
  br i1 %.not312956, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %scevgep984 = getelementptr i8, ptr %.1269.lcssa, i64 %i.cw
  %i.dr = sub i64 0, %.1269.lcssa985
  %scevgep986 = getelementptr i8, ptr %scevgep984, i64 %i.dr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.2270957 = phi ptr [ %i.du, %bb.r ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.ds = load i8, ptr %.2270957, align 1
  %i.dt = icmp eq i8 %i.ds, 37                    ; 3 uses
  br i1 %i.dt, label %bb.r, label %.critedge2

bb.r:                                             ; preds = %.lr.ph
  %i.du = getelementptr inbounds nuw i8, ptr %.2270957, i64 1 ; 2 uses
  %.not312 = icmp eq ptr %i.du, %i.bq
  br i1 %.not312, label %.critedge2, label %.lr.ph, !llvm.loop !12

.critedge2:                                       ; preds = %.lr.ph, %bb.r, %bb.q
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %bb.q ], [ %scevgep986, %bb.r ], [ %.2270957, %.lr.ph ] ; 42 uses
  %.not312.lcssa = phi i1 [ true, %bb.q ], [ %i.dt, %bb.r ], [ %i.dt, %.lr.ph ] ; 2 uses
  %.not313 = icmp ne ptr %.2270.lcssa, %.0263
  %i.dv = icmp eq ptr %.1265, %.0263
  %or.cond336 = select i1 %.not313, i1 %i.dv, i1 false
  br i1 %or.cond336, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %.critedge2
  %i.dw = ptrtoint ptr %.2270.lcssa to i64
  %i.dx = ptrtoint ptr %.1265 to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 1                       ; 6 uses
  %i.ea = load i64, ptr %i.d, align 8             ; 5 uses
  %i.eb = sub i64 9223372036854775807, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dz
  br i1 %i.ec, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338: ; preds = %bb.s
  %i.ed = add i64 %i.ea, %i.dz                    ; 3 uses
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.c                 ; 2 uses
  br i1 %i.ef, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i339

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338
  %i.eg = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i339: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i338
  %i.eh = load i64, ptr %i.c, align 8
  %i.ei = select i1 %i.ef, i64 15, i64 %i.eh
  %.not.i.i340 = icmp ugt i64 %i.ed, %i.ei
  br i1 %.not.i.i340, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i339
  %.not8.i.i341 = icmp eq i64 %i.dz, 0
  br i1 %.not8.i.i341, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ea ; 2 uses
  %cond.i.i342 = icmp eq i64 %i.dz, 1
  br i1 %cond.i.i342, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ek = load i8, ptr %.1265, align 1
  store i8 %i.ek, ptr %i.ej, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %.1265, i64 %i.dz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i339
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ea, i64 noundef 0, ptr noundef %.1265, i64 noundef %i.dz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343: ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  store i64 %i.ed, ptr %i.d, align 8
  %i.el = load ptr, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  store i8 0, ptr %i.em, align 1
  %i.en = and i64 %i.dy, -2
  %i.eo = getelementptr inbounds nuw i8, ptr %.1265, i64 %i.en ; 4 uses
  %.not314 = icmp ne ptr %i.eo, %.2270.lcssa
  %or.cond337 = and i1 %.not312.lcssa, %.not314
  br i1 %or.cond337, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = load i64, ptr %i.d, align 8             ; 4 uses
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %i.et = load ptr, ptr %0, align 8               ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.c                 ; 2 uses
  br i1 %i.eu, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ev = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ev)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.ab, %bb.aa
  %i.ew = load i64, ptr %i.c, align 8
  %i.ex = select i1 %i.eu, i64 15, i64 %i.ew
  %i.ey = icmp ugt i64 %i.es, %i.ex
  br i1 %i.ey, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.er, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.ac
  %i.ez = phi ptr [ %.pre.i, %bb.ac ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  store i8 %i.eq, ptr %i.fa, align 1
  store i64 %i.es, ptr %i.d, align 8
  %i.fb = load ptr, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.es
  store i8 0, ptr %i.fc, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %.critedge2
  %.3267 = phi ptr [ %.1265, %.critedge2 ], [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit343 ] ; 54 uses
  br i1 %.not312.lcssa, label %.thread792, label %bb.ae, !llvm.loop !13

bb.ae:                                            ; preds = %bb.ad
  %i.fd = ptrtoint ptr %.2270.lcssa to i64
  %i.fe = sub i64 %i.fd, %.1269.lcssa985
  %i.ff = and i64 %i.fe, 1
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.thread792, label %bb.af, !llvm.loop !13

bb.af:                                            ; preds = %bb.ae
  %i.fh = load i8, ptr %.2270.lcssa, align 1      ; 3 uses
  %i.fi = sext i8 %i.fh to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fi, i64 18)
  %.not315 = icmp eq ptr %memchr, null
  br i1 %.not315, label %bb.fe, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not334 = icmp eq ptr %i.fj, %.3267
  br i1 %.not334, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.bs, ptr %7, align 8
  store i64 0, ptr %i.bt, align 8
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %.3267 to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 8 uses
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %bb.ai, label %._crit_edge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.fo = icmp slt i64 %i.fm, 0
  br i1 %i.fo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.fp = add nuw i64 %i.fm, 1                    ; 2 uses
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !14

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ak
  %i.fr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #20 ; 2 uses
  store ptr %i.fr, ptr %7, align 8
  store i64 %i.fm, ptr %i.bs, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.ah
  %i.fs = phi ptr [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.bs, %bb.ah ] ; 3 uses
  switch i64 %i.fm, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.ft = load i8, ptr %.3267, align 1
  store i8 %i.ft, ptr %i.fs, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.an:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr align 1 %.3267, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.am, %bb.an
  store i64 %i.fm, ptr %i.bt, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm
  store i8 0, ptr %i.fu, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.fv = load ptr, ptr %7, align 8               ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.bs
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  %i.fx = load i64, ptr %i.bs, align 8
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.pre = load i8, ptr %.2270.lcssa, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag
  %i.fz = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fh, %bb.ag ]
  switch i8 %i.fz, label %bb.fd [
    i8 89, label %bb.ap
    i8 109, label %bb.bd
    i8 100, label %bb.bi
    i8 101, label %bb.bi
    i8 70, label %bb.bn
    i8 85, label %bb.cb
    i8 117, label %bb.cg
    i8 87, label %bb.cq
    i8 119, label %bb.cv
    i8 72, label %bb.df
    i8 77, label %bb.dk
    i8 83, label %bb.dp
    i8 84, label %bb.du
    i8 122, label %bb.dz
    i8 90, label %bb.ee
    i8 115, label %bb.em
    i8 37, label %bb.fa
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ga = load i64, ptr %5, align 8               ; 4 uses
  %i.gb = icmp slt i64 %i.ga, 0                   ; 2 uses
  br i1 %i.gb, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.gc = icmp eq i64 %i.ga, -9223372036854775808
  br i1 %i.gc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i8 56, ptr %i.bu, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.026.i = phi ptr [ %i.bu, %bb.ar ], [ %.0.i791.idx.sroa.gep990, %bb.aq ]
  %.022.i = phi i32 [ -2, %bb.ar ], [ -1, %bb.aq ]
  %.1.i = phi i64 [ -922337203685477580, %bb.ar ], [ %i.ga, %bb.aq ]
  %i.gd = sub nsw i64 0, %.1.i
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.127.i = phi ptr [ %.026.i, %bb.as ], [ %.0.i791.idx.sroa.gep990, %bb.ap ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.as ], [ 0, %bb.ap ] ; 2 uses
  %.2.i = phi i64 [ %i.gd, %bb.as ], [ %i.ga, %bb.ap ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.ge = add nsw i32 %.123.i, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.au ], [ %i.ge, %bb.at ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.au ], [ %scevgep40.i, %bb.at ] ; 2 uses
  %.228.i = phi ptr [ %i.gj, %bb.au ], [ %.127.i, %bb.at ] ; 2 uses
  %.224.i = phi i32 [ %i.gf, %bb.au ], [ %.123.i, %bb.at ] ; 3 uses
  %.3.i = phi i64 [ %i.gk, %bb.au ], [ %.2.i, %bb.at ] ; 3 uses
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
  br i1 %.not.i, label %.preheader.i, label %bb.au, !llvm.loop !15

.preheader.i:                                     ; preds = %bb.au
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
  br i1 %i.gb, label %bb.av, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

bb.av:                                            ; preds = %._crit_edge.i
  %i.gt = getelementptr inbounds i8, ptr %.329.lcssa.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gt, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit: ; preds = %._crit_edge.i, %bb.av
  %.4.i = phi ptr [ %i.gt, %bb.av ], [ %.329.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.gu = ptrtoint ptr %.4.i to i64
  %i.gv = sub i64 %i.bv, %i.gu                    ; 5 uses
  %i.gw = load i64, ptr %i.d, align 8             ; 5 uses
  %i.gx = sub i64 9223372036854775807, %i.gw
  %i.gy = icmp ult i64 %i.gx, %i.gv
  br i1 %i.gy, label %bb.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i344

bb.aw:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i344: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit
  %i.gz = add i64 %i.gv, %i.gw                    ; 5 uses
  %i.ha = load ptr, ptr %0, align 8               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
  br i1 %i.aat, label %bb.ge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i568

bb.ge:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i568: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  %i.aau = add nsw i64 %i.aas, 9                  ; 3 uses
  %i.aav = load ptr, ptr %0, align 8              ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.c               ; 2 uses
  br i1 %i.aaw, label %bb.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i569

bb.gf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i568
  %i.aax = icmp ult i64 %i.aas, 16
  call void @llvm.assume(i1 %i.aax)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i569

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i569: ; preds = %bb.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i568
  %i.aay = load i64, ptr %i.c, align 8
  %i.aaz = select i1 %i.aaw, i64 15, i64 %i.aay
  %.not.i.i570 = icmp ugt i64 %i.aau, %i.aaz
  br i1 %.not.i.i570, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i569
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.aas
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.aba, ptr noundef nonnull align 1 dereferenceable(9) %i.ci, i64 9, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit573

bb.gh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i569
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aas, i64 noundef 0, ptr noundef nonnull %i.ci, i64 noundef 9)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit573

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit573: ; preds = %bb.gg, %bb.gh
  store i64 %i.aau, ptr %i.d, align 8
  %i.abb = load ptr, ptr %0, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aau
  store i8 0, ptr %i.abc, align 1
  %i.abd = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread792, !llvm.loop !13

bb.gi:                                            ; preds = %bb.fv
  %i.abe = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  %.not318 = icmp eq ptr %i.abe, %i.bq
  br i1 %.not318, label %.thread792, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = icmp eq i8 %i.abf, 122
  br i1 %i.abg, label %bb.gk, label %.thread792

bb.gk:                                            ; preds = %bb.gj
  %i.abh = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not331 = icmp eq ptr %i.abh, %.3267
  br i1 %.not331, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3267, ptr noundef nonnull %i.abh, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.abi = load ptr, ptr %12, align 8             ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.cr
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %bb.gl
  %i.abk = load i64, ptr %i.cr, align 8
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.gm

bb.gm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, %bb.gk
  %i.abm = load i32, ptr %i.bx, align 8           ; 2 uses
  %i.abn = icmp slt i32 %i.abm, 0
  %spec.select.i577 = select i1 %i.abn, i8 45, i8 43 ; 2 uses
  %spec.select45.i578 = call i32 @llvm.abs.i32(i32 %i.abm, i1 true) ; 5 uses
  %i.abo = urem i32 %spec.select45.i578, 60       ; 2 uses
  %i.abp = udiv i32 %spec.select45.i578, 60
  %i.abq = urem i32 %i.abp, 60                    ; 2 uses
  %.not891 = icmp eq i32 %i.abo, 0
  br i1 %.not891, label %bb.gn, label %.thread

.thread:                                          ; preds = %bb.gm
  %.lhs.trunc58.i587 = trunc nuw nsw i32 %i.abo to i8 ; 2 uses
  %i.abr = urem i8 %.lhs.trunc58.i587, 10
  %i.abs = zext nneg i8 %i.abr to i64
  %i.abt = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.abs
  %i.abu = load i8, ptr %i.abt, align 1
  store i8 %i.abu, ptr %i.bu, align 1
  %i.abv = udiv i8 %.lhs.trunc58.i587, 10
  %i.abw = zext nneg i8 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1
  store i8 %i.aby, ptr %i.by, align 8
  store i8 58, ptr %.0.i791.idx.sroa.gep, align 1
  br label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.abz = icmp samesign ult i32 %spec.select45.i578, 3600
  %i.aca = icmp eq i32 %i.abq, 0                  ; 2 uses
  %or.cond3.i580 = and i1 %i.abz, %i.aca
  %spec.select47.i581 = select i1 %or.cond3.i580, i8 43, i8 %spec.select.i577
  br i1 %i.aca, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit588, label %bb.go

bb.go:                                            ; preds = %.thread, %bb.gn
  %.0.i791.idx.sroa.phi = phi ptr [ %.0.i791.idx.sroa.gep, %.thread ], [ %.0.i791.idx.sroa.gep990, %bb.gn ] ; 2 uses
  %.0.i791.idx.sroa.phi1176 = phi ptr [ %.0.i791.idx.sroa.gep1177, %.thread ], [ %.0.i791.idx.sroa.gep1178, %bb.gn ]
  %.0.i791.idx = phi i64 [ 20, %.thread ], [ 23, %bb.gn ]
  %.lhs.trunc.i586 = trunc nuw nsw i32 %i.abq to i8 ; 2 uses
  %i.acb = urem i8 %.lhs.trunc.i586, 10
  %i.acc = zext nneg i8 %i.acb to i64
  %i.acd = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acc
  %i.ace = load i8, ptr %i.acd, align 1
  %i.acf = getelementptr inbounds i8, ptr %.0.i791.idx.sroa.phi, i64 -1
  store i8 %i.ace, ptr %i.acf, align 1
  %i.acg = udiv i8 %.lhs.trunc.i586, 10
  %i.ach = zext nneg i8 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1
  %i.ack = getelementptr inbounds i8, ptr %.0.i791.idx.sroa.phi, i64 -2
  store i8 %i.acj, ptr %i.ack, align 1
  store i8 58, ptr %.0.i791.idx.sroa.phi1176, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit588

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit588: ; preds = %bb.gn, %bb.go
  %.141.i789 = phi i8 [ %spec.select.i577, %bb.go ], [ %spec.select47.i581, %bb.gn ]
  %.1.i584.idx = phi i64 [ %.0.i791.idx, %bb.go ], [ 26, %bb.gn ] ; 3 uses
  %.1.i584.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i584.idx ; 2 uses
  %i.acl = udiv i32 %spec.select45.i578, 3600
  %i.acm = urem i32 %i.acl, 10
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acn
  %i.acp = load i8, ptr %i.aco, align 1
  %i.acq = getelementptr inbounds i8, ptr %.1.i584.ptr, i64 -1
  store i8 %i.acp, ptr %i.acq, align 1
  %i.acr = udiv i32 %spec.select45.i578, 36000
  %.lhs.trunc56.i585 = trunc nuw i32 %i.acr to i16
  %i.acs = urem i16 %.lhs.trunc56.i585, 10
  %i.act = zext nneg i16 %i.acs to i64
  %i.acu = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.act
  %i.acv = load i8, ptr %i.acu, align 1
  %i.acw = getelementptr inbounds i8, ptr %.1.i584.ptr, i64 -2
  store i8 %i.acv, ptr %i.acw, align 1
  %i.acx = getelementptr i8, ptr %i.a, i64 %.1.i584.idx
  %.ptr = getelementptr i8, ptr %i.acx, i64 -3    ; 3 uses
  store i8 %.141.i789, ptr %.ptr, align 1
  %gepdiff = sub nuw nsw i64 29, %.1.i584.idx     ; 4 uses
  %i.acy = load i64, ptr %i.d, align 8            ; 5 uses
  %i.acz = sub i64 9223372036854775807, %i.acy
  %i.ada = icmp ult i64 %i.acz, %gepdiff
  br i1 %i.ada, label %bb.gp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i589

bb.gp:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit588
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i589: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit588
  %i.adb = add i64 %i.acy, %gepdiff               ; 3 uses
  %i.adc = load ptr, ptr %0, align 8              ; 2 uses
  %i.add = icmp eq ptr %i.adc, %i.c               ; 2 uses
  br i1 %i.add, label %bb.gq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i590

bb.gq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i589
  %i.ade = icmp ult i64 %i.acy, 16
  call void @llvm.assume(i1 %i.ade)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i590

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i590: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i589
  %i.adf = load i64, ptr %i.c, align 8
  %i.adg = select i1 %i.add, i64 15, i64 %i.adf
  %.not.i.i591 = icmp ugt i64 %i.adb, %i.adg
  br i1 %.not.i.i591, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i590
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.acy
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adh, ptr nonnull align 1 %.ptr, i64 %gepdiff, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit594

bb.gs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i590
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.acy, i64 noundef 0, ptr noundef nonnull %.ptr, i64 noundef %gepdiff)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit594: ; preds = %bb.gr, %bb.gs
  store i64 %i.adb, ptr %i.d, align 8
  %i.adi = load ptr, ptr %0, align 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adb
  store i8 0, ptr %i.adj, align 1
  %i.adk = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 4 ; 2 uses
  br label %.thread792, !llvm.loop !13

bb.gt:                                            ; preds = %bb.fe
  %i.adl = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 1 ; 12 uses
  %i.adm = icmp eq ptr %i.adl, %i.bq
  br i1 %i.adm, label %.thread792, label %bb.gu, !llvm.loop !13

bb.gu:                                            ; preds = %bb.gt
  %i.adn = load i8, ptr %i.adl, align 1           ; 4 uses
  switch i8 %i.adn, label %bb.kl [
    i8 84, label %bb.gv
    i8 122, label %bb.hi
    i8 42, label %bb.hv
    i8 52, label %bb.jn
  ]

bb.gv:                                            ; preds = %bb.gu
  %i.ado = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not330 = icmp eq ptr %i.ado, %.3267
  br i1 %.not330, label %bb.hd, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.cn, ptr %14, align 8
  store i64 0, ptr %i.co, align 8
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %.3267 to i64
  %i.adr = sub i64 %i.adp, %i.adq                 ; 8 uses
  %i.ads = icmp ugt i64 %i.adr, 15
  br i1 %i.ads, label %bb.gx, label %._crit_edge.i.i595

bb.gx:                                            ; preds = %bb.gw
  %i.adt = icmp slt i64 %i.adr, 0
  br i1 %i.adt, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.gz:                                            ; preds = %bb.gx
  %i.adu = add nuw i64 %i.adr, 1                  ; 2 uses
  %i.adv = icmp slt i64 %i.adu, 0
  br i1 %i.adv, label %bb.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i596, !prof !14

bb.ha:                                            ; preds = %bb.gz
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i596: ; preds = %bb.gz
  %i.adw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adu) #20 ; 2 uses
  store ptr %i.adw, ptr %14, align 8
  store i64 %i.adr, ptr %i.cn, align 8
  br label %._crit_edge.i.i595

._crit_edge.i.i595:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i596, %bb.gw
  %i.adx = phi ptr [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i596 ], [ %i.cn, %bb.gw ] ; 3 uses
  switch i64 %i.adr, label %bb.hc [
    i64 1, label %bb.hb
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit597
  ]

bb.hb:                                            ; preds = %._crit_edge.i.i595
  %i.ady = load i8, ptr %.3267, align 1
  store i8 %i.ady, ptr %i.adx, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit597

bb.hc:                                            ; preds = %._crit_edge.i.i595
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.adx, ptr align 1 %.3267, i64 %i.adr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit597

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit597: ; preds = %._crit_edge.i.i595, %bb.hb, %bb.hc
  store i64 %i.adr, ptr %i.co, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.adr
  store i8 0, ptr %i.adz, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.aea = load ptr, ptr %14, align 8             ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.cn
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit597
  %i.aec = load i64, ptr %i.cn, align 8
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit597, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.hd

bb.hd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, %bb.gv
  %i.aee = load i64, ptr %i.d, align 8            ; 5 uses
  %i.aef = icmp eq i64 %i.aee, 9223372036854775807
  br i1 %i.aef, label %bb.he, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i601

bb.he:                                            ; preds = %bb.hd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i601: ; preds = %bb.hd
  %i.aeg = add nsw i64 %i.aee, 1                  ; 3 uses
  %i.aeh = load ptr, ptr %0, align 8              ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.c               ; 2 uses
  br i1 %i.aei, label %bb.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i602

bb.hf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i601
  %i.aej = icmp ult i64 %i.aee, 16
  call void @llvm.assume(i1 %i.aej)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i602

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i602: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i601
  %i.aek = load i64, ptr %i.c, align 8
  %i.ael = select i1 %i.aei, i64 15, i64 %i.aek
  %.not.i.i603 = icmp ugt i64 %i.aeg, %i.ael
  br i1 %.not.i.i603, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i602
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aee
  store i8 84, ptr %i.aem, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit606

bb.hh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i602
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aee, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit606: ; preds = %bb.hg, %bb.hh
  store i64 %i.aeg, ptr %i.d, align 8
  %i.aen = load ptr, ptr %0, align 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aeg
  store i8 0, ptr %i.aeo, align 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  br label %.thread792

bb.hi:                                            ; preds = %bb.gu
  %i.aeq = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not329 = icmp eq ptr %i.aeq, %.3267
  br i1 %.not329, label %bb.hq, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.cl, ptr %15, align 8
  store i64 0, ptr %i.cm, align 8
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = ptrtoint ptr %.3267 to i64
  %i.aet = sub i64 %i.aer, %i.aes                 ; 8 uses
  %i.aeu = icmp ugt i64 %i.aet, 15
  br i1 %i.aeu, label %bb.hk, label %._crit_edge.i.i607

bb.hk:                                            ; preds = %bb.hj
  %i.aev = icmp slt i64 %i.aet, 0
  br i1 %i.aev, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.hm:                                            ; preds = %bb.hk
  %i.aew = add nuw i64 %i.aet, 1                  ; 2 uses
  %i.aex = icmp slt i64 %i.aew, 0
  br i1 %i.aex, label %bb.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i608, !prof !14

bb.hn:                                            ; preds = %bb.hm
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i608: ; preds = %bb.hm
  %i.aey = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aew) #20 ; 2 uses
  store ptr %i.aey, ptr %15, align 8
  store i64 %i.aet, ptr %i.cl, align 8
  br label %._crit_edge.i.i607

._crit_edge.i.i607:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i608, %bb.hj
  %i.aez = phi ptr [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i608 ], [ %i.cl, %bb.hj ] ; 3 uses
  switch i64 %i.aet, label %bb.hp [
    i64 1, label %bb.ho
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit609
  ]

bb.ho:                                            ; preds = %._crit_edge.i.i607
  %i.afa = load i8, ptr %.3267, align 1
  store i8 %i.afa, ptr %i.aez, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit609

bb.hp:                                            ; preds = %._crit_edge.i.i607
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aez, ptr align 1 %.3267, i64 %i.aet, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit609: ; preds = %._crit_edge.i.i607, %bb.ho, %bb.hp
  store i64 %i.aet, ptr %i.cm, align 8
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aet
  store i8 0, ptr %i.afb, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.afc = load ptr, ptr %15, align 8             ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.cl
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit609
  %i.afe = load i64, ptr %i.cl, align 8
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.hq

bb.hq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, %bb.hi
  %i.afg = load i32, ptr %i.bx, align 8           ; 2 uses
  %i.afh = icmp sgt i32 %i.afg, -1
  %spec.select45.i614 = call i32 @llvm.abs.i32(i32 %i.afg, i1 true) ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN4absl13time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSB_3_V212system_clockENSB_8durationIlSt5ratioILl1ELl1EEEEEERKNSF_IlSG_ILl1ELl1000000000000000EEEERKNS1_9time_zoneE:bb.a
bb.is:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, %bb.ik
  %i.ajs = load i64, ptr %3, align 8              ; 4 uses
  %i.ajt = icmp slt i64 %i.ajs, 0                 ; 2 uses
  br i1 %i.ajt, label %bb.it, label %bb.iw

bb.it:                                            ; preds = %bb.is
  %i.aju = icmp eq i64 %i.ajs, -9223372036854775808
  br i1 %i.aju, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  store i8 56, ptr %i.bu, align 1
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %.026.i681 = phi ptr [ %i.bu, %bb.iu ], [ %.0.i791.idx.sroa.gep990, %bb.it ]
  %.022.i682 = phi i32 [ 13, %bb.iu ], [ 14, %bb.it ]
  %.1.i683 = phi i64 [ -922337203685477580, %bb.iu ], [ %i.ajs, %bb.it ]
  %i.ajv = sub nsw i64 0, %.1.i683
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.is
  %.127.i662 = phi ptr [ %.026.i681, %bb.iv ], [ %.0.i791.idx.sroa.gep990, %bb.is ] ; 2 uses
  %.123.i663 = phi i32 [ %.022.i682, %bb.iv ], [ 15, %bb.is ] ; 2 uses
  %.2.i664 = phi i64 [ %i.ajv, %bb.iv ], [ %i.ajs, %bb.is ]
  %scevgep40.i665 = getelementptr i8, ptr %.127.i662, i64 -2
  %i.ajw = add nsw i32 %.123.i663, -2
  br label %bb.ix

bb.ix:                                            ; preds = %bb.ix, %bb.iw
  %indvars.iv42.i666 = phi i32 [ %indvars.iv.next.i673, %bb.ix ], [ %i.ajw, %bb.iw ] ; 2 uses
  %indvars.iv.i667 = phi ptr [ %scevgep41.i672, %bb.ix ], [ %scevgep40.i665, %bb.iw ] ; 2 uses
  %.228.i668 = phi ptr [ %i.akb, %bb.ix ], [ %.127.i662, %bb.iw ] ; 2 uses
  %.224.i669 = phi i32 [ %i.ajx, %bb.ix ], [ %.123.i663, %bb.iw ] ; 3 uses
  %.3.i670 = phi i64 [ %i.akc, %bb.ix ], [ %.2.i664, %bb.iw ] ; 3 uses
  %i.ajx = add i32 %.224.i669, -1                 ; 2 uses
  %i.ajy = urem i64 %.3.i670, 10
  %i.ajz = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajy
  %i.aka = load i8, ptr %i.ajz, align 1
  %i.akb = getelementptr inbounds i8, ptr %.228.i668, i64 -1 ; 3 uses
  store i8 %i.aka, ptr %i.akb, align 1
  %i.akc = udiv i64 %.3.i670, 10
  %.not.i671 = icmp ult i64 %.3.i670, 10
  %scevgep41.i672 = getelementptr i8, ptr %indvars.iv.i667, i64 -1
  %indvars.iv.next.i673 = add i32 %indvars.iv42.i666, -1
  br i1 %.not.i671, label %.preheader.i674, label %bb.ix, !llvm.loop !15

.preheader.i674:                                  ; preds = %bb.ix
  %i.akd = icmp sgt i32 %.224.i669, 1
  br i1 %i.akd, label %.lr.ph.preheader.i678, label %._crit_edge.i675

.lr.ph.preheader.i678:                            ; preds = %.preheader.i674
  %i.ake = getelementptr i8, ptr %.228.i668, i64 -2
  %i.akf = add nsw i32 %.224.i669, -2
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = sub nsw i64 0, %i.akg
  %scevgep.i679 = getelementptr i8, ptr %i.ake, i64 %i.akh
  %i.aki = zext nneg i32 %i.ajx to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i679, i8 48, i64 %i.aki, i1 false)
  %i.akj = zext i32 %indvars.iv42.i666 to i64
  %i.akk = sub nsw i64 0, %i.akj
  %scevgep43.i680 = getelementptr i8, ptr %indvars.iv.i667, i64 %i.akk
  br label %._crit_edge.i675

._crit_edge.i675:                                 ; preds = %.lr.ph.preheader.i678, %.preheader.i674
  %.329.lcssa.i676 = phi ptr [ %i.akb, %.preheader.i674 ], [ %scevgep43.i680, %.lr.ph.preheader.i678 ] ; 2 uses
  br i1 %i.ajt, label %bb.iy, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684

bb.iy:                                            ; preds = %._crit_edge.i675
  %i.akl = getelementptr inbounds i8, ptr %.329.lcssa.i676, i64 -1 ; 2 uses
  store i8 45, ptr %i.akl, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684: ; preds = %._crit_edge.i675, %bb.iy
  %.4.i677 = phi ptr [ %i.akl, %bb.iy ], [ %.329.lcssa.i676, %._crit_edge.i675 ] ; 8 uses
  %.4.i677988 = ptrtoint ptr %.4.i677 to i64
  %scevgep989 = getelementptr i8, ptr %scevgep987, i64 %.4.i677988 ; 2 uses
  %.not3271123 = icmp eq ptr %.0.i791.idx.sroa.gep990, %.4.i677
  br i1 %.not3271123, label %.critedge4, label %.lr.ph1126

bb.iz:                                            ; preds = %.lr.ph1126
  %.not327 = icmp eq ptr %i.akm, %.4.i677
  br i1 %.not327, label %.critedge4, label %.lr.ph1126, !llvm.loop !16

.lr.ph1126:                                       ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684, %bb.iz
  %.01124 = phi ptr [ %i.akm, %bb.iz ], [ %.0.i791.idx.sroa.gep990, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684 ] ; 2 uses
  %i.akm = getelementptr inbounds i8, ptr %.01124, i64 -1 ; 3 uses
  %i.akn = load i8, ptr %i.akm, align 1
  %i.ako = icmp eq i8 %i.akn, 48
  br i1 %i.ako, label %bb.iz, label %..critedge4_crit_edge1128, !llvm.loop !16

..critedge4_crit_edge1128:                        ; preds = %.lr.ph1126
  br label %.critedge4, !llvm.loop !16

.critedge4:                                       ; preds = %bb.iz, %..critedge4_crit_edge1128, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684
  %.not327.lcssa = phi i1 [ true, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684 ], [ false, %..critedge4_crit_edge1128 ], [ true, %bb.iz ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep989, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684 ], [ %.01124, %..critedge4_crit_edge1128 ], [ %scevgep989, %bb.iz ] ; 2 uses
  %i.akp = load i8, ptr %i.agr, align 1
  switch i8 %i.akp, label %bb.jf [
    i8 83, label %bb.ja
    i8 102, label %bb.jd
  ]

bb.ja:                                            ; preds = %.critedge4
  br i1 %.not327.lcssa, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.akq = getelementptr inbounds i8, ptr %.4.i677, i64 -1 ; 2 uses
  store i8 46, ptr %i.akq, align 1
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %.0262 = phi ptr [ %i.akq, %bb.jb ], [ %.4.i677, %bb.ja ] ; 2 uses
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
  br label %bb.jf

bb.jd:                                            ; preds = %.critedge4
  br i1 %.not327.lcssa, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.ald = getelementptr inbounds i8, ptr %.4.i677, i64 -1 ; 2 uses
  store i8 48, ptr %i.ald, align 1
  br label %bb.jf

bb.jf:                                            ; preds = %bb.jd, %bb.je, %bb.jc, %.critedge4
  %.1 = phi ptr [ %.4.i677, %.critedge4 ], [ %i.alc, %bb.jc ], [ %i.ald, %bb.je ], [ %.4.i677, %bb.jd ] ; 5 uses
  %i.ale = ptrtoint ptr %.0.lcssa to i64
  %i.alf = ptrtoint ptr %.1 to i64
  %i.alg = sub i64 %i.ale, %i.alf                 ; 5 uses
  %i.alh = load i64, ptr %i.d, align 8            ; 5 uses
  %i.ali = sub i64 9223372036854775807, %i.alh
  %i.alj = icmp ult i64 %i.ali, %i.alg
  br i1 %i.alj, label %bb.jg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685

bb.jg:                                            ; preds = %bb.jf
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685: ; preds = %bb.jf
  %i.alk = add i64 %i.alg, %i.alh                 ; 3 uses
  %i.all = load ptr, ptr %0, align 8              ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.c               ; 2 uses
  br i1 %i.alm, label %bb.jh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i686

bb.jh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685
  %i.aln = icmp ult i64 %i.alh, 16
  call void @llvm.assume(i1 %i.aln)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i686

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i686: ; preds = %bb.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685
  %i.alo = load i64, ptr %i.c, align 8
  %i.alp = select i1 %i.alm, i64 15, i64 %i.alo
  %.not.i.i687 = icmp ugt i64 %i.alk, %i.alp
  br i1 %.not.i.i687, label %bb.jm, label %bb.ji

bb.ji:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i686
  %.not8.i.i688 = icmp eq ptr %.0.lcssa, %.1
  br i1 %.not8.i.i688, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.alq = getelementptr inbounds nuw i8, ptr %i.all, i64 %i.alh ; 2 uses
  %cond.i.i689 = icmp eq i64 %i.alg, 1
  br i1 %cond.i.i689, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.alr = load i8, ptr %.1, align 1
  store i8 %i.alr, ptr %i.alq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690

bb.jl:                                            ; preds = %bb.jj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alq, ptr nonnull align 1 %.1, i64 %i.alg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690

bb.jm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i686
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.alh, i64 noundef 0, ptr noundef nonnull %.1, i64 noundef %i.alg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690: ; preds = %bb.ji, %bb.jk, %bb.jl, %bb.jm
  store i64 %i.alk, ptr %i.d, align 8
  %i.als = load ptr, ptr %0, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.alk
  store i8 0, ptr %i.alt, align 1
  %i.alu = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread792

bb.jn:                                            ; preds = %bb.gu
  %i.alv = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not322 = icmp eq ptr %i.alv, %i.bq
  br i1 %.not322, label %.thread805, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.alw = load i8, ptr %i.alv, align 1
  %i.alx = icmp eq i8 %i.alw, 89
  br i1 %i.alx, label %bb.jp, label %.thread805

bb.jp:                                            ; preds = %bb.jo
  %i.aly = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not325 = icmp eq ptr %i.aly, %.3267
  br i1 %.not325, label %bb.jx, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %i.ce, ptr %18, align 8
  store i64 0, ptr %i.cf, align 8
  %i.alz = ptrtoint ptr %i.aly to i64
  %i.ama = ptrtoint ptr %.3267 to i64
  %i.amb = sub i64 %i.alz, %i.ama                 ; 8 uses
  %i.amc = icmp ugt i64 %i.amb, 15
  br i1 %i.amc, label %bb.jr, label %._crit_edge.i.i691

bb.jr:                                            ; preds = %bb.jq
  %i.amd = icmp slt i64 %i.amb, 0
  br i1 %i.amd, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.jt:                                            ; preds = %bb.jr
  %i.ame = add nuw i64 %i.amb, 1                  ; 2 uses
  %i.amf = icmp slt i64 %i.ame, 0
  br i1 %i.amf, label %bb.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i692, !prof !14

bb.ju:                                            ; preds = %bb.jt
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i692: ; preds = %bb.jt
  %i.amg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ame) #20 ; 2 uses
  store ptr %i.amg, ptr %18, align 8
  store i64 %i.amb, ptr %i.ce, align 8
  br label %._crit_edge.i.i691

._crit_edge.i.i691:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i692, %bb.jq
  %i.amh = phi ptr [ %i.amg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i692 ], [ %i.ce, %bb.jq ] ; 3 uses
  switch i64 %i.amb, label %bb.jw [
    i64 1, label %bb.jv
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit693
  ]

bb.jv:                                            ; preds = %._crit_edge.i.i691
  %i.ami = load i8, ptr %.3267, align 1
  store i8 %i.ami, ptr %i.amh, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit693

bb.jw:                                            ; preds = %._crit_edge.i.i691
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amh, ptr align 1 %.3267, i64 %i.amb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit693

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit693: ; preds = %._crit_edge.i.i691, %bb.jv, %bb.jw
  store i64 %i.amb, ptr %i.cf, align 8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.amb
  store i8 0, ptr %i.amj, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.amk = load ptr, ptr %18, align 8             ; 2 uses
  %i.aml = icmp eq ptr %i.amk, %i.ce
  br i1 %i.aml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit693
  %i.amm = load i64, ptr %i.ce, align 8
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amk, i64 noundef %i.amn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit693, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i694
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.jx

bb.jx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit696, %bb.jp
  %i.amo = load i64, ptr %5, align 8              ; 4 uses
  %i.amp = icmp slt i64 %i.amo, 0                 ; 2 uses
  br i1 %i.amp, label %bb.jy, label %bb.kb

bb.jy:                                            ; preds = %bb.jx
  %i.amq = icmp eq i64 %i.amo, -9223372036854775808
  br i1 %i.amq, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  store i8 56, ptr %i.bu, align 1
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %.026.i716 = phi ptr [ %i.bu, %bb.jz ], [ %.0.i791.idx.sroa.gep990, %bb.jy ]
  %.022.i717 = phi i32 [ 2, %bb.jz ], [ 3, %bb.jy ]
  %.1.i718 = phi i64 [ -922337203685477580, %bb.jz ], [ %i.amo, %bb.jy ]
  %i.amr = sub nsw i64 0, %.1.i718
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jx
  %.127.i697 = phi ptr [ %.026.i716, %bb.ka ], [ %.0.i791.idx.sroa.gep990, %bb.jx ] ; 2 uses
  %.123.i698 = phi i32 [ %.022.i717, %bb.ka ], [ 4, %bb.jx ] ; 2 uses
  %.2.i699 = phi i64 [ %i.amr, %bb.ka ], [ %i.amo, %bb.jx ]
  %scevgep40.i700 = getelementptr i8, ptr %.127.i697, i64 -2
  %i.ams = add nsw i32 %.123.i698, -2
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kc, %bb.kb
  %indvars.iv42.i701 = phi i32 [ %indvars.iv.next.i708, %bb.kc ], [ %i.ams, %bb.kb ] ; 2 uses
  %indvars.iv.i702 = phi ptr [ %scevgep41.i707, %bb.kc ], [ %scevgep40.i700, %bb.kb ] ; 2 uses
  %.228.i703 = phi ptr [ %i.amx, %bb.kc ], [ %.127.i697, %bb.kb ] ; 2 uses
  %.224.i704 = phi i32 [ %i.amt, %bb.kc ], [ %.123.i698, %bb.kb ] ; 3 uses
  %.3.i705 = phi i64 [ %i.amy, %bb.kc ], [ %.2.i699, %bb.kb ] ; 3 uses
  %i.amt = add i32 %.224.i704, -1                 ; 2 uses
  %i.amu = urem i64 %.3.i705, 10
  %i.amv = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.amu
  %i.amw = load i8, ptr %i.amv, align 1
  %i.amx = getelementptr inbounds i8, ptr %.228.i703, i64 -1 ; 3 uses
  store i8 %i.amw, ptr %i.amx, align 1
  %i.amy = udiv i64 %.3.i705, 10
  %.not.i706 = icmp ult i64 %.3.i705, 10
  %scevgep41.i707 = getelementptr i8, ptr %indvars.iv.i702, i64 -1
  %indvars.iv.next.i708 = add i32 %indvars.iv42.i701, -1
  br i1 %.not.i706, label %.preheader.i709, label %bb.kc, !llvm.loop !15

.preheader.i709:                                  ; preds = %bb.kc
  %i.amz = icmp sgt i32 %.224.i704, 1
  br i1 %i.amz, label %.lr.ph.preheader.i713, label %._crit_edge.i710

.lr.ph.preheader.i713:                            ; preds = %.preheader.i709
  %i.ana = getelementptr i8, ptr %.228.i703, i64 -2
  %i.anb = add nsw i32 %.224.i704, -2
  %i.anc = zext nneg i32 %i.anb to i64
  %i.and = sub nsw i64 0, %i.anc
  %scevgep.i714 = getelementptr i8, ptr %i.ana, i64 %i.and
  %i.ane = zext nneg i32 %i.amt to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i714, i8 48, i64 %i.ane, i1 false)
  %i.anf = zext i32 %indvars.iv42.i701 to i64
  %i.ang = sub nsw i64 0, %i.anf
  %scevgep43.i715 = getelementptr i8, ptr %indvars.iv.i702, i64 %i.ang
  br label %._crit_edge.i710

._crit_edge.i710:                                 ; preds = %.lr.ph.preheader.i713, %.preheader.i709
  %.329.lcssa.i711 = phi ptr [ %i.amx, %.preheader.i709 ], [ %scevgep43.i715, %.lr.ph.preheader.i713 ] ; 2 uses
  br i1 %i.amp, label %bb.kd, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit719

bb.kd:                                            ; preds = %._crit_edge.i710
  %i.anh = getelementptr inbounds i8, ptr %.329.lcssa.i711, i64 -1 ; 2 uses
  store i8 45, ptr %i.anh, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit719

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit719: ; preds = %._crit_edge.i710, %bb.kd
  %.4.i712 = phi ptr [ %i.anh, %bb.kd ], [ %.329.lcssa.i711, %._crit_edge.i710 ] ; 5 uses
  %i.ani = ptrtoint ptr %.4.i712 to i64
  %i.anj = sub i64 %i.bv, %i.ani                  ; 5 uses
  %i.ank = load i64, ptr %i.d, align 8            ; 5 uses
  %i.anl = sub i64 9223372036854775807, %i.ank
  %i.anm = icmp ult i64 %i.anl, %i.anj
  br i1 %i.anm, label %bb.ke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720

bb.ke:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit719
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720: ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit719
  %i.ann = add i64 %i.anj, %i.ank                 ; 3 uses
  %i.ano = load ptr, ptr %0, align 8              ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.c               ; 2 uses
  br i1 %i.anp, label %bb.kf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i721

bb.kf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720
  %i.anq = icmp ult i64 %i.ank, 16
  call void @llvm.assume(i1 %i.anq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i721

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i721: ; preds = %bb.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i720
  %i.anr = load i64, ptr %i.c, align 8
  %i.ans = select i1 %i.anp, i64 15, i64 %i.anr
  %.not.i.i722 = icmp ugt i64 %i.ann, %i.ans
  br i1 %.not.i.i722, label %bb.kk, label %bb.kg

bb.kg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i721
  %.not8.i.i723 = icmp eq ptr %.0.i791.idx.sroa.gep990, %.4.i712
  br i1 %.not8.i.i723, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.ank ; 2 uses
  %cond.i.i724 = icmp eq i64 %i.anj, 1
  br i1 %cond.i.i724, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.anu = load i8, ptr %.4.i712, align 1
  store i8 %i.anu, ptr %i.ant, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725

bb.kj:                                            ; preds = %bb.kh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ant, ptr nonnull align 1 %.4.i712, i64 %i.anj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725

bb.kk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i721
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ank, i64 noundef 0, ptr noundef nonnull %.4.i712, i64 noundef %i.anj)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725: ; preds = %bb.kg, %bb.ki, %bb.kj, %bb.kk
  store i64 %i.ann, ptr %i.d, align 8
  %i.anv = load ptr, ptr %0, align 8
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.ann
  store i8 0, ptr %i.anw, align 1
  %i.anx = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread792

bb.kl:                                            ; preds = %bb.gu
  %i.any = sext i8 %i.adn to i32
  %isdigittmp = add nsw i32 %i.any, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %21, label %.thread792

21:                                               ; preds = %bb.kl
  %22 = icmp eq i8 %i.adn, 45
  br i1 %22, label %bb.km, label %.thread805

bb.km:                                            ; preds = %21
  %23 = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.pre.i730 = load i8, ptr %23, align 1
  br label %.thread805

.thread805:                                       ; preds = %bb.jo, %bb.jn, %bb.km, %21
  %24 = phi i8 [ %.pre.i730, %bb.km ], [ %i.adn, %21 ], [ 52, %bb.jn ], [ 52, %bb.jo ] ; 3 uses
  %25 = phi i1 [ true, %bb.km ], [ false, %21 ], [ false, %bb.jn ], [ false, %bb.jo ] ; 3 uses
  %.0.i726 = phi ptr [ %23, %bb.km ], [ %i.adl, %21 ], [ %i.adl, %bb.jn ], [ %i.adl, %bb.jo ] ; 3 uses
  %26 = sext i8 %24 to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %26, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  %i.anz = ptrtoint ptr %memchr95.i to i64
  %i.aoa = trunc i64 %i.anz to i32
  %i.aob = sub i32 %i.aoa, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.aoc = icmp sgt i32 %i.aob, 9
  %or.cond1155 = or i1 %.not7396.i, %i.aoc
  br i1 %or.cond1155, label %select.unfold.i, label %.lr.ph1133

.lr.ph1133:                                       ; preds = %.thread805, %bb.ko
  %27 = phi i32 [ %31, %bb.ko ], [ %i.aob, %.thread805 ] ; 2 uses
  %.05397.i1132 = phi i32 [ %i.aoh, %bb.ko ], [ 0, %.thread805 ] ; 3 uses
  %.199.i1131 = phi ptr [ %i.aoi, %bb.ko ], [ %.0.i726, %.thread805 ] ; 3 uses
  %28 = phi i8 [ %i.aoj, %bb.ko ], [ %24, %.thread805 ] ; 2 uses
  %i.aod = icmp slt i32 %.05397.i1132, -214748364
  br i1 %i.aod, label %select.unfold.i, label %bb.kn

bb.kn:                                            ; preds = %.lr.ph1133
  %i.aoe = mul nsw i32 %.05397.i1132, 10          ; 2 uses
  %i.aof = or disjoint i32 %27, -2147483648
  %i.aog = icmp slt i32 %i.aoe, %i.aof
  br i1 %i.aog, label %select.unfold.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aoh = sub nsw i32 %i.aoe, %27                ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %.199.i1131, i64 1 ; 3 uses
  %i.aoj = load i8, ptr %i.aoi, align 1           ; 3 uses
  %i.aok = sext i8 %i.aoj to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.aok, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  %29 = ptrtoint ptr %memchr.i to i64
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %30, ptrtoint (ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %32 = icmp sgt i32 %31, 9
  %or.cond1159 = or i1 %.not73.i, %32
  br i1 %or.cond1159, label %select.unfold.i, label %.lr.ph1133

select.unfold.i:                                  ; preds = %.lr.ph1133, %bb.kn, %bb.ko, %.thread805
  %33 = phi i8 [ %24, %.thread805 ], [ %i.aoj, %bb.ko ], [ %28, %bb.kn ], [ %28, %.lr.ph1133 ]
  %.255.ph.i = phi i32 [ 0, %.thread805 ], [ %i.aoh, %bb.ko ], [ -2147483640, %bb.kn ], [ %.05397.i1132, %.lr.ph1133 ] ; 4 uses
  %.252.ph.not.i = phi i1 [ true, %.thread805 ], [ true, %bb.ko ], [ false, %bb.kn ], [ false, %.lr.ph1133 ]
  %.3.ph.i = phi ptr [ %.0.i726, %.thread805 ], [ %i.aoi, %bb.ko ], [ %.199.i1131, %bb.kn ], [ %.199.i1131, %.lr.ph1133 ] ; 4 uses
  %34 = icmp ne ptr %.3.ph.i, %.0.i726
  %or.cond.not94.i = and i1 %.252.ph.not.i, %34
  %35 = icmp ne i32 %.255.ph.i, -2147483648
  %or.cond3.i727 = select i1 %25, i1 true, i1 %35
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i727, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.aol = icmp eq i32 %.255.ph.i, 0              ; 2 uses
  %or.cond5.not.i = select i1 %25, i1 %i.aol, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %.thread792, label %bb.kp

bb.kp:                                            ; preds = %select.unfold.i
  %i.aom = sub nsw i32 0, %.255.ph.i
  %spec.select.i728 = select i1 %25, i32 %.255.ph.i, i32 %i.aom ; 6 uses
  %or.cond77.i = icmp ugt i32 %spec.select.i728, 1024
  br i1 %or.cond77.i, label %.thread792, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit: ; preds = %bb.kp
  switch i8 %33, label %.thread792 [
    i8 83, label %bb.kq
    i8 102, label %bb.kq
  ]

bb.kq:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit
  %i.aon = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not324 = icmp eq ptr %i.aon, %.3267
  br i1 %.not324, label %bb.ky, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.cp, ptr %19, align 8
  store i64 0, ptr %i.cq, align 8
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = ptrtoint ptr %.3267 to i64
  %i.aoq = sub i64 %i.aoo, %i.aop                 ; 8 uses
  %i.aor = icmp ugt i64 %i.aoq, 15
  br i1 %i.aor, label %bb.ks, label %._crit_edge.i.i731

bb.ks:                                            ; preds = %bb.kr
  %i.aos = icmp slt i64 %i.aoq, 0
  br i1 %i.aos, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.ku:                                            ; preds = %bb.ks
  %i.aot = add nuw i64 %i.aoq, 1                  ; 2 uses
  %i.aou = icmp slt i64 %i.aot, 0
  br i1 %i.aou, label %bb.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i732, !prof !14

bb.kv:                                            ; preds = %bb.ku
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i732: ; preds = %bb.ku
  %i.aov = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aot) #20 ; 2 uses
  store ptr %i.aov, ptr %19, align 8
  store i64 %i.aoq, ptr %i.cp, align 8
  br label %._crit_edge.i.i731

._crit_edge.i.i731:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i732, %bb.kr
  %i.aow = phi ptr [ %i.aov, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i732 ], [ %i.cp, %bb.kr ] ; 3 uses
  switch i64 %i.aoq, label %bb.kx [
    i64 1, label %bb.kw
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit733
  ]

bb.kw:                                            ; preds = %._crit_edge.i.i731
  %i.aox = load i8, ptr %.3267, align 1
  store i8 %i.aox, ptr %i.aow, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit733

bb.kx:                                            ; preds = %._crit_edge.i.i731
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aow, ptr align 1 %.3267, i64 %i.aoq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit733

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit733: ; preds = %._crit_edge.i.i731, %bb.kw, %bb.kx
  store i64 %i.aoq, ptr %i.cq, align 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.aoq
  store i8 0, ptr %i.aoy, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.aoz = load ptr, ptr %19, align 8             ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, %i.cp
  br i1 %i.apa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i734

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i734: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit733
  %i.apb = load i64, ptr %i.cp, align 8
  %i.apc = add i64 %i.apb, 1
  call void @_ZdlPvm(ptr noundef %i.aoz, i64 noundef %i.apc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit733, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i734
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.ky

bb.ky:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736, %bb.kq
  br i1 %i.aol, label %bb.lk, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.apd = icmp samesign ugt i32 %spec.select.i728, 18
  br i1 %i.apd, label %.thread809, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ape = icmp samesign ugt i32 %spec.select.i728, 15
  br i1 %i.ape, label %.thread809, label %bb.lb

.thread809:                                       ; preds = %bb.kz, %bb.la
  %.0784812 = phi i32 [ %spec.select.i728, %bb.la ], [ 18, %bb.kz ] ; 2 uses
  %i.apf = load i64, ptr %3, align 8
  %i.apg = zext nneg i32 %.0784812 to i64
  %i.aph = getelementptr [8 x i8], ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.apg
  %i.api = getelementptr i8, ptr %i.aph, i64 -120
  %i.apj = load i64, ptr %i.api, align 8
  %i.apk = mul nsw i64 %i.apj, %i.apf
  br label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.apl = load i64, ptr %3, align 8
  %36 = sub nuw nsw i32 15, %spec.select.i728
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %37
  %i.apm = load i64, ptr %38, align 8
  %i.apn = sdiv i64 %i.apl, %i.apm
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %.thread809
  %.0784811 = phi i32 [ %.0784812, %.thread809 ], [ %spec.select.i728, %bb.lb ] ; 3 uses
  %i.apo = phi i64 [ %i.apk, %.thread809 ], [ %i.apn, %bb.lb ] ; 4 uses
  %i.app = icmp slt i64 %i.apo, 0                 ; 2 uses
  br i1 %i.app, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.apq = add nsw i32 %.0784811, -1
  %i.apr = icmp eq i64 %i.apo, -9223372036854775808
  br i1 %i.apr, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.aps = add nsw i32 %.0784811, -2
  store i8 56, ptr %i.bu, align 1
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.026.i756 = phi ptr [ %i.bu, %bb.le ], [ %.0.i791.idx.sroa.gep990, %bb.ld ]
  %.022.i757 = phi i32 [ %i.aps, %bb.le ], [ %i.apq, %bb.ld ]
  %.1.i758 = phi i64 [ -922337203685477580, %bb.le ], [ %i.apo, %bb.ld ]
  %i.apt = sub nsw i64 0, %.1.i758
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.lc
  %.127.i737 = phi ptr [ %.026.i756, %bb.lf ], [ %.0.i791.idx.sroa.gep990, %bb.lc ] ; 2 uses
  %.123.i738 = phi i32 [ %.022.i757, %bb.lf ], [ %.0784811, %bb.lc ] ; 2 uses
  %.2.i739 = phi i64 [ %i.apt, %bb.lf ], [ %i.apo, %bb.lc ]
  %scevgep40.i740 = getelementptr i8, ptr %.127.i737, i64 -2
  %i.apu = add nsw i32 %.123.i738, -2
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lh, %bb.lg
  %indvars.iv42.i741 = phi i32 [ %indvars.iv.next.i748, %bb.lh ], [ %i.apu, %bb.lg ] ; 2 uses
  %indvars.iv.i742 = phi ptr [ %scevgep41.i747, %bb.lh ], [ %scevgep40.i740, %bb.lg ] ; 2 uses
  %.228.i743 = phi ptr [ %i.apz, %bb.lh ], [ %.127.i737, %bb.lg ] ; 2 uses
  %.224.i744 = phi i32 [ %i.apv, %bb.lh ], [ %.123.i738, %bb.lg ] ; 3 uses
  %.3.i745 = phi i64 [ %i.aqa, %bb.lh ], [ %.2.i739, %bb.lg ] ; 3 uses
  %i.apv = add i32 %.224.i744, -1                 ; 2 uses
  %i.apw = urem i64 %.3.i745, 10
  %i.apx = getelementptr inbounds nuw i8, ptr @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apw
  %i.apy = load i8, ptr %i.apx, align 1
  %i.apz = getelementptr inbounds i8, ptr %.228.i743, i64 -1 ; 3 uses
  store i8 %i.apy, ptr %i.apz, align 1
  %i.aqa = udiv i64 %.3.i745, 10
  %.not.i746 = icmp ult i64 %.3.i745, 10
  %scevgep41.i747 = getelementptr i8, ptr %indvars.iv.i742, i64 -1
  %indvars.iv.next.i748 = add i32 %indvars.iv42.i741, -1
  br i1 %.not.i746, label %.preheader.i749, label %bb.lh, !llvm.loop !15

.preheader.i749:                                  ; preds = %bb.lh
  %i.aqb = icmp sgt i32 %.224.i744, 1
  br i1 %i.aqb, label %.lr.ph.preheader.i753, label %._crit_edge.i750

.lr.ph.preheader.i753:                            ; preds = %.preheader.i749
  %i.aqc = getelementptr i8, ptr %.228.i743, i64 -2
  %i.aqd = add nsw i32 %.224.i744, -2
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = sub nsw i64 0, %i.aqe
  %scevgep.i754 = getelementptr i8, ptr %i.aqc, i64 %i.aqf
  %i.aqg = zext nneg i32 %i.apv to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i754, i8 48, i64 %i.aqg, i1 false)
  %i.aqh = zext i32 %indvars.iv42.i741 to i64
  %i.aqi = sub nsw i64 0, %i.aqh
  %scevgep43.i755 = getelementptr i8, ptr %indvars.iv.i742, i64 %i.aqi
  br label %._crit_edge.i750

._crit_edge.i750:                                 ; preds = %.lr.ph.preheader.i753, %.preheader.i749
  %.329.lcssa.i751 = phi ptr [ %i.apz, %.preheader.i749 ], [ %scevgep43.i755, %.lr.ph.preheader.i753 ] ; 2 uses
  br i1 %i.app, label %bb.li, label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit759

bb.li:                                            ; preds = %._crit_edge.i750
  %i.aqj = getelementptr inbounds i8, ptr %.329.lcssa.i751, i64 -1 ; 2 uses
  store i8 45, ptr %i.aqj, align 1
  br label %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit759

_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit759: ; preds = %._crit_edge.i750, %bb.li
  %.4.i752 = phi ptr [ %i.aqj, %bb.li ], [ %.329.lcssa.i751, %._crit_edge.i750 ] ; 2 uses
  %i.aqk = load i8, ptr %.3.ph.i, align 1
  %i.aql = icmp eq i8 %i.aqk, 83
  br i1 %i.aql, label %bb.lj, label %.thread813

bb.lj:                                            ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit759
  %i.aqm = getelementptr inbounds i8, ptr %.4.i752, i64 -1 ; 2 uses
  store i8 46, ptr %i.aqm, align 1
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.ky
  %.2.ph = phi ptr [ %.0.i791.idx.sroa.gep990, %bb.ky ], [ %i.aqm, %bb.lj ] ; 3 uses
  %.pr = load i8, ptr %.3.ph.i, align 1
  %i.aqn = icmp eq i8 %.pr, 83
  br i1 %i.aqn, label %bb.ll, label %.thread813

bb.ll:                                            ; preds = %bb.lk
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
  br label %.thread813

.thread813:                                       ; preds = %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit759, %bb.ll, %bb.lk
  %.3 = phi ptr [ %i.aqz, %bb.ll ], [ %.2.ph, %bb.lk ], [ %.4.i752, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit759 ] ; 5 uses
  %i.ara = ptrtoint ptr %.3 to i64
  %i.arb = sub i64 %i.bv, %i.ara                  ; 5 uses
  %i.arc = load i64, ptr %i.d, align 8            ; 5 uses
  %i.ard = sub i64 9223372036854775807, %i.arc
  %i.are = icmp ult i64 %i.ard, %i.arb
  br i1 %i.are, label %bb.lm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i760

bb.lm:                                            ; preds = %.thread813
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i760: ; preds = %.thread813
  %i.arf = add i64 %i.arb, %i.arc                 ; 3 uses
  %i.arg = load ptr, ptr %0, align 8              ; 2 uses
  %i.arh = icmp eq ptr %i.arg, %i.c               ; 2 uses
  br i1 %i.arh, label %bb.ln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i761

bb.ln:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i760
  %i.ari = icmp ult i64 %i.arc, 16
  call void @llvm.assume(i1 %i.ari)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i761: ; preds = %bb.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i760
  %i.arj = load i64, ptr %i.c, align 8
  %i.ark = select i1 %i.arh, i64 15, i64 %i.arj
  %.not.i.i762 = icmp ugt i64 %i.arf, %i.ark
  br i1 %.not.i.i762, label %bb.ls, label %bb.lo

bb.lo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i761
  %.not8.i.i763 = icmp eq ptr %.0.i791.idx.sroa.gep990, %.3
  br i1 %.not8.i.i763, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.arc ; 2 uses
  %cond.i.i764 = icmp eq i64 %i.arb, 1
  br i1 %cond.i.i764, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.arm = load i8, ptr %.3, align 1
  store i8 %i.arm, ptr %i.arl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765

bb.lr:                                            ; preds = %bb.lp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arl, ptr align 1 %.3, i64 %i.arb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765

bb.ls:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i761
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.arc, i64 noundef 0, ptr noundef %.3, i64 noundef %i.arb)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765: ; preds = %bb.lo, %bb.lq, %bb.lr, %bb.ls
  store i64 %i.arf, ptr %i.d, align 8
  %i.arn = load ptr, ptr %0, align 8
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.arf
  store i8 0, ptr %i.aro, align 1
  %i.arp = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  br label %.thread792

.thread792:                                       ; preds = %bb.hv, %bb.fe, %select.unfold.i, %bb.kp, %bb.ij, %bb.ff, %bb.gi, %bb.gj, %bb.fu, %bb.fg, %bb.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit606, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725, %bb.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit629, %bb.gt, %bb.ad, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit594, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit573, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit553, %bb.fd
  %.6274 = phi ptr [ %i.adl, %bb.gt ], [ %i.wr, %bb.fd ], [ %i.yu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit553 ], [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit573 ], [ %i.adk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit594 ], [ %.2270.lcssa, %bb.ad ], [ %.2270.lcssa, %bb.ae ], [ %.2270.lcssa, %bb.fe ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit606 ], [ %i.agq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit629 ], [ %i.aja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655 ], [ %i.alu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690 ], [ %i.anx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725 ], [ %.2270.lcssa, %bb.ff ], [ %i.adl, %bb.kl ], [ %i.adl, %bb.ij ], [ %i.arp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765 ], [ %i.adl, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit ], [ %.2270.lcssa, %bb.fv ], [ %.2270.lcssa, %bb.fg ], [ %.2270.lcssa, %bb.fu ], [ %.2270.lcssa, %bb.gj ], [ %.2270.lcssa, %bb.gi ], [ %i.adl, %select.unfold.i ], [ %i.adl, %bb.kp ], [ %i.adl, %bb.hv ] ; 2 uses
  %.6 = phi ptr [ %.3267, %bb.gt ], [ %i.wr, %bb.fd ], [ %i.yu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit553 ], [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit573 ], [ %i.adk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit594 ], [ %.3267, %bb.ad ], [ %.3267, %bb.ae ], [ %.3267, %bb.fe ], [ %i.aep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit606 ], [ %i.agq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit629 ], [ %i.aja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655 ], [ %i.alu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit690 ], [ %i.anx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725 ], [ %.3267, %bb.ff ], [ %.3267, %bb.kl ], [ %.3267, %bb.ij ], [ %i.arp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit765 ], [ %.3267, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS6_iT_S7_PS7_.exit ], [ %.3267, %bb.fv ], [ %.3267, %bb.fg ], [ %.3267, %bb.fu ], [ %.3267, %bb.gj ], [ %.3267, %bb.gi ], [ %.3267, %select.unfold.i ], [ %.3267, %bb.kp ], [ %.3267, %bb.hv ] ; 2 uses
  %.not = icmp eq ptr %.6274, %i.bq
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread792, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit
  %.0264.lcssa = phi ptr [ %i.bo, %_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_14ToTMERKNS1_9time_zone15absolute_lookupE.exit ], [ %.6, %.thread792 ] ; 4 uses
  %.not308 = icmp eq ptr %i.bq, %.0264.lcssa
  br i1 %.not308, label %bb.ma, label %bb.lt

bb.lt:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.arq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.arq, ptr %20, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.arr, align 8
  %i.ars = ptrtoint ptr %i.bq to i64
  %i.art = ptrtoint ptr %.0264.lcssa to i64
  %i.aru = sub i64 %i.ars, %i.art                 ; 8 uses
  %i.arv = icmp ugt i64 %i.aru, 15
  br i1 %i.arv, label %bb.lu, label %._crit_edge.i.i766

bb.lu:                                            ; preds = %bb.lt
  %i.arw = icmp slt i64 %i.aru, 0
  br i1 %i.arw, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

bb.lw:                                            ; preds = %bb.lu
  %i.arx = add nuw i64 %i.aru, 1                  ; 2 uses
  %i.ary = icmp slt i64 %i.arx, 0
  br i1 %i.ary, label %bb.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i767, !prof !14

bb.lx:                                            ; preds = %bb.lw
  call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i767: ; preds = %bb.lw
  %i.arz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arx) #20 ; 2 uses
  store ptr %i.arz, ptr %20, align 8
  store i64 %i.aru, ptr %i.arq, align 8
  br label %._crit_edge.i.i766

._crit_edge.i.i766:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i767, %bb.lt
  %i.asa = phi ptr [ %i.arz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i767 ], [ %i.arq, %bb.lt ] ; 3 uses
  switch i64 %i.aru, label %bb.lz [
    i64 1, label %bb.ly
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit768
  ]

bb.ly:                                            ; preds = %._crit_edge.i.i766
  %i.asb = load i8, ptr %.0264.lcssa, align 1
  store i8 %i.asb, ptr %i.asa, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit768

bb.lz:                                            ; preds = %._crit_edge.i.i766
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.asa, ptr align 1 %.0264.lcssa, i64 %i.aru, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit768

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit768: ; preds = %._crit_edge.i.i766, %bb.ly, %bb.lz
  store i64 %i.aru, ptr %i.arr, align 8
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.aru
  store i8 0, ptr %i.asc, align 1
  call fastcc void @_ZN4absl13time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(56) %6)
  %i.asd = load ptr, ptr %20, align 8             ; 2 uses
  %i.ase = icmp eq ptr %i.asd, %i.arq
  br i1 %i.ase, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit768
  %i.asf = load i64, ptr %i.arq, align 8
  %i.asg = add i64 %i.asf, 1
  call void @_ZdlPvm(ptr noundef %i.asd, i64 noundef %i.asg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.ma

bb.ma:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
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
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
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
  %i.m = icmp ult i64 %i.l, %.lcssa29
end_hunk_2
