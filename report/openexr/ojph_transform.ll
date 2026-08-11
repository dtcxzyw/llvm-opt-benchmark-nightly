inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local17gen_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %i.oe = zext i32 %4 to i64                      ; 2 uses
  %min.iters.check98 = icmp ult i32 %4, 12
  br i1 %min.iters.check98, label %.lr.ph34.i.preheader345, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.lr.ph34.i.preheader
  %i.of = add i32 %4, -1
  %i.og = zext i32 %i.of to i64
  %i.oh = shl nuw nsw i64 %i.og, 2
  %i.oi = add nuw nsw i64 %i.oh, 4                ; 3 uses
  %scevgep87 = getelementptr i8, ptr %.val32, i64 %i.oi ; 2 uses
  %scevgep88 = getelementptr i8, ptr %.val30, i64 %i.oi
  %scevgep89 = getelementptr i8, ptr %.val31, i64 %i.oi
  %bound090 = icmp ult ptr %.val32, %scevgep88
  %bound191 = icmp ult ptr %.val30, %scevgep87
  %found.conflict92 = and i1 %bound090, %bound191
  %bound093 = icmp ult ptr %.val32, %scevgep89
  %bound194 = icmp ult ptr %.val31, %scevgep87
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx96 = or i1 %found.conflict92, %found.conflict95
  br i1 %conflict.rdx96, label %.lr.ph34.i.preheader345, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck86
  %n.vec100 = and i64 %i.oe, 4294967292           ; 4 uses
  %i.oj = trunc nuw i64 %n.vec100 to i32
  %i.ok = sub i32 %4, %i.oj
  %i.ol = shl nuw nsw i64 %n.vec100, 2            ; 3 uses
  %i.om = getelementptr i8, ptr %.val31, i64 %i.ol
  %i.on = getelementptr i8, ptr %.val30, i64 %i.ol
  %i.oo = getelementptr i8, ptr %.val32, i64 %i.ol
  %broadcast.splatinsert101 = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat102 = shufflevector <4 x i32> %broadcast.splatinsert101, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat104 = shufflevector <4 x i32> %broadcast.splatinsert103, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <4 x i32> poison, i32 %i.en, i64 0
  %broadcast.splat106 = shufflevector <4 x i32> %broadcast.splatinsert105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph99
  %index108 = phi i64 [ 0, %vector.ph99 ], [ %index.next115, %vector.body107 ] ; 2 uses
  %i.op = shl i64 %index108, 2                    ; 3 uses
  %next.gep109 = getelementptr i8, ptr %.val31, i64 %i.op
  %next.gep110 = getelementptr i8, ptr %.val30, i64 %i.op
  %next.gep111 = getelementptr i8, ptr %.val32, i64 %i.op ; 2 uses
  %wide.load112 = load <4 x i32>, ptr %next.gep110, align 4, !tbaa !14, !alias.scope !87
  %wide.load113 = load <4 x i32>, ptr %next.gep109, align 4, !tbaa !14, !alias.scope !90
  %i.oq = add nsw <4 x i32> %wide.load113, %wide.load112
  %i.or = mul nsw <4 x i32> %i.oq, %broadcast.splat102
  %i.os = add nsw <4 x i32> %i.or, %broadcast.splat104
  %i.ot = ashr <4 x i32> %i.os, %broadcast.splat106
  %wide.load114 = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !14, !alias.scope !92, !noalias !94
  %i.ou = sub nsw <4 x i32> %wide.load114, %i.ot
  store <4 x i32> %i.ou, ptr %next.gep111, align 4, !tbaa !14, !alias.scope !92, !noalias !94
  %index.next115 = add nuw i64 %index108, 4       ; 2 uses
  %i.ov = icmp eq i64 %index.next115, %n.vec100
  br i1 %i.ov, label %middle.block116, label %vector.body107, !llvm.loop !95

middle.block116:                                  ; preds = %vector.body107
  %cmp.n117 = icmp eq i64 %n.vec100, %i.oe
  br i1 %cmp.n117, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i.preheader345

.lr.ph34.i.preheader345:                          ; preds = %vector.memcheck86, %.lr.ph34.i.preheader, %middle.block116
  %.08233.i.ph = phi i32 [ %4, %vector.memcheck86 ], [ %4, %.lr.ph34.i.preheader ], [ %i.ok, %middle.block116 ] ; 4 uses
  %.632.i.ph = phi ptr [ %.val31, %vector.memcheck86 ], [ %.val31, %.lr.ph34.i.preheader ], [ %i.om, %middle.block116 ] ; 3 uses
  %.69631.i.ph = phi ptr [ %.val30, %vector.memcheck86 ], [ %.val30, %.lr.ph34.i.preheader ], [ %i.on, %middle.block116 ] ; 3 uses
  %.610430.i.ph = phi ptr [ %.val32, %vector.memcheck86 ], [ %.val32, %.lr.ph34.i.preheader ], [ %i.oo, %middle.block116 ] ; 4 uses
  %xtraiter349 = and i32 %.08233.i.ph, 1
  %lcmp.mod350.not = icmp eq i32 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.lr.ph34.i.prol.loopexit, label %.lr.ph34.i.prol

.lr.ph34.i.prol:                                  ; preds = %.lr.ph34.i.preheader345
  %i.ow = getelementptr inbounds nuw i8, ptr %.69631.i.ph, i64 4
  %i.ox = load i32, ptr %.69631.i.ph, align 4, !tbaa !14
  %i.oy = getelementptr inbounds nuw i8, ptr %.632.i.ph, i64 4
  %i.oz = load i32, ptr %.632.i.ph, align 4, !tbaa !14
  %i.pa = add nsw i32 %i.oz, %i.ox
  %i.pb = mul nsw i32 %i.pa, %i.t
  %i.pc = add nsw i32 %i.pb, %i.w
  %i.pd = ashr i32 %i.pc, %i.en
  %i.pe = getelementptr inbounds nuw i8, ptr %.610430.i.ph, i64 4
  %i.pf = load i32, ptr %.610430.i.ph, align 4, !tbaa !14
  %i.pg = sub nsw i32 %i.pf, %i.pd
  store i32 %i.pg, ptr %.610430.i.ph, align 4, !tbaa !14
  %i.ph = add nsw i32 %.08233.i.ph, -1
  br label %.lr.ph34.i.prol.loopexit

.lr.ph34.i.prol.loopexit:                         ; preds = %.lr.ph34.i.prol, %.lr.ph34.i.preheader345
  %.08233.i.unr = phi i32 [ %.08233.i.ph, %.lr.ph34.i.preheader345 ], [ %i.ph, %.lr.ph34.i.prol ]
  %.632.i.unr = phi ptr [ %.632.i.ph, %.lr.ph34.i.preheader345 ], [ %i.oy, %.lr.ph34.i.prol ]
  %.69631.i.unr = phi ptr [ %.69631.i.ph, %.lr.ph34.i.preheader345 ], [ %i.ow, %.lr.ph34.i.prol ]
  %.610430.i.unr = phi ptr [ %.610430.i.ph, %.lr.ph34.i.preheader345 ], [ %i.pe, %.lr.ph34.i.prol ]
  %i.pi = icmp eq i32 %.08233.i.ph, 1
  br i1 %i.pi, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %.lr.ph34.i.prol.loopexit, %.lr.ph34.i
  %.08233.i = phi i32 [ %i.qf, %.lr.ph34.i ], [ %.08233.i.unr, %.lr.ph34.i.prol.loopexit ]
  %.632.i = phi ptr [ %i.pw, %.lr.ph34.i ], [ %.632.i.unr, %.lr.ph34.i.prol.loopexit ] ; 3 uses
  %.69631.i = phi ptr [ %i.pu, %.lr.ph34.i ], [ %.69631.i.unr, %.lr.ph34.i.prol.loopexit ] ; 3 uses
  %.610430.i = phi ptr [ %i.qc, %.lr.ph34.i ], [ %.610430.i.unr, %.lr.ph34.i.prol.loopexit ] ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.69631.i, i64 4
  %i.pk = load i32, ptr %.69631.i, align 4, !tbaa !14
  %i.pl = getelementptr inbounds nuw i8, ptr %.632.i, i64 4
  %i.pm = load i32, ptr %.632.i, align 4, !tbaa !14
  %i.pn = add nsw i32 %i.pm, %i.pk
  %i.po = mul nsw i32 %i.pn, %i.t
  %i.pp = add nsw i32 %i.po, %i.w
  %i.pq = ashr i32 %i.pp, %i.en
  %i.pr = getelementptr inbounds nuw i8, ptr %.610430.i, i64 4 ; 2 uses
  %i.ps = load i32, ptr %.610430.i, align 4, !tbaa !14
  %i.pt = sub nsw i32 %i.ps, %i.pq
  store i32 %i.pt, ptr %.610430.i, align 4, !tbaa !14
  %i.pu = getelementptr inbounds nuw i8, ptr %.69631.i, i64 8
  %i.pv = load i32, ptr %i.pj, align 4, !tbaa !14
  %i.pw = getelementptr inbounds nuw i8, ptr %.632.i, i64 8
  %i.px = load i32, ptr %i.pl, align 4, !tbaa !14
  %i.py = add nsw i32 %i.px, %i.pv
  %i.pz = mul nsw i32 %i.py, %i.t
  %i.qa = add nsw i32 %i.pz, %i.w
  %i.qb = ashr i32 %i.qa, %i.en
  %i.qc = getelementptr inbounds nuw i8, ptr %.610430.i, i64 8
  %i.qd = load i32, ptr %i.pr, align 4, !tbaa !14
  %i.qe = sub nsw i32 %i.qd, %i.qb
  store i32 %i.qe, ptr %i.pr, align 4, !tbaa !14
  %i.qf = add i32 %.08233.i, -2                   ; 2 uses
  %.not108.i.1 = icmp eq i32 %i.qf, 0
  br i1 %.not108.i.1, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i, !llvm.loop !96

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.028.i = phi i32 [ %i.rc, %.lr.ph.i ], [ %.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %.727.i = phi ptr [ %i.qt, %.lr.ph.i ], [ %.727.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.79726.i = phi ptr [ %i.qr, %.lr.ph.i ], [ %.79726.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.710525.i = phi ptr [ %i.qz, %.lr.ph.i ], [ %.710525.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.79726.i, i64 4
  %i.qh = load i32, ptr %.79726.i, align 4, !tbaa !14
  %i.qi = getelementptr inbounds nuw i8, ptr %.727.i, i64 4
  %i.qj = load i32, ptr %.727.i, align 4, !tbaa !14
  %i.qk = add nsw i32 %i.qj, %i.qh
  %i.ql = mul nsw i32 %i.qk, %i.t
  %i.qm = add nsw i32 %i.ql, %i.w
  %i.qn = ashr i32 %i.qm, %i.en
  %i.qo = getelementptr inbounds nuw i8, ptr %.710525.i, i64 4 ; 2 uses
  %i.qp = load i32, ptr %.710525.i, align 4, !tbaa !14
  %i.qq = add nsw i32 %i.qn, %i.qp
  store i32 %i.qq, ptr %.710525.i, align 4, !tbaa !14
  %i.qr = getelementptr inbounds nuw i8, ptr %.79726.i, i64 8
  %i.qs = load i32, ptr %i.qg, align 4, !tbaa !14
  %i.qt = getelementptr inbounds nuw i8, ptr %.727.i, i64 8
  %i.qu = load i32, ptr %i.qi, align 4, !tbaa !14
  %i.qv = add nsw i32 %i.qu, %i.qs
  %i.qw = mul nsw i32 %i.qv, %i.t
  %i.qx = add nsw i32 %i.qw, %i.w
  %i.qy = ashr i32 %i.qx, %i.en
  %i.qz = getelementptr inbounds nuw i8, ptr %.710525.i, i64 8
  %i.ra = load i32, ptr %i.qo, align 4, !tbaa !14
  %i.rb = add nsw i32 %i.qy, %i.ra
  store i32 %i.rb, ptr %i.qo, align 4, !tbaa !14
  %i.rc = add i32 %.028.i, -2                     ; 2 uses
  %.not.i.1 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.1, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i, !llvm.loop !97

_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %.lr.ph40.i.prol.loopexit, %.lr.ph40.i, %.lr.ph46.i.prol.loopexit, %.lr.ph46.i, %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.lr.ph58.i.prol.loopexit, %.lr.ph58.i, %scalar.ph273.prol.loopexit, %scalar.ph273, %scalar.ph310.prol.loopexit, %scalar.ph310, %middle.block, %middle.block116, %middle.block153, %middle.block190, %middle.block223, %middle.block256, %middle.block293, %middle.block330, %.preheader20.i, %.preheader22.i, %.preheader16.i, %.preheader18.i, %.preheader12.i, %.preheader14.i, %.preheader.i, %.preheader10.i, %.split, %.split17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp ugt i32 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %.loopexit140.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 3 uses
  br i1 %5, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.l, ptr %i.f, align 4, !tbaa !14
  %i.n = add i32 %4, -1                           ; 2 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.d, %bb.c
  %.0103190.i = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.c ] ; 7 uses
  %.0115189.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 7 uses
  %.0117188.i = phi i32 [ %i.n, %bb.d ], [ %4, %bb.c ] ; 7 uses
  %i.p = icmp ne i32 %.0117188.i, 2
  %.neg = sext i1 %i.p to i32
  %i.q = add i32 %.0117188.i, -1
  %i.r = add i32 %i.q, %.neg                      ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %narrow = add nuw i32 %i.s, 1
  %i.t = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 70
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.u = add i32 %.0117188.i, -1
  %i.v = icmp ne i32 %.0117188.i, 2
  %umin.neg = sext i1 %i.v to i32
  %i.w = add i32 %i.u, %umin.neg
  %i.x = lshr i32 %i.w, 1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 4                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.aa ; 2 uses
  %scevgep131 = getelementptr i8, ptr %.0103190.i, i64 %i.aa ; 2 uses
  %i.ab = shl nuw nsw i64 %i.y, 3
  %i.ac = getelementptr i8, ptr %.0115189.i, i64 %i.ab
  %scevgep132 = getelementptr i8, ptr %i.ac, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.h, %scevgep131
  %bound1 = icmp ult ptr %.0103190.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %i.h, %scevgep132
  %bound1134 = icmp ult ptr %.0115189.i, %scevgep
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  %bound0136 = icmp ult ptr %.0103190.i, %scevgep132
  %bound1137 = icmp ult ptr %.0115189.i, %scevgep131
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 4294967292               ; 5 uses
  %i.ad = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ae = getelementptr i8, ptr %.0103190.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.h, i64 %i.ad   ; 2 uses
  %i.ag = shl nuw nsw i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %.0115189.i, i64 %i.ag ; 2 uses
  %i.ai = trunc nuw i64 %n.vec to i32
  %i.aj = shl i32 %i.ai, 1
  %i.ak = sub i32 %.0117188.i, %i.aj              ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0103190.i, i64 %i.al
  %next.gep140 = getelementptr i8, ptr %i.h, i64 %i.al
  %i.am = shl i64 %index, 3
  %next.gep141 = getelementptr i8, ptr %.0115189.i, i64 %i.am
  %wide.vec = load <8 x i32>, ptr %next.gep141, align 4, !tbaa !14, !alias.scope !98 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec142 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %strided.vec, ptr %next.gep140, align 4, !tbaa !14, !alias.scope !101, !noalias !103
  store <4 x i32> %strided.vec142, ptr %next.gep, align 4, !tbaa !14, !alias.scope !105, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.1144.i.ph = phi ptr [ %.0103190.i, %vector.memcheck ], [ %.0103190.i, %.lr.ph.preheader.i ], [ %i.ae, %middle.block ]
  %.0114143.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader.i ], [ %i.af, %middle.block ]
  %.1116142.i.ph = phi ptr [ %.0115189.i, %vector.memcheck ], [ %.0115189.i, %.lr.ph.preheader.i ], [ %i.ah, %middle.block ]
  %.1118141.i.ph = phi i32 [ %.0117188.i, %vector.memcheck ], [ %.0117188.i, %.lr.ph.preheader.i ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1144.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.1144.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0114143.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.0114143.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1116142.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.1116142.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.1118141.i = phi i32 [ %i.au, %.lr.ph.i ], [ %.1118141.i.ph, %.lr.ph.i.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.1116142.i, i64 4
  %i.ap = load i32, ptr %.1116142.i, align 4, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %.0114143.i, i64 4 ; 2 uses
  store i32 %i.ap, ptr %.0114143.i, align 4, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %.1116142.i, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %.1144.i, i64 4
  store i32 %i.as, ptr %.1144.i, align 4, !tbaa !14
  %i.au = add i32 %.1118141.i, -2                 ; 3 uses
  %i.av = icmp ugt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !107

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.lcssa130 = phi ptr [ %i.af, %middle.block ], [ %i.aq, %.lr.ph.i ]
  %.lcssa129 = phi ptr [ %i.ah, %middle.block ], [ %i.ar, %.lr.ph.i ]
  %.lcssa128 = phi i32 [ %i.ak, %middle.block ], [ %i.au, %.lr.ph.i ]
  %i.aw = icmp eq i32 %.lcssa128, 0
  br i1 %i.aw, label %bb.e, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.0114.lcssa195.i = phi ptr [ %.lcssa130, %._crit_edge.i ], [ %i.h, %bb.d ]
  %.1116.lcssa194.i = phi ptr [ %.lcssa129, %._crit_edge.i ], [ %i.k, %bb.d ]
  %i.ax = load i32, ptr %.1116.lcssa194.i, align 4, !tbaa !14
  store i32 %i.ax, ptr %.0114.lcssa195.i, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !108 ; 2 uses
  %.not127167.i = icmp eq i8 %i.az, 0
  br i1 %.not127167.i, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %bb.e
  %not..i = xor i1 %5, true
  %i.ba = zext i1 %not..i to i32
  %i.bb = add i32 %4, %i.ba
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = zext i1 %5 to i32
  %i.be = add i32 %4, %i.bd
  %i.bf = lshr i32 %i.be, 1
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !114
  %i.bk = zext i8 %i.az to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph175.i
  %indvars.iv.i = phi i64 [ %i.bk, %.lr.ph175.i ], [ %i.bp, %.loopexit.i ]
  %.0.in173.i = phi i1 [ %5, %.lr.ph175.i ], [ %i.le, %.loopexit.i ] ; 6 uses
  %.0119172.i = phi ptr [ %i.bh, %.lr.ph175.i ], [ %.0121170.i, %.loopexit.i ] ; 29 uses
  %.0121170.i = phi ptr [ %i.bg, %.lr.ph175.i ], [ %.0119172.i, %.loopexit.i ] ; 18 uses
  %.0122169.i = phi i32 [ %i.bc, %.lr.ph175.i ], [ %.0123168.i, %.loopexit.i ] ; 27 uses
  %.0123168.i = phi i32 [ %i.bf, %.lr.ph175.i ], [ %.0122169.i, %.loopexit.i ] ; 3 uses
  %i.bl = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bm = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bn = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bo = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bp = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !13 ; 3 uses
  %i.bt = sext i16 %i.bs to i32                   ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !13 ; 2 uses
  %i.bw = sext i16 %i.bv to i32                   ; 12 uses
  %i.bx = load i8, ptr %i.bq, align 4, !tbaa !13  ; 3 uses
  %i.by = load i32, ptr %.0121170.i, align 4, !tbaa !14
  %i.bz = getelementptr inbounds i8, ptr %.0121170.i, i64 -4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !14
  %i.ca = add nsw i32 %.0123168.i, -1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.0121170.i, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !14
  %i.ce = zext nneg i32 %.0123168.i to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0121170.i, i64 %i.ce
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !14
  %i.cg = zext i1 %.0.in173.i to i64
  %i.ch = getelementptr [4 x i8], ptr %.0121170.i, i64 %i.cg ; 20 uses
  %i.ci = icmp eq i16 %i.bs, 1
  br i1 %i.ci, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %.not131162.i = icmp eq i32 %.0122169.i, 0
  br i1 %.not131162.i, label %.loopexit.i, label %.lr.ph166.i

.lr.ph166.i:                                      ; preds = %.preheader.i
  %i.cj = zext nneg i8 %i.bx to i32               ; 4 uses
  %i.ck = zext nneg i32 %.0122169.i to i64        ; 2 uses
  %min.iters.check162 = icmp samesign ult i32 %.0122169.i, 8
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph166.i
  %scevgep147 = getelementptr i8, ptr %.0119172.i, i64 4
  %i.cl = add nsw i32 %.0122169.i, -1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2                ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.cn ; 2 uses
  %scevgep149 = getelementptr i8, ptr %.0121170.i, i64 -4
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.bo
  %i.co = add nuw nsw i64 %i.bo, %i.cn            ; 2 uses
  %scevgep151 = getelementptr i8, ptr %.0121170.i, i64 %i.co
  %scevgep152 = getelementptr i8, ptr %.0121170.i, i64 4
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.co
  %bound0154 = icmp ult ptr %.0119172.i, %scevgep151
  %bound1155 = icmp ult ptr %scevgep150, %scevgep148
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %.0119172.i, %scevgep153
  %bound1158 = icmp ult ptr %i.ch, %scevgep148
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  br i1 %conflict.rdx160, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck146
  %n.vec164 = and i64 %i.ck, 2147483640           ; 4 uses
  %i.cp = trunc nuw nsw i64 %n.vec164 to i32
  %i.cq = sub nsw i32 %.0122169.i, %i.cp
  %i.cr = shl nuw nsw i64 %n.vec164, 2            ; 2 uses
  %i.cs = getelementptr i8, ptr %.0119172.i, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.ch, i64 %i.cr
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
end_hunk_0
begin_hunk_1_@_ZN4ojph5local16gen_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.if = add nsw i32 %.0122169.i, -1
  %i.ig = zext i32 %i.if to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.ih ; 2 uses
  %scevgep220 = getelementptr i8, ptr %.0121170.i, i64 -4
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.bm
  %i.ii = add nuw nsw i64 %i.bm, %i.ih            ; 2 uses
  %scevgep222 = getelementptr i8, ptr %.0121170.i, i64 %i.ii
  %scevgep223 = getelementptr i8, ptr %.0121170.i, i64 4
  %scevgep224 = getelementptr i8, ptr %scevgep223, i64 %i.ii
  %bound0225 = icmp ult ptr %.0119172.i, %scevgep222
  %bound1226 = icmp ult ptr %scevgep221, %scevgep219
  %found.conflict227 = and i1 %bound0225, %bound1226
  %bound0228 = icmp ult ptr %.0119172.i, %scevgep224
  %bound1229 = icmp ult ptr %i.ch, %scevgep219
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %found.conflict227, %found.conflict230
  br i1 %conflict.rdx231, label %.lr.ph156.i.preheader494, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck217
  %n.vec235 = and i64 %i.ie, 2147483640           ; 4 uses
  %i.ij = trunc nuw nsw i64 %n.vec235 to i32
  %i.ik = sub nsw i32 %.0122169.i, %i.ij
  %i.il = shl nuw nsw i64 %n.vec235, 2            ; 2 uses
  %i.im = getelementptr i8, ptr %.0119172.i, i64 %i.il
  %i.in = getelementptr i8, ptr %i.ch, i64 %i.il
  %broadcast.splatinsert236 = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat237 = shufflevector <4 x i32> %broadcast.splatinsert236, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph234
  %index241 = phi i64 [ 0, %vector.ph234 ], [ %index.next250, %vector.body240 ] ; 2 uses
  %i.io = shl i64 %index241, 2                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.0119172.i, i64 %i.io ; 3 uses
  %next.gep243 = getelementptr i8, ptr %i.ch, i64 %i.io ; 4 uses
  %i.ip = getelementptr inbounds i8, ptr %next.gep243, i64 -4
  %i.iq = getelementptr inbounds nuw i8, ptr %next.gep243, i64 12
  %wide.load244 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !14, !alias.scope !144
  %wide.load245 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !14, !alias.scope !144
  %i.ir = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load246 = load <4 x i32>, ptr %next.gep243, align 4, !tbaa !14, !alias.scope !147
  %wide.load247 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !14, !alias.scope !147
  %i.is = add <4 x i32> %wide.load244, %wide.load246
  %i.it = add <4 x i32> %wide.load245, %wide.load247
  %i.iu = sub <4 x i32> %broadcast.splat237, %i.is
  %i.iv = sub <4 x i32> %broadcast.splat237, %i.it
  %i.iw = ashr <4 x i32> %i.iu, %broadcast.splat239
  %i.ix = ashr <4 x i32> %i.iv, %broadcast.splat239
  %i.iy = getelementptr i8, ptr %next.gep242, i64 16 ; 2 uses
  %wide.load248 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !14, !alias.scope !149, !noalias !151
  %wide.load249 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !14, !alias.scope !149, !noalias !151
  %i.iz = add nsw <4 x i32> %i.iw, %wide.load248
  %i.ja = add nsw <4 x i32> %i.ix, %wide.load249
  store <4 x i32> %i.iz, ptr %next.gep242, align 4, !tbaa !14, !alias.scope !149, !noalias !151
  store <4 x i32> %i.ja, ptr %i.iy, align 4, !tbaa !14, !alias.scope !149, !noalias !151
  %index.next250 = add nuw i64 %index241, 8       ; 2 uses
  %i.jb = icmp eq i64 %index.next250, %n.vec235
  br i1 %i.jb, label %middle.block251, label %vector.body240, !llvm.loop !152

middle.block251:                                  ; preds = %vector.body240
  %cmp.n252 = icmp eq i64 %n.vec235, %i.ie
  br i1 %cmp.n252, label %.loopexit.i, label %.lr.ph156.i.preheader494

.lr.ph156.i.preheader494:                         ; preds = %vector.memcheck217, %.lr.ph156.i.preheader, %middle.block251
  %.0105155.i.ph = phi i32 [ %.0122169.i, %vector.memcheck217 ], [ %.0122169.i, %.lr.ph156.i.preheader ], [ %i.ik, %middle.block251 ] ; 4 uses
  %.2154.i.ph = phi ptr [ %.0119172.i, %vector.memcheck217 ], [ %.0119172.i, %.lr.ph156.i.preheader ], [ %i.im, %middle.block251 ] ; 4 uses
  %.2112153.i.ph = phi ptr [ %i.ch, %vector.memcheck217 ], [ %i.ch, %.lr.ph156.i.preheader ], [ %i.in, %middle.block251 ] ; 4 uses
  %xtraiter502 = and i32 %.0105155.i.ph, 1
  %lcmp.mod503.not = icmp eq i32 %xtraiter502, 0
  br i1 %lcmp.mod503.not, label %.lr.ph156.i.prol.loopexit, label %.lr.ph156.i.prol

.lr.ph156.i.prol:                                 ; preds = %.lr.ph156.i.preheader494
  %i.jc = getelementptr inbounds i8, ptr %.2112153.i.ph, i64 -4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !14
  %i.je = load i32, ptr %.2112153.i.ph, align 4, !tbaa !14
  %i.jf = add i32 %i.jd, %i.je
  %i.jg = sub i32 %i.bw, %i.jf
  %i.jh = ashr i32 %i.jg, %i.eq
  %i.ji = load i32, ptr %.2154.i.ph, align 4, !tbaa !14
  %i.jj = add nsw i32 %i.jh, %i.ji
  store i32 %i.jj, ptr %.2154.i.ph, align 4, !tbaa !14
  %i.jk = add nsw i32 %.0105155.i.ph, -1
  %i.jl = getelementptr inbounds nuw i8, ptr %.2112153.i.ph, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %.2154.i.ph, i64 4
  br label %.lr.ph156.i.prol.loopexit

.lr.ph156.i.prol.loopexit:                        ; preds = %.lr.ph156.i.prol, %.lr.ph156.i.preheader494
  %.0105155.i.unr = phi i32 [ %.0105155.i.ph, %.lr.ph156.i.preheader494 ], [ %i.jk, %.lr.ph156.i.prol ]
  %.2154.i.unr = phi ptr [ %.2154.i.ph, %.lr.ph156.i.preheader494 ], [ %i.jm, %.lr.ph156.i.prol ]
  %.2112153.i.unr = phi ptr [ %.2112153.i.ph, %.lr.ph156.i.preheader494 ], [ %i.jl, %.lr.ph156.i.prol ]
  %i.jn = icmp eq i32 %.0105155.i.ph, 1
  br i1 %i.jn, label %.loopexit.i, label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.prol.loopexit, %.lr.ph156.i
  %.0105155.i = phi i32 [ %i.kf, %.lr.ph156.i ], [ %.0105155.i.unr, %.lr.ph156.i.prol.loopexit ]
  %.2154.i = phi ptr [ %i.kh, %.lr.ph156.i ], [ %.2154.i.unr, %.lr.ph156.i.prol.loopexit ] ; 4 uses
  %.2112153.i = phi ptr [ %i.kg, %.lr.ph156.i ], [ %.2112153.i.unr, %.lr.ph156.i.prol.loopexit ] ; 5 uses
  %i.jo = getelementptr inbounds i8, ptr %.2112153.i, i64 -4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !14
  %i.jq = load i32, ptr %.2112153.i, align 4, !tbaa !14
  %i.jr = add i32 %i.jp, %i.jq
  %i.js = sub i32 %i.bw, %i.jr
  %i.jt = ashr i32 %i.js, %i.eq
  %i.ju = load i32, ptr %.2154.i, align 4, !tbaa !14
  %i.jv = add nsw i32 %i.jt, %i.ju
  store i32 %i.jv, ptr %.2154.i, align 4, !tbaa !14
  %i.jw = getelementptr inbounds nuw i8, ptr %.2112153.i, i64 4
  %i.jx = getelementptr inbounds nuw i8, ptr %.2154.i, i64 4 ; 2 uses
  %i.jy = load i32, ptr %.2112153.i, align 4, !tbaa !14
  %i.jz = load i32, ptr %i.jw, align 4, !tbaa !14
  %i.ka = add i32 %i.jy, %i.jz
  %i.kb = sub i32 %i.bw, %i.ka
  %i.kc = ashr i32 %i.kb, %i.eq
  %i.kd = load i32, ptr %i.jx, align 4, !tbaa !14
  %i.ke = add nsw i32 %i.kc, %i.kd
  store i32 %i.ke, ptr %i.jx, align 4, !tbaa !14
  %i.kf = add nsw i32 %.0105155.i, -2             ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.2112153.i, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.2154.i, i64 8
  %.not129.i.1 = icmp eq i32 %i.kf, 0
  br i1 %.not129.i.1, label %.loopexit.i, label %.lr.ph156.i, !llvm.loop !153

.lr.ph151.i:                                      ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i
  %.0104150.i = phi i32 [ %i.lb, %.lr.ph151.i ], [ %.0104150.i.unr, %.lr.ph151.i.prol.loopexit ]
  %.3149.i = phi ptr [ %i.ld, %.lr.ph151.i ], [ %.3149.i.unr, %.lr.ph151.i.prol.loopexit ] ; 4 uses
  %.3113148.i = phi ptr [ %i.lc, %.lr.ph151.i ], [ %.3113148.i.unr, %.lr.ph151.i.prol.loopexit ] ; 5 uses
  %i.ki = getelementptr inbounds i8, ptr %.3113148.i, i64 -4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !14
  %i.kk = load i32, ptr %.3113148.i, align 4, !tbaa !14
  %i.kl = add nsw i32 %i.kk, %i.kj
  %i.km = mul nsw i32 %i.kl, %i.bt
  %i.kn = add nsw i32 %i.km, %i.bw
  %i.ko = ashr i32 %i.kn, %i.eq
  %i.kp = load i32, ptr %.3149.i, align 4, !tbaa !14
  %i.kq = add nsw i32 %i.ko, %i.kp
  store i32 %i.kq, ptr %.3149.i, align 4, !tbaa !14
  %i.kr = getelementptr inbounds nuw i8, ptr %.3113148.i, i64 4
  %i.ks = getelementptr inbounds nuw i8, ptr %.3149.i, i64 4 ; 2 uses
  %i.kt = load i32, ptr %.3113148.i, align 4, !tbaa !14
  %i.ku = load i32, ptr %i.kr, align 4, !tbaa !14
  %i.kv = add nsw i32 %i.ku, %i.kt
  %i.kw = mul nsw i32 %i.kv, %i.bt
  %i.kx = add nsw i32 %i.kw, %i.bw
  %i.ky = ashr i32 %i.kx, %i.eq
  %i.kz = load i32, ptr %i.ks, align 4, !tbaa !14
  %i.la = add nsw i32 %i.ky, %i.kz
  store i32 %i.la, ptr %i.ks, align 4, !tbaa !14
  %i.lb = add nsw i32 %.0104150.i, -2             ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.3113148.i, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %.3149.i, i64 8
  %.not128.i.1 = icmp eq i32 %i.lb, 0
  br i1 %.not128.i.1, label %.loopexit.i, label %.lr.ph151.i, !llvm.loop !154

.loopexit.i:                                      ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i, %.lr.ph156.i.prol.loopexit, %.lr.ph156.i, %.lr.ph161.i.prol.loopexit, %.lr.ph161.i, %scalar.ph161.prol.loopexit, %scalar.ph161, %middle.block292, %middle.block251, %middle.block212, %middle.block177, %.preheader136.i, %.preheader138.i, %.preheader134.i, %.preheader.i
  %i.le = xor i1 %.0.in173.i, true
  %.not127.wide.i = icmp eq i64 %i.bp, 0
  br i1 %.not127.wide.i, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.f, !llvm.loop !155

.loopexit140.sink.split.i:                        ; preds = %bb.b
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !13
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !14
  %.sink203.i = select i1 %5, ptr %1, ptr %2
  %not.204.i = xor i1 %5, true
  %i.li = zext i1 %not.204.i to i32
  %.sink.i = shl i32 %i.lh, %i.li
  %i.lj = getelementptr inbounds nuw i8, ptr %.sink203.i, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !13
  store i32 %.sink.i, ptr %i.lk, align 4, !tbaa !14
  br label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.j, label %.loopexit140.sink.split.i12

bb.j:                                             ; preds = %bb.i
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !13 ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !13 ; 8 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !13 ; 3 uses
  br i1 %5, label %.lr.ph.preheader.i58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 2 uses
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !156
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.ls, ptr %i.lm, align 8, !tbaa !156
  %i.lu = add i32 %4, -1                          ; 2 uses
  %i.lv = icmp ugt i32 %i.lu, 1
  br i1 %i.lv, label %.lr.ph.preheader.i58, label %._crit_edge.thread.i16

.lr.ph.preheader.i58:                             ; preds = %bb.k, %bb.j
  %.0103190.i59 = phi ptr [ %i.lt, %bb.k ], [ %i.lm, %bb.j ] ; 7 uses
  %.0115189.i60 = phi ptr [ %i.lr, %bb.k ], [ %i.lq, %bb.j ] ; 7 uses
  %.0117188.i61 = phi i32 [ %i.lu, %bb.k ], [ %4, %bb.j ] ; 7 uses
  %i.lw = icmp ne i32 %.0117188.i61, 2
  %.neg483 = sext i1 %i.lw to i32
  %i.lx = add i32 %.0117188.i61, -1
  %i.ly = add i32 %i.lx, %.neg483                 ; 2 uses
  %i.lz = lshr i32 %i.ly, 1
  %narrow484 = add nuw i32 %i.lz, 1
  %i.ma = zext i32 %narrow484 to i64              ; 2 uses
  %min.iters.check314 = icmp ult i32 %i.ly, 82
  br i1 %min.iters.check314, label %.lr.ph.i62.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph.preheader.i58
  %i.mb = add i32 %.0117188.i61, -1
  %i.mc = icmp ne i32 %.0117188.i61, 2
  %umin298.neg = sext i1 %i.mc to i32
  %i.md = add i32 %i.mb, %umin298.neg
  %i.me = lshr i32 %i.md, 1
  %i.mf = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = add nuw nsw i64 %i.mg, 8                ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.lo, i64 %i.mh ; 2 uses
  %scevgep300 = getelementptr i8, ptr %.0103190.i59, i64 %i.mh ; 2 uses
  %i.mi = shl nuw nsw i64 %i.mf, 4
  %i.mj = getelementptr i8, ptr %.0115189.i60, i64 %i.mi
  %scevgep301 = getelementptr i8, ptr %i.mj, i64 16 ; 2 uses
  %bound0302 = icmp ult ptr %i.lo, %scevgep300
  %bound1303 = icmp ult ptr %.0103190.i59, %scevgep299
  %found.conflict304 = and i1 %bound0302, %bound1303
  %bound0305 = icmp ult ptr %i.lo, %scevgep301
  %bound1306 = icmp ult ptr %.0115189.i60, %scevgep299
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %found.conflict304, %found.conflict307
  %bound0309 = icmp ult ptr %.0103190.i59, %scevgep301
  %bound1310 = icmp ult ptr %.0115189.i60, %scevgep300
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  br i1 %conflict.rdx312, label %.lr.ph.i62.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck297
  %n.vec316 = and i64 %i.ma, 4294967294           ; 5 uses
  %i.mk = shl nuw nsw i64 %n.vec316, 3            ; 2 uses
  %i.ml = getelementptr i8, ptr %.0103190.i59, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.lo, i64 %i.mk  ; 2 uses
  %i.mn = shl nuw nsw i64 %n.vec316, 4
  %i.mo = getelementptr i8, ptr %.0115189.i60, i64 %i.mn ; 2 uses
  %i.mp = trunc nuw i64 %n.vec316 to i32
  %i.mq = shl i32 %i.mp, 1
  %i.mr = sub i32 %.0117188.i61, %i.mq            ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next325, %vector.body317 ] ; 3 uses
  %i.ms = shl i64 %index318, 3                    ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.0103190.i59, i64 %i.ms
  %next.gep320 = getelementptr i8, ptr %i.lo, i64 %i.ms
  %i.mt = shl i64 %index318, 4
  %next.gep321 = getelementptr i8, ptr %.0115189.i60, i64 %i.mt
  %wide.vec322 = load <4 x i64>, ptr %next.gep321, align 8, !tbaa !156, !alias.scope !157 ; 2 uses
  %strided.vec323 = shufflevector <4 x i64> %wide.vec322, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec324 = shufflevector <4 x i64> %wide.vec322, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %strided.vec323, ptr %next.gep320, align 8, !tbaa !156, !alias.scope !160, !noalias !162
  store <2 x i64> %strided.vec324, ptr %next.gep319, align 8, !tbaa !156, !alias.scope !164, !noalias !157
  %index.next325 = add nuw i64 %index318, 2       ; 2 uses
  %i.mu = icmp eq i64 %index.next325, %n.vec316
  br i1 %i.mu, label %middle.block326, label %vector.body317, !llvm.loop !165

middle.block326:                                  ; preds = %vector.body317
  %cmp.n327 = icmp eq i64 %n.vec316, %i.ma
  br i1 %cmp.n327, label %._crit_edge.i67, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %vector.memcheck297, %.lr.ph.preheader.i58, %middle.block326
  %.1144.i63.ph = phi ptr [ %.0103190.i59, %vector.memcheck297 ], [ %.0103190.i59, %.lr.ph.preheader.i58 ], [ %i.ml, %middle.block326 ]
  %.0114143.i64.ph = phi ptr [ %i.lo, %vector.memcheck297 ], [ %i.lo, %.lr.ph.preheader.i58 ], [ %i.mm, %middle.block326 ]
  %.1116142.i65.ph = phi ptr [ %.0115189.i60, %vector.memcheck297 ], [ %.0115189.i60, %.lr.ph.preheader.i58 ], [ %i.mo, %middle.block326 ]
  %.1118141.i66.ph = phi i32 [ %.0117188.i61, %vector.memcheck297 ], [ %.0117188.i61, %.lr.ph.preheader.i58 ], [ %i.mr, %middle.block326 ]
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62
  %.1144.i63 = phi ptr [ %i.na, %.lr.ph.i62 ], [ %.1144.i63.ph, %.lr.ph.i62.preheader ] ; 2 uses
  %.0114143.i64 = phi ptr [ %i.mx, %.lr.ph.i62 ], [ %.0114143.i64.ph, %.lr.ph.i62.preheader ] ; 2 uses
  %.1116142.i65 = phi ptr [ %i.my, %.lr.ph.i62 ], [ %.1116142.i65.ph, %.lr.ph.i62.preheader ] ; 3 uses
  %.1118141.i66 = phi i32 [ %i.nb, %.lr.ph.i62 ], [ %.1118141.i66.ph, %.lr.ph.i62.preheader ]
  %i.mv = getelementptr inbounds nuw i8, ptr %.1116142.i65, i64 8
  %i.mw = load i64, ptr %.1116142.i65, align 8, !tbaa !156
  %i.mx = getelementptr inbounds nuw i8, ptr %.0114143.i64, i64 8 ; 2 uses
  store i64 %i.mw, ptr %.0114143.i64, align 8, !tbaa !156
  %i.my = getelementptr inbounds nuw i8, ptr %.1116142.i65, i64 16 ; 2 uses
  %i.mz = load i64, ptr %i.mv, align 8, !tbaa !156
  %i.na = getelementptr inbounds nuw i8, ptr %.1144.i63, i64 8
  store i64 %i.mz, ptr %.1144.i63, align 8, !tbaa !156
  %i.nb = add i32 %.1118141.i66, -2               ; 3 uses
  %i.nc = icmp ugt i32 %i.nb, 1
  br i1 %i.nc, label %.lr.ph.i62, label %._crit_edge.i67, !llvm.loop !166

._crit_edge.i67:                                  ; preds = %.lr.ph.i62, %middle.block326
  %.lcssa127 = phi ptr [ %i.mm, %middle.block326 ], [ %i.mx, %.lr.ph.i62 ]
  %.lcssa126 = phi ptr [ %i.mo, %middle.block326 ], [ %i.my, %.lr.ph.i62 ]
  %.lcssa = phi i32 [ %i.mr, %middle.block326 ], [ %i.nb, %.lr.ph.i62 ]
  %i.nd = icmp eq i32 %.lcssa, 0
  br i1 %i.nd, label %bb.l, label %._crit_edge.thread.i16

._crit_edge.thread.i16:                           ; preds = %._crit_edge.i67, %bb.k
  %.0114.lcssa195.i17 = phi ptr [ %.lcssa127, %._crit_edge.i67 ], [ %i.lo, %bb.k ]
  %.1116.lcssa194.i18 = phi ptr [ %.lcssa126, %._crit_edge.i67 ], [ %i.lr, %bb.k ]
  %i.ne = load i64, ptr %.1116.lcssa194.i18, align 8, !tbaa !156
  store i64 %i.ne, ptr %.0114.lcssa195.i17, align 8, !tbaa !156
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i16, %._crit_edge.i67
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !108 ; 2 uses
  %.not127167.i19 = icmp eq i8 %i.ng, 0
  br i1 %.not127167.i19, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph175.i20

.lr.ph175.i20:                                    ; preds = %bb.l
  %not..i21 = xor i1 %5, true
  %i.nh = zext i1 %not..i21 to i32
  %i.ni = add i32 %4, %i.nh
  %i.nj = lshr i32 %i.ni, 1
  %i.nk = zext i1 %5 to i32
  %i.nl = add i32 %4, %i.nk
  %i.nm = lshr i32 %i.nl, 1
  %i.nn = load ptr, ptr %i.ln, align 8, !tbaa !13
  %i.no = load ptr, ptr %i.ll, align 8, !tbaa !13
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !114
  %i.nr = zext i8 %i.ng to i64
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i37, %.lr.ph175.i20
  %indvars.iv.i22 = phi i64 [ %i.nr, %.lr.ph175.i20 ], [ %i.nw, %.loopexit.i37 ]
  %.0.in173.i23 = phi i1 [ %5, %.lr.ph175.i20 ], [ %i.xe, %.loopexit.i37 ] ; 6 uses
  %.0119172.i24 = phi ptr [ %i.no, %.lr.ph175.i20 ], [ %.0121170.i25, %.loopexit.i37 ] ; 29 uses
  %.0121170.i25 = phi ptr [ %i.nn, %.lr.ph175.i20 ], [ %.0119172.i24, %.loopexit.i37 ] ; 18 uses
  %.0122169.i26 = phi i32 [ %i.nj, %.lr.ph175.i20 ], [ %.0123168.i27, %.loopexit.i37 ] ; 27 uses
  %.0123168.i27 = phi i32 [ %i.nm, %.lr.ph175.i20 ], [ %.0122169.i26, %.loopexit.i37 ] ; 3 uses
  %i.ns = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.nt = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.nu = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.nv = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.nw = add nsw i64 %indvars.iv.i22, -1         ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.nw ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.nz = load i16, ptr %i.ny, align 4, !tbaa !13 ; 3 uses
  %i.oa = sext i16 %i.nz to i64                   ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !13 ; 2 uses
  %i.od = sext i16 %i.oc to i64                   ; 12 uses
  %i.oe = load i8, ptr %i.nx, align 4, !tbaa !13  ; 4 uses
  %i.of = load i64, ptr %.0121170.i25, align 8, !tbaa !156
  %i.og = getelementptr inbounds i8, ptr %.0121170.i25, i64 -8
  store i64 %i.of, ptr %i.og, align 8, !tbaa !156
  %i.oh = add nsw i32 %.0123168.i27, -1
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %.0121170.i25, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !156
  %i.ol = zext nneg i32 %.0123168.i27 to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.0121170.i25, i64 %i.ol
  store i64 %i.ok, ptr %i.om, align 8, !tbaa !156
  %i.on = zext i1 %.0.in173.i23 to i64
  %i.oo = getelementptr [8 x i8], ptr %.0121170.i25, i64 %i.on ; 20 uses
  %i.op = icmp eq i16 %i.nz, 1
  br i1 %i.op, label %.preheader.i51, label %bb.n

.preheader.i51:                                   ; preds = %bb.m
  %.not131162.i52 = icmp eq i32 %.0122169.i26, 0
  br i1 %.not131162.i52, label %.loopexit.i37, label %.lr.ph166.i53

.lr.ph166.i53:                                    ; preds = %.preheader.i51
  %i.oq = zext nneg i8 %i.oe to i64               ; 4 uses
  %i.or = zext nneg i32 %.0122169.i26 to i64      ; 2 uses
  %min.iters.check348 = icmp samesign ult i32 %.0122169.i26, 6
  br i1 %min.iters.check348, label %scalar.ph347.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph166.i53
  %scevgep333 = getelementptr i8, ptr %.0119172.i24, i64 8
  %i.os = add nsw i32 %.0122169.i26, -1
  %i.ot = zext i32 %i.os to i64
  %i.ou = shl nuw nsw i64 %i.ot, 3                ; 2 uses
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.ou ; 2 uses
  %scevgep335 = getelementptr i8, ptr %.0121170.i25, i64 -8
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.nv
  %i.ov = add nuw nsw i64 %i.nv, %i.ou            ; 2 uses
  %scevgep337 = getelementptr i8, ptr %.0121170.i25, i64 %i.ov
  %scevgep338 = getelementptr i8, ptr %.0121170.i25, i64 8
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.ov
  %bound0340 = icmp ult ptr %.0119172.i24, %scevgep337
  %bound1341 = icmp ult ptr %scevgep336, %scevgep334
  %found.conflict342 = and i1 %bound0340, %bound1341
  %bound0343 = icmp ult ptr %.0119172.i24, %scevgep339
  %bound1344 = icmp ult ptr %i.oo, %scevgep334
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %found.conflict342, %found.conflict345
  br i1 %conflict.rdx346, label %scalar.ph347.preheader, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck332
  %n.vec350 = and i64 %i.or, 2147483644           ; 4 uses
  %i.ow = trunc nuw nsw i64 %n.vec350 to i32
  %i.ox = sub nsw i32 %.0122169.i26, %i.ow
  %i.oy = shl nuw nsw i64 %n.vec350, 3            ; 2 uses
  %i.oz = getelementptr i8, ptr %.0119172.i24, i64 %i.oy
  %i.pa = getelementptr i8, ptr %i.oo, i64 %i.oy
  %broadcast.splatinsert351 = insertelement <2 x i64> poison, i64 %i.oq, i64 0
  %broadcast.splat352 = shufflevector <2 x i64> %broadcast.splatinsert351, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert353 = insertelement <2 x i64> poison, i64 %i.od, i64 0
end_hunk_1
begin_hunk_2_@_ZN4ojph5local17gen_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %bound023 = icmp ult ptr %i.h, %scevgep22
  %bound124 = icmp ult ptr %i.d, %scevgep
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx = or i1 %found.conflict, %found.conflict25
  br i1 %conflict.rdx, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 4 uses
  %i.n = trunc nuw i64 %n.vec to i32
  %i.o = sub i32 %4, %i.n
  %i.p = shl nuw nsw i64 %n.vec, 2                ; 3 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %i.f, i64 %i.p
  %i.s = getelementptr i8, ptr %i.h, i64 %i.p
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.015, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2                        ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.f, i64 %i.t ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.h, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <4 x float>, ptr %next.gep26, align 4, !tbaa !303, !alias.scope !304
  %wide.load28 = load <4 x float>, ptr %i.u, align 4, !tbaa !303, !alias.scope !304
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load29 = load <4 x float>, ptr %next.gep, align 4, !tbaa !303, !alias.scope !307
  %wide.load30 = load <4 x float>, ptr %i.v, align 4, !tbaa !303, !alias.scope !307
  %i.w = fadd <4 x float> %wide.load, %wide.load29
  %i.x = fadd <4 x float> %wide.load28, %wide.load30
  %i.y = getelementptr i8, ptr %next.gep27, i64 16 ; 2 uses
  %wide.load31 = load <4 x float>, ptr %next.gep27, align 4, !tbaa !303, !alias.scope !309, !noalias !311
  %wide.load32 = load <4 x float>, ptr %i.y, align 4, !tbaa !303, !alias.scope !309, !noalias !311
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.w, <4 x float> %wide.load31)
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.x, <4 x float> %wide.load32)
  store <4 x float> %i.z, ptr %next.gep27, align 4, !tbaa !303, !alias.scope !309, !noalias !311
  store <4 x float> %i.aa, ptr %i.y, align 4, !tbaa !303, !alias.scope !309, !noalias !311
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi i32 [ %4, %vector.memcheck ], [ %4, %.lr.ph.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01219.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.01318.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.01417.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 4 uses
  %xtraiter = and i32 %.020.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader36
  %i.ac = getelementptr inbounds nuw i8, ptr %.01318.ph, i64 4
  %i.ad = load float, ptr %.01318.ph, align 4, !tbaa !303
  %i.ae = getelementptr inbounds nuw i8, ptr %.01219.ph, i64 4
  %i.af = load float, ptr %.01219.ph, align 4, !tbaa !303
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.01417.ph, i64 4
  %i.ai = load float, ptr %.01417.ph, align 4, !tbaa !303
  %i.aj = tail call float @llvm.fmuladd.f32(float %.015, float %i.ag, float %i.ai)
  store float %i.aj, ptr %.01417.ph, align 4, !tbaa !303
  %i.ak = add nsw i32 %.020.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader36
  %.020.unr = phi i32 [ %.020.ph, %.lr.ph.preheader36 ], [ %i.ak, %.lr.ph.prol ]
  %.01219.unr = phi ptr [ %.01219.ph, %.lr.ph.preheader36 ], [ %i.ae, %.lr.ph.prol ]
  %.01318.unr = phi ptr [ %.01318.ph, %.lr.ph.preheader36 ], [ %i.ac, %.lr.ph.prol ]
  %.01417.unr = phi ptr [ %.01417.ph, %.lr.ph.preheader36 ], [ %i.ah, %.lr.ph.prol ]
  %i.al = icmp eq i32 %.020.ph, 1
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.020 = phi i32 [ %i.bc, %.lr.ph ], [ %.020.unr, %.lr.ph.prol.loopexit ]
  %.01219 = phi ptr [ %i.aw, %.lr.ph ], [ %.01219.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01318 = phi ptr [ %i.au, %.lr.ph ], [ %.01318.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01417 = phi ptr [ %i.az, %.lr.ph ], [ %.01417.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01318, i64 4
  %i.an = load float, ptr %.01318, align 4, !tbaa !303
  %i.ao = getelementptr inbounds nuw i8, ptr %.01219, i64 4
  %i.ap = load float, ptr %.01219, align 4, !tbaa !303
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417, i64 4 ; 2 uses
  %i.as = load float, ptr %.01417, align 4, !tbaa !303
  %i.at = tail call float @llvm.fmuladd.f32(float %.015, float %i.aq, float %i.as)
  store float %i.at, ptr %.01417, align 4, !tbaa !303
  %i.au = getelementptr inbounds nuw i8, ptr %.01318, i64 8
  %i.av = load float, ptr %i.am, align 4, !tbaa !303
  %i.aw = getelementptr inbounds nuw i8, ptr %.01219, i64 8
  %i.ax = load float, ptr %i.ao, align 4, !tbaa !303
  %i.ay = fadd float %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.01417, i64 8
  %i.ba = load float, ptr %i.ar, align 4, !tbaa !303
  %i.bb = tail call float @llvm.fmuladd.f32(float %.015, float %i.ay, float %i.ba)
  store float %i.bb, ptr %i.ar, align 4, !tbaa !303
  %i.bc = add i32 %.020, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !313
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local20gen_irv_vert_times_KEfPKNS_8line_bufEj(float noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.c, 4294967288               ; 4 uses
  %i.d = trunc nuw i64 %n.vec to i32
  %i.e = sub i32 %2, %i.d
  %i.f = shl nuw nsw i64 %n.vec, 2
  %i.g = getelementptr i8, ptr %i.b, i64 %i.f
  %broadcast.splatinsert = insertelement <4 x float> poison, float %0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.h ; 3 uses
  %i.i = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !303
  %wide.load9 = load <4 x float>, ptr %i.i, align 4, !tbaa !303
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load9
  store <4 x float> %i.j, ptr %next.gep, align 4, !tbaa !303
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !303
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.08.ph = phi i32 [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.057.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.08 = phi i32 [ %i.p, %.lr.ph ], [ %.08.ph, %.lr.ph.preheader11 ]
  %.057 = phi ptr [ %i.m, %.lr.ph ], [ %.057.ph, %.lr.ph.preheader11 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.057, i64 4
  %i.n = load float, ptr %.057, align 4, !tbaa !303
  %i.o = fmul float %0, %i.n
  store float %i.o, ptr %.057, align 4, !tbaa !303
  %i.p = add i32 %.08, -1                         ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !315
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 3 uses
  br i1 %5, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !303
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.i, ptr %i.c, align 4, !tbaa !303
  %i.k = add i32 %4, -1                           ; 2 uses
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.078144 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.b ] ; 7 uses
  %.081143 = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ] ; 7 uses
  %.086142 = phi i32 [ %i.k, %bb.c ], [ %4, %bb.b ] ; 7 uses
  %i.m = icmp ne i32 %.086142, 2
  %.neg = sext i1 %i.m to i32
  %i.n = add i32 %.086142, -1
  %i.o = add i32 %i.n, %.neg                      ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %narrow = add nuw i32 %i.p, 1
  %i.q = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 70
  br i1 %min.iters.check, label %.lr.ph.preheader241, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = add i32 %.086142, -1
  %i.s = icmp ne i32 %.086142, 2
  %umin.neg = sext i1 %i.s to i32
  %i.t = add i32 %i.r, %umin.neg
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.x ; 2 uses
  %scevgep157 = getelementptr i8, ptr %.078144, i64 %i.x ; 2 uses
  %i.y = shl nuw nsw i64 %i.v, 3
  %i.z = getelementptr i8, ptr %.081143, i64 %i.y
  %scevgep158 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep157
  %bound1 = icmp ult ptr %.078144, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0159 = icmp ult ptr %i.e, %scevgep158
  %bound1160 = icmp ult ptr %.081143, %scevgep
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict, %found.conflict161
  %bound0162 = icmp ult ptr %.078144, %scevgep158
  %bound1163 = icmp ult ptr %.081143, %scevgep157
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph.preheader241, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4294967292               ; 5 uses
  %i.aa = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ab = getelementptr i8, ptr %.078144, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.aa   ; 2 uses
  %i.ad = shl nuw nsw i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %.081143, i64 %i.ad ; 2 uses
  %i.af = trunc nuw i64 %n.vec to i32
  %i.ag = shl i32 %i.af, 1
  %i.ah = sub i32 %.086142, %i.ag                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.078144, i64 %i.ai
  %next.gep166 = getelementptr i8, ptr %i.e, i64 %i.ai
  %i.aj = shl i64 %index, 3
  %next.gep167 = getelementptr i8, ptr %.081143, i64 %i.aj
  %wide.vec = load <8 x float>, ptr %next.gep167, align 4, !tbaa !303, !alias.scope !316 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec168 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %strided.vec, ptr %next.gep166, align 4, !tbaa !303, !alias.scope !319, !noalias !321
  store <4 x float> %strided.vec168, ptr %next.gep, align 4, !tbaa !303, !alias.scope !323, !noalias !316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader241

.lr.ph.preheader241:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.179101.ph = phi ptr [ %.078144, %vector.memcheck ], [ %.078144, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.080100.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.18299.ph = phi ptr [ %.081143, %vector.memcheck ], [ %.081143, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  %.18798.ph = phi i32 [ %.086142, %vector.memcheck ], [ %.086142, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader241, %.lr.ph
  %.179101 = phi ptr [ %i.aq, %.lr.ph ], [ %.179101.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.080100 = phi ptr [ %i.an, %.lr.ph ], [ %.080100.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.18299 = phi ptr [ %i.ao, %.lr.ph ], [ %.18299.ph, %.lr.ph.preheader241 ] ; 3 uses
  %.18798 = phi i32 [ %i.ar, %.lr.ph ], [ %.18798.ph, %.lr.ph.preheader241 ]
  %i.al = getelementptr inbounds nuw i8, ptr %.18299, i64 4
  %i.am = load float, ptr %.18299, align 4, !tbaa !303
  %i.an = getelementptr inbounds nuw i8, ptr %.080100, i64 4 ; 2 uses
  store float %i.am, ptr %.080100, align 4, !tbaa !303
  %i.ao = getelementptr inbounds nuw i8, ptr %.18299, i64 8 ; 2 uses
  %i.ap = load float, ptr %i.al, align 4, !tbaa !303
  %i.aq = getelementptr inbounds nuw i8, ptr %.179101, i64 4
  store float %i.ap, ptr %.179101, align 4, !tbaa !303
  %i.ar = add i32 %.18798, -2                     ; 3 uses
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !325

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa156 = phi ptr [ %i.ac, %middle.block ], [ %i.an, %.lr.ph ]
  %.lcssa155 = phi ptr [ %i.ae, %middle.block ], [ %i.ao, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ah, %middle.block ], [ %i.ar, %.lr.ph ]
  %i.at = icmp eq i32 %.lcssa, 0
  br i1 %i.at, label %bb.d, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.080.lcssa149 = phi ptr [ %.lcssa156, %._crit_edge ], [ %i.e, %bb.c ]
  %.182.lcssa148 = phi ptr [ %.lcssa155, %._crit_edge ], [ %i.h, %bb.c ]
  %i.au = load float, ptr %.182.lcssa148, align 4, !tbaa !303
  store float %i.au, ptr %.080.lcssa149, align 4, !tbaa !303
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %i.ax = zext i1 %5 to i32
  %i.ay = add i32 %4, %i.ax
  %i.az = lshr i32 %i.ay, 1                       ; 2 uses
  %not. = xor i1 %5, true
  %i.ba = zext i1 %not. to i32
  %i.bb = add i32 %4, %i.ba
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !108 ; 2 uses
  %.not94111 = icmp eq i8 %i.be, 0
  br i1 %.not94111, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !114
  %i.bh = zext i8 %i.be to i64
  br label %bb.e

._crit_edge120:                                   ; preds = %._crit_edge110, %bb.d
  %.092.lcssa = phi i32 [ %i.az, %bb.d ], [ %.091113, %._crit_edge110 ] ; 5 uses
  %.091.lcssa = phi i32 [ %i.bc, %bb.d ], [ %.092112, %._crit_edge110 ] ; 5 uses
  %.090.lcssa = phi ptr [ %i.aw, %bb.d ], [ %.088116, %._crit_edge110 ] ; 3 uses
  %.088.lcssa = phi ptr [ %i.av, %bb.d ], [ %.090114, %._crit_edge110 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !326 ; 3 uses
  %i.bk = fdiv float 1.000000e+00, %i.bj          ; 2 uses
  %.not95125 = icmp eq i32 %.092.lcssa, 0
  br i1 %.not95125, label %.preheader, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %._crit_edge120
  %i.bl = zext i32 %.092.lcssa to i64             ; 2 uses
  %min.iters.check207 = icmp ult i32 %.092.lcssa, 8
  br i1 %min.iters.check207, label %.lr.ph129.preheader239, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph129.preheader
  %n.vec209 = and i64 %i.bl, 4294967288           ; 4 uses
  %i.bm = trunc nuw i64 %n.vec209 to i32
  %i.bn = sub i32 %.092.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec209, 2
  %i.bp = getelementptr i8, ptr %.090.lcssa, i64 %i.bo
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph208
  %index213 = phi i64 [ 0, %vector.ph208 ], [ %index.next217, %vector.body212 ] ; 2 uses
  %i.bq = shl i64 %index213, 2
  %next.gep214 = getelementptr i8, ptr %.090.lcssa, i64 %i.bq ; 3 uses
  %i.br = getelementptr i8, ptr %next.gep214, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %next.gep214, align 4, !tbaa !303
  %wide.load216 = load <4 x float>, ptr %i.br, align 4, !tbaa !303
  %i.bs = fmul <4 x float> %broadcast.splat211, %wide.load215
  %i.bt = fmul <4 x float> %broadcast.splat211, %wide.load216
  store <4 x float> %i.bs, ptr %next.gep214, align 4, !tbaa !303
  store <4 x float> %i.bt, ptr %i.br, align 4, !tbaa !303
  %index.next217 = add nuw i64 %index213, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next217, %n.vec209
  br i1 %i.bu, label %middle.block218, label %vector.body212, !llvm.loop !327

middle.block218:                                  ; preds = %vector.body212
  %cmp.n219 = icmp eq i64 %n.vec209, %i.bl
  br i1 %cmp.n219, label %.preheader, label %.lr.ph129.preheader239

.lr.ph129.preheader239:                           ; preds = %.lr.ph129.preheader, %middle.block218
  %.075127.ph = phi i32 [ %.092.lcssa, %.lr.ph129.preheader ], [ %i.bn, %middle.block218 ]
  %.076126.ph = phi ptr [ %.090.lcssa, %.lr.ph129.preheader ], [ %i.bp, %middle.block218 ]
  br label %.lr.ph129

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge110
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph119 ], [ %i.bw, %._crit_edge110 ]
  %.077.in117 = phi i1 [ %5, %.lr.ph119 ], [ %i.dn, %._crit_edge110 ] ; 3 uses
  %.088116 = phi ptr [ %i.av, %.lr.ph119 ], [ %.090114, %._crit_edge110 ] ; 9 uses
  %.090114 = phi ptr [ %i.aw, %.lr.ph119 ], [ %.088116, %._crit_edge110 ] ; 10 uses
  %.091113 = phi i32 [ %i.bc, %.lr.ph119 ], [ %.092112, %._crit_edge110 ] ; 9 uses
  %.092112 = phi i32 [ %i.az, %.lr.ph119 ], [ %.091113, %._crit_edge110 ] ; 4 uses
  %i.bv = select i1 %.077.in117, i64 4, i64 0     ; 2 uses
  %i.bw = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !13 ; 4 uses
  %i.bz = load float, ptr %.090114, align 4, !tbaa !303
  %i.ca = getelementptr inbounds i8, ptr %.090114, i64 -4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !303
  %i.cb = add nsw i32 %.092112, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.090114, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !303
  %i.cf = zext nneg i32 %.092112 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.090114, i64 %i.cf
  store float %i.ce, ptr %i.cg, align 4, !tbaa !303
  %.not97104 = icmp eq i32 %.091113, 0
  br i1 %.not97104, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.e
  %i.ch = zext i1 %.077.in117 to i64
end_hunk_2
