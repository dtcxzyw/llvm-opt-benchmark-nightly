Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_external_propagate?download=true
inline.NumInlined: 551
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal37renotify_full_trail_between_trail_posEiiiRSt6vectorIiSaIiEEb:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183
  %i.bw = load ptr, ptr %4, align 8, !tbaa !184
  %.not17 = icmp eq ptr %i.bv, %i.bw
  br i1 %.not17, label %_ZNSt6vectorIiSaIiEE5clearEv.exit20, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !186
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 424
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !205 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(10) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %.pre27 = load ptr, ptr %4, align 8, !tbaa !184 ; 2 uses
  %.pre28 = load ptr, ptr %i.bu, align 8, !tbaa !183
  %i.ce = icmp eq ptr %.pre28, %.pre27
  br i1 %i.ce, label %_ZNSt6vectorIiSaIiEE5clearEv.exit20, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.pre27, ptr %i.bu, align 8, !tbaa !183
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit20

_ZNSt6vectorIiSaIiEE5clearEv.exit20:              ; preds = %._crit_edge, %bb.o, %bb.p
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal16notify_backtrackEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 2, !tbaa !181, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %.not = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = load i8, ptr %i.g, align 2, !range !182
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !186
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !207
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(10) %i.m, i64 noundef %1) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal11is_decisionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7296) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.b = load i32, ptr %i.a, align 4, !tbaa !175
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173  ; 2 uses
  %i.f = zext nneg i32 %i.c to i64                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !174   ; 2 uses
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal5fixedEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.f
  %i.m = load i32, ptr %i.l, align 8, !tbaa !178
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !174
  %.not8 = icmp eq i8 %i.r, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !176
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.f ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !178
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

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal15force_backtrackEm(ptr noundef nonnull align 8 dereferenceable(7296) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !tbaa !212, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.e = load i32, ptr %i.d, align 4, !tbaa !175  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %i.g = zext nneg i32 %i.e to i64
  %.not = icmp ult i64 %1, %i.g
  %or.cond = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %1 to i32
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %i.h) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal18external_propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4792 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4816 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4824 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4808 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 4 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not3383 = icmp eq ptr %i.v, null
  br i1 %.not3383, label %.lr.ph84, label %.critedge

.lr.ph84:                                         ; preds = %bb.a, %.loopexit
  %i.w = load i8, ptr %i.e, align 2, !tbaa !181, !range !182, !noundef !179
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph84
  %i.y = load i8, ptr %i.f, align 8, !tbaa !251, !range !182, !noundef !179
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load i8, ptr %i.g, align 2, !tbaa !252, !range !182, !noundef !179
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 424
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !205 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !207
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(10) %i.ae) #14 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.i, align 8, !tbaa !211
  %i.ak = add nsw <2 x i64> %i.aj, splat (i64 1)
  store <2 x i64> %i.ak, ptr %i.i, align 8, !tbaa !211
  %.not3491 = icmp eq i32 %i.ai, 0
  br i1 %.not3491, label %.thread67, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.w
  %1 = phi i32 [ %i.da, %bb.w ], [ %i.ai, %bb.d ] ; 4 uses
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.an = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !184
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !14 ; 2 uses
  %i.as = icmp slt i32 %1, 0
  %i.at = sub nsw i32 0, %i.ar
  %spec.select = select i1 %i.as, i32 %i.at, i32 %i.ar ; 2 uses
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !173
  %i.av = sext i32 %spec.select to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !174 ; 2 uses
  %.not35 = icmp eq i8 %i.ax, 0
  br i1 %.not35, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.a, align 4, !tbaa !175
  %.not36 = icmp eq i32 %i.ay, 0
  br i1 %.not36, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.ba = load <2 x ptr>, ptr %i.l, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !216
  %i.bc = add nsw i64 %i.bb, 1
  store i64 %i.bc, ptr %i.n, align 8, !tbaa !216
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !184 ; 3 uses
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !209
  store <2 x ptr> %i.ba, ptr %i.l, align 8, !tbaa !215
  store ptr %i.az, ptr %i.m, align 8, !tbaa !209
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #15
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

bb.i:                                             ; preds = %bb.f
  tail call void @_ZN7CaDiCaL8Internal22search_assign_externalEi(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %spec.select) #14
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit: ; preds = %bb.h, %bb.g, %bb.i
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !253
  %i.bj = add nsw i64 %i.bi, 1
  store i64 %i.bj, ptr %i.s, align 8, !tbaa !253
  %i.bk = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread67, label %bb.j

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not37 = icmp eq ptr %i.bm, null
  br i1 %.not37, label %bb.k, label %.thread67

bb.k:                                             ; preds = %bb.j
  %i.bn = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 0 uses
  %i.bo = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.thread67, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not38 = icmp eq ptr %i.bq, null
  br i1 %.not38, label %.sink.split, label %.thread67

bb.m:                                             ; preds = %bb.e
  %i.br = icmp slt i8 %i.ax, 0
  br i1 %i.br, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !175
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !213
  %i.bu = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.bv = load <2 x ptr>, ptr %i.l, align 8, !tbaa !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.bw = load <2 x i64>, ptr %i.k, align 8, !tbaa !211
  %i.bx = add nsw <2 x i64> %i.bw, splat (i64 1)
  store <2 x i64> %i.bx, ptr %i.k, align 8, !tbaa !211
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !184 ; 3 uses
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !209
  store <2 x ptr> %i.bv, ptr %i.l, align 8, !tbaa !215
  store ptr %i.bu, ptr %i.m, align 8, !tbaa !209
  %.not.i.i.i.i.i.i58 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i58, label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cc) #15
  br label %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60

_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60: ; preds = %bb.n, %bb.o
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !213
  %.not39 = icmp eq i64 %i.cd, %i.bt
  br i1 %.not39, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !175
  %.not40 = icmp eq i32 %i.ce, %i.bs
  br i1 %.not40, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = load i64, ptr %i.o, align 8, !tbaa !218
  %i.cg = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !184
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  %i.cm = icmp uge i64 %i.cf, %i.cl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60
  %.not54 = phi i1 [ false, %bb.p ], [ false, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit60 ], [ %i.cm, %bb.q ]
  %i.cn = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.thread67, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not41 = icmp ne ptr %i.cp, null               ; 2 uses
  %brmerge = select i1 %.not41, i1 true, i1 %.not54
  br i1 %brmerge, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 0 uses
  %i.cr = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.thread67, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not42 = icmp eq ptr %i.ct, null
  br i1 %.not42, label %.sink.split, label %.thread67

bb.v:                                             ; preds = %bb.s
  br i1 %.not41, label %.thread67, label %bb.w

.sink.split:                                      ; preds = %bb.u, %bb.l
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.v, %bb.m
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 424
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !205 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !207
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(10) %i.cw) #14 ; 2 uses
  %i.db = load <2 x i64>, ptr %i.i, align 8, !tbaa !211
  %i.dc = add nsw <2 x i64> %i.db, splat (i64 1)
  store <2 x i64> %i.dc, ptr %i.i, align 8, !tbaa !211
  %.not34 = icmp eq i32 %i.da, 0
  br i1 %.not34, label %.thread67, label %bb.e

.thread67:                                        ; preds = %bb.w, %_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib.exit, %bb.j, %bb.l, %bb.k, %bb.t, %bb.r, %bb.u, %bb.v, %bb.d
  %i.dd = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.thread67
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not43 = icmp eq ptr %i.df, null
  br i1 %.not43, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !175
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !213
  store i8 0, ptr %i.t, align 2, !tbaa !219
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 424
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !205 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !207
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(10) %i.dk, ptr noundef nonnull align 1 dereferenceable(1) %i.t) #14, !inline_history !220
  %i.dp = load i64, ptr %i.i, align 8, !tbaa !221
  %i.dq = add nsw i64 %i.dp, 1
  store i64 %i.dq, ptr %i.i, align 8, !tbaa !221
  %i.dr = load i64, ptr %i.u, align 8, !tbaa !222
  %i.ds = add nsw i64 %i.dr, 1
  store i64 %i.ds, ptr %i.u, align 8, !tbaa !222
  %i.dt = load i64, ptr %i.b, align 8, !tbaa !213
  %.not44 = icmp eq i64 %i.dt, %i.dh
  br i1 %.not44, label %bb.z, label %.critedge53

bb.z:                                             ; preds = %bb.y
  %i.du = load i32, ptr %i.a, align 4, !tbaa !175
  %.not45 = icmp eq i32 %i.du, %i.dg
  br i1 %.not45, label %bb.aa, label %.critedge53

bb.aa:                                            ; preds = %bb.z
  %i.dv = load i64, ptr %i.o, align 8, !tbaa !218
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.dx = load ptr, ptr %i.p, align 8, !tbaa !184
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 2
  %i.ec = icmp ult i64 %i.dv, %i.eb
  br i1 %i.ec, label %.critedge53, label %bb.ad

.critedge53:                                      ; preds = %bb.z, %bb.y, %bb.aa
  %i.ed = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 0 uses
  %i.ee = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.critedge53
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not46 = icmp eq ptr %i.eg, null
  br i1 %.not46, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %.critedge53
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  br i1 %i.do, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ad, %bb.am
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !175
  %i.ei = load i64, ptr %i.b, align 8, !tbaa !213
  tail call void @_ZN7CaDiCaL8Internal19add_external_clauseEib(ptr noundef nonnull align 8 dereferenceable(7296) %0, i32 noundef 0, i1 noundef zeroext false)
  %i.ej = load i64, ptr %i.b, align 8, !tbaa !213
  %.not47 = icmp eq i64 %i.ej, %i.ei
  br i1 %.not47, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !175
  %.not48 = icmp eq i32 %i.ek, %i.eh
  br i1 %.not48, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.el = load i64, ptr %i.o, align 8, !tbaa !218
  %i.em = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.en = load ptr, ptr %i.p, align 8, !tbaa !184
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2
  %i.es = icmp ult i64 %i.el, %i.er
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.lr.ph
  %i.et = phi i1 [ true, %bb.ae ], [ true, %.lr.ph ], [ %i.es, %bb.af ]
  %i.eu = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not49 = icmp eq ptr %i.ew, null
  br i1 %.not49, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.et, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ex = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #14 ; 0 uses
  %i.ey = load i8, ptr %i.r, align 4, !tbaa !217, !range !182, !noundef !179
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not50 = icmp eq ptr %i.fa, null
  br i1 %.not50, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr noundef nonnull align 8 dereferenceable(7296) %0)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  store i8 0, ptr %i.t, align 2, !tbaa !219
  %i.fb = load ptr, ptr %i.h, align 8, !tbaa !186
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 424
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !205 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !207
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef zeroext i1 %i.fg(ptr noundef nonnull align 8 dereferenceable(10) %i.fd, ptr noundef nonnull align 1 dereferenceable(1) %i.t) #14, !inline_history !220
  %i.fi = load i64, ptr %i.i, align 8, !tbaa !221
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.i, align 8, !tbaa !221
  %i.fk = load i64, ptr %i.u, align 8, !tbaa !222
  %i.fl = add nsw i64 %i.fk, 1
  store i64 %i.fl, ptr %i.u, align 8, !tbaa !222
  br i1 %i.fh, label %.lr.ph, label %.loopexit, !llvm.loop !249

.loopexit:                                        ; preds = %bb.am
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not33 = icmp eq ptr %i.fm, null
  br i1 %.not33, label %.lr.ph84, label %.critedge, !llvm.loop !250

.critedge:                                        ; preds = %bb.c, %.loopexit, %.lr.ph84, %bb.b, %bb.ad, %bb.x, %.thread67, %bb.aj, %bb.ag, %bb.ak, %bb.ah, %bb.a
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !213
  %i.fo = icmp ult i64 %i.c, %i.fn
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 1, ptr %i.fp, align 1, !tbaa !254
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.critedge
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !214
  %.not51 = icmp eq ptr %i.fq, null
  ret i1 %.not51
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal18notify_assignmentsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.b = load i8, ptr %i.a, align 2, !tbaa !181, !range !182, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %.not5 = xor i1 %i.c, true
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not5, i1 true, i1 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = load i8, ptr %i.g, align 2, !range !182
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond10 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond10, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !183
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !185  ; 2 uses
  %.not = icmp ult i64 %i.s, %i.q
  br i1 %.not, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bt, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
end_hunk_0
