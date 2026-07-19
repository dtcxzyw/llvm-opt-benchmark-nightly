inline.NumInlined: 499
inline.NumDeleted: 172
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a

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
  %.not1279 = icmp samesign eq i64 %i.bp, 0
  br i1 %.not1279, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 23 uses
  %i.bv = ptrtoint ptr %.0.i979.idx.sroa.gep1304 to i64 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 19 ; 28 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i476 = getelementptr inbounds nuw i8, ptr %9, i64 8
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
  %scevgep1301 = getelementptr i8, ptr %i.a, i64 %i.cv
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread980
  %.02681281 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6274, %.thread980 ] ; 6 uses
  %.02751280 = phi ptr [ %i.bo, %.preheader.lr.ph ], [ %.6281, %.thread980 ] ; 5 uses
  %scevgep = getelementptr i8, ptr %.02681281, i64 %i.cu
  %.026812811296 = ptrtoint ptr %.02681281 to i64 ; 2 uses
  %i.cw = sub i64 0, %.026812811296
  %scevgep1297 = getelementptr i8, ptr %scevgep, i64 %i.cw
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.k
  %.12691271 = phi ptr [ %.02681281, %.preheader ], [ %i.cy, %bb.k ] ; 3 uses
  %i.cx = load i8, ptr %.12691271, align 1, !tbaa !14
  %.not322 = icmp eq i8 %i.cx, 37
  br i1 %.not322, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.12691271, i64 1 ; 2 uses
  %.not321 = icmp eq ptr %i.cy, %i.bq
  br i1 %.not321, label %.critedge, label %bb.j, !llvm.loop !37

bb.l:                                             ; preds = %bb.a
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.kt

bb.m:                                             ; preds = %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ks

.critedge:                                        ; preds = %bb.k, %bb.j
  %.1269.lcssa = phi ptr [ %scevgep1297, %bb.k ], [ %.12691271, %bb.j ] ; 8 uses
  %.1269.lcssa1299 = ptrtoint ptr %.1269.lcssa to i64 ; 3 uses
  %.not323 = icmp ne ptr %.1269.lcssa, %.02681281
  %i.db = icmp eq ptr %.02751280, %.02681281
  %or.cond = select i1 %.not323, i1 %i.db, i1 false
  br i1 %or.cond, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.critedge
  %i.dc = sub i64 %.1269.lcssa1299, %.026812811296 ; 5 uses
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
  %i.di = icmp eq ptr %i.dh, %i.c
  br i1 %i.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dj = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.dl = phi i64 [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.dg, %i.dl
  br i1 %.not.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dd ; 2 uses
  %cond.i.i = icmp eq i64 %i.dc, 1
  br i1 %cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dn = load i8, ptr %.02751280, align 1, !tbaa !14
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %.02751280, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dd, i64 noundef 0, ptr noundef %.02751280, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.s, %bb.q, %bb.r
  store i64 %i.dg, ptr %i.d, align 8, !tbaa !11
  %i.do = load ptr, ptr %0, align 8, !tbaa !36
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  store i8 0, ptr %i.dp, align 1, !tbaa !14
  br label %bb.t

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %.critedge
  %.1276 = phi ptr [ %.02751280, %.critedge ], [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ] ; 7 uses
  %.0249 = phi ptr [ %.02681281, %.critedge ], [ %.1269.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ] ; 2 uses
  %.not3241272 = icmp eq ptr %.1269.lcssa, %i.bq
  br i1 %.not3241272, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %scevgep1298 = getelementptr i8, ptr %.1269.lcssa, i64 %i.cu
  %i.dq = sub i64 0, %.1269.lcssa1299
  %scevgep1300 = getelementptr i8, ptr %scevgep1298, i64 %i.dq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.22701273 = phi ptr [ %i.dt, %bb.u ], [ %.1269.lcssa, %.lr.ph.preheader ] ; 3 uses
  %i.dr = load i8, ptr %.22701273, align 1, !tbaa !14
  %i.ds = icmp eq i8 %i.dr, 37                    ; 3 uses
  br i1 %i.ds, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %.22701273, i64 1 ; 2 uses
  %.not324 = icmp eq ptr %i.dt, %i.bq
  br i1 %.not324, label %.critedge2, label %.lr.ph, !llvm.loop !39

.critedge2:                                       ; preds = %.lr.ph, %bb.u, %bb.t
  %.2270.lcssa = phi ptr [ %.1269.lcssa, %bb.t ], [ %scevgep1300, %bb.u ], [ %.22701273, %.lr.ph ] ; 42 uses
  %.not324.lcssa = phi i1 [ true, %bb.t ], [ %i.ds, %bb.u ], [ %i.ds, %.lr.ph ] ; 2 uses
  %.not325 = icmp ne ptr %.2270.lcssa, %.0249
  %i.du = icmp eq ptr %.1276, %.0249
  %or.cond377 = select i1 %.not325, i1 %i.du, i1 false
  br i1 %or.cond377, label %bb.v, label %bb.af

bb.v:                                             ; preds = %.critedge2
  %i.dv = ptrtoint ptr %.2270.lcssa to i64
  %i.dw = ptrtoint ptr %.1276 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 1                       ; 6 uses
  %i.dz = load i64, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.ea = sub i64 9223372036854775807, %i.dz
  %i.eb = icmp ult i64 %i.ea, %i.dy
  br i1 %i.eb, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc387 unwind label %.loopexit.split-lp1055

.noexc387:                                        ; preds = %bb.w
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380: ; preds = %bb.v
  %i.ec = add i64 %i.dz, %i.dy                    ; 3 uses
  %i.ed = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.c
  br i1 %i.ee, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i386: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.ef = icmp ult i64 %i.dz, 16
  call void @llvm.assume(i1 %i.ef)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i381: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i380
  %i.eg = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i382: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i386
  %i.eh = phi i64 [ %i.eg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i381 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i386 ]
  %.not.i.i383 = icmp ugt i64 %i.ec, %i.eh
  br i1 %.not.i.i383, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i382
  %.not8.i.i384 = icmp eq i64 %i.dy, 0
  br i1 %.not8.i.i384, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dz ; 2 uses
  %cond.i.i385 = icmp eq i64 %i.dy, 1
  br i1 %cond.i.i385, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = load i8, ptr %.1276, align 1, !tbaa !14
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !14
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %.1276, i64 %i.dy, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i382
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dz, i64 noundef 0, ptr noundef %.1276, i64 noundef %i.dy)
          to label %bb.ac unwind label %.loopexit1054

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.ab
  store i64 %i.ec, ptr %i.d, align 8, !tbaa !11
  %i.ek = load ptr, ptr %0, align 8, !tbaa !36
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  store i8 0, ptr %i.el, align 1, !tbaa !14
  %i.em = and i64 %i.dx, -2
  %i.en = getelementptr inbounds nuw i8, ptr %.1276, i64 %i.em ; 4 uses
  %.not326 = icmp ne ptr %i.en, %.2270.lcssa
  %or.cond378 = and i1 %.not324.lcssa, %.not326
  br i1 %or.cond378, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.ep = load i8, ptr %i.en, align 1, !tbaa !14
  %i.eq = load i64, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  %i.er = add i64 %i.eq, 1                        ; 3 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.c
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ad
  %i.eu = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.eu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ad
  %i.ev = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ew = phi i64 [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ex = icmp ugt i64 %i.er, %i.ew
  br i1 %i.ex, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc390 unwind label %.loopexit1054

.noexc390:                                        ; preds = %bb.ae
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc390
  %i.ey = phi ptr [ %.pre.i, %.noexc390 ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 %i.ep, ptr %i.ez, align 1, !tbaa !14
  store i64 %i.er, ptr %i.d, align 8, !tbaa !11
  %i.fa = load ptr, ptr %0, align 8, !tbaa !36
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.er
  store i8 0, ptr %i.fb, align 1, !tbaa !14
  br label %bb.af

.loopexit1054:                                    ; preds = %bb.ab, %bb.ae
  %lpad.loopexit1056 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

.loopexit.split-lp1055:                           ; preds = %bb.w
  %lpad.loopexit.split-lp1057 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.ac, %.critedge2
  %.3278 = phi ptr [ %.1276, %.critedge2 ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.en, %bb.ac ] ; 54 uses
  br i1 %.not324.lcssa, label %.thread980, label %bb.ag, !llvm.loop !40

bb.ag:                                            ; preds = %bb.af
  %i.fc = ptrtoint ptr %.2270.lcssa to i64
  %i.fd = sub i64 %i.fc, %.1269.lcssa1299
  %i.fe = and i64 %i.fd, 1
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %.thread980, label %bb.ah, !llvm.loop !40

bb.ah:                                            ; preds = %bb.ag
  %i.fg = load i8, ptr %.2270.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.fh = sext i8 %i.fg to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.fh, i64 16)
  %.not327 = icmp eq ptr %memchr, null
  br i1 %.not327, label %bb.dn, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not366 = icmp eq ptr %i.fi, %.3278
  br i1 %.not366, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %i.bs, ptr %7, align 8, !tbaa !7
  store i64 0, ptr %i.bt, align 8, !tbaa !11
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %.3278 to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 8 uses
  %i.fm = icmp ugt i64 %i.fl, 15
  br i1 %i.fm, label %bb.ak, label %._crit_edge.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fn = icmp slt i64 %i.fl, 0
  br i1 %i.fn, label %.noexc.i, label %bb.al

.noexc.i:                                         ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc391 unwind label %.loopexit.split-lp1060

.noexc391:                                        ; preds = %.noexc.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.fo = add nuw i64 %i.fl, 1                    ; 2 uses
  %i.fp = icmp slt i64 %i.fo, 0
  br i1 %i.fp, label %.noexc4.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !41

.noexc4.i:                                        ; preds = %bb.al
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc392 unwind label %.loopexit.split-lp1060

.noexc392:                                        ; preds = %.noexc4.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.al
  %i.fq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #21
          to label %.noexc393 unwind label %.loopexit1059 ; 2 uses

.noexc393:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.fq, ptr %7, align 8, !tbaa !36
  store i64 %i.fl, ptr %i.bs, align 8, !tbaa !14
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc393, %bb.aj
  %i.fr = phi ptr [ %i.fq, %.noexc393 ], [ %i.bs, %bb.aj ] ; 3 uses
  switch i64 %i.fl, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.fs = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !14
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr align 1 %.3278, i64 %i.fl, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i
  store i64 %i.fl, ptr %i.bt, align 8, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fl
  store i8 0, ptr %i.ft, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fu = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bs
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %bb.ap
  %i.fw = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.pre = load i8, ptr %.2270.lcssa, align 1, !tbaa !14
  br label %bb.ar

.loopexit1059:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit1061 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

.loopexit.split-lp1060:                           ; preds = %.noexc.i, %.noexc4.i
  %lpad.loopexit.split-lp1062 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

bb.aq:                                            ; preds = %bb.ao
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %7, align 8, !tbaa !36    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.bs
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %bb.aq
  %i.gb = load i64, ptr %i.bs, align 8, !tbaa !14
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %bb.aq, %.loopexit1059, %.loopexit.split-lp1060, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396
  %.pn367 = phi { ptr, i32 } [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396 ], [ %lpad.loopexit.split-lp1062, %.loopexit.split-lp1060 ], [ %lpad.loopexit1061, %.loopexit1059 ], [ %i.fy, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.kr

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai
  %i.gd = phi i8 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.fg, %bb.ai ]
  switch i8 %i.gd, label %bb.dm [
    i8 89, label %bb.as
    i8 109, label %bb.be
    i8 100, label %bb.bh
    i8 101, label %bb.bh
    i8 85, label %bb.bk
    i8 117, label %bb.bn
    i8 87, label %bb.bv
    i8 119, label %bb.by
    i8 72, label %bb.cg
    i8 77, label %bb.cj
    i8 83, label %bb.cm
    i8 122, label %bb.cp
    i8 90, label %bb.cs
    i8 115, label %bb.cy
    i8 37, label %bb.dk
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ge = load i64, ptr %5, align 8, !tbaa !24    ; 4 uses
  %i.gf = icmp slt i64 %i.ge, 0                   ; 2 uses
  br i1 %i.gf, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gg = icmp eq i64 %i.ge, -9223372036854775808
  br i1 %i.gg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 56, ptr %i.bu, align 4, !tbaa !14
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.026.i = phi ptr [ %i.bu, %bb.au ], [ %.0.i979.idx.sroa.gep1304, %bb.at ]
  %.022.i = phi i32 [ -2, %bb.au ], [ -1, %bb.at ]
  %.1.i = phi i64 [ -922337203685477580, %bb.au ], [ %i.ge, %bb.at ]
  %i.gh = sub nsw i64 0, %.1.i
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %.127.i = phi ptr [ %.026.i, %bb.av ], [ %.0.i979.idx.sroa.gep1304, %bb.as ] ; 2 uses
  %.123.i = phi i32 [ %.022.i, %bb.av ], [ 0, %bb.as ] ; 2 uses
  %.2.i = phi i64 [ %i.gh, %bb.av ], [ %i.ge, %bb.as ]
  %scevgep40.i = getelementptr i8, ptr %.127.i, i64 -2
  %i.gi = add nsw i32 %.123.i, -2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %indvars.iv42.i = phi i32 [ %indvars.iv.next.i, %bb.ax ], [ %i.gi, %bb.aw ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep41.i, %bb.ax ], [ %scevgep40.i, %bb.aw ] ; 2 uses
  %.228.i = phi ptr [ %i.gn, %bb.ax ], [ %.127.i, %bb.aw ] ; 2 uses
  %.224.i = phi i32 [ %i.gj, %bb.ax ], [ %.123.i, %bb.aw ] ; 3 uses
  %.3.i = phi i64 [ %i.go, %bb.ax ], [ %.2.i, %bb.aw ] ; 3 uses
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
  br i1 %.not.i, label %.preheader.i, label %bb.ax, !llvm.loop !42

.preheader.i:                                     ; preds = %bb.ax
  %i.gp = icmp sgt i32 %.224.i, 1
  br i1 %i.gp, label %.lr.ph.preheader.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.xw, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef 9)
          to label %bb.eq unwind label %.loopexit1064

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  store i64 %i.xy, ptr %i.d, align 8, !tbaa !11
  %i.yf = load ptr, ptr %0, align 8, !tbaa !36
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.xy
  store i8 0, ptr %i.yg, align 1, !tbaa !14
  %i.yh = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread980, !llvm.loop !40

bb.er:                                            ; preds = %bb.ee
  %i.yi = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  %.not330 = icmp eq ptr %i.yi, %i.bq
  br i1 %.not330, label %.thread980, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !14
  %i.yk = icmp eq i8 %i.yj, 122
  br i1 %i.yk, label %bb.et, label %.thread980

bb.et:                                            ; preds = %bb.es
  %i.yl = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not357 = icmp eq ptr %i.yl, %.3278
  br i1 %.not357, label %bb.ez, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %.3278, ptr noundef nonnull %i.yl, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ev unwind label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ew unwind label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.ym = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.cp
  br i1 %i.yn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673: ; preds = %bb.ew
  %i.yo = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ez

bb.ex:                                            ; preds = %bb.eu
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

bb.ey:                                            ; preds = %bb.ev
  %i.yr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ys = load ptr, ptr %12, align 8, !tbaa !36   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.cp
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676: ; preds = %bb.ey
  %i.yu = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676, %bb.ex
  %.pn358 = phi { ptr, i32 } [ %i.yq, %bb.ex ], [ %i.yr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676 ], [ %i.yr, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.kr

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit675, %bb.et
  %i.yw = load i32, ptr %i.bx, align 8, !tbaa !47 ; 2 uses
  %i.yx = icmp slt i32 %i.yw, 0
  %spec.select.i679 = select i1 %i.yx, i8 45, i8 43 ; 2 uses
  %spec.select45.i680 = call i32 @llvm.abs.i32(i32 %i.yw, i1 true) ; 5 uses
  %i.yy = urem i32 %spec.select45.i680, 60        ; 2 uses
  %i.yz = udiv i32 %spec.select45.i680, 60
  %i.za = urem i32 %i.yz, 60                      ; 2 uses
  %.not1049 = icmp eq i32 %i.yy, 0
  br i1 %.not1049, label %bb.fa, label %.thread

.thread:                                          ; preds = %bb.ez
  %.lhs.trunc58.i689 = trunc nuw nsw i32 %i.yy to i8 ; 2 uses
  %i.zb = urem i8 %.lhs.trunc58.i689, 10
  %i.zc = zext nneg i8 %i.zb to i64
  %i.zd = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !14
  store i8 %i.ze, ptr %i.bu, align 4, !tbaa !14
  %i.zf = udiv i8 %.lhs.trunc58.i689, 10
  %i.zg = zext nneg i8 %i.zf to i64
  %i.zh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zg
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !14
  store i8 %i.zi, ptr %i.by, align 1, !tbaa !14
  store i8 58, ptr %.0.i979.idx.sroa.gep, align 2, !tbaa !14
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.zj = icmp samesign ult i32 %spec.select45.i680, 3600
  %i.zk = icmp eq i32 %i.za, 0                    ; 2 uses
  %or.cond3.i682 = and i1 %i.zj, %i.zk
  %spec.select47.i683 = select i1 %or.cond3.i682, i8 43, i8 %spec.select.i679
  br i1 %i.zk, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit690, label %bb.fb

bb.fb:                                            ; preds = %.thread, %bb.fa
  %.0.i979.idx.sroa.phi = phi ptr [ %.0.i979.idx.sroa.gep, %.thread ], [ %.0.i979.idx.sroa.gep1304, %bb.fa ] ; 2 uses
  %.0.i979.idx.sroa.phi1506 = phi ptr [ %.0.i979.idx.sroa.gep1507, %.thread ], [ %.0.i979.idx.sroa.gep1508, %bb.fa ]
  %.0.i979.idx = phi i64 [ 15, %.thread ], [ 18, %bb.fa ]
  %.lhs.trunc.i688 = trunc nuw nsw i32 %i.za to i8 ; 2 uses
  %i.zl = urem i8 %.lhs.trunc.i688, 10
  %i.zm = zext nneg i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zm
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !14
  %i.zp = getelementptr inbounds i8, ptr %.0.i979.idx.sroa.phi, i64 -1
  store i8 %i.zo, ptr %i.zp, align 1, !tbaa !14
  %i.zq = udiv i8 %.lhs.trunc.i688, 10
  %i.zr = zext nneg i8 %i.zq to i64
  %i.zs = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zr
  %i.zt = load i8, ptr %i.zs, align 1, !tbaa !14
  %i.zu = getelementptr inbounds i8, ptr %.0.i979.idx.sroa.phi, i64 -2
  store i8 %i.zt, ptr %i.zu, align 1, !tbaa !14
  store i8 58, ptr %.0.i979.idx.sroa.phi1506, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit690

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit690: ; preds = %bb.fa, %bb.fb
  %.141.i977 = phi i8 [ %spec.select.i679, %bb.fb ], [ %spec.select47.i683, %bb.fa ]
  %.1.i686.idx = phi i64 [ %.0.i979.idx, %bb.fb ], [ 21, %bb.fa ] ; 3 uses
  %.1.i686.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i686.idx ; 2 uses
  %i.zv = udiv i32 %spec.select45.i680, 3600
  %i.zw = urem i32 %i.zv, 10
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !14
  %i.aaa = getelementptr inbounds i8, ptr %.1.i686.ptr, i64 -1
  store i8 %i.zz, ptr %i.aaa, align 1, !tbaa !14
  %i.aab = udiv i32 %spec.select45.i680, 36000
  %.lhs.trunc56.i687 = trunc nuw i32 %i.aab to i16
  %i.aac = urem i16 %.lhs.trunc56.i687, 10
  %i.aad = zext nneg i16 %i.aac to i64
  %i.aae = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aad
  %i.aaf = load i8, ptr %i.aae, align 1, !tbaa !14
  %i.aag = getelementptr inbounds i8, ptr %.1.i686.ptr, i64 -2
  store i8 %i.aaf, ptr %i.aag, align 1, !tbaa !14
  %i.aah = getelementptr i8, ptr %i.a, i64 %.1.i686.idx
  %.ptr = getelementptr i8, ptr %i.aah, i64 -3    ; 3 uses
  store i8 %.141.i977, ptr %.ptr, align 1, !tbaa !14
  %gepdiff = sub nuw nsw i64 24, %.1.i686.idx     ; 4 uses
  %i.aai = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.aaj = sub i64 9223372036854775807, %i.aai
  %i.aak = icmp ult i64 %i.aaj, %gepdiff
  br i1 %i.aak, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i691

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i691: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_112FormatOffsetEPciPKc.exit690
  %i.aal = add i64 %i.aai, %gepdiff               ; 3 uses
  %i.aam = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.c
  br i1 %i.aan, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i697, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i692

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i697: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i691
  %i.aao = icmp ult i64 %i.aai, 16
  call void @llvm.assume(i1 %i.aao)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i692: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i691
  %i.aap = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i693

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i693: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i692, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i697
  %i.aaq = phi i64 [ %i.aap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i692 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i697 ]
  %.not.i.i694 = icmp ugt i64 %i.aal, %i.aaq
  br i1 %.not.i.i694, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i693
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aar, ptr nonnull align 1 %.ptr, i64 %gepdiff, i1 false)
  br label %bb.fe

bb.fd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i693
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aai, i64 noundef 0, ptr noundef nonnull %.ptr, i64 noundef %gepdiff)
          to label %bb.fe unwind label %.loopexit1064

bb.fe:                                            ; preds = %bb.fc, %bb.fd
  store i64 %i.aal, ptr %i.d, align 8, !tbaa !11
  %i.aas = load ptr, ptr %0, align 8, !tbaa !36
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aal
  store i8 0, ptr %i.aat, align 1, !tbaa !14
  %i.aau = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 4 ; 2 uses
  br label %.thread980, !llvm.loop !40

bb.ff:                                            ; preds = %bb.dn
  %i.aav = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 1 ; 12 uses
  %i.aaw = icmp eq ptr %i.aav, %i.bq
  br i1 %i.aaw, label %.thread980, label %bb.fg, !llvm.loop !40

bb.fg:                                            ; preds = %bb.ff
  %i.aax = load i8, ptr %i.aav, align 1, !tbaa !14 ; 4 uses
  switch i8 %i.aax, label %bb.iy [
    i8 84, label %bb.fh
    i8 122, label %bb.fu
    i8 42, label %bb.gh
    i8 52, label %bb.ia
  ]

bb.fh:                                            ; preds = %bb.fg
  %i.aay = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not354 = icmp eq ptr %i.aay, %.3278
  br i1 %.not354, label %bb.fq, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr %i.cl, ptr %14, align 8, !tbaa !7
  store i64 0, ptr %i.cm, align 8, !tbaa !11
  %i.aaz = ptrtoint ptr %i.aay to i64
  %i.aba = ptrtoint ptr %.3278 to i64
  %i.abb = sub i64 %i.aaz, %i.aba                 ; 8 uses
  %i.abc = icmp ugt i64 %i.abb, 15
  br i1 %i.abc, label %bb.fj, label %._crit_edge.i.i701

bb.fj:                                            ; preds = %bb.fi
  %i.abd = icmp slt i64 %i.abb, 0
  br i1 %i.abd, label %.noexc.i704, label %bb.fk

.noexc.i704:                                      ; preds = %bb.fj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc705 unwind label %.loopexit.split-lp1095

.noexc705:                                        ; preds = %.noexc.i704
  unreachable

bb.fk:                                            ; preds = %bb.fj
  %i.abe = add nuw i64 %i.abb, 1                  ; 2 uses
  %i.abf = icmp slt i64 %i.abe, 0
  br i1 %i.abf, label %.noexc4.i703, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i702, !prof !41

.noexc4.i703:                                     ; preds = %bb.fk
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc706 unwind label %.loopexit.split-lp1095

.noexc706:                                        ; preds = %.noexc4.i703
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i702: ; preds = %bb.fk
  %i.abg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abe) #21
          to label %.noexc707 unwind label %.loopexit1094 ; 2 uses

.noexc707:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i702
  store ptr %i.abg, ptr %14, align 8, !tbaa !36
  store i64 %i.abb, ptr %i.cl, align 8, !tbaa !14
  br label %._crit_edge.i.i701

._crit_edge.i.i701:                               ; preds = %.noexc707, %bb.fi
  %i.abh = phi ptr [ %i.abg, %.noexc707 ], [ %i.cl, %bb.fi ] ; 3 uses
  switch i64 %i.abb, label %bb.fm [
    i64 1, label %bb.fl
    i64 0, label %bb.fn
  ]

bb.fl:                                            ; preds = %._crit_edge.i.i701
  %i.abi = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.abi, ptr %i.abh, align 1, !tbaa !14
  br label %bb.fn

bb.fm:                                            ; preds = %._crit_edge.i.i701
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abh, ptr align 1 %.3278, i64 %i.abb, i1 false)
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %._crit_edge.i.i701
  store i64 %i.abb, ptr %i.cm, align 8, !tbaa !11
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abb
  store i8 0, ptr %i.abj, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.abk = load ptr, ptr %14, align 8, !tbaa !36  ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.cl
  br i1 %i.abl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709: ; preds = %bb.fo
  %i.abm = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711: ; preds = %bb.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i709
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.fq

.loopexit1094:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i702
  %lpad.loopexit1096 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

.loopexit.split-lp1095:                           ; preds = %.noexc.i704, %.noexc4.i703
  %lpad.loopexit.split-lp1097 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

bb.fp:                                            ; preds = %bb.fn
  %i.abo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abp = load ptr, ptr %14, align 8, !tbaa !36  ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.cl
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712: ; preds = %bb.fp
  %i.abr = load i64, ptr %i.cl, align 8, !tbaa !14
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714: ; preds = %bb.fp, %.loopexit1094, %.loopexit.split-lp1095, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712
  %.pn355 = phi { ptr, i32 } [ %i.abo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712 ], [ %lpad.loopexit.split-lp1097, %.loopexit.split-lp1095 ], [ %lpad.loopexit1096, %.loopexit1094 ], [ %i.abo, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.kr

bb.fq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit711, %bb.fh
  %i.abt = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.abu = icmp eq i64 %i.abt, 9223372036854775807
  br i1 %i.abu, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i715

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i715: ; preds = %bb.fq
  %i.abv = add nsw i64 %i.abt, 1                  ; 3 uses
  %i.abw = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.c
  br i1 %i.abx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i721, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i716

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i721: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i715
  %i.aby = icmp ult i64 %i.abt, 16
  call void @llvm.assume(i1 %i.aby)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i716: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i715
  %i.abz = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i717: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i716, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i721
  %i.aca = phi i64 [ %i.abz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i716 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i721 ]
  %.not.i.i718 = icmp ugt i64 %i.abv, %i.aca
  br i1 %.not.i.i718, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i717
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.abt
  store i8 84, ptr %i.acb, align 1, !tbaa !14
  br label %bb.ft

bb.fs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i717
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.abt, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %bb.ft unwind label %.loopexit1064

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  store i64 %i.abv, ptr %i.d, align 8, !tbaa !11
  %i.acc = load ptr, ptr %0, align 8, !tbaa !36
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 %i.abv
  store i8 0, ptr %i.acd, align 1, !tbaa !14
  %i.ace = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  br label %.thread980

bb.fu:                                            ; preds = %bb.fg
  %i.acf = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not351 = icmp eq ptr %i.acf, %.3278
  br i1 %.not351, label %bb.gd, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %i.cj, ptr %15, align 8, !tbaa !7
  store i64 0, ptr %i.ck, align 8, !tbaa !11
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %.3278 to i64
  %i.aci = sub i64 %i.acg, %i.ach                 ; 8 uses
  %i.acj = icmp ugt i64 %i.aci, 15
  br i1 %i.acj, label %bb.fw, label %._crit_edge.i.i725

bb.fw:                                            ; preds = %bb.fv
  %i.ack = icmp slt i64 %i.aci, 0
  br i1 %i.ack, label %.noexc.i728, label %bb.fx

.noexc.i728:                                      ; preds = %bb.fw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc729 unwind label %.loopexit.split-lp1090

.noexc729:                                        ; preds = %.noexc.i728
  unreachable

bb.fx:                                            ; preds = %bb.fw
  %i.acl = add nuw i64 %i.aci, 1                  ; 2 uses
  %i.acm = icmp slt i64 %i.acl, 0
  br i1 %i.acm, label %.noexc4.i727, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i726, !prof !41

.noexc4.i727:                                     ; preds = %bb.fx
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc730 unwind label %.loopexit.split-lp1090

.noexc730:                                        ; preds = %.noexc4.i727
  unreachable

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011613time_internal4cctz6detail6formatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt6chrono10time_pointINSC_3_V212system_clockENSC_8durationIlSt5ratioILl1ELl1EEEEEERKNSG_IlSH_ILl1ELl1000000000000000EEEERKNS2_9time_zoneE:bb.a
  %.1.i833 = phi i64 [ -922337203685477580, %bb.hh ], [ %i.aic, %bb.hg ]
  %i.aif = sub nsw i64 0, %.1.i833
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hf
  %.127.i812 = phi ptr [ %.026.i831, %bb.hi ], [ %.0.i979.idx.sroa.gep1304, %bb.hf ] ; 2 uses
  %.123.i813 = phi i32 [ %.022.i832, %bb.hi ], [ 15, %bb.hf ] ; 2 uses
  %.2.i814 = phi i64 [ %i.aif, %bb.hi ], [ %i.aic, %bb.hf ]
  %scevgep40.i815 = getelementptr i8, ptr %.127.i812, i64 -2
  %i.aig = add nsw i32 %.123.i813, -2
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hk, %bb.hj
  %indvars.iv42.i816 = phi i32 [ %indvars.iv.next.i823, %bb.hk ], [ %i.aig, %bb.hj ] ; 2 uses
  %indvars.iv.i817 = phi ptr [ %scevgep41.i822, %bb.hk ], [ %scevgep40.i815, %bb.hj ] ; 2 uses
  %.228.i818 = phi ptr [ %i.ail, %bb.hk ], [ %.127.i812, %bb.hj ] ; 2 uses
  %.224.i819 = phi i32 [ %i.aih, %bb.hk ], [ %.123.i813, %bb.hj ] ; 3 uses
  %.3.i820 = phi i64 [ %i.aim, %bb.hk ], [ %.2.i814, %bb.hj ] ; 3 uses
  %i.aih = add i32 %.224.i819, -1                 ; 2 uses
  %i.aii = urem i64 %.3.i820, 10
  %i.aij = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !14
  %i.ail = getelementptr inbounds i8, ptr %.228.i818, i64 -1 ; 3 uses
  store i8 %i.aik, ptr %i.ail, align 1, !tbaa !14
  %i.aim = udiv i64 %.3.i820, 10
  %.not.i821 = icmp ult i64 %.3.i820, 10
  %scevgep41.i822 = getelementptr i8, ptr %indvars.iv.i817, i64 -1
  %indvars.iv.next.i823 = add i32 %indvars.iv42.i816, -1
  br i1 %.not.i821, label %.preheader.i824, label %bb.hk, !llvm.loop !42

.preheader.i824:                                  ; preds = %bb.hk
  %i.ain = icmp sgt i32 %.224.i819, 1
  br i1 %i.ain, label %.lr.ph.preheader.i828, label %._crit_edge.i825

.lr.ph.preheader.i828:                            ; preds = %.preheader.i824
  %i.aio = getelementptr i8, ptr %.228.i818, i64 -2
  %i.aip = add nsw i32 %.224.i819, -2
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = sub nsw i64 0, %i.aiq
  %scevgep.i829 = getelementptr i8, ptr %i.aio, i64 %i.air
  %i.ais = zext nneg i32 %i.aih to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i829, i8 48, i64 %i.ais, i1 false), !tbaa !14
  %i.ait = zext i32 %indvars.iv42.i816 to i64
  %i.aiu = sub nsw i64 0, %i.ait
  %scevgep43.i830 = getelementptr i8, ptr %indvars.iv.i817, i64 %i.aiu
  br label %._crit_edge.i825

._crit_edge.i825:                                 ; preds = %.lr.ph.preheader.i828, %.preheader.i824
  %.329.lcssa.i826 = phi ptr [ %i.ail, %.preheader.i824 ], [ %scevgep43.i830, %.lr.ph.preheader.i828 ] ; 2 uses
  br i1 %i.aid, label %bb.hl, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834

bb.hl:                                            ; preds = %._crit_edge.i825
  %i.aiv = getelementptr inbounds i8, ptr %.329.lcssa.i826, i64 -1 ; 2 uses
  store i8 45, ptr %i.aiv, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834: ; preds = %._crit_edge.i825, %bb.hl
  %.4.i827 = phi ptr [ %i.aiv, %bb.hl ], [ %.329.lcssa.i826, %._crit_edge.i825 ] ; 8 uses
  %.4.i8271302 = ptrtoint ptr %.4.i827 to i64
  %scevgep1303 = getelementptr i8, ptr %scevgep1301, i64 %.4.i8271302 ; 2 uses
  %.not3471455 = icmp eq ptr %.0.i979.idx.sroa.gep1304, %.4.i827
  br i1 %.not3471455, label %.critedge4, label %.lr.ph1458

bb.hm:                                            ; preds = %.lr.ph1458
  %.not347 = icmp eq ptr %i.aiw, %.4.i827
  br i1 %.not347, label %.critedge4, label %.lr.ph1458, !llvm.loop !51

.lr.ph1458:                                       ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834, %bb.hm
  %.01456 = phi ptr [ %i.aiw, %bb.hm ], [ %.0.i979.idx.sroa.gep1304, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834 ] ; 2 uses
  %i.aiw = getelementptr inbounds i8, ptr %.01456, i64 -1 ; 3 uses
  %i.aix = load i8, ptr %i.aiw, align 1, !tbaa !14
  %i.aiy = icmp eq i8 %i.aix, 48
  br i1 %i.aiy, label %bb.hm, label %..critedge4_crit_edge1460, !llvm.loop !51

.loopexit1084:                                    ; preds = %bb.hy
  %lpad.loopexit1086 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

.loopexit.split-lp1085:                           ; preds = %bb.ht
  %lpad.loopexit.split-lp1087 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

..critedge4_crit_edge1460:                        ; preds = %.lr.ph1458
  br label %.critedge4, !llvm.loop !51

.critedge4:                                       ; preds = %bb.hm, %..critedge4_crit_edge1460, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834
  %.not347.lcssa = phi i1 [ true, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834 ], [ false, %..critedge4_crit_edge1460 ], [ true, %bb.hm ] ; 2 uses
  %.0.lcssa = phi ptr [ %scevgep1303, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit834 ], [ %.01456, %..critedge4_crit_edge1460 ], [ %scevgep1303, %bb.hm ] ; 2 uses
  %i.aiz = load i8, ptr %i.ael, align 1, !tbaa !14
  switch i8 %i.aiz, label %bb.hs [
    i8 83, label %bb.hn
    i8 102, label %bb.hq
  ]

bb.hn:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aja = getelementptr inbounds i8, ptr %.4.i827, i64 -1 ; 2 uses
  store i8 46, ptr %i.aja, align 1, !tbaa !14
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.0282 = phi ptr [ %i.aja, %bb.ho ], [ %.4.i827, %bb.hn ] ; 2 uses
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
  br label %bb.hs

bb.hq:                                            ; preds = %.critedge4
  br i1 %.not347.lcssa, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.ajn = getelementptr inbounds i8, ptr %.4.i827, i64 -1 ; 2 uses
  store i8 48, ptr %i.ajn, align 1, !tbaa !14
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hq, %bb.hr, %bb.hp, %.critedge4
  %.1283 = phi ptr [ %.4.i827, %.critedge4 ], [ %i.ajm, %bb.hp ], [ %i.ajn, %bb.hr ], [ %.4.i827, %bb.hq ] ; 5 uses
  %i.ajo = ptrtoint ptr %.0.lcssa to i64
  %i.ajp = ptrtoint ptr %.1283 to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp                 ; 5 uses
  %i.ajr = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.ajs = sub i64 9223372036854775807, %i.ajr
  %i.ajt = icmp ult i64 %i.ajs, %i.ajq
  br i1 %i.ajt, label %bb.ht, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i835

bb.ht:                                            ; preds = %bb.hs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc842 unwind label %.loopexit.split-lp1085

.noexc842:                                        ; preds = %bb.ht
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i835: ; preds = %bb.hs
  %i.aju = add i64 %i.ajq, %i.ajr                 ; 3 uses
  %i.ajv = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.ajw = icmp eq ptr %i.ajv, %i.c
  br i1 %i.ajw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i841, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i836

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i841: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i835
  %i.ajx = icmp ult i64 %i.ajr, 16
  call void @llvm.assume(i1 %i.ajx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i836: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i835
  %i.ajy = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i836, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i841
  %i.ajz = phi i64 [ %i.ajy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i836 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i841 ]
  %.not.i.i838 = icmp ugt i64 %i.aju, %i.ajz
  br i1 %.not.i.i838, label %bb.hy, label %bb.hu

bb.hu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837
  %.not8.i.i839 = icmp eq ptr %.0.lcssa, %.1283
  br i1 %.not8.i.i839, label %bb.hz, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajv, i64 %i.ajr ; 2 uses
  %cond.i.i840 = icmp eq i64 %i.ajq, 1
  br i1 %cond.i.i840, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.akb = load i8, ptr %.1283, align 1, !tbaa !14
  store i8 %i.akb, ptr %i.aka, align 1, !tbaa !14
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aka, ptr nonnull align 1 %.1283, i64 %i.ajq, i1 false)
  br label %bb.hz

bb.hy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i837
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ajr, i64 noundef 0, ptr noundef nonnull %.1283, i64 noundef %i.ajq)
          to label %bb.hz unwind label %.loopexit1084

bb.hz:                                            ; preds = %bb.hx, %bb.hw, %bb.hu, %bb.hy
  store i64 %i.aju, ptr %i.d, align 8, !tbaa !11
  %i.akc = load ptr, ptr %0, align 8, !tbaa !36
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.aju
  store i8 0, ptr %i.akd, align 1, !tbaa !14
  %i.ake = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread980

bb.ia:                                            ; preds = %bb.fg
  %i.akf = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.not334 = icmp eq ptr %i.akf, %i.bq
  br i1 %.not334, label %.thread993, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !14
  %i.akh = icmp eq i8 %i.akg, 89
  br i1 %i.akh, label %bb.ic, label %.thread993

bb.ic:                                            ; preds = %bb.ib
  %i.aki = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not341 = icmp eq ptr %i.aki, %.3278
  br i1 %.not341, label %bb.il, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr %i.cb, ptr %18, align 8, !tbaa !7
  store i64 0, ptr %i.cc, align 8, !tbaa !11
  %i.akj = ptrtoint ptr %i.aki to i64
  %i.akk = ptrtoint ptr %.3278 to i64
  %i.akl = sub i64 %i.akj, %i.akk                 ; 8 uses
  %i.akm = icmp ugt i64 %i.akl, 15
  br i1 %i.akm, label %bb.ie, label %._crit_edge.i.i845

bb.ie:                                            ; preds = %bb.id
  %i.akn = icmp slt i64 %i.akl, 0
  br i1 %i.akn, label %.noexc.i848, label %bb.if

.noexc.i848:                                      ; preds = %bb.ie
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc849 unwind label %.loopexit.split-lp1070

.noexc849:                                        ; preds = %.noexc.i848
  unreachable

bb.if:                                            ; preds = %bb.ie
  %i.ako = add nuw i64 %i.akl, 1                  ; 2 uses
  %i.akp = icmp slt i64 %i.ako, 0
  br i1 %i.akp, label %.noexc4.i847, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i846, !prof !41

.noexc4.i847:                                     ; preds = %bb.if
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc850 unwind label %.loopexit.split-lp1070

.noexc850:                                        ; preds = %.noexc4.i847
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i846: ; preds = %bb.if
  %i.akq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ako) #21
          to label %.noexc851 unwind label %.loopexit1069 ; 2 uses

.noexc851:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i846
  store ptr %i.akq, ptr %18, align 8, !tbaa !36
  store i64 %i.akl, ptr %i.cb, align 8, !tbaa !14
  br label %._crit_edge.i.i845

._crit_edge.i.i845:                               ; preds = %.noexc851, %bb.id
  %i.akr = phi ptr [ %i.akq, %.noexc851 ], [ %i.cb, %bb.id ] ; 3 uses
  switch i64 %i.akl, label %bb.ih [
    i64 1, label %bb.ig
    i64 0, label %bb.ii
  ]

bb.ig:                                            ; preds = %._crit_edge.i.i845
  %i.aks = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.aks, ptr %i.akr, align 1, !tbaa !14
  br label %bb.ii

bb.ih:                                            ; preds = %._crit_edge.i.i845
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akr, ptr align 1 %.3278, i64 %i.akl, i1 false)
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %._crit_edge.i.i845
  store i64 %i.akl, ptr %i.cc, align 8, !tbaa !11
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akr, i64 %i.akl
  store i8 0, ptr %i.akt, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ij unwind label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aku = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.akv = icmp eq ptr %i.aku, %i.cb
  br i1 %i.akv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853: ; preds = %bb.ij
  %i.akw = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.akx = add i64 %i.akw, 1
  call void @_ZdlPvm(ptr noundef %i.aku, i64 noundef %i.akx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855: ; preds = %bb.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.il

.loopexit1069:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i846
  %lpad.loopexit1071 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

.loopexit.split-lp1070:                           ; preds = %.noexc.i848, %.noexc4.i847
  %lpad.loopexit.split-lp1072 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

bb.ik:                                            ; preds = %bb.ii
  %i.aky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akz = load ptr, ptr %18, align 8, !tbaa !36  ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.cb
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856: ; preds = %bb.ik
  %i.alb = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858: ; preds = %bb.ik, %.loopexit1069, %.loopexit.split-lp1070, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856
  %.pn342 = phi { ptr, i32 } [ %i.aky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i856 ], [ %lpad.loopexit.split-lp1072, %.loopexit.split-lp1070 ], [ %lpad.loopexit1071, %.loopexit1069 ], [ %i.aky, %bb.ik ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.kr

bb.il:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit855, %bb.ic
  %i.ald = load i64, ptr %5, align 8, !tbaa !24   ; 4 uses
  %i.ale = icmp slt i64 %i.ald, 0                 ; 2 uses
  br i1 %i.ale, label %bb.im, label %bb.ip

bb.im:                                            ; preds = %bb.il
  %i.alf = icmp eq i64 %i.ald, -9223372036854775808
  br i1 %i.alf, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  store i8 56, ptr %i.bu, align 4, !tbaa !14
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.026.i878 = phi ptr [ %i.bu, %bb.in ], [ %.0.i979.idx.sroa.gep1304, %bb.im ]
  %.022.i879 = phi i32 [ 2, %bb.in ], [ 3, %bb.im ]
  %.1.i880 = phi i64 [ -922337203685477580, %bb.in ], [ %i.ald, %bb.im ]
  %i.alg = sub nsw i64 0, %.1.i880
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.il
  %.127.i859 = phi ptr [ %.026.i878, %bb.io ], [ %.0.i979.idx.sroa.gep1304, %bb.il ] ; 2 uses
  %.123.i860 = phi i32 [ %.022.i879, %bb.io ], [ 4, %bb.il ] ; 2 uses
  %.2.i861 = phi i64 [ %i.alg, %bb.io ], [ %i.ald, %bb.il ]
  %scevgep40.i862 = getelementptr i8, ptr %.127.i859, i64 -2
  %i.alh = add nsw i32 %.123.i860, -2
  br label %bb.iq

bb.iq:                                            ; preds = %bb.iq, %bb.ip
  %indvars.iv42.i863 = phi i32 [ %indvars.iv.next.i870, %bb.iq ], [ %i.alh, %bb.ip ] ; 2 uses
  %indvars.iv.i864 = phi ptr [ %scevgep41.i869, %bb.iq ], [ %scevgep40.i862, %bb.ip ] ; 2 uses
  %.228.i865 = phi ptr [ %i.alm, %bb.iq ], [ %.127.i859, %bb.ip ] ; 2 uses
  %.224.i866 = phi i32 [ %i.ali, %bb.iq ], [ %.123.i860, %bb.ip ] ; 3 uses
  %.3.i867 = phi i64 [ %i.aln, %bb.iq ], [ %.2.i861, %bb.ip ] ; 3 uses
  %i.ali = add i32 %.224.i866, -1                 ; 2 uses
  %i.alj = urem i64 %.3.i867, 10
  %i.alk = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.alj
  %i.all = load i8, ptr %i.alk, align 1, !tbaa !14
  %i.alm = getelementptr inbounds i8, ptr %.228.i865, i64 -1 ; 3 uses
  store i8 %i.all, ptr %i.alm, align 1, !tbaa !14
  %i.aln = udiv i64 %.3.i867, 10
  %.not.i868 = icmp ult i64 %.3.i867, 10
  %scevgep41.i869 = getelementptr i8, ptr %indvars.iv.i864, i64 -1
  %indvars.iv.next.i870 = add i32 %indvars.iv42.i863, -1
  br i1 %.not.i868, label %.preheader.i871, label %bb.iq, !llvm.loop !42

.preheader.i871:                                  ; preds = %bb.iq
  %i.alo = icmp sgt i32 %.224.i866, 1
  br i1 %i.alo, label %.lr.ph.preheader.i875, label %._crit_edge.i872

.lr.ph.preheader.i875:                            ; preds = %.preheader.i871
  %i.alp = getelementptr i8, ptr %.228.i865, i64 -2
  %i.alq = add nsw i32 %.224.i866, -2
  %i.alr = zext nneg i32 %i.alq to i64
  %i.als = sub nsw i64 0, %i.alr
  %scevgep.i876 = getelementptr i8, ptr %i.alp, i64 %i.als
  %i.alt = zext nneg i32 %i.ali to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i876, i8 48, i64 %i.alt, i1 false), !tbaa !14
  %i.alu = zext i32 %indvars.iv42.i863 to i64
  %i.alv = sub nsw i64 0, %i.alu
  %scevgep43.i877 = getelementptr i8, ptr %indvars.iv.i864, i64 %i.alv
  br label %._crit_edge.i872

._crit_edge.i872:                                 ; preds = %.lr.ph.preheader.i875, %.preheader.i871
  %.329.lcssa.i873 = phi ptr [ %i.alm, %.preheader.i871 ], [ %scevgep43.i877, %.lr.ph.preheader.i875 ] ; 2 uses
  br i1 %i.ale, label %bb.ir, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit881

bb.ir:                                            ; preds = %._crit_edge.i872
  %i.alw = getelementptr inbounds i8, ptr %.329.lcssa.i873, i64 -1 ; 2 uses
  store i8 45, ptr %i.alw, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit881

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit881: ; preds = %._crit_edge.i872, %bb.ir
  %.4.i874 = phi ptr [ %i.alw, %bb.ir ], [ %.329.lcssa.i873, %._crit_edge.i872 ] ; 5 uses
  %i.alx = ptrtoint ptr %.4.i874 to i64
  %i.aly = sub i64 %i.bv, %i.alx                  ; 5 uses
  %i.alz = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.ama = sub i64 9223372036854775807, %i.alz
  %i.amb = icmp ult i64 %i.ama, %i.aly
  br i1 %i.amb, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i882

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i882: ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit881
  %i.amc = add i64 %i.aly, %i.alz                 ; 3 uses
  %i.amd = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.ame = icmp eq ptr %i.amd, %i.c
  br i1 %i.ame, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i888, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i888: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i882
  %i.amf = icmp ult i64 %i.alz, 16
  call void @llvm.assume(i1 %i.amf)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i884

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i882
  %i.amg = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i884

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i884: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i888
  %i.amh = phi i64 [ %i.amg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i883 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i888 ]
  %.not.i.i885 = icmp ugt i64 %i.amc, %i.amh
  br i1 %.not.i.i885, label %bb.iw, label %bb.is

bb.is:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i884
  %.not8.i.i886 = icmp eq ptr %.0.i979.idx.sroa.gep1304, %.4.i874
  br i1 %.not8.i.i886, label %bb.ix, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.alz ; 2 uses
  %cond.i.i887 = icmp eq i64 %i.aly, 1
  br i1 %cond.i.i887, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.amj = load i8, ptr %.4.i874, align 1, !tbaa !14
  store i8 %i.amj, ptr %i.ami, align 1, !tbaa !14
  br label %bb.ix

bb.iv:                                            ; preds = %bb.it
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ami, ptr nonnull align 1 %.4.i874, i64 %i.aly, i1 false)
  br label %bb.ix

bb.iw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i884
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.alz, i64 noundef 0, ptr noundef nonnull %.4.i874, i64 noundef %i.aly)
          to label %bb.ix unwind label %.loopexit1064

bb.ix:                                            ; preds = %bb.iv, %bb.iu, %bb.is, %bb.iw
  store i64 %i.amc, ptr %i.d, align 8, !tbaa !11
  %i.amk = load ptr, ptr %0, align 8, !tbaa !36
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 %i.amc
  store i8 0, ptr %i.aml, align 1, !tbaa !14
  %i.amm = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 3 ; 2 uses
  br label %.thread980

bb.iy:                                            ; preds = %bb.fg
  %i.amn = sext i8 %i.aax to i32
  %isdigittmp = add nsw i32 %i.amn, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %21, label %.thread980

21:                                               ; preds = %bb.iy
  %22 = icmp eq i8 %i.aax, 45
  br i1 %22, label %bb.iz, label %.thread993

bb.iz:                                            ; preds = %21
  %23 = getelementptr inbounds nuw i8, ptr %.2270.lcssa, i64 2 ; 2 uses
  %.pre.i896 = load i8, ptr %23, align 1, !tbaa !14
  br label %.thread993

.thread993:                                       ; preds = %bb.ib, %bb.ia, %bb.iz, %21
  %24 = phi i8 [ %.pre.i896, %bb.iz ], [ %i.aax, %21 ], [ 52, %bb.ia ], [ 52, %bb.ib ] ; 3 uses
  %25 = phi i1 [ true, %bb.iz ], [ false, %21 ], [ false, %bb.ia ], [ false, %bb.ib ] ; 3 uses
  %.0.i892 = phi ptr [ %23, %bb.iz ], [ %i.aav, %21 ], [ %i.aav, %bb.ia ], [ %i.aav, %bb.ib ] ; 3 uses
  %26 = sext i8 %24 to i32
  %memchr95.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %26, i64 11) ; 2 uses
  %.not7396.i = icmp eq ptr %memchr95.i, null
  %i.amo = ptrtoint ptr %memchr95.i to i64
  %i.amp = trunc i64 %i.amo to i32
  %i.amq = sub i32 %i.amp, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.amr = icmp sgt i32 %i.amq, 9
  %or.cond1487 = or i1 %.not7396.i, %i.amr
  br i1 %or.cond1487, label %select.unfold.i, label %.lr.ph1465

.lr.ph1465:                                       ; preds = %.thread993, %bb.jb
  %27 = phi i32 [ %31, %bb.jb ], [ %i.amq, %.thread993 ] ; 2 uses
  %.05397.i1464 = phi i32 [ %i.amw, %bb.jb ], [ 0, %.thread993 ] ; 3 uses
  %.199.i1463 = phi ptr [ %i.amx, %bb.jb ], [ %.0.i892, %.thread993 ] ; 3 uses
  %28 = phi i8 [ %i.amy, %bb.jb ], [ %24, %.thread993 ] ; 2 uses
  %i.ams = icmp slt i32 %.05397.i1464, -214748364
  br i1 %i.ams, label %select.unfold.i, label %bb.ja

bb.ja:                                            ; preds = %.lr.ph1465
  %i.amt = mul nsw i32 %.05397.i1464, 10          ; 2 uses
  %i.amu = or disjoint i32 %27, -2147483648
  %i.amv = icmp slt i32 %i.amt, %i.amu
  br i1 %i.amv, label %select.unfold.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.amw = sub nsw i32 %i.amt, %27                ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.199.i1463, i64 1 ; 3 uses
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !14 ; 3 uses
  %i.amz = sext i8 %i.amy to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i32 %i.amz, i64 11) ; 2 uses
  %.not73.i = icmp eq ptr %memchr.i, null
  %29 = ptrtoint ptr %memchr.i to i64
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %30, ptrtoint (ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %32 = icmp sgt i32 %31, 9
  %or.cond1491 = or i1 %.not73.i, %32
  br i1 %or.cond1491, label %select.unfold.i, label %.lr.ph1465

select.unfold.i:                                  ; preds = %.lr.ph1465, %bb.ja, %bb.jb, %.thread993
  %33 = phi i8 [ %24, %.thread993 ], [ %i.amy, %bb.jb ], [ %28, %bb.ja ], [ %28, %.lr.ph1465 ]
  %.255.ph.i = phi i32 [ 0, %.thread993 ], [ %i.amw, %bb.jb ], [ -2147483640, %bb.ja ], [ %.05397.i1464, %.lr.ph1465 ] ; 4 uses
  %.252.ph.not.i = phi i1 [ true, %.thread993 ], [ true, %bb.jb ], [ false, %bb.ja ], [ false, %.lr.ph1465 ]
  %.3.ph.i = phi ptr [ %.0.i892, %.thread993 ], [ %i.amx, %bb.jb ], [ %.199.i1463, %bb.ja ], [ %.199.i1463, %.lr.ph1465 ] ; 4 uses
  %34 = icmp ne ptr %.3.ph.i, %.0.i892
  %or.cond.not94.i = and i1 %.252.ph.not.i, %34
  %35 = icmp ne i32 %.255.ph.i, -2147483648
  %or.cond3.i893 = select i1 %25, i1 true, i1 %35
  %or.cond76.i = select i1 %or.cond.not94.i, i1 %or.cond3.i893, i1 false
  %or.cond76.not.i = xor i1 %or.cond76.i, true
  %i.ana = icmp eq i32 %.255.ph.i, 0              ; 2 uses
  %or.cond5.not.i = select i1 %25, i1 %i.ana, i1 false
  %or.cond80.i = select i1 %or.cond76.not.i, i1 true, i1 %or.cond5.not.i
  br i1 %or.cond80.i, label %.thread980, label %bb.jc

bb.jc:                                            ; preds = %select.unfold.i
  %i.anb = sub nsw i32 0, %.255.ph.i
  %spec.select.i894 = select i1 %25, i32 %.255.ph.i, i32 %i.anb ; 6 uses
  %or.cond77.i = icmp ugt i32 %spec.select.i894, 1024
  br i1 %or.cond77.i, label %.thread980, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit: ; preds = %bb.jc
  switch i8 %33, label %.thread980 [
    i8 83, label %bb.jd
    i8 102, label %bb.jd
  ]

bb.jd:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit
  %i.anc = getelementptr inbounds i8, ptr %.2270.lcssa, i64 -1 ; 2 uses
  %.not336 = icmp eq ptr %i.anc, %.3278
  br i1 %.not336, label %bb.jm, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store ptr %i.cn, ptr %19, align 8, !tbaa !7
  store i64 0, ptr %i.co, align 8, !tbaa !11
  %i.and = ptrtoint ptr %i.anc to i64
  %i.ane = ptrtoint ptr %.3278 to i64
  %i.anf = sub i64 %i.and, %i.ane                 ; 8 uses
  %i.ang = icmp ugt i64 %i.anf, 15
  br i1 %i.ang, label %bb.jf, label %._crit_edge.i.i897

bb.jf:                                            ; preds = %bb.je
  %i.anh = icmp slt i64 %i.anf, 0
  br i1 %i.anh, label %.noexc.i900, label %bb.jg

.noexc.i900:                                      ; preds = %bb.jf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc901 unwind label %.loopexit.split-lp1100

.noexc901:                                        ; preds = %.noexc.i900
  unreachable

bb.jg:                                            ; preds = %bb.jf
  %i.ani = add nuw i64 %i.anf, 1                  ; 2 uses
  %i.anj = icmp slt i64 %i.ani, 0
  br i1 %i.anj, label %.noexc4.i899, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898, !prof !41

.noexc4.i899:                                     ; preds = %bb.jg
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc902 unwind label %.loopexit.split-lp1100

.noexc902:                                        ; preds = %.noexc4.i899
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898: ; preds = %bb.jg
  %i.ank = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ani) #21
          to label %.noexc903 unwind label %.loopexit1099 ; 2 uses

.noexc903:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898
  store ptr %i.ank, ptr %19, align 8, !tbaa !36
  store i64 %i.anf, ptr %i.cn, align 8, !tbaa !14
  br label %._crit_edge.i.i897

._crit_edge.i.i897:                               ; preds = %.noexc903, %bb.je
  %i.anl = phi ptr [ %i.ank, %.noexc903 ], [ %i.cn, %bb.je ] ; 3 uses
  switch i64 %i.anf, label %bb.ji [
    i64 1, label %bb.jh
    i64 0, label %bb.jj
  ]

bb.jh:                                            ; preds = %._crit_edge.i.i897
  %i.anm = load i8, ptr %.3278, align 1, !tbaa !14
  store i8 %i.anm, ptr %i.anl, align 1, !tbaa !14
  br label %bb.jj

bb.ji:                                            ; preds = %._crit_edge.i.i897
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anl, ptr align 1 %.3278, i64 %i.anf, i1 false)
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %bb.jh, %._crit_edge.i.i897
  store i64 %i.anf, ptr %i.co, align 8, !tbaa !11
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anl, i64 %i.anf
  store i8 0, ptr %i.ann, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.jk unwind label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.ano = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.cn
  br i1 %i.anp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905: ; preds = %bb.jk
  %i.anq = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.anr = add i64 %i.anq, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.anr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907: ; preds = %bb.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.jm

.loopexit1104:                                    ; preds = %bb.kf
  %lpad.loopexit1106 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

.loopexit.split-lp1105:                           ; preds = %bb.ka
  %lpad.loopexit.split-lp1107 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kr

.loopexit1099:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i898
  %lpad.loopexit1101 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910

.loopexit.split-lp1100:                           ; preds = %.noexc.i900, %.noexc4.i899
  %lpad.loopexit.split-lp1102 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910

bb.jl:                                            ; preds = %bb.jj
  %i.ans = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ant = load ptr, ptr %19, align 8, !tbaa !36  ; 2 uses
  %i.anu = icmp eq ptr %i.ant, %i.cn
  br i1 %i.anu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908: ; preds = %bb.jl
  %i.anv = load i64, ptr %i.cn, align 8, !tbaa !14
  %i.anw = add i64 %i.anv, 1
  call void @_ZdlPvm(ptr noundef %i.ant, i64 noundef %i.anw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910: ; preds = %bb.jl, %.loopexit1099, %.loopexit.split-lp1100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908
  %.pn337 = phi { ptr, i32 } [ %i.ans, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i908 ], [ %lpad.loopexit.split-lp1102, %.loopexit.split-lp1100 ], [ %lpad.loopexit1101, %.loopexit1099 ], [ %i.ans, %bb.jl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.kr

bb.jm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, %bb.jd
  br i1 %i.ana, label %bb.jy, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.anx = icmp samesign ugt i32 %spec.select.i894, 18
  br i1 %i.anx, label %.thread997, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.any = icmp samesign ugt i32 %spec.select.i894, 15
  br i1 %i.any, label %.thread997, label %bb.jp

.thread997:                                       ; preds = %bb.jn, %bb.jo
  %.09731000 = phi i32 [ %spec.select.i894, %bb.jo ], [ 18, %bb.jn ] ; 2 uses
  %i.anz = load i64, ptr %3, align 8, !tbaa !49
  %i.aoa = zext nneg i32 %.09731000 to i64
  %i.aob = getelementptr [8 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %i.aoa
  %i.aoc = getelementptr i8, ptr %i.aob, i64 -120
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !43
  %i.aoe = mul nsw i64 %i.aod, %i.anz
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.aof = load i64, ptr %3, align 8, !tbaa !49
  %36 = sub nuw nsw i32 15, %spec.select.i894
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_16kExp10E, i64 %37
  %i.aog = load i64, ptr %38, align 8, !tbaa !43
  %i.aoh = sdiv i64 %i.aof, %i.aog
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %.thread997
  %.0973999 = phi i32 [ %.09731000, %.thread997 ], [ %spec.select.i894, %bb.jp ] ; 3 uses
  %i.aoi = phi i64 [ %i.aoe, %.thread997 ], [ %i.aoh, %bb.jp ] ; 4 uses
  %i.aoj = icmp slt i64 %i.aoi, 0                 ; 2 uses
  br i1 %i.aoj, label %bb.jr, label %bb.ju

bb.jr:                                            ; preds = %bb.jq
  %i.aok = add nsw i32 %.0973999, -1
  %i.aol = icmp eq i64 %i.aoi, -9223372036854775808
  br i1 %i.aol, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.aom = add nsw i32 %.0973999, -2
  store i8 56, ptr %i.bu, align 4, !tbaa !14
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %.026.i930 = phi ptr [ %i.bu, %bb.js ], [ %.0.i979.idx.sroa.gep1304, %bb.jr ]
  %.022.i931 = phi i32 [ %i.aom, %bb.js ], [ %i.aok, %bb.jr ]
  %.1.i932 = phi i64 [ -922337203685477580, %bb.js ], [ %i.aoi, %bb.jr ]
  %i.aon = sub nsw i64 0, %.1.i932
  br label %bb.ju

bb.ju:                                            ; preds = %bb.jt, %bb.jq
  %.127.i911 = phi ptr [ %.026.i930, %bb.jt ], [ %.0.i979.idx.sroa.gep1304, %bb.jq ] ; 2 uses
  %.123.i912 = phi i32 [ %.022.i931, %bb.jt ], [ %.0973999, %bb.jq ] ; 2 uses
  %.2.i913 = phi i64 [ %i.aon, %bb.jt ], [ %i.aoi, %bb.jq ]
  %scevgep40.i914 = getelementptr i8, ptr %.127.i911, i64 -2
  %i.aoo = add nsw i32 %.123.i912, -2
  br label %bb.jv

bb.jv:                                            ; preds = %bb.jv, %bb.ju
  %indvars.iv42.i915 = phi i32 [ %indvars.iv.next.i922, %bb.jv ], [ %i.aoo, %bb.ju ] ; 2 uses
  %indvars.iv.i916 = phi ptr [ %scevgep41.i921, %bb.jv ], [ %scevgep40.i914, %bb.ju ] ; 2 uses
  %.228.i917 = phi ptr [ %i.aot, %bb.jv ], [ %.127.i911, %bb.ju ] ; 2 uses
  %.224.i918 = phi i32 [ %i.aop, %bb.jv ], [ %.123.i912, %bb.ju ] ; 3 uses
  %.3.i919 = phi i64 [ %i.aou, %bb.jv ], [ %.2.i913, %bb.ju ] ; 3 uses
  %i.aop = add i32 %.224.i918, -1                 ; 2 uses
  %i.aoq = urem i64 %.3.i919, 10
  %i.aor = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_17kDigitsE, i64 %i.aoq
  %i.aos = load i8, ptr %i.aor, align 1, !tbaa !14
  %i.aot = getelementptr inbounds i8, ptr %.228.i917, i64 -1 ; 3 uses
  store i8 %i.aos, ptr %i.aot, align 1, !tbaa !14
  %i.aou = udiv i64 %.3.i919, 10
  %.not.i920 = icmp ult i64 %.3.i919, 10
  %scevgep41.i921 = getelementptr i8, ptr %indvars.iv.i916, i64 -1
  %indvars.iv.next.i922 = add i32 %indvars.iv42.i915, -1
  br i1 %.not.i920, label %.preheader.i923, label %bb.jv, !llvm.loop !42

.preheader.i923:                                  ; preds = %bb.jv
  %i.aov = icmp sgt i32 %.224.i918, 1
  br i1 %i.aov, label %.lr.ph.preheader.i927, label %._crit_edge.i924

.lr.ph.preheader.i927:                            ; preds = %.preheader.i923
  %i.aow = getelementptr i8, ptr %.228.i917, i64 -2
  %i.aox = add nsw i32 %.224.i918, -2
  %i.aoy = zext nneg i32 %i.aox to i64
  %i.aoz = sub nsw i64 0, %i.aoy
  %scevgep.i928 = getelementptr i8, ptr %i.aow, i64 %i.aoz
  %i.apa = zext nneg i32 %i.aop to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i928, i8 48, i64 %i.apa, i1 false), !tbaa !14
  %i.apb = zext i32 %indvars.iv42.i915 to i64
  %i.apc = sub nsw i64 0, %i.apb
  %scevgep43.i929 = getelementptr i8, ptr %indvars.iv.i916, i64 %i.apc
  br label %._crit_edge.i924

._crit_edge.i924:                                 ; preds = %.lr.ph.preheader.i927, %.preheader.i923
  %.329.lcssa.i925 = phi ptr [ %i.aot, %.preheader.i923 ], [ %scevgep43.i929, %.lr.ph.preheader.i927 ] ; 2 uses
  br i1 %i.aoj, label %bb.jw, label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933

bb.jw:                                            ; preds = %._crit_edge.i924
  %i.apd = getelementptr inbounds i8, ptr %.329.lcssa.i925, i64 -1 ; 2 uses
  store i8 45, ptr %i.apd, align 1, !tbaa !14
  br label %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933

_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933: ; preds = %._crit_edge.i924, %bb.jw
  %.4.i926 = phi ptr [ %i.apd, %bb.jw ], [ %.329.lcssa.i925, %._crit_edge.i924 ] ; 2 uses
  %i.ape = load i8, ptr %.3.ph.i, align 1, !tbaa !14
  %i.apf = icmp eq i8 %i.ape, 83
  br i1 %i.apf, label %bb.jx, label %.thread1001

bb.jx:                                            ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933
  %i.apg = getelementptr inbounds i8, ptr %.4.i926, i64 -1 ; 2 uses
  store i8 46, ptr %i.apg, align 1, !tbaa !14
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jm
  %.2284.ph = phi ptr [ %.0.i979.idx.sroa.gep1304, %bb.jm ], [ %i.apg, %bb.jx ] ; 3 uses
  %.pr = load i8, ptr %.3.ph.i, align 1, !tbaa !14
  %i.aph = icmp eq i8 %.pr, 83
  br i1 %i.aph, label %bb.jz, label %.thread1001

bb.jz:                                            ; preds = %bb.jy
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
  br label %.thread1001

.thread1001:                                      ; preds = %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933, %bb.jz, %bb.jy
  %.3285 = phi ptr [ %i.apt, %bb.jz ], [ %.2284.ph, %bb.jy ], [ %.4.i926, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18Format64EPcil.exit933 ] ; 5 uses
  %i.apu = ptrtoint ptr %.3285 to i64
  %i.apv = sub i64 %i.bv, %i.apu                  ; 5 uses
  %i.apw = load i64, ptr %i.d, align 8, !tbaa !11 ; 5 uses
  %i.apx = sub i64 9223372036854775807, %i.apw
  %i.apy = icmp ult i64 %i.apx, %i.apv
  br i1 %i.apy, label %bb.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934

bb.ka:                                            ; preds = %.thread1001
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.noexc941 unwind label %.loopexit.split-lp1105

.noexc941:                                        ; preds = %bb.ka
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934: ; preds = %.thread1001
  %i.apz = add i64 %i.apv, %i.apw                 ; 3 uses
  %i.aqa = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.aqb = icmp eq ptr %i.aqa, %i.c
  br i1 %i.aqb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934
  %i.aqc = icmp ult i64 %i.apw, 16
  call void @llvm.assume(i1 %i.aqc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i934
  %i.aqd = load i64, ptr %i.c, align 8, !tbaa !14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940
  %i.aqe = phi i64 [ %i.aqd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i935 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i940 ]
  %.not.i.i937 = icmp ugt i64 %i.apz, %i.aqe
  br i1 %.not.i.i937, label %bb.kf, label %bb.kb

bb.kb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936
  %.not8.i.i938 = icmp eq ptr %.0.i979.idx.sroa.gep1304, %.3285
  br i1 %.not8.i.i938, label %bb.kg, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.apw ; 2 uses
  %cond.i.i939 = icmp eq i64 %i.apv, 1
  br i1 %cond.i.i939, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  %i.aqg = load i8, ptr %.3285, align 1, !tbaa !14
  store i8 %i.aqg, ptr %i.aqf, align 1, !tbaa !14
  br label %bb.kg

bb.ke:                                            ; preds = %bb.kc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqf, ptr align 1 %.3285, i64 %i.apv, i1 false)
  br label %bb.kg

bb.kf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i936
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.apw, i64 noundef 0, ptr noundef %.3285, i64 noundef %i.apv)
          to label %bb.kg unwind label %.loopexit1104

bb.kg:                                            ; preds = %bb.ke, %bb.kd, %bb.kb, %bb.kf
  store i64 %i.apz, ptr %i.d, align 8, !tbaa !11
  %i.aqh = load ptr, ptr %0, align 8, !tbaa !36
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 %i.apz
  store i8 0, ptr %i.aqi, align 1, !tbaa !14
  %i.aqj = getelementptr inbounds nuw i8, ptr %.3.ph.i, i64 1 ; 2 uses
  br label %.thread980

.thread980:                                       ; preds = %bb.gh, %bb.dn, %select.unfold.i, %bb.jc, %bb.gv, %bb.do, %bb.er, %bb.es, %bb.ed, %bb.dp, %bb.ee, %bb.kg, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit, %bb.ft, %bb.gu, %bb.ix, %bb.iy, %bb.hz, %bb.gg, %bb.ff, %bb.af, %bb.ag, %bb.fe, %bb.eq, %bb.ec, %bb.dm
  %.6281 = phi ptr [ %.3278, %bb.dn ], [ %i.tf, %bb.dm ], [ %i.vn, %bb.ec ], [ %i.yh, %bb.eq ], [ %i.aau, %bb.fe ], [ %.3278, %bb.af ], [ %.3278, %bb.ag ], [ %.3278, %bb.ff ], [ %i.ace, %bb.ft ], [ %i.aek, %bb.gg ], [ %i.ahf, %bb.gu ], [ %i.ake, %bb.hz ], [ %i.amm, %bb.ix ], [ %.3278, %bb.do ], [ %.3278, %bb.iy ], [ %.3278, %bb.gv ], [ %i.aqj, %bb.kg ], [ %.3278, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.3278, %bb.ee ], [ %.3278, %bb.dp ], [ %.3278, %bb.ed ], [ %.3278, %bb.es ], [ %.3278, %bb.er ], [ %.3278, %select.unfold.i ], [ %.3278, %bb.jc ], [ %.3278, %bb.gh ] ; 2 uses
  %.6274 = phi ptr [ %.2270.lcssa, %bb.dn ], [ %i.tf, %bb.dm ], [ %i.vn, %bb.ec ], [ %i.yh, %bb.eq ], [ %i.aau, %bb.fe ], [ %.2270.lcssa, %bb.af ], [ %.2270.lcssa, %bb.ag ], [ %i.aav, %bb.ff ], [ %i.ace, %bb.ft ], [ %i.aek, %bb.gg ], [ %i.ahf, %bb.gu ], [ %i.ake, %bb.hz ], [ %i.amm, %bb.ix ], [ %.2270.lcssa, %bb.do ], [ %i.aav, %bb.iy ], [ %i.aav, %bb.gv ], [ %i.aqj, %bb.kg ], [ %i.aav, %_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18ParseIntIiEEPKcS7_iT_S8_PS8_.exit ], [ %.2270.lcssa, %bb.ee ], [ %.2270.lcssa, %bb.dp ], [ %.2270.lcssa, %bb.ed ], [ %.2270.lcssa, %bb.es ], [ %.2270.lcssa, %bb.er ], [ %i.aav, %select.unfold.i ], [ %i.aav, %bb.jc ], [ %i.aav, %bb.gh ] ; 2 uses
  %.not = icmp eq ptr %.6274, %i.bq
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.thread980, %bb.i
  %.0275.lcssa = phi ptr [ %i.bo, %bb.i ], [ %.6281, %.thread980 ] ; 4 uses
  %.not319 = icmp eq ptr %i.bq, %.0275.lcssa
  br i1 %.not319, label %bb.kq, label %bb.kh

bb.kh:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.aqk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.aqk, ptr %20, align 8, !tbaa !7
  %i.aql = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 0, ptr %i.aql, align 8, !tbaa !11
  %i.aqm = ptrtoint ptr %i.bq to i64
  %i.aqn = ptrtoint ptr %.0275.lcssa to i64
  %i.aqo = sub i64 %i.aqm, %i.aqn                 ; 8 uses
  %i.aqp = icmp ugt i64 %i.aqo, 15
  br i1 %i.aqp, label %bb.ki, label %._crit_edge.i.i944

bb.ki:                                            ; preds = %bb.kh
  %i.aqq = icmp slt i64 %i.aqo, 0
  br i1 %i.aqq, label %.noexc.i947, label %bb.kj

.noexc.i947:                                      ; preds = %bb.ki
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc948 unwind label %bb.ko

.noexc948:                                        ; preds = %.noexc.i947
  unreachable

bb.kj:                                            ; preds = %bb.ki
  %i.aqr = add nuw i64 %i.aqo, 1                  ; 2 uses
  %i.aqs = icmp slt i64 %i.aqr, 0
  br i1 %i.aqs, label %.noexc4.i946, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i945, !prof !41

.noexc4.i946:                                     ; preds = %bb.kj
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc949 unwind label %bb.ko

.noexc949:                                        ; preds = %.noexc4.i946
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i945: ; preds = %bb.kj
  %i.aqt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqr) #21
          to label %.noexc950 unwind label %bb.ko ; 2 uses

.noexc950:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i945
  store ptr %i.aqt, ptr %20, align 8, !tbaa !36
  store i64 %i.aqo, ptr %i.aqk, align 8, !tbaa !14
  br label %._crit_edge.i.i944

._crit_edge.i.i944:                               ; preds = %.noexc950, %bb.kh
  %i.aqu = phi ptr [ %i.aqt, %.noexc950 ], [ %i.aqk, %bb.kh ] ; 3 uses
  switch i64 %i.aqo, label %bb.kl [
    i64 1, label %bb.kk
    i64 0, label %bb.km
  ]

bb.kk:                                            ; preds = %._crit_edge.i.i944
  %i.aqv = load i8, ptr %.0275.lcssa, align 1, !tbaa !14
  store i8 %i.aqv, ptr %i.aqu, align 1, !tbaa !14
  br label %bb.km

bb.kl:                                            ; preds = %._crit_edge.i.i944
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqu, ptr align 1 %.0275.lcssa, i64 %i.aqo, i1 false)
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk, %._crit_edge.i.i944
  store i64 %i.aqo, ptr %i.aql, align 8, !tbaa !11
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqo
  store i8 0, ptr %i.aqw, align 1, !tbaa !14
  invoke fastcc void @_ZN4absl12lts_2024011613time_internal4cctz6detail12_GLOBAL__N_18FormatTMEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RK2tm(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.kn unwind label %bb.kp

bb.kn:                                            ; preds = %bb.km
  %i.aqx = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.aqy = icmp eq ptr %i.aqx, %i.aqk
  br i1 %i.aqy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952: ; preds = %bb.kn
  %i.aqz = load i64, ptr %i.aqk, align 8, !tbaa !14
  %i.ara = add i64 %i.aqz, 1
  call void @_ZdlPvm(ptr noundef %i.aqx, i64 noundef %i.ara) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954: ; preds = %bb.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i952
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.kq

bb.ko:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i945, %.noexc4.i946, %.noexc.i947
  %i.arb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957

bb.kp:                                            ; preds = %bb.km
  %i.arc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ard = load ptr, ptr %20, align 8, !tbaa !36  ; 2 uses
  %i.are = icmp eq ptr %i.ard, %i.aqk
  br i1 %i.are, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i955

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i955: ; preds = %bb.kp
  %i.arf = load i64, ptr %i.aqk, align 8, !tbaa !14
  %i.arg = add i64 %i.arf, 1
  call void @_ZdlPvm(ptr noundef %i.ard, i64 noundef %i.arg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957: ; preds = %bb.kp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i955, %bb.ko
  %.pn = phi { ptr, i32 } [ %i.arb, %bb.ko ], [ %i.arc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i955 ], [ %i.arc, %bb.kp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.kr

bb.kq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit954, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void

bb.kr:                                            ; preds = %.loopexit1104, %.loopexit.split-lp1105, %.loopexit1084, %.loopexit.split-lp1085, %.loopexit1064, %.loopexit.split-lp1065, %.loopexit1054, %.loopexit.split-lp1055, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957
  %.pn370.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit957 ], [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit910 ], [ %lpad.loopexit.split-lp1057, %.loopexit.split-lp1055 ], [ %.pn367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398 ], [ %.pn364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623 ], [ %.pn361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654 ], [ %.pn358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678 ], [ %.pn355, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738 ], [ %.pn349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773 ], [ %lpad.loopexit.split-lp1067, %.loopexit.split-lp1065 ], [ %.pn345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit811 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit858 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp1087, %.loopexit.split-lp1085 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1056, %.loopexit1054 ], [ %lpad.loopexit1066, %.loopexit1064 ], [ %lpad.loopexit1086, %.loopexit1084 ], [ %lpad.loopexit1106, %.loopexit1104 ], [ %lpad.loopexit.split-lp1107, %.loopexit.split-lp1105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.m
  %.pn370.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn, %bb.kr ], [ %i.da, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.l
  %.pn370.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn370.pn.pn.pn.pn, %bb.ks ], [ %i.cz, %bb.l ]
  %i.arh = load ptr, ptr %0, align 8, !tbaa !36   ; 2 uses
  %i.ari = icmp eq ptr %i.arh, %i.c
  br i1 %i.ari, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit960, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i958

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i958: ; preds = %bb.kt
  %i.arj = load i64, ptr %i.c, align 8, !tbaa !14
  %i.ark = add i64 %i.arj, 1
  call void @_ZdlPvm(ptr noundef %i.arh, i64 noundef %i.ark) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit960

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit960: ; preds = %bb.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i958
  resume { ptr, i32 } %.pn370.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
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
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

end_hunk_2
