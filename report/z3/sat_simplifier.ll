inline.NumInlined: 2303
inline.NumDeleted: 730
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN3sat10simplifier15cleanup_clausesER10ptr_vectorINS_6clauseEEbb:bb.a
  %or.cond = and i1 %2, %3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.3.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph96, %bb.ae
  %.094 = phi ptr [ %i.b, %.lr.ph96 ], [ %i.co, %bb.ae ] ; 8 uses
  %.06093 = phi ptr [ %i.b, %.lr.ph96 ], [ %.5.ph, %bb.ae ] ; 12 uses
  %i.l = load ptr, ptr %.094, align 8, !tbaa !23  ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = and i32 %i.n, 4
  %i.p = icmp ne i32 %i.o, 0
  %i.q = xor i1 %2, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 310, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre = load i32, ptr %i.m, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %.pre, %bb.c ], [ %i.n, %bb.b ]
  %i.s = and i32 %i.r, 2
  %.not85 = icmp eq i32 %i.s, 0
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.t, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20   ; 9 uses
  br i1 %or.cond, label %bb.g, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.f
  %.pre110.pre = load ptr, ptr %0, align 8, !tbaa !90
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %.not7190.not = icmp eq i32 %i.v, 0
  %.pre110.pre112 = load ptr, ptr %0, align 8, !tbaa !90 ; 4 uses
  br i1 %.not7190.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %.pre110.pre112, i64 3312
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !121
  %wide.trip.count = zext i32 %i.v to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.i, !llvm.loop !290

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !276
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !124, !range !105, !noundef !65
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.critedge.thread, label %bb.h

.critedge.thread:                                 ; preds = %bb.i
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %.pre110.pre112, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  br label %bb.ae

.critedge:                                        ; preds = %bb.h, %..critedge_crit_edge
  %.pre110 = phi ptr [ %.pre110.pre, %..critedge_crit_edge ], [ %.pre110.pre112, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.not42.i = icmp eq i32 %i.v, 0
  br i1 %.not42.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre110, i64 3272
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !226
  %wide.trip.count.i = zext i32 %i.v to i64
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.r
  %i.ak = icmp uge i32 %.133.i, %i.v
  %or.cond.i = select i1 %i.ak, i1 true, i1 %.1.i
  br i1 %or.cond.i, label %_ZN3sat10simplifier14cleanup_clauseERNS_6clauseE.exit, label %bb.s

bb.j:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 4 uses
  %.040.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 3 uses
  %.03239.i = phi i32 [ 0, %.lr.ph.i ], [ %.133.i, %bb.r ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i ; 3 uses
  %.sroa.02.0.copyload.i = load i32, ptr %i.al, align 4, !tbaa !12 ; 3 uses
  %i.am = zext i32 %.sroa.02.0.copyload.i to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !227
  switch i32 %i.ao, label %bb.r [
    i32 0, label %bb.k
    i32 -1, label %bb.n
    i32 1, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.ap = zext i32 %.03239.i to i64               ; 2 uses
  %.not36.i = icmp eq i64 %indvars.iv.i, %i.ap
  br i1 %.not36.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.aq, align 4, !tbaa !12
  store i32 %.sroa.02.0.copyload.i, ptr %i.aq, align 4, !tbaa !12
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.al, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = add i32 %.03239.i, 1
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  store i8 1, ptr %i.i, align 8, !tbaa !237
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.as = zext i32 %.03239.i to i64               ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.i, %i.as
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.as ; 2 uses
  %.sroa.0.0.copyload.i37.i = load i32, ptr %i.at, align 4, !tbaa !12
  store i32 %.sroa.02.0.copyload.i, ptr %i.at, align 4, !tbaa !12
  store i32 %.sroa.0.0.copyload.i37.i, ptr %i.al, align 4, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = add i32 %.03239.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m, %bb.j
  %.133.i = phi i32 [ %.03239.i, %bb.j ], [ %i.ar, %bb.m ], [ %.03239.i, %bb.n ], [ %i.au, %bb.q ] ; 5 uses
  %.1.i = phi i1 [ %.040.i, %bb.j ], [ %.040.i, %bb.m ], [ %.040.i, %bb.n ], [ true, %bb.q ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !280

bb.s:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i32 %.133.i, 2
  br i1 %i.av, label %.split, label %.split79

.split:                                           ; preds = %bb.s
  call void @_ZN3sat6solver6shrinkERNS_6clauseEjj(ptr noundef nonnull align 8 dereferenceable(4264) %.pre110, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i32 noundef %i.v, i32 noundef %.133.i)
  br label %bb.u

.split79:                                         ; preds = %bb.s
  call void @_ZN3sat6clause6shrinkEj(ptr noundef nonnull align 4 dereferenceable(20) %i.l, i32 noundef %.133.i)
  br label %bb.u

_ZN3sat10simplifier14cleanup_clauseERNS_6clauseE.exit: ; preds = %._crit_edge.i
  br i1 %.1.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN3sat10simplifier14cleanup_clauseERNS_6clauseE.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.aw, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  br label %bb.ae

bb.u:                                             ; preds = %.split79, %.split, %_ZN3sat10simplifier14cleanup_clauseERNS_6clauseE.exit
  %.pr = load i32, ptr %i.ag, align 4, !tbaa !20  ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !90    ; 8 uses
  switch i32 %.pr, label %bb.ac [
    i32 0, label %.thread
    i32 1, label %bb.v
    i32 2, label %bb.ab
  ]

.thread:                                          ; preds = %bb.g, %.critedge, %bb.u
  %i.ay = phi ptr [ %i.ax, %bb.u ], [ %.pre110, %.critedge ], [ %.pre110.pre112, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %6, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.21.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ay, ptr noundef nonnull byval(%"class.sat::justification") align 8 %6, i32 -2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not7297 = icmp eq ptr %.094, %i.h
  br i1 %.not7297, label %._crit_edge101, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.thread
  %.094150152 = ptrtoaddr ptr %.094 to i64        ; 2 uses
  %.06093147151 = ptrtoaddr ptr %.06093 to i64
  %i.az = ptrtoaddr ptr %i.b to i64
  %7 = sub i64 %i.az, %.094150152
  %i.ba = add i64 %7, %i.g
  %8 = add i64 %i.ba, -8                          ; 2 uses
  %i.bb = lshr i64 %8, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 72
  %i.bd = sub i64 %.094150152, %.06093147151
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond156 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond156, label %.lr.ph100.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph100.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %.094, i64 %i.be
  %i.bg = getelementptr i8, ptr %.06093, i64 %i.be ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.094, i64 %i.bh ; 2 uses
  %next.gep153 = getelementptr i8, ptr %.06093, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !23
  %wide.load154 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !23
  %i.bj = getelementptr i8, ptr %next.gep153, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep153, align 8, !tbaa !23
  store <2 x ptr> %wide.load154, ptr %i.bj, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %._crit_edge101, label %.lr.ph100.preheader157

.lr.ph100.preheader157:                           ; preds = %.lr.ph100.preheader, %middle.block
  %.199.ph = phi ptr [ %.094, %.lr.ph100.preheader ], [ %i.bf, %middle.block ]
  %.16198.ph = phi ptr [ %.06093, %.lr.ph100.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader157, %.lr.ph100
  %.199 = phi ptr [ %i.bm, %.lr.ph100 ], [ %.199.ph, %.lr.ph100.preheader157 ] ; 2 uses
  %.16198 = phi ptr [ %i.bn, %.lr.ph100 ], [ %.16198.ph, %.lr.ph100.preheader157 ] ; 2 uses
  %i.bl = load ptr, ptr %.199, align 8, !tbaa !23
  store ptr %i.bl, ptr %.16198, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %.199, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.16198, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.bm, %i.h
  br i1 %.not72, label %._crit_edge101, label %.lr.ph100, !llvm.loop !294

._crit_edge101:                                   ; preds = %.lr.ph100, %middle.block, %.thread
  %.161.lcssa = phi ptr [ %.06093, %.thread ], [ %i.bg, %middle.block ], [ %i.bn, %.lr.ph100 ]
  %i.bo = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %.not.i73 = icmp eq ptr %i.bo, null
  br i1 %.not.i73, label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit, label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit.sink.split

bb.v:                                             ; preds = %bb.u
  %.sroa.03.0.copyload = load i32, ptr %i.ah, align 4, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8
  store i64 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.3.0..sroa_idx.i74, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 3272
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !226
  %i.br = zext i32 %.sroa.03.0.copyload to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !227
  switch i32 %i.bt, label %_ZN3sat6solver11assign_unitENS_7literalE.exit [
    i32 -1, label %bb.w
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.bu = xor i32 %.sroa.03.0.copyload, 1
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ax, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5, i32 %i.bu)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.x:                                             ; preds = %bb.v
  call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ax, i32 %.sroa.03.0.copyload, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.y:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 3832
  %i.bw = load i8, ptr %i.bv, align 8, !range !105
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 3280
  %i.bz = lshr i32 %.sroa.03.0.copyload, 1
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !235
  %i.cb = zext nneg i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.cb ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !295
  %.not.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cc, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx10.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

_ZN3sat6solver11assign_unitENS_7literalE.exit:    ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN3sat6clause7restoreEj(ptr noundef nonnull align 4 dereferenceable(20) %i.l, i32 noundef %i.v)
  %i.ce = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ce, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  br label %bb.ae

bb.ab:                                            ; preds = %bb.u
  %.sroa.02.0.copyload = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.cf, align 4, !tbaa !12
  %i.cg = load i32, ptr %i.m, align 4
  %i.ch = and i32 %i.cg, 4
  %.not86 = icmp eq i32 %i.ch, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %spec.select.i = select i1 %.not86, i32 1, i32 2
  store i32 %spec.select.i, ptr %4, align 8, !tbaa !282
  store i32 -1, ptr %i.j, align 4, !tbaa !286
  store ptr null, ptr %i.k, align 8, !tbaa !287
  call void @_ZN3sat6solver13mk_bin_clauseENS_7literalES1_NS_6statusE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ax, i32 %.sroa.02.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN3sat6clause7restoreEj(ptr noundef nonnull align 4 dereferenceable(20) %i.l, i32 noundef %i.v)
  %i.ci = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ci, ptr noundef nonnull align 4 dereferenceable(20) %i.l)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.u
  call void @_ZN3sat6solver6shrinkERNS_6clauseEjj(ptr noundef nonnull align 8 dereferenceable(4264) %i.ax, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i32 noundef %i.v, i32 noundef %.pr)
  %i.cj = load ptr, ptr %.094, align 8, !tbaa !23
  store ptr %i.cj, ptr %.06093, align 8, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.06093, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.m, align 4
  %i.cm = and i32 %i.cl, 16
  %.not87 = icmp eq i32 %i.cm, 0
  br i1 %.not87, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @_ZN3sat6solver13attach_clauseERNS_6clauseERb(ptr noundef nonnull align 8 dereferenceable(4264) %i.cn, ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.e, %.critedge.thread, %bb.t, %_ZN3sat6solver11assign_unitENS_7literalE.exit, %bb.ac, %bb.ad, %bb.ab
  %.5.ph = phi ptr [ %.06093, %_ZN3sat6solver11assign_unitENS_7literalE.exit ], [ %i.ck, %bb.ad ], [ %i.ck, %bb.ac ], [ %.06093, %bb.ab ], [ %.06093, %bb.t ], [ %.06093, %.critedge.thread ], [ %.06093, %bb.e ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.094, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !296

._crit_edge:                                      ; preds = %bb.ae
  %.pre111 = load ptr, ptr %1, align 8, !tbaa !13 ; 2 uses
  %.not.i75 = icmp eq ptr %.pre111, null
  br i1 %.not.i75, label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit, label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit.sink.split

_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit.sink.split: ; preds = %._crit_edge, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit, %._crit_edge101
  %.060.lcssa133.sink = phi ptr [ %.161.lcssa, %._crit_edge101 ], [ %.5.ph, %._crit_edge ], [ %i.b, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit ]
  %.sink = phi ptr [ %i.bo, %._crit_edge101 ], [ %.pre111, %._crit_edge ], [ %i.b, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit ] ; 2 uses
  %i.cp = ptrtoint ptr %.060.lcssa133.sink to i64
  %i.cq = ptrtoint ptr %.sink to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = lshr exact i64 %i.cr, 3
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds i8, ptr %.sink, i64 -4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !12
  br label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit

_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit: ; preds = %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit.sink.split, %bb.a, %._crit_edge, %._crit_edge101
  ret void
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #9

declare void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264), ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sat10simplifier14cleanup_clauseERNS_6clauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 4 uses
  %.not42 = icmp eq i32 %i.b, 0
  br i1 %.not42, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !90, !nonnull !65, !align !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !226
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count = zext i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.j
  %i.h = icmp uge i32 %.133, %i.b
  %or.cond = select i1 %i.h, i1 true, i1 %.1
  br i1 %or.cond, label %._crit_edge.thread, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN3sat10simplifier19blocked_clause_elim23minimize_covered_clauseEj:bb.a
  br i1 %.not98168, label %.preheader, label %.lr.ph170

bb.r:                                             ; preds = %.preheader144, %bb.z
  %.093167 = phi i32 [ 0, %.preheader144 ], [ %i.is, %bb.z ] ; 2 uses
  %.0130166 = phi i32 [ 0, %.preheader144 ], [ %.1, %bb.z ] ; 4 uses
  %.sroa.0117.0165 = phi i32 [ -2, %.preheader144 ], [ %.sroa.0117.2, %bb.z ] ; 4 uses
  %i.ha = load ptr, ptr %i.i, align 8, !tbaa !107 ; 3 uses
  %i.hb = zext i32 %.093167 to i64                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hb
  %.sroa.017.0.copyload = load i32, ptr %i.hc, align 4, !tbaa !12 ; 2 uses
  %i.hd = load ptr, ptr %0, align 8, !tbaa !374, !nonnull !65, !align !66 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 96
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !109 ; 3 uses
  %i.hg = zext i32 %.sroa.017.0.copyload to i64   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !234
  %.not136 = icmp eq i8 %i.hi, 0
  br i1 %.not136, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hj = load ptr, ptr %i.em, align 8, !tbaa !376
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.hb ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !471, !range !105, !noundef !65
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %.sroa.0.0.copyload.i111 = load i32, ptr %i.hn, align 4, !tbaa !12 ; 3 uses
  %.not137 = icmp eq i32 %.sroa.0117.0165, %.sroa.0.0.copyload.i111
  br i1 %.not137, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = load ptr, ptr %i.hd, align 8, !tbaa !90, !nonnull !65, !align !66
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 3272
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !226
  %i.hr = zext i32 %.sroa.0.0.copyload.i111 to i64 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !227
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1256, ptr noundef nonnull @.str.24)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.hv = load ptr, ptr %i.en, align 8, !tbaa !442, !nonnull !65, !align !66
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 4 uses
  %.sroa.2.0.insert.shift.i = shl nuw i64 %i.hr, 32
  %.sroa.0.0.insert.ext.i = zext i32 %.0130166 to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !453 ; 4 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !12 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.hx, i64 -8
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !12
  %i.id = icmp eq i32 %i.ia, %i.ic
  br i1 %i.id, label %bb.y, label %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call void @_ZN6vectorISt4pairIjN3sat7literalEELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
  %.pre.i = load ptr, ptr %i.hw, align 8, !tbaa !453 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit

_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit: ; preds = %bb.x, %bb.y
  %i.ie = phi i32 [ %.pre2.i, %bb.y ], [ %i.ia, %bb.x ]
  %i.if = phi ptr [ %.pre.i, %bb.y ], [ %i.hx, %bb.x ]
  %i.ig = zext i32 %i.ie to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ig
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ih, align 4
  %i.ii = load ptr, ptr %i.hw, align 8, !tbaa !453
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -4 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !12
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !12
  %.pre181 = load ptr, ptr %i.i, align 8, !tbaa !107
  %.pre182 = load ptr, ptr %0, align 8, !tbaa !374
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre182, i64 96
  %.pre183 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit, %bb.t
  %i.im = phi ptr [ %.pre183, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit ], [ %i.hf, %bb.t ], [ %i.hf, %bb.s ]
  %i.in = phi ptr [ %.pre181, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit ], [ %i.ha, %bb.t ], [ %i.ha, %bb.s ]
  %.sroa.0117.1 = phi i32 [ %.sroa.0.0.copyload.i111, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE9push_backEOS3_.exit ], [ %.sroa.0117.0165, %bb.t ], [ %.sroa.0117.0165, %bb.s ]
  %i.io = add i32 %.0130166, 1
  %i.ip = zext i32 %.0130166 to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ip
  store i32 %.sroa.017.0.copyload, ptr %i.iq, align 4, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.hg
  store i8 0, ptr %i.ir, align 1, !tbaa !234
  br label %bb.z

bb.z:                                             ; preds = %.critedge, %bb.r
  %.sroa.0117.2 = phi i32 [ %.sroa.0117.1, %.critedge ], [ %.sroa.0117.0165, %bb.r ]
  %.1 = phi i32 [ %i.io, %.critedge ], [ %.0130166, %bb.r ] ; 9 uses
  %i.is = add i32 %.093167, 1                     ; 2 uses
  %.not97 = icmp ugt i32 %i.is, %.085.lcssa
  br i1 %.not97, label %bb.q, label %bb.r, !llvm.loop !472

.preheader:                                       ; preds = %bb.ab, %bb.q, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit110
  %i.it = load ptr, ptr %0, align 8, !tbaa !374, !nonnull !65, !align !66 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !90, !nonnull !65, !align !66 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 3280
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !235 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %.critedge143, label %_ZNK3sat6solver8num_varsEv.exit

.lr.ph170:                                        ; preds = %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit110, %bb.ab
  %.088169 = phi ptr [ %i.je, %bb.ab ], [ %i.gt, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit110 ] ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %.088169, align 4, !tbaa !12
  %i.iy = load ptr, ptr %0, align 8, !tbaa !374, !nonnull !65, !align !66
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !109
  %i.jb = zext i32 %.sroa.04.0.copyload to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !234
  %.not138 = icmp eq i8 %i.jd, 0
  br i1 %.not138, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph170
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1263, ptr noundef nonnull @.str.25)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph170
  %i.je = getelementptr inbounds nuw i8, ptr %.088169, i64 4 ; 2 uses
  %.not98 = icmp eq ptr %i.je, %i.gz
  br i1 %.not98, label %.preheader, label %.lr.ph170

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %.preheader, %bb.ai
  %i.jf = phi ptr [ %i.la, %bb.ai ], [ %i.iu, %.preheader ]
  %i.jg = phi ptr [ %i.lb, %bb.ai ], [ %i.it, %.preheader ] ; 2 uses
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %bb.ai ], [ 0, %.preheader ] ; 3 uses
  %i.jh = phi ptr [ %i.ld, %bb.ai ], [ %i.iw, %.preheader ]
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !12
  %i.jk = zext i32 %i.jj to i64
  %i.jl = icmp samesign ult i64 %indvars.iv177, %i.jk
  br i1 %i.jl, label %bb.af, label %.critedge143

.critedge143:                                     ; preds = %_ZNK3sat6solver8num_varsEv.exit, %bb.ai, %.preheader
  %i.jm = load ptr, ptr %i.i, align 8, !tbaa !107 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %.critedge143
  %.not.not.i = icmp eq i32 %.1, 0
  br i1 %.not.not.i, label %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit, label %thread-pre-split.i.preheader

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i: ; preds = %.critedge143
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -4 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !12 ; 2 uses
  %.not15.i = icmp ugt i32 %.1, %i.jp
  br i1 %.not15.i, label %thread-pre-split.i.preheader, label %bb.ac

thread-pre-split.i.preheader:                     ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.jm, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ]
  %.0.i16.i.ph = phi i32 [ %i.jp, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %thread-pre-split.i

bb.ac:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i
  store i32 %.1, ptr %i.jo, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit

thread-pre-split.i:                               ; preds = %thread-pre-split.i.preheader, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i
  %i.jq = phi ptr [ %.pr.pre.i, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i ], [ %.ph, %thread-pre-split.i.preheader ] ; 5 uses
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i: ; preds = %thread-pre-split.i
  %i.js = getelementptr inbounds i8, ptr %i.jq, i64 -8
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !12
  %i.ju = icmp ugt i32 %.1, %i.jt
  br i1 %i.ju, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i, label %bb.ad

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i, %thread-pre-split.i
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pr.pre.i = load ptr, ptr %i.i, align 8, !tbaa !107
  br label %thread-pre-split.i, !llvm.loop !473

bb.ad:                                            ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i
  %i.jv = getelementptr inbounds i8, ptr %i.jq, i64 -4
  store i32 %.1, ptr %i.jv, align 4, !tbaa !12
  %i.jw = zext i32 %.1 to i64                     ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jw
  %.not1218.i = icmp eq i32 %.0.i16.i.ph, %.1
  br i1 %.not1218.i, label %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ad
  %i.jy = zext i32 %.0.i16.i.ph to i64            ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jy ; 3 uses
  %2 = sub nsw i64 %i.jw, %i.jy
  %i.ka = add nsw i64 %2, 4611686018427387903
  %3 = and i64 %i.ka, 4611686018427387903         ; 2 uses
  %i.kb = add nuw nsw i64 %3, 1                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %3, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.kb, 9223372036854775800     ; 3 uses
  %i.kc = shl i64 %n.vec, 2
  %i.kd = getelementptr i8, ptr %i.jz, i64 %i.kc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ke = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.jz, i64 %i.ke ; 2 uses
  %i.kf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2), ptr %next.gep, align 4, !tbaa !276
  store <4 x i32> splat (i32 -2), ptr %i.kf, align 4, !tbaa !276
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kb, %n.vec
  br i1 %cmp.n, label %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.019.i.ph = phi ptr [ %i.jz, %.lr.ph.preheader.i ], [ %i.kd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.019.i = phi ptr [ %i.kh, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 -2, ptr %.019.i, align 4, !tbaa !276
  %i.kh = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not12.i = icmp eq ptr %i.kh, %i.jx
  br i1 %.not12.i, label %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit, label %.lr.ph.i, !llvm.loop !475

_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit:    ; preds = %.lr.ph.i, %middle.block, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.ac, %bb.ad
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !371
  %.not.i = icmp eq i32 %i.kj, -2
  br i1 %.not.i, label %bb.ae, label %_ZNK3sat14clause_wrapper4sizeEv.exit

bb.ae:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !234
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !20
  br label %_ZNK3sat14clause_wrapper4sizeEv.exit

_ZNK3sat14clause_wrapper4sizeEv.exit:             ; preds = %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit, %bb.ae
  %i.ko = phi i32 [ %i.kn, %bb.ae ], [ 2, %_ZN6vectorIN3sat7literalELb0EjE6resizeEj.exit ]
  %.not99 = icmp ult i32 %.1, %i.ko
  br i1 %.not99, label %bb.aj, label %bb.ak

bb.af:                                            ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.kp = trunc nuw i64 %indvars.iv177 to i32
  %i.kq = shl i32 %i.kp, 1                        ; 2 uses
  %i.kr = or disjoint i32 %i.kq, 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jg, i64 96
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !109 ; 2 uses
  %i.ku = zext i32 %i.kr to i64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !234
  %.not139 = icmp eq i8 %i.kw, 0
  br i1 %.not139, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kx = zext i32 %i.kq to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !234
  %.not140 = icmp eq i8 %i.kz, 0
  br i1 %.not140, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1264, ptr noundef nonnull @.str.26)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre184 = load ptr, ptr %0, align 8, !tbaa !374 ; 2 uses
  %.pre185 = load ptr, ptr %.pre184, align 8, !tbaa !90
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.la = phi ptr [ %i.jf, %bb.ag ], [ %.pre185, %bb.ah ] ; 2 uses
  %i.lb = phi ptr [ %i.jg, %bb.ag ], [ %.pre184, %bb.ah ]
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 3280
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !235 ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %.critedge143, label %_ZNK3sat6solver8num_varsEv.exit, !llvm.loop !476

bb.aj:                                            ; preds = %_ZNK3sat14clause_wrapper4sizeEv.exit
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1268, ptr noundef nonnull @.str.27)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNK3sat14clause_wrapper4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3sat10simplifier19blocked_clause_elim20check_abce_tautologyENS_7literalE(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.sat::clause_use_list::iterator", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  br label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit:     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.f = lshr i32 %1, 1
  %i.g = tail call noundef zeroext i1 @_ZN3sat10simplifier19blocked_clause_elim11process_varEj(ptr noundef nonnull align 8 dereferenceable(140) %0, i32 noundef %i.f)
  br i1 %i.g, label %bb.c, label %bb.y

bb.c:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !374, !nonnull !65, !align !66 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90, !nonnull !65, !align !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 3264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.l = zext i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !251  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge70, label %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit

_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit:       ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %.not102 = icmp eq i32 %i.q, 0
  br i1 %.not102, label %.critedge70, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit, %.critedge68
  %.051103 = phi ptr [ %i.av, %.critedge68 ], [ %i.n, %_ZN6vectorIN3sat7watchedELb1EjE3endEv.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.051103, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !254
  %i.w = and i32 %i.v, 7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %.critedge68

bb.d:                                             ; preds = %.lr.ph
  %i.y = load i64, ptr %.051103, align 8, !tbaa !278
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = xor i32 %1, %i.z
  %.not100 = icmp eq i32 %i.aa, 1
  br i1 %.not100, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1171, ptr noundef nonnull @.str.28)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %0, align 8, !tbaa !374, !nonnull !65, !align !66
  %i.ac = xor i32 %i.z, 1                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !234
  %.not101 = icmp eq i8 %i.ah, 0
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !107 ; 5 uses
  %.not.i = icmp eq ptr %i.ai, null               ; 2 uses
  br i1 %.not101, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4
  store i32 %.0.i, ptr %i.aj, align 4, !tbaa !12
  br label %bb.y

bb.i:                                             ; preds = %bb.f
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !107 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  br label %_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit

_ZN6vectorIN3sat7literalELb0EjE6shrinkEj.exit:    ; preds = %bb.k, %bb.j
  %i.ap = phi i32 [ %.pre2.i, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i, %bb.k ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.as = zext i32 %i.ap to i64
end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIPPN3sat6clauseES3_lN9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEEvT_SA_T0_T1_T2_:bb.a
bb.n:                                             ; preds = %._crit_edge.i23
  %i.bq = icmp eq i64 %i.bo, 8
  br i1 %i.bq, label %bb.o, label %_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit.i27

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %.018.lcssa.i25, align 8, !tbaa !23
  store ptr %i.br, ptr %.0.lcssa.i26, align 8, !tbaa !23
  br label %_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit.i27

_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit.i27: ; preds = %bb.o, %bb.n, %bb.m
  %i.bs = getelementptr inbounds i8, ptr %.0.lcssa.i26, i64 %i.bo ; 2 uses
  %i.bt = ptrtoint ptr %.019.lcssa.i24 to i64
  %i.bu = sub i64 %i.b, %i.bt                     ; 3 uses
  %i.bv = icmp sgt i64 %i.bu, 8
  br i1 %i.bv, label %bb.p, label %bb.q, !prof !439

bb.p:                                             ; preds = %_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bs, ptr align 8 %.019.lcssa.i24, i64 %i.bu, i1 false)
  br label %_ZSt12__move_mergeIPPN3sat6clauseES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEET0_T_SB_SB_SB_SA_T1_.exit37

bb.q:                                             ; preds = %_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit.i27
  %i.bw = icmp eq i64 %i.bu, 8
  br i1 %i.bw, label %bb.r, label %_ZSt12__move_mergeIPPN3sat6clauseES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEET0_T_SB_SB_SB_SA_T1_.exit37

bb.r:                                             ; preds = %bb.q
  %i.bx = load ptr, ptr %.019.lcssa.i24, align 8, !tbaa !23
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !23
  br label %_ZSt12__move_mergeIPPN3sat6clauseES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEET0_T_SB_SB_SB_SA_T1_.exit37

_ZSt12__move_mergeIPPN3sat6clauseES3_N9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEET0_T_SB_SB_SB_SA_T1_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIPPN3sat6clauseElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEEvT_SA_SA_T0_SB_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond71 = or i1 %i.a, %i.b
  br i1 %or.cond71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6876 = phi i64 [ %4, %.lr.ph ], [ %i.bf, %tailrecurse ] ; 4 uses
  %.tr6775 = phi i64 [ %3, %.lr.ph ], [ %i.be, %tailrecurse ] ; 4 uses
  %.tr6573 = phi ptr [ %1, %.lr.ph ], [ %.061, %tailrecurse ] ; 7 uses
  %.tr72 = phi ptr [ %0, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr6876, %.tr6775
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr6573, align 8, !tbaa !23 ; 2 uses
  %i.g = load ptr, ptr %.tr72, align 8, !tbaa !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = icmp ugt i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %.tr72, align 8, !tbaa !23
  store ptr %i.g, ptr %.tr6573, align 8, !tbaa !23
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr6775, %.tr6876
  %i.n = ptrtoint ptr %.tr6573 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit42

_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr6775, 2                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.tr72, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit

_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20
  br label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi ptr [ %.tr6573, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %i.r, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.w = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.017.i, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !20
  %i.ab = icmp ugt i32 %i.aa, %i.v                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = xor i64 %i.w, -1
  %i.ae = add nsw i64 %.01116.i, %i.ad
  %.112.i = select i1 %i.ab, i64 %i.ae, i64 %i.w  ; 2 uses
  %.1.i = select i1 %i.ab, ptr %i.ac, ptr %.017.i ; 3 uses
  %i.af = icmp sgt i64 %.112.i, 0
  br i1 %i.af, label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit, !llvm.loop !532

_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit

_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit ], [ %.tr6573, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub i64 %.pre-phi, %i.n
  %i.ah = ashr exact i64 %i.ag, 3
  br label %tailrecurse

_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.e
  %i.ai = sdiv i64 %.tr6876, 2                    ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.tr6573, i64 %i.ai ; 2 uses
  %i.ak = ptrtoint ptr %.tr72 to i64              ; 3 uses
  %i.al = sub i64 %i.n, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit

_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20
  br label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.017.i46 = phi ptr [ %.tr72, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.1.i51, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %.01116.i47 = phi i64 [ %i.am, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.112.i50, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %i.ar = lshr i64 %.01116.i47, 1                 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.017.i46, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = icmp ugt i32 %i.aq, %i.av               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ay = xor i64 %i.ar, -1
  %i.az = add nsw i64 %.01116.i47, %i.ay
  %.112.i50 = select i1 %i.aw, i64 %i.ar, i64 %i.az ; 2 uses
  %.1.i51 = select i1 %i.aw, ptr %.017.i46, ptr %i.ax ; 3 uses
  %i.ba = icmp sgt i64 %.112.i50, 0
  br i1 %i.ba, label %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit, !llvm.loop !533

_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %.pre79 = ptrtoint ptr %.1.i51 to i64
  br label %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit

_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi80 = phi i64 [ %.pre79, %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.0.lcssa.i43 = phi ptr [ %.1.i51, %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit.loopexit ], [ %.tr72, %_ZSt9__advanceIPPN3sat6clauseElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.bb = sub i64 %.pre-phi80, %i.ak
  %i.bc = ashr exact i64 %i.bb, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit
  %.062 = phi ptr [ %i.p, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ], [ %.0.lcssa.i43, %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.ah, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.o, %_ZSt13__lower_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Iter_comp_valINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ], [ %i.bc, %_ZSt13__upper_boundIPPN3sat6clauseES2_N9__gnu_cxx5__ops14_Val_comp_iterINS0_10simplifier7size_ltEEEET_SA_SA_RKT0_T1_.exit ] ; 2 uses
  %i.bd = tail call noundef ptr @_ZNSt3_V28__rotateIPPN3sat6clauseEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6573, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPPN3sat6clauseElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_10simplifier7size_ltEEEEvT_SA_SA_T0_SB_T1_(ptr noundef %.tr72, ptr noundef %.062, ptr noundef %i.bd, i64 noundef %.0, i64 noundef %.036)
  %i.be = sub nsw i64 %.tr6775, %.0               ; 2 uses
  %i.bf = sub nsw i64 %.tr6876, %.036             ; 2 uses
  %i.bg = icmp eq i64 %i.be, 0
  %i.bh = icmp eq i64 %i.bf, 0
  %or.cond = or i1 %i.bg, %i.bh
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPPN3sat6clauseEEET_S5_S5_S5_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPPN3sat6clauseES3_ET0_T_S5_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPPN3sat6clauseES3_ET0_T_S5_S4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %i.g, %i.d
  %4 = add i64 %3, -8                             ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %4, 104
  br i1 %min.iters.check174, label %.lr.ph.i.preheader190, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep169 = getelementptr i8, ptr %1, i64 %i.q
  %bound0170 = icmp ult ptr %0, %scevgep169
  %bound1171 = icmp ult ptr %1, %scevgep168
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader190, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck167
  %n.vec176 = and i64 %i.m, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec176, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.u = shl i64 %index178, 3                     ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep180 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load181 = load <2 x ptr>, ptr %next.gep180, align 8, !tbaa !23, !alias.scope !534, !noalias !537
  %wide.load182 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !23, !alias.scope !534, !noalias !537
  %i.w = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load183 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !23, !alias.scope !537
  %wide.load184 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !23, !alias.scope !537
  store <2 x ptr> %wide.load183, ptr %next.gep180, align 8, !tbaa !23, !alias.scope !534, !noalias !537
  store <2 x ptr> %wide.load184, ptr %i.v, align 8, !tbaa !23, !alias.scope !534, !noalias !537
  store <2 x ptr> %wide.load181, ptr %next.gep179, align 8, !tbaa !23, !alias.scope !537
  store <2 x ptr> %wide.load182, ptr %i.w, align 8, !tbaa !23, !alias.scope !537
  %index.next185 = add nuw i64 %index178, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.x, label %middle.block186, label %vector.body177, !llvm.loop !539

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.m, %n.vec176
  br i1 %cmp.n187, label %_ZSt11swap_rangesIPPN3sat6clauseES3_ET0_T_S5_S4_.exit, label %.lr.ph.i.preheader190

.lr.ph.i.preheader190:                            ; preds = %vector.memcheck167, %.lr.ph.i.preheader, %middle.block186
  %.010.i.ph = phi ptr [ %1, %vector.memcheck167 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block186 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck167 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block186 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader190, %.lr.ph.i
  %.010.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %.079.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %i.y = load ptr, ptr %.079.i, align 8, !tbaa !23
  %i.z = load ptr, ptr %.010.i, align 8, !tbaa !23
  store ptr %i.z, ptr %.079.i, align 8, !tbaa !23
  store ptr %i.y, ptr %.010.i, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPPN3sat6clauseES3_ET0_T_S5_S4_.exit, label %.lr.ph.i, !llvm.loop !540

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ae = sub nsw i64 %.086, %.082                ; 10 uses
  %i.af = icmp slt i64 %.082, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.082, 1
  br i1 %i.ag, label %_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit, label %bb.g

_ZSt4moveIPPN3sat6clauseES3_ET0_T_S5_S4_.exit:    ; preds = %bb.f
  %i.ah = load ptr, ptr %.058, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nsw i64 %.086, 3                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !23
  br label %_ZSt11swap_rangesIPPN3sat6clauseES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.an = shl i64 %.086, 3
  %i.ao = sub i64 %.086, %.082
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ap
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.an
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.058, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !tbaa !23, !alias.scope !541, !noalias !544
  %wide.load139 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !23, !alias.scope !541, !noalias !544
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !23, !alias.scope !544
  %wide.load141 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !23, !alias.scope !544
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !tbaa !23, !alias.scope !541, !noalias !544
  store <2 x ptr> %wide.load141, ptr %i.au, align 8, !tbaa !23, !alias.scope !541, !noalias !544
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !23, !alias.scope !544
  store <2 x ptr> %wide.load139, ptr %i.av, align 8, !tbaa !23, !alias.scope !544
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader191

.lr.ph110.preheader191:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph110.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.086, %.082
  %xtraiter199 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader191, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bc, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader191 ]
  %.055107.prol = phi ptr [ %i.bb, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.ba, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader191 ]
  %i.ay = load ptr, ptr %.159106.prol, align 8, !tbaa !23
  %i.az = load ptr, ptr %.055107.prol, align 8, !tbaa !23
  store ptr %i.az, ptr %.159106.prol, align 8, !tbaa !23
  store ptr %i.ay, ptr %.055107.prol, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bc = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !547

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader191
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader191 ], [ %i.ba, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader191 ], [ %i.bb, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader191 ], [ %i.ba, %.lr.ph110.prol ]
  %i.bd = sub i64 %.054108.ph, %.086
  %i.be = add i64 %i.bd, %.082
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bv, %.lr.ph110 ]
  %i.bg = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bg, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPPN3sat6clauseES3_ET0_T_S5_S4_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bx, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.bw, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bv, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bh = load ptr, ptr %.159106, align 8, !tbaa !23
  %i.bi = load ptr, ptr %.055107, align 8, !tbaa !23
  store ptr %i.bi, ptr %.159106, align 8, !tbaa !23
  store ptr %i.bh, ptr %.055107, align 8, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !23
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !23
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !23
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.055107, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !23
end_hunk_2
begin_hunk_3_@_ZSt17__merge_sort_loopIPSt4pairIjjES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_T0_T1_T2_:bb.a
  %i.dd = icmp eq i64 %index.next188, %n.vec173
  br i1 %i.dd, label %middle.block189, label %vector.body174, !llvm.loop !643

middle.block189:                                  ; preds = %vector.body174
  %cmp.n190 = icmp eq i64 %i.cv, %n.vec173
  br i1 %cmp.n190, label %_ZSt12__move_mergeIPSt4pairIjjES2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEET0_T_SA_SA_SA_S9_T1_.exit46, label %.lr.ph.i.i.i.i.i22.i30.preheader194

.lr.ph.i.i.i.i.i22.i30.preheader194:              ; preds = %vector.memcheck164, %.lr.ph.i.i.i.i.i22.i30.preheader, %middle.block189
  %.012.i.i.i.i.i23.i31.ph = phi i64 [ %i.cv, %vector.memcheck164 ], [ %i.cv, %.lr.ph.i.i.i.i.i22.i30.preheader ], [ %i.cx, %middle.block189 ]
  %.0811.i.i.i.i.i24.i32.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i28, %vector.memcheck164 ], [ %.08.lcssa.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i22.i30.preheader ], [ %i.cz, %middle.block189 ]
  %.0910.i.i.i.i.i25.i33.ph = phi ptr [ %.019.lcssa.i24, %vector.memcheck164 ], [ %.019.lcssa.i24, %.lr.ph.i.i.i.i.i22.i30.preheader ], [ %i.da, %middle.block189 ]
  br label %.lr.ph.i.i.i.i.i22.i30

.lr.ph.i.i.i.i.i22.i30:                           ; preds = %.lr.ph.i.i.i.i.i22.i30.preheader194, %.lr.ph.i.i.i.i.i22.i30
  %.012.i.i.i.i.i23.i31 = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i22.i30 ], [ %.012.i.i.i.i.i23.i31.ph, %.lr.ph.i.i.i.i.i22.i30.preheader194 ] ; 2 uses
  %.0811.i.i.i.i.i24.i32 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i22.i30 ], [ %.0811.i.i.i.i.i24.i32.ph, %.lr.ph.i.i.i.i.i22.i30.preheader194 ] ; 3 uses
  %.0910.i.i.i.i.i25.i33 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i22.i30 ], [ %.0910.i.i.i.i.i25.i33.ph, %.lr.ph.i.i.i.i.i22.i30.preheader194 ] ; 3 uses
  %i.de = load i32, ptr %.0910.i.i.i.i.i25.i33, align 4, !tbaa !12
  store i32 %i.de, ptr %.0811.i.i.i.i.i24.i32, align 4, !tbaa !579
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !581
  %i.di = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i33, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i32, i64 8
  %i.dk = add nsw i64 %.012.i.i.i.i.i23.i31, -1
  %i.dl = icmp samesign ugt i64 %.012.i.i.i.i.i23.i31, 1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i22.i30, label %_ZSt12__move_mergeIPSt4pairIjjES2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEET0_T_SA_SA_SA_S9_T1_.exit46, !llvm.loop !644

_ZSt12__move_mergeIPSt4pairIjjES2_N9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEET0_T_SA_SA_SA_S9_T1_.exit46: ; preds = %.lr.ph.i.i.i.i.i22.i30, %middle.block189, %_ZSt4moveIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond71 = or i1 %i.a, %i.b
  br i1 %or.cond71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6876 = phi i64 [ %4, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr6775 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr6573 = phi ptr [ %1, %.lr.ph ], [ %.061, %tailrecurse ] ; 8 uses
  %.tr72 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr6876, %.tr6775
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr6573, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !581
  %i.h = getelementptr inbounds nuw i8, ptr %.tr72, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !581
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %.tr72, align 4, !tbaa !12
  %i.l = load i32, ptr %.tr6573, align 4, !tbaa !12
  store i32 %i.l, ptr %.tr72, align 4, !tbaa !12
  store i32 %i.k, ptr %.tr6573, align 4, !tbaa !12
  %i.m = load i32, ptr %i.h, align 4, !tbaa !12
  %i.n = load i32, ptr %i.f, align 4, !tbaa !12
  store i32 %i.n, ptr %i.h, align 4, !tbaa !12
  store i32 %i.m, ptr %i.f, align 4, !tbaa !12
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %.tr6775, %.tr6876
  %i.p = ptrtoint ptr %.tr6573 to i64             ; 4 uses
  br i1 %i.o, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.q = sdiv i64 %.tr6775, 2                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.tr72, i64 %i.q ; 2 uses
  %i.s = sub i64 %i.c, %i.p
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !581
  br label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi ptr [ %.tr6573, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %i.t, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.x = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.017.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !581
  %i.ab = icmp ult i32 %i.aa, %i.w                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = xor i64 %i.x, -1
  %i.ae = add nsw i64 %.01116.i, %i.ad
  %.112.i = select i1 %i.ab, i64 %i.ae, i64 %i.x  ; 2 uses
  %.1.i = select i1 %i.ab, ptr %i.ac, ptr %.017.i ; 3 uses
  %i.af = icmp sgt i64 %.112.i, 0
  br i1 %i.af, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !645

_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.p, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr6573, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ag = sub i64 %.pre-phi, %i.p
  %i.ah = ashr exact i64 %i.ag, 3
  br label %tailrecurse

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42: ; preds = %bb.e
  %i.ai = sdiv i64 %.tr6876, 2                    ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.tr6573, i64 %i.ai ; 2 uses
  %i.ak = ptrtoint ptr %.tr72 to i64              ; 3 uses
  %i.al = sub i64 %i.p, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44, label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !581
  br label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45

_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44
  %.017.i46 = phi ptr [ %.tr72, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.1.i51, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %.01116.i47 = phi i64 [ %i.am, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i44 ], [ %.112.i50, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45 ] ; 2 uses
  %i.aq = lshr i64 %.01116.i47, 1                 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.017.i46, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !581
  %i.au = icmp ult i32 %i.ap, %i.at               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.aw = xor i64 %i.aq, -1
  %i.ax = add nsw i64 %.01116.i47, %i.aw
  %.112.i50 = select i1 %i.au, i64 %i.aq, i64 %i.ax ; 2 uses
  %.1.i51 = select i1 %i.au, ptr %.017.i46, ptr %i.av ; 3 uses
  %i.ay = icmp sgt i64 %.112.i50, 0
  br i1 %i.ay, label %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45, label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, !llvm.loop !646

_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit.i45
  %.pre79 = ptrtoint ptr %.1.i51 to i64
  br label %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit

_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42
  %.pre-phi80 = phi i64 [ %.pre79, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %.0.lcssa.i43 = phi ptr [ %.1.i51, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit.loopexit ], [ %.tr72, %_ZSt9__advanceIPSt4pairIjjElEvRT_T0_St26random_access_iterator_tag.exit42 ]
  %i.az = sub i64 %.pre-phi80, %i.ak
  %i.ba = ashr exact i64 %i.az, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit
  %.062 = phi ptr [ %i.r, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %.0.lcssa.i43, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.061 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.036 = phi i64 [ %i.ah, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.q, %_ZSt13__lower_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Iter_comp_valIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ], [ %i.ba, %_ZSt13__upper_boundIPSt4pairIjjES1_N9__gnu_cxx5__ops14_Val_comp_iterIN3sat20bool_var_and_cost_ltEEEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.bb = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIjjEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.062, ptr noundef %.tr6573, ptr noundef %.061) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPSt4pairIjjElN9__gnu_cxx5__ops15_Iter_comp_iterIN3sat20bool_var_and_cost_ltEEEEvT_S9_S9_T0_SA_T1_(ptr noundef %.tr72, ptr noundef %.062, ptr noundef %i.bb, i64 noundef %.0, i64 noundef %.036)
  %i.bc = sub nsw i64 %.tr6775, %.0               ; 2 uses
  %i.bd = sub nsw i64 %.tr6876, %.036             ; 2 uses
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = icmp eq i64 %i.bd, 0
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPSt4pairIjjEEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %i.g, %i.d
  %4 = add i64 %3, -8                             ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check143 = icmp ult i64 %4, 56
  br i1 %min.iters.check143, label %.lr.ph.i.preheader163, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep137 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep138 = getelementptr i8, ptr %1, i64 %i.q
  %bound0139 = icmp ult ptr %0, %scevgep138
  %bound1140 = icmp ult ptr %1, %scevgep137
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %.lr.ph.i.preheader163, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck136
  %n.vec145 = and i64 %i.m, 4611686018427387902   ; 3 uses
  %i.r = shl i64 %n.vec145, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next158, %vector.body146 ] ; 2 uses
  %i.u = shl i64 %index147, 3                     ; 2 uses
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.u ; 2 uses
  %next.gep149 = getelementptr i8, ptr %0, i64 %i.u ; 2 uses
  %wide.vec150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !12, !alias.scope !647, !noalias !650
  %wide.vec153 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !12, !alias.scope !650
  store <4 x i32> %wide.vec153, ptr %next.gep149, align 4, !tbaa !12, !alias.scope !647, !noalias !650
  store <4 x i32> %wide.vec150, ptr %next.gep148, align 4, !tbaa !12, !alias.scope !650
  %index.next158 = add nuw i64 %index147, 2       ; 2 uses
  %i.v = icmp eq i64 %index.next158, %n.vec145
  br i1 %i.v, label %middle.block159, label %vector.body146, !llvm.loop !652

middle.block159:                                  ; preds = %vector.body146
  %cmp.n160 = icmp eq i64 %i.m, %n.vec145
  br i1 %cmp.n160, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader163

.lr.ph.i.preheader163:                            ; preds = %vector.memcheck136, %.lr.ph.i.preheader, %middle.block159
  %.010.i.ph = phi ptr [ %1, %vector.memcheck136 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block159 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck136 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block159 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader163, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader163 ] ; 4 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader163 ] ; 4 uses
  %i.w = load i32, ptr %.079.i, align 4, !tbaa !12
  %i.x = load i32, ptr %.010.i, align 4, !tbaa !12
  store i32 %i.x, ptr %.079.i, align 4, !tbaa !12
  store i32 %i.w, ptr %.010.i, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !12
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !12
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !12
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !653

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.070 = phi i64 [ %i.f, %bb.d ], [ %.070.be, %.backedge ] ; 7 uses
  %.066 = phi i64 [ %i.i, %bb.d ], [ %.066.be, %.backedge ] ; 14 uses
  %.042 = phi ptr [ %0, %bb.d ], [ %.042.be, %.backedge ] ; 16 uses
  %i.ag = sub nsw i64 %.070, %.066                ; 9 uses
  %i.ah = icmp slt i64 %.066, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.ag, 0
  br i1 %i.ai, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.f
  %i.aj = getelementptr [8 x i8], ptr %.042, i64 %.066 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ag, 14
  br i1 %min.iters.check, label %.lr.ph89.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph89.preheader
  %scevgep = getelementptr i8, ptr %.042, i64 -4  ; 2 uses
  %i.ak = shl i64 %.070, 3                        ; 3 uses
  %i.al = shl i64 %.066, 3                        ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %scevgep103 = getelementptr i8, ptr %scevgep, i64 %i.am ; 3 uses
  %scevgep104 = getelementptr i8, ptr %scevgep, i64 %i.ak ; 3 uses
  %scevgep105 = getelementptr i8, ptr %.042, i64 4 ; 4 uses
  %scevgep106 = getelementptr i8, ptr %.042, i64 %i.am ; 3 uses
  %scevgep107 = getelementptr i8, ptr %scevgep105, i64 %i.al ; 3 uses
  %scevgep108 = getelementptr i8, ptr %.042, i64 %i.ak ; 3 uses
  %bound0 = icmp ult ptr %.042, %scevgep104
  %bound1 = icmp ult ptr %i.aj, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %.042, %scevgep106
  %bound1110 = icmp ult ptr %scevgep105, %scevgep103
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict, %found.conflict111
  %bound0112 = icmp ult ptr %.042, %scevgep108
  %bound1113 = icmp ult ptr %scevgep107, %scevgep103
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx, %found.conflict114
  %bound0116 = icmp ult ptr %i.aj, %scevgep106
  %bound1117 = icmp ult ptr %scevgep105, %scevgep104
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  %bound0120 = icmp ult ptr %i.aj, %scevgep108
  %bound1121 = icmp ult ptr %scevgep107, %scevgep104
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %scevgep105, %scevgep108
  %bound1125 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  br i1 %conflict.rdx127, label %.lr.ph89.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775806     ; 4 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.an
  %i.ap = getelementptr i8, ptr %.042, i64 %i.an  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.aq ; 2 uses
  %next.gep128 = getelementptr i8, ptr %.042, i64 %i.aq ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep128, align 4, !tbaa !12
  %wide.vec130 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !12
  store <4 x i32> %wide.vec130, ptr %next.gep128, align 4, !tbaa !12
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !654

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge90, label %.lr.ph89.preheader164

.lr.ph89.preheader164:                            ; preds = %vector.memcheck, %.lr.ph89.preheader, %middle.block
  %.03987.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph89.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.04086.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph89.preheader ], [ %i.ao, %middle.block ] ; 5 uses
  %.14385.ph = phi ptr [ %.042, %vector.memcheck ], [ %.042, %.lr.ph89.preheader ], [ %i.ap, %middle.block ] ; 5 uses
  %i.as = sub i64 %.070, %.066
  %i.at = xor i64 %.03987.ph, -1
  %i.au = add i64 %.070, %i.at
  %xtraiter167 = and i64 %i.as, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph89.prol.loopexit, label %.lr.ph89.prol

.lr.ph89.prol:                                    ; preds = %.lr.ph89.preheader164
  %i.av = load i32, ptr %.14385.ph, align 4, !tbaa !12
  %i.aw = load i32, ptr %.04086.ph, align 4, !tbaa !12
  store i32 %i.aw, ptr %.14385.ph, align 4, !tbaa !12
  store i32 %i.av, ptr %.04086.ph, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %.14385.ph, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !12
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !12
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !12
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.14385.ph, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04086.ph, i64 8
  %i.bd = or disjoint i64 %.03987.ph, 1
  br label %.lr.ph89.prol.loopexit

.lr.ph89.prol.loopexit:                           ; preds = %.lr.ph89.prol, %.lr.ph89.preheader164
  %.lcssa.unr = phi ptr [ poison, %.lr.ph89.preheader164 ], [ %i.bb, %.lr.ph89.prol ]
  %.03987.unr = phi i64 [ %.03987.ph, %.lr.ph89.preheader164 ], [ %i.bd, %.lr.ph89.prol ]
  %.04086.unr = phi ptr [ %.04086.ph, %.lr.ph89.preheader164 ], [ %i.bc, %.lr.ph89.prol ]
  %.14385.unr = phi ptr [ %.14385.ph, %.lr.ph89.preheader164 ], [ %i.bb, %.lr.ph89.prol ]
  %i.be = icmp eq i64 %i.au, %.066
  br i1 %i.be, label %._crit_edge90, label %.lr.ph89

._crit_edge90:                                    ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89, %middle.block, %bb.f
  %.143.lcssa = phi ptr [ %.042, %bb.f ], [ %i.ap, %middle.block ], [ %.lcssa.unr, %.lr.ph89.prol.loopexit ], [ %i.bu, %.lr.ph89 ]
  %i.bf = srem i64 %.070, %.066                   ; 2 uses
  %.not53 = icmp eq i64 %i.bf, 0
  br i1 %.not53, label %_ZSt11swap_rangesIPSt4pairIjjES2_ET0_T_S4_S3_.exit, label %bb.g

.lr.ph89:                                         ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89
  %.03987 = phi i64 [ %i.bw, %.lr.ph89 ], [ %.03987.unr, %.lr.ph89.prol.loopexit ]
  %.04086 = phi ptr [ %i.bv, %.lr.ph89 ], [ %.04086.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %.14385 = phi ptr [ %i.bu, %.lr.ph89 ], [ %.14385.unr, %.lr.ph89.prol.loopexit ] ; 6 uses
  %i.bg = load i32, ptr %.14385, align 4, !tbaa !12
  %i.bh = load i32, ptr %.04086, align 4, !tbaa !12
  store i32 %i.bh, ptr %.14385, align 4, !tbaa !12
  store i32 %i.bg, ptr %.04086, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.14385, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04086, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !12
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !12
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !12
end_hunk_3
