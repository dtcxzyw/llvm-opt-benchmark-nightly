inline.NumInlined: 325
inline.NumDeleted: 169
begin_hunk_0_@_ZN3sat8elim_eqs15cleanup_clausesERK7svectorINS_7literalEjER10ptr_vectorINS_6clauseEE:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = phi ptr [ %i.al, %bb.i ], [ %i.ak, %bb.h ]
  %i.an = load i32, ptr %i.ad, align 4
  %i.ao = and i32 %i.an, 4
  %i.ap = icmp ne i32 %i.ao, 0
  call void @_ZN3sat10tmp_clause3setEjPKNS_7literalEb(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %i.r, ptr noundef nonnull %i.s, i1 noundef zeroext %i.ap)
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.g, %bb.j
  %wide.trip.count217 = zext i32 %i.r to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph181, %bb.o
  %indvars.iv214 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next215, %bb.o ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv214 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21 ; 3 uses
  %i.as = lshr i32 %i.ar, 1
  %i.at = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.au = zext nneg i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %.sroa.0.0.copyload.i130 = load i32, ptr %i.av, align 4, !tbaa !21 ; 2 uses
  %i.aw = and i32 %i.ar, 1
  %.sroa.02.0.i131 = xor i32 %.sroa.0.0.copyload.i130, %i.aw ; 4 uses
  store i32 %.sroa.02.0.i131, ptr %i.aq, align 4, !tbaa !21
  %i.ax = lshr i32 %.sroa.0.0.copyload.i130, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ay
  %.sroa.0.0.copyload.i132 = load i32, ptr %i.az, align 4, !tbaa !21
  %i.ba = and i32 %.sroa.02.0.i131, 1
  %.sroa.02.0.i133 = xor i32 %.sroa.0.0.copyload.i132, %i.ba
  %i.bb = icmp eq i32 %.sroa.02.0.i131, %.sroa.02.0.i133
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre227 = load i32, ptr %i.aq, align 4, !tbaa !208
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi i32 [ %.pre227, %bb.l ], [ %.sroa.02.0.i131, %bb.k ] ; 2 uses
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.be = lshr i32 %i.bc, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 3312
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !209
  %i.bh = zext nneg i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !192, !range !42, !noundef !23
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = icmp ne i32 %i.ar, %i.bc
  %or.cond.not = and i1 %i.bl, %i.bk
  br i1 %or.cond.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.2)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge182, label %bb.k, !llvm.loop !210

._crit_edge182:                                   ; preds = %bb.o
  %i.bm = load i32, ptr %i.q, align 4, !tbaa !205 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %.lr.ph189.preheader, label %_ZSt4sortIPN3sat7literalEEvT_S3_.exit

_ZSt4sortIPN3sat7literalEEvT_S3_.exit:            ; preds = %._crit_edge182
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx ; 2 uses
  %i.bp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bq = shl nuw nsw i64 %i.bp, 1
  %i.br = xor i64 %i.bq, 126
  call void @_ZSt16__introsort_loopIPN3sat7literalElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.bo, i64 noundef %i.br)
  call void @_ZSt22__final_insertion_sortIPN3sat7literalEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.bo)
  %.pre228 = load i32, ptr %i.q, align 4, !tbaa !205 ; 2 uses
  %i.bs = zext i32 %.pre228 to i64
  %.idx209 = shl nuw nsw i64 %i.bs, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx209
  %.not128183 = icmp eq i32 %.pre228, 0
  br i1 %.not128183, label %.lr.ph189.preheader, label %.lr.ph185

.lr.ph189.preheader:                              ; preds = %bb.q, %_ZSt4sortIPN3sat7literalEEvT_S3_.exit, %._crit_edge182
  %wide.trip.count222 = zext i32 %i.r to i64
  br label %.lr.ph189

.lr.ph185:                                        ; preds = %_ZSt4sortIPN3sat7literalEEvT_S3_.exit, %bb.q
  %.0118184 = phi ptr [ %i.cb, %bb.q ], [ %i.s, %_ZSt4sortIPN3sat7literalEEvT_S3_.exit ] ; 2 uses
  %i.bu = load i32, ptr %.0118184, align 4, !tbaa !21 ; 3 uses
  %i.bv = lshr i32 %i.bu, 1
  %i.bw = load ptr, ptr %1, align 8, !tbaa !28
  %i.bx = zext nneg i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %.sroa.0.0.copyload.i134 = load i32, ptr %i.by, align 4, !tbaa !21
  %i.bz = and i32 %i.bu, 1
  %.sroa.02.0.i135 = xor i32 %.sroa.0.0.copyload.i134, %i.bz
  %i.ca = icmp eq i32 %i.bu, %.sroa.02.0.i135
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph185
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 137, ptr noundef nonnull @.str.3)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph185
  %i.cb = getelementptr inbounds nuw i8, ptr %.0118184, i64 4 ; 2 uses
  %.not128 = icmp eq ptr %i.cb, %i.bt
  br i1 %.not128, label %.lr.ph189.preheader, label %.lr.ph185

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %bb.u
  %indvars.iv219 = phi i64 [ 0, %.lr.ph189.preheader ], [ %indvars.iv.next220, %bb.u ] ; 2 uses
  %.0111188 = phi i32 [ 0, %.lr.ph189.preheader ], [ %.2113.ph, %bb.u ] ; 4 uses
  %.sroa.0146.0186 = phi i32 [ -2, %.lr.ph189.preheader ], [ %.sroa.0146.1.ph, %bb.u ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv219
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21 ; 6 uses
  %i.ce = xor i32 %i.cd, %.sroa.0146.0186
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph189._crit_edge, label %bb.r

.lr.ph189._crit_edge:                             ; preds = %.lr.ph189
  %.pre229 = load ptr, ptr %i.j, align 8, !tbaa !22
  br label %split

bb.r:                                             ; preds = %.lr.ph189
  %i.cg = icmp eq i32 %i.cd, %.sroa.0146.0186
  br i1 %i.cg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 3272
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.ck = zext i32 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  switch i32 %i.cm, label %bb.t [
    i32 1, label %split
    i32 -1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.cn = zext i32 %.0111188 to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cn
  store i32 %i.cd, ptr %i.co, align 4, !tbaa !21
  %i.cp = add i32 %.0111188, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t
  %.sroa.0146.1.ph = phi i32 [ %.sroa.0146.0186, %bb.r ], [ %i.cd, %bb.t ], [ %i.cd, %bb.s ]
  %.2113.ph = phi i32 [ %.0111188, %bb.r ], [ %i.cp, %bb.t ], [ %.0111188, %bb.s ] ; 4 uses
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %._crit_edge190, label %.lr.ph189, !llvm.loop !211

split:                                            ; preds = %bb.s, %.lr.ph189._crit_edge
  %i.cq = phi ptr [ %.pre229, %.lr.ph189._crit_edge ], [ %i.ch, %bb.s ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 344
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !202, !range !42, !noundef !23
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.v, label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit

bb.v:                                             ; preds = %split
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 536
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !18
  call void @_ZN3sat4drat3delERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %i.cu, ptr noundef nonnull align 4 dereferenceable(20) %i.cw)
  br label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit

_ZN3sat8elim_eqs18drat_delete_clauseEv.exit:      ; preds = %split, %bb.v
  %i.cx = load i32, ptr %i.ad, align 4
  %i.cy = or i32 %i.cx, 2
  store i32 %i.cy, ptr %i.ad, align 4
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.cz, ptr noundef nonnull align 4 dereferenceable(20) %i.p)
  br label %bb.am

._crit_edge190:                                   ; preds = %bb.u
  switch i32 %.2113.ph, label %bb.af [
    i32 0, label %._crit_edge190.thread
    i32 1, label %bb.w
    i32 2, label %bb.ad
  ]

._crit_edge190.thread:                            ; preds = %._crit_edge190
  %.0107193268.le = ptrtoaddr ptr %.0107193 to i64
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %5, align 8
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.21.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %i.da, ptr noundef nonnull byval(%"class.sat::justification") align 8 %5, i32 -2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not129199 = icmp eq ptr %.0194, %i.i
  br i1 %.not129199, label %._crit_edge204, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %._crit_edge190.thread
  %i.db = add nsw i64 %i.h, -8
  %7 = lshr exact i64 %i.db, 3
  %8 = add nuw nsw i64 %7, 1
  %9 = mul i64 %indvar, 2305843009213693951
  %i.dc = add i64 %9, %8                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 24
  br i1 %min.iters.check, label %.lr.ph203.preheader272, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph203.preheader
  %i.dd = mul nsw i64 %indvar, -8
  %i.de = sub i64 %i.dd, %i.c
  %i.df = add i64 %i.de, %.0107193268.le
  %i.dg = add i64 %i.df, -1
  %diff.check = icmp ult i64 %i.dg, 31
  br i1 %diff.check, label %.lr.ph203.preheader272, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, -4                      ; 3 uses
  %i.dh = shl i64 %n.vec, 3                       ; 2 uses
  %i.di = getelementptr i8, ptr %.0194, i64 %i.dh
  %i.dj = getelementptr i8, ptr %.0107193, i64 %i.dh ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0194, i64 %i.dk ; 2 uses
  %next.gep269 = getelementptr i8, ptr %.0107193, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !204
  %wide.load270 = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !204
  %i.dm = getelementptr i8, ptr %next.gep269, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep269, align 8, !tbaa !204
  store <2 x ptr> %wide.load270, ptr %i.dm, align 8, !tbaa !204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !212

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %._crit_edge204, label %.lr.ph203.preheader272

.lr.ph203.preheader272:                           ; preds = %vector.memcheck, %.lr.ph203.preheader, %middle.block
  %.1201.ph = phi ptr [ %.0194, %vector.memcheck ], [ %.0194, %.lr.ph203.preheader ], [ %i.di, %middle.block ]
  %.1108200.ph = phi ptr [ %.0107193, %vector.memcheck ], [ %.0107193, %.lr.ph203.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader272, %.lr.ph203
  %.1201 = phi ptr [ %i.dq, %.lr.ph203 ], [ %.1201.ph, %.lr.ph203.preheader272 ] ; 2 uses
  %.1108200 = phi ptr [ %i.dp, %.lr.ph203 ], [ %.1108200.ph, %.lr.ph203.preheader272 ] ; 2 uses
  %i.do = load ptr, ptr %.1201, align 8, !tbaa !204
  store ptr %i.do, ptr %.1108200, align 8, !tbaa !204
  %i.dp = getelementptr inbounds nuw i8, ptr %.1108200, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1201, i64 8 ; 2 uses
  %.not129 = icmp eq ptr %i.dq, %i.i
  br i1 %.not129, label %._crit_edge204, label %.lr.ph203, !llvm.loop !215

._crit_edge204:                                   ; preds = %.lr.ph203, %middle.block, %._crit_edge190.thread
  %.1108.lcssa = phi ptr [ %.0107193, %._crit_edge190.thread ], [ %i.dj, %middle.block ], [ %i.dp, %.lr.ph203 ]
  %i.dr = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %.not.i = icmp eq ptr %i.dr, null
  br i1 %.not.i, label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit, label %_ZN6vectorIPN3sat6clauseELb0EjE7set_endEPS2_.exit.sink.split

bb.w:                                             ; preds = %._crit_edge190
  %i.ds = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 5 uses
  %.sroa.02.0.copyload = load i32, ptr %i.s, align 4, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 0, ptr %4, align 8
  store i64 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.3.0..sroa_idx.i136, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 3272
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !38
  %i.dv = zext i32 %.sroa.02.0.copyload to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !40
  switch i32 %i.dx, label %_ZN3sat6solver11assign_unitENS_7literalE.exit [
    i32 -1, label %bb.x
    i32 0, label %bb.y
    i32 1, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.dy = xor i32 %.sroa.02.0.copyload, 1
  call void @_ZN3sat6solver12set_conflictENS_13justificationENS_7literalE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ds, ptr noundef nonnull byval(%"class.sat::justification") align 8 %4, i32 %i.dy)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.y:                                             ; preds = %bb.w
  call void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ds, i32 %.sroa.02.0.copyload, ptr noundef nonnull byval(%"class.sat::justification") align 8 %4)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.z:                                             ; preds = %bb.w
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 3832
  %i.ea = load i8, ptr %i.dz, align 8, !range !42
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 3280
  %i.ed = lshr i32 %.sroa.02.0.copyload, 1
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !43
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ef ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !46
  %.not.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i.i, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.eg, align 8, !tbaa !21
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx10.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

_ZN3sat6solver11assign_unitENS_7literalE.exit:    ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 344
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !202, !range !42, !noundef !23
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ac, label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit137

bb.ac:                                            ; preds = %_ZN3sat6solver11assign_unitENS_7literalE.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 536
  %i.en = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !18
  call void @_ZN3sat4drat3delERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %i.em, ptr noundef nonnull align 4 dereferenceable(20) %i.eo)
  br label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit137

_ZN3sat8elim_eqs18drat_delete_clauseEv.exit137:   ; preds = %_ZN3sat6solver11assign_unitENS_7literalE.exit, %bb.ac
  %i.ep = load i32, ptr %i.ad, align 4
  %i.eq = or i32 %i.ep, 2
  store i32 %i.eq, ptr %i.ad, align 4
  %i.er = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.er, ptr noundef nonnull align 4 dereferenceable(20) %i.p)
  br label %bb.am

bb.ad:                                            ; preds = %._crit_edge190
  %i.es = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24
  %.sroa.01.0.copyload = load i32, ptr %i.s, align 4, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.et, align 4, !tbaa !21
  %i.eu = load i32, ptr %i.ad, align 4
  %i.ev = and i32 %i.eu, 4
  %.not170 = icmp eq i32 %i.ev, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %spec.select.i = select i1 %.not170, i32 1, i32 2
  store i32 %spec.select.i, ptr %3, align 8, !tbaa !196
  store i32 -1, ptr %i.l, align 4, !tbaa !200
  store ptr null, ptr %i.m, align 8, !tbaa !201
  call void @_ZN3sat6solver13mk_bin_clauseENS_7literalES1_NS_6statusE(ptr noundef nonnull align 8 dereferenceable(4264) %i.es, i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dead_on_return %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 344
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !202, !range !42, !noundef !23
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ae, label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit138

bb.ae:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 536
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !18
  call void @_ZN3sat4drat3delERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %i.fa, ptr noundef nonnull align 4 dereferenceable(20) %i.fc)
  br label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit138

_ZN3sat8elim_eqs18drat_delete_clauseEv.exit138:   ; preds = %bb.ad, %bb.ae
  %i.fd = load i32, ptr %i.ad, align 4
  %i.fe = or i32 %i.fd, 2
  store i32 %i.fe, ptr %i.ad, align 4
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24
  call void @_ZN3sat6solver10del_clauseERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(4264) %i.ff, ptr noundef nonnull align 4 dereferenceable(20) %i.p)
  br label %bb.am

bb.af:                                            ; preds = %._crit_edge190
  %i.fg = icmp ult i32 %.2113.ph, %i.r
  br i1 %i.fg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @_ZN3sat6clause6shrinkEj(ptr noundef nonnull align 4 dereferenceable(20) %i.p, i32 noundef %.2113.ph)
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @_ZN3sat6clause13update_approxEv(ptr noundef nonnull align 4 dereferenceable(20) %i.p)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 344
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !202, !range !42, !noundef !23
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.aj, label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit139

bb.aj:                                            ; preds = %bb.ai
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 536
  store i32 2, ptr %6, align 8, !tbaa !196, !alias.scope !216
  store i32 -1, ptr %i.n, align 4, !tbaa !200, !alias.scope !216
  store ptr null, ptr %i.o, align 8, !tbaa !201, !alias.scope !216
  call void @_ZN3sat4drat3addERNS_6clauseENS_6statusE(ptr noundef nonnull align 8 dereferenceable(664) %i.fl, ptr noundef nonnull align 4 dereferenceable(20) %i.p, ptr noundef nonnull align 8 dead_on_return %6)
  %i.fm = load ptr, ptr %i.j, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 344
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !202, !range !42, !noundef !23
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ak, label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit139

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 536
  %i.fr = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !18
  call void @_ZN3sat4drat3delERNS_6clauseE(ptr noundef nonnull align 8 dereferenceable(664) %i.fq, ptr noundef nonnull align 4 dereferenceable(20) %i.fs)
  br label %_ZN3sat8elim_eqs18drat_delete_clauseEv.exit139

_ZN3sat8elim_eqs18drat_delete_clauseEv.exit139:   ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ft = load ptr, ptr %.0194, align 8, !tbaa !204
  store ptr %i.ft, ptr %.0107193, align 8, !tbaa !204
  %i.fu = getelementptr inbounds nuw i8, ptr %.0107193, i64 8 ; 2 uses
  %i.fv = load i32, ptr %i.ad, align 4
  %i.fw = and i32 %i.fv, 16
  %.not171 = icmp eq i32 %i.fw, 0
  br i1 %.not171, label %bb.al, label %bb.am

end_hunk_0
