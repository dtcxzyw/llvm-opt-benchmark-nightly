inline.NumInlined: 498
inline.NumDeleted: 172
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %i.az = icmp eq i64 %i.ay, 0
  %or.cond.i = and i1 %i.ax, %i.az
  br i1 %or.cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ba = srem i64 %i.v, 100
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp eq i64 %i.ab, 0
  %i.bc = zext i1 %i.bb to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bd = phi i32 [ 0, %bb.f ], [ %i.bc, %bb.h ], [ 1, %bb.g ]
  %i.be = getelementptr inbounds [4 x i8], ptr @__const._ZN4absl12lts_2024011613time_internal4cctz6detail11get_yeardayERKNS3_10civil_timeINS3_10second_tagEEE.k_month_offsets, i64 %i.ai
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3, !noalias !15
  %i.bg = add nsw i32 %i.o, -1
  %i.bh = add nsw i32 %i.bg, %i.bd
  %i.bi = add i32 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !29, !alias.scope !15
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !30, !range !33, !noalias !15, !noundef !34
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.bm, ptr %i.bn, align 16, !tbaa !35, !alias.scope !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bo = load ptr, ptr %1, align 8, !tbaa !36    ; 5 uses
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 12 uses
  %.not1229 = icmp samesign eq i64 %i.bp, 0
  br i1 %.not1229, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 23 uses
  %i.bv = ptrtoint ptr %.0.i929.idx.sroa.gep1254 to i64 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 19 ; 28 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i462 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cu = add i64 %i.bp, %i.br                    ; 2 uses
  %i.cv = sub i64 0, %i.b
  %scevgep1251 = getelementptr i8, ptr %i.a, i64 %i.cv
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread930
  %.02681231 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6274, %.thread930 ] ; 6 uses
  %.02751230 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6281, %.thread930 ] ; 5 uses
  %scevgep = getelementptr i8, ptr %.02681231, i64 %i.cu
  %.026812311246 = ptrtoint ptr %.02681231 to i64 ; 2 uses
  %i.cw = sub i64 0, %.026812311246
  %scevgep1247 = getelementptr i8, ptr %scevgep, i64 %i.cw
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
  %.12691221 = phi ptr [ %.02681231, %.preheader ], [ %i.cy, %bb.k ] ; 3 uses
  %i.cx = load i8, ptr %.12691221, align 1, !tbaa !14
  %.not322 = icmp eq i8 %i.cx, 37
  br i1 %.not322, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.12691221, i64 1 ; 2 uses
  %.not321 = icmp eq ptr %i.cy, %i.bq
  br i1 %.not321, label %.critedge, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %bb.a
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.m:                                             ; preds = %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ls

.critedge:                                        ; preds = %bb.k, %bb.j
  %.1269.lcssa = phi ptr [ %scevgep1247, %bb.k ], [ %.12691221, %bb.j ] ; 8 uses
  %.1269.lcssa1249 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not323 = icmp ne ptr %.1269.lcssa, %.02681231
  %i.db = icmp eq ptr %.02751230, %.02681231
  %or.cond = select i1 %.not323, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.n, label %bb.u

bb.n:                                             ; preds = %.critedge
  %i.dc = sub i64 %.1269.lcssa1249, %.026812311246 ; 5 uses
  %i.dd = load i64, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.de = sub i64 9223372036854775807, %i.dd
  %i.df = icmp ult i64 %i.de, %i.dc
  br i1 %i.df, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.n
  %i.dg = add i64 %i.dd, %i.dc                    ; 3 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.c                 ; 2 uses
  br i1 %i.di, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dj = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dk = load i64, ptr %i.c, align 8
  %i.dl = select i1 %i.di, i64 15, i64 %i.dk
  %.not.i.i = icmp ugt i64 %i.dg, %i.dl
  br i1 %.not.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dd ; 2 uses
  %cond.i.i = icmp eq i64 %i.dc, 1
  br i1 %cond.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dn = load i8, ptr %.02751230, align 1, !tbaa !14
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %.02751230, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dd, i64 noundef 0, ptr noundef %.02751230, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.t, %bb.r, %bb.s
  store i64 %i.dg, ptr %i.d, align 8, !tbaa !11
  %i.do = load ptr, ptr %0, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  store i8 0, ptr %i.dp, align 1, !tbaa !14
  br label %bb.u

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %.critedge
  %.1276 = phi ptr [ %.02751230, %.critedge ], [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ] ; 7 uses
  %.0249 = phi ptr [ %.02681231, %.critedge ], [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ] ; 2 uses
  %.not3241222 = icmp eq ptr %.1269.lcssa, %i.bq
  br i1 %.not3241222, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %scevgep1248 = getelementptr i8, ptr %.1269.lcssa, i64 %i.cu
  %i.dq = sub i64 0, %.1269.lcssa1249
  %scevgep1250 = getelementptr i8, ptr %scevgep1248, i64 %i.dq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %.22701223 = phi ptr [ %i.dt, %bb.v ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.dr = load i8, ptr %.22701223, align 1, !tbaa !14
  %i.ds = icmp eq i8 %i.dr, 37                    ; 3 uses
  br i1 %i.ds, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %.22701223, i64 1 ; 2 uses
  %.not324 = icmp eq ptr %i.dt, %i.bq
  br i1 %.not324, label %.critedge2, label %.lr.ph, !llvm.loop !39

.critedge2:                                       ; preds = %.lr.ph, %bb.v, %bb.u
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %bb.u ], [ %scevgep1250, %bb.v ], [ %.22701223, %.lr.ph ] ; 43 uses
  %.not324.lcssa = phi i1 [ true, %bb.u ], [ %i.ds, %bb.v ], [ %i.ds, %.lr.ph ] ; 2 uses
  %.not325 = icmp ne ptr %.2270.lcssa, %.0249
  %i.du = icmp eq ptr %.1276, %.0249
  %or.cond377 = select i1 %.not325, i1 %i.du, i1 false
  br i1 %or.cond377, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %.critedge2
  %i.dv = ptrtoint ptr %.2270.lcssa to i64
  %i.dw = ptrtoint ptr %.1276 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 1                       ; 6 uses
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.ea = sub i64 9223372036854775807, %i.dz
  %i.eb = icmp ult i64 %i.ea, %i.dy
  br i1 %i.eb, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc385 unwind label %.loopexit.split-lp1005

.noexc385:                                        ; preds = %bb.x
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380: ; preds = %bb.w
  %i.ec = add i64 %i.dz, %i.dy                    ; 3 uses
  %i.ed = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.c                 ; 2 uses
  br i1 %i.ee, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.ef = icmp ult i64 %i.dz, 16
  call void @llvm.assume(i1 %i.ef)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.eg = load i64, ptr %i.c, align 8
  %i.eh = select i1 %i.ee, i64 15, i64 %i.eg
  %.not.i.i382 = icmp ugt i64 %i.ec, %i.eh
  br i1 %.not.i.i382, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381
  %.not8.i.i383 = icmp eq i64 %i.dy, 0
  br i1 %.not8.i.i383, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dz ; 2 uses
  %cond.i.i384 = icmp eq i64 %i.dy, 1
  br i1 %cond.i.i384, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load i8, ptr %.1276, align 1, !tbaa !14
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !14
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %.1276, i64 %i.dy, i1 false)
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i381
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dz, i64 noundef 0, ptr noundef %.1276, i64 noundef %i.dy)
          to label %bb.ae unwind label %.loopexit1004

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.z, %bb.ad
  store i64 %i.ec, ptr %i.d, align 8, !tbaa !11
  %i.ek = load ptr, ptr %0, align 8, !tbaa !36
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  store i8 0, ptr %i.el, align 1, !tbaa !14
  %i.em = and i64 %i.dx, -2
  %i.en = getelementptr inbounds nuw i8, ptr %.1276, i64 %i.em ; 4 uses
  %.not326 = icmp ne ptr %i.en, %.2270.lcssa
  %or.cond378 = and i1 %.not324.lcssa, %.not326
  br i1 %or.cond378, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !14
  %i.eq = load i64, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %i.er = add i64 %i.eq, 1                        ; 3 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.c                 ; 2 uses
  br i1 %i.et, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.eu = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.eu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.ag, %bb.af
  %i.ev = load i64, ptr %i.c, align 8
  %i.ew = select i1 %i.et, i64 15, i64 %i.ev
  %i.ex = icmp ugt i64 %i.er, %i.ew
  br i1 %i.ex, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc388 unwind label %.loopexit1004

.noexc388:                                        ; preds = %bb.ah
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc388
  %i.ey = phi ptr [ %.pre.i, %.noexc388 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 %i.ep, ptr %i.ez, align 1, !tbaa !14
  store i64 %i.er, ptr %i.d, align 8, !tbaa !11
  %i.fa = load ptr, ptr %0, align 8, !tbaa !36
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.er
  store i8 0, ptr %i.fb, align 1, !tbaa !14
  br label %bb.ai

.loopexit1004:                                    ; preds = %bb.ad, %bb.ah
  %lpad.loopexit1006 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

.loopexit.split-lp1005:                           ; preds = %bb.x
  %lpad.loopexit.split-lp1007 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.ae, %.critedge2
  %.3278 = phi ptr [ %.1276, %.critedge2 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.en, %bb.ae ] ; 57 uses
  br i1 %.not324.lcssa, label %.thread930, label %bb.aj, !llvm.loop !40

bb.aj:                                            ; preds = %bb.ai
  %i.fc = ptrtoint ptr %.2270.lcssa to i64
  %i.fd = sub i64 %i.fc, %.1269.lcssa1249
  %i.fe = and i64 %i.fd, 1
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.thread930, label %bb.ak, !llvm.loop !40

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load i8, ptr %.2270.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.fh = sext i8 %i.fg to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fh, i64 16)
  %.not327 = icmp eq ptr %memchr, null
  br i1 %.not327, label %bb.ee, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not366 = icmp eq ptr %i.fi, %.3278
  br i1 %.not366, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.bs, ptr %7, align 8, !tbaa !7
  store i64 0, ptr %i.bt, align 8, !tbaa !11
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %.3278 to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 8 uses
  %i.fm = icmp ugt i64 %i.fl, 15
  br i1 %i.fm, label %bb.an, label %._crit_edge.i.i

bb.an:                                            ; preds = %bb.am
  %i.fn = icmp slt i64 %i.fl, 0
  br i1 %i.fn, label %.noexc.i, label %bb.ao

.noexc.i:                                         ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc389 unwind label %.loopexit.split-lp1010

.noexc389:                                        ; preds = %.noexc.i
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.fo = add nuw i64 %i.fl, 1                    ; 2 uses
  %i.fp = icmp slt i64 %i.fo, 0
  br i1 %i.fp, label %.noexc4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !41

.noexc4.i:                                        ; preds = %bb.ao
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc390 unwind label %.loopexit.split-lp1010

.noexc390:                                        ; preds = %.noexc4.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.ao
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #21
          to label %.noexc391 unwind label %.loopexit1009 ; 2 uses

.noexc391:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.fq, ptr %7, align 8, !tbaa !36
  store i64 %i.fl, ptr %i.bs, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc391, %bb.am
  %i.fr = phi ptr [ %i.fq, %.noexc391 ], [ %i.bs, %bb.am ] ; 3 uses
  switch i64 %i.fl, label %bb.aq [
    i64 1, label %bb.ap
    i64 0, label %bb.ar
  ]

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.fs = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !14
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr align 1 %.3278, i64 %i.fl, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge.i.i
  store i64 %i.fl, ptr %i.bt, align 8, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fl
  store i8 0, ptr %i.ft, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fu = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bs
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.fw = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre = load i8, ptr %.2270.lcssa, align 1, !tbaa !14
  br label %bb.au

.loopexit1009:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit1011 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

.loopexit.split-lp1010:                           ; preds = %.noexc.i, %.noexc4.i
  %lpad.loopexit.split-lp1012 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

bb.at:                                            ; preds = %bb.ar
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.bs
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392: ; preds = %bb.at
  %i.gb = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.at, %.loopexit1009, %.loopexit.split-lp1010, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392
  %.pn367 = phi { ptr, i32 } [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392 ], [ %lpad.loopexit.split-lp1012, %.loopexit.split-lp1010 ], [ %lpad.loopexit1011, %.loopexit1009 ], [ %i.fy, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.lr

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.al
  %i.gd = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fg, %bb.al ]
  switch i8 %i.gd, label %bb.ed [
    i8 89, label %bb.av
    i8 109, label %bb.bi
    i8 100, label %bb.bm
    i8 101, label %bb.bm
    i8 85, label %bb.bq
    i8 117, label %bb.bu
    i8 87, label %bb.cd
    i8 119, label %bb.ch
    i8 72, label %bb.cq
    i8 77, label %bb.cu
    i8 83, label %bb.cy
    i8 122, label %bb.dc
    i8 90, label %bb.dg
    i8 115, label %bb.dn
    i8 37, label %bb.ea
  ]

bb.av:                                            ; preds = %bb.au
  %i.ge = load i64, ptr %5, align 8, !tbaa !24    ; 4 uses
  %i.gf = icmp slt i64 %i.ge, 0                   ; 2 uses
  br i1 %i.gf, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gg = icmp eq i64 %i.ge, -9223372036854775808
  br i1 %i.gg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i8 56, ptr %i.bu, align 4, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.026.i = phi ptr [ %i.bu, %bb.ax ], [ %.0.i929.idx.sroa.gep1254, %bb.aw ]
  %.022.i = phi i32 [ -2, %bb.ax ], [ -1, %bb.aw ]
  %.1.i = phi i64 [ -922337203685477580, %bb.ax ], [ %i.ge, %bb.aw ]
  %i.gh = sub nsw i64 0, %.1.i
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.127.i = phi ptr [ %.026.i, %bb.ay ], [ %.0.i929.idx.sroa.gep1254, %bb.av ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.ay ], [ 0, %bb.av ] ; 2 uses
  %.2.i = phi i64 [ %i.gh, %bb.ay ], [ %i.ge, %bb.av ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.gi = add nsw i32 %.123.i, -2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %bb.az
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.ba ], [ %i.gi, %bb.az ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.ba ], [ %scevgep40.i, %bb.az ] ; 2 uses
  %.228.i = phi ptr [ %i.gn, %bb.ba ], [ %.127.i, %bb.az ] ; 2 uses
  %.224.i = phi i32 [ %i.gj, %bb.ba ], [ %.123.i, %bb.az ] ; 3 uses
  %.3.i = phi i64 [ %i.go, %bb.ba ], [ %.2.i, %bb.az ] ; 3 uses
  %i.gj = add i32 %.224.i, -1                     ; 2 uses
  %i.gk = urem i64 %.3.i, 10
  %i.gl = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !14
  %i.gn = getelementptr inbounds i8, ptr %.228.i, i64 -1 ; 3 uses
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !14
  %i.go = udiv i64 %.3.i, 10
  %.not.i = icmp ult i64 %.3.i, 10
  %scevgep41.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv42.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.ba, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.ba
  %i.gp = icmp sgt i32 %.224.i, 1
  br i1 %i.gp, label %.lr.ph.preheader.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  br label %bb.fj

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i630
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.xw, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef 9)
          to label %bb.fj unwind label %.loopexit1014

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  store i64 %i.xy, ptr %i.d, align 8, !tbaa !11
  %i.yf = load ptr, ptr %0, align 8, !tbaa !36
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.xy
  store i8 0, ptr %i.yg, align 1, !tbaa !14
  %i.yh = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread930, !llvm.loop !40

bb.fk:                                            ; preds = %bb.ew
  %i.yi = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  %.not330 = icmp eq ptr %i.yi, %i.bq
  br i1 %.not330, label %.thread930, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !14
  %i.yk = icmp eq i8 %i.yj, 122
  br i1 %i.yk, label %bb.fm, label %.thread930

bb.fm:                                            ; preds = %bb.fl
  %i.yl = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not357 = icmp eq ptr %i.yl, %.3278
  br i1 %.not357, label %bb.fs, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3278, ptr noundef nonnull %i.yl, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.fo unwind label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fp unwind label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.ym = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.cp
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637: ; preds = %bb.fp
  %i.yo = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fn
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

bb.fr:                                            ; preds = %bb.fo
  %i.yr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ys = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.cp
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640: ; preds = %bb.fr
  %i.yu = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642: ; preds = %bb.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640, %bb.fq
  %.pn358 = phi { ptr, i32 } [ %i.yq, %bb.fq ], [ %i.yr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640 ], [ %i.yr, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.lr

bb.fs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639, %bb.fm
  %i.yw = load i32, ptr %i.bx, align 8, !tbaa !47 ; 2 uses
  %i.yx = icmp slt i32 %i.yw, 0
  %spec.select.i643 = select i1 %i.yx, i8 45, i8 43 ; 2 uses
  %spec.select45.i644 = call i32 @llvm.abs.i32(i32 %i.yw, i1 true) ; 5 uses
  %i.yy = urem i32 %spec.select45.i644, 60        ; 2 uses
  %i.yz = udiv i32 %spec.select45.i644, 60
  %i.za = urem i32 %i.yz, 60                      ; 2 uses
  %.not999 = icmp eq i32 %i.yy, 0
  br i1 %.not999, label %bb.ft, label %.thread

.thread:                                          ; preds = %bb.fs
  %.lhs.trunc58.i653 = trunc nuw nsw i32 %i.yy to i8 ; 2 uses
  %i.zb = urem i8 %.lhs.trunc58.i653, 10
  %i.zc = zext nneg i8 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !14
  store i8 %i.ze, ptr %i.bu, align 4, !tbaa !14
  %i.zf = udiv i8 %.lhs.trunc58.i653, 10
  %i.zg = zext nneg i8 %i.zf to i64
  %i.zh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !14
  store i8 %i.zi, ptr %i.by, align 1, !tbaa !14
  store i8 58, ptr %.0.i929.idx.sroa.gep, align 2, !tbaa !14
  br label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.zj = icmp samesign ult i32 %spec.select45.i644, 3600
  %i.zk = icmp eq i32 %i.za, 0                    ; 2 uses
  %or.cond3.i646 = and i1 %i.zj, %i.zk
  %spec.select47.i647 = select i1 %or.cond3.i646, i8 43, i8 %spec.select.i643
  br i1 %i.zk, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit654, label %bb.fu

bb.fu:                                            ; preds = %.thread, %bb.ft
  %.0.i929.idx.sroa.phi = phi ptr [ %.0.i929.idx.sroa.gep, %.thread ], [ %.0.i929.idx.sroa.gep1254, %bb.ft ] ; 2 uses
  %.0.i929.idx.sroa.phi1453 = phi ptr [ %.0.i929.idx.sroa.gep1454, %.thread ], [ %.0.i929.idx.sroa.gep1455, %bb.ft ]
  %.0.i929.idx = phi i64 [ 15, %.thread ], [ 18, %bb.ft ]
  %.lhs.trunc.i652 = trunc nuw nsw i32 %i.za to i8 ; 2 uses
  %i.zl = urem i8 %.lhs.trunc.i652, 10
  %i.zm = zext nneg i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zm
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !14
  %i.zp = getelementptr inbounds i8, ptr %.0.i929.idx.sroa.phi, i64 -1
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !14
  %i.zq = udiv i8 %.lhs.trunc.i652, 10
  %i.zr = zext nneg i8 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !14
  %i.zu = getelementptr inbounds i8, ptr %.0.i929.idx.sroa.phi, i64 -2
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !14
  store i8 58, ptr %.0.i929.idx.sroa.phi1453, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit654

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit654: ; preds = %bb.ft, %bb.fu
  %.141.i927 = phi i8 [ %spec.select.i643, %bb.fu ], [ %spec.select47.i647, %bb.ft ]
  %.1.i650.idx = phi i64 [ %.0.i929.idx, %bb.fu ], [ 21, %bb.ft ] ; 3 uses
  %.1.i650.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i650.idx ; 2 uses
  %i.zv = udiv i32 %spec.select45.i644, 3600
  %i.zw = urem i32 %i.zv, 10
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !14
  %i.aaa = getelementptr inbounds i8, ptr %.1.i650.ptr, i64 -1
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !14
  %i.aab = udiv i32 %spec.select45.i644, 36000
  %.lhs.trunc56.i651 = trunc nuw i32 %i.aab to i16
  %i.aac = urem i16 %.lhs.trunc56.i651, 10
  %i.aad = zext nneg i16 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !14
  %i.aag = getelementptr inbounds i8, ptr %.1.i650.ptr, i64 -2
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !14
  %i.aah = getelementptr i8, ptr %i.a, i64 %.1.i650.idx
  %.ptr = getelementptr i8, ptr %i.aah, i64 -3    ; 3 uses
  store i8 %.141.i927, ptr %.ptr, align 1, !tbaa !14
  %gepdiff = sub nuw nsw i64 24, %.1.i650.idx     ; 4 uses
  %i.aai = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.aaj = sub i64 9223372036854775807, %i.aai
  %i.aak = icmp ult i64 %i.aaj, %gepdiff
  br i1 %i.aak, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i655

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i655: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit654
  %i.aal = add i64 %i.aai, %gepdiff               ; 3 uses
  %i.aam = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.c               ; 2 uses
  br i1 %i.aan, label %bb.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i656

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i655
  %i.aao = icmp ult i64 %i.aai, 16
  call void @llvm.assume(i1 %i.aao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i656: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i655
  %i.aap = load i64, ptr %i.c, align 8
  %i.aaq = select i1 %i.aan, i64 15, i64 %i.aap
  %.not.i.i657 = icmp ugt i64 %i.aal, %i.aaq
  br i1 %.not.i.i657, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i656
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aar, ptr nonnull align 1 %.ptr, i64 %gepdiff, i1 false)
  br label %bb.fy

bb.fx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i656
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aai, i64 noundef 0, ptr noundef nonnull %.ptr, i64 noundef %gepdiff)
          to label %bb.fy unwind label %.loopexit1014

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  store i64 %i.aal, ptr %i.d, align 8, !tbaa !11
  %i.aas = load ptr, ptr %0, align 8, !tbaa !36
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aal
  store i8 0, ptr %i.aat, align 1, !tbaa !14
  %i.aau = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 4 ; 2 uses
  br label %.thread930, !llvm.loop !40

bb.fz:                                            ; preds = %bb.ee
  %i.aav = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 1 ; 12 uses
  %i.aaw = icmp eq ptr %i.aav, %i.bq
  br i1 %i.aaw, label %.thread930, label %bb.ga, !llvm.loop !40

bb.ga:                                            ; preds = %bb.fz
  %i.aax = load i8, ptr %i.aav, align 1, !tbaa !14 ; 3 uses
  switch i8 %i.aax, label %bb.jx [
    i8 84, label %bb.gb
    i8 122, label %bb.gp
    i8 42, label %bb.hd
    i8 52, label %bb.iy
  ]

bb.gb:                                            ; preds = %bb.ga
  %i.aay = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not354 = icmp eq ptr %i.aay, %.3278
  br i1 %.not354, label %bb.gk, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr %i.cl, ptr %14, align 8, !tbaa !7
  store i64 0, ptr %i.cm, align 8, !tbaa !11
  %i.aaz = ptrtoint ptr %i.aay to i64
  %i.aba = ptrtoint ptr %.3278 to i64
  %i.abb = sub i64 %i.aaz, %i.aba                 ; 8 uses
  %i.abc = icmp ugt i64 %i.abb, 15
  br i1 %i.abc, label %bb.gd, label %._crit_edge.i.i663

bb.gd:                                            ; preds = %bb.gc
  %i.abd = icmp slt i64 %i.abb, 0
  br i1 %i.abd, label %.noexc.i666, label %bb.ge

.noexc.i666:                                      ; preds = %bb.gd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc667 unwind label %.loopexit.split-lp1045

.noexc667:                                        ; preds = %.noexc.i666
  unreachable

bb.ge:                                            ; preds = %bb.gd
  %i.abe = add nuw i64 %i.abb, 1                  ; 2 uses
  %i.abf = icmp slt i64 %i.abe, 0
  br i1 %i.abf, label %.noexc4.i665, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i664, !prof !41

.noexc4.i665:                                     ; preds = %bb.ge
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc668 unwind label %.loopexit.split-lp1045

.noexc668:                                        ; preds = %.noexc4.i665
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i664: ; preds = %bb.ge
  %i.abg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abe) #21
          to label %.noexc669 unwind label %.loopexit1044 ; 2 uses

.noexc669:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i664
  store ptr %i.abg, ptr %14, align 8, !tbaa !36
  store i64 %i.abb, ptr %i.cl, align 8, !tbaa !14
  br label %._crit_edge.i.i663

._crit_edge.i.i663:                               ; preds = %.noexc669, %bb.gc
  %i.abh = phi ptr [ %i.abg, %.noexc669 ], [ %i.cl, %bb.gc ] ; 3 uses
  switch i64 %i.abb, label %bb.gg [
    i64 1, label %bb.gf
    i64 0, label %bb.gh
  ]

bb.gf:                                            ; preds = %._crit_edge.i.i663
  %i.abi = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.abi, ptr %i.abh, align 1, !tbaa !14
  br label %bb.gh

bb.gg:                                            ; preds = %._crit_edge.i.i663
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abh, ptr align 1 %.3278, i64 %i.abb, i1 false)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %._crit_edge.i.i663
  store i64 %i.abb, ptr %i.cm, align 8, !tbaa !11
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abb
  store i8 0, ptr %i.abj, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.gi unwind label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.abk = load ptr, ptr %14, align 8, !tbaa !36  ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.cl
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671: ; preds = %bb.gi
  %i.abm = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i671
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.gk

.loopexit1044:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i664
  %lpad.loopexit1046 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676

.loopexit.split-lp1045:                           ; preds = %.noexc.i666, %.noexc4.i665
  %lpad.loopexit.split-lp1047 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676

bb.gj:                                            ; preds = %bb.gh
  %i.abo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abp = load ptr, ptr %14, align 8, !tbaa !36  ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.cl
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674: ; preds = %bb.gj
  %i.abr = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676: ; preds = %bb.gj, %.loopexit1044, %.loopexit.split-lp1045, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674
  %.pn355 = phi { ptr, i32 } [ %i.abo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i674 ], [ %lpad.loopexit.split-lp1047, %.loopexit.split-lp1045 ], [ %lpad.loopexit1046, %.loopexit1044 ], [ %i.abo, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.lr

bb.gk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit673, %bb.gb
  %i.abt = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.abu = icmp eq i64 %i.abt, 9223372036854775807
  br i1 %i.abu, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i677

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i677: ; preds = %bb.gk
  %i.abv = add nsw i64 %i.abt, 1                  ; 3 uses
  %i.abw = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.c               ; 2 uses
  br i1 %i.abx, label %bb.gl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i678

bb.gl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i677
  %i.aby = icmp ult i64 %i.abt, 16
  call void @llvm.assume(i1 %i.aby)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i678: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i677
  %i.abz = load i64, ptr %i.c, align 8
  %i.aca = select i1 %i.abx, i64 15, i64 %i.abz
  %.not.i.i679 = icmp ugt i64 %i.abv, %i.aca
  br i1 %.not.i.i679, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i678
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.abt
  store i8 84, ptr %i.acb, align 1, !tbaa !14
  br label %bb.go

bb.gn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i678
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.abt, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %bb.go unwind label %.loopexit1014

bb.go:                                            ; preds = %bb.gm, %bb.gn
  store i64 %i.abv, ptr %i.d, align 8, !tbaa !11
  %i.acc = load ptr, ptr %0, align 8, !tbaa !36
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.abv
  store i8 0, ptr %i.acd, align 1, !tbaa !14
  %i.ace = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  br label %.thread930

bb.gp:                                            ; preds = %bb.ga
  %i.acf = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not351 = icmp eq ptr %i.acf, %.3278
  br i1 %.not351, label %bb.gy, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %i.cj, ptr %15, align 8, !tbaa !7
  store i64 0, ptr %i.ck, align 8, !tbaa !11
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %.3278 to i64
  %i.aci = sub i64 %i.acg, %i.ach                 ; 8 uses
  %i.acj = icmp ugt i64 %i.aci, 15
  br i1 %i.acj, label %bb.gr, label %._crit_edge.i.i685

bb.gr:                                            ; preds = %bb.gq
  %i.ack = icmp slt i64 %i.aci, 0
  br i1 %i.ack, label %.noexc.i688, label %bb.gs

.noexc.i688:                                      ; preds = %bb.gr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc689 unwind label %.loopexit.split-lp1040

.noexc689:                                        ; preds = %.noexc.i688
  unreachable

bb.gs:                                            ; preds = %bb.gr
  %i.acl = add nuw i64 %i.aci, 1                  ; 2 uses
  %i.acm = icmp slt i64 %i.acl, 0
  br i1 %i.acm, label %.noexc4.i687, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i686, !prof !41

.noexc4.i687:                                     ; preds = %bb.gs
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc690 unwind label %.loopexit.split-lp1040

.noexc690:                                        ; preds = %.noexc4.i687
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i686: ; preds = %bb.gs
  %i.acn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acl) #21
          to label %.noexc691 unwind label %.loopexit1039 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
bb.if:                                            ; preds = %bb.ie, %bb.id
  %.026.i787 = phi ptr [ %i.bu, %bb.ie ], [ %.0.i929.idx.sroa.gep1254, %bb.id ]
  %.022.i788 = phi i32 [ 13, %bb.ie ], [ 14, %bb.id ]
  %.1.i789 = phi i64 [ -922337203685477580, %bb.ie ], [ %i.aic, %bb.id ]
  %i.aif = sub nsw i64 0, %.1.i789
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ic
  %.127.i768 = phi ptr [ %.026.i787, %bb.if ], [ %.0.i929.idx.sroa.gep1254, %bb.ic ] ; 2 uses
  %.123.i769 = phi i32 [ %.022.i788, %bb.if ], [ 15, %bb.ic ] ; 2 uses
  %.2.i770 = phi i64 [ %i.aif, %bb.if ], [ %i.aic, %bb.ic ]
  %scevgep40.i771 = getelementptr i8, ptr %.127.i768, i64 -2
  %i.aig = add nsw i32 %.123.i769, -2
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ih, %bb.ig
  %indvars.iv42.i772 = phi i32 [ %indvars.iv.next.i779, %bb.ih ], [ %i.aig, %bb.ig ] ; 2 uses
  %indvars.iv.i773 = phi ptr [ %scevgep41.i778, %bb.ih ], [ %scevgep40.i771, %bb.ig ] ; 2 uses
  %.228.i774 = phi ptr [ %i.ail, %bb.ih ], [ %.127.i768, %bb.ig ] ; 2 uses
  %.224.i775 = phi i32 [ %i.aih, %bb.ih ], [ %.123.i769, %bb.ig ] ; 3 uses
  %.3.i776 = phi i64 [ %i.aim, %bb.ih ], [ %.2.i770, %bb.ig ] ; 3 uses
  %i.aih = add i32 %.224.i775, -1                 ; 2 uses
  %i.aii = urem i64 %.3.i776, 10
  %i.aij = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !14
  %i.ail = getelementptr inbounds i8, ptr %.228.i774, i64 -1 ; 3 uses
  store i8 %i.aik, ptr %i.ail, align 1, !tbaa !14
  %i.aim = udiv i64 %.3.i776, 10
  %.not.i777 = icmp ult i64 %.3.i776, 10
  %scevgep41.i778 = getelementptr i8, ptr %indvars.iv.i773, i64 -1
  %indvars.iv.next.i779 = add i32 %indvars.iv42.i772, -1
  br i1 %.not.i777, label %.preheader.i780, label %bb.ih, !llvm.loop !42

.preheader.i780:                                  ; preds = %bb.ih
  %i.ain = icmp sgt i32 %.224.i775, 1
  br i1 %i.ain, label %.lr.ph.preheader.i784, label %._crit_edge.i781

.lr.ph.preheader.i784:                            ; preds = %.preheader.i780
  %i.aio = getelementptr i8, ptr %.228.i774, i64 -2
  %i.aip = add nsw i32 %.224.i775, -2
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = sub nsw i64 0, %i.aiq
  %scevgep.i785 = getelementptr i8, ptr %i.aio, i64 %i.air
  %i.ais = zext nneg i32 %i.aih to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i785, i8 48, i64 %i.ais, i1 false), !tbaa !14
  %i.ait = zext i32 %indvars.iv42.i772 to i64
  %i.aiu = sub nsw i64 0, %i.ait
  %scevgep43.i786 = getelementptr i8, ptr %indvars.iv.i773, i64 %i.aiu
  br label %._crit_edge.i781

._crit_edge.i781:                                 ; preds = %.lr.ph.preheader.i784, %.preheader.i780
  %.329.lcssa.i782 = phi ptr [ %i.ail, %.preheader.i780 ], [ %scevgep43.i786, %.lr.ph.preheader.i784 ] ; 2 uses
  br i1 %i.aid, label %bb.ii, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790

bb.ii:                                            ; preds = %._crit_edge.i781
  %i.aiv = getelementptr inbounds i8, ptr %.329.lcssa.i782, i64 -1 ; 2 uses
  store i8 45, ptr %i.aiv, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790: ; preds = %._crit_edge.i781, %bb.ii
  %.4.i783 = phi ptr [ %i.aiv, %bb.ii ], [ %.329.lcssa.i782, %._crit_edge.i781 ] ; 8 uses
  %.4.i7831252 = ptrtoint ptr %.4.i783 to i64
  %scevgep1253 = getelementptr i8, ptr %scevgep1251, i64 %.4.i7831252 ; 2 uses
  %.not3471402 = icmp eq ptr %.0.i929.idx.sroa.gep1254, %.4.i783
  br i1 %.not3471402, label %.critedge4, label %.lr.ph1405

bb.ij:                                            ; preds = %.lr.ph1405
  %.not347 = icmp eq ptr %i.aiw, %.4.i783
  br i1 %.not347, label %.critedge4, label %.lr.ph1405, !llvm.loop !51

.lr.ph1405:                                       ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790, %bb.ij
  %.01403 = phi ptr [ %i.aiw, %bb.ij ], [ %.0.i929.idx.sroa.gep1254, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790 ] ; 2 uses
  %i.aiw = getelementptr inbounds i8, ptr %.01403, i64 -1 ; 3 uses
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !14
  %i.aiy = icmp eq i8 %i.aix, 48
  br i1 %i.aiy, label %bb.ij, label %..critedge4_crit_edge1407, !llvm.loop !51

.loopexit1034:                                    ; preds = %bb.iw
  %lpad.loopexit1036 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

.loopexit.split-lp1035:                           ; preds = %bb.iq
  %lpad.loopexit.split-lp1037 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

..critedge4_crit_edge1407:                        ; preds = %.lr.ph1405
  br label %.critedge4, !llvm.loop !51

.critedge4:                                       ; preds = %bb.ij, %..critedge4_crit_edge1407, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790
  %.not347.lcssa = phi i1 [ true, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790 ], [ false, %..critedge4_crit_edge1407 ], [ true, %bb.ij ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep1253, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit790 ], [ %.01403, %..critedge4_crit_edge1407 ], [ %scevgep1253, %bb.ij ] ; 2 uses
  %i.aiz = load i8, ptr %i.ael, align 1, !tbaa !14
  switch i8 %i.aiz, label %bb.ip [
    i8 83, label %bb.ik
    i8 102, label %bb.in
  ]

bb.ik:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.aja = getelementptr inbounds i8, ptr %.4.i783, i64 -1 ; 2 uses
  store i8 46, ptr %i.aja, align 1, !tbaa !14
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %.0282 = phi ptr [ %i.aja, %bb.il ], [ %.4.i783, %bb.ik ] ; 2 uses
  %i.ajb = load i8, ptr %i.i, align 4, !tbaa !46  ; 2 uses
  %i.ajc = srem i8 %i.ajb, 10
  %i.ajd = sext i8 %i.ajc to i64
  %i.aje = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajd
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !14
  %i.ajg = getelementptr inbounds i8, ptr %.0282, i64 -1
  store i8 %i.ajf, ptr %i.ajg, align 1, !tbaa !14
  %i.ajh = sdiv i8 %i.ajb, 10
  %i.aji = srem i8 %i.ajh, 10
  %i.ajj = sext i8 %i.aji to i64
  %i.ajk = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.ajj
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !14
  %i.ajm = getelementptr inbounds i8, ptr %.0282, i64 -2 ; 2 uses
  store i8 %i.ajl, ptr %i.ajm, align 1, !tbaa !14
  br label %bb.ip

bb.in:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.ajn = getelementptr inbounds i8, ptr %.4.i783, i64 -1 ; 2 uses
  store i8 48, ptr %i.ajn, align 1, !tbaa !14
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.io, %bb.im, %.critedge4
  %.1283 = phi ptr [ %.4.i783, %.critedge4 ], [ %i.ajm, %bb.im ], [ %i.ajn, %bb.io ], [ %.4.i783, %bb.in ] ; 5 uses
  %i.ajo = ptrtoint ptr %.0.lcssa to i64
  %i.ajp = ptrtoint ptr %.1283 to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp                 ; 5 uses
  %i.ajr = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.ajs = sub i64 9223372036854775807, %i.ajr
  %i.ajt = icmp ult i64 %i.ajs, %i.ajq
  br i1 %i.ajt, label %bb.iq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i791

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc796 unwind label %.loopexit.split-lp1035

.noexc796:                                        ; preds = %bb.iq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i791: ; preds = %bb.ip
  %i.aju = add i64 %i.ajq, %i.ajr                 ; 3 uses
  %i.ajv = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.ajw = icmp eq ptr %i.ajv, %i.c               ; 2 uses
  br i1 %i.ajw, label %bb.ir, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i792

bb.ir:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i791
  %i.ajx = icmp ult i64 %i.ajr, 16
  call void @llvm.assume(i1 %i.ajx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i792

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i792: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i791
  %i.ajy = load i64, ptr %i.c, align 8
  %i.ajz = select i1 %i.ajw, i64 15, i64 %i.ajy
  %.not.i.i793 = icmp ugt i64 %i.aju, %i.ajz
  br i1 %.not.i.i793, label %bb.iw, label %bb.is

bb.is:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i792
  %.not8.i.i794 = icmp eq ptr %.0.lcssa, %.1283
  br i1 %.not8.i.i794, label %bb.ix, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.ajr ; 2 uses
  %cond.i.i795 = icmp eq i64 %i.ajq, 1
  br i1 %cond.i.i795, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.akb = load i8, ptr %.1283, align 1, !tbaa !14
  store i8 %i.akb, ptr %i.aka, align 1, !tbaa !14
  br label %bb.ix

bb.iv:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aka, ptr nonnull align 1 %.1283, i64 %i.ajq, i1 false)
  br label %bb.ix

bb.iw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i792
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ajr, i64 noundef 0, ptr noundef nonnull %.1283, i64 noundef %i.ajq)
          to label %bb.ix unwind label %.loopexit1034

bb.ix:                                            ; preds = %bb.iv, %bb.iu, %bb.is, %bb.iw
  store i64 %i.aju, ptr %i.d, align 8, !tbaa !11
  %i.akc = load ptr, ptr %0, align 8, !tbaa !36
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.aju
  store i8 0, ptr %i.akd, align 1, !tbaa !14
  %i.ake = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread930

bb.iy:                                            ; preds = %bb.ga
  %i.akf = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not334 = icmp eq ptr %i.akf, %i.bq
  br i1 %.not334, label %bb.jy, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !14
  %i.akh = icmp eq i8 %i.akg, 89
  br i1 %i.akh, label %bb.ja, label %bb.jy

bb.ja:                                            ; preds = %bb.iz
  %i.aki = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not341 = icmp eq ptr %i.aki, %.3278
  br i1 %.not341, label %bb.jj, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr %i.cb, ptr %18, align 8, !tbaa !7
  store i64 0, ptr %i.cc, align 8, !tbaa !11
  %i.akj = ptrtoint ptr %i.aki to i64
  %i.akk = ptrtoint ptr %.3278 to i64
  %i.akl = sub i64 %i.akj, %i.akk                 ; 8 uses
  %i.akm = icmp ugt i64 %i.akl, 15
  br i1 %i.akm, label %bb.jc, label %._crit_edge.i.i799

bb.jc:                                            ; preds = %bb.jb
  %i.akn = icmp slt i64 %i.akl, 0
  br i1 %i.akn, label %.noexc.i802, label %bb.jd

.noexc.i802:                                      ; preds = %bb.jc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc803 unwind label %.loopexit.split-lp1020

.noexc803:                                        ; preds = %.noexc.i802
  unreachable

bb.jd:                                            ; preds = %bb.jc
  %i.ako = add nuw i64 %i.akl, 1                  ; 2 uses
  %i.akp = icmp slt i64 %i.ako, 0
  br i1 %i.akp, label %.noexc4.i801, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800, !prof !41

.noexc4.i801:                                     ; preds = %bb.jd
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc804 unwind label %.loopexit.split-lp1020

.noexc804:                                        ; preds = %.noexc4.i801
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800: ; preds = %bb.jd
  %i.akq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ako) #21
          to label %.noexc805 unwind label %.loopexit1019 ; 2 uses

.noexc805:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800
  store ptr %i.akq, ptr %18, align 8, !tbaa !36
  store i64 %i.akl, ptr %i.cb, align 8, !tbaa !14
  br label %._crit_edge.i.i799

._crit_edge.i.i799:                               ; preds = %.noexc805, %bb.jb
  %i.akr = phi ptr [ %i.akq, %.noexc805 ], [ %i.cb, %bb.jb ] ; 3 uses
  switch i64 %i.akl, label %bb.jf [
    i64 1, label %bb.je
    i64 0, label %bb.jg
  ]

bb.je:                                            ; preds = %._crit_edge.i.i799
  %i.aks = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.aks, ptr %i.akr, align 1, !tbaa !14
  br label %bb.jg

bb.jf:                                            ; preds = %._crit_edge.i.i799
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akr, ptr align 1 %.3278, i64 %i.akl, i1 false)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je, %._crit_edge.i.i799
  store i64 %i.akl, ptr %i.cc, align 8, !tbaa !11
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.akl
  store i8 0, ptr %i.akt, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.aku = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.akv = icmp eq ptr %i.aku, %i.cb
  br i1 %i.akv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807: ; preds = %bb.jh
  %i.akw = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.akx = add i64 %i.akw, 1
  call void @_ZdlPvm(ptr noundef %i.aku, i64 noundef %i.akx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809: ; preds = %bb.jh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.jj

.loopexit1019:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i800
  %lpad.loopexit1021 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

.loopexit.split-lp1020:                           ; preds = %.noexc.i802, %.noexc4.i801
  %lpad.loopexit.split-lp1022 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

bb.ji:                                            ; preds = %bb.jg
  %i.aky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akz = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.cb
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810: ; preds = %bb.ji
  %i.alb = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812: ; preds = %bb.ji, %.loopexit1019, %.loopexit.split-lp1020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810
  %.pn342 = phi { ptr, i32 } [ %i.aky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i810 ], [ %lpad.loopexit.split-lp1022, %.loopexit.split-lp1020 ], [ %lpad.loopexit1021, %.loopexit1019 ], [ %i.aky, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.lr

bb.jj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %bb.ja
  %i.ald = load i64, ptr %5, align 8, !tbaa !24   ; 4 uses
  %i.ale = icmp slt i64 %i.ald, 0                 ; 2 uses
  br i1 %i.ale, label %bb.jk, label %bb.jn

bb.jk:                                            ; preds = %bb.jj
  %i.alf = icmp eq i64 %i.ald, -9223372036854775808
  br i1 %i.alf, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  store i8 56, ptr %i.bu, align 4, !tbaa !14
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %bb.jk
  %.026.i832 = phi ptr [ %i.bu, %bb.jl ], [ %.0.i929.idx.sroa.gep1254, %bb.jk ]
  %.022.i833 = phi i32 [ 2, %bb.jl ], [ 3, %bb.jk ]
  %.1.i834 = phi i64 [ -922337203685477580, %bb.jl ], [ %i.ald, %bb.jk ]
  %i.alg = sub nsw i64 0, %.1.i834
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jj
  %.127.i813 = phi ptr [ %.026.i832, %bb.jm ], [ %.0.i929.idx.sroa.gep1254, %bb.jj ] ; 2 uses
  %.123.i814 = phi i32 [ %.022.i833, %bb.jm ], [ 4, %bb.jj ] ; 2 uses
  %.2.i815 = phi i64 [ %i.alg, %bb.jm ], [ %i.ald, %bb.jj ]
  %scevgep40.i816 = getelementptr i8, ptr %.127.i813, i64 -2
  %i.alh = add nsw i32 %.123.i814, -2
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jo, %bb.jn
  %indvars.iv42.i817 = phi i32 [ %indvars.iv.next.i824, %bb.jo ], [ %i.alh, %bb.jn ] ; 2 uses
  %indvars.iv.i818 = phi ptr [ %scevgep41.i823, %bb.jo ], [ %scevgep40.i816, %bb.jn ] ; 2 uses
  %.228.i819 = phi ptr [ %i.alm, %bb.jo ], [ %.127.i813, %bb.jn ] ; 2 uses
  %.224.i820 = phi i32 [ %i.ali, %bb.jo ], [ %.123.i814, %bb.jn ] ; 3 uses
  %.3.i821 = phi i64 [ %i.aln, %bb.jo ], [ %.2.i815, %bb.jn ] ; 3 uses
  %i.ali = add i32 %.224.i820, -1                 ; 2 uses
  %i.alj = urem i64 %.3.i821, 10
  %i.alk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.alj
  %i.all = load i8, ptr %i.alk, align 1, !tbaa !14
  %i.alm = getelementptr inbounds i8, ptr %.228.i819, i64 -1 ; 3 uses
  store i8 %i.all, ptr %i.alm, align 1, !tbaa !14
  %i.aln = udiv i64 %.3.i821, 10
  %.not.i822 = icmp ult i64 %.3.i821, 10
  %scevgep41.i823 = getelementptr i8, ptr %indvars.iv.i818, i64 -1
  %indvars.iv.next.i824 = add i32 %indvars.iv42.i817, -1
  br i1 %.not.i822, label %.preheader.i825, label %bb.jo, !llvm.loop !42

.preheader.i825:                                  ; preds = %bb.jo
  %i.alo = icmp sgt i32 %.224.i820, 1
  br i1 %i.alo, label %.lr.ph.preheader.i829, label %._crit_edge.i826

.lr.ph.preheader.i829:                            ; preds = %.preheader.i825
  %i.alp = getelementptr i8, ptr %.228.i819, i64 -2
  %i.alq = add nsw i32 %.224.i820, -2
  %i.alr = zext nneg i32 %i.alq to i64
  %i.als = sub nsw i64 0, %i.alr
  %scevgep.i830 = getelementptr i8, ptr %i.alp, i64 %i.als
  %i.alt = zext nneg i32 %i.ali to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i830, i8 48, i64 %i.alt, i1 false), !tbaa !14
  %i.alu = zext i32 %indvars.iv42.i817 to i64
  %i.alv = sub nsw i64 0, %i.alu
  %scevgep43.i831 = getelementptr i8, ptr %indvars.iv.i818, i64 %i.alv
  br label %._crit_edge.i826

._crit_edge.i826:                                 ; preds = %.lr.ph.preheader.i829, %.preheader.i825
  %.329.lcssa.i827 = phi ptr [ %i.alm, %.preheader.i825 ], [ %scevgep43.i831, %.lr.ph.preheader.i829 ] ; 2 uses
  br i1 %i.ale, label %bb.jp, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit835

bb.jp:                                            ; preds = %._crit_edge.i826
  %i.alw = getelementptr inbounds i8, ptr %.329.lcssa.i827, i64 -1 ; 2 uses
  store i8 45, ptr %i.alw, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit835

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit835: ; preds = %._crit_edge.i826, %bb.jp
  %.4.i828 = phi ptr [ %i.alw, %bb.jp ], [ %.329.lcssa.i827, %._crit_edge.i826 ] ; 5 uses
  %i.alx = ptrtoint ptr %.4.i828 to i64
  %i.aly = sub i64 %i.bv, %i.alx                  ; 5 uses
  %i.alz = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.ama = sub i64 9223372036854775807, %i.alz
  %i.amb = icmp ult i64 %i.ama, %i.aly
  br i1 %i.amb, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i836

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i836: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit835
  %i.amc = add i64 %i.aly, %i.alz                 ; 3 uses
  %i.amd = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.ame = icmp eq ptr %i.amd, %i.c               ; 2 uses
  br i1 %i.ame, label %bb.jq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837

bb.jq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i836
  %i.amf = icmp ult i64 %i.alz, 16
  call void @llvm.assume(i1 %i.amf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837: ; preds = %bb.jq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i836
  %i.amg = load i64, ptr %i.c, align 8
  %i.amh = select i1 %i.ame, i64 15, i64 %i.amg
  %.not.i.i838 = icmp ugt i64 %i.amc, %i.amh
  br i1 %.not.i.i838, label %bb.jv, label %bb.jr

bb.jr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837
  %.not8.i.i839 = icmp eq ptr %.0.i929.idx.sroa.gep1254, %.4.i828
  br i1 %.not8.i.i839, label %bb.jw, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.alz ; 2 uses
  %cond.i.i840 = icmp eq i64 %i.aly, 1
  br i1 %cond.i.i840, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.amj = load i8, ptr %.4.i828, align 1, !tbaa !14
  store i8 %i.amj, ptr %i.ami, align 1, !tbaa !14
  br label %bb.jw

bb.ju:                                            ; preds = %bb.js
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ami, ptr nonnull align 1 %.4.i828, i64 %i.aly, i1 false)
  br label %bb.jw

bb.jv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.alz, i64 noundef 0, ptr noundef nonnull %.4.i828, i64 noundef %i.aly)
          to label %bb.jw unwind label %.loopexit1014

bb.jw:                                            ; preds = %bb.ju, %bb.jt, %bb.jr, %bb.jv
  store i64 %i.amc, ptr %i.d, align 8, !tbaa !11
  %i.amk = load ptr, ptr %0, align 8, !tbaa !36
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 %i.amc
  store i8 0, ptr %i.aml, align 1, !tbaa !14
  %i.amm = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread930

bb.jx:                                            ; preds = %bb.ga
  %i.amn = sext i8 %i.aax to i32
  %isdigittmp = add nsw i32 %i.amn, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.jy, label %.thread930

bb.jy:                                            ; preds = %bb.jx, %bb.iz, %bb.iy
  %21 = sext i8 %i.aax to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %21, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  br i1 %.not7396.i, label %.thread930, label %.thread943

.thread943:                                       ; preds = %bb.jy, %bb.ka
  %memchr100.i = phi ptr [ %memchr.i, %bb.ka ], [ %memchr95.i, %bb.jy ]
  %.199.i.idx = phi i64 [ %.199.i.add, %bb.ka ], [ 1, %bb.jy ] ; 2 uses
  %.05397.i = phi i32 [ %i.amw, %bb.ka ], [ 0, %bb.jy ] ; 3 uses
  %i.amo = ptrtoint ptr %memchr100.i to i64
  %i.amp = trunc i64 %i.amo to i32
  %i.amq = sub i32 %i.amp, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.amr = icmp sgt i32 %i.amq, 9
  br i1 %i.amr, label %select.unfold.i, label %.lr.ph1412

.lr.ph1412:                                       ; preds = %.thread943
  %i.ams = icmp slt i32 %.05397.i, -214748364
  br i1 %i.ams, label %.thread930, label %bb.jz

bb.jz:                                            ; preds = %.lr.ph1412
  %i.amt = mul nsw i32 %.05397.i, 10              ; 2 uses
  %i.amu = or disjoint i32 %i.amq, -2147483648
  %i.amv = icmp slt i32 %i.amt, %i.amu
  br i1 %i.amv, label %.thread930, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.amw = sub nsw i32 %i.amt, %i.amq             ; 2 uses
  %.199.i.add = add nuw nsw i64 %.199.i.idx, 1    ; 3 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.199.i.add
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !14
  %i.amz = sext i8 %i.amy to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.amz, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  br i1 %.not73.i, label %select.unfold.i, label %.thread943

select.unfold.i:                                  ; preds = %bb.ka, %.thread943
  %.255.ph.i = phi i32 [ %i.amw, %bb.ka ], [ %.05397.i, %.thread943 ] ; 4 uses
  %.3.ph.i.idx = phi i64 [ %.199.i.add, %bb.ka ], [ %.199.i.idx, %.thread943 ] ; 2 uses
  %.3.ph.i.ptr = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 %.3.ph.i.idx ; 4 uses
  %i.ana = icmp eq i64 %.3.ph.i.idx, 1
  %22 = icmp eq i32 %.255.ph.i, -2147483648
  %or.cond80.i = select i1 %i.ana, i1 true, i1 %22
  br i1 %or.cond80.i, label %.thread930, label %bb.kb

bb.kb:                                            ; preds = %select.unfold.i
  %i.anb = sub nsw i32 0, %.255.ph.i              ; 5 uses
  %or.cond77.i = icmp ugt i32 %i.anb, 1024
  br i1 %or.cond77.i, label %.thread930, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.kb
  %23 = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  switch i8 %23, label %.thread930 [
    i8 83, label %bb.kc
    i8 102, label %bb.kc
  ]

bb.kc:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  %i.anc = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not336 = icmp eq ptr %i.anc, %.3278
  br i1 %.not336, label %bb.kl, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %i.cn, ptr %19, align 8, !tbaa !7
  store i64 0, ptr %i.co, align 8, !tbaa !11
  %i.and = ptrtoint ptr %i.anc to i64
  %i.ane = ptrtoint ptr %.3278 to i64
  %i.anf = sub i64 %i.and, %i.ane                 ; 8 uses
  %i.ang = icmp ugt i64 %i.anf, 15
  br i1 %i.ang, label %bb.ke, label %._crit_edge.i.i849

bb.ke:                                            ; preds = %bb.kd
  %i.anh = icmp slt i64 %i.anf, 0
  br i1 %i.anh, label %.noexc.i852, label %bb.kf

.noexc.i852:                                      ; preds = %bb.ke
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc853 unwind label %.loopexit.split-lp1050

.noexc853:                                        ; preds = %.noexc.i852
  unreachable

bb.kf:                                            ; preds = %bb.ke
  %i.ani = add nuw i64 %i.anf, 1                  ; 2 uses
  %i.anj = icmp slt i64 %i.ani, 0
  br i1 %i.anj, label %.noexc4.i851, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i850, !prof !41

.noexc4.i851:                                     ; preds = %bb.kf
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc854 unwind label %.loopexit.split-lp1050

.noexc854:                                        ; preds = %.noexc4.i851
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i850: ; preds = %bb.kf
  %i.ank = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #21
          to label %.noexc855 unwind label %.loopexit1049 ; 2 uses

.noexc855:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i850
  store ptr %i.ank, ptr %19, align 8, !tbaa !36
  store i64 %i.anf, ptr %i.cn, align 8, !tbaa !14
  br label %._crit_edge.i.i849

._crit_edge.i.i849:                               ; preds = %.noexc855, %bb.kd
  %i.anl = phi ptr [ %i.ank, %.noexc855 ], [ %i.cn, %bb.kd ] ; 3 uses
  switch i64 %i.anf, label %bb.kh [
    i64 1, label %bb.kg
    i64 0, label %bb.ki
  ]

bb.kg:                                            ; preds = %._crit_edge.i.i849
  %i.anm = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.anm, ptr %i.anl, align 1, !tbaa !14
  br label %bb.ki

bb.kh:                                            ; preds = %._crit_edge.i.i849
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anl, ptr align 1 %.3278, i64 %i.anf, i1 false)
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg, %._crit_edge.i.i849
  store i64 %i.anf, ptr %i.co, align 8, !tbaa !11
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.anf
  store i8 0, ptr %i.ann, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.kj unwind label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.ano = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.cn
  br i1 %i.anp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857: ; preds = %bb.kj
  %i.anq = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.anr = add i64 %i.anq, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.anr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859: ; preds = %bb.kj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i857
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.kl

.loopexit1054:                                    ; preds = %bb.lf
  %lpad.loopexit1056 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

.loopexit.split-lp1055:                           ; preds = %bb.kz
  %lpad.loopexit.split-lp1057 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

.loopexit1049:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i850
  %lpad.loopexit1051 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862

.loopexit.split-lp1050:                           ; preds = %.noexc.i852, %.noexc4.i851
  %lpad.loopexit.split-lp1052 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862

bb.kk:                                            ; preds = %bb.ki
  %i.ans = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ant = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.anu = icmp eq ptr %i.ant, %i.cn
  br i1 %i.anu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860: ; preds = %bb.kk
  %i.anv = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.anw = add i64 %i.anv, 1
  call void @_ZdlPvm(ptr noundef %i.ant, i64 noundef %i.anw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862: ; preds = %bb.kk, %.loopexit1049, %.loopexit.split-lp1050, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860
  %.pn337 = phi { ptr, i32 } [ %i.ans, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i860 ], [ %lpad.loopexit.split-lp1052, %.loopexit.split-lp1050 ], [ %lpad.loopexit1051, %.loopexit1049 ], [ %i.ans, %bb.kk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.lr

bb.kl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859, %bb.kc
  %.not998 = icmp eq i32 %.255.ph.i, 0
  br i1 %.not998, label %bb.kx, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.anx = icmp samesign ugt i32 %i.anb, 18
  br i1 %i.anx, label %.thread947, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.any = icmp samesign ugt i32 %i.anb, 15
  br i1 %i.any, label %.thread947, label %bb.ko

.thread947:                                       ; preds = %bb.km, %bb.kn
  %.0923950 = phi i32 [ %i.anb, %bb.kn ], [ 18, %bb.km ] ; 2 uses
  %i.anz = load i64, ptr %3, align 8, !tbaa !49
  %i.aoa = zext nneg i32 %.0923950 to i64
  %i.aob = getelementptr [8 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.aoa
  %i.aoc = getelementptr i8, ptr %i.aob, i64 -120
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !43
  %i.aoe = mul nsw i64 %i.aod, %i.anz
  br label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.aof = load i64, ptr %3, align 8, !tbaa !49
  %24 = sext i32 %.255.ph.i to i64
  %25 = getelementptr [8 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %24
  %26 = getelementptr i8, ptr %25, i64 120
  %i.aog = load i64, ptr %26, align 8, !tbaa !43
  %i.aoh = sdiv i64 %i.aof, %i.aog
  br label %bb.kp

bb.kp:                                            ; preds = %bb.ko, %.thread947
  %.0923949 = phi i32 [ %.0923950, %.thread947 ], [ %i.anb, %bb.ko ] ; 3 uses
  %i.aoi = phi i64 [ %i.aoe, %.thread947 ], [ %i.aoh, %bb.ko ] ; 4 uses
  %i.aoj = icmp slt i64 %i.aoi, 0                 ; 2 uses
  br i1 %i.aoj, label %bb.kq, label %bb.kt

bb.kq:                                            ; preds = %bb.kp
  %i.aok = add nsw i32 %.0923949, -1
  %i.aol = icmp eq i64 %i.aoi, -9223372036854775808
  br i1 %i.aol, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.aom = add nsw i32 %.0923949, -2
  store i8 56, ptr %i.bu, align 4, !tbaa !14
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kq
  %.026.i882 = phi ptr [ %i.bu, %bb.kr ], [ %.0.i929.idx.sroa.gep1254, %bb.kq ]
  %.022.i883 = phi i32 [ %i.aom, %bb.kr ], [ %i.aok, %bb.kq ]
  %.1.i884 = phi i64 [ -922337203685477580, %bb.kr ], [ %i.aoi, %bb.kq ]
  %i.aon = sub nsw i64 0, %.1.i884
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kp
  %.127.i863 = phi ptr [ %.026.i882, %bb.ks ], [ %.0.i929.idx.sroa.gep1254, %bb.kp ] ; 2 uses
  %.123.i864 = phi i32 [ %.022.i883, %bb.ks ], [ %.0923949, %bb.kp ] ; 2 uses
  %.2.i865 = phi i64 [ %i.aon, %bb.ks ], [ %i.aoi, %bb.kp ]
  %scevgep40.i866 = getelementptr i8, ptr %.127.i863, i64 -2
  %i.aoo = add nsw i32 %.123.i864, -2
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ku, %bb.kt
  %indvars.iv42.i867 = phi i32 [ %indvars.iv.next.i874, %bb.ku ], [ %i.aoo, %bb.kt ] ; 2 uses
  %indvars.iv.i868 = phi ptr [ %scevgep41.i873, %bb.ku ], [ %scevgep40.i866, %bb.kt ] ; 2 uses
  %.228.i869 = phi ptr [ %i.aot, %bb.ku ], [ %.127.i863, %bb.kt ] ; 2 uses
  %.224.i870 = phi i32 [ %i.aop, %bb.ku ], [ %.123.i864, %bb.kt ] ; 3 uses
  %.3.i871 = phi i64 [ %i.aou, %bb.ku ], [ %.2.i865, %bb.kt ] ; 3 uses
  %i.aop = add i32 %.224.i870, -1                 ; 2 uses
  %i.aoq = urem i64 %.3.i871, 10
  %i.aor = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aoq
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !14
  %i.aot = getelementptr inbounds i8, ptr %.228.i869, i64 -1 ; 3 uses
  store i8 %i.aos, ptr %i.aot, align 1, !tbaa !14
  %i.aou = udiv i64 %.3.i871, 10
  %.not.i872 = icmp ult i64 %.3.i871, 10
  %scevgep41.i873 = getelementptr i8, ptr %indvars.iv.i868, i64 -1
  %indvars.iv.next.i874 = add i32 %indvars.iv42.i867, -1
  br i1 %.not.i872, label %.preheader.i875, label %bb.ku, !llvm.loop !42

.preheader.i875:                                  ; preds = %bb.ku
  %i.aov = icmp sgt i32 %.224.i870, 1
  br i1 %i.aov, label %.lr.ph.preheader.i879, label %._crit_edge.i876

.lr.ph.preheader.i879:                            ; preds = %.preheader.i875
  %i.aow = getelementptr i8, ptr %.228.i869, i64 -2
  %i.aox = add nsw i32 %.224.i870, -2
  %i.aoy = zext nneg i32 %i.aox to i64
  %i.aoz = sub nsw i64 0, %i.aoy
  %scevgep.i880 = getelementptr i8, ptr %i.aow, i64 %i.aoz
  %i.apa = zext nneg i32 %i.aop to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i880, i8 48, i64 %i.apa, i1 false), !tbaa !14
  %i.apb = zext i32 %indvars.iv42.i867 to i64
  %i.apc = sub nsw i64 0, %i.apb
  %scevgep43.i881 = getelementptr i8, ptr %indvars.iv.i868, i64 %i.apc
  br label %._crit_edge.i876

._crit_edge.i876:                                 ; preds = %.lr.ph.preheader.i879, %.preheader.i875
  %.329.lcssa.i877 = phi ptr [ %i.aot, %.preheader.i875 ], [ %scevgep43.i881, %.lr.ph.preheader.i879 ] ; 2 uses
  br i1 %i.aoj, label %bb.kv, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit885

bb.kv:                                            ; preds = %._crit_edge.i876
  %i.apd = getelementptr inbounds i8, ptr %.329.lcssa.i877, i64 -1 ; 2 uses
  store i8 45, ptr %i.apd, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit885

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit885: ; preds = %._crit_edge.i876, %bb.kv
  %.4.i878 = phi ptr [ %i.apd, %bb.kv ], [ %.329.lcssa.i877, %._crit_edge.i876 ] ; 2 uses
  %i.ape = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  %i.apf = icmp eq i8 %i.ape, 83
  br i1 %i.apf, label %bb.kw, label %.thread951

bb.kw:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit885
  %i.apg = getelementptr inbounds i8, ptr %.4.i878, i64 -1 ; 2 uses
  store i8 46, ptr %i.apg, align 1, !tbaa !14
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kl
  %.2284.ph = phi ptr [ %.0.i929.idx.sroa.gep1254, %bb.kl ], [ %i.apg, %bb.kw ] ; 3 uses
  %.pr = load i8, ptr %.3.ph.i.ptr, align 1, !tbaa !14
  %i.aph = icmp eq i8 %.pr, 83
  br i1 %i.aph, label %bb.ky, label %.thread951

bb.ky:                                            ; preds = %bb.kx
  %i.api = load i8, ptr %i.i, align 4, !tbaa !46  ; 2 uses
  %i.apj = srem i8 %i.api, 10
  %i.apk = sext i8 %i.apj to i64
  %i.apl = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apk
  %i.apm = load i8, ptr %i.apl, align 1, !tbaa !14
  %i.apn = getelementptr inbounds i8, ptr %.2284.ph, i64 -1
  store i8 %i.apm, ptr %i.apn, align 1, !tbaa !14
  %i.apo = sdiv i8 %i.api, 10
  %i.app = srem i8 %i.apo, 10
  %i.apq = sext i8 %i.app to i64
  %i.apr = getelementptr inbounds i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.apq
  %i.aps = load i8, ptr %i.apr, align 1, !tbaa !14
  %i.apt = getelementptr inbounds i8, ptr %.2284.ph, i64 -2 ; 2 uses
  store i8 %i.aps, ptr %i.apt, align 1, !tbaa !14
  br label %.thread951

.thread951:                                       ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit885, %bb.ky, %bb.kx
  %.3285 = phi ptr [ %i.apt, %bb.ky ], [ %.2284.ph, %bb.kx ], [ %.4.i878, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit885 ] ; 5 uses
  %i.apu = ptrtoint ptr %.3285 to i64
  %i.apv = sub i64 %i.bv, %i.apu                  ; 5 uses
  %i.apw = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.apx = sub i64 9223372036854775807, %i.apw
  %i.apy = icmp ult i64 %i.apx, %i.apv
  br i1 %i.apy, label %bb.kz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i886

bb.kz:                                            ; preds = %.thread951
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc891 unwind label %.loopexit.split-lp1055

.noexc891:                                        ; preds = %bb.kz
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i886: ; preds = %.thread951
  %i.apz = add i64 %i.apv, %i.apw                 ; 3 uses
  %i.aqa = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.aqb = icmp eq ptr %i.aqa, %i.c               ; 2 uses
  br i1 %i.aqb, label %bb.la, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i887

bb.la:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i886
  %i.aqc = icmp ult i64 %i.apw, 16
  call void @llvm.assume(i1 %i.aqc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i887

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i887: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i886
  %i.aqd = load i64, ptr %i.c, align 8
  %i.aqe = select i1 %i.aqb, i64 15, i64 %i.aqd
  %.not.i.i888 = icmp ugt i64 %i.apz, %i.aqe
  br i1 %.not.i.i888, label %bb.lf, label %bb.lb

bb.lb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i887
  %.not8.i.i889 = icmp eq ptr %.0.i929.idx.sroa.gep1254, %.3285
  br i1 %.not8.i.i889, label %bb.lg, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.apw ; 2 uses
  %cond.i.i890 = icmp eq i64 %i.apv, 1
  br i1 %cond.i.i890, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.aqg = load i8, ptr %.3285, align 1, !tbaa !14
  store i8 %i.aqg, ptr %i.aqf, align 1, !tbaa !14
  br label %bb.lg

bb.le:                                            ; preds = %bb.lc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqf, ptr align 1 %.3285, i64 %i.apv, i1 false)
  br label %bb.lg

bb.lf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i887
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.apw, i64 noundef 0, ptr noundef %.3285, i64 noundef %i.apv)
          to label %bb.lg unwind label %.loopexit1054

bb.lg:                                            ; preds = %bb.le, %bb.ld, %bb.lb, %bb.lf
  store i64 %i.apz, ptr %i.d, align 8, !tbaa !11
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !36
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 %i.apz
  store i8 0, ptr %i.aqi, align 1, !tbaa !14
  %i.aqj = getelementptr inbounds nuw i8, ptr %.3.ph.i.ptr, i64 1 ; 2 uses
  br label %.thread930

.thread930:                                       ; preds = %.lr.ph1412, %bb.jz, %bb.jy, %bb.hd, %bb.ee, %select.unfold.i, %bb.kb, %bb.hs, %bb.ef, %bb.fk, %bb.fl, %bb.ev, %bb.eg, %bb.ew, %bb.lg, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %bb.go, %bb.hr, %bb.jw, %bb.jx, %bb.ix, %bb.hc, %bb.fz, %bb.ai, %bb.aj, %bb.fy, %bb.fj, %bb.eu, %bb.ed
  %.6281 = phi ptr [ %.3278, %bb.ee ], [ %i.tf, %bb.ed ], [ %i.vn, %bb.eu ], [ %i.yh, %bb.fj ], [ %i.aau, %bb.fy ], [ %.3278, %bb.ai ], [ %.3278, %bb.aj ], [ %.3278, %bb.fz ], [ %i.ace, %bb.go ], [ %i.aek, %bb.hc ], [ %i.ahf, %bb.hr ], [ %i.ake, %bb.ix ], [ %i.amm, %bb.jw ], [ %.3278, %bb.ef ], [ %.3278, %bb.jx ], [ %.3278, %bb.hs ], [ %i.aqj, %bb.lg ], [ %.3278, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.3278, %bb.ew ], [ %.3278, %bb.eg ], [ %.3278, %bb.ev ], [ %.3278, %bb.fl ], [ %.3278, %bb.fk ], [ %.3278, %bb.hd ], [ %.3278, %bb.kb ], [ %.3278, %select.unfold.i ], [ %.3278, %bb.jy ], [ %.3278, %bb.jz ], [ %.3278, %.lr.ph1412 ] ; 2 uses
  %.6274 = phi ptr [ %.2270.lcssa, %bb.ee ], [ %i.tf, %bb.ed ], [ %i.vn, %bb.eu ], [ %i.yh, %bb.fj ], [ %i.aau, %bb.fy ], [ %.2270.lcssa, %bb.ai ], [ %.2270.lcssa, %bb.aj ], [ %i.aav, %bb.fz ], [ %i.ace, %bb.go ], [ %i.aek, %bb.hc ], [ %i.ahf, %bb.hr ], [ %i.ake, %bb.ix ], [ %i.amm, %bb.jw ], [ %.2270.lcssa, %bb.ef ], [ %i.aav, %bb.jx ], [ %i.aav, %bb.hs ], [ %i.aqj, %bb.lg ], [ %i.aav, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2270.lcssa, %bb.ew ], [ %.2270.lcssa, %bb.eg ], [ %.2270.lcssa, %bb.ev ], [ %.2270.lcssa, %bb.fl ], [ %.2270.lcssa, %bb.fk ], [ %i.aav, %bb.hd ], [ %i.aav, %bb.kb ], [ %i.aav, %select.unfold.i ], [ %i.aav, %bb.jy ], [ %i.aav, %bb.jz ], [ %i.aav, %.lr.ph1412 ] ; 2 uses
  %.not = icmp eq ptr %.6274, %i.bq
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread930, %bb.i
  %.0275.lcssa = phi ptr [ %i.bo, %bb.i ], [ %.6281, %.thread930 ] ; 4 uses
  %.not319 = icmp eq ptr %i.bq, %.0275.lcssa
  br i1 %.not319, label %bb.lq, label %bb.lh

bb.lh:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.aqk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.aqk, ptr %20, align 8, !tbaa !7
  %i.aql = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.aql, align 8, !tbaa !11
  %i.aqm = ptrtoint ptr %i.bq to i64
  %i.aqn = ptrtoint ptr %.0275.lcssa to i64
  %i.aqo = sub i64 %i.aqm, %i.aqn                 ; 8 uses
  %i.aqp = icmp ugt i64 %i.aqo, 15
  br i1 %i.aqp, label %bb.li, label %._crit_edge.i.i894

bb.li:                                            ; preds = %bb.lh
  %i.aqq = icmp slt i64 %i.aqo, 0
  br i1 %i.aqq, label %.noexc.i897, label %bb.lj

.noexc.i897:                                      ; preds = %bb.li
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc898 unwind label %bb.lo

.noexc898:                                        ; preds = %.noexc.i897
  unreachable

bb.lj:                                            ; preds = %bb.li
  %i.aqr = add nuw i64 %i.aqo, 1                  ; 2 uses
  %i.aqs = icmp slt i64 %i.aqr, 0
  br i1 %i.aqs, label %.noexc4.i896, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i895, !prof !41

.noexc4.i896:                                     ; preds = %bb.lj
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc899 unwind label %bb.lo

.noexc899:                                        ; preds = %.noexc4.i896
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i895: ; preds = %bb.lj
  %i.aqt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqr) #21
          to label %.noexc900 unwind label %bb.lo ; 2 uses

.noexc900:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i895
  store ptr %i.aqt, ptr %20, align 8, !tbaa !36
  store i64 %i.aqo, ptr %i.aqk, align 8, !tbaa !14
  br label %._crit_edge.i.i894

._crit_edge.i.i894:                               ; preds = %.noexc900, %bb.lh
  %i.aqu = phi ptr [ %i.aqt, %.noexc900 ], [ %i.aqk, %bb.lh ] ; 3 uses
  switch i64 %i.aqo, label %bb.ll [
    i64 1, label %bb.lk
    i64 0, label %bb.lm
  ]

bb.lk:                                            ; preds = %._crit_edge.i.i894
  %i.aqv = load i8, ptr %.0275.lcssa, align 1, !tbaa !14
  store i8 %i.aqv, ptr %i.aqu, align 1, !tbaa !14
  br label %bb.lm

bb.ll:                                            ; preds = %._crit_edge.i.i894
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqu, ptr align 1 %.0275.lcssa, i64 %i.aqo, i1 false)
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk, %._crit_edge.i.i894
  store i64 %i.aqo, ptr %i.aql, align 8, !tbaa !11
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqo
  store i8 0, ptr %i.aqw, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ln unwind label %bb.lp

bb.ln:                                            ; preds = %bb.lm
  %i.aqx = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.aqy = icmp eq ptr %i.aqx, %i.aqk
  br i1 %i.aqy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902: ; preds = %bb.ln
  %i.aqz = load i64, ptr %i.aqk, align 8, !tbaa !14
  %i.ara = add i64 %i.aqz, 1
  call void @_ZdlPvm(ptr noundef %i.aqx, i64 noundef %i.ara) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904: ; preds = %bb.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.lq

bb.lo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i895, %.noexc4.i896, %.noexc.i897
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

bb.lp:                                            ; preds = %bb.lm
  %i.arc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ard = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.are = icmp eq ptr %i.ard, %i.aqk
  br i1 %i.are, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905: ; preds = %bb.lp
  %i.arf = load i64, ptr %i.aqk, align 8, !tbaa !14
  %i.arg = add i64 %i.arf, 1
  call void @_ZdlPvm(ptr noundef %i.ard, i64 noundef %i.arg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907: ; preds = %bb.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905, %bb.lo
  %.pn = phi { ptr, i32 } [ %i.arb, %bb.lo ], [ %i.arc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905 ], [ %i.arc, %bb.lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.lr

bb.lq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit904, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.lr:                                            ; preds = %.loopexit1054, %.loopexit.split-lp1055, %.loopexit1034, %.loopexit.split-lp1035, %.loopexit1014, %.loopexit.split-lp1015, %.loopexit1004, %.loopexit.split-lp1005, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907
  %.pn370.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit862 ], [ %lpad.loopexit.split-lp1007, %.loopexit.split-lp1005 ], [ %.pn367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ], [ %.pn364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591 ], [ %.pn361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620 ], [ %.pn358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642 ], [ %.pn355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit676 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698 ], [ %.pn349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit731 ], [ %lpad.loopexit.split-lp1017, %.loopexit.split-lp1015 ], [ %.pn345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp1037, %.loopexit.split-lp1035 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1006, %.loopexit1004 ], [ %lpad.loopexit1016, %.loopexit1014 ], [ %lpad.loopexit1036, %.loopexit1034 ], [ %lpad.loopexit1056, %.loopexit1054 ], [ %lpad.loopexit.split-lp1057, %.loopexit.split-lp1055 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.m
  %.pn370.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn, %bb.lr ], [ %i.da, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.l
  %.pn370.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn.pn.pn, %bb.ls ], [ %i.cz, %bb.l ]
  %i.arh = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.ari = icmp eq ptr %i.arh, %i.c
  br i1 %i.ari, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908: ; preds = %bb.lt
  %i.arj = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ark = add i64 %i.arj, 1
  call void @_ZdlPvm(ptr noundef %i.arh, i64 noundef %i.ark) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910: ; preds = %bb.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908
  resume { ptr, i32 } %.pn370.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !41

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !14
  store i8 %i.o, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

end_hunk_2
