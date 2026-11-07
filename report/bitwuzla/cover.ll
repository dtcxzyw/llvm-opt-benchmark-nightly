Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/cover?download=true
inline.NumInlined: 936
inline.NumDeleted: 312
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal11cover_roundEv:bb.a
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0200.6) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

.body166:                                         ; preds = %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp254.loopexit.split-lp, %.loopexit.split-lp248.loopexit.split-lp, %bb.aw, %bb.bh
  %.sroa.0200.8 = phi ptr [ %.sroa.0200.6, %bb.bh ], [ %.sroa.0200.6, %.loopexit ], [ %.sroa.0200.2335, %.loopexit.split-lp248.loopexit.split-lp ], [ %.sroa.0200.6, %bb.aw ], [ %.sroa.0200.4326, %.loopexit.split-lp254.loopexit.split-lp ], [ %.sroa.0200.7.ph, %.loopexit.split-lp ], [ %.sroa.0200.0313, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn120.pn = phi { ptr, i32 } [ %i.jg, %bb.bh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp462, %.loopexit.split-lp248.loopexit.split-lp ], [ %i.gu, %bb.aw ], [ %lpad.loopexit.split-lp467, %.loopexit.split-lp254.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp477, %.loopexit.split-lp260.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN7CaDiCaL7CoverorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.not.i.i.i172 = icmp eq ptr %.sroa.0200.8, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit173, label %bb.cj

bb.cj:                                            ; preds = %.body166
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0200.8) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit173

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit173: ; preds = %.body166, %bb.cj
  resume { ptr, i32 } %.pn120.pn

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %bb.ci, %_ZN7CaDiCaL7CoverorD2Ev.exit, %bb.a
  %.060 = phi i64 [ 0, %bb.a ], [ %.0271, %_ZN7CaDiCaL7CoverorD2Ev.exit ], [ %.0271, %bb.ci ]
  ret i64 %.060
}

declare void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(7288), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL7CoverorD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !175  ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIiSaIiEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit4

_ZNSt6vectorIiSaIiEED2Ev.exit4:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2, %bb.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !175    ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit4, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal5coverEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3336
  %i.b = load i32, ptr %i.a, align 8, !tbaa !275
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4, !range !191
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.g = load volatile i8, ptr %i.f, align 8, !tbaa !197, !range !191, !noundef !192
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !198  ; 3 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !198
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !217  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.i, align 8, !tbaa !218  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.i, align 8, !tbaa !218
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.u = load i32, ptr %i.t, align 4, !tbaa !219
  store i32 %i.u, ptr %i.i, align 8, !tbaa !218
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !1
  br i1 %i.y, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.f, align 8, !tbaa !197
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4224
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !196
  %.not23 = icmp eq i64 %i.aa, 0
  br i1 %.not23, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3692
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !276
  %.not24 = icmp eq i32 %i.ac, 0
  br i1 %.not24, label %bb.j, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !277
  %.not.i39 = icmp eq i32 %i.ae, 0
  br i1 %.not.i39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.k, %bb.l
  %i.ah = phi double [ %i.af, %bb.k ], [ %i.ag, %bb.l ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 10 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !193 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3608
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !278 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !279, !range !191, !noundef !192
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !280, !range !191, !noundef !192
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.at = load i8, ptr %i.as, align 4, !tbaa !281, !range !191, !noundef !192
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.o, label %.thread54

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 6800
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !282
  %.not25 = icmp sgt i32 %i.aw, %i.al
  br i1 %.not25, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.aj, ptr noundef nonnull align 8 dereferenceable(36) %i.ax, double noundef %i.ah)
  %.pre.a = load i8, ptr %i.as, align 4, !tbaa !281
  %.pre44.pre = load ptr, ptr %i.ai, align 8, !tbaa !193 ; 2 uses
  %i.ay = trunc nuw i8 %.pre.a to i1
  br i1 %i.ay, label %.thread, label %.thread54

.thread54:                                        ; preds = %bb.p, %bb.n
  %.pre4456 = phi ptr [ %i.aj, %bb.n ], [ %.pre44.pre, %bb.p ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pre4456, i64 7040
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !283
  %.not26 = icmp sgt i32 %i.ba, %i.al
  br i1 %.not26, label %.thread, label %bb.q

bb.q:                                             ; preds = %.thread54
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre4456, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre4456, ptr noundef nonnull align 8 dereferenceable(36) %i.bb, double noundef %i.ah)
  %.pre43 = load ptr, ptr %i.ai, align 8, !tbaa !193
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.q, %.thread54, %bb.p
  %i.bc = phi ptr [ %.pre43, %bb.q ], [ %.pre4456, %.thread54 ], [ %.pre44.pre, %bb.p ], [ %i.aj, %bb.o ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6720
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !284
  %.not27 = icmp sgt i32 %i.be, %i.al
  br i1 %.not27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bc, ptr noundef nonnull align 8 dereferenceable(36) %i.bf, double noundef %i.ah)
  %.pre45.pre = load ptr, ptr %i.ai, align 8, !tbaa !193
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread
  %.pre45 = phi ptr [ %.pre45.pre, %bb.r ], [ %i.bc, %.thread ]
  %i.bg = load i32, ptr %0, align 8, !tbaa !285
  %i.bh = and i32 %i.bg, -257
  store i32 %i.bh, ptr %0, align 8, !tbaa !285
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.bi = phi ptr [ %.pre45, %bb.s ], [ %i.aj, %bb.m ], [ %i.aj, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6880
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !286
  %.not28 = icmp sgt i32 %i.bk, %i.al
  br i1 %.not28, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bi, ptr noundef nonnull align 8 dereferenceable(36) %i.bl, double noundef %i.ah)
  %.pre46 = load ptr, ptr %i.ai, align 8, !tbaa !193
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bm = phi ptr [ %.pre46, %bb.u ], [ %i.bi, %bb.t ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6040
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !287
  %.not29 = icmp sgt i32 %i.bo, %i.al
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 6008
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bm, ptr noundef nonnull align 8 dereferenceable(36) %i.bp, double noundef %i.ah)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bq = load i32, ptr %0, align 8, !tbaa !285
  %i.br = or i32 %i.bq, 516
  store i32 %i.br, ptr %0, align 8, !tbaa !285
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4272 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !194
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !194
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !288
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !173
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !175
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  %i.cf = icmp ult i64 %i.bw, %i.ce
  br i1 %i.cf, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN7CaDiCaL8Internal12init_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  tail call void @_ZN7CaDiCaL8Internal15connect_watchesEb(ptr noundef nonnull align 8 dereferenceable(7288) %0, i1 noundef zeroext false)
  %i.cg = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @_ZN7CaDiCaL8Internal13reset_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.ch = tail call noundef i64 @_ZN7CaDiCaL8Internal11cover_roundEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !277
  %.not.i40 = icmp eq i32 %i.ci, 0
  br i1 %.not.i40, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cj = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit41

bb.ad:                                            ; preds = %bb.ab
  %i.ck = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit41

_ZN7CaDiCaL8Internal4timeEv.exit41:               ; preds = %bb.ac, %bb.ad
  %i.cl = phi double [ %i.cj, %bb.ac ], [ %i.ck, %bb.ad ] ; 5 uses
  %i.cm = load ptr, ptr %i.ai, align 8, !tbaa !193 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 3608
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !278 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 6040
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !287
  %.not30 = icmp sgt i32 %i.cq, %i.co
  br i1 %.not30, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 6008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.cm, ptr noundef nonnull align 8 dereferenceable(36) %i.cr, double noundef %i.cl)
  %.pre47 = load ptr, ptr %i.ai, align 8, !tbaa !193
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN7CaDiCaL8Internal4timeEv.exit41
  %i.cs = phi ptr [ %.pre47, %bb.ae ], [ %i.cm, %_ZN7CaDiCaL8Internal4timeEv.exit41 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 6880
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !286
  %.not31 = icmp sgt i32 %i.cu, %i.co
  br i1 %.not31, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 6848
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.cs, ptr noundef nonnull align 8 dereferenceable(36) %i.cv, double noundef %i.cl)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cw = load i32, ptr %0, align 8, !tbaa !285
  %i.cx = and i32 %i.cw, -517
  store i32 %i.cx, ptr %0, align 8, !tbaa !285
  %i.cy = load i8, ptr %i.am, align 8, !tbaa !279, !range !191, !noundef !192
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.db = load i8, ptr %i.da, align 1, !tbaa !280, !range !191, !noundef !192
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dd = load ptr, ptr %i.ai, align 8, !tbaa !193 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6720
  %i.df = load i32, ptr %i.de, align 8, !tbaa !284
  %.not32 = icmp sgt i32 %i.df, %i.co
  br i1 %.not32, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 6688
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.dd, ptr noundef nonnull align 8 dereferenceable(36) %i.dg, double noundef %i.cl)
  %.pre53.pre = load ptr, ptr %i.ai, align 8, !tbaa !193
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pre53 = phi ptr [ %.pre53.pre, %bb.ak ], [ %i.dd, %bb.aj ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !281, !range !191, !noundef !192
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.am, label %.thread58

bb.am:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre53, i64 6800
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !282
  %.not33 = icmp sgt i32 %i.dl, %i.co
  br i1 %.not33, label %.thread57, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre53, i64 6768
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre53, ptr noundef nonnull align 8 dereferenceable(36) %i.dm, double noundef %i.cl)
  %.pre48 = load i8, ptr %i.dh, align 4, !tbaa !281
  %i.dn = trunc nuw i8 %.pre48 to i1
  br i1 %i.dn, label %.thread57, label %..thread45_crit_edge

..thread45_crit_edge:                             ; preds = %bb.an
  %.pre52 = load ptr, ptr %i.ai, align 8, !tbaa !193
  br label %.thread58

.thread58:                                        ; preds = %..thread45_crit_edge, %bb.al
  %1 = phi ptr [ %.pre52, %..thread45_crit_edge ], [ %.pre53, %bb.al ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 7040
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !283
  %.not34 = icmp sgt i32 %i.dp, %i.co
  br i1 %.not34, label %.thread57, label %bb.ao

bb.ao:                                            ; preds = %.thread58
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 7008
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull align 8 dereferenceable(36) %i.dq, double noundef %i.cl)
  br label %.thread57

.thread57:                                        ; preds = %bb.am, %bb.ao, %.thread58, %bb.an
  %i.dr = load i32, ptr %0, align 8, !tbaa !285
  %i.ds = or i32 %i.dr, 256
  store i32 %i.ds, ptr %0, align 8, !tbaa !285
  br label %bb.ap

bb.ap:                                            ; preds = %.thread57, %bb.ai, %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !289
  %.not35 = icmp eq i32 %i.du, 0
  %.not36 = icmp eq i64 %i.ch, 0                  ; 2 uses
  %narrow = and i1 %.not36, %.not35
  %i.dv = zext i1 %narrow to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 99, i32 noundef %i.dv)
  %.not36.not = xor i1 %.not36, true
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.b, %bb.i, %bb.h, %bb.a, %bb.ap
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.h ], [ %.not36.not, %bb.ap ], [ false, %bb.b ], [ false, %.sink.split.i ]
  ret i1 %.0
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !175    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !168
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !168
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !173
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #14 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !168
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !168
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !175
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !173
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !174
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_SE_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i)
  %i.g = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit, !llvm.loop !290

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit17

.lr.ph.i15:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit, %.lr.ph.i15
  %.022.i16 = phi i64 [ %i.p, %.lr.ph.i15 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i16)
  %i.o = shl nuw nsw i64 %.022.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_25clause_covered_or_smallerEEEEvT_SE_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.022.i16, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit17, !llvm.loop !290

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit17: ; preds = %.lr.ph.i15, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_T1_.exit
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_25clause_covered_or_smallerEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
end_hunk_0
