inline.NumInlined: 481
inline.NumDeleted: 166
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
  %.not997 = icmp samesign eq i64 %i.ca, 0
  br i1 %.not997, label %._crit_edge, label %.preheader.lr.ph

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
  %.sroa.2.0..sroa_idx.i.i436 = getelementptr inbounds nuw i8, ptr %9, i64 8
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
  %scevgep1019.a = getelementptr i8, ptr %i.k, i64 %i.dj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread800
  %.0268999 = phi ptr [ %i.bz, %.preheader.lr.ph ], [ %.6274, %.thread800 ] ; 6 uses
  %.0275998 = phi ptr [ %i.bz, %.preheader.lr.ph ], [ %.6281, %.thread800 ] ; 3 uses
  %scevgep = getelementptr i8, ptr %.0268999, i64 %i.di
  %.02689991014 = ptrtoint ptr %.0268999 to i64   ; 2 uses
  %i.dk = sub i64 0, %.02689991014
  %scevgep1015 = getelementptr i8, ptr %scevgep, i64 %i.dk
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
  %.1269989 = phi ptr [ %.0268999, %.preheader ], [ %i.dm, %bb.k ] ; 3 uses
  %i.dl = load i8, ptr %.1269989, align 1, !tbaa !14
  %.not322 = icmp eq i8 %i.dl, 37
  br i1 %.not322, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %.1269989, i64 1 ; 2 uses
  %.not321 = icmp eq ptr %i.dm, %i.cb
  br i1 %.not321, label %.critedge, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %bb.a
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.m:                                             ; preds = %bb.b
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

.critedge:                                        ; preds = %bb.k, %bb.j
  %.1269.lcssa = phi ptr [ %scevgep1015, %bb.k ], [ %.1269989, %bb.j ] ; 8 uses
  %.1269.lcssa1017 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not323 = icmp ne ptr %.1269.lcssa, %.0268999
  %i.dp = icmp eq ptr %.0275998, %.0268999
  %or.cond = select i1 %.not323, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.n:                                             ; preds = %.critedge
  %i.dq = sub i64 %.1269.lcssa1017, %.02689991014 ; 2 uses
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
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.0275998, i64 noundef %i.dq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %.critedge
  %.1276 = phi ptr [ %.0275998, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 5 uses
  %.0249 = phi ptr [ %.0268999, %.critedge ], [ %.1269.lcssa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i ] ; 2 uses
  %.not324990 = icmp eq ptr %.1269.lcssa, %i.cb
  br i1 %.not324990, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %scevgep1016 = getelementptr i8, ptr %.1269.lcssa, i64 %i.di
  %i.dv = sub i64 0, %.1269.lcssa1017
  %scevgep1018 = getelementptr i8, ptr %scevgep1016, i64 %i.dv
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.2270991 = phi ptr [ %i.dy, %bb.p ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.dw = load i8, ptr %.2270991, align 1, !tbaa !14
  %i.dx = icmp eq i8 %i.dw, 37                    ; 3 uses
  br i1 %i.dx, label %bb.p, label %.critedge2

bb.p:                                             ; preds = %.lr.ph
  %i.dy = getelementptr inbounds nuw i8, ptr %.2270991, i64 1 ; 2 uses
  %.not324 = icmp eq ptr %i.dy, %i.cb
  br i1 %.not324, label %.critedge2, label %.lr.ph, !llvm.loop !39

.critedge2:                                       ; preds = %.lr.ph, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %scevgep1018, %bb.p ], [ %.2270991, %.lr.ph ] ; 43 uses
  %.not324.lcssa = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %i.dx, %bb.p ], [ %i.dx, %.lr.ph ] ; 2 uses
  %.not325 = icmp ne ptr %.2270.lcssa, %.0249
  %i.dz = icmp eq ptr %.1276, %.0249
  %or.cond377 = select i1 %.not325, i1 %i.dz, i1 false
  br i1 %or.cond377, label %bb.q, label %bb.v

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
          to label %.noexc381 unwind label %.loopexit.split-lp872

.noexc381:                                        ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380: ; preds = %bb.q
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.1276, i64 noundef %i.ed)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383 unwind label %.loopexit871 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.ei = and i64 %i.ec, -2
  %i.ej = getelementptr inbounds nuw i8, ptr %.1276, i64 %i.ei ; 4 uses
  %.not326 = icmp ne ptr %i.ej, %.2270.lcssa
  %or.cond378 = and i1 %.not324.lcssa, %.not326
  br i1 %or.cond378, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ej, align 1, !tbaa !14
  %i.em = load i64, ptr %i.n, align 8, !tbaa !11  ; 4 uses
  %i.en = add i64 %i.em, 1                        ; 3 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.m                 ; 2 uses
  br i1 %i.ep, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.eq = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.eq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.t, %bb.s
  %i.er = load i64, ptr %i.m, align 8
  %i.es = select i1 %i.ep, i64 15, i64 %i.er
  %i.et = icmp ugt i64 %i.en, %i.es
  br i1 %i.et, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.em, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc384 unwind label %.loopexit871

.noexc384:                                        ; preds = %bb.u
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
  br label %bb.v

.loopexit871:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380, %bb.u
  %lpad.loopexit873 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp872:                            ; preds = %bb.r
  %lpad.loopexit.split-lp874 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383, %.critedge2
  %.3278 = phi ptr [ %.1276, %.critedge2 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.ej, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit383 ] ; 57 uses
  br i1 %.not324.lcssa, label %.thread800, label %bb.w, !llvm.loop !40

bb.w:                                             ; preds = %bb.v
  %i.ey = ptrtoint ptr %.2270.lcssa to i64
  %i.ez = sub i64 %i.ey, %.1269.lcssa1017
  %i.fa = and i64 %i.ez, 1
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %.thread800, label %bb.x, !llvm.loop !40

bb.x:                                             ; preds = %bb.w
  %i.fc = load i8, ptr %.2270.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.fd = sext i8 %i.fc to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fd, i64 16)
  %.not327 = icmp eq ptr %memchr, null
  br i1 %.not327, label %bb.bn, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not366 = icmp eq ptr %i.fe, %.3278
  br i1 %.not366, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
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

.noexc.i:                                         ; preds = %bb.z
  %i.fj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc385 unwind label %bb.ae ; 2 uses

.noexc385:                                        ; preds = %.noexc.i
  store ptr %i.fj, ptr %7, align 8, !tbaa !36
  %i.fk = load i64, ptr %i.j, align 8, !tbaa !41
  store i64 %i.fk, ptr %i.cd, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc385, %bb.z
  %i.fl = phi ptr [ %i.fj, %.noexc385 ], [ %i.cd, %bb.z ] ; 2 uses
  switch i64 %i.fh, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.fm = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.fm, ptr %i.fl, align 1, !tbaa !14
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %.3278, i64 %i.fh, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i
  %i.fn = load i64, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  store i64 %i.fn, ptr %i.ce, align 8, !tbaa !11
  %i.fo = load ptr, ptr %7, align 8, !tbaa !36
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store i8 0, ptr %i.fp, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.fq = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cd
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.fs = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.pre = load i8, ptr %.2270.lcssa, align 1, !tbaa !14
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc.i
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

bb.af:                                            ; preds = %bb.ac
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.cd
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.af
  %i.fy = load i64, ptr %i.cd, align 8, !tbaa !14
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %bb.ae
  %.pn367 = phi { ptr, i32 } [ %i.fu, %bb.ae ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %i.fv, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.gx

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y
  %i.ga = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fc, %bb.y ]
  switch i8 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit392 [
    i8 89, label %bb.ah
    i8 109, label %bb.ao
    i8 100, label %bb.ap
    i8 101, label %bb.ap
    i8 85, label %bb.aq
    i8 117, label %bb.ar
    i8 87, label %bb.au
    i8 119, label %bb.av
    i8 72, label %bb.ay
    i8 77, label %bb.az
    i8 83, label %bb.ba
    i8 122, label %bb.bb
    i8 90, label %bb.bc
    i8 115, label %bb.bd
    i8 37, label %bb.bk
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.gb = load i64, ptr %5, align 8, !tbaa !24    ; 4 uses
  %i.gc = icmp slt i64 %i.gb, 0                   ; 2 uses
  br i1 %i.gc, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.gd = icmp eq i64 %i.gb, -9223372036854775808
  br i1 %i.gd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.026.i = phi ptr [ %i.cf, %bb.aj ], [ %i.by, %bb.ai ]
  %.022.i = phi i32 [ -2, %bb.aj ], [ -1, %bb.ai ]
  %.1.i = phi i64 [ -922337203685477580, %bb.aj ], [ %i.gb, %bb.ai ]
  %i.ge = sub nsw i64 0, %.1.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.127.i = phi ptr [ %.026.i, %bb.ak ], [ %i.by, %bb.ah ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.ak ], [ 0, %bb.ah ] ; 2 uses
  %.2.i = phi i64 [ %i.ge, %bb.ak ], [ %i.gb, %bb.ah ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.gf = add nsw i32 %.123.i, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %bb.al
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.am ], [ %i.gf, %bb.al ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.am ], [ %scevgep40.i, %bb.al ] ; 2 uses
  %.228.i = phi ptr [ %i.gk, %bb.am ], [ %.127.i, %bb.al ] ; 2 uses
  %.224.i = phi i32 [ %i.gg, %bb.am ], [ %.123.i, %bb.al ] ; 3 uses
  %.3.i = phi i64 [ %i.gl, %bb.am ], [ %.2.i, %bb.al ] ; 3 uses
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
  br i1 %.not.i, label %.preheader.i, label %bb.am, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.am
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
  br i1 %i.gc, label %bb.an, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

bb.an:                                            ; preds = %._crit_edge.i
  %i.gu = getelementptr inbounds i8, ptr %.329.lcssa.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gu, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.su = load i8, ptr %i.st, align 1, !tbaa !14
  store i8 %i.su, ptr %i.cj, align 1, !tbaa !14
  store i8 58, ptr %i.ck, align 2, !tbaa !14
  %.lhs.trunc.i558 = trunc nuw nsw i32 %i.sm to i8 ; 2 uses
  %i.sv = urem i8 %.lhs.trunc.i558, 10
  %i.sw = zext nneg i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !14
  store i8 %i.sy, ptr %i.cl, align 1, !tbaa !14
  %i.sz = udiv i8 %.lhs.trunc.i558, 10
  %i.ta = zext nneg i8 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !14
  store i8 %i.tc, ptr %i.cm, align 16, !tbaa !14
  store i8 58, ptr %i.cr, align 1, !tbaa !14
  %i.td = udiv i32 %spec.select45.i552, 3600
  %i.te = urem i32 %i.td, 10
  %i.tf = zext nneg i32 %i.te to i64
  %i.tg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !14
  store i8 %i.th, ptr %i.cs, align 2, !tbaa !14
  %i.ti = udiv i32 %spec.select45.i552, 36000
  %.lhs.trunc56.i557 = trunc nuw i32 %i.ti to i16
  %i.tj = urem i16 %.lhs.trunc56.i557, 10
  %i.tk = zext nneg i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.tk
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !14
  store i8 %i.tm, ptr %i.ct, align 1, !tbaa !14
  store i8 %spec.select.i551, ptr %i.cu, align 4, !tbaa !14
  %i.tn = load i64, ptr %i.n, align 8, !tbaa !11
  %i.to = add i64 %i.tn, -4611686018427387895
  %i.tp = icmp ult i64 %i.to, 9
  br i1 %i.tp, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i559

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i559: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit
  %i.tq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.cu, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit562 unwind label %.loopexit876 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit562: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i559
  %i.tr = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread800, !llvm.loop !40

bb.cj:                                            ; preds = %bb.ca
  %i.ts = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  %.not330 = icmp eq ptr %i.ts, %i.cb
  br i1 %.not330, label %.thread800, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !14
  %i.tu = icmp eq i8 %i.tt, 122
  br i1 %i.tu, label %bb.cl, label %.thread800

bb.cl:                                            ; preds = %bb.ck
  %i.tv = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not357 = icmp eq ptr %i.tv, %.3278
  br i1 %.not357, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3278, ptr noundef nonnull %i.tv, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.tw = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.dd
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563: ; preds = %bb.co
  %i.ty = load i64, ptr %i.dd, align 8, !tbaa !14
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i563
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cm
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

bb.cq:                                            ; preds = %bb.cn
  %i.ub = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uc = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.dd
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %bb.cq
  %i.ue = load i64, ptr %i.dd, align 8, !tbaa !14
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566, %bb.cp
  %.pn358 = phi { ptr, i32 } [ %i.ua, %bb.cp ], [ %i.ub, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566 ], [ %i.ub, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.gx

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565, %bb.cl
  %i.ug = load i32, ptr %i.ci, align 8, !tbaa !46 ; 2 uses
  %i.uh = icmp slt i32 %i.ug, 0
  %spec.select.i569 = select i1 %i.uh, i8 45, i8 43 ; 2 uses
  %spec.select45.i570 = call i32 @llvm.abs.i32(i32 %i.ug, i1 true) ; 5 uses
  %i.ui = urem i32 %spec.select45.i570, 60        ; 2 uses
  %i.uj = udiv i32 %spec.select45.i570, 60
  %i.uk = urem i32 %i.uj, 60                      ; 2 uses
  %.not869 = icmp eq i32 %i.ui, 0
  br i1 %.not869, label %bb.cs, label %.thread

.thread:                                          ; preds = %bb.cr
  %.lhs.trunc58.i579 = trunc nuw nsw i32 %i.ui to i8 ; 2 uses
  %i.ul = urem i8 %.lhs.trunc58.i579, 10
  %i.um = zext nneg i8 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !14
  store i8 %i.uo, ptr %i.cf, align 4, !tbaa !14
  %i.up = udiv i8 %.lhs.trunc58.i579, 10
  %i.uq = zext nneg i8 %i.up to i64
  %i.ur = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !14
  store i8 %i.us, ptr %i.cj, align 1, !tbaa !14
  store i8 58, ptr %i.ck, align 2, !tbaa !14
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.ut = icmp samesign ult i32 %spec.select45.i570, 3600
  %i.uu = icmp eq i32 %i.uk, 0                    ; 2 uses
  %or.cond3.i572 = and i1 %i.ut, %i.uu
  %spec.select47.i573 = select i1 %or.cond3.i572, i8 43, i8 %spec.select.i569
  br i1 %i.uu, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit580, label %bb.ct

bb.ct:                                            ; preds = %.thread, %bb.cs
  %.0.i799 = phi ptr [ %i.ck, %.thread ], [ %i.by, %bb.cs ] ; 3 uses
  %.lhs.trunc.i578 = trunc nuw nsw i32 %i.uk to i8 ; 2 uses
  %i.uv = urem i8 %.lhs.trunc.i578, 10
  %i.uw = zext nneg i8 %i.uv to i64
  %i.ux = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !14
  %i.uz = getelementptr inbounds i8, ptr %.0.i799, i64 -1
  store i8 %i.uy, ptr %i.uz, align 1, !tbaa !14
  %i.va = udiv i8 %.lhs.trunc.i578, 10
  %i.vb = zext nneg i8 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !14
  %i.ve = getelementptr inbounds i8, ptr %.0.i799, i64 -2
  store i8 %i.vd, ptr %i.ve, align 1, !tbaa !14
  %i.vf = getelementptr inbounds i8, ptr %.0.i799, i64 -3 ; 2 uses
  store i8 58, ptr %i.vf, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit580

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit580: ; preds = %bb.cs, %bb.ct
  %.141.i797 = phi i8 [ %spec.select.i569, %bb.ct ], [ %spec.select47.i573, %bb.cs ]
  %.1.i576 = phi ptr [ %i.vf, %bb.ct ], [ %i.by, %bb.cs ] ; 3 uses
  %i.vg = udiv i32 %spec.select45.i570, 3600
  %i.vh = urem i32 %i.vg, 10
  %i.vi = zext nneg i32 %i.vh to i64
  %i.vj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !14
  %i.vl = getelementptr inbounds i8, ptr %.1.i576, i64 -1
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !14
  %i.vm = udiv i32 %spec.select45.i570, 36000
  %.lhs.trunc56.i577 = trunc nuw i32 %i.vm to i16
  %i.vn = urem i16 %.lhs.trunc56.i577, 10
  %i.vo = zext nneg i16 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.vo
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !14
  %i.vr = getelementptr inbounds i8, ptr %.1.i576, i64 -2
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !14
  %i.vs = getelementptr inbounds i8, ptr %.1.i576, i64 -3 ; 3 uses
  store i8 %.141.i797, ptr %i.vs, align 1, !tbaa !14
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = sub i64 %i.cg, %i.vt                    ; 2 uses
  %i.vv = load i64, ptr %i.n, align 8, !tbaa !11
  %i.vw = sub i64 4611686018427387903, %i.vv
  %i.vx = icmp ult i64 %i.vw, %i.vu
  br i1 %i.vx, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i581: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit580
  %i.vy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.vs, i64 noundef %i.vu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit584 unwind label %.loopexit876 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit584: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i581
  %i.vz = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 4 ; 2 uses
  br label %.thread800, !llvm.loop !40

bb.cu:                                            ; preds = %bb.bn
  %i.wa = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 1 ; 12 uses
  %i.wb = icmp eq ptr %i.wa, %i.cb
  br i1 %i.wb, label %.thread800, label %bb.cv, !llvm.loop !40

bb.cv:                                            ; preds = %bb.cu
  %i.wc = load i8, ptr %i.wa, align 1, !tbaa !14  ; 3 uses
  switch i8 %i.wc, label %bb.fn [
    i8 84, label %bb.cw
    i8 122, label %bb.df
    i8 42, label %bb.do
    i8 52, label %bb.ew
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.wd = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not354 = icmp eq ptr %i.wd, %.3278
  br i1 %.not354, label %bb.de, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.cz, ptr %14, align 8, !tbaa !7
  store i64 0, ptr %i.da, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %.3278 to i64
  %i.wg = sub i64 %i.we, %i.wf                    ; 4 uses
  store i64 %i.wg, ptr %i.g, align 8, !tbaa !41
  %i.wh = icmp ugt i64 %i.wg, 15
  br i1 %i.wh, label %.noexc.i586, label %._crit_edge.i.i585

.noexc.i586:                                      ; preds = %bb.cx
  %i.wi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc587 unwind label %bb.dc ; 2 uses

.noexc587:                                        ; preds = %.noexc.i586
  store ptr %i.wi, ptr %14, align 8, !tbaa !36
  %i.wj = load i64, ptr %i.g, align 8, !tbaa !41
  store i64 %i.wj, ptr %i.cz, align 8, !tbaa !14
  br label %._crit_edge.i.i585

._crit_edge.i.i585:                               ; preds = %.noexc587, %bb.cx
  %i.wk = phi ptr [ %i.wi, %.noexc587 ], [ %i.cz, %bb.cx ] ; 2 uses
  switch i64 %i.wg, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %bb.da
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i585
  %i.wl = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.wl, ptr %i.wk, align 1, !tbaa !14
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i585
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wk, ptr align 1 %.3278, i64 %i.wg, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i585
  %i.wm = load i64, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  store i64 %i.wm, ptr %i.da, align 8, !tbaa !11
  %i.wn = load ptr, ptr %14, align 8, !tbaa !36
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wm
  store i8 0, ptr %i.wo, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.wp = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.cz
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589: ; preds = %bb.db
  %i.wr = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.de

bb.dc:                                            ; preds = %.noexc.i586
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

bb.dd:                                            ; preds = %bb.da
  %i.wu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wv = load ptr, ptr %14, align 8, !tbaa !36   ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.cz
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592: ; preds = %bb.dd
  %i.wx = load i64, ptr %i.cz, align 8, !tbaa !14
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592, %bb.dc
  %.pn355 = phi { ptr, i32 } [ %i.wt, %bb.dc ], [ %i.wu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592 ], [ %i.wu, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.gx

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, %bb.cw
  %i.wz = load i64, ptr %i.n, align 8, !tbaa !11
  %i.xa = icmp eq i64 %i.wz, 4611686018427387903
  br i1 %i.xa, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i595

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i595: ; preds = %bb.de
  %i.xb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit598 unwind label %.loopexit876 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit598: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i595
  %i.xc = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  br label %.thread800

bb.df:                                            ; preds = %bb.cv
  %i.xd = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not351 = icmp eq ptr %i.xd, %.3278
  br i1 %.not351, label %bb.dn, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.cx, ptr %15, align 8, !tbaa !7
  store i64 0, ptr %i.cy, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.xe = ptrtoint ptr %i.xd to i64
  %i.xf = ptrtoint ptr %.3278 to i64
  %i.xg = sub i64 %i.xe, %i.xf                    ; 4 uses
  store i64 %i.xg, ptr %i.f, align 8, !tbaa !41
  %i.xh = icmp ugt i64 %i.xg, 15
  br i1 %i.xh, label %.noexc.i600, label %._crit_edge.i.i599

.noexc.i600:                                      ; preds = %bb.dg
  %i.xi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc601 unwind label %bb.dl ; 2 uses

.noexc601:                                        ; preds = %.noexc.i600
  store ptr %i.xi, ptr %15, align 8, !tbaa !36
  %i.xj = load i64, ptr %i.f, align 8, !tbaa !41
  store i64 %i.xj, ptr %i.cx, align 8, !tbaa !14
  br label %._crit_edge.i.i599

._crit_edge.i.i599:                               ; preds = %.noexc601, %bb.dg
  %i.xk = phi ptr [ %i.xi, %.noexc601 ], [ %i.cx, %bb.dg ] ; 2 uses
  switch i64 %i.xg, label %bb.di [
    i64 1, label %bb.dh
    i64 0, label %bb.dj
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i599
  %i.xl = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.xl, ptr %i.xk, align 1, !tbaa !14
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i599
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xk, ptr align 1 %.3278, i64 %i.xg, i1 false)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %._crit_edge.i.i599
  %i.xm = load i64, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  store i64 %i.xm, ptr %i.cy, align 8, !tbaa !11
  %i.xn = load ptr, ptr %15, align 8, !tbaa !36
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xm
  store i8 0, ptr %i.xo, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.dk unwind label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.xp = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.cx
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603: ; preds = %bb.dk
  %i.xr = load i64, ptr %i.cx, align 8, !tbaa !14
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.dn

bb.dl:                                            ; preds = %.noexc.i600
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608

bb.dm:                                            ; preds = %bb.dj
  %i.xu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xv = load ptr, ptr %15, align 8, !tbaa !36   ; 2 uses
  %i.xw = icmp eq ptr %i.xv, %i.cx
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606: ; preds = %bb.dm
  %i.xx = load i64, ptr %i.cx, align 8, !tbaa !14
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xv, i64 noundef %i.xy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606, %bb.dl
  %.pn352 = phi { ptr, i32 } [ %i.xt, %bb.dl ], [ %i.xu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i606 ], [ %i.xu, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051213time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.eh

bb.ef:                                            ; preds = %.noexc.i653
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661

bb.eg:                                            ; preds = %bb.ed
  %i.ace = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acf = load ptr, ptr %17, align 8, !tbaa !36  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.cv
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659: ; preds = %bb.eg
  %i.ach = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661: ; preds = %bb.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659, %bb.ef
  %.pn345 = phi { ptr, i32 } [ %i.acd, %bb.ef ], [ %i.ace, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i659 ], [ %i.ace, %bb.eg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.gx

bb.eh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, %bb.dz
  %i.acj = load i64, ptr %3, align 8, !tbaa !48   ; 4 uses
  %i.ack = icmp slt i64 %i.acj, 0                 ; 2 uses
  br i1 %i.ack, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.acl = icmp eq i64 %i.acj, -9223372036854775808
  br i1 %i.acl, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.026.i681 = phi ptr [ %i.cf, %bb.ej ], [ %i.by, %bb.ei ]
  %.022.i682 = phi i32 [ 13, %bb.ej ], [ 14, %bb.ei ]
  %.1.i683 = phi i64 [ -922337203685477580, %bb.ej ], [ %i.acj, %bb.ei ]
  %i.acm = sub nsw i64 0, %.1.i683
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.eh
  %.127.i662 = phi ptr [ %.026.i681, %bb.ek ], [ %i.by, %bb.eh ] ; 2 uses
  %.123.i663 = phi i32 [ %.022.i682, %bb.ek ], [ 15, %bb.eh ] ; 2 uses
  %.2.i664 = phi i64 [ %i.acm, %bb.ek ], [ %i.acj, %bb.eh ]
  %scevgep40.i665 = getelementptr i8, ptr %.127.i662, i64 -2
  %i.acn = add nsw i32 %.123.i663, -2
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %bb.el
  %indvars.iv42.i666 = phi i32 [ %indvars.iv.next.i673, %bb.em ], [ %i.acn, %bb.el ] ; 2 uses
  %indvars.iv.i667 = phi ptr [ %scevgep41.i672, %bb.em ], [ %scevgep40.i665, %bb.el ] ; 2 uses
  %.228.i668 = phi ptr [ %i.acs, %bb.em ], [ %.127.i662, %bb.el ] ; 2 uses
  %.224.i669 = phi i32 [ %i.aco, %bb.em ], [ %.123.i663, %bb.el ] ; 3 uses
  %.3.i670 = phi i64 [ %i.act, %bb.em ], [ %.2.i664, %bb.el ] ; 3 uses
  %i.aco = add i32 %.224.i669, -1                 ; 2 uses
  %i.acp = urem i64 %.3.i670, 10
  %i.acq = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.acp
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !14
  %i.acs = getelementptr inbounds i8, ptr %.228.i668, i64 -1 ; 3 uses
  store i8 %i.acr, ptr %i.acs, align 1, !tbaa !14
  %i.act = udiv i64 %.3.i670, 10
  %.not.i671 = icmp ult i64 %.3.i670, 10
  %scevgep41.i672 = getelementptr i8, ptr %indvars.iv.i667, i64 -1
  %indvars.iv.next.i673 = add i32 %indvars.iv42.i666, -1
  br i1 %.not.i671, label %.preheader.i674, label %bb.em, !llvm.loop !42

.preheader.i674:                                  ; preds = %bb.em
  %i.acu = icmp sgt i32 %.224.i669, 1
  br i1 %i.acu, label %.lr.ph.preheader.i678, label %._crit_edge.i675

.lr.ph.preheader.i678:                            ; preds = %.preheader.i674
  %i.acv = getelementptr i8, ptr %.228.i668, i64 -2
  %i.acw = add nsw i32 %.224.i669, -2
  %i.acx = zext nneg i32 %i.acw to i64
  %i.acy = sub nsw i64 0, %i.acx
  %scevgep.i679 = getelementptr i8, ptr %i.acv, i64 %i.acy
  %i.acz = zext nneg i32 %i.aco to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i679, i8 48, i64 %i.acz, i1 false), !tbaa !14
  %i.ada = zext i32 %indvars.iv42.i666 to i64
  %i.adb = sub nsw i64 0, %i.ada
  %scevgep43.i680 = getelementptr i8, ptr %indvars.iv.i667, i64 %i.adb
  br label %._crit_edge.i675

._crit_edge.i675:                                 ; preds = %.lr.ph.preheader.i678, %.preheader.i674
  %.329.lcssa.i676 = phi ptr [ %i.acs, %.preheader.i674 ], [ %scevgep43.i680, %.lr.ph.preheader.i678 ] ; 2 uses
  br i1 %i.ack, label %bb.en, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684

bb.en:                                            ; preds = %._crit_edge.i675
  %i.adc = getelementptr inbounds i8, ptr %.329.lcssa.i676, i64 -1 ; 2 uses
  store i8 45, ptr %i.adc, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684: ; preds = %._crit_edge.i675, %bb.en
  %.4.i677 = phi ptr [ %i.adc, %bb.en ], [ %.329.lcssa.i676, %._crit_edge.i675 ] ; 8 uses
  %.4.i6771020 = ptrtoint ptr %.4.i677 to i64
  %scevgep1021 = getelementptr i8, ptr %scevgep1019.a, i64 %.4.i6771020 ; 2 uses
  %.not3471142 = icmp eq ptr %i.by, %.4.i677
  br i1 %.not3471142, label %.critedge4, label %.lr.ph1145

bb.eo:                                            ; preds = %.lr.ph1145
  %.not347 = icmp eq ptr %i.add, %.4.i677
  br i1 %.not347, label %.critedge4, label %.lr.ph1145, !llvm.loop !50

.lr.ph1145:                                       ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684, %bb.eo
  %.01143 = phi ptr [ %i.add, %bb.eo ], [ %i.by, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684 ] ; 2 uses
  %i.add = getelementptr inbounds i8, ptr %.01143, i64 -1 ; 3 uses
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !14
  %i.adf = icmp eq i8 %i.ade, 48
  br i1 %i.adf, label %bb.eo, label %..critedge4_crit_edge1147, !llvm.loop !50

.loopexit881:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685
  %lpad.loopexit883 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp882:                            ; preds = %bb.ev
  %lpad.loopexit.split-lp884 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

..critedge4_crit_edge1147:                        ; preds = %.lr.ph1145
  br label %.critedge4, !llvm.loop !50

.critedge4:                                       ; preds = %bb.eo, %..critedge4_crit_edge1147, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684
  %.not347.lcssa = phi i1 [ true, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684 ], [ false, %..critedge4_crit_edge1147 ], [ true, %bb.eo ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep1021, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit684 ], [ %.01143, %..critedge4_crit_edge1147 ], [ %scevgep1021, %bb.eo ]
  %i.adg = load i8, ptr %i.zd, align 1, !tbaa !14
  switch i8 %i.adg, label %bb.eu [
    i8 83, label %bb.ep
    i8 102, label %bb.es
  ]

bb.ep:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.adh = getelementptr inbounds i8, ptr %.4.i677, i64 -1 ; 2 uses
  store i8 46, ptr %i.adh, align 1, !tbaa !14
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0282 = phi ptr [ %i.adh, %bb.eq ], [ %.4.i677, %bb.ep ] ; 2 uses
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
  br label %bb.eu

bb.es:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.adu = getelementptr inbounds i8, ptr %.4.i677, i64 -1 ; 2 uses
  store i8 48, ptr %i.adu, align 1, !tbaa !14
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et, %bb.er, %.critedge4
  %.1283 = phi ptr [ %.4.i677, %.critedge4 ], [ %i.adt, %bb.er ], [ %i.adu, %bb.et ], [ %.4.i677, %bb.es ] ; 2 uses
  %i.adv = ptrtoint ptr %.0.lcssa to i64
  %i.adw = ptrtoint ptr %.1283 to i64
  %i.adx = sub i64 %i.adv, %i.adw                 ; 2 uses
  %i.ady = load i64, ptr %i.n, align 8, !tbaa !11
  %i.adz = sub i64 4611686018427387903, %i.ady
  %i.aea = icmp ult i64 %i.adz, %i.adx
  br i1 %i.aea, label %bb.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc686 unwind label %.loopexit.split-lp882

.noexc686:                                        ; preds = %bb.ev
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685: ; preds = %bb.eu
  %i.aeb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.1283, i64 noundef %i.adx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit688 unwind label %.loopexit881 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit688: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i685
  %i.aec = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread800

bb.ew:                                            ; preds = %bb.cv
  %i.aed = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not334 = icmp eq ptr %i.aed, %i.cb
  br i1 %.not334, label %bb.fo, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !14
  %i.aef = icmp eq i8 %i.aee, 89
  br i1 %i.aef, label %bb.ey, label %bb.fo

bb.ey:                                            ; preds = %bb.ex
  %i.aeg = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not341 = icmp eq ptr %i.aeg, %.3278
  br i1 %.not341, label %bb.fg, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store ptr %i.cn, ptr %18, align 8, !tbaa !7
  store i64 0, ptr %i.co, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.aeh = ptrtoint ptr %i.aeg to i64
  %i.aei = ptrtoint ptr %.3278 to i64
  %i.aej = sub i64 %i.aeh, %i.aei                 ; 4 uses
  store i64 %i.aej, ptr %i.c, align 8, !tbaa !41
  %i.aek = icmp ugt i64 %i.aej, 15
  br i1 %i.aek, label %.noexc.i690, label %._crit_edge.i.i689

.noexc.i690:                                      ; preds = %bb.ez
  %i.ael = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc691 unwind label %bb.fe ; 2 uses

.noexc691:                                        ; preds = %.noexc.i690
  store ptr %i.ael, ptr %18, align 8, !tbaa !36
  %i.aem = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.aem, ptr %i.cn, align 8, !tbaa !14
  br label %._crit_edge.i.i689

._crit_edge.i.i689:                               ; preds = %.noexc691, %bb.ez
  %i.aen = phi ptr [ %i.ael, %.noexc691 ], [ %i.cn, %bb.ez ] ; 2 uses
  switch i64 %i.aej, label %bb.fb [
    i64 1, label %bb.fa
    i64 0, label %bb.fc
  ]

bb.fa:                                            ; preds = %._crit_edge.i.i689
  %i.aeo = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.aeo, ptr %i.aen, align 1, !tbaa !14
  br label %bb.fc

bb.fb:                                            ; preds = %._crit_edge.i.i689
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aen, ptr align 1 %.3278, i64 %i.aej, i1 false)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %._crit_edge.i.i689
  %i.aep = load i64, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  store i64 %i.aep, ptr %i.co, align 8, !tbaa !11
  %i.aeq = load ptr, ptr %18, align 8, !tbaa !36
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %i.aep
  store i8 0, ptr %i.aer, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.aes = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.aet = icmp eq ptr %i.aes, %i.cn
  br i1 %i.aet, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693: ; preds = %bb.fd
  %i.aeu = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.aev = add i64 %i.aeu, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aev) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i693
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.fg

bb.fe:                                            ; preds = %.noexc.i690
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698

bb.ff:                                            ; preds = %bb.fc
  %i.aex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aey = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.cn
  br i1 %i.aez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696: ; preds = %bb.ff
  %i.afa = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696, %bb.fe
  %.pn342 = phi { ptr, i32 } [ %i.aew, %bb.fe ], [ %i.aex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i696 ], [ %i.aex, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.gx

bb.fg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695, %bb.ey
  %i.afc = load i64, ptr %5, align 8, !tbaa !24   ; 4 uses
  %i.afd = icmp slt i64 %i.afc, 0                 ; 2 uses
  br i1 %i.afd, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.afe = icmp eq i64 %i.afc, -9223372036854775808
  br i1 %i.afe, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.026.i718 = phi ptr [ %i.cf, %bb.fi ], [ %i.by, %bb.fh ]
  %.022.i719 = phi i32 [ 2, %bb.fi ], [ 3, %bb.fh ]
  %.1.i720 = phi i64 [ -922337203685477580, %bb.fi ], [ %i.afc, %bb.fh ]
  %i.aff = sub nsw i64 0, %.1.i720
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fg
  %.127.i699 = phi ptr [ %.026.i718, %bb.fj ], [ %i.by, %bb.fg ] ; 2 uses
  %.123.i700 = phi i32 [ %.022.i719, %bb.fj ], [ 4, %bb.fg ] ; 2 uses
  %.2.i701 = phi i64 [ %i.aff, %bb.fj ], [ %i.afc, %bb.fg ]
  %scevgep40.i702 = getelementptr i8, ptr %.127.i699, i64 -2
  %i.afg = add nsw i32 %.123.i700, -2
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fl, %bb.fk
  %indvars.iv42.i703 = phi i32 [ %indvars.iv.next.i710, %bb.fl ], [ %i.afg, %bb.fk ] ; 2 uses
  %indvars.iv.i704 = phi ptr [ %scevgep41.i709, %bb.fl ], [ %scevgep40.i702, %bb.fk ] ; 2 uses
  %.228.i705 = phi ptr [ %i.afl, %bb.fl ], [ %.127.i699, %bb.fk ] ; 2 uses
  %.224.i706 = phi i32 [ %i.afh, %bb.fl ], [ %.123.i700, %bb.fk ] ; 3 uses
  %.3.i707 = phi i64 [ %i.afm, %bb.fl ], [ %.2.i701, %bb.fk ] ; 3 uses
  %i.afh = add i32 %.224.i706, -1                 ; 2 uses
  %i.afi = urem i64 %.3.i707, 10
  %i.afj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !14
  %i.afl = getelementptr inbounds i8, ptr %.228.i705, i64 -1 ; 3 uses
  store i8 %i.afk, ptr %i.afl, align 1, !tbaa !14
  %i.afm = udiv i64 %.3.i707, 10
  %.not.i708 = icmp ult i64 %.3.i707, 10
  %scevgep41.i709 = getelementptr i8, ptr %indvars.iv.i704, i64 -1
  %indvars.iv.next.i710 = add i32 %indvars.iv42.i703, -1
  br i1 %.not.i708, label %.preheader.i711, label %bb.fl, !llvm.loop !42

.preheader.i711:                                  ; preds = %bb.fl
  %i.afn = icmp sgt i32 %.224.i706, 1
  br i1 %i.afn, label %.lr.ph.preheader.i715, label %._crit_edge.i712

.lr.ph.preheader.i715:                            ; preds = %.preheader.i711
  %i.afo = getelementptr i8, ptr %.228.i705, i64 -2
  %i.afp = add nsw i32 %.224.i706, -2
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = sub nsw i64 0, %i.afq
  %scevgep.i716 = getelementptr i8, ptr %i.afo, i64 %i.afr
  %i.afs = zext nneg i32 %i.afh to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i716, i8 48, i64 %i.afs, i1 false), !tbaa !14
  %i.aft = zext i32 %indvars.iv42.i703 to i64
  %i.afu = sub nsw i64 0, %i.aft
  %scevgep43.i717 = getelementptr i8, ptr %indvars.iv.i704, i64 %i.afu
  br label %._crit_edge.i712

._crit_edge.i712:                                 ; preds = %.lr.ph.preheader.i715, %.preheader.i711
  %.329.lcssa.i713 = phi ptr [ %i.afl, %.preheader.i711 ], [ %scevgep43.i717, %.lr.ph.preheader.i715 ] ; 2 uses
  br i1 %i.afd, label %bb.fm, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit721

bb.fm:                                            ; preds = %._crit_edge.i712
  %i.afv = getelementptr inbounds i8, ptr %.329.lcssa.i713, i64 -1 ; 2 uses
  store i8 45, ptr %i.afv, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit721

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit721: ; preds = %._crit_edge.i712, %bb.fm
  %.4.i714 = phi ptr [ %i.afv, %bb.fm ], [ %.329.lcssa.i713, %._crit_edge.i712 ] ; 2 uses
  %i.afw = ptrtoint ptr %.4.i714 to i64
  %i.afx = sub i64 %i.cg, %i.afw                  ; 2 uses
  %i.afy = load i64, ptr %i.n, align 8, !tbaa !11
  %i.afz = sub i64 4611686018427387903, %i.afy
  %i.aga = icmp ult i64 %i.afz, %i.afx
  br i1 %i.aga, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i722

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i722: ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit721
  %i.agb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.4.i714, i64 noundef %i.afx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725 unwind label %.loopexit876 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i722
  %i.agc = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread800

bb.fn:                                            ; preds = %bb.cv
  %i.agd = sext i8 %i.wc to i32
  %isdigittmp = add nsw i32 %i.agd, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.fo, label %.thread800

bb.fo:                                            ; preds = %bb.fn, %bb.ex, %bb.ew
  %21 = sext i8 %i.wc to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %21, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread800, label %.thread813

.thread813:                                       ; preds = %bb.fo, %bb.fq
  %memchr100.i = phi ptr [ %memchr.i, %bb.fq ], [ %memchr95.i, %bb.fo ]
  %.199.i.idx = phi i64 [ %.199.i.add, %bb.fq ], [ 1, %bb.fo ] ; 2 uses
  %.05397.i = phi i32 [ %i.agm, %bb.fq ], [ 0, %bb.fo ] ; 3 uses
  %i.age = ptrtoint ptr %memchr100.i to i64
  %i.agf = trunc i64 %i.age to i32
  %i.agg = sub i32 %i.agf, ptrtoint (ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.agh = icmp sgt i32 %i.agg, 9
  br i1 %i.agh, label %select.unfold.i, label %.lr.ph1152

.lr.ph1152:                                       ; preds = %.thread813
  %i.agi = icmp slt i32 %.05397.i, -214748364
  br i1 %i.agi, label %.thread800, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph1152
  %i.agj = mul nsw i32 %.05397.i, 10              ; 2 uses
  %i.agk = or disjoint i32 %i.agg, -2147483648
  %i.agl = icmp slt i32 %i.agj, %i.agk
  br i1 %i.agl, label %.thread800, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.agm = sub nsw i32 %i.agj, %i.agg             ; 2 uses
  %.199.i.add = add nuw nsw i64 %.199.i.idx, 1    ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.199.i.add
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !14
  %i.agp = sext i8 %i.ago to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.agp, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.thread813

select.unfold.i:                                  ; preds = %bb.fq, %.thread813
  %.255.ph.i = phi i32 [ %i.agm, %bb.fq ], [ %.05397.i, %.thread813 ] ; 4 uses
  %.3.ph.i.idx = phi i64 [ %.199.i.add, %bb.fq ], [ %.199.i.idx, %.thread813 ] ; 2 uses
  %.3.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.3.ph.i.idx ; 4 uses
  %i.agq = icmp eq i64 %.3.ph.i.idx, 1
  %22 = icmp eq i32 %.255.ph.i, -2147483648
  %or.cond80.i = select i1 %i.agq, i1 true, i1 %22
  br i1 %or.cond80.i, label %.thread800, label %bb.fr

bb.fr:                                            ; preds = %select.unfold.i
  %i.agr = sub nsw i32 0, %.255.ph.i              ; 5 uses
  %or.cond77.i = icmp ugt i32 %i.agr, 1024
  br i1 %or.cond77.i, label %.thread800, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.fr
  %23 = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  switch i8 %23, label %.thread800 [
    i8 83, label %bb.fs
    i8 102, label %bb.fs
  ]

bb.fs:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  %i.ags = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not336 = icmp eq ptr %i.ags, %.3278
  br i1 %.not336, label %bb.ga, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  store ptr %i.db, ptr %19, align 8, !tbaa !7
  store i64 0, ptr %i.dc, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.agt = ptrtoint ptr %i.ags to i64
  %i.agu = ptrtoint ptr %.3278 to i64
  %i.agv = sub i64 %i.agt, %i.agu                 ; 4 uses
  store i64 %i.agv, ptr %i.b, align 8, !tbaa !41
  %i.agw = icmp ugt i64 %i.agv, 15
  br i1 %i.agw, label %.noexc.i732, label %._crit_edge.i.i731

.noexc.i732:                                      ; preds = %bb.ft
  %i.agx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc733 unwind label %bb.fy ; 2 uses

.noexc733:                                        ; preds = %.noexc.i732
  store ptr %i.agx, ptr %19, align 8, !tbaa !36
  %i.agy = load i64, ptr %i.b, align 8, !tbaa !41
  store i64 %i.agy, ptr %i.db, align 8, !tbaa !14
  br label %._crit_edge.i.i731

._crit_edge.i.i731:                               ; preds = %.noexc733, %bb.ft
  %i.agz = phi ptr [ %i.agx, %.noexc733 ], [ %i.db, %bb.ft ] ; 2 uses
  switch i64 %i.agv, label %bb.fv [
    i64 1, label %bb.fu
    i64 0, label %bb.fw
  ]

bb.fu:                                            ; preds = %._crit_edge.i.i731
  %i.aha = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.aha, ptr %i.agz, align 1, !tbaa !14
  br label %bb.fw

bb.fv:                                            ; preds = %._crit_edge.i.i731
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agz, ptr align 1 %.3278, i64 %i.agv, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %._crit_edge.i.i731
  %i.ahb = load i64, ptr %i.b, align 8, !tbaa !41 ; 2 uses
  store i64 %i.ahb, ptr %i.dc, align 8, !tbaa !11
  %i.ahc = load ptr, ptr %19, align 8, !tbaa !36
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.ahb
  store i8 0, ptr %i.ahd, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fx unwind label %bb.fz

bb.fx:                                            ; preds = %bb.fw
  %i.ahe = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.ahf = icmp eq ptr %i.ahe, %i.db
  br i1 %i.ahf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735: ; preds = %bb.fx
  %i.ahg = load i64, ptr %i.db, align 8, !tbaa !14
  %i.ahh = add i64 %i.ahg, 1
  call void @_ZdlPvm(ptr noundef %i.ahe, i64 noundef %i.ahh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i735
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.ga

.loopexit886:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i764
  %lpad.loopexit888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

.loopexit.split-lp887:                            ; preds = %bb.go
  %lpad.loopexit.split-lp889 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.fy:                                            ; preds = %.noexc.i732
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740

bb.fz:                                            ; preds = %bb.fw
  %i.ahj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahk = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.ahl = icmp eq ptr %i.ahk, %i.db
  br i1 %i.ahl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738: ; preds = %bb.fz
  %i.ahm = load i64, ptr %i.db, align 8, !tbaa !14
  %i.ahn = add i64 %i.ahm, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.ahn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738, %bb.fy
  %.pn337 = phi { ptr, i32 } [ %i.ahi, %bb.fy ], [ %i.ahj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i738 ], [ %i.ahj, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.gx

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, %bb.fs
  %.not868 = icmp eq i32 %.255.ph.i, 0
  br i1 %.not868, label %bb.gm, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.aho = icmp samesign ugt i32 %i.agr, 18
  br i1 %i.aho, label %.thread817, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ahp = icmp samesign ugt i32 %i.agr, 15
  br i1 %i.ahp, label %.thread817, label %bb.gd

.thread817:                                       ; preds = %bb.gb, %bb.gc
  %.0793820 = phi i32 [ %i.agr, %bb.gc ], [ 18, %bb.gb ] ; 2 uses
  %i.ahq = load i64, ptr %3, align 8, !tbaa !48
  %i.ahr = zext nneg i32 %.0793820 to i64
  %i.ahs = getelementptr [8 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.ahr
  %i.aht = getelementptr i8, ptr %i.ahs, i64 -120
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !41
  %i.ahv = mul nsw i64 %i.ahu, %i.ahq
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.ahw = load i64, ptr %3, align 8, !tbaa !48
  %24 = sext i32 %.255.ph.i to i64
  %25 = getelementptr [8 x i8], ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %24
  %26 = getelementptr i8, ptr %25, i64 120
  %i.ahx = load i64, ptr %26, align 8, !tbaa !41
  %i.ahy = sdiv i64 %i.ahw, %i.ahx
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.thread817
  %.0793819 = phi i32 [ %.0793820, %.thread817 ], [ %i.agr, %bb.gd ] ; 3 uses
  %i.ahz = phi i64 [ %i.ahv, %.thread817 ], [ %i.ahy, %bb.gd ] ; 4 uses
  %i.aia = icmp slt i64 %i.ahz, 0                 ; 2 uses
  br i1 %i.aia, label %bb.gf, label %bb.gi

bb.gf:                                            ; preds = %bb.ge
  %i.aib = add nsw i32 %.0793819, -1
  %i.aic = icmp eq i64 %i.ahz, -9223372036854775808
  br i1 %i.aic, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.aid = add nsw i32 %.0793819, -2
  store i8 56, ptr %i.cf, align 4, !tbaa !14
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.026.i760 = phi ptr [ %i.cf, %bb.gg ], [ %i.by, %bb.gf ]
  %.022.i761 = phi i32 [ %i.aid, %bb.gg ], [ %i.aib, %bb.gf ]
  %.1.i762 = phi i64 [ -922337203685477580, %bb.gg ], [ %i.ahz, %bb.gf ]
  %i.aie = sub nsw i64 0, %.1.i762
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.ge
  %.127.i741 = phi ptr [ %.026.i760, %bb.gh ], [ %i.by, %bb.ge ] ; 2 uses
  %.123.i742 = phi i32 [ %.022.i761, %bb.gh ], [ %.0793819, %bb.ge ] ; 2 uses
  %.2.i743 = phi i64 [ %i.aie, %bb.gh ], [ %i.ahz, %bb.ge ]
  %scevgep40.i744 = getelementptr i8, ptr %.127.i741, i64 -2
  %i.aif = add nsw i32 %.123.i742, -2
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %bb.gi
  %indvars.iv42.i745 = phi i32 [ %indvars.iv.next.i752, %bb.gj ], [ %i.aif, %bb.gi ] ; 2 uses
  %indvars.iv.i746 = phi ptr [ %scevgep41.i751, %bb.gj ], [ %scevgep40.i744, %bb.gi ] ; 2 uses
  %.228.i747 = phi ptr [ %i.aik, %bb.gj ], [ %.127.i741, %bb.gi ] ; 2 uses
  %.224.i748 = phi i32 [ %i.aig, %bb.gj ], [ %.123.i742, %bb.gi ] ; 3 uses
  %.3.i749 = phi i64 [ %i.ail, %bb.gj ], [ %.2.i743, %bb.gi ] ; 3 uses
  %i.aig = add i32 %.224.i748, -1                 ; 2 uses
  %i.aih = urem i64 %.3.i749, 10
  %i.aii = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aih
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !14
  %i.aik = getelementptr inbounds i8, ptr %.228.i747, i64 -1 ; 3 uses
  store i8 %i.aij, ptr %i.aik, align 1, !tbaa !14
  %i.ail = udiv i64 %.3.i749, 10
  %.not.i750 = icmp ult i64 %.3.i749, 10
  %scevgep41.i751 = getelementptr i8, ptr %indvars.iv.i746, i64 -1
  %indvars.iv.next.i752 = add i32 %indvars.iv42.i745, -1
  br i1 %.not.i750, label %.preheader.i753, label %bb.gj, !llvm.loop !42

.preheader.i753:                                  ; preds = %bb.gj
  %i.aim = icmp sgt i32 %.224.i748, 1
  br i1 %i.aim, label %.lr.ph.preheader.i757, label %._crit_edge.i754

.lr.ph.preheader.i757:                            ; preds = %.preheader.i753
  %i.ain = getelementptr i8, ptr %.228.i747, i64 -2
  %i.aio = add nsw i32 %.224.i748, -2
  %i.aip = zext nneg i32 %i.aio to i64
  %i.aiq = sub nsw i64 0, %i.aip
  %scevgep.i758 = getelementptr i8, ptr %i.ain, i64 %i.aiq
  %i.air = zext nneg i32 %i.aig to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i758, i8 48, i64 %i.air, i1 false), !tbaa !14
  %i.ais = zext i32 %indvars.iv42.i745 to i64
  %i.ait = sub nsw i64 0, %i.ais
  %scevgep43.i759 = getelementptr i8, ptr %indvars.iv.i746, i64 %i.ait
  br label %._crit_edge.i754

._crit_edge.i754:                                 ; preds = %.lr.ph.preheader.i757, %.preheader.i753
  %.329.lcssa.i755 = phi ptr [ %i.aik, %.preheader.i753 ], [ %scevgep43.i759, %.lr.ph.preheader.i757 ] ; 2 uses
  br i1 %i.aia, label %bb.gk, label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit763

bb.gk:                                            ; preds = %._crit_edge.i754
  %i.aiu = getelementptr inbounds i8, ptr %.329.lcssa.i755, i64 -1 ; 2 uses
  store i8 45, ptr %i.aiu, align 1, !tbaa !14
  br label %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit763

_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit763: ; preds = %._crit_edge.i754, %bb.gk
  %.4.i756 = phi ptr [ %i.aiu, %bb.gk ], [ %.329.lcssa.i755, %._crit_edge.i754 ] ; 2 uses
  %i.aiv = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  %i.aiw = icmp eq i8 %i.aiv, 83
  br i1 %i.aiw, label %bb.gl, label %.thread821

bb.gl:                                            ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit763
  %i.aix = getelementptr inbounds i8, ptr %.4.i756, i64 -1 ; 2 uses
  store i8 46, ptr %i.aix, align 1, !tbaa !14
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.ga
  %.2284.ph = phi ptr [ %i.by, %bb.ga ], [ %i.aix, %bb.gl ] ; 3 uses
  %.pr = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  %i.aiy = icmp eq i8 %.pr, 83
  br i1 %i.aiy, label %bb.gn, label %.thread821

bb.gn:                                            ; preds = %bb.gm
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
  br label %.thread821

.thread821:                                       ; preds = %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit763, %bb.gn, %bb.gm
  %.3285 = phi ptr [ %i.ajk, %bb.gn ], [ %.2284.ph, %bb.gm ], [ %.4.i756, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit763 ] ; 2 uses
  %i.ajl = ptrtoint ptr %.3285 to i64
  %i.ajm = sub i64 %i.cg, %i.ajl                  ; 2 uses
  %i.ajn = load i64, ptr %i.n, align 8, !tbaa !11
  %i.ajo = sub i64 4611686018427387903, %i.ajn
  %i.ajp = icmp ult i64 %i.ajo, %i.ajm
  br i1 %i.ajp, label %bb.go, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i764

bb.go:                                            ; preds = %.thread821
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc765 unwind label %.loopexit.split-lp887

.noexc765:                                        ; preds = %bb.go
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i764: ; preds = %.thread821
  %i.ajq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.3285, i64 noundef %i.ajm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit767 unwind label %.loopexit886 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit767: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i764
  %i.ajr = getelementptr inbounds nuw i8, ptr %.3.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread800

.thread800:                                       ; preds = %.lr.ph1152, %bb.fp, %bb.fo, %bb.do, %bb.bn, %select.unfold.i, %bb.fr, %bb.dy, %bb.bo, %bb.cj, %bb.ck, %bb.bz, %bb.bp, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit767, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit598, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725, %bb.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit688, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit623, %bb.cu, %bb.v, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit562, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit540, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit392
  %.6281 = phi ptr [ %.3278, %bb.bn ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit392 ], [ %i.rj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit540 ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit562 ], [ %i.vz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit584 ], [ %.3278, %bb.v ], [ %.3278, %bb.w ], [ %.3278, %bb.cu ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit598 ], [ %i.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit623 ], [ %i.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit651 ], [ %i.aec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit688 ], [ %i.agc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725 ], [ %.3278, %bb.bo ], [ %.3278, %bb.fn ], [ %.3278, %bb.dy ], [ %i.ajr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit767 ], [ %.3278, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.3278, %bb.ca ], [ %.3278, %bb.bp ], [ %.3278, %bb.bz ], [ %.3278, %bb.ck ], [ %.3278, %bb.cj ], [ %.3278, %bb.do ], [ %.3278, %bb.fr ], [ %.3278, %select.unfold.i ], [ %.3278, %bb.fo ], [ %.3278, %bb.fp ], [ %.3278, %.lr.ph1152 ] ; 2 uses
  %.6274 = phi ptr [ %.2270.lcssa, %bb.bn ], [ %i.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit392 ], [ %i.rj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit540 ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit562 ], [ %i.vz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit584 ], [ %.2270.lcssa, %bb.v ], [ %.2270.lcssa, %bb.w ], [ %i.wa, %bb.cu ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit598 ], [ %i.zc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit623 ], [ %i.abl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit651 ], [ %i.aec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit688 ], [ %i.agc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit725 ], [ %.2270.lcssa, %bb.bo ], [ %i.wa, %bb.fn ], [ %i.wa, %bb.dy ], [ %i.ajr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit767 ], [ %i.wa, %_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2270.lcssa, %bb.ca ], [ %.2270.lcssa, %bb.bp ], [ %.2270.lcssa, %bb.bz ], [ %.2270.lcssa, %bb.ck ], [ %.2270.lcssa, %bb.cj ], [ %i.wa, %bb.do ], [ %i.wa, %bb.fr ], [ %i.wa, %select.unfold.i ], [ %i.wa, %bb.fo ], [ %i.wa, %bb.fp ], [ %i.wa, %.lr.ph1152 ] ; 2 uses
  %.not = icmp eq ptr %.6274, %i.cb
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread800, %bb.i
  %.0275.lcssa = phi ptr [ %i.bz, %bb.i ], [ %.6281, %.thread800 ] ; 4 uses
  %.not319 = icmp eq ptr %i.cb, %.0275.lcssa
  br i1 %.not319, label %bb.gw, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge
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
  br i1 %i.ajx, label %.noexc.i769, label %._crit_edge.i.i768

.noexc.i769:                                      ; preds = %bb.gp
  %i.ajy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc770 unwind label %bb.gu ; 2 uses

.noexc770:                                        ; preds = %.noexc.i769
  store ptr %i.ajy, ptr %20, align 8, !tbaa !36
  %i.ajz = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.ajz, ptr %i.ajs, align 8, !tbaa !14
  br label %._crit_edge.i.i768

._crit_edge.i.i768:                               ; preds = %.noexc770, %bb.gp
  %i.aka = phi ptr [ %i.ajy, %.noexc770 ], [ %i.ajs, %bb.gp ] ; 2 uses
  switch i64 %i.ajw, label %bb.gr [
    i64 1, label %bb.gq
    i64 0, label %bb.gs
  ]

bb.gq:                                            ; preds = %._crit_edge.i.i768
  %i.akb = load i8, ptr %.0275.lcssa, align 1, !tbaa !14
  store i8 %i.akb, ptr %i.aka, align 1, !tbaa !14
  br label %bb.gs

bb.gr:                                            ; preds = %._crit_edge.i.i768
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aka, ptr align 1 %.0275.lcssa, i64 %i.ajw, i1 false)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %._crit_edge.i.i768
  %i.akc = load i64, ptr %i.a, align 8, !tbaa !41 ; 2 uses
  store i64 %i.akc, ptr %i.ajt, align 8, !tbaa !11
  %i.akd = load ptr, ptr %20, align 8, !tbaa !36
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 %i.akc
  store i8 0, ptr %i.ake, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke fastcc void @_ZN4absl12lts_2025051213time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.gt unwind label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.akf = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.akg = icmp eq ptr %i.akf, %i.ajs
  br i1 %i.akg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772: ; preds = %bb.gt
  %i.akh = load i64, ptr %i.ajs, align 8, !tbaa !14
  %i.aki = add i64 %i.akh, 1
  call void @_ZdlPvm(ptr noundef %i.akf, i64 noundef %i.aki) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i772
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.gw

bb.gu:                                            ; preds = %.noexc.i769
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777

bb.gv:                                            ; preds = %bb.gs
  %i.akk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akl = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.akm = icmp eq ptr %i.akl, %i.ajs
  br i1 %i.akm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775: ; preds = %bb.gv
  %i.akn = load i64, ptr %i.ajs, align 8, !tbaa !14
  %i.ako = add i64 %i.akn, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.ako) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775, %bb.gu
  %.pn = phi { ptr, i32 } [ %i.akj, %bb.gu ], [ %i.akk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775 ], [ %i.akk, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.gx

bb.gw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit774, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.gx:                                            ; preds = %.loopexit886, %.loopexit.split-lp887, %.loopexit881, %.loopexit.split-lp882, %.loopexit876, %.loopexit.split-lp877, %.loopexit871, %.loopexit.split-lp872, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777
  %.pn370.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit740 ], [ %lpad.loopexit.split-lp874, %.loopexit.split-lp872 ], [ %.pn367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %.pn364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529 ], [ %.pn361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit550 ], [ %.pn358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %.pn355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608 ], [ %.pn349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633 ], [ %lpad.loopexit.split-lp879, %.loopexit.split-lp877 ], [ %.pn345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit661 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp884, %.loopexit.split-lp882 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit873, %.loopexit871 ], [ %lpad.loopexit878, %.loopexit876 ], [ %lpad.loopexit883, %.loopexit881 ], [ %lpad.loopexit888, %.loopexit886 ], [ %lpad.loopexit.split-lp889, %.loopexit.split-lp887 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.m
  %.pn370.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn, %bb.gx ], [ %i.do, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.l
  %.pn370.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn.pn.pn, %bb.gy ], [ %i.dn, %bb.l ]
  %i.akp = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.akq = icmp eq ptr %i.akp, %i.m
  br i1 %i.akq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778: ; preds = %bb.gz
  %i.akr = load i64, ptr %i.m, align 8, !tbaa !14
  %i.aks = add i64 %i.akr, 1
  call void @_ZdlPvm(ptr noundef %i.akp, i64 noundef %i.aks) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778
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
