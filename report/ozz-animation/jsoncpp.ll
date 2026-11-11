Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/jsoncpp?download=true
inline.NumInlined: 3522
inline.NumDeleted: 846
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4Json6Reader27decodeUnicodeEscapeSequenceERNS0_5TokenERPKcS4_Rj:bb.a

bb.i:                                             ; preds = %.noexc56
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.i
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ab

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink74 = phi i32 [ -48, %bb.e ], [ -87, %bb.f ], [ -55, %bb.g ]
  %i.av = add nsw i32 %.sink74, %i.aa             ; 2 uses
  store i32 %i.av, ptr %4, align 4, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !117
  %i.ax = load i8, ptr %i.y, align 1, !tbaa !50   ; 4 uses
  %i.ay = shl nuw nsw i32 %i.av, 4                ; 4 uses
  store i32 %i.ay, ptr %4, align 4, !tbaa !101
  %i.az = sext i8 %i.ax to i32                    ; 3 uses
  %i.ba = add i8 %i.ax, -48
  %or.cond.1 = icmp ult i8 %i.ba, 10
  br i1 %or.cond.1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add i8 %i.ax, -97
  %or.cond5.1 = icmp ult i8 %i.bb, 6
  br i1 %or.cond5.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = add i8 %i.ax, -65
  %or.cond8.1 = icmp ult i8 %i.bc, 6
  br i1 %or.cond8.1, label %bb.m, label %.noexc.i55

bb.m:                                             ; preds = %bb.l
  %i.bd = add nuw nsw i32 %i.ay, %i.az
  %i.be = add nsw i32 %i.bd, -55
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bf = add nuw nsw i32 %i.ay, %i.az
  %i.bg = add nsw i32 %i.bf, -87
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.az, -48
  %i.bi = or disjoint i32 %i.ay, %i.bh
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sink = phi i32 [ %i.bi, %bb.o ], [ %i.bg, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !101
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !117
  %i.bk = load i8, ptr %i.aw, align 1, !tbaa !50  ; 4 uses
  %i.bl = shl nuw nsw i32 %.sink, 4               ; 4 uses
  store i32 %i.bl, ptr %4, align 4, !tbaa !101
  %i.bm = sext i8 %i.bk to i32                    ; 3 uses
  %i.bn = add i8 %i.bk, -48
  %or.cond.2 = icmp ult i8 %i.bn, 10
  br i1 %or.cond.2, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = add i8 %i.bk, -97
  %or.cond5.2 = icmp ult i8 %i.bo, 6
  br i1 %or.cond5.2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add i8 %i.bk, -65
  %or.cond8.2 = icmp ult i8 %i.bp, 6
  br i1 %or.cond8.2, label %bb.s, label %.noexc.i55

bb.s:                                             ; preds = %bb.r
  %i.bq = add nuw nsw i32 %i.bl, %i.bm
  %i.br = add nsw i32 %i.bq, -55
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.bs = add nuw nsw i32 %i.bl, %i.bm
  %i.bt = add nsw i32 %i.bs, -87
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %i.bm, -48
  %i.bv = or disjoint i32 %i.bl, %i.bu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink75 = phi i32 [ %i.bv, %bb.u ], [ %i.bt, %bb.t ], [ %i.br, %bb.s ] ; 2 uses
  store i32 %.sink75, ptr %4, align 4, !tbaa !101
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.bw, ptr %2, align 8, !tbaa !117
  %i.bx = load i8, ptr %i.bj, align 1, !tbaa !50  ; 4 uses
  %i.by = shl nuw nsw i32 %.sink75, 4             ; 4 uses
  store i32 %i.by, ptr %4, align 4, !tbaa !101
  %i.bz = sext i8 %i.bx to i32                    ; 3 uses
  %i.ca = add i8 %i.bx, -48
  %or.cond.3 = icmp ult i8 %i.ca, 10
  br i1 %or.cond.3, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = add i8 %i.bx, -97
  %or.cond5.3 = icmp ult i8 %i.cb, 6
  br i1 %or.cond5.3, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add i8 %i.bx, -65
  %or.cond8.3 = icmp ult i8 %i.cc, 6
  br i1 %or.cond8.3, label %bb.y, label %.noexc.i55

bb.y:                                             ; preds = %bb.x
  %i.cd = add nuw nsw i32 %i.by, %i.bz
  %i.ce = add nsw i32 %i.cd, -55
  store i32 %i.ce, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.cf = add nuw nsw i32 %i.by, %i.bz
  %i.cg = add nsw i32 %i.cf, -87
  store i32 %i.cg, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.aa:                                            ; preds = %bb.v
  %i.ch = add nsw i32 %i.bz, -48
  %i.ci = or disjoint i32 %i.by, %i.ch
  store i32 %i.ci, ptr %4, align 4, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ]
  ret i1 %.3

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %.pn48.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.5", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator.5", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86   ; 3 uses
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6                   ; 2 uses
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87   ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 3 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ae = sub nuw i64 %1, %i.ac                   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !122, !noalias !353 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.q
  %i.aj = ashr exact i64 %i.ai, 6
  %i.ak = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = sub nuw i64 %i.ae, %i.ak
  tail call void @_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.am), !noalias !353
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !85, !noalias !354 ; 2 uses
  %.pre6.i.i = load ptr, ptr %i.af, align 8, !tbaa !87, !noalias !354
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !86, !noalias !354 ; 2 uses
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !88, !noalias !354
  %.pre11 = ptrtoint ptr %.pre.i.i to i64
  %.pre11.a = ptrtoint ptr %.pre to i64
  %.pre12 = sub i64 %.pre11, %.pre11.a
  %.pre14 = ashr exact i64 %.pre12, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi15 = phi i64 [ %.pre14, %bb.c ], [ %i.t, %bb.b ]
  %i.an = phi ptr [ %.pre10, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.ao = phi ptr [ %.pre, %bb.c ], [ %i.p, %bb.b ]
  %i.ap = phi ptr [ %.pre6.i.i, %bb.c ], [ %i.ag, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i.i, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.ar = add nsw i64 %.pre-phi15, %i.ae          ; 5 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.at = icmp samesign ult i64 %i.ar, 8
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds [64 x i8], ptr %i.aq, i64 %i.ae
  br label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.av = lshr i64 %i.ar, 3
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.aw = ashr i64 %i.ar, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i64 [ %i.av, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91, !noalias !354 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  %i.bb = shl nsw i64 %i.ax, 3
  %i.bc = sub nsw i64 %i.ar, %i.bb
  %i.bd = getelementptr inbounds [64 x i8], ptr %i.az, i64 %i.bc
  br label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i

_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.6.0.i = phi ptr [ %i.ao, %bb.f ], [ %i.az, %bb.i ]
  %.sroa.9.0.i = phi ptr [ %i.ap, %bb.f ], [ %i.ba, %bb.i ]
  %.sroa.12.0.i = phi ptr [ %i.an, %bb.f ], [ %i.ay, %bb.i ]
  %storemerge.i.i.i.i = phi ptr [ %i.au, %bb.f ], [ %i.bd, %bb.i ] ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.aq, %storemerge.i.i.i.i
  br i1 %.not3.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i, %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i ], [ %i.aq, %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i ] ; 4 uses
  %.sroa.10.05.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i ], [ %i.ap, %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i ] ; 2 uses
  %.sroa.13.04.i.i.i.i = phi ptr [ %.sroa.13.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i ], [ %i.an, %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.06.i.i.i.i, i8 0, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 40
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 64 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.10.05.i.i.i.i
  br i1 %i.bh, label %bb.j, label %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.13.04.i.i.i.i, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !91 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  br label %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i

_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.sroa.13.1.i.i.i.i = phi ptr [ %i.bi, %bb.j ], [ %.sroa.13.04.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.10.1.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %.sroa.10.05.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %i.bg, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i, %storemerge.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !348

_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i, %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8, !tbaa !91
  store ptr %.sroa.6.0.i, ptr %i.o, align 8, !tbaa !91
  store ptr %.sroa.9.0.i, ptr %i.af, align 8, !tbaa !91
  br label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split

bb.k:                                             ; preds = %bb.a
  %i.bl = icmp ult i64 %1, %i.ac
  br i1 %i.bl, label %bb.l, label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !86, !noalias !355 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.z, %i.bo
  %i.bq = ashr exact i64 %i.bp, 6
  %i.br = add nsw i64 %i.bq, %1                   ; 5 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i64 %i.br, 8
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds [64 x i8], ptr %i.x, i64 %1
  br label %_ZStplRKSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_El.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = lshr i64 %i.br, 3
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bw = ashr i64 %i.br, 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bx = phi i64 [ %i.bv, %bb.o ], [ %i.bw, %bb.p ] ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !91, !noalias !355 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cb = shl nsw i64 %i.bx, 3
  %i.cc = sub nsw i64 %i.br, %i.cb
  %i.cd = getelementptr inbounds [64 x i8], ptr %i.bz, i64 %i.cc
  br label %_ZStplRKSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_El.exit

_ZStplRKSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_El.exit: ; preds = %bb.n, %bb.q
  %.sroa.6.0 = phi ptr [ %i.w, %bb.n ], [ %i.ca, %bb.q ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %i.bn, %bb.n ], [ %i.bz, %bb.q ] ; 2 uses
  %.sroa.9.0 = phi ptr [ %i.f, %bb.n ], [ %i.by, %bb.q ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bu, %bb.n ], [ %i.cd, %bb.q ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !87, !noalias !356
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %storemerge.i.i, ptr %2, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.0, ptr %i.cg, align 8, !tbaa !86
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.6.0, ptr %i.ch, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.9.0, ptr %i.ci, align 8, !tbaa !88
  store ptr %i.n, ptr %3, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.cl, align 8, !tbaa !88
  call void @_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !90  ; 2 uses
  %i.cn = icmp ult ptr %.sroa.9.0, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i, label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit

.lr.ph.i.i:                                       ; preds = %_ZStplRKSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_El.exit, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.sroa.9.0, %_ZStplRKSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_El.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.co = load ptr, ptr %.06.i.i, align 8, !tbaa !91
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef 512) #41
  %i.cp = icmp ult ptr %.06.i.i, %i.cm
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit, !llvm.loop !1

_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit: ; preds = %.lr.ph.i.i, %_ZStplRKSt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS2_PS2_El.exit
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !91
  store ptr %.sroa.3.0, ptr %i.o, align 8, !tbaa !91
  store ptr %.sroa.6.0, ptr %i.ce, align 8, !tbaa !91
  br label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split

_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split: ; preds = %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit, %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i
  %.sroa.12.0.i.sink = phi ptr [ %.sroa.12.0.i, %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json6Reader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i ], [ %.sroa.9.0, %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit ]
  store ptr %.sroa.12.0.i.sink, ptr %i.c, align 8, !tbaa !92
  br label %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit

_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZNSt5dequeIN4Json6Reader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4Json6Reader24getLocationLineAndColumnEPKcRiS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(267) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  store i32 0, ptr %2, align 4, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = icmp uge ptr %i.b, %1
  %i.e = load ptr, ptr %i.c, align 8
  %.not22 = icmp eq ptr %i.b, %i.e
  %or.cond23 = select i1 %i.d, i1 true, i1 %.not22
  br i1 %or.cond23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.025 = phi ptr [ %.1, %bb.c ], [ %i.b, %bb.a ]
  %.01824 = phi ptr [ %.2, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01824, i64 1 ; 4 uses
  %i.h = load i8, ptr %.01824, align 1, !tbaa !50
  switch i8 %i.h, label %bb.c [
    i8 13, label %bb.b
    i8 10, label %.sink.split
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i8, ptr %i.g, align 1, !tbaa !50
  %i.j = icmp eq i8 %i.i, 10
  %i.k = getelementptr inbounds nuw i8, ptr %.01824, i64 2
  %spec.select = select i1 %i.j, ptr %i.k, ptr %i.g
end_hunk_0
begin_hunk_1_@_ZN4Json9OurReader27decodeUnicodeEscapeSequenceERNS0_5TokenERPKcS4_Rj:bb.a

bb.i:                                             ; preds = %.noexc56
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.i
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !50
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.ab

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink74 = phi i32 [ -48, %bb.e ], [ -87, %bb.f ], [ -55, %bb.g ]
  %i.av = add nsw i32 %.sink74, %i.aa             ; 2 uses
  store i32 %i.av, ptr %4, align 4, !tbaa !101
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store ptr %i.aw, ptr %2, align 8, !tbaa !117
  %i.ax = load i8, ptr %i.y, align 1, !tbaa !50   ; 4 uses
  %i.ay = shl nuw nsw i32 %i.av, 4                ; 4 uses
  store i32 %i.ay, ptr %4, align 4, !tbaa !101
  %i.az = sext i8 %i.ax to i32                    ; 3 uses
  %i.ba = add i8 %i.ax, -48
  %or.cond.1 = icmp ult i8 %i.ba, 10
  br i1 %or.cond.1, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add i8 %i.ax, -97
  %or.cond5.1 = icmp ult i8 %i.bb, 6
  br i1 %or.cond5.1, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = add i8 %i.ax, -65
  %or.cond8.1 = icmp ult i8 %i.bc, 6
  br i1 %or.cond8.1, label %bb.m, label %.noexc.i55

bb.m:                                             ; preds = %bb.l
  %i.bd = add nuw nsw i32 %i.ay, %i.az
  %i.be = add nsw i32 %i.bd, -55
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bf = add nuw nsw i32 %i.ay, %i.az
  %i.bg = add nsw i32 %i.bf, -87
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bh = add nsw i32 %i.az, -48
  %i.bi = or disjoint i32 %i.ay, %i.bh
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sink = phi i32 [ %i.bi, %bb.o ], [ %i.bg, %bb.n ], [ %i.be, %bb.m ] ; 2 uses
  store i32 %.sink, ptr %4, align 4, !tbaa !101
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !117
  %i.bk = load i8, ptr %i.aw, align 1, !tbaa !50  ; 4 uses
  %i.bl = shl nuw nsw i32 %.sink, 4               ; 4 uses
  store i32 %i.bl, ptr %4, align 4, !tbaa !101
  %i.bm = sext i8 %i.bk to i32                    ; 3 uses
  %i.bn = add i8 %i.bk, -48
  %or.cond.2 = icmp ult i8 %i.bn, 10
  br i1 %or.cond.2, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = add i8 %i.bk, -97
  %or.cond5.2 = icmp ult i8 %i.bo, 6
  br i1 %or.cond5.2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add i8 %i.bk, -65
  %or.cond8.2 = icmp ult i8 %i.bp, 6
  br i1 %or.cond8.2, label %bb.s, label %.noexc.i55

bb.s:                                             ; preds = %bb.r
  %i.bq = add nuw nsw i32 %i.bl, %i.bm
  %i.br = add nsw i32 %i.bq, -55
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.bs = add nuw nsw i32 %i.bl, %i.bm
  %i.bt = add nsw i32 %i.bs, -87
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.bu = add nsw i32 %i.bm, -48
  %i.bv = or disjoint i32 %i.bl, %i.bu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink75 = phi i32 [ %i.bv, %bb.u ], [ %i.bt, %bb.t ], [ %i.br, %bb.s ] ; 2 uses
  store i32 %.sink75, ptr %4, align 4, !tbaa !101
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.bw, ptr %2, align 8, !tbaa !117
  %i.bx = load i8, ptr %i.bj, align 1, !tbaa !50  ; 4 uses
  %i.by = shl nuw nsw i32 %.sink75, 4             ; 4 uses
  store i32 %i.by, ptr %4, align 4, !tbaa !101
  %i.bz = sext i8 %i.bx to i32                    ; 3 uses
  %i.ca = add i8 %i.bx, -48
  %or.cond.3 = icmp ult i8 %i.ca, 10
  br i1 %or.cond.3, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = add i8 %i.bx, -97
  %or.cond5.3 = icmp ult i8 %i.cb, 6
  br i1 %or.cond5.3, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add i8 %i.bx, -65
  %or.cond8.3 = icmp ult i8 %i.cc, 6
  br i1 %or.cond8.3, label %bb.y, label %.noexc.i55

bb.y:                                             ; preds = %bb.x
  %i.cd = add nuw nsw i32 %i.by, %i.bz
  %i.ce = add nsw i32 %i.cd, -55
  store i32 %i.ce, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.cf = add nuw nsw i32 %i.by, %i.bz
  %i.cg = add nsw i32 %i.cf, -87
  store i32 %i.cg, ptr %4, align 4, !tbaa !101
  br label %.loopexit

bb.aa:                                            ; preds = %bb.v
  %i.ch = add nsw i32 %i.bz, -48
  %i.ci = or disjoint i32 %i.by, %i.ch
  store i32 %i.ci, ptr %4, align 4, !tbaa !101
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.y ]
  ret i1 %.3

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  resume { ptr, i32 } %.pn48.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Deque_iterator.15", align 8 ; 7 uses
  %3 = alloca %"struct.std::_Deque_iterator.15", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163  ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = shl nsw i64 %.neg.i.i, 3
  %i.l = add i64 %i.i, %i.k
  %i.m = and i64 %i.l, -8
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 3 uses
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 6                   ; 2 uses
  %i.u = add nsw i64 %i.t, %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !162  ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !160  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 6
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 3 uses
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.ae = sub nuw i64 %1, %i.ac                   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !180, !noalias !493 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.q
  %i.aj = ashr exact i64 %i.ai, 6
  %i.ak = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.al = icmp ugt i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = sub nuw i64 %i.ae, %i.ak
  tail call void @_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.am), !noalias !493
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !160, !noalias !494 ; 2 uses
  %.pre6.i.i = load ptr, ptr %i.af, align 8, !tbaa !162, !noalias !494
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !161, !noalias !494 ; 2 uses
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !163, !noalias !494
  %.pre11 = ptrtoint ptr %.pre.i.i to i64
  %.pre11.a = ptrtoint ptr %.pre to i64
  %.pre12 = sub i64 %.pre11, %.pre11.a
  %.pre14 = ashr exact i64 %.pre12, 6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi15 = phi i64 [ %.pre14, %bb.c ], [ %i.t, %bb.b ]
  %i.an = phi ptr [ %.pre10, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.ao = phi ptr [ %.pre, %bb.c ], [ %i.p, %bb.b ]
  %i.ap = phi ptr [ %.pre6.i.i, %bb.c ], [ %i.ag, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i.i, %bb.c ], [ %i.n, %bb.b ] ; 3 uses
  %i.ar = add nsw i64 %.pre-phi15, %i.ae          ; 5 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.at = icmp samesign ult i64 %i.ar, 8
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds [64 x i8], ptr %i.aq, i64 %i.ae
  br label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.av = lshr i64 %i.ar, 3
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.aw = ashr i64 %i.ar, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = phi i64 [ %i.av, %bb.g ], [ %i.aw, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !165, !noalias !494 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  %i.bb = shl nsw i64 %i.ax, 3
  %i.bc = sub nsw i64 %i.ar, %i.bb
  %i.bd = getelementptr inbounds [64 x i8], ptr %i.az, i64 %i.bc
  br label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i

_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.6.0.i = phi ptr [ %i.ao, %bb.f ], [ %i.az, %bb.i ]
  %.sroa.9.0.i = phi ptr [ %i.ap, %bb.f ], [ %i.ba, %bb.i ]
  %.sroa.12.0.i = phi ptr [ %i.an, %bb.f ], [ %i.ay, %bb.i ]
  %storemerge.i.i.i.i = phi ptr [ %i.au, %bb.f ], [ %i.bd, %bb.i ] ; 3 uses
  %.not3.i.i.i.i = icmp eq ptr %i.aq, %storemerge.i.i.i.i
  br i1 %.not3.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i, %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i ], [ %i.aq, %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i ] ; 4 uses
  %.sroa.10.05.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i ], [ %i.ap, %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i ] ; 2 uses
  %.sroa.13.04.i.i.i.i = phi ptr [ %.sroa.13.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i ], [ %i.an, %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.06.i.i.i.i, i8 0, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 40
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 64 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.10.05.i.i.i.i
  br i1 %i.bh, label %bb.j, label %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.13.04.i.i.i.i, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !165 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 512
  br label %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i

_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.sroa.13.1.i.i.i.i = phi ptr [ %i.bi, %bb.j ], [ %.sroa.13.04.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.10.1.i.i.i.i = phi ptr [ %i.bk, %bb.j ], [ %.sroa.10.05.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.bj, %bb.j ], [ %i.bg, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i.i, %storemerge.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !488

_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_EppEv.exit.i.i.i.i, %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE27_M_reserve_elements_at_backEm.exit.i
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8, !tbaa !165
  store ptr %.sroa.6.0.i, ptr %i.o, align 8, !tbaa !165
  store ptr %.sroa.9.0.i, ptr %i.af, align 8, !tbaa !165
  br label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split

bb.k:                                             ; preds = %bb.a
  %i.bl = icmp ult i64 %1, %i.ac
  br i1 %i.bl, label %bb.l, label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !161, !noalias !495 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.z, %i.bo
  %i.bq = ashr exact i64 %i.bp, 6
  %i.br = add nsw i64 %i.bq, %1                   ; 5 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i64 %i.br, 8
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds [64 x i8], ptr %i.x, i64 %1
  br label %_ZStplRKSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_El.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = lshr i64 %i.br, 3
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.bw = ashr i64 %i.br, 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bx = phi i64 [ %i.bv, %bb.o ], [ %i.bw, %bb.p ] ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !165, !noalias !495 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 512
  %i.cb = shl nsw i64 %i.bx, 3
  %i.cc = sub nsw i64 %i.br, %i.cb
  %i.cd = getelementptr inbounds [64 x i8], ptr %i.bz, i64 %i.cc
  br label %_ZStplRKSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_El.exit

_ZStplRKSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_El.exit: ; preds = %bb.n, %bb.q
  %.sroa.6.0 = phi ptr [ %i.w, %bb.n ], [ %i.ca, %bb.q ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %i.bn, %bb.n ], [ %i.bz, %bb.q ] ; 2 uses
  %.sroa.9.0 = phi ptr [ %i.f, %bb.n ], [ %i.by, %bb.q ] ; 4 uses
  %storemerge.i.i = phi ptr [ %i.bu, %bb.n ], [ %i.cd, %bb.q ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162, !noalias !496
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %storemerge.i.i, ptr %2, align 8, !tbaa !160
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.0, ptr %i.cg, align 8, !tbaa !161
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.6.0, ptr %i.ch, align 8, !tbaa !162
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.9.0, ptr %i.ci, align 8, !tbaa !163
  store ptr %i.n, ptr %3, align 8, !tbaa !160
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.cj, align 8, !tbaa !161
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !162
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.cl, align 8, !tbaa !163
  call void @_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %2, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %i.cn = icmp ult ptr %.sroa.9.0, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i, label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit

.lr.ph.i.i:                                       ; preds = %_ZStplRKSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_El.exit, %.lr.ph.i.i
  %.06.i.pn.i = phi ptr [ %.06.i.i, %.lr.ph.i.i ], [ %.sroa.9.0, %_ZStplRKSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_El.exit ]
  %.06.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i, i64 8 ; 3 uses
  %i.co = load ptr, ptr %.06.i.i, align 8, !tbaa !165
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef 512) #41
  %i.cp = icmp ult ptr %.06.i.i, %i.cm
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit, !llvm.loop !10

_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit: ; preds = %.lr.ph.i.i, %_ZStplRKSt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS2_PS2_El.exit
  store ptr %storemerge.i.i, ptr %i.a, align 8, !tbaa !165
  store ptr %.sroa.3.0, ptr %i.o, align 8, !tbaa !165
  store ptr %.sroa.6.0, ptr %i.ce, align 8, !tbaa !165
  br label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split

_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split: ; preds = %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit, %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i
  %.sroa.12.0.i.sink = phi ptr [ %.sroa.12.0.i, %_ZSt25__uninitialized_default_aISt15_Deque_iteratorIN4Json9OurReader9ErrorInfoERS3_PS3_ES3_EvT_S7_RSaIT0_E.exit.i ], [ %.sroa.9.0, %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE15_M_erase_at_endESt15_Deque_iteratorIS2_RS2_PS2_E.exit ]
  store ptr %.sroa.12.0.i.sink, ptr %i.c, align 8, !tbaa !166
  br label %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit

_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZNSt5dequeIN4Json9OurReader9ErrorInfoESaIS2_EE17_M_default_appendEm.exit.sink.split, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4Json9OurReader24getLocationLineAndColumnEPKcRiS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(281) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 5 uses
  store i32 0, ptr %2, align 4, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = icmp uge ptr %i.b, %1
  %i.e = load ptr, ptr %i.c, align 8
  %.not22 = icmp eq ptr %i.b, %i.e
  %or.cond23 = select i1 %i.d, i1 true, i1 %.not22
  br i1 %or.cond23, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.025 = phi ptr [ %.1, %bb.c ], [ %i.b, %bb.a ]
  %.01824 = phi ptr [ %.2, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01824, i64 1 ; 4 uses
  %i.h = load i8, ptr %.01824, align 1, !tbaa !50
  switch i8 %i.h, label %bb.c [
    i8 13, label %bb.b
    i8 10, label %.sink.split
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i8, ptr %i.g, align 1, !tbaa !50
  %i.j = icmp eq i8 %i.i, 10
  %i.k = getelementptr inbounds nuw i8, ptr %.01824, i64 2
  %spec.select = select i1 %i.j, ptr %i.k, ptr %i.g
end_hunk_1
begin_hunk_2_@_ZNK4Json5Value14getMemberNamesB5cxx11Ev:bb.a
  %.sroa.050.095 = phi ptr [ %.sroa.050.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 12 uses
  %.sroa.10.094 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 8 uses
  %.sroa.047.093 = phi ptr [ %i.bf, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ %i.o, %bb.j ] ; 3 uses
  %.sroa.15.092 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit ], [ null, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.094, %.sroa.15.092
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.q = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.q, ptr %.sroa.10.094, align 8, !tbaa !192
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.r = ptrtoint ptr %.sroa.10.094 to i64        ; 2 uses
  %i.s = ptrtoint ptr %.sroa.050.095 to i64       ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.m, label %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.127) #44
          to label %.noexc unwind label %.loopexit.split-lp68

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #43
          to label %.noexc19 unwind label %.loopexit67 ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = ptrtoint ptr %.sroa.047.093 to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !192
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.050.095, %.sroa.10.094
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc19
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = add i64 %i.r, -8
  %i.ag = sub i64 %i.af, %i.s                     ; 3 uses
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 24
  %i.aj = sub i64 %i.s, %i.ae
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check155 = icmp ult i64 %i.ag, 120
  br i1 %min.iters.check155, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.ai, 12
  %n.vec = and i64 %i.ai, 4611686018427387888     ; 4 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 %i.al  ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.050.095, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ao ; 4 uses
  %next.gep156 = getelementptr i8, ptr %.sroa.050.095, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.ap = getelementptr i8, ptr %next.gep156, i64 32
  %i.aq = getelementptr i8, ptr %next.gep156, i64 64
  %i.ar = getelementptr i8, ptr %next.gep156, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep156, align 8, !tbaa !192, !alias.scope !539
  %wide.load157 = load <4 x i64>, ptr %i.ap, align 8, !tbaa !192, !alias.scope !539
  %wide.load158 = load <4 x i64>, ptr %i.aq, align 8, !tbaa !192, !alias.scope !539
  %wide.load159 = load <4 x i64>, ptr %i.ar, align 8, !tbaa !192, !alias.scope !539
  %i.as = getelementptr i8, ptr %next.gep, i64 32
  %i.at = getelementptr i8, ptr %next.gep, i64 64
  %i.au = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !192, !alias.scope !538
  store <4 x i64> %wide.load157, ptr %i.as, align 8, !tbaa !192, !alias.scope !538
  store <4 x i64> %wide.load158, ptr %i.at, align 8, !tbaa !192, !alias.scope !538
  store <4 x i64> %wide.load159, ptr %i.au, align 8, !tbaa !192, !alias.scope !538
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !540

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec160 = and i64 %i.ai, 4611686018427387900  ; 3 uses
  %i.aw = shl i64 %n.vec160, 3                    ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ab, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.050.095, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index161 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next165, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index161, 3                    ; 2 uses
  %next.gep162 = getelementptr i8, ptr %i.ab, i64 %i.az
  %next.gep163 = getelementptr i8, ptr %.sroa.050.095, i64 %i.az
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %wide.load164 = load <4 x i64>, ptr %next.gep163, align 8, !tbaa !192, !alias.scope !539
  store <4 x i64> %wide.load164, ptr %next.gep162, align 8, !tbaa !192, !alias.scope !538
  %index.next165 = add nuw i64 %index161, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next165, %n.vec160
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !531

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n166 = icmp eq i64 %i.ai, %n.vec160
  br i1 %cmp.n166, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.050.095, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.bb = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !539
  store i64 %i.bb, ptr %.012.i.i.i.i.i, align 8, !tbaa !192, !alias.scope !538
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, %.sroa.10.094
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !532

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ab, %.noexc19 ], [ %i.ax, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.050.095, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.095, i64 noundef %i.t) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit

_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.k
  %.sroa.15.1 = phi ptr [ %i.be, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.15.092, %bb.k ] ; 7 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.10.094, %bb.k ] ; 4 uses
  %.sroa.050.1 = phi ptr [ %i.ab, %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %.sroa.050.095, %bb.k ] ; 24 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 10 uses
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.047.093) #45 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !533

.loopexit67:                                      ; preds = %_ZNKSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp68:                             ; preds = %bb.m, %bb.o
  %.sroa.15.090 = phi ptr [ %.sroa.10.094, %bb.m ], [ %.sroa.15.1, %bb.o ]
  %.sroa.050.081 = phi ptr [ %.sroa.050.095, %bb.m ], [ %.sroa.050.1, %bb.o ]
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge:                                      ; preds = %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EE9push_backERKS7_.exit
  %.not.i.i = icmp eq ptr %.sroa.050.1, %.sroa.10.1
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bg = ptrtoint ptr %.sroa.10.1 to i64
  %i.bh = ptrtoint ptr %.sroa.050.1 to i64        ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bj, i1 true)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = xor i64 %i.bl, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_T1_(ptr %.sroa.050.1, ptr nonnull %.sroa.10.1, i64 noundef %i.bm, ptr nonnull @_ZN4Json12_GLOBAL__N_110sort_orderERKSt23_Rb_tree_const_iteratorISt4pairIKNS_5Value8CZStringES3_EES9_)
          to label %.noexc20 unwind label %.loopexit.split-lp68

.noexc20:                                         ; preds = %bb.o
  %i.bn = icmp sgt i64 %i.bi, 128
  %scevgep.i = getelementptr i8, ptr %.sroa.050.1, i64 8 ; 2 uses
  br i1 %i.bn, label %.lr.ph.i.i, label %bb.v

.lr.ph.i.i:                                       ; preds = %.noexc20
  %.pre110 = load ptr, ptr %.sroa.050.1, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bo = phi ptr [ %.pre110, %.lr.ph.i.i ], [ %i.ch, %bb.u ] ; 2 uses
  %.sroa.0.023.i.idx.i = phi i64 [ 8, %.lr.ph.i.i ], [ %.sroa.0.023.i.add.i, %bb.u ] ; 4 uses
  %.pn22.i.i = phi ptr [ %.sroa.050.1, %.lr.ph.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.u ] ; 3 uses
  %5 = ptrtoint ptr %i.bo to i64
  %.sroa.0.023.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 %.sroa.0.023.i.idx.i ; 4 uses
  %i.bp = load ptr, ptr %.sroa.0.023.i.ptr.i, align 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !195 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !195
  %i.bu = icmp ult i64 %i.br, %i.bt
  %i.bv = ptrtoint ptr %i.bp to i64
  br i1 %i.bu, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp samesign ugt i64 %.sroa.0.023.i.idx.i, 8
  br i1 %i.bw, label %bb.r, label %bb.s, !prof !196

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %.sroa.0.023.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn22.i.i, i64 8
  store i64 %5, ptr %i.bx, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.s, %bb.r
  store ptr %i.bp, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %.pn22.i.i, align 8       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !195
  %i.cb = icmp ult i64 %i.br, %i.ca
  br i1 %i.cb, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %.lr.ph.i.i.i
  %.in131 = phi ptr [ %i.cd, %.lr.ph.i.i.i ], [ %i.by, %bb.t ]
  %.sroa.0.09.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.pn22.i.i, %bb.t ] ; 3 uses
  %.sroa.04.08.i.i.i = phi ptr [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.023.i.ptr.i, %bb.t ]
  %i.cc = ptrtoint ptr %.in131 to i64
  store i64 %i.cc, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !192
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i, i64 -8 ; 2 uses
  %i.cd = load ptr, ptr %.sroa.0.0.i.i.i, align 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !195
  %i.cg = icmp ult i64 %i.br, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, !llvm.loop !534

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.t
  %.sroa.04.0.lcssa.i.i.i = phi ptr [ %.sroa.0.023.i.ptr.i, %bb.t ], [ %.sroa.0.09.i.i.i, %.lr.ph.i.i.i ]
  store i64 %i.bv, ptr %.sroa.04.0.lcssa.i.i.i, align 8, !tbaa !192
  %.pre109 = load ptr, ptr %.sroa.050.1, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %i.ch = phi ptr [ %.pre109, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i.i ], [ %i.bp, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i ]
  %.sroa.0.023.i.add.i = add nuw nsw i64 %.sroa.0.023.i.idx.i, 8 ; 2 uses
  %.not.i.i36 = icmp eq i64 %.sroa.0.023.i.add.i, 128
  br i1 %.not.i.i36, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, label %bb.p, !llvm.loop !535

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i: ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.050.1, i64 128 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ci, %.sroa.10.1
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i
  %.sroa.0.08.i.i = phi ptr [ %i.cw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ %i.ci, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ] ; 6 uses
  %i.cj = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !192 ; 2 uses
  %i.ck = inttoptr i64 %i.cj to ptr
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !195 ; 2 uses
  %i.cn = load ptr, ptr %.sroa.0.07.i.i.i, align 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !195
  %i.cq = icmp ult i64 %i.cm, %i.cp
  br i1 %i.cq, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i

.lr.ph.i.i14.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i14.i
  %.in132 = phi ptr [ %i.cs, %.lr.ph.i.i14.i ], [ %i.cn, %.lr.ph.i10.i ]
  %.sroa.0.09.i.i15.i = phi ptr [ %.sroa.0.0.i.i17.i, %.lr.ph.i.i14.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i10.i ] ; 3 uses
  %.sroa.04.08.i.i16.i = phi ptr [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  %i.cr = ptrtoint ptr %.in132 to i64
  store i64 %i.cr, ptr %.sroa.04.08.i.i16.i, align 8, !tbaa !192
  %.sroa.0.0.i.i17.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i, i64 -8 ; 2 uses
  %i.cs = load ptr, ptr %.sroa.0.0.i.i17.i, align 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !195
  %i.cv = icmp ult i64 %i.cm, %i.cu
  br i1 %i.cv, label %.lr.ph.i.i14.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i, !llvm.loop !534

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i14.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i15.i, %.lr.ph.i.i14.i ]
  store i64 %i.cj, ptr %.sroa.04.0.lcssa.i.i12.i, align 8, !tbaa !192
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 8
  %.not.i13.i = icmp eq ptr %.sroa.0.08.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i13.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !536

bb.v:                                             ; preds = %.noexc20
  %.not21.i20.i = icmp eq ptr %.sroa.050.1, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not21.i20.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %bb.v
  %.pre108 = load ptr, ptr %.sroa.050.1, align 8
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %bb.ab
  %6 = phi ptr [ %i.dx, %bb.ab ], [ %.pre108, %.lr.ph.i21.i.preheader ] ; 2 uses
  %i.cx = phi ptr [ %.sroa.0.0.i26.i, %bb.ab ], [ %scevgep.i, %.lr.ph.i21.i.preheader ] ; 7 uses
  %.sroa.0.023.i22.i = phi ptr [ %i.cx, %bb.ab ], [ %.sroa.050.1, %.lr.ph.i21.i.preheader ] ; 4 uses
  %7 = ptrtoint ptr %6 to i64
  %i.cy = load ptr, ptr %i.cx, align 8            ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !195 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !195
  %i.dd = icmp ult i64 %i.da, %i.dc
  %i.de = ptrtoint ptr %i.cy to i64
  br i1 %i.dd, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %.lr.ph.i21.i
  %i.df = ptrtoint ptr %i.cx to i64
  %i.dg = sub i64 %i.df, %i.bh                    ; 3 uses
  %i.dh = ashr exact i64 %i.dg, 3                 ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 1
  br i1 %i.di, label %bb.x, label %bb.y, !prof !196

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i22.i, i64 16
  %i.dk = sub nsw i64 0, %i.dh
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.dk
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dl, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.050.1, i64 %i.dg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.y:                                             ; preds = %bb.w
  %i.dm = icmp eq i64 %i.dg, 8
  br i1 %i.dm, label %bb.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i22.i, i64 8
  store i64 %7, ptr %i.dn, align 8, !tbaa !192
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.z, %bb.y, %bb.x
  store ptr %i.cy, ptr %.sroa.050.1, align 8, !tbaa !192
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i21.i
  %i.do = load ptr, ptr %.sroa.0.023.i22.i, align 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !195
  %i.dr = icmp ult i64 %i.da, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i

.lr.ph.i.i28.i:                                   ; preds = %bb.aa, %.lr.ph.i.i28.i
  %.in = phi ptr [ %i.dt, %.lr.ph.i.i28.i ], [ %i.do, %bb.aa ]
  %.sroa.0.09.i.i29.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i28.i ], [ %.sroa.0.023.i22.i, %bb.aa ] ; 3 uses
  %.sroa.04.08.i.i30.i = phi ptr [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ], [ %i.cx, %bb.aa ]
  %i.ds = ptrtoint ptr %.in to i64
  store i64 %i.ds, ptr %.sroa.04.08.i.i30.i, align 8, !tbaa !192
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i, i64 -8 ; 2 uses
  %i.dt = load ptr, ptr %.sroa.0.0.i.i31.i, align 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !195
  %i.dw = icmp ult i64 %i.da, %i.dv
  br i1 %i.dw, label %.lr.ph.i.i28.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i, !llvm.loop !534

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i: ; preds = %.lr.ph.i.i28.i, %bb.aa
  %.sroa.04.0.lcssa.i.i25.i = phi ptr [ %i.cx, %bb.aa ], [ %.sroa.0.09.i.i29.i, %.lr.ph.i.i28.i ]
  store i64 %i.de, ptr %.sroa.04.0.lcssa.i.i25.i, align 8, !tbaa !192
  %.pre = load ptr, ptr %.sroa.050.1, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %i.dx = phi ptr [ %.pre, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i24.i ], [ %i.cy, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i ]
  %.sroa.0.0.i26.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.not.i27.i = icmp eq ptr %i.cx, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i27.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit, label %.lr.ph.i21.i, !llvm.loop !535

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit: ; preds = %bb.ab, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i, %bb.j, %._crit_edge, %bb.v, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i
  %.not.i.i144 = phi i1 [ false, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ true, %bb.j ], [ false, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ true, %._crit_edge ], [ false, %bb.v ], [ false, %bb.ab ]
  %.sroa.050.0.lcssa141 = phi ptr [ %.sroa.050.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.050.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.050.1, %._crit_edge ], [ %.sroa.050.1, %bb.v ], [ %.sroa.050.1, %bb.ab ] ; 5 uses
  %.sroa.10.0.lcssa140 = phi ptr [ %.sroa.10.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.10.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.10.1, %._crit_edge ], [ %.sroa.10.1, %bb.v ], [ %.sroa.10.1, %bb.ab ]
  %.sroa.15.0.lcssa137 = phi ptr [ %.sroa.15.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIPFbRKS9_SI_EEEEvT_T0_.exit.i11.i ], [ null, %bb.j ], [ %.sroa.15.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS9_SI_EEEEvT_SM_T0_.exit.i ], [ %.sroa.15.1, %._crit_edge ], [ %.sroa.15.1, %bb.v ], [ %.sroa.15.1, %bb.ab ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.dy = load ptr, ptr %1, align 8, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !129
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ea)
          to label %.preheader unwind label %bb.al

.preheader:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit
  br i1 %.not.i.i144, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.sroa.040.099 = phi ptr [ %.sroa.050.0.lcssa141, %.lr.ph100 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ef = load ptr, ptr %.sroa.040.099, align 8, !tbaa !198 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !200 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ej = load i32, ptr %i.ei, align 8            ; 2 uses
  %i.ek = lshr i32 %i.ej, 2                       ; 3 uses
  %i.el = zext nneg i32 %i.ek to i64              ; 2 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !46
  %i.em = icmp eq ptr %i.eh, null
  %i.en = icmp ne i32 %i.ek, 0
  %or.cond.i = and i1 %i.em, %i.en
  br i1 %or.cond.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.121) #44
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 %i.el, ptr %i.a, align 8, !tbaa !113
  %i.eo = icmp ugt i32 %i.ej, 63
  br i1 %i.eo, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ae
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.ep, ptr %4, align 8, !tbaa !78
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !113
  store i64 %i.eq, ptr %i.eb, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.ae
  %i.er = phi ptr [ %i.ep, %.noexc23 ], [ %i.eb, %bb.ae ] ; 2 uses
  switch i32 %i.ek, label %bb.ag [
    i32 1, label %bb.af
    i32 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.es = load i8, ptr %i.eh, align 1, !tbaa !50
  store i8 %i.es, ptr %i.er, align 1, !tbaa !50
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.eh, i64 %i.el, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i
  %i.et = load i64, ptr %i.a, align 8, !tbaa !113 ; 2 uses
  store i64 %i.et, ptr %i.ec, align 8, !tbaa !49
  %i.eu = load ptr, ptr %4, align 8, !tbaa !78
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ew = load ptr, ptr %i.ed, align 8, !tbaa !189 ; 6 uses
  %i.ex = load ptr, ptr %i.ee, align 8, !tbaa !191
  %.not.i.i24 = icmp eq ptr %i.ew, %i.ex
  br i1 %.not.i.i24, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 3 uses
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !46
  %i.ez = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.eb
  br i1 %i.fa, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load i64, ptr %i.ec, align 8, !tbaa !49 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nuw nsw i64 %i.fb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ey, ptr noundef nonnull align 8 dereferenceable(1) %i.eb, i64 %i.fd, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  store ptr %i.ez, ptr %i.ew, align 8, !tbaa !78
  %i.fe = load i64, ptr %i.eb, align 8, !tbaa !50
  store i64 %i.fe, ptr %i.ey, align 8, !tbaa !50
  %.pre111 = load i64, ptr %i.ec, align 8, !tbaa !49
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ff = phi i64 [ %.pre111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fb, %bb.aj ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !49
  store ptr %i.eb, ptr %4, align 8, !tbaa !78
  store i64 0, ptr %i.ec, align 8, !tbaa !49
  %i.fh = load ptr, ptr %i.ed, align 8, !tbaa !189
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store ptr %i.fi, ptr %i.ed, align 8, !tbaa !189
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.ak:                                            ; preds = %bb.ah
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.am

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.ak
  %.pre112 = load ptr, ptr %4, align 8, !tbaa !78 ; 2 uses
  %i.fj = icmp eq ptr %.pre112, %i.eb
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.fk = load i64, ptr %i.eb, align 8, !tbaa !50
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %.pre112, i64 noundef %i.fl) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.040.099, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.fm, %.sroa.10.0.lcssa140
  br i1 %.not65, label %._crit_edge101, label %bb.ac, !llvm.loop !537

bb.al:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES5_EESt6vectorIS9_SaIS9_EEEEPFbRKS9_SG_EEvT_SJ_T0_.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.ad
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.am:                                            ; preds = %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load ptr, ptr %4, align 8, !tbaa !78    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.eb
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.am
  %i.fr = load i64, ptr %i.eb, align 8, !tbaa !50
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.am, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %.pn13 = phi { ptr, i32 } [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fo, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.ao

._crit_edge101:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %.preheader
  %.not.i.i.i32 = icmp eq ptr %.sroa.050.0.lcssa141, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %._crit_edge101
  %i.ft = ptrtoint ptr %.sroa.15.0.lcssa137 to i64
  %i.fu = ptrtoint ptr %.sroa.050.0.lcssa141 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0.lcssa141, i64 noundef %i.fv) #41
  br label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %bb.al
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.fn, %bb.al ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #40
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit67, %.loopexit.split-lp68, %bb.ao
  %.sroa.15.086 = phi ptr [ %.sroa.15.0.lcssa137, %bb.ao ], [ %.sroa.10.094, %.loopexit67 ], [ %.sroa.15.090, %.loopexit.split-lp68 ]
  %.sroa.050.077 = phi ptr [ %.sroa.050.0.lcssa141, %bb.ao ], [ %.sroa.050.095, %.loopexit67 ], [ %.sroa.050.081, %.loopexit.split-lp68 ] ; 3 uses
  %.pn16 = phi { ptr, i32 } [ %.pn13.pn, %bb.ao ], [ %lpad.loopexit69, %.loopexit67 ], [ %lpad.loopexit.split-lp70, %.loopexit.split-lp68 ] ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.sroa.050.077, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt23_Rb_tree_const_iteratorISt4pairIKN4Json5Value8CZStringES3_EESaIS7_EED2Ev.exit34, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = ptrtoint ptr %.sroa.15.086 to i64
  %i.fx = ptrtoint ptr %.sroa.050.077 to i64
  %i.fy = sub i64 %i.fw, %i.fx
end_hunk_2
