inline.NumInlined: 293
inline.NumDeleted: 118
begin_hunk_0_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br i1 %i.n, label %.outer.preheader, label %bb.f, !prof !20

.outer.preheader:                                 ; preds = %bb.d, %bb.c, %bb.e
  br label %.outer.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2145, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9)
  unreachable

.outer.loopexit:                                  ; preds = %.outer.preheader, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0151.ph = phi i32 [ %i.gq, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  %.0145.ph = phi ptr [ %.0145, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0135.ph.ph = phi ptr [ %.0139, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0129.ph.ph = phi ptr [ %.0137, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0134.ph = phi i64 [ %.0134, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  br label %bb.g

.outer:                                           ; preds = %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, %bb.an
  %.0135.ph = phi ptr [ %.2147, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1136313, %bb.an ]
  %.0129.ph = phi ptr [ %.2137, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1130314, %bb.an ]
  %.0134.ph577 = phi i64 [ %.2136, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ 32, %bb.an ]
  br label %bb.g

bb.g:                                             ; preds = %.outer, %.outer.loopexit
  %.0145 = phi ptr [ %.0145.ph, %.outer.loopexit ], [ %.0135.ph, %.outer ] ; 5 uses
  %.0139 = phi ptr [ %.0135.ph.ph, %.outer.loopexit ], [ %.0129.ph, %.outer ] ; 4 uses
  %.0137 = phi ptr [ %.0129.ph.ph, %.outer.loopexit ], [ %i.bb, %.outer ] ; 11 uses
  %.0134 = phi i64 [ %.0134.ph, %.outer.loopexit ], [ %.0134.ph577, %.outer ] ; 3 uses
  %i.o = load atomic i64, ptr %0 monotonic, align 8 ; 23 uses
  %i.p = and i64 %i.o, 8
  %.not175 = icmp eq i64 %i.p, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  unreachable

bb.o:                                             ; preds = %.preheader, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit
  %.0160 = phi i1 [ %.1130, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ], [ true, %.preheader ]
  %i.aj = load atomic i64, ptr %0 monotonic, align 8 ; 6 uses
  %i.ak = icmp sgt i64 %i.aj, 255
  %i.al = add nsw i64 %i.aj, -256
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %bb.p, %bb.o
  %.1130 = phi i1 [ %i.ap, %bb.p ], [ false, %bb.o ]
  %.0128 = phi ptr [ %i.ao, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.aq = and i64 %i.aj, -504
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 -34, i64 -41
  %i.at = and i64 %i.aj, 159
  %i.au = and i64 %i.at, %i.as
  %.not199 = icmp eq ptr %.0128, null
  %i.av = ptrtoint ptr %.0128 to i64
  %i.aw = or i64 %i.av, 4
  %i.ax = and i64 %i.am, -256
  %.pn200 = select i1 %.not199, i64 %i.ax, i64 %i.aw
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %.thread.sink.split

bb.w:                                             ; preds = %bb.q, %bb.r
  %i.bn = icmp eq ptr %.0137, null                ; 2 uses
  br i1 %i.bn, label %.critedge211.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  unreachable

.critedge211:                                     ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %.0137, i64 16 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !100, !range !53, !noundef !54
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.critedge211.thread, label %bb.z

bb.z:                                             ; preds = %.critedge211
  store i8 1, ptr %i.br, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %.0137, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !71
  %.not178 = icmp eq ptr %i.bv, null
  br i1 %.not178, label %bb.ab, label %bb.aa, !prof !20
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.not179 = icmp eq ptr %.0137, %i.bb
  br i1 %.not179, label %.critedge211.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load ptr, ptr %.0137, align 8, !tbaa !57 ; 2 uses
  %i.bx = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_(ptr noundef nonnull %.0137, ptr noundef %i.bw)
  br i1 %i.bx, label %bb.ad, label %.critedge211.thread

bb.ad:                                            ; preds = %bb.ac
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %.preheader257.preheader

bb.af:                                            ; preds = %bb.ae, %.critedge211.thread
  %.not180 = icmp eq ptr %.0145, null
  br i1 %.not180, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !58
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !59
  %i.ck = icmp eq ptr %i.cj, @_ZN4absl12lts_20250512L11kExclusiveSE
  %i.cl = icmp eq ptr %.0137, %i.bb
  %or.cond212 = or i1 %i.cl, %i.ck
  br i1 %or.cond212, label %bb.at, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cm = icmp eq ptr %.0137, %i.bb
  br i1 %i.cm, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %.thread.sink.split

bb.ak:                                            ; preds = %bb.ah
  %..0147 = select i1 %i.bn, ptr %i.bb, ptr %.0137
  %.0144 = load ptr, ptr %..0147, align 8, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i8 0, ptr %i.ct, align 16, !tbaa !100
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.as, %.lr.ph.preheader
  %.1130314 = phi ptr [ %.2143, %bb.as ], [ %.0137, %.lr.ph.preheader ] ; 2 uses
  %.1136313 = phi ptr [ %i.dx, %bb.as ], [ %.0144, %.lr.ph.preheader ] ; 8 uses
  %.1135332 = phi i64 [ %.2136, %bb.as ], [ %.0134, %.lr.ph.preheader ] ; 3 uses
  %.1145310 = phi ptr [ %.2137, %bb.as ], [ %.0139, %.lr.ph.preheader ] ; 3 uses
  %.1146330 = phi ptr [ %.2147, %bb.as ], [ %.0145, %.lr.ph.preheader ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1136313, i64 17 ; 4 uses
  store i8 0, ptr %i.cx, align 1, !tbaa !101
  %i.cy = getelementptr inbounds nuw i8, ptr %.1136313, i64 32 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !67 ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br i1 %i.df, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit, %.lr.ph
  %i.dg = icmp eq ptr %.1146330, null
  br i1 %i.dg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !58
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !59
  %i.dj = icmp eq ptr %i.di, @_ZN4absl12lts_20250512L11kExclusiveSE
  br i1 %i.dj, label %.outer, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.dk = load ptr, ptr %i.cy, align 8, !tbaa !58
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.ap, %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit
  %.2147 = phi ptr [ %.1136313, %bb.an ], [ %.1146330, %bb.ap ], [ %.1146330, %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ], [ %.1146330, %bb.ao ] ; 2 uses
  %.2137 = phi ptr [ %.1130314, %bb.an ], [ %.1145310, %bb.ap ], [ %.1145310, %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ], [ %.1145310, %bb.ao ] ; 2 uses
  %.2136 = phi i64 [ %.1135332, %bb.an ], [ %.1135332, %bb.ap ], [ %.1135332, %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ], [ 32, %bb.ao ] ; 2 uses
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !101, !range !53, !noundef !54
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr inbounds nuw i8, ptr %.1136313, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71 ; 4 uses
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %.preheader.i
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dt = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.ds, %.preheader.i ] ; 4 uses
  %.017.i = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.dq, %.preheader.i ]
  %.01116.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.1136313, %.preheader.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.01116.i, i64 8
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !71
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %._crit_edge.i, %bb.ar, %bb.aq
  %.2143 = phi ptr [ %.1136313, %bb.aq ], [ %.0.lcssa.i, %._crit_edge.i ], [ %.1136313, %bb.ar ] ; 3 uses
  %.not183 = icmp eq ptr %.2143, %i.bb
  br i1 %.not183, label %.outer, label %bb.as

bb.as:                                            ; preds = %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit
  %i.dx = load ptr, ptr %.2143, align 8, !tbaa !57
  br label %.lr.ph

bb.at:                                            ; preds = %bb.ag
  %i.dy = icmp eq ptr %.0139, null
  %spec.select213 = select i1 %i.dy, ptr %i.bb, ptr %.0139 ; 2 uses
  %.pre = load ptr, ptr %spec.select213, align 8, !tbaa !57
  %i.dz = icmp eq ptr %.pre, %.0145
  br i1 %i.dz, label %.preheader257.preheader, label %bb.au, !prof !103

.preheader257.preheader:                          ; preds = %.thread387, %bb.at
  %.4436 = phi i64 [ 32, %.thread387 ], [ %.0134, %bb.at ]
  %.4143435 = phi ptr [ %i.bb, %.thread387 ], [ %spec.select213, %bb.at ]
  br label %.preheader257

bb.au:                                            ; preds = %bb.at
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  unreachable

.preheader257:                                    ; preds = %.preheader257.preheader, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i
  %.024.i = phi ptr [ %.12532.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %.4143435, %.preheader257.preheader ] ; 8 uses
  %.022.i = phi ptr [ %.12333.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.a, %.preheader257.preheader ] ; 4 uses
  %.019.i = phi i1 [ %.12034.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ false, %.preheader257.preheader ]
  %.0.i = phi ptr [ %.135.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.bb, %.preheader257.preheader ] ; 13 uses
  %.021.i = load ptr, ptr %.024.i, align 8, !tbaa !57 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.021.i, i64 17
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !101, !range !53, !noundef !54
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.av, label %bb.bi

bb.av:                                            ; preds = %.preheader257
  %i.ed = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !71
  %.not.i218 = icmp eq ptr %i.ee, null
  br i1 %.not.i218, label %bb.aw, label %.noexc, !prof !20
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a

bb.aw:                                            ; preds = %bb.av
  %i.ef = load ptr, ptr %.021.i, align 8, !tbaa !57 ; 5 uses
  store ptr %i.ef, ptr %.024.i, align 8, !tbaa !57
  %i.eg = icmp eq ptr %.0.i, %.021.i
  %i.eh = icmp eq ptr %.024.i, %.0.i              ; 2 uses
  br i1 %i.eg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ei = select i1 %i.eh, ptr null, ptr %.024.i
  br label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.eh, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ej = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !58 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !59
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  br i1 %i.ep, label %bb.ba, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.eq = getelementptr inbounds nuw i8, ptr %.024.i, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !66
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.et = load i32, ptr %i.es, align 8, !tbaa !66
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a

_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i: ; preds = %bb.bh, %bb.bg, %_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.0.i.i = phi ptr [ %i.ei, %bb.ax ], [ %.0.i, %bb.bg ], [ %.0.i, %bb.bh ], [ %.0.i, %_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i ], [ %.0.i, %bb.ay ], [ %.0.i, %bb.bc ], [ %.0.i, %bb.ba ], [ %.0.i, %bb.az ], [ %.0.i, %bb.be ], [ %.0.i, %bb.bd ] ; 3 uses
  %i.fs = load ptr, ptr %.022.i, align 8, !tbaa !98
  store ptr %i.fs, ptr %.021.i, align 8, !tbaa !57
  store ptr %.021.i, ptr %.022.i, align 8, !tbaa !98
  %i.ft = getelementptr inbounds nuw i8, ptr %.021.i, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !58
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !59
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i: ; preds = %._crit_edge.i.i, %bb.bi, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.135.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.0.i, %bb.bi ], [ %.0.i, %._crit_edge.i.i ] ; 3 uses
  %.12034.i = phi i1 [ %.019.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ true, %bb.bi ], [ true, %._crit_edge.i.i ] ; 2 uses
  %.12333.i = phi ptr [ %.021.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.022.i, %bb.bi ], [ %.022.i, %._crit_edge.i.i ]
  %.12532.i = phi ptr [ %.024.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.021.i, %bb.bi ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.gg = icmp eq ptr %.12532.i, %.135.i
  %.not27.i = select i1 %i.gg, i1 %.12034.i, i1 false
  br i1 %.not27.i, label %_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit, label %.preheader257, !llvm.loop !104

end_hunk_18
begin_hunk_19_@_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE:bb.a
  %i.gl = getelementptr inbounds nuw i8, ptr %.0163, i64 19
  store i8 0, ptr %i.gl, align 1, !tbaa !76
  %i.gm = ptrtoint ptr %.0163 to i64
  %i.gn = or i64 %.4436, %i.gm
  %i.go = or i64 %i.gn, %i.gh
  %i.gp = or i64 %i.go, 6
  br label %.thread.sink.split

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.k, %bb.j, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit216, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit217
  %i.gq = tail call noundef i32 @_ZN4absl12lts_2025051224synchronization_internal10MutexDelayEii(i32 noundef %.0151.ph, i32 noundef 0), !llvm.loop !105
  br label %.outer.loopexit

.thread.sink.split:                               ; preds = %bb.bm, %bb.bn, %bb.ai, %bb.aj, %bb.s, %bb.v
  %.1150.sink = phi i64 [ %i.o, %bb.s ], [ %i.cn, %bb.ai ], [ %i.bm, %bb.v ], [ %.0149, %bb.aj ], [ %i.gp, %bb.bn ], [ %i.gi, %bb.bm ]
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
  unreachable

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.053 = phi i32 [ %2, %.critedge.preheader ], [ %.558, %.critedge.backedge ] ; 13 uses
  %.0.a = phi i32 [ 0, %.critedge.preheader ], [ %.053.be, %.critedge.backedge ] ; 5 uses
  %i.o = load atomic i64, ptr %0 monotonic, align 8 ; 26 uses
  %i.p = shl i64 %i.o, 3
  %i.q = xor i64 %i.p, 32
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
bb.h:                                             ; preds = %_ZN4absl12lts_20250512L23CheckForMutexCorruptionElPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !87
  %trunc.i = trunc i32 %.053 to i1
  %..i = select i1 %trunc.i, i64 -3, i64 -1
  %i.af = and i64 %i.o, %..i
  %i.ag = or i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
  tail call void @_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #28
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !91
  tail call void @_ZN4absl12lts_202505125Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ar)
  %i.as = or i32 %.053, 1
  br label %.thread150

bb.k:                                             ; preds = %_ZN4absl12lts_20250512L23CheckForMutexCorruptionElPKc.exit
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
  br i1 %i.au, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.av = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef %.053) ; 2 uses
  %.not78 = icmp eq ptr %i.av, null
  br i1 %.not78, label %bb.m, label %bb.n, !prof !82

end_hunk_23
begin_hunk_24_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
  unreachable

bb.n:                                             ; preds = %bb.l
  %trunc.i97 = trunc i32 %.053 to i1
  %..i98 = select i1 %trunc.i97, i64 249, i64 251
  %i.aw = and i64 %i.o, %..i98
  %i.ax = load ptr, ptr %1, align 8, !tbaa !59
  %i.ay = icmp eq ptr %i.ax, @_ZN4absl12lts_20250512L11kExclusiveSE
  %.not79 = trunc i64 %i.o to i1
end_hunk_24
begin_hunk_25_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
bb.p:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !113
  %trunc.i99 = trunc i32 %.053 to i1              ; 3 uses
  %..i100 = select i1 %trunc.i99, i64 -33, i64 -1
  %i.bi = and i64 %..i100, %i.bh
  %i.bj = and i64 %i.bi, %i.o
end_hunk_25
begin_hunk_26_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a

bb.q:                                             ; preds = %bb.p
  %..i102 = select i1 %trunc.i99, i64 -68, i64 -66
  %i.bl = and i64 %i.o, %..i102
  %i.bm = or disjoint i64 %i.bl, 65
  %i.bn = cmpxchg ptr %0, i64 %i.o, i64 %i.bm acquire monotonic, align 8
  %i.bo = extractvalue { i64, i1 } %i.bn, 1
end_hunk_26
begin_hunk_27_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
  tail call void @_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #28
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !91
  tail call void @_ZN4absl12lts_202505125Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ce)
  %i.cf = or i32 %.053, 1
  br label %.thread150

bb.u:                                             ; preds = %bb.p
end_hunk_27
begin_hunk_28_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a

bb.v:                                             ; preds = %bb.u
  %..i106 = select i1 %trunc.i99, i64 -71, i64 -69
  %i.ci = and i64 %i.o, %..i106
  %i.cj = or disjoint i64 %i.ci, 68
  %i.ck = cmpxchg ptr %0, i64 %i.o, i64 %i.cj acquire monotonic, align 8
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
end_hunk_28
begin_hunk_29_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cm = and i64 %i.o, -256
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef %i.cn, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef %.053) ; 2 uses
  %.not75 = icmp eq ptr %i.co, null
  br i1 %.not75, label %bb.x, label %bb.y, !prof !82

end_hunk_29
begin_hunk_30_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread: ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.n
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !91
  tail call void @_ZN4absl12lts_202505125Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cy)
  %i.cz = or i32 %.053, 1
  br label %.thread150

.thread150:                                       ; preds = %bb.h, %bb.v, %bb.q, %bb.o, %bb.t, %bb.u, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread, %bb.j
  %.558 = phi i32 [ %i.as, %bb.j ], [ %.053, %bb.v ], [ %i.cz, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread ], [ %.053, %bb.q ], [ %.053, %bb.o ], [ %.053, %bb.u ], [ %i.cf, %bb.t ], [ %.053, %bb.h ]
  %.5 = phi i32 [ 0, %bb.j ], [ %.0.a, %bb.v ], [ 0, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread ], [ %.0.a, %bb.q ], [ %.0.a, %bb.o ], [ %.0.a, %bb.u ], [ 0, %bb.t ], [ %.0.a, %bb.h ] ; 4 uses
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !91  ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !58
end_hunk_30
begin_hunk_31_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
_ZN4absl12lts_2025051212_GLOBAL__N_115GetMutexGlobalsEv.exit16.i: ; preds = %bb.ac, %_ZN4absl12lts_2025051212_GLOBAL__N_115GetMutexGlobalsEv.exit.i
  %.sroa.03.0.copyload.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_17globalsE, i64 16), align 16
  %.sroa.5.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051212_GLOBAL__N_17globalsE, i64 24), align 8, !tbaa !3
  %i.dk = icmp slt i32 %.5, %i.di
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_115GetMutexGlobalsEv.exit16.i
  %i.dl = add nsw i32 %.5, 1
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.ad, %_ZN4absl12lts_2025051213base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i
end_hunk_31
begin_hunk_32_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
bb.ae:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_115GetMutexGlobalsEv.exit16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !21
  %i.dm = icmp eq i32 %.5, %i.di
  br i1 %i.dm, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
end_hunk_32
begin_hunk_33_@_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi:bb.a
          to label %bb.ag unwind label %.body

bb.ag:                                            ; preds = %bb.af
  %i.dn = add nsw i32 %.5, 1
  br label %_ZN4absl12lts_2025051213base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i

.body:                                            ; preds = %bb.ah, %bb.af
end_hunk_33
