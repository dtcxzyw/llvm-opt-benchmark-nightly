inline.NumInlined: 481
inline.NumDeleted: 166
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i = phi i32 [ -2147483648, %bb.c ], [ %i.aj, %bb.e ], [ 2147483647, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sink.i, ptr %i.ak, align 4, !tbaa !25, !alias.scope !15
  %i.al = srem i64 %i.af, 400                     ; 2 uses
  %i.am = icmp slt i8 %i.ac, 3
  %i.an = select i1 %i.am, i64 2399, i64 2400
  %i.ao = add nsw i64 %i.al, %i.an                ; 3 uses
  %i.ap = lshr i64 %i.ao, 2
  %.lhs.trunc.i.i = trunc nuw nsw i64 %i.ao to i16 ; 2 uses
  %i.aq = udiv i16 %.lhs.trunc.i.i, 100
  %.zext.i.i = zext nneg i16 %i.aq to i64
  %i.ar = udiv i16 %.lhs.trunc.i.i, 400
  %.zext10.i.i = zext nneg i16 %i.ar to i64
  %i.as = sext i8 %i.ac to i64                    ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_offsets, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3, !noalias !15
  %i.av = add nsw i32 %i.au, %i.y
  %i.aw = sext i32 %i.av to i64
  %i.ax = add nuw nsw i64 %i.ap, %i.ao
  %i.ay = sub nuw nsw i64 %i.ax, %.zext.i.i
  %i.az = add nuw nsw i64 %i.ay, %.zext10.i.i
  %i.ba = add nsw i64 %i.az, %i.aw
  %i.bb = srem i64 %i.ba, 7
  %i.bc = getelementptr [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_weekdayERKNS3_10civil_timeINS3_10second_tagEEE.k_weekday_by_mon_off, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !26, !noalias !15 ; 2 uses
  %i.bf = icmp ult i32 %i.be, 6
  %switch.offset.i.i = add nsw i32 %i.be, 1
  %.0.i.i = select i1 %i.bf, i32 %switch.offset.i.i, i32 0
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 %.0.i.i, ptr %i.bg, align 8, !tbaa !28, !alias.scope !15
  %i.bh = icmp sgt i8 %i.ac, 2
  %i.bi = and i64 %i.af, 3
  %i.bj = icmp eq i64 %i.bi, 0
  %or.cond.i = and i1 %i.bh, %i.bj
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bk = srem i64 %i.af, 100
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = icmp eq i64 %i.al, 0
  %i.bm = zext i1 %i.bl to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bn = phi i32 [ 0, %bb.f ], [ %i.bm, %bb.h ], [ 1, %bb.g ]
  %i.bo = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2025051213time_internal4cctz6detail11get_yeardayERKNS3_10civil_timeINS3_10second_tagEEE.k_month_offsets, i64 %i.as
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3, !noalias !15
  %i.bq = add nsw i32 %i.y, -1
  %i.br = add nsw i32 %i.bq, %i.bn
  %i.bs = add i32 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !29, !alias.scope !15
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bv = load i8, ptr %i.bu, align 4, !tbaa !30, !range !33, !noalias !15, !noundef !34
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.bw, ptr %i.bx, align 16, !tbaa !35, !alias.scope !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 21 ; 18 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !36    ; 5 uses
  %i.ca = load i64, ptr %i.o, align 8, !tbaa !11  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 12 uses
  %.not1001 = icmp samesign eq i64 %i.ca, 0
  br i1 %.not1001, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 20 ; 23 uses
  %i.cg = ptrtoint ptr %i.by to i64               ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 19 ; 23 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 18 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 17 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i438 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 15 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 13 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.di = add i64 %i.ca, %i.cc                    ; 2 uses
  %i.dj = sub i64 0, %i.l
  %scevgep1023.a = getelementptr i8, ptr %i.k, i64 %i.dj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread804
  %.02681003 = phi ptr [ %i.bz, %.preheader.lr.ph ], [ %.6274, %.thread804 ] ; 6 uses
  %.02751002 = phi ptr [ %i.bz, %.preheader.lr.ph ], [ %.6281, %.thread804 ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.02681003, i64 %i.di
  %.026810031018 = ptrtoint ptr %.02681003 to i64 ; 2 uses
  %i.dk = sub i64 0, %.026810031018
  %scevgep1019 = getelementptr i8, ptr %scevgep, i64 %i.dk
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
  %.1269993 = phi ptr [ %.02681003, %.preheader ], [ %i.dm, %bb.k ] ; 3 uses
  %i.dl = load i8, ptr %.1269993, align 1, !tbaa !14
  %.not322 = icmp eq i8 %i.dl, 37
  br i1 %.not322, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.1269993, i64 1 ; 2 uses
  %.not321 = icmp eq ptr %i.dm, %i.cb
  br i1 %.not321, label %.critedge, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %bb.a
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.m:                                             ; preds = %bb.b
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

.critedge:                                        ; preds = %bb.k, %bb.j
  %.1269.lcssa = phi ptr [ %scevgep1019, %bb.k ], [ %.1269993, %bb.j ] ; 8 uses
  %.1269.lcssa1021 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not323 = icmp ne ptr %.1269.lcssa, %.02681003
  %i.dp = icmp eq ptr %.02751002, %.02681003
  %or.cond = select i1 %.not323, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.n:                                             ; preds = %.critedge
  %i.dq = sub i64 %.1269.lcssa1021, %.026810031018 ; 2 uses
  %i.dr = load i64, ptr %i.n, align 8, !tbaa !11
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.n
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.02751002, i64 noundef %i.dq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %.critedge
  %.1276 = phi ptr [ %.02751002, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 5 uses
  %.0249 = phi ptr [ %.02681003, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 2 uses
  %.not324994 = icmp eq ptr %.1269.lcssa, %i.cb
  br i1 %.not324994, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %scevgep1020 = getelementptr i8, ptr %.1269.lcssa, i64 %i.di
  %i.dv = sub i64 0, %.1269.lcssa1021
  %scevgep1022 = getelementptr i8, ptr %scevgep1020, i64 %i.dv
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.2270995 = phi ptr [ %i.dy, %bb.p ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.dw = load i8, ptr %.2270995, align 1, !tbaa !14
  %i.dx = icmp eq i8 %i.dw, 37                    ; 3 uses
  br i1 %i.dx, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph
  %i.dy = getelementptr inbounds nuw i8, ptr %.2270995, i64 1 ; 2 uses
  %.not324 = icmp eq ptr %i.dy, %i.cb
  br i1 %.not324, label %.critedge2, label %.lr.ph, !llvm.loop !39

.critedge2:                                       ; preds = %.lr.ph, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %scevgep1022, %bb.p ], [ %.2270995, %.lr.ph ] ; 43 uses
  %.not324.lcssa = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %i.dx, %bb.p ], [ %i.dx, %.lr.ph ] ; 2 uses
  %.not325 = icmp ne ptr %.2270.lcssa, %.0249
  %i.dz = icmp eq ptr %.1276, %.0249
  %or.cond377 = select i1 %.not325, i1 %i.dz, i1 false
  br i1 %or.cond377, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.critedge2
  %i.ea = ptrtoint ptr %.2270.lcssa to i64
  %i.eb = ptrtoint ptr %.1276 to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 1                       ; 2 uses
  %i.ee = load i64, ptr %i.n, align 8, !tbaa !11
  %i.ef = sub i64 4611686018427387903, %i.ee
  %i.eg = icmp ult i64 %i.ef, %i.ed
  br i1 %i.eg, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc381 unwind label %.loopexit.split-lp876

.noexc381:                                        ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380: ; preds = %bb.q
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.1276, i64 noundef %i.ed)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383 unwind label %.loopexit875 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.ei = and i64 %i.ec, -2
  %i.ej = getelementptr inbounds nuw i8, ptr %.1276, i64 %i.ei ; 4 uses
  %.not326 = icmp ne ptr %i.ej, %.2270.lcssa
  %or.cond378 = and i1 %.not324.lcssa, %.not326
  br i1 %or.cond378, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !14
  %i.em = load i64, ptr %i.n, align 8, !tbaa !11  ; 4 uses
  %i.en = add i64 %i.em, 1                        ; 3 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.m
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.s
  %i.eq = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.er = load i64, ptr %i.m, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.es = phi i64 [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.et = icmp ugt i64 %i.en, %i.es
  br i1 %i.et, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.em, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc384 unwind label %.loopexit875

.noexc384:                                        ; preds = %bb.t
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc384
  %i.eu = phi ptr [ %.pre.i, %.noexc384 ], [ %i.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.em
  store i8 %i.el, ptr %i.ev, align 1, !tbaa !14
  store i64 %i.en, ptr %i.n, align 8, !tbaa !11
  %i.ew = load ptr, ptr %0, align 8, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.en
  store i8 0, ptr %i.ex, align 1, !tbaa !14
  br label %bb.u

.loopexit875:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380, %bb.t
  %lpad.loopexit877 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp876:                            ; preds = %bb.r
  %lpad.loopexit.split-lp878 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383, %.critedge2
  %.3278 = phi ptr [ %.1276, %.critedge2 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383 ] ; 57 uses
  br i1 %.not324.lcssa, label %.thread804, label %bb.v, !llvm.loop !40

bb.v:                                             ; preds = %bb.u
  %i.ey = ptrtoint ptr %.2270.lcssa to i64
  %i.ez = sub i64 %i.ey, %.1269.lcssa1021
  %i.fa = and i64 %i.ez, 1
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.thread804, label %bb.w, !llvm.loop !40

bb.w:                                             ; preds = %bb.v
  %i.fc = load i8, ptr %.2270.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.fd = sext i8 %i.fc to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fd, i64 16)
  %.not327 = icmp eq ptr %memchr, null
  br i1 %.not327, label %bb.bl, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not366 = icmp eq ptr %i.fe, %.3278
  br i1 %.not366, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.cd, ptr %7, align 8, !tbaa !7
  store i64 0, ptr %i.ce, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %.3278 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 4 uses
  store i64 %i.fh, ptr %i.j, align 8, !tbaa !41
  %i.fi = icmp ugt i64 %i.fh, 15
  br i1 %i.fi, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.fj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc385 unwind label %bb.ad ; 2 uses

.noexc385:                                        ; preds = %.noexc.i
  store ptr %i.fj, ptr %7, align 8, !tbaa !36
  %i.fk = load i64, ptr %i.j, align 8, !tbaa !41
  store i64 %i.fk, ptr %i.cd, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc385, %bb.y
  %i.fl = phi ptr [ %i.fj, %.noexc385 ], [ %i.cd, %bb.y ] ; 2 uses
  switch i64 %i.fh, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.fm = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !14
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %.3278, i64 %i.fh, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.fn = load i64, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  store i64 %i.fn, ptr %i.ce, align 8, !tbaa !11
  %i.fo = load ptr, ptr %7, align 8, !tbaa !36
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fq = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cd
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.ac
  %i.fs = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.pre = load i8, ptr %.2270.lcssa, align 1, !tbaa !14
  br label %bb.af

bb.ad:                                            ; preds = %.noexc.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

bb.ae:                                            ; preds = %bb.ab
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.cd
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %bb.ae
  %i.fy = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388, %bb.ad
  %.pn367 = phi { ptr, i32 } [ %i.fu, %bb.ad ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388 ], [ %i.fv, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.gv

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x
  %i.ga = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fc, %bb.x ]
  switch i8 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394 [
    i8 89, label %bb.ag
    i8 109, label %bb.an
    i8 100, label %bb.ao
    i8 101, label %bb.ao
    i8 85, label %bb.ap
    i8 117, label %bb.aq
    i8 87, label %bb.at
    i8 119, label %bb.au
    i8 72, label %bb.ax
    i8 77, label %bb.ay
    i8 83, label %bb.az
    i8 122, label %bb.ba
    i8 90, label %bb.bb
    i8 115, label %bb.bc
    i8 37, label %bb.bj
  ]

bb.ag:                                            ; preds = %bb.af
  %i.gb = load i64, ptr %5, align 8, !tbaa !24    ; 4 uses
  %i.gc = icmp slt i64 %i.gb, 0                   ; 2 uses
  br i1 %i.gc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gd = icmp eq i64 %i.gb, -9223372036854775808
  br i1 %i.gd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.026.i = phi ptr [ %i.cf, %bb.ai ], [ %i.by, %bb.ah ]
  %.022.i = phi i32 [ -2, %bb.ai ], [ -1, %bb.ah ]
  %.1.i = phi i64 [ -922337203685477580, %bb.ai ], [ %i.gb, %bb.ah ]
  %i.ge = sub nsw i64 0, %.1.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.127.i = phi ptr [ %.026.i, %bb.aj ], [ %i.by, %bb.ag ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.aj ], [ 0, %bb.ag ] ; 2 uses
  %.2.i = phi i64 [ %i.ge, %bb.aj ], [ %i.gb, %bb.ag ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.gf = add nsw i32 %.123.i, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.al ], [ %i.gf, %bb.ak ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.al ], [ %scevgep40.i, %bb.ak ] ; 2 uses
  %.228.i = phi ptr [ %i.gk, %bb.al ], [ %.127.i, %bb.ak ] ; 2 uses
  %.224.i = phi i32 [ %i.gg, %bb.al ], [ %.123.i, %bb.ak ] ; 3 uses
  %.3.i = phi i64 [ %i.gl, %bb.al ], [ %.2.i, %bb.ak ] ; 3 uses
  %i.gg = add i32 %.224.i, -1                     ; 2 uses
  %i.gh = urem i64 %.3.i, 10
  %i.gi = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !14
  %i.gk = getelementptr inbounds i8, ptr %.228.i, i64 -1 ; 3 uses
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !14
  %i.gl = udiv i64 %.3.i, 10
  %.not.i = icmp ult i64 %.3.i, 10
  %scevgep41.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv42.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.al, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.al
  %i.gm = icmp sgt i32 %.224.i, 1
  br i1 %i.gm, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.gn = getelementptr i8, ptr %.228.i, i64 -2
  %i.go = add nsw i32 %.224.i, -2
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %scevgep.i = getelementptr i8, ptr %i.gn, i64 %i.gq
  %i.gr = zext nneg i32 %i.gg to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.gr, i1 false), !tbaa !14
  %i.gs = zext i32 %indvars.iv42.i to i64
  %i.gt = sub nsw i64 0, %i.gs
  %scevgep43.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.gt
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.preheader.i
  %.329.lcssa.i = phi ptr [ %i.gk, %.preheader.i ], [ %scevgep43.i, %.lr.ph.preheader.i ] ; 2 uses
  br i1 %i.gc, label %bb.am, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

bb.am:                                            ; preds = %._crit_edge.i
  %i.gu = getelementptr inbounds i8, ptr %.329.lcssa.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gu, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.su = load i8, ptr %i.st, align 1, !tbaa !14
  store i8 %i.su, ptr %i.cj, align 1, !tbaa !14
  store i8 58, ptr %i.ck, align 2, !tbaa !14
  %.lhs.trunc.i562 = trunc nuw nsw i32 %i.sm to i8 ; 2 uses
  %i.sv = urem i8 %.lhs.trunc.i562, 10
  %i.sw = zext nneg i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !14
  store i8 %i.sy, ptr %i.cl, align 1, !tbaa !14
  %i.sz = udiv i8 %.lhs.trunc.i562, 10
  %i.ta = zext nneg i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !14
  store i8 %i.tc, ptr %i.cm, align 16, !tbaa !14
  store i8 58, ptr %i.cr, align 1, !tbaa !14
  %i.td = udiv i32 %spec.select45.i556, 3600
  %i.te = urem i32 %i.td, 10
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !14
  store i8 %i.th, ptr %i.cs, align 2, !tbaa !14
  %i.ti = udiv i32 %spec.select45.i556, 36000
  %.lhs.trunc56.i561 = trunc nuw i32 %i.ti to i16
  %i.tj = urem i16 %.lhs.trunc56.i561, 10
  %i.tk = zext nneg i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !14
  store i8 %i.tm, ptr %i.ct, align 1, !tbaa !14
  store i8 %spec.select.i555, ptr %i.cu, align 4, !tbaa !14
  %i.tn = load i64, ptr %i.n, align 8, !tbaa !11
  %i.to = add i64 %i.tn, -4611686018427387895
  %i.tp = icmp ult i64 %i.to, 9
  br i1 %i.tp, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i563: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  %i.tq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cu, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566 unwind label %.loopexit880 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i563
  %i.tr = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread804, !llvm.loop !40

bb.ch:                                            ; preds = %bb.by
  %i.ts = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  %.not330 = icmp eq ptr %i.ts, %i.cb
  br i1 %.not330, label %.thread804, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !14
  %i.tu = icmp eq i8 %i.tt, 122
  br i1 %i.tu, label %bb.cj, label %.thread804

bb.cj:                                            ; preds = %bb.ci
  %i.tv = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not357 = icmp eq ptr %i.tv, %.3278
  br i1 %.not357, label %bb.cp, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3278, ptr noundef nonnull %i.tv, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cl unwind label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.tw = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.dd
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567: ; preds = %bb.cm
  %i.ty = load i64, ptr %i.dd, align 8, !tbaa !14
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i567
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cp

bb.cn:                                            ; preds = %bb.ck
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

bb.co:                                            ; preds = %bb.cl
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.dd
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %bb.co
  %i.ue = load i64, ptr %i.dd, align 8, !tbaa !14
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570, %bb.cn
  %.pn358 = phi { ptr, i32 } [ %i.ua, %bb.cn ], [ %i.ub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570 ], [ %i.ub, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.gv

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit569, %bb.cj
  %i.ug = load i32, ptr %i.ci, align 8, !tbaa !46 ; 2 uses
  %i.uh = icmp slt i32 %i.ug, 0
  %spec.select.i573 = select i1 %i.uh, i8 45, i8 43 ; 2 uses
  %spec.select45.i574 = call i32 @llvm.abs.i32(i32 %i.ug, i1 true) ; 5 uses
  %i.ui = urem i32 %spec.select45.i574, 60        ; 2 uses
  %i.uj = udiv i32 %spec.select45.i574, 60
  %i.uk = urem i32 %i.uj, 60                      ; 2 uses
  %.not873 = icmp eq i32 %i.ui, 0
  br i1 %.not873, label %bb.cq, label %.thread

.thread:                                          ; preds = %bb.cp
  %.lhs.trunc58.i583 = trunc nuw nsw i32 %i.ui to i8 ; 2 uses
  %i.ul = urem i8 %.lhs.trunc58.i583, 10
  %i.um = zext nneg i8 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !14
  store i8 %i.uo, ptr %i.cf, align 4, !tbaa !14
  %i.up = udiv i8 %.lhs.trunc58.i583, 10
  %i.uq = zext nneg i8 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !14
  store i8 %i.us, ptr %i.cj, align 1, !tbaa !14
  store i8 58, ptr %i.ck, align 2, !tbaa !14
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ut = icmp samesign ult i32 %spec.select45.i574, 3600
  %i.uu = icmp eq i32 %i.uk, 0                    ; 2 uses
  %or.cond3.i576 = and i1 %i.ut, %i.uu
  %spec.select47.i577 = select i1 %or.cond3.i576, i8 43, i8 %spec.select.i573
  br i1 %i.uu, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit584, label %bb.cr

bb.cr:                                            ; preds = %.thread, %bb.cq
  %.0.i803 = phi ptr [ %i.ck, %.thread ], [ %i.by, %bb.cq ] ; 3 uses
  %.lhs.trunc.i582 = trunc nuw nsw i32 %i.uk to i8 ; 2 uses
  %i.uv = urem i8 %.lhs.trunc.i582, 10
  %i.uw = zext nneg i8 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !14
  %i.uz = getelementptr inbounds i8, ptr %.0.i803, i64 -1
  store i8 %i.uy, ptr %i.uz, align 1, !tbaa !14
  %i.va = udiv i8 %.lhs.trunc.i582, 10
  %i.vb = zext nneg i8 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !14
  %i.ve = getelementptr inbounds i8, ptr %.0.i803, i64 -2
  store i8 %i.vd, ptr %i.ve, align 1, !tbaa !14
  %i.vf = getelementptr inbounds i8, ptr %.0.i803, i64 -3 ; 2 uses
  store i8 58, ptr %i.vf, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit584

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit584: ; preds = %bb.cq, %bb.cr
  %.141.i801 = phi i8 [ %spec.select.i573, %bb.cr ], [ %spec.select47.i577, %bb.cq ]
  %.1.i580 = phi ptr [ %i.vf, %bb.cr ], [ %i.by, %bb.cq ] ; 3 uses
  %i.vg = udiv i32 %spec.select45.i574, 3600
  %i.vh = urem i32 %i.vg, 10
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !14
  %i.vl = getelementptr inbounds i8, ptr %.1.i580, i64 -1
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !14
  %i.vm = udiv i32 %spec.select45.i574, 36000
  %.lhs.trunc56.i581 = trunc nuw i32 %i.vm to i16
  %i.vn = urem i16 %.lhs.trunc56.i581, 10
  %i.vo = zext nneg i16 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !14
  %i.vr = getelementptr inbounds i8, ptr %.1.i580, i64 -2
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !14
  %i.vs = getelementptr inbounds i8, ptr %.1.i580, i64 -3 ; 3 uses
  store i8 %.141.i801, ptr %i.vs, align 1, !tbaa !14
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = sub i64 %i.cg, %i.vt                    ; 2 uses
  %i.vv = load i64, ptr %i.n, align 8, !tbaa !11
  %i.vw = sub i64 4611686018427387903, %i.vv
  %i.vx = icmp ult i64 %i.vw, %i.vu
  br i1 %i.vx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i585

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i585: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit584
  %i.vy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.vs, i64 noundef %i.vu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit588 unwind label %.loopexit880 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit588: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i585
  %i.vz = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 4 ; 2 uses
  br label %.thread804, !llvm.loop !40

bb.cs:                                            ; preds = %bb.bl
  %i.wa = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 1 ; 12 uses
  %i.wb = icmp eq ptr %i.wa, %i.cb
  br i1 %i.wb, label %.thread804, label %bb.ct, !llvm.loop !40

bb.ct:                                            ; preds = %bb.cs
  %i.wc = load i8, ptr %i.wa, align 1, !tbaa !14  ; 3 uses
  switch i8 %i.wc, label %bb.fl [
    i8 84, label %bb.cu
    i8 122, label %bb.dd
    i8 42, label %bb.dm
    i8 52, label %bb.eu
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.wd = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not354 = icmp eq ptr %i.wd, %.3278
  br i1 %.not354, label %bb.dc, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.cz, ptr %14, align 8, !tbaa !7
  store i64 0, ptr %i.da, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %.3278 to i64
  %i.wg = sub i64 %i.we, %i.wf                    ; 4 uses
  store i64 %i.wg, ptr %i.g, align 8, !tbaa !41
  %i.wh = icmp ugt i64 %i.wg, 15
  br i1 %i.wh, label %.noexc.i590, label %._crit_edge.i.i589

.noexc.i590:                                      ; preds = %bb.cv
  %i.wi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc591 unwind label %bb.da ; 2 uses

.noexc591:                                        ; preds = %.noexc.i590
  store ptr %i.wi, ptr %14, align 8, !tbaa !36
  %i.wj = load i64, ptr %i.g, align 8, !tbaa !41
  store i64 %i.wj, ptr %i.cz, align 8, !tbaa !14
  br label %._crit_edge.i.i589

._crit_edge.i.i589:                               ; preds = %.noexc591, %bb.cv
  %i.wk = phi ptr [ %i.wi, %.noexc591 ], [ %i.cz, %bb.cv ] ; 2 uses
  switch i64 %i.wg, label %bb.cx [
    i64 1, label %bb.cw
    i64 0, label %bb.cy
  ]

bb.cw:                                            ; preds = %._crit_edge.i.i589
  %i.wl = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.wl, ptr %i.wk, align 1, !tbaa !14
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i589
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wk, ptr align 1 %.3278, i64 %i.wg, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %._crit_edge.i.i589
  %i.wm = load i64, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  store i64 %i.wm, ptr %i.da, align 8, !tbaa !11
  %i.wn = load ptr, ptr %14, align 8, !tbaa !36
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wm
  store i8 0, ptr %i.wo, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.wp = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.cz
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593: ; preds = %bb.cz
  %i.wr = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595: ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.dc

bb.da:                                            ; preds = %.noexc.i590
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

bb.db:                                            ; preds = %bb.cy
  %i.wu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wv = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.cz
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596: ; preds = %bb.db
  %i.wx = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596, %bb.da
  %.pn355 = phi { ptr, i32 } [ %i.wt, %bb.da ], [ %i.wu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i596 ], [ %i.wu, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.gv

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit595, %bb.cu
  %i.wz = load i64, ptr %i.n, align 8, !tbaa !11
  %i.xa = icmp eq i64 %i.wz, 4611686018427387903
  br i1 %i.xa, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i599

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i599: ; preds = %bb.dc
  %i.xb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit602 unwind label %.loopexit880 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit602: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i599
  %i.xc = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  br label %.thread804

bb.dd:                                            ; preds = %bb.ct
  %i.xd = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not351 = icmp eq ptr %i.xd, %.3278
  br i1 %.not351, label %bb.dl, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.cx, ptr %15, align 8, !tbaa !7
  store i64 0, ptr %i.cy, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = ptrtoint ptr %.3278 to i64
  %i.xg = sub i64 %i.xe, %i.xf                    ; 4 uses
  store i64 %i.xg, ptr %i.f, align 8, !tbaa !41
  %i.xh = icmp ugt i64 %i.xg, 15
  br i1 %i.xh, label %.noexc.i604, label %._crit_edge.i.i603

.noexc.i604:                                      ; preds = %bb.de
  %i.xi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc605 unwind label %bb.dj ; 2 uses

.noexc605:                                        ; preds = %.noexc.i604
  store ptr %i.xi, ptr %15, align 8, !tbaa !36
  %i.xj = load i64, ptr %i.f, align 8, !tbaa !41
  store i64 %i.xj, ptr %i.cx, align 8, !tbaa !14
  br label %._crit_edge.i.i603

._crit_edge.i.i603:                               ; preds = %.noexc605, %bb.de
  %i.xk = phi ptr [ %i.xi, %.noexc605 ], [ %i.cx, %bb.de ] ; 2 uses
  switch i64 %i.xg, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %bb.dh
  ]

bb.df:                                            ; preds = %._crit_edge.i.i603
  %i.xl = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.xl, ptr %i.xk, align 1, !tbaa !14
  br label %bb.dh

bb.dg:                                            ; preds = %._crit_edge.i.i603
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xk, ptr align 1 %.3278, i64 %i.xg, i1 false)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %._crit_edge.i.i603
  %i.xm = load i64, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  store i64 %i.xm, ptr %i.cy, align 8, !tbaa !11
  %i.xn = load ptr, ptr %15, align 8, !tbaa !36
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xm
  store i8 0, ptr %i.xo, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.xp = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.cx
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %bb.di
  %i.xr = load i64, ptr %i.cx, align 8, !tbaa !14
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.dl

bb.dj:                                            ; preds = %.noexc.i604
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

bb.dk:                                            ; preds = %bb.dh
  %i.xu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xv = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.cx
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610: ; preds = %bb.dk
  %i.xx = load i64, ptr %i.cx, align 8, !tbaa !14
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610, %bb.dj
  %.pn352 = phi { ptr, i32 } [ %i.xt, %bb.dj ], [ %i.xu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610 ], [ %i.xu, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.ef

bb.ed:                                            ; preds = %.noexc.i657
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665

bb.ee:                                            ; preds = %bb.eb
  %i.ace = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acf = load ptr, ptr %17, align 8, !tbaa !36  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.cv
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663: ; preds = %bb.ee
  %i.ach = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663, %bb.ed
  %.pn345 = phi { ptr, i32 } [ %i.acd, %bb.ed ], [ %i.ace, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i663 ], [ %i.ace, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.gv

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, %bb.dx
  %i.acj = load i64, ptr %3, align 8, !tbaa !48   ; 4 uses
  %i.ack = icmp slt i64 %i.acj, 0                 ; 2 uses
  br i1 %i.ack, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.acl = icmp eq i64 %i.acj, -9223372036854775808
  br i1 %i.acl, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.026.i685 = phi ptr [ %i.cf, %bb.eh ], [ %i.by, %bb.eg ]
  %.022.i686 = phi i32 [ 13, %bb.eh ], [ 14, %bb.eg ]
  %.1.i687 = phi i64 [ -922337203685477580, %bb.eh ], [ %i.acj, %bb.eg ]
  %i.acm = sub nsw i64 0, %.1.i687
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.ef
  %.127.i666 = phi ptr [ %.026.i685, %bb.ei ], [ %i.by, %bb.ef ] ; 2 uses
  %.123.i667 = phi i32 [ %.022.i686, %bb.ei ], [ 15, %bb.ef ] ; 2 uses
  %.2.i668 = phi i64 [ %i.acm, %bb.ei ], [ %i.acj, %bb.ef ]
  %scevgep40.i669 = getelementptr i8, ptr %.127.i666, i64 -2
  %i.acn = add nsw i32 %.123.i667, -2
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %bb.ej
  %indvars.iv42.i670 = phi i32 [ %indvars.iv.next.i677, %bb.ek ], [ %i.acn, %bb.ej ] ; 2 uses
  %indvars.iv.i671 = phi ptr [ %scevgep41.i676, %bb.ek ], [ %scevgep40.i669, %bb.ej ] ; 2 uses
  %.228.i672 = phi ptr [ %i.acs, %bb.ek ], [ %.127.i666, %bb.ej ] ; 2 uses
  %.224.i673 = phi i32 [ %i.aco, %bb.ek ], [ %.123.i667, %bb.ej ] ; 3 uses
  %.3.i674 = phi i64 [ %i.act, %bb.ek ], [ %.2.i668, %bb.ej ] ; 3 uses
  %i.aco = add i32 %.224.i673, -1                 ; 2 uses
  %i.acp = urem i64 %.3.i674, 10
  %i.acq = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acp
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !14
  %i.acs = getelementptr inbounds i8, ptr %.228.i672, i64 -1 ; 3 uses
  store i8 %i.acr, ptr %i.acs, align 1, !tbaa !14
  %i.act = udiv i64 %.3.i674, 10
  %.not.i675 = icmp ult i64 %.3.i674, 10
  %scevgep41.i676 = getelementptr i8, ptr %indvars.iv.i671, i64 -1
  %indvars.iv.next.i677 = add i32 %indvars.iv42.i670, -1
  br i1 %.not.i675, label %.preheader.i678, label %bb.ek, !llvm.loop !42

.preheader.i678:                                  ; preds = %bb.ek
  %i.acu = icmp sgt i32 %.224.i673, 1
  br i1 %i.acu, label %.lr.ph.preheader.i682, label %._crit_edge.i679

.lr.ph.preheader.i682:                            ; preds = %.preheader.i678
  %i.acv = getelementptr i8, ptr %.228.i672, i64 -2
  %i.acw = add nsw i32 %.224.i673, -2
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = sub nsw i64 0, %i.acx
  %scevgep.i683 = getelementptr i8, ptr %i.acv, i64 %i.acy
  %i.acz = zext nneg i32 %i.aco to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i683, i8 48, i64 %i.acz, i1 false), !tbaa !14
  %i.ada = zext i32 %indvars.iv42.i670 to i64
  %i.adb = sub nsw i64 0, %i.ada
  %scevgep43.i684 = getelementptr i8, ptr %indvars.iv.i671, i64 %i.adb
  br label %._crit_edge.i679

._crit_edge.i679:                                 ; preds = %.lr.ph.preheader.i682, %.preheader.i678
  %.329.lcssa.i680 = phi ptr [ %i.acs, %.preheader.i678 ], [ %scevgep43.i684, %.lr.ph.preheader.i682 ] ; 2 uses
  br i1 %i.ack, label %bb.el, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688

bb.el:                                            ; preds = %._crit_edge.i679
  %i.adc = getelementptr inbounds i8, ptr %.329.lcssa.i680, i64 -1 ; 2 uses
  store i8 45, ptr %i.adc, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688: ; preds = %._crit_edge.i679, %bb.el
  %.4.i681 = phi ptr [ %i.adc, %bb.el ], [ %.329.lcssa.i680, %._crit_edge.i679 ] ; 8 uses
  %.4.i6811024 = ptrtoint ptr %.4.i681 to i64
  %scevgep1025 = getelementptr i8, ptr %scevgep1023.a, i64 %.4.i6811024 ; 2 uses
  %.not3471147 = icmp eq ptr %i.by, %.4.i681
  br i1 %.not3471147, label %.critedge4, label %.lr.ph1150

bb.em:                                            ; preds = %.lr.ph1150
  %.not347 = icmp eq ptr %i.add, %.4.i681
  br i1 %.not347, label %.critedge4, label %.lr.ph1150, !llvm.loop !50

.lr.ph1150:                                       ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688, %bb.em
  %.01148 = phi ptr [ %i.add, %bb.em ], [ %i.by, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688 ] ; 2 uses
  %i.add = getelementptr inbounds i8, ptr %.01148, i64 -1 ; 3 uses
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !14
  %i.adf = icmp eq i8 %i.ade, 48
  br i1 %i.adf, label %bb.em, label %..critedge4_crit_edge1152, !llvm.loop !50

.loopexit885:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689
  %lpad.loopexit887 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp886:                            ; preds = %bb.et
  %lpad.loopexit.split-lp888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

..critedge4_crit_edge1152:                        ; preds = %.lr.ph1150
  br label %.critedge4, !llvm.loop !50

.critedge4:                                       ; preds = %bb.em, %..critedge4_crit_edge1152, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688
  %.not347.lcssa = phi i1 [ true, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688 ], [ false, %..critedge4_crit_edge1152 ], [ true, %bb.em ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep1025, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit688 ], [ %.01148, %..critedge4_crit_edge1152 ], [ %scevgep1025, %bb.em ]
  %i.adg = load i8, ptr %i.zd, align 1, !tbaa !14
  switch i8 %i.adg, label %bb.es [
    i8 83, label %bb.en
    i8 102, label %bb.eq
  ]

bb.en:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.adh = getelementptr inbounds i8, ptr %.4.i681, i64 -1 ; 2 uses
  store i8 46, ptr %i.adh, align 1, !tbaa !14
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0282 = phi ptr [ %i.adh, %bb.eo ], [ %.4.i681, %bb.en ] ; 2 uses
  %i.adi = load i8, ptr %i.s, align 4, !tbaa !45  ; 2 uses
  %i.adj = srem i8 %i.adi, 10
  %i.adk = sext i8 %i.adj to i64
  %i.adl = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !14
  %i.adn = getelementptr inbounds i8, ptr %.0282, i64 -1
  store i8 %i.adm, ptr %i.adn, align 1, !tbaa !14
  %i.ado = sdiv i8 %i.adi, 10
  %i.adp = srem i8 %i.ado, 10
  %i.adq = sext i8 %i.adp to i64
  %i.adr = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.adq
  %i.ads = load i8, ptr %i.adr, align 1, !tbaa !14
  %i.adt = getelementptr inbounds i8, ptr %.0282, i64 -2 ; 2 uses
  store i8 %i.ads, ptr %i.adt, align 1, !tbaa !14
  br label %bb.es

bb.eq:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.adu = getelementptr inbounds i8, ptr %.4.i681, i64 -1 ; 2 uses
  store i8 48, ptr %i.adu, align 1, !tbaa !14
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er, %bb.ep, %.critedge4
  %.1283 = phi ptr [ %.4.i681, %.critedge4 ], [ %i.adt, %bb.ep ], [ %i.adu, %bb.er ], [ %.4.i681, %bb.eq ] ; 2 uses
  %i.adv = ptrtoint ptr %.0.lcssa to i64
  %i.adw = ptrtoint ptr %.1283 to i64
  %i.adx = sub i64 %i.adv, %i.adw                 ; 2 uses
  %i.ady = load i64, ptr %i.n, align 8, !tbaa !11
  %i.adz = sub i64 4611686018427387903, %i.ady
  %i.aea = icmp ult i64 %i.adz, %i.adx
  br i1 %i.aea, label %bb.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689

bb.et:                                            ; preds = %bb.es
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc690 unwind label %.loopexit.split-lp886

.noexc690:                                        ; preds = %bb.et
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689: ; preds = %bb.es
  %i.aeb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.1283, i64 noundef %i.adx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692 unwind label %.loopexit885 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i689
  %i.aec = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread804

bb.eu:                                            ; preds = %bb.ct
  %i.aed = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not334 = icmp eq ptr %i.aed, %i.cb
  br i1 %.not334, label %bb.fm, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !14
  %i.aef = icmp eq i8 %i.aee, 89
  br i1 %i.aef, label %bb.ew, label %bb.fm

bb.ew:                                            ; preds = %bb.ev
  %i.aeg = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not341 = icmp eq ptr %i.aeg, %.3278
  br i1 %.not341, label %bb.fe, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %i.cn, ptr %18, align 8, !tbaa !7
  store i64 0, ptr %i.co, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %.3278 to i64
  %i.aej = sub i64 %i.aeh, %i.aei                 ; 4 uses
  store i64 %i.aej, ptr %i.c, align 8, !tbaa !41
  %i.aek = icmp ugt i64 %i.aej, 15
  br i1 %i.aek, label %.noexc.i694, label %._crit_edge.i.i693

.noexc.i694:                                      ; preds = %bb.ex
  %i.ael = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc695 unwind label %bb.fc ; 2 uses

.noexc695:                                        ; preds = %.noexc.i694
  store ptr %i.ael, ptr %18, align 8, !tbaa !36
  %i.aem = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.aem, ptr %i.cn, align 8, !tbaa !14
  br label %._crit_edge.i.i693

._crit_edge.i.i693:                               ; preds = %.noexc695, %bb.ex
  %i.aen = phi ptr [ %i.ael, %.noexc695 ], [ %i.cn, %bb.ex ] ; 2 uses
  switch i64 %i.aej, label %bb.ez [
    i64 1, label %bb.ey
    i64 0, label %bb.fa
  ]

bb.ey:                                            ; preds = %._crit_edge.i.i693
  %i.aeo = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.aeo, ptr %i.aen, align 1, !tbaa !14
  br label %bb.fa

bb.ez:                                            ; preds = %._crit_edge.i.i693
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aen, ptr align 1 %.3278, i64 %i.aej, i1 false)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey, %._crit_edge.i.i693
  %i.aep = load i64, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  store i64 %i.aep, ptr %i.co, align 8, !tbaa !11
  %i.aeq = load ptr, ptr %18, align 8, !tbaa !36
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aep
  store i8 0, ptr %i.aer, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fb unwind label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.aes = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.cn
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697: ; preds = %bb.fb
  %i.aeu = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i697
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.fe

bb.fc:                                            ; preds = %.noexc.i694
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

bb.fd:                                            ; preds = %bb.fa
  %i.aex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aey = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.cn
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700: ; preds = %bb.fd
  %i.afa = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700, %bb.fc
  %.pn342 = phi { ptr, i32 } [ %i.aew, %bb.fc ], [ %i.aex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i700 ], [ %i.aex, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.gv

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit699, %bb.ew
  %i.afc = load i64, ptr %5, align 8, !tbaa !24   ; 4 uses
  %i.afd = icmp slt i64 %i.afc, 0                 ; 2 uses
  br i1 %i.afd, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  %i.afe = icmp eq i64 %i.afc, -9223372036854775808
  br i1 %i.afe, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.026.i722 = phi ptr [ %i.cf, %bb.fg ], [ %i.by, %bb.ff ]
  %.022.i723 = phi i32 [ 2, %bb.fg ], [ 3, %bb.ff ]
  %.1.i724 = phi i64 [ -922337203685477580, %bb.fg ], [ %i.afc, %bb.ff ]
  %i.aff = sub nsw i64 0, %.1.i724
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fe
  %.127.i703 = phi ptr [ %.026.i722, %bb.fh ], [ %i.by, %bb.fe ] ; 2 uses
  %.123.i704 = phi i32 [ %.022.i723, %bb.fh ], [ 4, %bb.fe ] ; 2 uses
  %.2.i705 = phi i64 [ %i.aff, %bb.fh ], [ %i.afc, %bb.fe ]
  %scevgep40.i706 = getelementptr i8, ptr %.127.i703, i64 -2
  %i.afg = add nsw i32 %.123.i704, -2
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fj, %bb.fi
  %indvars.iv42.i707 = phi i32 [ %indvars.iv.next.i714, %bb.fj ], [ %i.afg, %bb.fi ] ; 2 uses
  %indvars.iv.i708 = phi ptr [ %scevgep41.i713, %bb.fj ], [ %scevgep40.i706, %bb.fi ] ; 2 uses
  %.228.i709 = phi ptr [ %i.afl, %bb.fj ], [ %.127.i703, %bb.fi ] ; 2 uses
  %.224.i710 = phi i32 [ %i.afh, %bb.fj ], [ %.123.i704, %bb.fi ] ; 3 uses
  %.3.i711 = phi i64 [ %i.afm, %bb.fj ], [ %.2.i705, %bb.fi ] ; 3 uses
  %i.afh = add i32 %.224.i710, -1                 ; 2 uses
  %i.afi = urem i64 %.3.i711, 10
  %i.afj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !14
  %i.afl = getelementptr inbounds i8, ptr %.228.i709, i64 -1 ; 3 uses
  store i8 %i.afk, ptr %i.afl, align 1, !tbaa !14
  %i.afm = udiv i64 %.3.i711, 10
  %.not.i712 = icmp ult i64 %.3.i711, 10
  %scevgep41.i713 = getelementptr i8, ptr %indvars.iv.i708, i64 -1
  %indvars.iv.next.i714 = add i32 %indvars.iv42.i707, -1
  br i1 %.not.i712, label %.preheader.i715, label %bb.fj, !llvm.loop !42

.preheader.i715:                                  ; preds = %bb.fj
  %i.afn = icmp sgt i32 %.224.i710, 1
  br i1 %i.afn, label %.lr.ph.preheader.i719, label %._crit_edge.i716

.lr.ph.preheader.i719:                            ; preds = %.preheader.i715
  %i.afo = getelementptr i8, ptr %.228.i709, i64 -2
  %i.afp = add nsw i32 %.224.i710, -2
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = sub nsw i64 0, %i.afq
  %scevgep.i720 = getelementptr i8, ptr %i.afo, i64 %i.afr
  %i.afs = zext nneg i32 %i.afh to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i720, i8 48, i64 %i.afs, i1 false), !tbaa !14
  %i.aft = zext i32 %indvars.iv42.i707 to i64
  %i.afu = sub nsw i64 0, %i.aft
  %scevgep43.i721 = getelementptr i8, ptr %indvars.iv.i708, i64 %i.afu
  br label %._crit_edge.i716

._crit_edge.i716:                                 ; preds = %.lr.ph.preheader.i719, %.preheader.i715
  %.329.lcssa.i717 = phi ptr [ %i.afl, %.preheader.i715 ], [ %scevgep43.i721, %.lr.ph.preheader.i719 ] ; 2 uses
  br i1 %i.afd, label %bb.fk, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit725

bb.fk:                                            ; preds = %._crit_edge.i716
  %i.afv = getelementptr inbounds i8, ptr %.329.lcssa.i717, i64 -1 ; 2 uses
  store i8 45, ptr %i.afv, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit725

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit725: ; preds = %._crit_edge.i716, %bb.fk
  %.4.i718 = phi ptr [ %i.afv, %bb.fk ], [ %.329.lcssa.i717, %._crit_edge.i716 ] ; 2 uses
  %i.afw = ptrtoint ptr %.4.i718 to i64
  %i.afx = sub i64 %i.cg, %i.afw                  ; 2 uses
  %i.afy = load i64, ptr %i.n, align 8, !tbaa !11
  %i.afz = sub i64 4611686018427387903, %i.afy
  %i.aga = icmp ult i64 %i.afz, %i.afx
  br i1 %i.aga, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i726

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i726: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit725
  %i.agb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.4.i718, i64 noundef %i.afx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729 unwind label %.loopexit880 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i726
  %i.agc = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread804

bb.fl:                                            ; preds = %bb.ct
  %i.agd = sext i8 %i.wc to i32
  %isdigittmp = add nsw i32 %i.agd, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.fm, label %.thread804

bb.fm:                                            ; preds = %bb.fl, %bb.ev, %bb.eu
  %21 = sext i8 %i.wc to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %21, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread804, label %.thread817

.thread817:                                       ; preds = %bb.fm, %bb.fo
  %memchr100.i = phi ptr [ %memchr.i, %bb.fo ], [ %memchr95.i, %bb.fm ]
  %.199.i.idx = phi i64 [ %.199.i.add, %bb.fo ], [ 1, %bb.fm ] ; 2 uses
  %.05397.i = phi i32 [ %i.agm, %bb.fo ], [ 0, %bb.fm ] ; 3 uses
  %i.age = ptrtoint ptr %memchr100.i to i64
  %i.agf = trunc i64 %i.age to i32
  %i.agg = sub i32 %i.agf, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.agh = icmp sgt i32 %i.agg, 9
  br i1 %i.agh, label %select.unfold.i, label %.lr.ph1157

.lr.ph1157:                                       ; preds = %.thread817
  %i.agi = icmp slt i32 %.05397.i, -214748364
  br i1 %i.agi, label %.thread804, label %bb.fn

bb.fn:                                            ; preds = %.lr.ph1157
  %i.agj = mul nsw i32 %.05397.i, 10              ; 2 uses
  %i.agk = or disjoint i32 %i.agg, -2147483648
  %i.agl = icmp slt i32 %i.agj, %i.agk
  br i1 %i.agl, label %.thread804, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.agm = sub nsw i32 %i.agj, %i.agg             ; 2 uses
  %.199.i.add = add nuw nsw i64 %.199.i.idx, 1    ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.199.i.add
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !14
  %i.agp = sext i8 %i.ago to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.agp, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.thread817

select.unfold.i:                                  ; preds = %bb.fo, %.thread817
  %.255.ph.i = phi i32 [ %i.agm, %bb.fo ], [ %.05397.i, %.thread817 ] ; 4 uses
  %.3.ph.i.idx = phi i64 [ %.199.i.add, %bb.fo ], [ %.199.i.idx, %.thread817 ] ; 2 uses
  %.3.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.3.ph.i.idx ; 4 uses
  %i.agq = icmp eq i64 %.3.ph.i.idx, 1
  %22 = icmp eq i32 %.255.ph.i, -2147483648
  %or.cond80.i = select i1 %i.agq, i1 true, i1 %22
  br i1 %or.cond80.i, label %.thread804, label %bb.fp

bb.fp:                                            ; preds = %select.unfold.i
  %i.agr = sub nsw i32 0, %.255.ph.i              ; 5 uses
  %or.cond77.i = icmp ugt i32 %i.agr, 1024
  br i1 %or.cond77.i, label %.thread804, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.fp
  %23 = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  switch i8 %23, label %.thread804 [
    i8 83, label %bb.fq
    i8 102, label %bb.fq
  ]

bb.fq:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  %i.ags = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not336 = icmp eq ptr %i.ags, %.3278
  br i1 %.not336, label %bb.fy, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.db, ptr %19, align 8, !tbaa !7
  store i64 0, ptr %i.dc, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.agt = ptrtoint ptr %i.ags to i64
  %i.agu = ptrtoint ptr %.3278 to i64
  %i.agv = sub i64 %i.agt, %i.agu                 ; 4 uses
  store i64 %i.agv, ptr %i.b, align 8, !tbaa !41
  %i.agw = icmp ugt i64 %i.agv, 15
  br i1 %i.agw, label %.noexc.i736, label %._crit_edge.i.i735

.noexc.i736:                                      ; preds = %bb.fr
  %i.agx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc737 unwind label %bb.fw ; 2 uses

.noexc737:                                        ; preds = %.noexc.i736
  store ptr %i.agx, ptr %19, align 8, !tbaa !36
  %i.agy = load i64, ptr %i.b, align 8, !tbaa !41
  store i64 %i.agy, ptr %i.db, align 8, !tbaa !14
  br label %._crit_edge.i.i735

._crit_edge.i.i735:                               ; preds = %.noexc737, %bb.fr
  %i.agz = phi ptr [ %i.agx, %.noexc737 ], [ %i.db, %bb.fr ] ; 2 uses
  switch i64 %i.agv, label %bb.ft [
    i64 1, label %bb.fs
    i64 0, label %bb.fu
  ]

bb.fs:                                            ; preds = %._crit_edge.i.i735
  %i.aha = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.aha, ptr %i.agz, align 1, !tbaa !14
  br label %bb.fu

bb.ft:                                            ; preds = %._crit_edge.i.i735
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agz, ptr align 1 %.3278, i64 %i.agv, i1 false)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %._crit_edge.i.i735
  %i.ahb = load i64, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  store i64 %i.ahb, ptr %i.dc, align 8, !tbaa !11
  %i.ahc = load ptr, ptr %19, align 8, !tbaa !36
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.ahb
  store i8 0, ptr %i.ahd, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fv unwind label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.ahe = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.ahf = icmp eq ptr %i.ahe, %i.db
  br i1 %i.ahf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739: ; preds = %bb.fv
  %i.ahg = load i64, ptr %i.db, align 8, !tbaa !14
  %i.ahh = add i64 %i.ahg, 1
  call void @_ZdlPvm(ptr noundef %i.ahe, i64 noundef %i.ahh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i739
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.fy

.loopexit890:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768
  %lpad.loopexit892 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp891:                            ; preds = %bb.gm
  %lpad.loopexit.split-lp893 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fw:                                            ; preds = %.noexc.i736
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744

bb.fx:                                            ; preds = %bb.fu
  %i.ahj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahk = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.ahl = icmp eq ptr %i.ahk, %i.db
  br i1 %i.ahl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742: ; preds = %bb.fx
  %i.ahm = load i64, ptr %i.db, align 8, !tbaa !14
  %i.ahn = add i64 %i.ahm, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.ahn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742, %bb.fw
  %.pn337 = phi { ptr, i32 } [ %i.ahi, %bb.fw ], [ %i.ahj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i742 ], [ %i.ahj, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.gv

bb.fy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit741, %bb.fq
  %.not872 = icmp eq i32 %.255.ph.i, 0
  br i1 %.not872, label %bb.gk, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aho = icmp samesign ugt i32 %i.agr, 18
  br i1 %i.aho, label %.thread821, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahp = icmp samesign ugt i32 %i.agr, 15
  br i1 %i.ahp, label %.thread821, label %bb.gb

.thread821:                                       ; preds = %bb.fz, %bb.ga
  %.0797824 = phi i32 [ %i.agr, %bb.ga ], [ 18, %bb.fz ] ; 2 uses
  %i.ahq = load i64, ptr %3, align 8, !tbaa !48
  %i.ahr = zext nneg i32 %.0797824 to i64
  %i.ahs = getelementptr [8 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.ahr
  %i.aht = getelementptr i8, ptr %i.ahs, i64 -120
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !41
  %i.ahv = mul nsw i64 %i.ahu, %i.ahq
  br label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ahw = load i64, ptr %3, align 8, !tbaa !48
  %24 = sext i32 %.255.ph.i to i64
  %25 = getelementptr [8 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %24
  %26 = getelementptr i8, ptr %25, i64 120
  %i.ahx = load i64, ptr %26, align 8, !tbaa !41
  %i.ahy = sdiv i64 %i.ahw, %i.ahx
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %.thread821
  %.0797823 = phi i32 [ %.0797824, %.thread821 ], [ %i.agr, %bb.gb ] ; 3 uses
  %i.ahz = phi i64 [ %i.ahv, %.thread821 ], [ %i.ahy, %bb.gb ] ; 4 uses
  %i.aia = icmp slt i64 %i.ahz, 0                 ; 2 uses
  br i1 %i.aia, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  %i.aib = add nsw i32 %.0797823, -1
  %i.aic = icmp eq i64 %i.ahz, -9223372036854775808
  br i1 %i.aic, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.aid = add nsw i32 %.0797823, -2
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.026.i764 = phi ptr [ %i.cf, %bb.ge ], [ %i.by, %bb.gd ]
  %.022.i765 = phi i32 [ %i.aid, %bb.ge ], [ %i.aib, %bb.gd ]
  %.1.i766 = phi i64 [ -922337203685477580, %bb.ge ], [ %i.ahz, %bb.gd ]
  %i.aie = sub nsw i64 0, %.1.i766
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.gc
  %.127.i745 = phi ptr [ %.026.i764, %bb.gf ], [ %i.by, %bb.gc ] ; 2 uses
  %.123.i746 = phi i32 [ %.022.i765, %bb.gf ], [ %.0797823, %bb.gc ] ; 2 uses
  %.2.i747 = phi i64 [ %i.aie, %bb.gf ], [ %i.ahz, %bb.gc ]
  %scevgep40.i748 = getelementptr i8, ptr %.127.i745, i64 -2
  %i.aif = add nsw i32 %.123.i746, -2
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv42.i749 = phi i32 [ %indvars.iv.next.i756, %bb.gh ], [ %i.aif, %bb.gg ] ; 2 uses
  %indvars.iv.i750 = phi ptr [ %scevgep41.i755, %bb.gh ], [ %scevgep40.i748, %bb.gg ] ; 2 uses
  %.228.i751 = phi ptr [ %i.aik, %bb.gh ], [ %.127.i745, %bb.gg ] ; 2 uses
  %.224.i752 = phi i32 [ %i.aig, %bb.gh ], [ %.123.i746, %bb.gg ] ; 3 uses
  %.3.i753 = phi i64 [ %i.ail, %bb.gh ], [ %.2.i747, %bb.gg ] ; 3 uses
  %i.aig = add i32 %.224.i752, -1                 ; 2 uses
  %i.aih = urem i64 %.3.i753, 10
  %i.aii = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aih
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !14
  %i.aik = getelementptr inbounds i8, ptr %.228.i751, i64 -1 ; 3 uses
  store i8 %i.aij, ptr %i.aik, align 1, !tbaa !14
  %i.ail = udiv i64 %.3.i753, 10
  %.not.i754 = icmp ult i64 %.3.i753, 10
  %scevgep41.i755 = getelementptr i8, ptr %indvars.iv.i750, i64 -1
  %indvars.iv.next.i756 = add i32 %indvars.iv42.i749, -1
  br i1 %.not.i754, label %.preheader.i757, label %bb.gh, !llvm.loop !42

.preheader.i757:                                  ; preds = %bb.gh
  %i.aim = icmp sgt i32 %.224.i752, 1
  br i1 %i.aim, label %.lr.ph.preheader.i761, label %._crit_edge.i758

.lr.ph.preheader.i761:                            ; preds = %.preheader.i757
  %i.ain = getelementptr i8, ptr %.228.i751, i64 -2
  %i.aio = add nsw i32 %.224.i752, -2
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = sub nsw i64 0, %i.aip
  %scevgep.i762 = getelementptr i8, ptr %i.ain, i64 %i.aiq
  %i.air = zext nneg i32 %i.aig to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i762, i8 48, i64 %i.air, i1 false), !tbaa !14
  %i.ais = zext i32 %indvars.iv42.i749 to i64
  %i.ait = sub nsw i64 0, %i.ais
  %scevgep43.i763 = getelementptr i8, ptr %indvars.iv.i750, i64 %i.ait
  br label %._crit_edge.i758

._crit_edge.i758:                                 ; preds = %.lr.ph.preheader.i761, %.preheader.i757
  %.329.lcssa.i759 = phi ptr [ %i.aik, %.preheader.i757 ], [ %scevgep43.i763, %.lr.ph.preheader.i761 ] ; 2 uses
  br i1 %i.aia, label %bb.gi, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767

bb.gi:                                            ; preds = %._crit_edge.i758
  %i.aiu = getelementptr inbounds i8, ptr %.329.lcssa.i759, i64 -1 ; 2 uses
  store i8 45, ptr %i.aiu, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767: ; preds = %._crit_edge.i758, %bb.gi
  %.4.i760 = phi ptr [ %i.aiu, %bb.gi ], [ %.329.lcssa.i759, %._crit_edge.i758 ] ; 2 uses
  %i.aiv = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  %i.aiw = icmp eq i8 %i.aiv, 83
  br i1 %i.aiw, label %bb.gj, label %.thread825

bb.gj:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767
  %i.aix = getelementptr inbounds i8, ptr %.4.i760, i64 -1 ; 2 uses
  store i8 46, ptr %i.aix, align 1, !tbaa !14
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.fy
  %.2284.ph = phi ptr [ %i.by, %bb.fy ], [ %i.aix, %bb.gj ] ; 3 uses
  %.pr = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  %i.aiy = icmp eq i8 %.pr, 83
  br i1 %i.aiy, label %bb.gl, label %.thread825

bb.gl:                                            ; preds = %bb.gk
  %i.aiz = load i8, ptr %i.s, align 4, !tbaa !45  ; 2 uses
  %i.aja = srem i8 %i.aiz, 10
  %i.ajb = sext i8 %i.aja to i64
  %i.ajc = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajb
  %i.ajd = load i8, ptr %i.ajc, align 1, !tbaa !14
  %i.aje = getelementptr inbounds i8, ptr %.2284.ph, i64 -1
  store i8 %i.ajd, ptr %i.aje, align 1, !tbaa !14
  %i.ajf = sdiv i8 %i.aiz, 10
  %i.ajg = srem i8 %i.ajf, 10
  %i.ajh = sext i8 %i.ajg to i64
  %i.aji = getelementptr inbounds i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !14
  %i.ajk = getelementptr inbounds i8, ptr %.2284.ph, i64 -2 ; 2 uses
  store i8 %i.ajj, ptr %i.ajk, align 1, !tbaa !14
  br label %.thread825

.thread825:                                       ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767, %bb.gl, %bb.gk
  %.3285 = phi ptr [ %i.ajk, %bb.gl ], [ %.2284.ph, %bb.gk ], [ %.4.i760, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit767 ] ; 2 uses
  %i.ajl = ptrtoint ptr %.3285 to i64
  %i.ajm = sub i64 %i.cg, %i.ajl                  ; 2 uses
  %i.ajn = load i64, ptr %i.n, align 8, !tbaa !11
  %i.ajo = sub i64 4611686018427387903, %i.ajn
  %i.ajp = icmp ult i64 %i.ajo, %i.ajm
  br i1 %i.ajp, label %bb.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768

bb.gm:                                            ; preds = %.thread825
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc769 unwind label %.loopexit.split-lp891

.noexc769:                                        ; preds = %bb.gm
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768: ; preds = %.thread825
  %i.ajq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.3285, i64 noundef %i.ajm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771 unwind label %.loopexit890 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i768
  %i.ajr = getelementptr inbounds nuw i8, ptr %.3.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread804

.thread804:                                       ; preds = %.lr.ph1157, %bb.fn, %bb.fm, %bb.dm, %bb.bl, %select.unfold.i, %bb.fp, %bb.dw, %bb.bm, %bb.ch, %bb.ci, %bb.bx, %bb.bn, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit602, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729, %bb.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit627, %bb.cs, %bb.u, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit588, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394
  %.6281 = phi ptr [ %.3278, %bb.bl ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394 ], [ %i.rj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit544 ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566 ], [ %i.vz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit588 ], [ %.3278, %bb.u ], [ %.3278, %bb.v ], [ %.3278, %bb.cs ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit602 ], [ %i.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit627 ], [ %i.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655 ], [ %i.aec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692 ], [ %i.agc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729 ], [ %.3278, %bb.bm ], [ %.3278, %bb.fl ], [ %.3278, %bb.dw ], [ %i.ajr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771 ], [ %.3278, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.3278, %bb.by ], [ %.3278, %bb.bn ], [ %.3278, %bb.bx ], [ %.3278, %bb.ci ], [ %.3278, %bb.ch ], [ %.3278, %bb.dm ], [ %.3278, %bb.fp ], [ %.3278, %select.unfold.i ], [ %.3278, %bb.fm ], [ %.3278, %bb.fn ], [ %.3278, %.lr.ph1157 ] ; 2 uses
  %.6274 = phi ptr [ %.2270.lcssa, %bb.bl ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit394 ], [ %i.rj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit544 ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit566 ], [ %i.vz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit588 ], [ %.2270.lcssa, %bb.u ], [ %.2270.lcssa, %bb.v ], [ %i.wa, %bb.cs ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit602 ], [ %i.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit627 ], [ %i.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit655 ], [ %i.aec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit692 ], [ %i.agc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit729 ], [ %.2270.lcssa, %bb.bm ], [ %i.wa, %bb.fl ], [ %i.wa, %bb.dw ], [ %i.ajr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit771 ], [ %i.wa, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2270.lcssa, %bb.by ], [ %.2270.lcssa, %bb.bn ], [ %.2270.lcssa, %bb.bx ], [ %.2270.lcssa, %bb.ci ], [ %.2270.lcssa, %bb.ch ], [ %i.wa, %bb.dm ], [ %i.wa, %bb.fp ], [ %i.wa, %select.unfold.i ], [ %i.wa, %bb.fm ], [ %i.wa, %bb.fn ], [ %i.wa, %.lr.ph1157 ] ; 2 uses
  %.not = icmp eq ptr %.6274, %i.cb
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread804, %bb.i
  %.0275.lcssa = phi ptr [ %i.bz, %bb.i ], [ %.6281, %.thread804 ] ; 4 uses
  %.not319 = icmp eq ptr %i.cb, %.0275.lcssa
  br i1 %.not319, label %bb.gu, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.ajs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.ajs, ptr %20, align 8, !tbaa !7
  %i.ajt = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.ajt, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.aju = ptrtoint ptr %i.cb to i64
  %i.ajv = ptrtoint ptr %.0275.lcssa to i64
  %i.ajw = sub i64 %i.aju, %i.ajv                 ; 4 uses
  store i64 %i.ajw, ptr %i.a, align 8, !tbaa !41
  %i.ajx = icmp ugt i64 %i.ajw, 15
  br i1 %i.ajx, label %.noexc.i773, label %._crit_edge.i.i772

.noexc.i773:                                      ; preds = %bb.gn
  %i.ajy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc774 unwind label %bb.gs ; 2 uses

.noexc774:                                        ; preds = %.noexc.i773
  store ptr %i.ajy, ptr %20, align 8, !tbaa !36
  %i.ajz = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.ajz, ptr %i.ajs, align 8, !tbaa !14
  br label %._crit_edge.i.i772

._crit_edge.i.i772:                               ; preds = %.noexc774, %bb.gn
  %i.aka = phi ptr [ %i.ajy, %.noexc774 ], [ %i.ajs, %bb.gn ] ; 2 uses
  switch i64 %i.ajw, label %bb.gp [
    i64 1, label %bb.go
    i64 0, label %bb.gq
  ]

bb.go:                                            ; preds = %._crit_edge.i.i772
  %i.akb = load i8, ptr %.0275.lcssa, align 1, !tbaa !14
  store i8 %i.akb, ptr %i.aka, align 1, !tbaa !14
  br label %bb.gq

bb.gp:                                            ; preds = %._crit_edge.i.i772
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aka, ptr align 1 %.0275.lcssa, i64 %i.ajw, i1 false)
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %._crit_edge.i.i772
  %i.akc = load i64, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  store i64 %i.akc, ptr %i.ajt, align 8, !tbaa !11
  %i.akd = load ptr, ptr %20, align 8, !tbaa !36
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 %i.akc
  store i8 0, ptr %i.ake, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.gr unwind label %bb.gt

bb.gr:                                            ; preds = %bb.gq
  %i.akf = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.akg = icmp eq ptr %i.akf, %i.ajs
  br i1 %i.akg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit778, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i776

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i776: ; preds = %bb.gr
  %i.akh = load i64, ptr %i.ajs, align 8, !tbaa !14
  %i.aki = add i64 %i.akh, 1
  call void @_ZdlPvm(ptr noundef %i.akf, i64 noundef %i.aki) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit778

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit778: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i776
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.gu

bb.gs:                                            ; preds = %.noexc.i773
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781

bb.gt:                                            ; preds = %bb.gq
  %i.akk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akl = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.ajs
  br i1 %i.akm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779: ; preds = %bb.gt
  %i.akn = load i64, ptr %i.ajs, align 8, !tbaa !14
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.ako) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779, %bb.gs
  %.pn = phi { ptr, i32 } [ %i.akj, %bb.gs ], [ %i.akk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i779 ], [ %i.akk, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.gv

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit778, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.gv:                                            ; preds = %.loopexit890, %.loopexit.split-lp891, %.loopexit885, %.loopexit.split-lp886, %.loopexit880, %.loopexit.split-lp881, %.loopexit875, %.loopexit.split-lp876, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781
  %.pn370.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit781 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit744 ], [ %lpad.loopexit.split-lp878, %.loopexit.split-lp876 ], [ %.pn367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390 ], [ %.pn364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533 ], [ %.pn361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %.pn358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.pn355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit598 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612 ], [ %.pn349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit637 ], [ %lpad.loopexit.split-lp883, %.loopexit.split-lp881 ], [ %.pn345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp888, %.loopexit.split-lp886 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit877, %.loopexit875 ], [ %lpad.loopexit882, %.loopexit880 ], [ %lpad.loopexit887, %.loopexit885 ], [ %lpad.loopexit892, %.loopexit890 ], [ %lpad.loopexit.split-lp893, %.loopexit.split-lp891 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.m
  %.pn370.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn, %bb.gv ], [ %i.do, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.l
  %.pn370.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn.pn.pn, %bb.gw ], [ %i.dn, %bb.l ]
  %i.akp = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.akq = icmp eq ptr %i.akp, %i.m
  br i1 %i.akq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782: ; preds = %bb.gx
  %i.akr = load i64, ptr %i.m, align 8, !tbaa !14
  %i.aks = add i64 %i.akr, 1
  call void @_ZdlPvm(ptr noundef %i.akp, i64 noundef %i.aks) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit784: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i782
  resume { ptr, i32 } %.pn370.pn.pn.pn.pn.pn
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZNK4absl12lts_2025051213time_internal4cctz9time_zone6lookupERKNSt6chrono10time_pointINS4_3_V212system_clockENS4_8durationIlSt5ratioILl1ELl1EEEEEE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::time_internal::cctz::time_zone::absolute_lookup") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = shl i64 %i.b, 1                          ; 7 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #19
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21 ; 5 uses
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = add nsw i64 %i.c, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.g, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !36
  %i.i = tail call i64 @strftime(ptr noundef nonnull %i.e, i64 noundef %i.c, ptr noundef %i.h, ptr noundef nonnull %2) #18 ; 2 uses
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.lcssa43 = phi ptr [ %i.e, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.aa, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ai, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 3 uses
  %.lcssa41 = phi i64 [ %i.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.w, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.ae, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.am, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 2 uses
  %.lcssa39 = phi i64 [ %i.c, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.1 ], [ %i.y, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.2 ], [ %i.ag, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.3 ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %.lcssa41
  br i1 %i.m, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc22 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit

.noexc22:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.b
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa41)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit25 unwind label %_ZNSt6vectorIcSaIcEED2Ev.exit ; 0 uses

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa39) #20
  resume { ptr, i32 } %i.o

_ZNSt6vectorIcSaIcEED2Ev.exit25:                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa43, i64 noundef %.lcssa39) #20
  br label %.loopexit

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.c) #20
end_hunk_2
