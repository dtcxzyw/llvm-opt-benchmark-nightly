Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/upolynomial?download=true
inline.NumInlined: 2516
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11upolynomial12core_manager3mulER7svectorI3mpzjERKS2_:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager12div_rem_coreEjPK3mpzjS3_RjR7svectorIS1_jES7_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class._scoped_numeral, align 8     ; 9 uses
  store i32 0, ptr %5, align 4, !tbaa !52
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !39, !range !40, !noundef !41
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !40
  %i.g = trunc nuw i8 %i.f to i1
  %not..i.i = xor i1 %i.d, true
  %i.h = select i1 %not..i.i, i1 %i.g, i1 false
  br i1 %i.h, label %bb.c, label %_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %6, align 8, !tbaa !55     ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i:             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !52   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = load i8, ptr %i.m, align 4
  %i.o = trunc i8 %i.n to i1
  %i.p = load i32, ptr %4, align 8
  %i.q = icmp ne i32 %i.p, 1
  %.not12.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = icmp ne i32 %i.l, 0
  %or.cond.i.i = and i1 %i.r, %.not12.i.i
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count.i.i = zext i32 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i.i ; 2 uses
  tail call void @_ZN13mpzzp_manager3divERK3mpzS2_RS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit, label %bb.d, !llvm.loop !6

_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit: ; preds = %bb.d, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i, %bb.c, %bb.b
  %i.u = load ptr, ptr %7, align 8, !tbaa !55     ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52   ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.x to i64
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i:         ; preds = %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.z = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.u, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  store i32 0, ptr %i.aa, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i103
  %indvars.iv.i.i104 = phi i64 [ 0, %.lr.ph.i.i103 ], [ %indvars.iv.next.i.i105, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %7, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.i.i104
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
  %indvars.iv.next.i.i105 = add nuw nsw i64 %indvars.iv.i.i104, 1 ; 2 uses
  %i.ae = icmp eq i64 %indvars.iv.next.i.i105, %zext.i
  br i1 %i.ae, label %._crit_edge.i.i, label %bb.e, !llvm.loop !1

bb.f:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit116, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i106

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i106:        ; preds = %bb.f
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52 ; 2 uses
  %.not.i107 = icmp eq i32 %i.ai, 0
  br i1 %.not.i107, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i115, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i106
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i109 = zext i32 %i.ai to i64
  br label %bb.g

._crit_edge.i.i112:                               ; preds = %bb.g
  %.pre.i.i113 = load ptr, ptr %6, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %.pre.i.i113, null
  br i1 %.not.i.i.i114, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit116, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i115

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i115:      ; preds = %._crit_edge.i.i112, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i106
  %i.ak = phi ptr [ %.pre.i.i113, %._crit_edge.i.i112 ], [ %i.af, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i106 ]
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4
  store i32 0, ptr %i.al, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit116

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i108
  %indvars.iv.i.i110 = phi i64 [ 0, %.lr.ph.i.i108 ], [ %indvars.iv.next.i.i111, %bb.g ] ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv.i.i110
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  %indvars.iv.next.i.i111 = add nuw nsw i64 %indvars.iv.i.i110, 1 ; 2 uses
  %i.ap = icmp eq i64 %indvars.iv.next.i.i111, %zext.i109
  br i1 %i.ap, label %._crit_edge.i.i112, label %bb.g, !llvm.loop !1

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit116: ; preds = %bb.f, %._crit_edge.i.i112, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i115
  tail call void @_ZN11upolynomial12core_manager3setEjPK3mpzR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.aq = icmp ult i32 %1, 2
  br i1 %i.aq, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit116
  %.not = icmp ult i32 %1, %3
  br i1 %.not, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw i32 %1, %3
  %i.as = add i32 %i.ar, 1                        ; 9 uses
  %i.at = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120:          ; preds = %bb.i
  %.not.i121 = icmp eq i32 %i.as, 0
  br i1 %.not.i121, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117.preheader

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i:      ; preds = %bb.i
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !52 ; 2 uses
  %i.ax = icmp ugt i32 %i.as, %i.aw
  br i1 %i.ax, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117.preheader, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117.preheader: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.at, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120 ]
  %.0.i16.i.i.ph = phi i32 [ %i.aw, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120 ] ; 2 uses
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117:        ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117.preheader, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i
  %i.ay = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117.preheader ] ; 5 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i:       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.bc = icmp ugt i32 %i.as, %i.bb
  br i1 %i.bc, label %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i, label %bb.j

_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117
  tail call void @_ZN6vectorI3mpzLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pr.pre.i.i = load ptr, ptr %6, align 8, !tbaa !55
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i117, !llvm.loop !2

bb.j:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE8capacityEv.exit.i.i
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.as, ptr %i.bd, align 4, !tbaa !52
  %i.be = zext i32 %i.as to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.be
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.as
  br i1 %.not1218.i.i, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.bg = zext i32 %.0.i16.i.i.ph to i64
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bg
  br label %.lr.ph.i.i118

.lr.ph.i.i118:                                    ; preds = %.lr.ph.i.i118, %.lr.ph.preheader.i.i
  %.019.i.i = phi ptr [ %i.bm, %.lr.ph.i.i118 ], [ %i.bh, %.lr.ph.preheader.i.i ] ; 4 uses
  store i32 0, ptr %.019.i.i, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, -4
  store i8 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  store ptr null, ptr %i.bl, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16 ; 2 uses
  %.not12.i.i119 = icmp eq ptr %i.bm, %i.bf
  br i1 %.not12.i.i119, label %_ZN6vectorI3mpzLb0EjE7reserveEj.exit, label %.lr.ph.i.i118, !llvm.loop !3

_ZN6vectorI3mpzLb0EjE7reserveEj.exit:             ; preds = %.lr.ph.i.i118, %bb.j, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120, %bb.h
  %.095 = phi i32 [ 0, %bb.h ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i120 ], [ %i.as, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.thread.i ], [ %i.as, %bb.j ], [ %i.as, %.lr.ph.i.i118 ] ; 6 uses
  %i.bn = add i32 %3, -1
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.bo ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  store ptr %i.bq, ptr %8, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 10 uses
  store i32 0, ptr %i.br, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.bt = load i8, ptr %i.bs, align 4
  %i.bu = and i8 %i.bt, -4
  store i8 %i.bu, ptr %i.bs, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.bv, align 8, !tbaa !60
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not203 = icmp eq i32 %.095, 0                 ; 2 uses
  %wide.trip.count221 = zext i32 %.095 to i64
  br label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172

_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172: ; preds = %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172.backedge, %_ZN6vectorI3mpzLb0EjE7reserveEj.exit
  %i.by = load ptr, ptr %0, align 8, !tbaa !73, !nonnull !41, !align !49
  %i.bz = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.by)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172
  br i1 %i.bz, label %_ZN11upolynomial12core_manager10checkpointEv.exit, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.ca = call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  invoke void @_ZN11upolynomial21upolynomial_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTIN11upolynomial21upolynomial_exceptionE, ptr nonnull @_ZN17default_exceptionD2Ev) #26
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ca) #23
  br label %.body

_ZN11upolynomial12core_manager10checkpointEv.exit: ; preds = %.noexc
  %i.cc = load ptr, ptr %7, align 8, !tbaa !55    ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !52
  br label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit:               ; preds = %_ZN11upolynomial12core_manager10checkpointEv.exit, %bb.n
  %.0.i = phi i32 [ %i.cf, %bb.n ], [ 0, %_ZN11upolynomial12core_manager10checkpointEv.exit ] ; 4 uses
  %i.cg = icmp ult i32 %.0.i, %3
  br i1 %i.cg, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  %i.ch = load ptr, ptr %6, align 8, !tbaa !55    ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i123

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i123:          ; preds = %bb.o
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !52 ; 2 uses
  %i.cl = icmp ult i32 %.095, %i.ck
  br i1 %i.cl, label %.lr.ph.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124

.lr.ph.i:                                         ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i123
  %i.cm = zext i32 %.095 to i64
  br label %bb.r

._crit_edge.i:                                    ; preds = %.noexc131
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124:        ; preds = %._crit_edge.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i123
  %i.cn = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ch, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i123 ] ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  store i32 %.095, ptr %i.co, align 4, !tbaa !52
  br i1 %.not203, label %.critedge.thread.i.i, label %.lr.ph.i.i126

.lr.ph.i.i126:                                    ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124
  %i.cp = zext i32 %.095 to i64
  br label %bb.p

bb.p:                                             ; preds = %.noexc130, %.lr.ph.i.i126
  %indvars.iv.i.i127 = phi i64 [ %i.cp, %.lr.ph.i.i126 ], [ %i.cq, %.noexc130 ] ; 2 uses
  %i.cq = add nsw i64 %indvars.iv.i.i127, -1      ; 3 uses
  %i.cr = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !35
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.q, label %.critedge.thread.loopexit.i.i

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cs)
          to label %.noexc130 unwind label %.loopexit

.noexc130:                                        ; preds = %bb.q
  %.not.wide.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.wide.i.i, label %.critedge.i.i, label %bb.p, !llvm.loop !4

.critedge.i.i:                                    ; preds = %.noexc130
  %.pr.pre.i.i128 = load ptr, ptr %6, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %.pr.pre.i.i128, null
  br i1 %.not.i.i.i129, label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit, label %.critedge.thread.i.i

.critedge.thread.loopexit.i.i:                    ; preds = %bb.p
  %i.cw = trunc nuw i64 %indvars.iv.i.i127 to i32
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.critedge.thread.loopexit.i.i, %.critedge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124
  %.011.i.i = phi i32 [ 0, %.critedge.i.i ], [ %i.cw, %.critedge.thread.loopexit.i.i ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124 ]
  %i.cx = phi ptr [ %.pr.pre.i.i128, %.critedge.i.i ], [ %i.cr, %.critedge.thread.loopexit.i.i ], [ %i.cn, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i124 ]
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -4
  store i32 %.011.i.i, ptr %i.cy, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit

bb.r:                                             ; preds = %.noexc131, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc131 ] ; 2 uses
  %i.cz = load ptr, ptr %6, align 8, !tbaa !55
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.db = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc131 unwind label %.loopexit.split-lp.loopexit

.noexc131:                                        ; preds = %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ck, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.r, !llvm.loop !1

_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit: ; preds = %.critedge.thread.i.i, %.critedge.i.i, %._crit_edge.i, %bb.o
  %i.dc = load ptr, ptr %8, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.r
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172
  %lpad.loopexit185 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit
  %i.dg = sub nuw i32 %.0.i, %3                   ; 4 uses
  %i.dh = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41 ; 2 uses
  %i.di = trunc nuw i8 %i.dh to i1
  %i.dj = load i8, ptr %i.bx, align 8, !range !40
  %i.dk = trunc nuw i8 %i.dj to i1
  %not..i.i132 = xor i1 %i.di, true
  %i.dl = select i1 %not..i.i132, i1 %i.dk, i1 false
  br i1 %i.dl, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.dm = add i32 %.0.i, -1                       ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.dn
  invoke void @_ZN13mpzzp_manager3divERK3mpzS2_RS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dp = load ptr, ptr %6, align 8, !tbaa !55
  %i.dq = zext i32 %i.dg to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dq ; 3 uses
  %i.ds = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %.noexc133 unwind label %bb.x

.noexc133:                                        ; preds = %bb.v
  %i.dt = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.lr.ph202.preheader, label %bb.w

bb.w:                                             ; preds = %.noexc133
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.dr)
          to label %.lr.ph202.preheader unwind label %bb.x

.lr.ph202.preheader:                              ; preds = %.noexc133, %bb.w
  br label %.lr.ph202

.loopexit176:                                     ; preds = %bb.am
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp177.loopexit:                   ; preds = %bb.an
  %lpad.loopexit180 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp177.loopexit.split-lp:          ; preds = %bb.ag, %._crit_edge, %bb.ad, %bb.ac
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph202:                                        ; preds = %.lr.ph202.preheader, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit ], [ 0, %.lr.ph202.preheader ] ; 3 uses
  %i.dw = trunc nuw i64 %indvars.iv228 to i32
  %i.dx = add i32 %i.dg, %i.dw
  %i.dy = load ptr, ptr %7, align 8, !tbaa !55
  %i.dz = zext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv228
  %i.ec = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE6submulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %.noexc135 unwind label %bb.z

.noexc135:                                        ; preds = %.lr.ph202
  %i.ed = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit, label %bb.y

bb.y:                                             ; preds = %.noexc135
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit unwind label %bb.z

_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit:  ; preds = %.noexc135, %bb.y
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %i.bo
  br i1 %exitcond232.not, label %.loopexit183, label %.lr.ph202, !llvm.loop !148

bb.z:                                             ; preds = %bb.y, %.lr.ph202
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.t
  %i.eg = load i32, ptr %5, align 4, !tbaa !52
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %5, align 4, !tbaa !52
  %i.ei = add i32 %.0.i, -1                       ; 3 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i8, ptr %i.el, align 4
  %i.en = and i8 %i.em, 1
  %i.eo = icmp eq i8 %i.en, 0
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ep = load i32, ptr %i.ek, align 8, !tbaa !35
  store i32 %i.ep, ptr %i.br, align 8, !tbaa !35
  %i.eq = load i8, ptr %i.bs, align 4
  %i.er = and i8 %i.eq, -2
  store i8 %i.er, ptr %i.bs, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.ek)
          to label %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i_crit_edge unwind label %.loopexit.split-lp177.loopexit.split-lp

._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i_crit_edge: ; preds = %bb.ac
  %.pre = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i_crit_edge, %bb.ab
  %i.et = phi i8 [ %.pre, %._ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i_crit_edge ], [ %i.dh, %bb.ab ]
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %_ZN13mpzzp_manager3setER3mpzS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.br)
          to label %_ZN13mpzzp_manager3setER3mpzS1_.exit unwind label %.loopexit.split-lp177.loopexit.split-lp

_ZN13mpzzp_manager3setER3mpzS1_.exit:             ; preds = %bb.ad, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  %.not206 = icmp eq i32 %i.ei, 0
  br i1 %.not206, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %_ZN13mpzzp_manager3setER3mpzS1_.exit
  br i1 %.not203, label %._crit_edge, label %.lr.ph198

.lr.ph:                                           ; preds = %_ZN13mpzzp_manager3setER3mpzS1_.exit, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit ], [ 0, %_ZN13mpzzp_manager3setER3mpzS1_.exit ] ; 2 uses
  %i.ev = load ptr, ptr %7, align 8, !tbaa !55
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %indvars.iv ; 3 uses
  %i.ex = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.ew)
          to label %.noexc139 unwind label %bb.af

.noexc139:                                        ; preds = %.lr.ph
  %i.ey = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.ae

bb.ae:                                            ; preds = %.noexc139
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.ew)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit unwind label %bb.af

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %.noexc139, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ej
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !149

bb.af:                                            ; preds = %bb.ae, %.lr.ph
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit146, %.preheader
  %i.fb = load ptr, ptr %6, align 8, !tbaa !55
  %i.fc = zext i32 %i.dg to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fc ; 3 uses
  %i.fe = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %.noexc141 unwind label %.loopexit.split-lp177.loopexit.split-lp

.noexc141:                                        ; preds = %._crit_edge
  %i.ff = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %.lr.ph200.preheader, label %bb.ag

bb.ag:                                            ; preds = %.noexc141
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %.lr.ph200.preheader unwind label %.loopexit.split-lp177.loopexit.split-lp

.lr.ph200.preheader:                              ; preds = %.noexc141, %bb.ag
  br label %.lr.ph200

.lr.ph198:                                        ; preds = %.preheader, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit146
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit146 ], [ 0, %.preheader ] ; 2 uses
  %i.fh = load ptr, ptr %6, align 8, !tbaa !55
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %indvars.iv218 ; 3 uses
  %i.fj = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.fi)
          to label %.noexc144 unwind label %bb.ai

.noexc144:                                        ; preds = %.lr.ph198
  %i.fk = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit146, label %bb.ah

bb.ah:                                            ; preds = %.noexc144
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.fi)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit146 unwind label %bb.ai

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit146:     ; preds = %.noexc144, %bb.ah
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge, label %.lr.ph198, !llvm.loop !150

bb.ai:                                            ; preds = %bb.ah, %.lr.ph198
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149 ], [ 0, %.lr.ph200.preheader ] ; 3 uses
  %i.fn = trunc nuw i64 %indvars.iv223 to i32
  %i.fo = add i32 %i.dg, %i.fn
  %i.fp = load ptr, ptr %7, align 8, !tbaa !55
  %i.fq = zext i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fq ; 3 uses
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv223
  %i.ft = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE6submulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %.noexc147 unwind label %bb.ak

.noexc147:                                        ; preds = %.lr.ph200
  %i.fu = load i8, ptr %i.bw, align 8, !tbaa !39, !range !40, !noundef !41
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149, label %bb.aj

bb.aj:                                            ; preds = %.noexc147
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.fr)
          to label %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149 unwind label %bb.ak

_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149: ; preds = %.noexc147, %bb.aj
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %i.bo
  br i1 %exitcond227.not, label %.loopexit183, label %.lr.ph200, !llvm.loop !151

bb.ak:                                            ; preds = %bb.aj, %.lr.ph200
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit183:                                     ; preds = %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit
  %.pre-phi = phi i32 [ %i.dm, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit ], [ %i.ei, %_ZN13mpzzp_manager6submulERK3mpzS2_S2_RS0_.exit149 ] ; 5 uses
  %i.fx = load ptr, ptr %7, align 8, !tbaa !55    ; 3 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172.backedge, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i150

_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172.backedge: ; preds = %.loopexit183, %._crit_edge.i167, %.critedge.i.i159, %.critedge.thread.i.i156
  br label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i150:          ; preds = %.loopexit183
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !52 ; 2 uses
  %i.gb = icmp ult i32 %.pre-phi, %i.ga
  br i1 %i.gb, label %.lr.ph.i162, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151

.lr.ph.i162:                                      ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i150
  %i.gc = zext i32 %.pre-phi to i64
  br label %bb.an

._crit_edge.i167:                                 ; preds = %.noexc171
  %.pre.i168 = load ptr, ptr %7, align 8, !tbaa !55 ; 2 uses
  %.not.i.i169 = icmp eq ptr %.pre.i168, null
  br i1 %.not.i.i169, label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172.backedge, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151:        ; preds = %._crit_edge.i167, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i150
  %i.gd = phi ptr [ %.pre.i168, %._crit_edge.i167 ], [ %i.fx, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i150 ] ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 -4
  store i32 %.pre-phi, ptr %i.ge, align 4, !tbaa !52
  %.not12.i.i152 = icmp eq i32 %.pre-phi, 0
  br i1 %.not12.i.i152, label %.critedge.thread.i.i156, label %.lr.ph.i.i153

.lr.ph.i.i153:                                    ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151
  %i.gf = zext i32 %.pre-phi to i64
  br label %bb.al

bb.al:                                            ; preds = %.noexc170, %.lr.ph.i.i153
  %indvars.iv.i.i154 = phi i64 [ %i.gf, %.lr.ph.i.i153 ], [ %i.gg, %.noexc170 ] ; 2 uses
  %i.gg = add nsw i64 %indvars.iv.i.i154, -1      ; 3 uses
  %i.gh = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.gg ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !35
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.am, label %.critedge.thread.loopexit.i.i155

bb.am:                                            ; preds = %bb.al
  %i.gl = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %i.gi)
          to label %.noexc170 unwind label %.loopexit176

.noexc170:                                        ; preds = %bb.am
  %.not.wide.i.i158 = icmp eq i64 %i.gg, 0
  br i1 %.not.wide.i.i158, label %.critedge.i.i159, label %bb.al, !llvm.loop !4

.critedge.i.i159:                                 ; preds = %.noexc170
  %.pr.pre.i.i160 = load ptr, ptr %7, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %.pr.pre.i.i160, null
  br i1 %.not.i.i.i161, label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172.backedge, label %.critedge.thread.i.i156

.critedge.thread.loopexit.i.i155:                 ; preds = %bb.al
  %i.gm = trunc nuw i64 %indvars.iv.i.i154 to i32
  br label %.critedge.thread.i.i156

.critedge.thread.i.i156:                          ; preds = %.critedge.thread.loopexit.i.i155, %.critedge.i.i159, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151
  %.011.i.i157 = phi i32 [ 0, %.critedge.i.i159 ], [ %i.gm, %.critedge.thread.loopexit.i.i155 ], [ 0, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151 ]
  %i.gn = phi ptr [ %.pr.pre.i.i160, %.critedge.i.i159 ], [ %i.gh, %.critedge.thread.loopexit.i.i155 ], [ %i.gd, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i151 ]
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -4
  store i32 %.011.i.i157, ptr %i.go, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager8set_sizeEjR7svectorI3mpzjE.exit172.backedge

bb.an:                                            ; preds = %.noexc171, %.lr.ph.i162
  %indvars.iv.i163 = phi i64 [ %i.gc, %.lr.ph.i162 ], [ %indvars.iv.next.i164, %.noexc171 ] ; 2 uses
  %i.gp = load ptr, ptr %7, align 8, !tbaa !55
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %indvars.iv.i163
  %i.gr = load ptr, ptr %i.bq, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gq)
          to label %.noexc171 unwind label %.loopexit.split-lp177.loopexit

.noexc171:                                        ; preds = %bb.an
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %lftr.wideiv.i165 = trunc i64 %indvars.iv.next.i164 to i32
  %exitcond.not.i166 = icmp eq i32 %i.ga, %lftr.wideiv.i165
  br i1 %exitcond.not.i166, label %._crit_edge.i167, label %bb.an, !llvm.loop !1

.body:                                            ; preds = %.loopexit176, %.loopexit.split-lp177.loopexit.split-lp, %.loopexit.split-lp177.loopexit, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.m, %bb.af, %bb.ai, %bb.ak, %bb.z, %bb.x
  %.pn101 = phi { ptr, i32 } [ %i.dv, %bb.x ], [ %i.fw, %bb.ak ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fa, %bb.af ], [ %i.fm, %bb.ai ], [ %i.ef, %bb.z ], [ %i.cb, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit173, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit185, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit176 ], [ %lpad.loopexit180, %.loopexit.split-lp177.loopexit ], [ %lpad.loopexit.split-lp181, %.loopexit.split-lp177.loopexit.split-lp ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  resume { ptr, i32 } %.pn101

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, %._crit_edge.i.i, %_ZN11upolynomial12core_manager3divER7svectorI3mpzjERKS2_.exit, %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit116, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager7div_remEjPK3mpzjS3_RjR7svectorIS1_jES7_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  tail call void @_ZN11upolynomial12core_manager12div_rem_coreEjPK3mpzjS3_RjR7svectorIS1_jES7_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = load ptr, ptr %7, align 8, !tbaa !61
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !61
  store ptr %i.d, ptr %7, align 8, !tbaa !61
  store ptr %i.c, ptr %i.a, align 8, !tbaa !61
  %i.e = load ptr, ptr %6, align 8, !tbaa !61
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !61
  store ptr %i.f, ptr %6, align 8, !tbaa !61
  store ptr %i.e, ptr %i.b, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager3divEjPK3mpzjS3_R7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  call void @_ZN11upolynomial12core_manager12div_rem_coreEjPK3mpzjS3_RjR7svectorIS1_jES7_(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !52   ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.g to i64
  br label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i:         ; preds = %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.i = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.d, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i ]
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  store i32 0, ptr %i.j, align 4, !tbaa !52
  br label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.n = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.n, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1

_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit: ; preds = %bb.a, %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i
  %i.o = load ptr, ptr %5, align 8, !tbaa !61
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !61
  store ptr %i.p, ptr %5, align 8, !tbaa !61
  store ptr %i.o, ptr %i.c, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial12core_manager3remEjPK3mpzjS3_RjR7svectorIS1_jE(ptr noundef nonnull align 8 dereferenceable(272) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class._scoped_numeral, align 8     ; 9 uses
  store i32 0, ptr %5, align 4, !tbaa !52
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %6, align 8, !tbaa !55     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i:           ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %zext.i = zext i32 %i.e to i64
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i, label %_ZN11upolynomial12core_manager5resetER7svectorI3mpzjE.exit, label %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i.i:         ; preds = %._crit_edge.i.i, %_ZNK6vectorI3mpzLb0EjE4sizeEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN11upolynomial7manager11translate_qEjP3mpzRK3mpq:bb.a

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.an = load i8, ptr %i.am, align 4             ; 2 uses
  %i.ao = and i8 %i.an, 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.split.i, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i

.split.i:                                         ; preds = %bb.i
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !35
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i:       ; preds = %bb.i, %bb.h
  %i.at = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.au = icmp slt i32 %i.at, 0
  %.pre12.i = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  br i1 %i.au, label %bb.j, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre10.i = load i8, ptr %.phi.trans.insert.i, align 4
  br label %bb.k

bb.j:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i, %.split.i
  %i.av = phi ptr [ %i.ai, %.split.i ], [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

bb.k:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i, %.split.i
  %i.aw = phi i8 [ %.pre10.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.an, %.split.i ]
  %i.ax = phi ptr [ %.pre12.i, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i ], [ %i.ai, %.split.i ] ; 2 uses
  %i.ay = and i8 %i.aw, 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.l, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.k, align 4
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %.split9.i, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i

.split9.i:                                        ; preds = %bb.l
  %i.bd = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.be = load i32, ptr %i.j, align 8, !tbaa !35
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i:       ; preds = %bb.l, %bb.k
  %i.bg = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i
  %.pre11.i = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i, %.split9.i
  %i.bi = phi ptr [ %.pre11.i, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i ], [ %i.ax, %.split9.i ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45:      ; preds = %bb.m, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i, %.split9.i, %bb.j, %.lr.ph
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next65
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE6addmulERK3mpzS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.bl = load i8, ptr %i.e, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46, label %bb.n

bb.n:                                             ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE3remERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !57, !nonnull !41, !align !49 ; 3 uses
  %i.bp = load i8, ptr %i.i, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.o, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.bt = load i8, ptr %i.bs, align 4             ; 2 uses
  %i.bu = and i8 %i.bt, 1
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %.split.i56, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47

.split.i56:                                       ; preds = %bb.o
  %i.bw = load i32, ptr %i.h, align 8, !tbaa !35
  %i.bx = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.by = icmp slt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.p, label %bb.q

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47:     ; preds = %bb.o, %bb.n
  %i.bz = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.ca = icmp slt i32 %i.bz, 0
  %.pre12.i48 = load ptr, ptr %i.d, align 8, !tbaa !57 ; 2 uses
  br i1 %i.ca, label %bb.p, label %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49

_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49: ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.pre10.i51 = load i8, ptr %.phi.trans.insert.i50, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47, %.split.i56
  %i.cb = phi ptr [ %i.bo, %.split.i56 ], [ %.pre12.i48, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit.i47 ]
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

bb.q:                                             ; preds = %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49, %.split.i56
  %i.cc = phi i8 [ %.pre10.i51, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49 ], [ %i.bt, %.split.i56 ]
  %i.cd = phi ptr [ %.pre12.i48, %_ZN11mpz_managerILb0EE2gtERK3mpzS3_.exit._crit_edge.i49 ], [ %i.bo, %.split.i56 ] ; 2 uses
  %i.ce = and i8 %i.cc, 1
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52

bb.r:                                             ; preds = %bb.q
  %i.cg = load i8, ptr %i.k, align 4
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.split9.i55, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52

.split9.i55:                                      ; preds = %bb.r
  %i.cj = load i32, ptr %i.ad, align 8, !tbaa !35
  %i.ck = load i32, ptr %i.j, align 8, !tbaa !35
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.s, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52:     ; preds = %bb.r, %bb.q
  %i.cm = tail call noundef i32 @_ZN11mpz_managerILb0EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53, label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53: ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52
  %.pre11.i54 = load ptr, ptr %i.d, align 8, !tbaa !57
  br label %bb.s

bb.s:                                             ; preds = %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53, %.split9.i55
  %i.co = phi ptr [ %.pre11.i54, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit._crit_edge.i53 ], [ %i.cd, %.split9.i55 ]
  tail call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  br label %_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46

_ZN13mpzzp_manager6addmulERK3mpzS2_S2_RS0_.exit46: ; preds = %bb.s, %_ZN11mpz_managerILb0EE2ltERK3mpzS3_.exit.i52, %.split9.i55, %bb.p, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit45
  %lftr.wideiv = trunc i64 %indvars.iv.next65 to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !200

.loopexit:                                        ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager20compose_an_p_x_div_aEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4                          ; 2 uses
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %3, align 8, !tbaa !35
  store i32 %i.m, ptr %i.d, align 8, !tbaa !35
  store i8 %i.g, ptr %i.e, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %.loopexit.split-lp

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp

.lr.ph.preheader:                                 ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.e
  %5 = zext i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit20
  %indvars.iv = phi i64 [ %5, %.lr.ph.preheader ], [ %6, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit20 ]
  %6 = add nsw i64 %indvars.iv, -1                ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %6 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !35
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %bb.f
  %i.v = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc16
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit unwind label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g, %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN15_scoped_numeralI13mpzzp_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %lpad.phi

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit:        ; preds = %.noexc16, %bb.g, %.lr.ph
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3mulERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit
  %i.y = load i8, ptr %i.o, align 8, !tbaa !39, !range !40, !noundef !41
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit20, label %bb.i

bb.i:                                             ; preds = %.noexc18
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit20 unwind label %.loopexit

_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit20:      ; preds = %bb.i, %.noexc18
  %.not.wide = icmp eq i64 %6, 0
  br i1 %.not.wide, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN13mpzzp_manager3mulERK3mpzS2_RS0_.exit20
  %i.aa = load ptr, ptr %4, align 8, !tbaa !81, !nonnull !41, !align !49
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit:   ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN15_scoped_numeralI13mpzzp_managerED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager20compose_2n_p_x_div_2EjP3mpz(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN13mpzzp_manager5mul2kER3mpzj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %.0911 = phi i32 [ %i.b, %.lr.ph ], [ %i.i, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %.0911)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !39, !range !40, !noundef !41
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit

_ZN13mpzzp_manager5mul2kER3mpzj.exit:             ; preds = %bb.b, %bb.c
  %i.i = add i32 %.0911, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !13

.loopexit:                                        ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN11upolynomial7manager9p_1_div_xEjP3mpz(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(312) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, -1
  %i.c = zext i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv11 = phi i64 [ %i.ae, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv11 ; 4 uses
  %i.f = load i32, ptr %i.d, align 4, !tbaa !52
  %i.g = load i32, ptr %i.e, align 4, !tbaa !52
  store i32 %i.g, ptr %i.d, align 4, !tbaa !52
  store i32 %i.f, ptr %i.e, align 4, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !62
  store ptr %i.k, ptr %i.h, align 8, !tbaa !62
  store ptr %i.j, ptr %i.i, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  %i.m = load i8, ptr %i.l, align 4               ; 2 uses
  %i.n = and i8 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 2
  %i.r = and i8 %i.m, -3
  %i.s = or disjoint i8 %i.q, %i.r
  store i8 %i.s, ptr %i.l, align 4
  %i.t = load i8, ptr %i.o, align 4               ; 2 uses
  %i.u = and i8 %i.t, -3
  %i.v = or disjoint i8 %i.u, %i.n
  store i8 %i.v, ptr %i.o, align 4
  %i.w = load i8, ptr %i.l, align 4               ; 2 uses
  %i.x = and i8 %i.w, 1
  %i.y = and i8 %i.t, 1
  %i.z = and i8 %i.w, -2
  %i.aa = or disjoint i8 %i.z, %i.y
  store i8 %i.aa, ptr %i.l, align 4
  %i.ab = load i8, ptr %i.o, align 4
  %i.ac = and i8 %i.ab, -2
  %i.ad = or disjoint i8 %i.ac, %i.x
  store i8 %i.ad, ptr %i.o, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = add nsw i64 %indvars.iv11, -1           ; 2 uses
  %.not = icmp ult i64 %indvars.iv.next, %i.ae
  br i1 %.not, label %bb.c, label %.loopexit, !llvm.loop !201

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager14compose_p_2k_xEjP3mpzj(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN13mpzzp_manager5mul2kER3mpzj.exit
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %.01012 = phi i32 [ %3, %.preheader ], [ %i.h, %_ZN13mpzzp_manager5mul2kER3mpzj.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49
  tail call void @_ZN11mpz_managerILb0EE5mul2kER3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i32 noundef %.01012)
  %i.f = load i8, ptr %i.c, align 8, !tbaa !39, !range !40, !noundef !41
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN13mpzzp_manager5mul2kER3mpzj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_ZN13mpzzp_manager5mul2kER3mpzj.exit

_ZN13mpzzp_manager5mul2kER3mpzj.exit:             ; preds = %bb.b, %bb.c
  %i.h = add i32 %.01012, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %_ZN13mpzzp_manager5mul2kER3mpzj.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11upolynomial7manager13compose_p_b_xEjP3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class._scoped_numeral, align 8     ; 9 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4                          ; 2 uses
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %3, align 8, !tbaa !35
  store i32 %i.l, ptr %i.c, align 8, !tbaa !35
  store i8 %i.f, ptr %i.d, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !41, !align !49
  invoke void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i unwind label %bb.g

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !39, !range !40, !noundef !41
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i
  invoke void @_ZN13mpzzp_manager16p_normalize_coreER3mpz(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.lr.ph.preheader unwind label %bb.g

end_hunk_1
