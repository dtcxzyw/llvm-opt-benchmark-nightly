Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/internal?download=true
inline.NumInlined: 2057
inline.NumDeleted: 1077
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal24renotify_trail_after_ilbEv

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal14already_solvedEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !261, !range !212, !noundef !213
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.e = load i8, ptr %i.d, align 8, !range !212
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond7 = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond7, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !299  ; 2 uses
  %.not = icmp ne i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.j = load i32, ptr %i.i, align 4
  %.not3 = icmp eq i32 %i.j, 0
  %or.cond9 = select i1 %.not, i1 %.not3, i1 false
  br i1 %or.cond9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %.pre = load i32, ptr %i.g, align 4, !tbaa !299
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.m = phi i1 [ true, %bb.d ], [ true, %bb.e ], [ false, %bb.f ]
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 20, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !169
  %i.p = icmp eq i32 %i.o, 0
  %or.cond = and i1 %i.m, %i.p
  %spec.store.select = select i1 %or.cond, i32 10, i32 %.0
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i32 [ %spec.store.select, %bb.g ], [ 20, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %i.b = load i32, ptr %i.a, align 8, !tbaa !480
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !481
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !481
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.k = load i32, ptr %i.j, align 8, !tbaa !482
  %i.l = icmp eq ptr %i.g, %i.i
  %i.m = icmp eq i32 %i.k, 0
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 42, i32 noundef 0)
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 43, i32 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171
  tail call void @_ZN7CaDiCaL8External15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(568) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !170
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %i.r, i8 noundef signext 114, i32 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i8, ptr %i.s, align 4, !tbaa !261, !range !212, !noundef !213
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.w = load i32, ptr %i.v, align 4, !tbaa !299
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 20, %bb.g ]
  ret i32 %.0
}

declare noundef i32 @_ZN7CaDiCaL8Internal12lucky_phasesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal8finalizeEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3104 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.d = load i8, ptr %i.c, align 1, !tbaa !483, !range !212, !noundef !213
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300, !nonnull !213, !align !301
  %i.j = load i32, ptr %i.i, align 4, !tbaa !174  ; 2 uses
  %.not7174 = icmp eq i32 %i.j, 0
  br i1 %.not7174, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !484, !nonnull !213, !align !301
  %i.m = load i32, ptr %i.l, align 4, !tbaa !174  ; 2 uses
  %i.n = xor i32 %i.m, -1
  %i.o = lshr i32 %i.m, 31
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %.not7276 = icmp eq i32 %i.p, -1
  br i1 %.not7276, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.f

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.sroa.062.075 = phi i32 [ %i.ad, %bb.e ], [ 1, %bb.c ] ; 4 uses
  %i.s = shl nsw i32 %.sroa.062.075, 1
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = sext i32 %i.s to i64
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !192
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !232  ; 2 uses
  %.not48 = icmp eq i64 %i.y, 0
  br i1 %.not48, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !232 ; 2 uses
  %.not49 = icmp eq i64 %i.aa, 0
  br i1 %.not49, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d
  %.03670 = phi i64 [ %i.aa, %bb.d ], [ %i.y, %.lr.ph ]
  %.03769 = phi i32 [ -1, %bb.d ], [ 1, %.lr.ph ]
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !223
  %i.ac = mul nsw i32 %.03769, %.sroa.062.075
  tail call void @_ZN7CaDiCaL5Proof22finalize_external_unitEmi(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, i64 noundef %.03670, i32 noundef %i.ac)
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.ad = add i32 %.sroa.062.075, 1
  %.not71 = icmp eq i32 %.sroa.062.075, %i.j
  br i1 %.not71, label %._crit_edge, label %.lr.ph

._crit_edge80:                                    ; preds = %bb.j, %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !222 ; 2 uses
  %.not7381 = icmp eq ptr %i.af, %i.ah
  br i1 %.not7381, label %._crit_edge85, label %.lr.ph84

bb.f:                                             ; preds = %.lr.ph79, %bb.j
  %.sroa.056.077 = phi i32 [ -1, %.lr.ph79 ], [ %i.bd, %bb.j ] ; 6 uses
  %i.ai = tail call i32 @llvm.abs.i32(i32 %.sroa.056.077, i1 true) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !184
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !174 ; 4 uses
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = icmp slt i32 %.sroa.056.077, 0
  %4 = sub nsw i32 0, %i.am
  %spec.select.i = select i1 %3, i32 %4, i32 %i.am
  %i.an = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %spec.select.i, i32 1)
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  %i.ar = zext i32 %i.ao to i64
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !192
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i64, ptr %i.at, align 8, !tbaa !232
  %.not46 = icmp eq i64 %i.au, 0
  br i1 %.not46, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.av = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 %.sroa.056.077, i32 1)
  %i.aw = sext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !192
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !232 ; 2 uses
  %.not47 = icmp eq i64 %i.az, 0
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !223
  tail call void @_ZN7CaDiCaL5Proof13finalize_unitEmi(ptr noundef nonnull align 8 dereferenceable(128) %i.ba, i64 noundef %i.az, i32 noundef %.sroa.056.077)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bb = xor i32 %.sroa.056.077, -1
  %i.bc = lshr i32 %.sroa.056.077, 31
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %.not72 = icmp eq i32 %i.bd, %i.p
  br i1 %.not72, label %._crit_edge80, label %bb.f

._crit_edge85:                                    ; preds = %bb.m, %._crit_edge80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !485 ; 2 uses
  %.not43 = icmp eq i64 %i.bf, 0
  %.pre86 = load ptr, ptr %i.a, align 8, !tbaa !223 ; 2 uses
  br i1 %.not43, label %bb.s, label %bb.n

.lr.ph84:                                         ; preds = %._crit_edge80, %bb.m
  %.sroa.052.082 = phi ptr [ %i.bo, %bb.m ], [ %i.af, %._crit_edge80 ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.052.082, align 8, !tbaa !224 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = and i32 %i.bi, 16
  %.not44 = icmp eq i32 %i.bj, 0
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph84
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !174
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.lr.ph84
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !223
  tail call void @_ZN7CaDiCaL5Proof15finalize_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noundef nonnull %i.bg)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.052.082, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.bo, %i.ah
  br i1 %.not73, label %._crit_edge85, label %.lr.ph84

bb.n:                                             ; preds = %._crit_edge85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN7CaDiCaL5Proof15finalize_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %.pre86, i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bp = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bp) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !223
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %2, align 8, !tbaa !184   ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIiSaIiEED2Ev.exit51, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.br) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51

_ZNSt6vectorIiSaIiEED2Ev.exit51:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bq

bb.s:                                             ; preds = %._crit_edge85, %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.b
  %i.bs = phi ptr [ %.pre86, %._crit_edge85 ], [ %.pre, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.b, %bb.b ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !485
  call void @_ZN7CaDiCaL5Proof13report_statusEim(ptr noundef nonnull align 8 dereferenceable(128) %i.bs, i32 noundef %1, i64 noundef %i.bu)
  switch i32 %1, label %bb.v [
    i32 10, label %bb.t
    i32 20, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !171
  call void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(568) %i.bw)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_ZN7CaDiCaL8Internal14conclude_unsatEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.a, %bb.t
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN7CaDiCaL8Internal13reset_solvingEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(7288) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.b = load volatile i8, ptr %i.a, align 8, !tbaa !172, !range !212, !noundef !213
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i8 0, ptr %i.a, align 8, !tbaa !172
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal14report_solvingEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %switch.selectcmp = icmp eq i32 %1, 20
  %switch.select = select i1 %switch.selectcmp, i8 48, i8 63
  %switch.selectcmp2 = icmp eq i32 %1, 10
  %switch.select3 = select i1 %switch.selectcmp2, i8 49, i8 %switch.select
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext %switch.select3, i32 noundef 0)
  ret void
}

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External15restore_clausesEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN7CaDiCaL8Internal9lookaheadEv(ptr noundef nonnull align 8 dereferenceable(7288) initializes((7, 8)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6320
  %i.d = load i32, ptr %i.c, align 8, !tbaa !215
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !211
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6288
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !214
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  store i8 1, ptr %i.m, align 1, !tbaa !486
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !297, !range !212, !noundef !213
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.r = load i32, ptr %i.q, align 4, !tbaa !299
  %.not10 = icmp eq i32 %i.r, 0
  br i1 %.not10, label %bb.h, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal16print_statisticsEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !227  ; 2 uses
  %.not7 = icmp eq ptr %i.c, %i.e
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.08 = phi ptr [ %i.j, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.04.08, align 8, !tbaa !230 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !226
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN7CaDiCaL5Stats5printEPNS_8InternalE(ptr noundef nonnull align 8 dereferenceable(1648), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.09, align 4, !tbaa !174
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.09, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8Internal4dumpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !235
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !300, !nonnull !213, !align !301
  %i.k = load i32, ptr %i.j, align 4, !tbaa !174  ; 5 uses
  %.not5459 = icmp eq i32 %i.k, 0
  br i1 %.not5459, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !228  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %xtraiter = and i32 %i.k, 1
  %i.p = icmp eq i32 %i.k, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.k, -2
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.061.epil.init = phi i64 [ %i.h, %.lr.ph ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.051.060.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod95 = trunc i32 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.051.060.epil.init, i1 true)
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !165
  %.not.i.epil = icmp eq i8 %i.t, 0
  br i1 %.not.i.epil, label %_ZN7CaDiCaL8Internal5fixedEi.exit.epil, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r
  %i.v = load i32, ptr %i.u, align 8, !tbaa !303
  %.not9.i.epil = icmp eq i32 %i.v, 0
  %i.w = zext i1 %.not9.i.epil to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit.epil

_ZN7CaDiCaL8Internal5fixedEi.exit.epil:           ; preds = %bb.b, %.epil.preheader
  %.0.i.epil = phi i64 [ 0, %.epil.preheader ], [ %i.w, %bb.b ]
  %spec.select.epil = add nsw i64 %.0.i.epil, %.061.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ %i.h, %bb.a ], [ %spec.select.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %_ZN7CaDiCaL8Internal5fixedEi.exit.epil ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !222  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !222 ; 2 uses
  %.not5562 = icmp eq ptr %i.y, %i.aa
  br i1 %.not5562, label %._crit_edge67, label %.lr.ph66

bb.c:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit.1, %.lr.ph.new
  %.061 = phi i64 [ %i.h, %.lr.ph.new ], [ %spec.select.1, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ]
  %.sroa.051.060 = phi i32 [ 1, %.lr.ph.new ], [ %i.aq, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZN7CaDiCaL8Internal5fixedEi.exit.1 ]
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.051.060, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !165
  %.not.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !303
  %.not9.i = icmp eq i32 %i.ag, 0
  %i.ah = zext i1 %.not9.i to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.c ], [ %i.ah, %bb.d ]
  %spec.select = add nsw i64 %.0.i, %.061
  %i.ai = add nuw i32 %.sroa.051.060, 1
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !165
  %.not.i.1 = icmp eq i8 %i.am, 0
  br i1 %.not.i.1, label %_ZN7CaDiCaL8Internal5fixedEi.exit.1, label %bb.e

bb.e:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.ak
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !303
  %.not9.i.1 = icmp eq i32 %i.ao, 0
  %i.ap = zext i1 %.not9.i.1 to i64
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit.1

_ZN7CaDiCaL8Internal5fixedEi.exit.1:              ; preds = %bb.e, %_ZN7CaDiCaL8Internal5fixedEi.exit
  %.0.i.1 = phi i64 [ 0, %_ZN7CaDiCaL8Internal5fixedEi.exit ], [ %i.ap, %bb.e ]
  %spec.select.1 = add nsw i64 %.0.i.1, %spec.select ; 3 uses
  %i.aq = add nuw i32 %.sroa.051.060, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c

._crit_edge67:                                    ; preds = %.lr.ph66, %._crit_edge
  %.2.lcssa = phi i64 [ %.0.lcssa, %._crit_edge ], [ %spec.select27, %.lr.ph66 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !169
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.as, i64 noundef %.2.lcssa) ; 0 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !300, !nonnull !213, !align !301
  %i.av = load i32, ptr %i.au, align 4, !tbaa !174 ; 2 uses
  %.not5669 = icmp eq i32 %i.av, 0
  br i1 %.not5669, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %._crit_edge67
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 712
  %.pre84 = load ptr, ptr %i.aw, align 8, !tbaa !228
  br label %bb.f

.lr.ph66:                                         ; preds = %._crit_edge, %.lr.ph66
  %.264 = phi i64 [ %spec.select27, %.lr.ph66 ], [ %.0.lcssa, %._crit_edge ]
  %.sroa.047.063 = phi ptr [ %i.bd, %.lr.ph66 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.047.063, align 8, !tbaa !224
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, 16
  %.not25 = icmp eq i32 %i.bb, 0
  %i.bc = zext i1 %.not25 to i64
  %spec.select27 = add nsw i64 %.264, %i.bc       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.047.063, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.bd, %i.aa
  br i1 %.not55, label %._crit_edge67, label %.lr.ph66

._crit_edge73:                                    ; preds = %bb.i, %._crit_edge67
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !222 ; 2 uses
  %i.bf = load ptr, ptr %i.z, align 8, !tbaa !222 ; 2 uses
  %.not5774 = icmp eq ptr %i.be, %i.bf
  br i1 %.not5774, label %._crit_edge78, label %.lr.ph77

bb.f:                                             ; preds = %.lr.ph72, %bb.i
  %i.bg = phi ptr [ %.pre84, %.lr.ph72 ], [ %4, %bb.i ] ; 3 uses
  %.sroa.043.070 = phi i32 [ 1, %.lr.ph72 ], [ %i.bs, %bb.i ] ; 6 uses
  %i.bh = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.043.070, i1 true)
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !165 ; 2 uses
  %.not.i28 = icmp eq i8 %i.bk, 0
  br i1 %.not.i28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !187
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bi
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !303
  %.not9.i29 = icmp eq i32 %i.bn, 0
  br i1 %.not9.i29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %1 = sext i8 %i.bk to i32                       ; 2 uses
  %2 = icmp slt i32 %.sroa.043.070, 0
  %3 = sub nsw i32 0, %1
  %spec.select10.i32 = select i1 %2, i32 %3, i32 %1
  %i.bo = icmp slt i32 %spec.select10.i32, 0
  %i.bp = sub nsw i32 0, %.sroa.043.070
  %i.bq = select i1 %i.bo, i32 %i.bp, i32 %.sroa.043.070
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bq) ; 0 uses
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !228
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %4 = phi ptr [ %.pre, %bb.h ], [ %i.bg, %bb.g ], [ %i.bg, %bb.f ]
  %i.bs = add i32 %.sroa.043.070, 1
  %.not56 = icmp eq i32 %.sroa.043.070, %i.av
  br i1 %.not56, label %._crit_edge73, label %bb.f

._crit_edge78:                                    ; preds = %bb.k, %._crit_edge73
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !173 ; 2 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %.not5879 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not5879, label %._crit_edge83, label %.lr.ph82

.lr.ph77:                                         ; preds = %._crit_edge73, %bb.k
  %.sroa.039.075 = phi ptr [ %i.ch, %bb.k ], [ %i.be, %._crit_edge73 ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.039.075, align 8, !tbaa !224 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = and i32 %i.bx, 16
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph77
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !174 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %.idx.i = shl nsw i64 %i.cc, 2
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.cb, 0
  br i1 %.not8.i, label %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.09.i = phi ptr [ %i.cg, %.lr.ph.i ], [ %i.bz, %bb.j ] ; 2 uses
  %i.ce = load i32, ptr %.09.i, align 4, !tbaa !174
  %i.cf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ce) ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i34 = icmp eq ptr %i.cg, %i.cd
  br i1 %.not.i34, label %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, label %.lr.ph.i

_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit:      ; preds = %.lr.ph.i, %bb.j
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal4dumpEPNS_6ClauseE.exit, %.lr.ph77
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.039.075, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.ch, %i.bf
  br i1 %.not57, label %._crit_edge78, label %.lr.ph77

._crit_edge83:                                    ; preds = %.lr.ph82, %._crit_edge78
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !488
  %i.cj = tail call i32 @fflush(ptr noundef %i.ci) ; 0 uses
  ret void

.lr.ph82:                                         ; preds = %._crit_edge78, %.lr.ph82
  %.sroa.035.080 = phi ptr [ %i.cm, %.lr.ph82 ], [ %i.bt, %._crit_edge78 ] ; 2 uses
  %i.ck = load i32, ptr %.sroa.035.080, align 4, !tbaa !174
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ck) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.035.080, i64 4 ; 2 uses
  %.not58 = icmp eq ptr %i.cm, %i.bu
  br i1 %.not58, label %._crit_edge83, label %.lr.ph82
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal19traverse_constraintERNS_14ClauseIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %i.e = icmp ne ptr %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.g = load i8, ptr %i.f, align 8, !range !212
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !261, !range !212, !noundef !213
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.e, label %.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !226
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.bf, %bb.m ] ; 6 uses
  %i.v = phi ptr [ null, %.lr.ph ], [ %i.bg, %bb.m ] ; 4 uses
  %i.w = phi ptr [ null, %.lr.ph ], [ %i.bh, %bb.m ] ; 4 uses
  %.sroa.033.044 = phi ptr [ %i.b, %.lr.ph ], [ %i.bi, %bb.m ] ; 2 uses
  %i.x = load i32, ptr %.sroa.033.044, align 4, !tbaa !174 ; 2 uses
  %i.y = tail call i32 @llvm.abs.i32(i32 %i.x, i1 true)
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !228
  %i.aa = zext nneg i32 %i.y to i64               ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !165 ; 2 uses
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i8 %i.ac to i32
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aa
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !303
  %.not9.i = icmp eq i32 %i.ag, 0
  %spec.select.i = select i1 %.not9.i, i32 %i.ad, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %i.ah = icmp slt i32 %i.x, 0                    ; 2 uses
  %i.ai = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.ah, i32 %i.ai, i32 %.0.i ; 2 uses
  %i.aj = icmp sgt i32 %spec.select10.i, 0
  br i1 %i.aj, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.thread39, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.ak = icmp slt i32 %spec.select10.i, 0
  br i1 %i.ak, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aa
  %i.an = load i32, ptr %i.am, align 4, !tbaa !174 ; 2 uses
  %i.ao = sub nsw i32 0, %i.an
  %spec.select.i26 = select i1 %i.ah, i32 %i.ao, i32 %i.an ; 2 uses
  %.not.i27 = icmp eq ptr %i.w, %i.v
  br i1 %.not.i27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %spec.select.i26, ptr %i.w, align 4, !tbaa !174
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store ptr %i.ap, ptr %i.o, align 8, !tbaa !235
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.aq = ptrtoint ptr %i.v to i64
  %i.ar = ptrtoint ptr %i.u to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #21
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i32 %spec.select.i26, ptr %i.bb, align 4, !tbaa !174
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.u, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

end_hunk_1
