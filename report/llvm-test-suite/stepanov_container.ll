inline.NumInlined: 950
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_:bb.a

_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i:         ; preds = %bb.ag, %._crit_edge.i
  %.sroa.11.1 = phi ptr [ %i.dd, %bb.ag ], [ %.sroa.11.0, %._crit_edge.i ] ; 2 uses
  %.sroa.4.1 = phi ptr [ %i.de, %bb.ag ], [ %.sroa.4.0, %._crit_edge.i ] ; 3 uses
  %i.dg = phi ptr [ %i.df, %bb.ag ], [ %.sroa.08.0, %._crit_edge.i ]
  %storemerge31.i = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 3 uses
  %i.dh = load double, ptr %storemerge31.i, align 8, !tbaa !16, !noalias !165 ; 2 uses
  %i.di = fcmp olt double %i.cp, %i.dh
  br i1 %i.di, label %.lr.ph33.i, label %._crit_edge34.i

.lr.ph33.i:                                       ; preds = %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i
  %.sroa.11.3 = phi ptr [ %.sroa.11.4, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ] ; 2 uses
  %.sroa.4.3 = phi ptr [ %.sroa.4.4, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ], [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ]
  %i.dj = phi ptr [ %i.do, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ], [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ] ; 2 uses
  %storemerge32.i = phi ptr [ %storemerge.i, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ], [ %storemerge31.i, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ] ; 2 uses
  %i.dk = icmp eq ptr %storemerge32.i, %i.dj
  br i1 %i.dk, label %bb.ah, label %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i

bb.ah:                                            ; preds = %.lr.ph33.i
  %i.dl = getelementptr inbounds i8, ptr %.sroa.11.3, i64 -8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !40, !noalias !165 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 512
  br label %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i

_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i:        ; preds = %bb.ah, %.lr.ph33.i
  %.sroa.11.4 = phi ptr [ %i.dl, %bb.ah ], [ %.sroa.11.3, %.lr.ph33.i ] ; 2 uses
  %.sroa.4.4 = phi ptr [ %i.dm, %bb.ah ], [ %.sroa.4.3, %.lr.ph33.i ] ; 2 uses
  %i.do = phi ptr [ %i.dm, %bb.ah ], [ %i.dj, %.lr.ph33.i ]
  %i.dp = phi ptr [ %i.dn, %bb.ah ], [ %storemerge32.i, %.lr.ph33.i ]
  %storemerge.i = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 3 uses
  %i.dq = load double, ptr %storemerge.i, align 8, !tbaa !16, !noalias !165 ; 2 uses
  %i.dr = fcmp olt double %i.cp, %i.dq
  br i1 %i.dr, label %.lr.ph33.i, label %._crit_edge34.i, !llvm.loop !169

._crit_edge34.i:                                  ; preds = %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i
  %.sroa.11.2 = phi ptr [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ], [ %.sroa.11.4, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ] ; 3 uses
  %.sroa.4.2 = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ], [ %.sroa.4.4, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ]
  %.sroa.08.1 = phi ptr [ %storemerge31.i, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ], [ %storemerge.i, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ] ; 3 uses
  %.lcssa25.i = phi double [ %i.dh, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i ], [ %i.dq, %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i ]
  %i.ds = icmp eq ptr %.sroa.19.2, %.sroa.11.2
  %i.dt = icmp ult ptr %.sroa.011.1, %.sroa.08.1
  %i.du = icmp ult ptr %.sroa.19.2, %.sroa.11.2
  %i.dv = select i1 %i.ds, i1 %i.dt, i1 %i.du
  br i1 %i.dv, label %bb.ai, label %_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_.exit

bb.ai:                                            ; preds = %._crit_edge34.i
  store double %.lcssa25.i, ptr %.sroa.011.1, align 8, !tbaa !16, !noalias !165
  store double %i.db, ptr %.sroa.08.1, align 8, !tbaa !16, !noalias !165
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 8 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %.sroa.12.2
  br i1 %i.dx, label %bb.aj, label %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit2.i.backedge

bb.aj:                                            ; preds = %bb.ai
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.19.2, i64 8 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40, !noalias !165 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 512
  br label %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit2.i.backedge

_ZNSt15_Deque_iteratorIdRdPdEppEv.exit2.i.backedge: ; preds = %bb.aj, %bb.ai
  %.sroa.19.1.be = phi ptr [ %i.dy, %bb.aj ], [ %.sroa.19.2, %bb.ai ]
  %.sroa.12.1.be = phi ptr [ %i.ea, %bb.aj ], [ %.sroa.12.2, %bb.ai ]
  %.sroa.712.1.be = phi ptr [ %i.dz, %bb.aj ], [ %.sroa.712.2, %bb.ai ]
  %.sroa.011.0.be = phi ptr [ %i.dz, %bb.aj ], [ %i.dw, %bb.ai ]
  br label %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit2.i, !llvm.loop !170

_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_.exit: ; preds = %._crit_edge34.i
  store ptr %.sroa.011.1, ptr %0, align 8, !tbaa !23, !alias.scope !165
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.712.2, ptr %i.eb, align 8, !tbaa !30, !alias.scope !165
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.2, ptr %i.ec, align 8, !tbaa !31, !alias.scope !165
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.19.2, ptr %i.ed, align 8, !tbaa !32, !alias.scope !165
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_(ptr noundef dead_on_return %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.std::_Deque_iterator", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Deque_iterator", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.m, null
  %.neg.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i
  %i.t = shl nsw i64 %i.s, 6
  %i.u = ptrtoint ptr %i.h to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.x, %i.ab
  %i.ad = add i64 %i.ac, %i.t                     ; 3 uses
  %i.ae = icmp slt i64 %i.ad, 2
  br i1 %i.ae, label %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = add nsw i64 %i.ad, -2
  %i.ag = lshr i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = ptrtoint ptr %i.c to i64
  %i.al = sub i64 %i.z, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  br label %bb.c

bb.c:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i, %bb.b
  %.07.i = phi i64 [ %i.ag, %bb.b ], [ %i.ba, %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i ] ; 5 uses
  %i.an = add nsw i64 %.07.i, %i.am               ; 5 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp samesign ult i64 %i.an, 64
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.07.i
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ar = lshr i64 %i.an, 6
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.as = ashr i64 %i.an, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = phi i64 [ %i.ar, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !40, !noalias !171
  %i.aw = shl nsw i64 %i.at, 6
  %i.ax = sub nsw i64 %i.an, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i

_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i:       ; preds = %bb.h, %bb.e
  %storemerge.i.i.i = phi ptr [ %i.ay, %bb.h ], [ %i.aq, %bb.e ]
  %i.az = load double, ptr %storemerge.i.i.i, align 8, !tbaa !16
  store ptr %i.a, ptr %4, align 8, !tbaa !23
  store ptr %i.c, ptr %i.ah, align 8, !tbaa !30
  store ptr %i.e, ptr %i.ai, align 8, !tbaa !31
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !32
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef nonnull dead_on_return %4, i64 noundef %.07.i, i64 noundef %i.ad, double noundef %i.az)
  %.not.i = icmp eq i64 %.07.i, 0
  %i.ba = add nsw i64 %.07.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit.loopexit, label %bb.c, !llvm.loop !174

_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit.loopexit: ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i
  %.pre = load ptr, ptr %1, align 8, !tbaa !23
  %.pre39 = load ptr, ptr %i.l, align 8, !tbaa !32
  br label %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit

_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit: ; preds = %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit.loopexit, %bb.a
  %i.bb = phi ptr [ %.pre39, %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit.loopexit ], [ %i.m, %bb.a ] ; 3 uses
  %i.bc = phi ptr [ %.pre, %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit.loopexit ], [ %i.h, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32 ; 2 uses
  %i.bf = icmp eq ptr %i.bb, %i.be
  %i.bg = load ptr, ptr %2, align 8
  %i.bh = icmp ult ptr %i.bc, %i.bg
  %i.bi = icmp ult ptr %i.bb, %i.be
  %i.bj = select i1 %i.bf, i1 %i.bh, i1 %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit, %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit
  ret void

bb.i:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit
  %.sroa.18.038 = phi ptr [ %i.bb, %.lr.ph ], [ %.sroa.18.1, %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit ] ; 2 uses
  %.sroa.13.037 = phi ptr [ %i.bk, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit ] ; 2 uses
  %.sroa.016.036 = phi ptr [ %i.bc, %.lr.ph ], [ %.sroa.016.1, %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit ] ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.bo = load double, ptr %.sroa.016.036, align 8, !tbaa !16 ; 2 uses
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !16 ; 2 uses
  %i.bq = fcmp olt double %i.bo, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %i.bs = load ptr, ptr %1, align 8, !tbaa !23
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !32  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store double %i.bp, ptr %.sroa.016.036, align 8, !tbaa !16
  store ptr %i.bn, ptr %3, align 8, !tbaa !23
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.bw = load <2 x ptr>, ptr %i.b, align 8, !tbaa !40
  store <2 x ptr> %i.bw, ptr %i.bl, align 8, !tbaa !40
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !32
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.br to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = icmp ne ptr %i.bu, null
  %.neg.i.i1 = sext i1 %i.cb to i64
  %i.cc = add nsw i64 %i.ca, %.neg.i.i1
  %i.cd = shl nsw i64 %i.cc, 6
  %i.ce = ptrtoint ptr %i.bs to i64
  %i.cf = ptrtoint ptr %i.bt to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = ptrtoint ptr %i.bv to i64
  %i.cj = ptrtoint ptr %i.bn to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %i.cm = add nsw i64 %i.ch, %i.cl
  %i.cn = add i64 %i.cm, %i.cd
  call void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef nonnull dead_on_return %3, i64 noundef 0, i64 noundef %i.cn, double noundef %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.016.036, i64 8 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %.sroa.13.037
  br i1 %i.cp, label %bb.l, label %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.18.038, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 512
  br label %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit

_ZNSt15_Deque_iteratorIdRdPdEppEv.exit:           ; preds = %bb.k, %bb.l
  %.sroa.016.1 = phi ptr [ %i.cr, %bb.l ], [ %i.co, %bb.k ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.cs, %bb.l ], [ %.sroa.13.037, %bb.k ]
  %.sroa.18.1 = phi ptr [ %i.cq, %bb.l ], [ %.sroa.18.038, %bb.k ] ; 3 uses
  %i.ct = load ptr, ptr %i.bd, align 8, !tbaa !32 ; 2 uses
  %i.cu = icmp eq ptr %.sroa.18.1, %i.ct
  %i.cv = load ptr, ptr %2, align 8
  %i.cw = icmp ult ptr %.sroa.016.1, %i.cv
  %i.cx = icmp ult ptr %.sroa.18.1, %i.ct
  %i.cy = select i1 %i.cu, i1 %i.cw, i1 %i.cx
  br i1 %i.cy, label %bb.i, label %._crit_edge, !llvm.loop !175
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_(ptr noundef dead_on_return %0, i64 noundef %1, i64 noundef %2, double noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !23, !noalias !176 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30, !noalias !176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32, !noalias !176 ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27
  %.055 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27 ] ; 3 uses
  %i.m = shl i64 %.055, 1                         ; 2 uses
  %i.n = add i64 %i.m, 2                          ; 3 uses
  %i.o = add nsw i64 %i.l, %i.n                   ; 5 uses
  %i.p = icmp sgt i64 %i.o, -1
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp samesign ult i64 %i.o, 64
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit

bb.e:                                             ; preds = %bb.c
  %i.s = lshr i64 %i.o, 6
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.t = ashr i64 %i.o, 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = phi i64 [ %i.s, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40, !noalias !176
  %i.x = shl nsw i64 %i.u, 6
  %i.y = sub nsw i64 %i.o, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit

_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit:         ; preds = %bb.d, %bb.g
  %storemerge.i.i = phi ptr [ %i.z, %bb.g ], [ %i.r, %bb.d ]
  %i.aa = or disjoint i64 %i.m, 1                 ; 3 uses
  %i.ab = add nsw i64 %i.l, %i.aa                 ; 5 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit
  %i.ad = icmp samesign ult i64 %i.ab, 64
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aa
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit23

bb.j:                                             ; preds = %bb.h
  %i.af = lshr i64 %i.ab, 6
  br label %bb.l

bb.k:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit
  %i.ag = ashr i64 %i.ab, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi i64 [ %i.af, %bb.j ], [ %i.ag, %bb.k ] ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40, !noalias !179
  %i.ak = shl nsw i64 %i.ah, 6
  %i.al = sub nsw i64 %i.ab, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit23

_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit23:       ; preds = %bb.i, %bb.l
  %storemerge.i.i22 = phi ptr [ %i.am, %bb.l ], [ %i.ae, %bb.i ]
  %i.an = load double, ptr %storemerge.i.i, align 8, !tbaa !16
  %i.ao = load double, ptr %storemerge.i.i22, align 8, !tbaa !16
  %i.ap = fcmp olt double %i.an, %i.ao
  %spec.select = select i1 %i.ap, i64 %i.aa, i64 %i.n ; 5 uses
  %i.aq = add nsw i64 %spec.select, %i.l          ; 5 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit23
  %i.as = icmp samesign ult i64 %i.aq, 64
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds [8 x i8], ptr %i.d, i64 %spec.select
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit25

bb.o:                                             ; preds = %bb.m
  %i.au = lshr i64 %i.aq, 6
  br label %bb.q

bb.p:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit23
  %i.av = ashr i64 %i.aq, 6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aw = phi i64 [ %i.au, %bb.o ], [ %i.av, %bb.p ] ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40, !noalias !182
  %i.az = shl nsw i64 %i.aw, 6
  %i.ba = sub nsw i64 %i.aq, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ba
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit25

_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit25:       ; preds = %bb.n, %bb.q
  %storemerge.i.i24 = phi ptr [ %i.bb, %bb.q ], [ %i.at, %bb.n ]
  %i.bc = load double, ptr %storemerge.i.i24, align 8, !tbaa !16
  %i.bd = add nsw i64 %i.l, %.055                 ; 5 uses
  %i.be = icmp sgt i64 %i.bd, -1
  br i1 %i.be, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit25
  %i.bf = icmp samesign ult i64 %i.bd, 64
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.055
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27

bb.t:                                             ; preds = %bb.r
  %i.bh = lshr i64 %i.bd, 6
  br label %bb.v

bb.u:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit25
  %i.bi = ashr i64 %i.bd, 6
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bj = phi i64 [ %i.bh, %bb.t ], [ %i.bi, %bb.u ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !40, !noalias !185
  %i.bm = shl nsw i64 %i.bj, 6
  %i.bn = sub nsw i64 %i.bd, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bn
  br label %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27

_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27:       ; preds = %bb.s, %bb.v
  %storemerge.i.i26 = phi ptr [ %i.bo, %bb.v ], [ %i.bg, %bb.s ]
  store double %i.bc, ptr %storemerge.i.i26, align 8, !tbaa !16
  %i.bp = icmp slt i64 %spec.select, %i.b
  br i1 %i.bp, label %bb.b, label %._crit_edge, !llvm.loop !188

._crit_edge:                                      ; preds = %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit27 ] ; 6 uses
  %i.bq = and i64 %2, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %._crit_edge
  %i.bs = add nsw i64 %2, -2
  %i.bt = ashr exact i64 %i.bs, 1
  %i.bu = icmp eq i64 %.0.lcssa, %i.bt
  br i1 %i.bu, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.bv = shl nsw i64 %.0.lcssa, 1
  %i.bw = or disjoint i64 %i.bv, 1                ; 3 uses
end_hunk_0
