inline.NumInlined: 6986
inline.NumDeleted: 3568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6duckdb16PipelineExecutorC2ERNS_13ClientContextERNS_8PipelineE:bb.a
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.y) #34, !inline_history !989
  %.pr = load ptr, ptr %3, align 8, !tbaa !988    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ac = load ptr, ptr %.pr, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %.pr) #34, !inline_history !990
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZN6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.af = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !485 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 296
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OperatorPartitionInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %i.ah)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %4, align 8, !tbaa !921, !range !268, !noundef !132
  store i8 %i.al, ptr %i.n, align 8, !tbaa !921
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !925 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !894
  store <2 x ptr> %i.aq, ptr %i.o, align 8, !tbaa !894
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !991
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !991
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit.thread, label %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit

_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit:    ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.an) #36
  %.pr90 = load ptr, ptr %i.am, align 8, !tbaa !925 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr90, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit
  call void @_ZdlPv(ptr noundef nonnull %.pr90) #36
  br label %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit.thread

_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit.thread: ; preds = %bb.h, %bb.i, %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !894
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !894
  %i.av = icmp ne ptr %i.at, %i.au
  %i.aw = load i8, ptr %i.n, align 8, !range !268
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %i.ay, label %bb.j, label %bb.v

bb.j:                                             ; preds = %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit.thread
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LocalSinkStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.k unwind label %bb.t       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.bb = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.bc = invoke noundef i64 @_ZN6duckdb8Pipeline21RegisterNewBatchIndexEv(ptr noundef nonnull align 8 dereferenceable(224) %i.bb)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.bc)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bd = load i64, ptr %5, align 8, !tbaa !257   ; 2 uses
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !257
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.o:                                             ; preds = %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.p:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.q:                                             ; preds = %.invoke, %.noexc56, %.noexc54, %bb.ac, %._crit_edge.thread, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.r:                                             ; preds = %bb.d, %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.bh

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.bh

bb.t:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.u:                                             ; preds = %bb.l, %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.bh

bb.v:                                             ; preds = %_ZN6duckdb21OperatorPartitionInfoaSEOS0_.exit.thread, %bb.m, %_ZNSt5stackImSt5dequeImSaImEEEC2IS2_vEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.bn = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !485 ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.819") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.bs)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %6, align 8, !tbaa !992
  store ptr null, ptr %6, align 8, !tbaa !992
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !992 ; 3 uses
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !992
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.y
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bx) #34, !inline_history !993
  %.pr91 = load ptr, ptr %6, align 8, !tbaa !992  ; 3 uses
  %.not.i43 = icmp eq ptr %.pr91, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.cb = load ptr, ptr %.pr91, align 8, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr91) #34, !inline_history !994
  br label %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.y, %_ZN6duckdb10unique_ptrINS_16LocalSourceStateESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb16LocalSourceStateEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.ce = load ptr, ptr %0, align 8, !tbaa !884   ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !330 ; 2 uses
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !334 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = icmp ugt i64 %i.cl, 9223372036854775800
  br i1 %i.cm, label %.invoke, label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !995
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !996 ; 10 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.cl
  br i1 %i.ct, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !997 ; 4 uses
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = sub i64 %i.cw, %i.cr
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #37
          to label %.noexc45 unwind label %bb.q   ; 9 uses

.noexc45:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.cp, %i.cv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc45
  %9 = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %9, %i.cr
  %10 = add i64 %i.cz, -8                         ; 2 uses
  %i.da = lshr i64 %10, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader311, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.dc = add i64 %i.cw, -8
  %i.dd = sub i64 %i.dc, %i.cr
  %i.de = and i64 %i.dd, -8
  %i.df = add i64 %i.de, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cy, i64 %i.df
  %scevgep222 = getelementptr i8, ptr %i.cp, i64 %i.df
  %bound0 = icmp ult ptr %i.cy, %scevgep222
  %bound1 = icmp ult ptr %i.cp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader311, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cy, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.cp, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dj ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.cp, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.dk = getelementptr i8, ptr %next.gep223, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep223, align 8, !tbaa !1003, !alias.scope !1005, !noalias !998
  %wide.load224 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !1003, !alias.scope !1005, !noalias !998
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1003, !alias.scope !1008, !noalias !1005
  store <2 x i64> %wide.load224, ptr %i.dl, align 8, !tbaa !1003, !alias.scope !1008, !noalias !1005
  %i.dm = getelementptr i8, ptr %next.gep223, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep223, align 8, !tbaa !1003, !alias.scope !1005, !noalias !998
  store <2 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !1003, !alias.scope !1005, !noalias !998
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !1010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader311

.lr.ph.i.i.i.i.i.preheader311:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader311, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader311 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader311 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  %i.do = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1001, !noalias !998
  store i64 %i.do, ptr %.012.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !998, !noalias !1001
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1003, !alias.scope !1001, !noalias !998
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i44 = icmp eq ptr %i.dp, %i.cv
  br i1 %.not.i.i.i.i.i44, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1011

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc45
  %.not.i8.i = icmp eq ptr %i.cp, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #36
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, %bb.aa
  %.pre = phi ptr [ %.pre.pre, %bb.aa ], [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ] ; 3 uses
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !996
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store ptr %i.dr, ptr %i.cu, align 8, !tbaa !997
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cl
  store ptr %i.ds, ptr %i.cn, align 8, !tbaa !995
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre150 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !330 ; 2 uses
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre152 = load ptr, ptr %.phi.trans.insert151, align 8, !tbaa !334 ; 2 uses
  %.pre160 = ptrtoint ptr %.pre150 to i64
  %.pre161 = ptrtoint ptr %.pre152 to i64
  %.pre163 = sub i64 %.pre160, %.pre161           ; 2 uses
  %i.dt = icmp ugt i64 %.pre163, 9223372036854775800
  br i1 %i.dt, label %.invoke, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread

.invoke:                                          ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb16LocalSourceStateESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #35
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread: ; preds = %bb.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.du = phi ptr [ %.pre, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ce, %bb.z ] ; 2 uses
  %i.dv = phi ptr [ %.pre150, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ch, %bb.z ]
  %i.dw = phi ptr [ %.pre152, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ci, %bb.z ]
  %.pre-phi164193 = phi i64 [ %.pre163, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.cl, %bb.z ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1012
  %i.dz = load ptr, ptr %i.f, align 8, !tbaa !1013 ; 10 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64               ; 4 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp ult i64 %i.ec, %.pre-phi164193
  br i1 %i.ed, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1014 ; 4 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.eh = sub i64 %i.eg, %i.eb
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi164193) #37
          to label %.noexc53 unwind label %bb.q   ; 9 uses

.noexc53:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i46 = icmp eq ptr %i.dz, %i.ef
  br i1 %.not10.i.i.i.i.i46, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47.preheader

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %.noexc53
  %11 = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %11, %i.eb
  %12 = add i64 %i.ej, -8                         ; 2 uses
  %i.ek = lshr i64 %12, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check233 = icmp ult i64 %12, 152
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i47.preheader310, label %vector.memcheck226

vector.memcheck226:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %i.em = add i64 %i.eg, -8
  %i.en = sub i64 %i.em, %i.eb
  %i.eo = and i64 %i.en, -8
  %i.ep = add i64 %i.eo, 8                        ; 2 uses
  %scevgep227 = getelementptr i8, ptr %i.ei, i64 %i.ep
  %scevgep228 = getelementptr i8, ptr %i.dz, i64 %i.ep
  %bound0229 = icmp ult ptr %i.ei, %scevgep228
  %bound1230 = icmp ult ptr %i.dz, %scevgep227
  %found.conflict231 = and i1 %bound0229, %bound1230
  br i1 %found.conflict231, label %.lr.ph.i.i.i.i.i47.preheader310, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck226
  %n.vec236 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.eq = shl i64 %n.vec236, 3                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.ei, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.dz, i64 %i.eq
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph234
  %index238 = phi i64 [ 0, %vector.ph234 ], [ %index.next243, %vector.body237 ] ; 2 uses
  %i.et = shl i64 %index238, 3                    ; 2 uses
  %next.gep239 = getelementptr i8, ptr %i.ei, i64 %i.et ; 2 uses
  %next.gep240 = getelementptr i8, ptr %i.dz, i64 %i.et ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.eu = getelementptr i8, ptr %next.gep240, i64 16
  %wide.load241 = load <2 x i64>, ptr %next.gep240, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  %wide.load242 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  %i.ev = getelementptr i8, ptr %next.gep239, i64 16
  store <2 x i64> %wide.load241, ptr %next.gep239, align 8, !tbaa !1020, !alias.scope !1025, !noalias !1022
  store <2 x i64> %wide.load242, ptr %i.ev, align 8, !tbaa !1020, !alias.scope !1025, !noalias !1022
  %i.ew = getelementptr i8, ptr %next.gep240, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep240, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  store <2 x ptr> splat (ptr null), ptr %i.ew, align 8, !tbaa !1020, !alias.scope !1022, !noalias !1015
  %index.next243 = add nuw i64 %index238, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.ex, label %middle.block244, label %vector.body237, !llvm.loop !1027

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %i.el, %n.vec236
  br i1 %cmp.n245, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47.preheader310

.lr.ph.i.i.i.i.i47.preheader310:                  ; preds = %vector.memcheck226, %.lr.ph.i.i.i.i.i47.preheader, %middle.block244
  %.012.i.i.i.i.i48.ph = phi ptr [ %i.ei, %vector.memcheck226 ], [ %i.ei, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.er, %middle.block244 ]
  %.0911.i.i.i.i.i49.ph = phi ptr [ %i.dz, %vector.memcheck226 ], [ %i.dz, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.es, %middle.block244 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader310, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i48 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i48.ph, %.lr.ph.i.i.i.i.i47.preheader310 ] ; 2 uses
  %.0911.i.i.i.i.i49 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i47 ], [ %.0911.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i47.preheader310 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.ey = load i64, ptr %.0911.i.i.i.i.i49, align 8, !tbaa !1020, !alias.scope !1018, !noalias !1015
  store i64 %i.ey, ptr %.012.i.i.i.i.i48, align 8, !tbaa !1020, !alias.scope !1015, !noalias !1018
  store ptr null, ptr %.0911.i.i.i.i.i49, align 8, !tbaa !1020, !alias.scope !1018, !noalias !1015
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i49, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i48, i64 8
  %.not.i.i.i.i.i50 = icmp eq ptr %i.ez, %i.ef
  br i1 %.not.i.i.i.i.i50, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i47, !llvm.loop !1028

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i47, %middle.block244, %.noexc53
  %.not.i8.i51 = icmp eq ptr %i.dz, null
  br i1 %.not.i8.i51, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dz) #36
  %.pre153.pre = load ptr, ptr %0, align 8, !tbaa !884
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.pre153 = phi ptr [ %.pre153.pre, %bb.ab ], [ %i.du, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ] ; 3 uses
  store ptr %i.ei, ptr %i.f, align 8, !tbaa !1013
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store ptr %i.fb, ptr %i.ee, align 8, !tbaa !1014
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.pre-phi164193
  store ptr %i.fc, ptr %i.dx, align 8, !tbaa !1012
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %.pre153, i64 48
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !tbaa !330
  %.phi.trans.insert156 = getelementptr inbounds nuw i8, ptr %.pre153, i64 40
  %.pre157 = load ptr, ptr %.phi.trans.insert156, align 8, !tbaa !334
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.fd = phi ptr [ %i.dw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre157, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.fe = phi ptr [ %i.dv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre155, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.ff = phi ptr [ %i.du, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit.thread ], [ %.pre153, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 3 uses
  %.not138 = icmp eq ptr %i.fe, %i.fd
  br i1 %.not138, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.fj = icmp eq ptr %i.kk, %i.kj
  br i1 %i.fj, label %._crit_edge.thread, label %bb.ac

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %._crit_edge
  %.lcssa119197 = phi ptr [ %i.kg, %._crit_edge ], [ %i.ff, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13OperatorStateESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.lcssa119197, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.noexc54 unwind label %bb.q

bb.ac:                                            ; preds = %._crit_edge
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kh)
          to label %.noexc54 unwind label %bb.q

.noexc54:                                         ; preds = %bb.ac, %._crit_edge.thread
  %.in.i = phi ptr [ %i.fk, %._crit_edge.thread ], [ %i.fl, %bb.ac ]
  %i.fm = load ptr, ptr %.in.i, align 8, !tbaa !195
  %i.fn = load ptr, ptr %i.b, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.fo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.fn)
          to label %.noexc56 unwind label %bb.q

.noexc56:                                         ; preds = %.noexc54
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 noundef 2048)
          to label %_ZN6duckdb16PipelineExecutor15InitializeChunkERNS_9DataChunkE.exit unwind label %bb.q

bb.ad:                                            ; preds = %bb.v, %bb.x, %bb.w
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.bh

bb.ae:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.fr = phi ptr [ %i.fg, %.lr.ph ], [ %i.kh, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %i.fs = phi ptr [ %i.ff, %.lr.ph ], [ %i.kg, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ]
  %.028135 = phi i64 [ 0, %.lr.ph ], [ %i.kf, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.ft = icmp eq i64 %.028135, 0
  br i1 %i.ft, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_16PhysicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ae
  %i.fv = add i64 %.028135, -1
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i64 noundef %i.fv)
          to label %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit unwind label %bb.ba

_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit: ; preds = %bb.ag, %bb.af
  %.in = phi ptr [ %i.fu, %bb.af ], [ %i.fw, %bb.ag ]
  %i.fx = load ptr, ptr %.in, align 8, !tbaa !195
  %i.fy = load ptr, ptr %0, align 8, !tbaa !884, !nonnull !132, !align !133
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16PhysicalOperatorEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 noundef %.028135)
          to label %bb.ah unwind label %bb.bb

bb.ah:                                            ; preds = %_ZN6duckdb12optional_ptrINS_16PhysicalOperatorELb1EEdeEv.exit
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !680 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.gc = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #37
          to label %.noexc59 unwind label %bb.bc  ; 3 uses

.noexc59:                                         ; preds = %bb.ah
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.gc)
          to label %bb.aj unwind label %bb.ai, !noalias !1029

bb.ai:                                            ; preds = %.noexc59
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.gc) #36, !noalias !1029
  br label %.body

bb.aj:                                            ; preds = %.noexc59
  store ptr %i.gc, ptr %7, align 8, !tbaa !1003, !alias.scope !1029
  %i.ge = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ak unwind label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !888, !nonnull !132, !align !133
  %i.gg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb15BufferAllocator3GetERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %i.gf)
          to label %bb.al unwind label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 noundef 2048)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gi = load ptr, ptr %i.fh, align 8, !tbaa !997 ; 6 uses
  %i.gj = load ptr, ptr %i.cn, align 8, !tbaa !995
  %.not.i.i = icmp eq ptr %i.gi, %i.gj
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gk = load i64, ptr %7, align 8, !tbaa !1003
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !1003
  store ptr null, ptr %7, align 8, !tbaa !1003
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gl, ptr %i.fh, align 8, !tbaa !997
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb8weak_ptrINS0_8PipelineELb1EEESaIS3_EEaSERKS5_:bb.a
  tail call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #34, !inline_history !1593
  br label %_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48

_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i46, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i43
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !146
  br label %_ZN6duckdb8weak_ptrINS_8PipelineELb1EEaSERKS2_.exit.i.i.i.i.i49

_ZN6duckdb8weak_ptrINS_8PipelineELb1EEaSERKS2_.exit.i.i.i.i.i49: ; preds = %_ZNSt8weak_ptrIN6duckdb8PipelineEEaSERKS2_.exit.i.i.i.i.i.i48, %.lr.ph.i.i.i.i.i37
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 16
  %i.dh = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.di = icmp sgt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !1594

_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %_ZN6duckdb8weak_ptrINS_8PipelineELb1EEaSERKS2_.exit.i.i.i.i.i49
  %.pre54 = load ptr, ptr %1, align 8, !tbaa !937
  %.pre55 = load ptr, ptr %i.ar, align 8, !tbaa !279 ; 2 uses
  %.pre56 = load ptr, ptr %0, align 8, !tbaa !937
  %.pre57 = load ptr, ptr %i.a, align 8, !tbaa !279
  %.pre59 = ptrtoint ptr %.pre55 to i64
  %.pre60 = ptrtoint ptr %.pre56 to i64
  %.pre62 = sub i64 %.pre59, %.pre60
  br label %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit, %bb.aa
  %.pre-phi63 = phi i64 [ %.pre62, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.au, %bb.aa ]
  %i.dj = phi ptr [ %.pre57, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.aa ] ; 2 uses
  %i.dk = phi ptr [ %.pre55, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.as, %bb.aa ]
  %i.dl = phi ptr [ %.pre54, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.aa ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.pre-phi63 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.dm, %i.dj
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.dw, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.dk, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.dv, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.dm, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !146 ; 2 uses
  %i.dp = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !58
  store <2 x ptr> %i.dp, ptr %.011.i.i.i.i, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i50 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i.i.i.i.i50, label %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12 ; 3 uses
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i.i.i.i51 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i51, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dq, align 4, !tbaa !3
  br label %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.du = atomicrmw volatile add ptr %i.dq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.al, %bb.ak, %.lr.ph.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.dv, %i.dj
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1595

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN6duckdb8weak_ptrINS0_8PipelineELb1EEEEvPT_.exit.i.i34, %_ZSt10_ConstructIN6duckdb8weak_ptrINS0_8PipelineELb1EEEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN6duckdb8weak_ptrINS0_8PipelineELb1EEES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseIN6duckdb8weak_ptrINS0_8PipelineELb1EEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.dx = load ptr, ptr %0, align 8, !tbaa !937
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.f
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !279
  br label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN6duckdb8weak_ptrINS2_8PipelineELb1EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #26

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !247    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !287
  %i.i = load ptr, ptr %0, align 8, !tbaa !247    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #36
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !287
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !286
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !258

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8
  store i64 %i.aa, ptr %i.i, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !258

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8
  store i64 %i.ad, ptr %i.i, align 8
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !247   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !286 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !247
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !286 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ao, %i.ah
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ar = lshr i64 %3, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8
  %wide.load33 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load33, ptr %i.az, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader35

.lr.ph.i.i.i.i.preheader35:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader35, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bb, ptr %.011.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1597

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPSt17reference_wrapperIN6duckdb8PipelineEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb8PipelineEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !247
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !286
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb8PipelineEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !411  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !238 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #36
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !417

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !408
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !410
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb9ErrorDataEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit
  %.05 = phi ptr [ %i.ab, %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit ], [ %0, %bb.a ] ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i ], [ %i.c, %.lr.ph ] ; 6 uses
  %i.d = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !238 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 56
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.g) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #36
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i) #36
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !417

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, %.lr.ph
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !408
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !410
  %i.p = shl i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.p, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !408  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 120
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.q) #36
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.y) #36
  br label %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit

_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.ab, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1598

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6duckdb9ErrorDataEEvPT_.exit, %bb.a
  ret void
}

end_hunk_1
