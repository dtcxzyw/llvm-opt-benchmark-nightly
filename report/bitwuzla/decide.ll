Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/decide?download=true
inline.NumInlined: 236
inline.NumDeleted: 114
begin_hunk_0_@_ZN7CaDiCaL8Internal6decideEv:bb.a
  %.not15.i = icmp eq i8 %i.fu, 0
  br i1 %.not15.i, label %bb.ao, label %.thread23.i

.thread23.i:                                      ; preds = %bb.an
  %.125.i = sext i8 %i.fu to i32
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an, %..thread_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %..thread_crit_edge.i ], [ %i.fr, %bb.an ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !175
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.pre-phi.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !157 ; 2 uses
  %.1.i = sext i8 %i.fy to i32
  %.not16.i = icmp eq i8 %i.fy, 0
  br i1 %.not16.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 3512
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !176
  %.not17.i = icmp eq i32 %i.ga, 0
  %spec.select.i = select i1 %.not17.i, i32 0, i32 %i.fm
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.thread23.i
  %.2.i = phi i32 [ %.1.i, %bb.ao ], [ %spec.select.i, %bb.ap ], [ %.125.i, %.thread23.i ] ; 2 uses
  %i.gb = icmp eq i32 %.2.i, 0
  %or.cond.i = and i1 %i.fj, %i.gb
  br i1 %or.cond.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gd = sext i32 %.0.i76 to i64
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !175
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !157
  %i.gh = sext i8 %i.gg to i32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3.i = phi i32 [ %i.gh, %bb.ar ], [ %.2.i, %bb.aq ] ; 2 uses
  %.not18.i = icmp eq i32 %.3.i, 0
  br i1 %.not18.i, label %bb.at, label %_ZN7CaDiCaL8Internal12decide_phaseEib.exit

bb.at:                                            ; preds = %bb.as
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gj = sext i32 %.0.i76 to i64
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !175
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !157
  %i.gn = sext i8 %i.gm to i32
  br label %_ZN7CaDiCaL8Internal12decide_phaseEib.exit

_ZN7CaDiCaL8Internal12decide_phaseEib.exit:       ; preds = %bb.as, %bb.at
  %.4.i = phi i32 [ %.3.i, %bb.as ], [ %i.gn, %bb.at ] ; 2 uses
  %.not19.i = icmp eq i32 %.4.i, 0
  %spec.select20.i = select i1 %.not19.i, i32 %i.fm, i32 %.4.i
  %i.go = mul nsw i32 %spec.select20.i, %.0.i76
  br label %bb.au

bb.au:                                            ; preds = %_ZN7CaDiCaL8Internal12decide_phaseEib.exit, %bb.ag
  %.0 = phi i32 [ %i.bx, %bb.ag ], [ %i.go, %_ZN7CaDiCaL8Internal12decide_phaseEib.exit ]
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.0)
  br label %.thread93

bb.av:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit75, %bb.ac
  %.not70 = icmp eq i32 %i.cx, 0
  br i1 %.not70, label %.thread93, label %.thread98

.thread98:                                        ; preds = %bb.f, %bb.u, %bb.av
  %.350101 = phi i32 [ %i.cx, %bb.av ], [ 20, %bb.u ], [ 20, %bb.f ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1161
  store i8 0, ptr %i.gp, align 1, !tbaa !203
  br label %.thread93

.thread93:                                        ; preds = %bb.au, %bb.t, %bb.s, %bb.h, %bb.i, %bb.av, %.thread98
  %.35096 = phi i32 [ %.350101, %.thread98 ], [ 0, %bb.av ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.au ]
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !195 ; 7 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 6080
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !196
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 3608
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !197
  %.not71 = icmp sgt i32 %i.gs, %i.gu
  br i1 %.not71, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.thread93
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 6048
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 3620
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !198
  %.not.i78 = icmp eq i32 %i.gx, 0
  br i1 %.not.i78, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gy = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.gq)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit79

bb.ay:                                            ; preds = %bb.aw
  %i.gz = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.gq)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit79

_ZN7CaDiCaL8Internal4timeEv.exit79:               ; preds = %bb.ax, %bb.ay
  %i.ha = phi double [ %i.gy, %bb.ax ], [ %i.gz, %bb.ay ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.gq, ptr noundef nonnull align 8 dereferenceable(36) %i.gv, double noundef %i.ha)
  br label %bb.az

bb.az:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit79, %.thread93
  ret i32 %.35096
}

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #5

declare void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #5

declare void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN7CaDiCaL8Internal12ask_decisionEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #5

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #5

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #5

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_13score_smallerEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = add nuw nsw i64 %i.a, 1                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !166
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.g = phi ptr [ %i.cm, %bb.k ], [ %.pre, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !169  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.l, %i.a
  br i1 %.not.i.i, label %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.d, %i.l
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.h, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !166
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %.pre.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !156  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.u = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  %i.z = icmp ult i64 %i.s, %i.y
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !169 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.not.i.i13 = icmp ugt i64 %i.ae, %i.a
  br i1 %.not.i.i13, label %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sub nuw nsw i64 %i.d, %i.ae
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.aa, i64 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i14 = load ptr, ptr %i.b, align 8, !tbaa !166 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %i.a
  %.pre36.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !156
  %.pre37.a = load ptr, ptr %0, align 8, !tbaa !166
  %.pre38 = load ptr, ptr %i.c, align 8, !tbaa !169 ; 2 uses
  %.pre49 = ptrtoint ptr %.pre38 to i64
  %.pre51 = ptrtoint ptr %.pre.i.i14 to i64
  %.pre53 = sub i64 %.pre49, %.pre51
  %.pre55 = ashr exact i64 %.pre53, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit: ; preds = %bb.d, %bb.e
  %.pre-phi56 = phi i64 [ %i.ae, %bb.d ], [ %.pre55, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i14, %bb.e ]
  %i.ah = phi ptr [ %i.aa, %bb.d ], [ %.pre38, %bb.e ]
  %i.ai = phi ptr [ %i.u, %bb.d ], [ %.pre37.a, %bb.e ] ; 2 uses
  %i.aj = phi i32 [ %i.p, %bb.d ], [ %.pre36.a, %bb.e ] ; 2 uses
  %i.ak = shl i32 %i.aj, 1
  %i.al = or disjoint i32 %i.ak, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !156 ; 5 uses
  %.not.i.i15 = icmp ugt i64 %.pre-phi56, %i.a
  br i1 %.not.i.i15, label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit
  %i.ap = sub nuw nsw i64 %i.d, %.pre-phi56
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ah, i64 noundef %i.ap, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i16 = load ptr, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %.phi.trans.insert39 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i16, i64 %i.a
  %.pre40 = load i32, ptr %.phi.trans.insert39, align 4, !tbaa !156
  %.pre41 = load ptr, ptr %0, align 8, !tbaa !166
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit, %bb.f
  %i.aq = phi ptr [ %.pre.i.i16, %bb.f ], [ %i.ag, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 3 uses
  %i.ar = phi ptr [ %.pre41, %bb.f ], [ %i.ai, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 2 uses
  %i.as = phi i32 [ %.pre40, %bb.f ], [ %i.aj, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = add nuw nsw i64 %i.au, 2
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !169
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = icmp ult i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.g, label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge

_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit
  %.pre45 = load ptr, ptr %i.f, align 8, !tbaa !204
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %.pre45, i64 688
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8, !tbaa !193 ; 2 uses
  %.pre48 = zext i32 %i.ao to i64                 ; 2 uses
  %.phi.trans.insert41 = getelementptr inbounds nuw [8 x i8], ptr %.pre47, i64 %.pre48
  %.pre42 = load double, ptr %.phi.trans.insert41, align 8, !tbaa !194
  br label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25

bb.g:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !169 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.aq to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2                 ; 2 uses
  %.not.i.i17 = icmp ugt i64 %i.bg, %i.a
  br i1 %.not.i.i17, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = sub nuw nsw i64 %i.d, %i.bg
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bc, i64 noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i18 = load ptr, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %.phi.trans.insert42 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i18, i64 %i.a
  %.pre43.a = load i32, ptr %.phi.trans.insert42, align 4, !tbaa !156
  %.pre44 = load ptr, ptr %0, align 8, !tbaa !166
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit: ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %.pre.i.i18, %bb.h ], [ %i.aq, %bb.g ]
  %i.bj = phi ptr [ %.pre44, %bb.h ], [ %i.ar, %bb.g ]
  %i.bk = phi i32 [ %.pre43.a, %bb.h ], [ %i.as, %bb.g ]
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add i32 %i.bl, 2
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !156 ; 3 uses
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 688
  %i.bs = zext i32 %i.ao to i64
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !193 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !194 ; 3 uses
  %i.bw = zext i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !194 ; 3 uses
  %i.bz = fcmp olt double %i.bv, %i.by
  %2 = fcmp ule double %i.bv, %i.by
  %3 = icmp ugt i32 %i.ao, %i.bp
  %spec.select.i = and i1 %3, %2
  %.0.i = or i1 %i.bz, %spec.select.i             ; 2 uses
  %spec.select = select i1 %.0.i, i32 %i.bp, i32 %i.ao ; 2 uses
  %4 = select i1 %.0.i, double %i.by, double %i.bv
  %.pre43 = zext i32 %spec.select to i64
  br label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25

_ZN7CaDiCaL13score_smallerclEjj.exit.thread25:    ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit
  %.pre-phi = phi i64 [ %.pre48, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %.pre43, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 3 uses
  %5 = phi ptr [ %i.aq, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %i.bi, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 2 uses
  %6 = phi double [ %.pre42, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %4, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 2 uses
  %7 = phi ptr [ %.pre47, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %i.bt, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ]
  %.1 = phi i32 [ %i.ao, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._ZN7CaDiCaL13score_smallerclEjj.exit.thread25_crit_edge ], [ %spec.select, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.a
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !194 ; 2 uses
  %8 = fcmp olt double %i.cb, %6
  %9 = fcmp ule double %i.cb, %6
  %10 = icmp ugt i32 %1, %.1
  %spec.select.i19 = and i1 %10, %9
  %.0.i20 = or i1 %8, %spec.select.i19
  br i1 %.0.i20, label %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread, label %.thread

_ZN7CaDiCaL13score_smallerclEjj.exit20.thread:    ; preds = %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !169 ; 3 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %5 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2                 ; 3 uses
  %.not.i.i21 = icmp ugt i64 %i.cg, %i.a
  br i1 %.not.i.i21, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread
  %i.ch = sub nuw nsw i64 %i.d, %i.cg
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cc, i64 noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i22 = load ptr, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !169 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i22 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i: ; preds = %bb.i, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread
  %i.ci = phi ptr [ %5, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread ], [ %.pre.i.i22, %bb.i ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.cg, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread ], [ %.pre15.i, %bb.i ] ; 2 uses
  %i.cj = phi ptr [ %i.cc, %_ZN7CaDiCaL13score_smallerclEjj.exit20.thread ], [ %.pre.i, %bb.i ]
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %.pre-phi
  br i1 %.not.i6.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.ck = add nuw nsw i64 %.pre-phi, 1
  %i.cl = sub nuw nsw i64 %i.ck, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cj, i64 noundef %i.cl, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !166
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.cm = phi ptr [ %.pre.i7.i, %bb.j ], [ %i.ci, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.a ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.pre-phi ; 3 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !156
  %i.cq = zext i32 %i.cp to i64
  %i.cr = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cq ; 2 uses
  %i.ct = load i32, ptr %i.co, align 4, !tbaa !156
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !156
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !156
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !156
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !156
  %i.cy = load i32, ptr %i.cn, align 4, !tbaa !156
  %i.cz = load i32, ptr %i.co, align 4, !tbaa !156
  store i32 %i.cz, ptr %i.cn, align 4, !tbaa !156
  store i32 %i.cy, ptr %i.co, align 4, !tbaa !156
  br label %bb.b

.thread:                                          ; preds = %_ZN7CaDiCaL13score_smallerclEjj.exit.thread25, %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !169  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !156    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !206

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !169
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !156
  store i32 %i.s, ptr %i.d, align 4, !tbaa !156
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !169
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !206

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !156
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !156
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !156
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !156
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !207

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !210

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !156
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !212

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !169
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !206

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !169
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !156
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !156
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !169
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
end_hunk_0
