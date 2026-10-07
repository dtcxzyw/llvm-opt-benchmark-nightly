Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/external_propagate?download=true
inline.NumInlined: 562
inline.NumDeleted: 273
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal19renotify_full_trailEv:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal33renotify_trail_after_local_searchEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !165, !range !166, !noundef !163
  %i.c = trunc nuw i8 %i.b to i1
  %.not1 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !166
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not1, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !168
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal19renotify_full_trailEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal16notify_backtrackEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !165, !range !166, !noundef !163
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !166
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !166
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !189  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11is_decisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !159
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157  ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !158   ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.f
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162
  %.not9.i = icmp eq i32 %i.m, 0
  %spec.select.i = select i1 %.not9.i, i32 %i.i, i32 0
  br label %_ZN7CaDiCaL8Internal5fixedEi.exit

_ZN7CaDiCaL8Internal5fixedEi.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %bb.c ] ; 2 uses
  %i.n = icmp slt i32 %1, 0
  %i.o = sub nsw i32 0, %.0.i
  %spec.select10.i = select i1 %i.n, i32 %i.o, i32 %.0.i
  %.not7 = icmp eq i32 %spec.select10.i, 0
  br i1 %.not7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN7CaDiCaL8Internal5fixedEi.exit
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !158
  %.not8 = icmp eq i8 %i.r, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.f ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !162
  %.not9 = icmp ne i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %.not10 = icmp eq ptr %i.x, null
  %or.cond = select i1 %.not9, i1 %.not10, i1 false
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %_ZN7CaDiCaL8Internal5fixedEi.exit, %bb.d
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %_ZN7CaDiCaL8Internal5fixedEi.exit ], [ %or.cond, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal15force_backtrackEm(ptr noundef nonnull align 8 dereferenceable(5704) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !194, !range !166, !noundef !163
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.e = load i32, ptr %i.d, align 4, !tbaa !159  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext nneg i32 %i.e to i64
  %.not = icmp ult i64 %1, %i.g
  %or.cond = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %1 to i32
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal18external_propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !195
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3992 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4016 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4024 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4008 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 994 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4032 ; 4 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not3391 = icmp eq ptr %i.v, null
  br i1 %.not3391, label %.lr.ph92, label %.critedge

.lr.ph92:                                         ; preds = %bb.a, %.loopexit
  %i.w = load i8, ptr %i.e, align 2, !tbaa !165, !range !166, !noundef !163
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph92
  %i.y = load i8, ptr %i.f, align 8, !tbaa !234, !range !166, !noundef !163
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.g, align 2, !tbaa !235, !range !166, !noundef !163
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !189 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !191
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(10) %i.ae) ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.i, align 8, !tbaa !197
  %i.ak = add nsw <2 x i64> %i.aj, splat (i64 1)
  store <2 x i64> %i.ak, ptr %i.i, align 8, !tbaa !197
  %.not3499 = icmp eq i32 %i.ai, 0
  br i1 %.not3499, label %.thread69, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.aa
  %1 = phi i32 [ %i.cw, %bb.aa ], [ %i.ai, %bb.d ] ; 4 uses
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14 ; 2 uses
  %i.as = icmp slt i32 %1, 0
  %i.at = sub nsw i32 0, %i.ar
  %spec.select = select i1 %i.as, i32 %i.at, i32 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !157
  %i.av = sext i32 %spec.select to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !158 ; 2 uses
  %.not35 = icmp eq i8 %i.ax, 0
  br i1 %.not35, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !159
  %.not36 = icmp eq i32 %i.ay, 0
  br i1 %.not36, label %bb.h, label %bb.k

bb.g:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.p
  %.lcssa.sink = phi ptr [ %i.bu, %bb.p ], [ %i.bb, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bq, %bb.p ], [ %i.az, %bb.g ]
  tail call void @_ZdlPv(ptr noundef nonnull %.lcssa.sink) #20
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.p, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.g ], [ %i.bq, %bb.p ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ba = load <2 x ptr>, ptr %i.l, align 8, !tbaa !198
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !168 ; 2 uses
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !199
  %i.be = add nsw i64 %i.bd, 1
  store i64 %i.be, ptr %i.n, align 8, !tbaa !199
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !168 ; 2 uses
  store <2 x ptr> %i.ba, ptr %i.l, align 8, !tbaa !198
  store ptr %i.bc, ptr %i.m, align 8, !tbaa !193
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bf) #20
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

bb.k:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal22search_assign_externalEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %spec.select)
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit: ; preds = %bb.j, %bb.i, %bb.k
  %i.bg = load i64, ptr %i.s, align 8, !tbaa !236
  %i.bh = add nsw i64 %i.bg, 1
  store i64 %i.bh, ptr %i.s, align 8, !tbaa !236
  %i.bi = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %.thread69, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not37 = icmp eq ptr %i.bk, null
  br i1 %.not37, label %bb.m, label %.thread69

bb.m:                                             ; preds = %bb.l
  %i.bl = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 0 uses
  %i.bm = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.thread69, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not38 = icmp eq ptr %i.bo, null
  br i1 %.not38, label %.sink.split, label %.thread69

bb.o:                                             ; preds = %bb.e
  %i.bp = icmp slt i8 %i.ax, 0
  br i1 %i.bp, label %bb.q, label %bb.aa

bb.p:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i58, label %common.resume, label %common.resume.sink.split

bb.q:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.a, align 4, !tbaa !159
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !195
  %i.bt = load <2 x ptr>, ptr %i.l, align 8, !tbaa !198
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !168 ; 2 uses
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bw = load <2 x i64>, ptr %i.k, align 8, !tbaa !197
  %i.bx = add nsw <2 x i64> %i.bw, splat (i64 1)
  store <2 x i64> %i.bx, ptr %i.k, align 8, !tbaa !197
  invoke void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1, i1 noundef zeroext false)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !168 ; 2 uses
  store <2 x ptr> %i.bt, ptr %i.l, align 8, !tbaa !198
  store ptr %i.bv, ptr %i.m, align 8, !tbaa !193
  %.not.i.i.i.i.i.i60 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i60, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit62, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZdlPv(ptr noundef nonnull %i.by) #20
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit62

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit62: ; preds = %bb.r, %bb.s
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !195
  %.not39 = icmp eq i64 %i.bz, %i.bs
  br i1 %.not39, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit62
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !159
  %.not40 = icmp eq i32 %i.ca, %i.br
  br i1 %.not40, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cb = load i64, ptr %i.o, align 8, !tbaa !201
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !167
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = icmp uge i64 %i.cb, %i.ch
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit62
  %.not54 = phi i1 [ false, %bb.t ], [ false, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit62 ], [ %i.ci, %bb.u ]
  %i.cj = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.thread69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not41 = icmp ne ptr %i.cl, null               ; 2 uses
  %brmerge = select i1 %.not41, i1 true, i1 %.not54
  br i1 %brmerge, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 0 uses
  %i.cn = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.thread69, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not42 = icmp eq ptr %i.cp, null
  br i1 %.not42, label %.sink.split, label %.thread69

bb.z:                                             ; preds = %bb.w
  br i1 %.not41, label %.thread69, label %bb.aa

.sink.split:                                      ; preds = %bb.y, %bb.n
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.z, %bb.o
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 384
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !189 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !191
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef i32 %i.cv(ptr noundef nonnull align 8 dereferenceable(10) %i.cs) ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.i, align 8, !tbaa !197
  %i.cy = add nsw <2 x i64> %i.cx, splat (i64 1)
  store <2 x i64> %i.cy, ptr %i.i, align 8, !tbaa !197
  %.not34 = icmp eq i32 %i.cw, 0
  br i1 %.not34, label %.thread69, label %bb.e

.thread69:                                        ; preds = %bb.aa, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, %bb.l, %bb.n, %bb.m, %bb.x, %bb.v, %bb.y, %bb.z, %bb.d
  %i.cz = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.thread69
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not43 = icmp eq ptr %i.db, null
  br i1 %.not43, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !159
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !195
  store i8 0, ptr %i.t, align 2, !tbaa !202
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 384
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !189 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !191
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(10) %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %i.t), !inline_history !203
  %i.dl = load i64, ptr %i.i, align 8, !tbaa !204
  %i.dm = add nsw i64 %i.dl, 1
  store i64 %i.dm, ptr %i.i, align 8, !tbaa !204
  %i.dn = load i64, ptr %i.u, align 8, !tbaa !205
  %i.do = add nsw i64 %i.dn, 1
  store i64 %i.do, ptr %i.u, align 8, !tbaa !205
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !195
  %.not44 = icmp eq i64 %i.dp, %i.dd
  br i1 %.not44, label %bb.ad, label %.critedge53

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !159
  %.not45 = icmp eq i32 %i.dq, %i.dc
  br i1 %.not45, label %bb.ae, label %.critedge53

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load i64, ptr %i.o, align 8, !tbaa !201
  %i.ds = load ptr, ptr %i.q, align 8, !tbaa !167
  %i.dt = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 2
  %i.dy = icmp ult i64 %i.dr, %i.dx
  br i1 %i.dy, label %.critedge53, label %bb.ah

.critedge53:                                      ; preds = %bb.ad, %bb.ac, %bb.ae
  %i.dz = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 0 uses
  %i.ea = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge53
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not46 = icmp eq ptr %i.ec, null
  br i1 %.not46, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %.critedge53
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  br i1 %i.dk, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ah, %bb.aq
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !159
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !195
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0, i1 noundef zeroext false)
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !195
  %.not47 = icmp eq i64 %i.ef, %i.ee
  br i1 %.not47, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !159
  %.not48 = icmp eq i32 %i.eg, %i.ed
  br i1 %.not48, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i64, ptr %i.o, align 8, !tbaa !201
  %i.ei = load ptr, ptr %i.q, align 8, !tbaa !167
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 2
  %i.eo = icmp ult i64 %i.eh, %i.en
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.lr.ph
  %i.ep = phi i1 [ true, %bb.ai ], [ true, %.lr.ph ], [ %i.eo, %bb.aj ]
  %i.eq = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not49 = icmp eq ptr %i.es, null
  br i1 %.not49, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  br i1 %i.ep, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.et = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 0 uses
  %i.eu = load i8, ptr %i.r, align 4, !tbaa !200, !range !166, !noundef !163
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not50 = icmp eq ptr %i.ew, null
  br i1 %.not50, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  store i8 0, ptr %i.t, align 2, !tbaa !202
  %i.ex = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 384
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !189 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !191
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef zeroext i1 %i.fc(ptr noundef nonnull align 8 dereferenceable(10) %i.ez, ptr noundef nonnull align 1 dereferenceable(1) %i.t), !inline_history !203
  %i.fe = load i64, ptr %i.i, align 8, !tbaa !204
  %i.ff = add nsw i64 %i.fe, 1
  store i64 %i.ff, ptr %i.i, align 8, !tbaa !204
  %i.fg = load i64, ptr %i.u, align 8, !tbaa !205
  %i.fh = add nsw i64 %i.fg, 1
  store i64 %i.fh, ptr %i.u, align 8, !tbaa !205
  br i1 %i.fd, label %.lr.ph, label %.loopexit, !llvm.loop !232

.loopexit:                                        ; preds = %bb.aq
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not33 = icmp eq ptr %i.fi, null
  br i1 %.not33, label %.lr.ph92, label %.critedge, !llvm.loop !233

.critedge:                                        ; preds = %bb.c, %.loopexit, %.lr.ph92, %bb.b, %bb.ah, %bb.ab, %.thread69, %bb.an, %bb.ak, %bb.ao, %bb.al, %bb.a
  %i.fj = load i64, ptr %i.b, align 8, !tbaa !195
  %i.fk = icmp ult i64 %i.c, %i.fj
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 1, ptr %i.fl, align 1, !tbaa !237
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.critedge
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !196
  %.not51 = icmp eq ptr %i.fm, null
  ret i1 %.not51
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i8, ptr %i.a, align 2, !tbaa !165, !range !166, !noundef !163
  %i.c = trunc nuw i8 %i.b to i1
  %.not12 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !range !166
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not12, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !166
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond17 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond17, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !167
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !168
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !169  ; 2 uses
  %.not = icmp ult i64 %i.s, %i.q
  br i1 %.not, label %.lr.ph, label %bb.o

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
end_hunk_0
