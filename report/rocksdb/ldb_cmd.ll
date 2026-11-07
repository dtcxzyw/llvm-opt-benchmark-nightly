Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/ldb_cmd?download=true
inline.NumInlined: 11498
inline.NumDeleted: 3305
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN7rocksdb15DBDumperCommand13DoDumpCommandEv:bb.a
  %i.nn = load i64, ptr %i.ga, align 8, !tbaa !102
  %i.no = load i64, ptr %i.gc, align 8, !tbaa !102
  %i.np = add i64 %i.no, %i.nn                    ; 2 uses
  %i.nq = load ptr, ptr %16, align 8, !tbaa !100
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !101 ; 3 uses
  %i.ns = load ptr, ptr %i.it, align 8, !tbaa !100
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !101
  %.not206607 = icmp eq i8 %i.nr, %i.nt
  %.not207608 = icmp eq i8 %i.nr, 0
  %or.cond551609 = or i1 %.not207608, %.not206607
  br i1 %or.cond551609, label %.critedge5, label %.lr.ph

.critedge5:                                       ; preds = %bb.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %i.nu = load i64, ptr %i.fy, align 8, !tbaa !102 ; 3 uses
  %.not208 = icmp eq i64 %i.nu, 0
  br i1 %.not208, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread

bb.cn:                                            ; preds = %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit301
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  br label %.body

bb.co:                                            ; preds = %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.nw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  br label %.body

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %bb.cx
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cx ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ]
  %i.nx = phi i8 [ %i.oy, %bb.cx ], [ %i.nr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ]
  %i.ny = load i64, ptr %i.fw, align 8, !tbaa !102 ; 5 uses
  %i.nz = add i64 %i.ny, 1                        ; 9 uses
  %i.oa = load ptr, ptr %14, align 8, !tbaa !100  ; 3 uses
  %i.ob = icmp eq ptr %i.oa, %i.fv
  br i1 %i.ob, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %.lr.ph
  %i.oc = icmp samesign ult i64 %i.ny, 16
  call void @llvm.assume(i1 %i.oc)
  %i.od = icmp samesign ugt i64 %i.nz, 15
  br i1 %i.od, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.cx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread: ; preds = %.lr.ph
  %i.oe = load i64, ptr %i.fv, align 8, !tbaa !101 ; 2 uses
  %i.of = icmp ugt i64 %i.nz, %i.oe
  br i1 %i.of, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %bb.cx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.og = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ] ; 2 uses
  %i.oh = icmp slt i64 %i.nz, 0
  br i1 %i.oh, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.468) #35
          to label %.noexc460 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc460:                                        ; preds = %bb.cp
  unreachable

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.oi = icmp ugt i64 %i.nz, %i.og
  br i1 %i.oi, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.oj = shl nuw i64 %i.og, 1                    ; 2 uses
  %i.ok = icmp ult i64 %i.nz, %i.oj
  br i1 %i.ok, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.oj, i64 9223372036854775807)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %.0.i455 = phi i64 [ %spec.store.select.i.i, %bb.cs ], [ %i.nz, %bb.cr ], [ %i.nz, %bb.cq ] ; 2 uses
  %i.ol = add nuw i64 %.0.i455, 1                 ; 2 uses
  %i.om = icmp slt i64 %i.ol, 0
  br i1 %i.om, label %bb.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !97

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc461 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc461:                                        ; preds = %bb.cu
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.ct
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ol) #37
          to label %.noexc462 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc462:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %.pre.i458.pre = load ptr, ptr %14, align 8, !tbaa !100 ; 4 uses
  switch i64 %i.ny, label %bb.cw [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.cv
  ]

bb.cv:                                            ; preds = %.noexc462
  %i.oo = load i8, ptr %.pre.i458.pre, align 1, !tbaa !101
  store i8 %i.oo, ptr %i.on, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.cw:                                            ; preds = %.noexc462
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.on, ptr align 1 %.pre.i458.pre, i64 %i.ny, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc462, %bb.cv, %bb.cw
  %i.op = icmp eq ptr %.pre.i458.pre, %i.fv
  br i1 %i.op, label %.noexc321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.oq = load i64, ptr %i.fv, align 8, !tbaa !101
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %.pre.i458.pre, i64 noundef %i.or) #38
  br label %.noexc321

.noexc321:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.on, ptr %14, align 8, !tbaa !100
  store i64 %.0.i455, ptr %i.fv, align 8, !tbaa !101
  br label %bb.cx

bb.cx:                                            ; preds = %.noexc321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread
  %i.os = phi ptr [ %i.on, %.noexc321 ], [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.oa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ny
  store i8 %i.nx, ptr %i.ot, align 1, !tbaa !101
  store i64 %i.nz, ptr %i.fw, align 8, !tbaa !102
  %i.ou = load ptr, ptr %14, align 8, !tbaa !100
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.nz
  store i8 0, ptr %i.ov, align 1, !tbaa !101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ow = load ptr, ptr %16, align 8, !tbaa !100
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %indvars.iv.next
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !101 ; 3 uses
  %i.oz = load ptr, ptr %i.it, align 8, !tbaa !100
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !101
  %.not206 = icmp eq i8 %i.oy, %i.pa
  %.not207 = icmp eq i8 %i.oy, 0
  %or.cond551 = or i1 %.not207, %.not206
  br i1 %or.cond551, label %.critedge5, label %.lr.ph, !llvm.loop !1818

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread: ; preds = %.critedge5
  %i.pb = load i64, ptr %i.fw, align 8, !tbaa !102 ; 3 uses
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread_crit_edge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i323

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i323:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread
  %.sroa.speculated.i322 = call i64 @llvm.umin.i64(i64 %i.pb, i64 %i.nu)
  %i.pd = load ptr, ptr %14, align 8, !tbaa !100
  %i.pe = load ptr, ptr %15, align 8, !tbaa !100  ; 2 uses
  %bcmp = call i32 @bcmp(ptr %i.pe, ptr %i.pd, i64 %.sroa.speculated.i322)
  %.not.i324 = icmp eq i32 %bcmp, 0
  %.not209 = icmp eq i64 %i.nu, %i.pb
  %or.cond552 = and i1 %.not209, %.not.i324
  br i1 %or.cond552, label %bb.cy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread_crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread
  %.pre668 = load ptr, ptr %15, align 8, !tbaa !100
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread_crit_edge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i323
  %i.pf = phi ptr [ %.pre668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit._ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread_crit_edge ], [ %i.pe, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i323 ]
  %i.pg = load ptr, ptr @stdout, align 8, !tbaa !125
  %i.ph = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pg, ptr noundef nonnull @.str.220, ptr noundef %i.pf, i64 noundef %.0140, i64 noundef %.0136) #36 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i323, %.critedge5
  %i.pi = add i64 %.0140, 1
  %i.pj = add i64 %i.np, %.0136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread, %.thread826
  %.1141 = phi i64 [ %.0140, %.thread826 ], [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ], [ %i.pi, %bb.cy ] ; 3 uses
  %.1137 = phi i64 [ %.0136, %.thread826 ], [ %i.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ], [ %i.pj, %bb.cy ] ; 3 uses
  %i.pk = load i8, ptr %i.iu, align 8, !tbaa !593, !range !304, !noundef !305
  %i.pl = trunc nuw i8 %i.pk to i1
  br i1 %i.pl, label %bb.cz, label %.thread832

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.pm = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 112
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = invoke { ptr, i64 } %i.po(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  %i.pq = extractvalue { ptr, i64 } %i.pp, 1
  invoke void @_ZN7rocksdb13HistogramImpl3AddEm(ptr noundef nonnull align 8 dereferenceable(968) %20, i64 noundef %i.pq)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.fd, %bb.ef, %_ZN7rocksdb13HistogramImplC2Ev.exit, %bb.bu, %.noexc298, %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread, %bb.cy, %bb.da, %bb.cz, %._crit_edge.i, %bb.cp, %bb.cu, %bb.bk, %.noexc296
  %lpad.loopexit.split-lp944 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.db:                                            ; preds = %bb.da
  %.pre670 = load i8, ptr %i.iu, align 8, !tbaa !593, !range !304
  %i.pr = trunc nuw i8 %.pre670 to i1
  br i1 %i.pr, label %bb.ef, label %.thread832

.thread832:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.db
  %i.ps = load i8, ptr %i.im, align 1, !tbaa !594, !range !304, !noundef !305
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.ef, label %bb.dc

bb.dc:                                            ; preds = %.thread832
  %i.pu = load i8, ptr %i.gr, align 1, !tbaa !314, !range !304, !noundef !305
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %bb.dd, label %.thread834

.thread834:                                       ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  br label %bb.dp

bb.dd:                                            ; preds = %bb.dc
  %i.pw = load i8, ptr %i.iv, align 4, !tbaa !327, !range !304, !noundef !305
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.de, label %.thread833

.thread833:                                       ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  br label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.py = load ptr, ptr @stdout, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  invoke void @_ZN7rocksdb17TimeToHumanStringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, i32 noundef %.0135830)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pz = load ptr, ptr %27, align 8, !tbaa !100
  %i.qa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.py, ptr noundef nonnull @.str.239, ptr noundef %i.pz) #36 ; 0 uses
  %i.qb = load ptr, ptr %27, align 8, !tbaa !100  ; 2 uses
  %i.qc = icmp eq ptr %i.qb, %i.iw
  br i1 %i.qc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %bb.df
  %i.qd = load i64, ptr %i.iw, align 8, !tbaa !101
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qe) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i334

bb.dg:                                            ; preds = %bb.de
  %i.qf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i334: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  %.pre671 = load i8, ptr %i.gr, align 1, !tbaa !314, !range !304
  %i.qg = trunc nuw i8 %.pre671 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  br i1 %i.qg, label %bb.dh, label %bb.dp

bb.dh:                                            ; preds = %.thread833, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i334
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  %i.qh = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 96
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = invoke { ptr, i64 } %i.qj(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.di unwind label %bb.dy     ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %i.ql = extractvalue { ptr, i64 } %i.qk, 0
  store ptr %i.ql, ptr %30, align 8
  %i.qm = extractvalue { ptr, i64 } %i.qk, 1
  store i64 %i.qm, ptr %i.jf, align 8
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %30, i1 noundef zeroext false)
          to label %bb.dj unwind label %bb.dy

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  br i1 %.not197, label %._crit_edge.i.i, label %bb.dk

._crit_edge.i.i:                                  ; preds = %bb.dj
  store ptr %i.jh, ptr %31, align 8, !tbaa !96
  store i64 0, ptr %i.ji, align 8, !tbaa !102
  store i8 0, ptr %i.jh, align 8, !tbaa !101
  br label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.qn = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 136
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = invoke { ptr, i64 } %i.qp(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.dl unwind label %.critedge260.thread531 ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %i.qr = extractvalue { ptr, i64 } %i.qq, 0
  store ptr %i.qr, ptr %32, align 8
  %i.qs = extractvalue { ptr, i64 } %i.qq, 1
  store i64 %i.qs, ptr %i.jg, align 8
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(16) %32, i1 noundef zeroext false)
          to label %bb.dm unwind label %.critedge260.thread531

bb.dm:                                            ; preds = %._crit_edge.i.i, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.qt = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 112
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = invoke { ptr, i64 } %i.qv(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.dn unwind label %bb.dz     ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %i.qx = extractvalue { ptr, i64 } %i.qw, 0
  store ptr %i.qx, ptr %34, align 8
  %i.qy = extractvalue { ptr, i64 } %i.qw, 1
  store i64 %i.qy, ptr %i.jj, align 8
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %34, i1 noundef zeroext false)
          to label %bb.do unwind label %bb.dz

bb.do:                                            ; preds = %bb.dn
  %i.qz = load i8, ptr %i.jd, align 1, !tbaa !333, !range !304, !noundef !305
  %i.ra = trunc nuw i8 %i.qz to i1
  %i.rb = load i8, ptr %i.je, align 2, !tbaa !334, !range !304, !noundef !305
  %i.rc = trunc nuw i8 %i.rb to i1
  invoke void @_ZN7rocksdb10LDBCommand13PrintKeyValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_bbPKNS_10ComparatorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %33, i1 noundef zeroext %i.ra, i1 noundef zeroext %i.rc, ptr noundef nonnull %i.at)
          to label %.critedge245 unwind label %bb.ec

bb.dp:                                            ; preds = %.thread834, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i334
  %i.rd = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 96
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = invoke { ptr, i64 } %i.rf(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.dq unwind label %bb.ea     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.rh = extractvalue { ptr, i64 } %i.rg, 0
  store ptr %i.rh, ptr %35, align 8
  %i.ri = extractvalue { ptr, i64 } %i.rg, 1
  store i64 %i.ri, ptr %i.ix, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  br i1 %.not197, label %._crit_edge.i.i339, label %bb.dr

._crit_edge.i.i339:                               ; preds = %bb.dq
  store ptr %i.iz, ptr %37, align 8, !tbaa !96
  store i64 0, ptr %i.ja, align 8, !tbaa !102
  store i8 0, ptr %i.iz, align 8, !tbaa !101
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.rj = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 136
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = invoke { ptr, i64 } %i.rl(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.ds unwind label %.thread502 ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %i.rn = extractvalue { ptr, i64 } %i.rm, 0
  store ptr %i.rn, ptr %38, align 8
  %i.ro = extractvalue { ptr, i64 } %i.rm, 1
  store i64 %i.ro, ptr %i.iy, align 8
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull align 8 dereferenceable(16) %38, i1 noundef zeroext false)
          to label %._crit_edge672 unwind label %.thread502

._crit_edge672:                                   ; preds = %bb.ds
  %.pre673.a = load ptr, ptr %37, align 8, !tbaa !100
  %.pre674 = load i64, ptr %i.ja, align 8, !tbaa !102
  br label %bb.dt

bb.dt:                                            ; preds = %._crit_edge672, %._crit_edge.i.i339
  %i.rp = phi i64 [ %.pre674, %._crit_edge672 ], [ 0, %._crit_edge.i.i339 ]
  %i.rq = phi ptr [ %.pre673.a, %._crit_edge672 ], [ %i.iz, %._crit_edge.i.i339 ]
  store ptr %i.rq, ptr %36, align 8, !tbaa !355
  store i64 %i.rp, ptr %i.jb, align 8, !tbaa !356
  %i.rr = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 112
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = invoke { ptr, i64 } %i.rt(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.du unwind label %bb.eb     ; 2 uses

bb.du:                                            ; preds = %bb.dt
  %i.rv = extractvalue { ptr, i64 } %i.ru, 0
  store ptr %i.rv, ptr %39, align 8
  %i.rw = extractvalue { ptr, i64 } %i.ru, 1
  store i64 %i.rw, ptr %i.jc, align 8
  %i.rx = load ptr, ptr %i.bj, align 8, !tbaa !127
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 120
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.rz(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
          to label %bb.dv unwind label %bb.eb

bb.dv:                                            ; preds = %bb.du
  %i.sb = load i8, ptr %i.jd, align 1, !tbaa !333, !range !304, !noundef !305
  %i.sc = trunc nuw i8 %i.sb to i1
  %i.sd = load i8, ptr %i.je, align 2, !tbaa !334, !range !304, !noundef !305
  %i.se = trunc nuw i8 %i.sd to i1
  invoke void @_ZN7rocksdb10LDBCommand26PrintKeyValueOrWideColumnsB5cxx11ERKNS_5SliceES3_S3_RKSt6vectorINS_10WideColumnESaIS5_EEbbPKNS_10ComparatorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(24) %i.sa, i1 noundef zeroext %i.sc, i1 noundef zeroext %i.se, ptr noundef nonnull %i.at)
          to label %bb.dw unwind label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  %i.sf = load ptr, ptr %37, align 8, !tbaa !100  ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.iz
  br i1 %i.sg, label %.critedge254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %bb.dw
  %i.sh = load i64, ptr %i.iz, align 8, !tbaa !101
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #38
  br label %.critedge254

.critedge245:                                     ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.sj = load ptr, ptr %33, align 8, !tbaa !100  ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.jk
  br i1 %i.sk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %.critedge245
  %i.sl = load i64, ptr %i.jk, align 8, !tbaa !101
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351: ; preds = %.critedge245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  %i.sn = load ptr, ptr %31, align 8, !tbaa !100  ; 2 uses
  %i.so = icmp eq ptr %i.sn, %i.jh
  br i1 %i.so, label %.critedge253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351
  %i.sp = load i64, ptr %i.jh, align 8, !tbaa !101
  %i.sq = add i64 %i.sp, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sq) #38
  br label %.critedge253

.critedge253:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.sr = load ptr, ptr %29, align 8, !tbaa !100  ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.jl
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %.critedge253
  %i.st = load i64, ptr %i.jl, align 8, !tbaa !101
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

end_hunk_0
begin_hunk_1_@_ZN7rocksdb12_GLOBAL__N_111DumpWalFileENS_7OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbbbRKSt3mapIjPKNS_10ComparatorESt4lessIjESaISt4pairIKjSD_EEEPNS_23LDBCommandExecuteResultEPSt8optionalImEPSP_IjE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN7rocksdb21ColumnFamilyCollectorE, i64 16), ptr %47, align 8, !tbaa !127
  %i.abk = load ptr, ptr %i.jt, align 8, !tbaa !847 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.abk, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.abl, %.lr.ph.i.i.i.i.i ], [ %i.abk, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit ] ; 2 uses
  %i.abl = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !555 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #38, !inline_history !854
  %.not.i.i.i.i.i451 = icmp eq ptr %i.abl, null
  br i1 %.not.i.i.i.i.i451, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !55

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit
  %i.abm = load ptr, ptr %i.jq, align 8, !tbaa !835
  %i.abn = load i64, ptr %i.js, align 8, !tbaa !836
  %i.abo = shl i64 %i.abn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abm, i8 0, i64 %i.abo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i8 0, i64 16, i1 false)
  %i.abp = load ptr, ptr %i.jq, align 8, !tbaa !835 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.jr
  br i1 %i.abq, label %_ZN7rocksdb21ColumnFamilyCollectorD2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.abr = load i64, ptr %i.js, align 8, !tbaa !836
  %i.abs = shl i64 %i.abr, 3
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abs) #38, !inline_history !854
  br label %_ZN7rocksdb21ColumnFamilyCollectorD2Ev.exit

_ZN7rocksdb21ColumnFamilyCollectorD2Ev.exit:      ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.fv
  call void @_ZN7rocksdb10WriteBatch7HandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %47) #36, !inline_history !854
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  br label %bb.fw

bb.fw:                                            ; preds = %bb.ec, %_ZN7rocksdb21ColumnFamilyCollectorD2Ev.exit, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit332
  %.264 = phi i32 [ 5, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit332 ], [ 4, %bb.ec ], [ %.062, %_ZN7rocksdb21ColumnFamilyCollectorD2Ev.exit ]
  %i.abt = load ptr, ptr %i.id, align 8, !tbaa !839 ; 2 uses
  %.not5.i.i.i.i452 = icmp eq ptr %i.abt, null
  br i1 %.not5.i.i.i.i452, label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i453

.lr.ph.i.i.i.i453:                                ; preds = %bb.fw, %.lr.ph.i.i.i.i453
  %.06.i.i.i.i454 = phi ptr [ %i.abu, %.lr.ph.i.i.i.i453 ], [ %i.abt, %bb.fw ] ; 2 uses
  %i.abu = load ptr, ptr %.06.i.i.i.i454, align 8, !tbaa !555 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i454, i64 noundef 24) #38
  %.not.i.i.i.i455 = icmp eq ptr %i.abu, null
  br i1 %.not.i.i.i.i455, label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i453, !llvm.loop !56

_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i453, %bb.fw
  %i.abv = load ptr, ptr %42, align 8, !tbaa !832
  %i.abw = load i64, ptr %i.ib, align 8, !tbaa !833
  %i.abx = shl i64 %i.abw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abv, i8 0, i64 %i.abx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  %i.aby = load ptr, ptr %42, align 8, !tbaa !832 ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.ii
  br i1 %i.abz, label %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.aca = load i64, ptr %i.ib, align 8, !tbaa !833
  %i.acb = shl i64 %i.aca, 3
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acb) #38
  br label %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit

_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  switch i32 %.264, label %bb.hg [
    i32 0, label %bb.gd
    i32 5, label %.critedge
    i32 4, label %.backedge
  ]

bb.fy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, %bb.fo, %bb.fi, %bb.fh
  %.pn143 = phi { ptr, i32 } [ %i.zx, %bb.fi ], [ %.pn141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446 ], [ %.pn137.pn.pn, %bb.fo ], [ %i.zw, %bb.fh ]
  call void @_ZN7rocksdb12_GLOBAL__N_115InMemoryHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %50) #36
  br label %.body379

.body379:                                         ; preds = %bb.el, %bb.fy
  %.pn143.pn = phi { ptr, i32 } [ %.pn143, %bb.fy ], [ %i.xc, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #36
  br label %bb.fz

bb.fz:                                            ; preds = %.body379, %bb.fg
  %.pn143.pn.pn = phi { ptr, i32 } [ %.pn143.pn, %.body379 ], [ %i.zv, %bb.fg ]
  call void @_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %49) #36
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.ff
  %.pn143.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn, %bb.fz ], [ %i.zu, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fe
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn, %bb.ga ], [ %i.zt, %bb.fe ]
  call void @_ZN7rocksdb21ColumnFamilyCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %47) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #36
  br label %.loopexit.split-lp628

.loopexit.split-lp628:                            ; preds = %.loopexit.split-lp628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gb, %bb.dv, %bb.cz
  %.pn143.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rg, %bb.cz ], [ %.pn129.pn.pn.pn.pn, %bb.dv ], [ %.pn143.pn.pn.pn.pn, %bb.gb ], [ %lpad.loopexit.split-lp1019, %.loopexit.split-lp628.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %42) #36
  br label %bb.gc

bb.gc:                                            ; preds = %.loopexit.split-lp628, %bb.cy
  %.pn143.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn143.pn.pn.pn.pn.pn.pn.pn, %.loopexit.split-lp628 ], [ %i.rf, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #36
  br label %.loopexit.split-lp618

bb.gd:                                            ; preds = %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit, %_ZN7rocksdb6StatusD2Ev.exit223
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2774)
  call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  store ptr %i.lr, ptr %57, align 8, !tbaa !96, !alias.scope !2776
  store i64 0, ptr %i.ls, align 8, !tbaa !102, !alias.scope !2776
  store i8 0, ptr %i.lr, align 8, !tbaa !101, !alias.scope !2776
  %i.acc = load ptr, ptr %i.lt, align 8, !tbaa !452, !noalias !2776 ; 3 uses
  %.not.i.not.i.i456 = icmp eq ptr %i.acc, null
  %i.acd = load ptr, ptr %i.lu, align 8, !noalias !2776 ; 2 uses
  %i.ace = icmp ugt ptr %i.acc, %i.acd
  %.08.i.i.i457 = select i1 %i.ace, ptr %i.acc, ptr %i.acd ; 2 uses
  %.not5.i.i458 = icmp eq ptr %.08.i.i.i457, null
  %.not.i.i459 = select i1 %.not.i.not.i.i456, i1 true, i1 %.not5.i.i458
  br i1 %.not.i.i459, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.acf = load ptr, ptr %i.lv, align 8, !tbaa !453, !noalias !2776 ; 2 uses
  %i.acg = ptrtoint ptr %.08.i.i.i457 to i64
  %i.ach = ptrtoint ptr %i.acf to i64
  %i.aci = sub i64 %i.acg, %i.ach
  %i.acj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %57, i64 noundef 0, i64 noundef 0, ptr noundef %i.acf, i64 noundef %i.aci)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit465 unwind label %bb.gf ; 0 uses

bb.gf:                                            ; preds = %bb.gg, %bb.ge
  %i.ack = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acl = load ptr, ptr %57, align 8, !tbaa !100, !alias.scope !2776 ; 2 uses
  %i.acm = icmp eq ptr %i.acl, %i.lr
  br i1 %i.acm, label %.body463, label %.body463.sink.split

bb.gg:                                            ; preds = %bb.gd
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(32) %i.lw)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit465 unwind label %bb.gf

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit465: ; preds = %bb.gg, %bb.ge
  %i.acn = load ptr, ptr %57, align 8, !tbaa !100
  %i.aco = load i64, ptr %i.ls, align 8, !tbaa !102
  %i.acp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.acn, i64 noundef %i.aco)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467 unwind label %bb.gh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit465
  %i.acq = load ptr, ptr %57, align 8, !tbaa !100 ; 2 uses
  %i.acr = icmp eq ptr %i.acq, %i.lr
  br i1 %i.acr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467
  %i.acs = load i64, ptr %i.lr, align 8, !tbaa !101
  %i.act = add i64 %i.acs, 1
  call void @_ZdlPvm(ptr noundef %i.acq, i64 noundef %i.act) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit467, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #36
  br label %.backedge

.backedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470, %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit
  %i.acu = load i8, ptr %16, align 8, !tbaa !200
  %i.acv = icmp eq i8 %i.acu, 0
  br i1 %i.acv, label %bb.bk, label %.critedge, !llvm.loop !2735

bb.gh:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit465
  %i.acw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acx = load ptr, ptr %57, align 8, !tbaa !100 ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.lr
  br i1 %i.acy, label %.body463, label %.body463.sink.split

.body463.sink.split:                              ; preds = %bb.gh, %bb.gf
  %.sink1001 = phi ptr [ %i.acl, %bb.gf ], [ %i.acx, %bb.gh ]
  %.pn161.ph = phi { ptr, i32 } [ %i.ack, %bb.gf ], [ %i.acw, %bb.gh ]
  %i.acz = load i64, ptr %i.lr, align 8, !tbaa !101
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %.sink1001, i64 noundef %i.ada) #38
  br label %.body463

.body463:                                         ; preds = %.body463.sink.split, %bb.gh, %bb.gf
  %.pn161 = phi { ptr, i32 } [ %i.ack, %bb.gf ], [ %i.acw, %bb.gh ], [ %.pn161.ph, %.body463.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #36
  br label %.loopexit.split-lp618

.critedge:                                        ; preds = %bb.bl, %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit, %.backedge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit209, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #36
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %58)
          to label %bb.gi unwind label %bb.gj

bb.gi:                                            ; preds = %.critedge
  %i.adb = load ptr, ptr %i.hg, align 8, !tbaa !847 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, null
  br i1 %i.adc, label %._crit_edge758.thread, label %.lr.ph757

.lr.ph757:                                        ; preds = %bb.gi
  %i.add = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ade = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  br label %bb.gk

._crit_edge758.a:                                 ; preds = %_ZNSolsEj.exit481.a
  %60 = trunc nuw i8 %.2 to i1
  br i1 %60, label %._crit_edge758.thread, label %bb.gl

bb.gj:                                            ; preds = %.critedge
  %i.adf = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gk:                                            ; preds = %.lr.ph757, %_ZNSolsEj.exit481.a
  %.0755 = phi i8 [ 1, %.lr.ph757 ], [ %.2, %_ZNSolsEj.exit481.a ] ; 2 uses
  %.sroa.0559.0754 = phi ptr [ %i.adb, %.lr.ph757 ], [ %i.ads, %_ZNSolsEj.exit481.a ] ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.sroa.0559.0754, i64 8
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !134 ; 3 uses
  %61 = load ptr, ptr %i.add, align 8, !tbaa !121 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %61, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i474

.lr.ph.i.i.i474:                                  ; preds = %bb.gk, %.lr.ph.i.i.i474
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i474 ], [ %61, %bb.gk ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i474 ], [ %i.dr, %bb.gk ]
  %i.adi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !134
  %i.adk = icmp ult i32 %i.adj, %i.adh            ; 2 uses
  %.19.i.i.i = select i1 %i.adk, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.adk, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !138 ; 2 uses
  %.not.i.i.i475 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i475, label %_ZNKSt8_Rb_treeIjSt4pairIKjPKN7rocksdb10ComparatorEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i474, !llvm.loop !57

_ZNKSt8_Rb_treeIjSt4pairIKjPKN7rocksdb10ComparatorEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i474
  %i.adl = icmp eq ptr %.19.i.i.i, %i.dr
  br i1 %i.adl, label %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit

_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjPKN7rocksdb10ComparatorEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.adm = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !134
  %i.ado = icmp ult i32 %i.adh, %i.adn
  br i1 %i.ado, label %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, label %_ZNSolsEj.exit481.a

_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjPKN7rocksdb10ComparatorEESt10_Select1stIS6_ESt4lessIjESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.gk, %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit
  %62 = trunc nuw i8 %.0755 to i1
  %.str.565..str.270 = select i1 %62, ptr @.str.565, ptr @.str.270
  %i.adp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ade, ptr noundef nonnull %.str.565..str.270, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit477 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit477: ; preds = %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread
  %i.adq = zext i32 %i.adh to i64
  %i.adr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ade, i64 noundef %i.adq)
          to label %_ZNSolsEj.exit481.a unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEj.exit481.a:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit477, %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit
  %.2 = phi i8 [ %.0755, %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit477 ] ; 2 uses
  %i.ads = load ptr, ptr %.sroa.0559.0754, align 8, !tbaa !555 ; 2 uses
  %i.adt = icmp eq ptr %i.ads, null
  br i1 %i.adt, label %._crit_edge758.a, label %bb.gk

bb.gl:                                            ; preds = %._crit_edge758.a
  %i.adu = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.adv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.adu, ptr noundef nonnull @.str.171, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit483 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit483: ; preds = %bb.gl
  %i.adw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.566, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit485 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit485: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit483
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2777)
  call void @llvm.experimental.noalias.scope.decl(metadata !2778)
  %i.adx = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 7 uses
  store ptr %i.adx, ptr %59, align 8, !tbaa !96, !alias.scope !2779
  %i.ady = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  store i64 0, ptr %i.ady, align 8, !tbaa !102, !alias.scope !2779
  store i8 0, ptr %i.adx, align 8, !tbaa !101, !alias.scope !2779
  %i.adz = getelementptr inbounds nuw i8, ptr %58, i64 64
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !452, !noalias !2779 ; 3 uses
  %.not.i.not.i.i486 = icmp eq ptr %i.aea, null
  %i.aeb = getelementptr inbounds nuw i8, ptr %58, i64 48
  %i.aec = load ptr, ptr %i.aeb, align 8, !noalias !2779 ; 2 uses
  %i.aed = icmp ugt ptr %i.aea, %i.aec
  %.08.i.i.i487 = select i1 %i.aed, ptr %i.aea, ptr %i.aec ; 2 uses
  %.not5.i.i488 = icmp eq ptr %.08.i.i.i487, null
  %.not.i.i489 = select i1 %.not.i.not.i.i486, i1 true, i1 %.not5.i.i488
  br i1 %.not.i.i489, label %bb.go, label %bb.gm

bb.gm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit485
  %i.aee = getelementptr inbounds nuw i8, ptr %58, i64 56
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !453, !noalias !2779 ; 2 uses
  %i.aeg = ptrtoint ptr %.08.i.i.i487 to i64
  %i.aeh = ptrtoint ptr %i.aef to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  %i.aej = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %59, i64 noundef 0, i64 noundef 0, ptr noundef %i.aef, i64 noundef %i.aei)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit495 unwind label %bb.gn ; 0 uses

bb.gn:                                            ; preds = %bb.go, %bb.gm
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ael = load ptr, ptr %59, align 8, !tbaa !100, !alias.scope !2779 ; 2 uses
  %i.aem = icmp eq ptr %i.ael, %i.adx
  br i1 %i.aem, label %.body493, label %.body493.sink.split

bb.go:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit485
  %i.aen = getelementptr inbounds nuw i8, ptr %58, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(32) %i.aen)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit495 unwind label %bb.gn

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit495: ; preds = %bb.go, %bb.gm
  %i.aeo = load ptr, ptr %59, align 8, !tbaa !100
  %i.aep = load i64, ptr %i.ady, align 8, !tbaa !102
  %i.aeq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.aeo, i64 noundef %i.aep)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497 unwind label %bb.gs ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit495
  %i.aer = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aeq, ptr noundef nonnull @.str.567, i64 noundef 176)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit499 unwind label %bb.gs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit499: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497
  %i.aes = load ptr, ptr %i.aeq, align 8, !tbaa !127
  %i.aet = getelementptr i8, ptr %i.aes, i64 -24
  %i.aeu = load i64, ptr %i.aet, align 8
  %i.aev = getelementptr inbounds i8, ptr %i.aeq, i64 %i.aeu
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 240
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !483 ; 6 uses
  %.not.i.i.i548 = icmp eq ptr %i.aex, null
  br i1 %.not.i.i.i548, label %bb.gp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.gp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit499
  invoke void @_ZSt16__throw_bad_castv() #35
          to label %.noexc549 unwind label %bb.gs

.noexc549:                                        ; preds = %bb.gp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit499
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 56
  %i.aez = load i8, ptr %i.aey, align 8, !tbaa !488
  %.not.i1.i.i = icmp eq i8 %i.aez, 0
  br i1 %.not.i1.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 67
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !101
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.gr:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aex)
          to label %.noexc550 unwind label %bb.gs

.noexc550:                                        ; preds = %bb.gr
  %i.afc = load ptr, ptr %i.aex, align 8, !tbaa !127
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 48
  %i.afe = load ptr, ptr %i.afd, align 8
  %i.aff = invoke noundef signext i8 %i.afe(ptr noundef nonnull align 8 dereferenceable(570) %i.aex, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.gs, !inline_history !18

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc550, %bb.gq
  %.0.i.i.i = phi i8 [ %i.afb, %bb.gq ], [ %i.aff, %.noexc550 ]
  %i.afg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aeq, i8 noundef signext %.0.i.i.i)
          to label %.noexc552 unwind label %bb.gs

.noexc552:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.afh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afg)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.gs ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc552
  %i.afi = load ptr, ptr %59, align 8, !tbaa !100 ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.adx
  br i1 %i.afj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.afk = load i64, ptr %i.adx, align 8, !tbaa !101
  %i.afl = add i64 %i.afk, 1
  call void @_ZdlPvm(ptr noundef %i.afi, i64 noundef %i.afl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i501
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #36
  br label %._crit_edge758.thread

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt3mapIjPKN7rocksdb10ComparatorESt4lessIjESaISt4pairIKjS3_EEE4findERS7_.exit.thread, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit477, %bb.gl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit483
  %lpad.loopexit.split-lp1007 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.gs:                                            ; preds = %.noexc552, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc550, %bb.gr, %bb.gp, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit497, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit495
  %i.afm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afn = load ptr, ptr %59, align 8, !tbaa !100 ; 2 uses
  %i.afo = icmp eq ptr %i.afn, %i.adx
  br i1 %i.afo, label %.body493, label %.body493.sink.split

.body493.sink.split:                              ; preds = %bb.gs, %bb.gn
  %.sink1004 = phi ptr [ %i.ael, %bb.gn ], [ %i.afn, %bb.gs ]
  %.pn153.ph = phi { ptr, i32 } [ %i.aek, %bb.gn ], [ %i.afm, %bb.gs ]
  %i.afp = load i64, ptr %i.adx, align 8, !tbaa !101
  %i.afq = add i64 %i.afp, 1
  call void @_ZdlPvm(ptr noundef %.sink1004, i64 noundef %i.afq) #38
  br label %.body493

.body493:                                         ; preds = %.body493.sink.split, %bb.gs, %bb.gn
  %.pn153 = phi { ptr, i32 } [ %i.aek, %bb.gn ], [ %i.afm, %bb.gs ], [ %.pn153.ph, %.body493.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #36
  br label %.loopexit.split-lp

._crit_edge758.thread:                            ; preds = %bb.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit503, %._crit_edge758.a
  %i.afr = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.afr, ptr %58, align 8, !tbaa !127
  %i.afs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.aft = getelementptr i8, ptr %i.afr, i64 -24  ; 2 uses
  %i.afu = load i64, ptr %i.aft, align 8
  %i.afv = getelementptr inbounds i8, ptr %58, i64 %i.afu
  store ptr %i.afs, ptr %i.afv, align 8, !tbaa !127
  %i.afw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %i.afw, ptr %i.afx, align 8, !tbaa !127
  %i.afy = getelementptr inbounds nuw i8, ptr %58, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.afy, align 8, !tbaa !127
  %i.afz = getelementptr inbounds nuw i8, ptr %58, i64 96
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !100 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %58, i64 112 ; 2 uses
  %i.agc = icmp eq ptr %i.aga, %i.agb
  br i1 %i.agc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i507

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i507: ; preds = %._crit_edge758.thread
  %i.agd = load i64, ptr %i.agb, align 8, !tbaa !101
  %i.age = add i64 %i.agd, 1
  call void @_ZdlPvm(ptr noundef %i.aga, i64 noundef %i.age) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit509

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit509: ; preds = %._crit_edge758.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i507
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.afy, align 8, !tbaa !127
  %i.agf = getelementptr inbounds nuw i8, ptr %58, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.agf) #36
  %i.agg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.agg, ptr %58, align 8, !tbaa !127
  %i.agh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.agi = getelementptr i8, ptr %i.agg, i64 -24  ; 2 uses
  %i.agj = load i64, ptr %i.agi, align 8
  %i.agk = getelementptr inbounds i8, ptr %58, i64 %i.agj
  store ptr %i.agh, ptr %i.agk, align 8, !tbaa !127
  %i.agl = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 0, ptr %i.agl, align 8, !tbaa !383
  %i.agm = getelementptr inbounds nuw i8, ptr %58, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.agm) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  store ptr %i.afr, ptr %32, align 8, !tbaa !127
  %i.agn = load i64, ptr %i.aft, align 8
  %i.ago = getelementptr inbounds i8, ptr %32, i64 %i.agn
  store ptr %i.afs, ptr %i.ago, align 8, !tbaa !127
  %i.agp = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %i.afw, ptr %i.agp, align 8, !tbaa !127
  %i.agq = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.agq, align 8, !tbaa !127
  %i.agr = getelementptr inbounds nuw i8, ptr %32, i64 96
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !100 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %32, i64 112 ; 2 uses
  %i.agu = icmp eq ptr %i.ags, %i.agt
  br i1 %i.agu, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit509
  %i.agv = load i64, ptr %i.agt, align 8, !tbaa !101
  %i.agw = add i64 %i.agv, 1
  call void @_ZdlPvm(ptr noundef %i.ags, i64 noundef %i.agw) #38
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit512

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit512: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.agq, align 8, !tbaa !127
  %i.agx = getelementptr inbounds nuw i8, ptr %32, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.agx) #36
  store ptr %i.agg, ptr %32, align 8, !tbaa !127
  %i.agy = load i64, ptr %i.agi, align 8
  %i.agz = getelementptr inbounds i8, ptr %32, i64 %i.agy
  store ptr %i.agh, ptr %i.agz, align 8, !tbaa !127
  %i.aha = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 0, ptr %i.aha, align 8, !tbaa !383
  %i.ahb = getelementptr inbounds nuw i8, ptr %32, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ahb) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @_ZN7rocksdb10WriteBatchD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.ahc = load ptr, ptr %29, align 8, !tbaa !100 ; 2 uses
  %i.ahd = icmp eq ptr %i.ahc, %i.hj
  br i1 %i.ahd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit512
  %i.ahe = load i64, ptr %i.hj, align 8, !tbaa !101
  %i.ahf = add i64 %i.ahe, 1
  call void @_ZdlPvm(ptr noundef %i.ahc, i64 noundef %i.ahf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515: ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit512, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i513
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  %i.ahg = load ptr, ptr %i.hg, align 8, !tbaa !847 ; 2 uses
  %.not5.i.i.i.i516 = icmp eq ptr %i.ahg, null
  br i1 %.not5.i.i.i.i516, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i520, label %.lr.ph.i.i.i.i517

.lr.ph.i.i.i.i517:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515, %.lr.ph.i.i.i.i517
  %.06.i.i.i.i518 = phi ptr [ %i.ahh, %.lr.ph.i.i.i.i517 ], [ %i.ahg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ] ; 2 uses
  %i.ahh = load ptr, ptr %.06.i.i.i.i518, align 8, !tbaa !555 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i518, i64 noundef 16) #38
  %.not.i.i.i.i519 = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i.i.i519, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i520, label %.lr.ph.i.i.i.i517, !llvm.loop !55

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i520: ; preds = %.lr.ph.i.i.i.i517, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515
  %i.ahi = load ptr, ptr %28, align 8, !tbaa !835
  %i.ahj = load i64, ptr %i.hf, align 8, !tbaa !836
  %i.ahk = shl i64 %i.ahj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ahi, i8 0, i64 %i.ahk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  %i.ahl = load ptr, ptr %28, align 8, !tbaa !835 ; 2 uses
  %i.ahm = icmp eq ptr %i.ahl, %i.he
  br i1 %i.ahm, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit521, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i520
  %i.ahn = load i64, ptr %i.hf, align 8, !tbaa !836
  %i.aho = shl i64 %i.ahn, 3
  call void @_ZdlPvm(ptr noundef %i.ahl, i64 noundef %i.aho) #38
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit521

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit521: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i520, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  call void @_ZN7rocksdb3log6ReaderD1Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %25) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  %i.ahp = load ptr, ptr %23, align 8, !tbaa !100 ; 2 uses
  %i.ahq = icmp eq ptr %i.ahp, %i.dt
  br i1 %i.ahq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522: ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit521
  %i.ahr = load i64, ptr %i.dt, align 8, !tbaa !101
  %i.ahs = add i64 %i.ahr, 1
  call void @_ZdlPvm(ptr noundef %i.ahp, i64 noundef %i.ahs) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524: ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit521, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i522
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  %i.aht = load ptr, ptr %i.dm, align 8, !tbaa !839 ; 2 uses
  %.not5.i.i.i.i525 = icmp eq ptr %i.aht, null
  br i1 %.not5.i.i.i.i525, label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i529, label %.lr.ph.i.i.i.i526

.lr.ph.i.i.i.i526:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524, %.lr.ph.i.i.i.i526
  %.06.i.i.i.i527 = phi ptr [ %i.ahu, %.lr.ph.i.i.i.i526 ], [ %i.aht, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524 ] ; 2 uses
  %i.ahu = load ptr, ptr %.06.i.i.i.i527, align 8, !tbaa !555 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i527, i64 noundef 24) #38
  %.not.i.i.i.i528 = icmp eq ptr %i.ahu, null
  br i1 %.not.i.i.i.i528, label %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i529, label %.lr.ph.i.i.i.i526, !llvm.loop !56

_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i529: ; preds = %.lr.ph.i.i.i.i526, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit524
  %i.ahv = load ptr, ptr %22, align 8, !tbaa !832
  %i.ahw = load i64, ptr %i.dl, align 8, !tbaa !833
  %i.ahx = shl i64 %i.ahw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ahv, i8 0, i64 %i.ahx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  %i.ahy = load ptr, ptr %22, align 8, !tbaa !832 ; 2 uses
  %i.ahz = icmp eq ptr %i.ahy, %i.dk
  br i1 %i.ahz, label %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit530, label %bb.gu

bb.gu:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i529
  %i.aia = load i64, ptr %i.dl, align 8, !tbaa !833
  %i.aib = shl i64 %i.aia, 3
  call void @_ZdlPvm(ptr noundef %i.ahy, i64 noundef %i.aib) #38
  br label %_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit530

_ZNSt13unordered_mapIjmSt4hashIjESt8equal_toIjESaISt4pairIKjmEEED2Ev.exit530: ; preds = %_ZNSt10_HashtableIjSt4pairIKjmESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i529, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @_ZN7rocksdb3log6Reader8ReporterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.hb

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.body493
  %.pn155.pn = phi { ptr, i32 } [ %.pn153, %.body493 ], [ %lpad.loopexit.split-lp1007, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %58) #36
  br label %bb.gv

bb.gv:                                            ; preds = %.loopexit.split-lp, %bb.gj
  %.pn155.pn.pn = phi { ptr, i32 } [ %.pn155.pn, %.loopexit.split-lp ], [ %i.adf, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #36
  br label %.loopexit.split-lp618

.loopexit.split-lp618:                            ; preds = %.loopexit.split-lp618.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gv, %.body463, %bb.gc, %bb.cr, %bb.ck, %_ZN7rocksdb6StatusD2Ev.exit229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226
  %.pn161.pn = phi { ptr, i32 } [ %.pn161, %.body463 ], [ %.pn159, %_ZN7rocksdb6StatusD2Ev.exit229 ], [ %.pn155.pn.pn, %bb.gv ], [ %.pn143.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gc ], [ %.pn123.pn.pn, %bb.cr ], [ %i.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226 ], [ %i.qb, %bb.ck ], [ %lpad.loopexit.split-lp1014, %.loopexit.split-lp618.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %32) #36
  br label %bb.gw

bb.gw:                                            ; preds = %.loopexit.split-lp618, %bb.bj
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %.loopexit.split-lp618 ], [ %i.hq, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  call void @_ZN7rocksdb10WriteBatchD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %30) #36
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.bi
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %.pn161.pn.pn, %bb.gw ], [ %i.hp, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.aic = load ptr, ptr %29, align 8, !tbaa !100 ; 2 uses
  %i.aid = icmp eq ptr %i.aic, %i.hj
  br i1 %i.aid, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i531: ; preds = %bb.gx
  %i.aie = load i64, ptr %i.hj, align 8, !tbaa !101
  %i.aif = add i64 %i.aie, 1
  call void @_ZdlPvm(ptr noundef %i.aic, i64 noundef %i.aif) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit533
end_hunk_1
