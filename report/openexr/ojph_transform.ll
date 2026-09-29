Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local17gen_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
.preheader20.i:                                   ; preds = %bb.m
  br i1 %.not11253.i, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i.preheader

.lr.ph34.i.preheader:                             ; preds = %.preheader20.i
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
  %wide.load112 = load <4 x i32>, ptr %next.gep110, align 4, !tbaa !13, !alias.scope !104
  %wide.load113 = load <4 x i32>, ptr %next.gep109, align 4, !tbaa !13, !alias.scope !105
  %i.oq = add nsw <4 x i32> %wide.load113, %wide.load112
  %i.or = mul nsw <4 x i32> %i.oq, %broadcast.splat102
  %i.os = add nsw <4 x i32> %i.or, %broadcast.splat104
  %i.ot = ashr <4 x i32> %i.os, %broadcast.splat106
  %wide.load114 = load <4 x i32>, ptr %next.gep111, align 4, !tbaa !13, !alias.scope !106, !noalias !107
  %i.ou = sub nsw <4 x i32> %wide.load114, %i.ot
  store <4 x i32> %i.ou, ptr %next.gep111, align 4, !tbaa !13, !alias.scope !106, !noalias !107
  %index.next115 = add nuw i64 %index108, 4       ; 2 uses
  %i.ov = icmp eq i64 %index.next115, %n.vec100
  br i1 %i.ov, label %middle.block116, label %vector.body107, !llvm.loop !73

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
  %i.ox = load i32, ptr %.69631.i.ph, align 4, !tbaa !13
  %i.oy = getelementptr inbounds nuw i8, ptr %.632.i.ph, i64 4
  %i.oz = load i32, ptr %.632.i.ph, align 4, !tbaa !13
  %i.pa = add nsw i32 %i.oz, %i.ox
  %i.pb = mul nsw i32 %i.pa, %i.t
  %i.pc = add nsw i32 %i.pb, %i.w
  %i.pd = ashr i32 %i.pc, %i.en
  %i.pe = getelementptr inbounds nuw i8, ptr %.610430.i.ph, i64 4
  %i.pf = load i32, ptr %.610430.i.ph, align 4, !tbaa !13
  %i.pg = sub nsw i32 %i.pf, %i.pd
  store i32 %i.pg, ptr %.610430.i.ph, align 4, !tbaa !13
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
  %i.pk = load i32, ptr %.69631.i, align 4, !tbaa !13
  %i.pl = getelementptr inbounds nuw i8, ptr %.632.i, i64 4
  %i.pm = load i32, ptr %.632.i, align 4, !tbaa !13
  %i.pn = add nsw i32 %i.pm, %i.pk
  %i.po = mul nsw i32 %i.pn, %i.t
  %i.pp = add nsw i32 %i.po, %i.w
  %i.pq = ashr i32 %i.pp, %i.en
  %i.pr = getelementptr inbounds nuw i8, ptr %.610430.i, i64 4 ; 2 uses
  %i.ps = load i32, ptr %.610430.i, align 4, !tbaa !13
  %i.pt = sub nsw i32 %i.ps, %i.pq
  store i32 %i.pt, ptr %.610430.i, align 4, !tbaa !13
  %i.pu = getelementptr inbounds nuw i8, ptr %.69631.i, i64 8
  %i.pv = load i32, ptr %i.pj, align 4, !tbaa !13
  %i.pw = getelementptr inbounds nuw i8, ptr %.632.i, i64 8
  %i.px = load i32, ptr %i.pl, align 4, !tbaa !13
  %i.py = add nsw i32 %i.px, %i.pv
  %i.pz = mul nsw i32 %i.py, %i.t
  %i.qa = add nsw i32 %i.pz, %i.w
  %i.qb = ashr i32 %i.qa, %i.en
  %i.qc = getelementptr inbounds nuw i8, ptr %.610430.i, i64 8
  %i.qd = load i32, ptr %i.pr, align 4, !tbaa !13
  %i.qe = sub nsw i32 %i.qd, %i.qb
  store i32 %i.qe, ptr %i.pr, align 4, !tbaa !13
  %i.qf = add i32 %.08233.i, -2                   ; 2 uses
  %.not108.i.1 = icmp eq i32 %i.qf, 0
  br i1 %.not108.i.1, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph34.i, !llvm.loop !74

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.028.i = phi i32 [ %i.rc, %.lr.ph.i ], [ %.028.i.unr, %.lr.ph.i.prol.loopexit ]
  %.727.i = phi ptr [ %i.qt, %.lr.ph.i ], [ %.727.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.79726.i = phi ptr [ %i.qr, %.lr.ph.i ], [ %.79726.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.710525.i = phi ptr [ %i.qz, %.lr.ph.i ], [ %.710525.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.79726.i, i64 4
  %i.qh = load i32, ptr %.79726.i, align 4, !tbaa !13
  %i.qi = getelementptr inbounds nuw i8, ptr %.727.i, i64 4
  %i.qj = load i32, ptr %.727.i, align 4, !tbaa !13
  %i.qk = add nsw i32 %i.qj, %i.qh
  %i.ql = mul nsw i32 %i.qk, %i.t
  %i.qm = add nsw i32 %i.ql, %i.w
  %i.qn = ashr i32 %i.qm, %i.en
  %i.qo = getelementptr inbounds nuw i8, ptr %.710525.i, i64 4 ; 2 uses
  %i.qp = load i32, ptr %.710525.i, align 4, !tbaa !13
  %i.qq = add nsw i32 %i.qn, %i.qp
  store i32 %i.qq, ptr %.710525.i, align 4, !tbaa !13
  %i.qr = getelementptr inbounds nuw i8, ptr %.79726.i, i64 8
  %i.qs = load i32, ptr %i.qg, align 4, !tbaa !13
  %i.qt = getelementptr inbounds nuw i8, ptr %.727.i, i64 8
  %i.qu = load i32, ptr %i.qi, align 4, !tbaa !13
  %i.qv = add nsw i32 %i.qu, %i.qs
  %i.qw = mul nsw i32 %i.qv, %i.t
  %i.qx = add nsw i32 %i.qw, %i.w
  %i.qy = ashr i32 %i.qx, %i.en
  %i.qz = getelementptr inbounds nuw i8, ptr %.710525.i, i64 8
  %i.ra = load i32, ptr %i.qo, align 4, !tbaa !13
  %i.rb = add nsw i32 %i.qy, %i.ra
  store i32 %i.rb, ptr %i.qo, align 4, !tbaa !13
  %i.rc = add i32 %.028.i, -2                     ; 2 uses
  %.not.i.1 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.1, label %_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph.i, !llvm.loop !75

_ZN4ojph5localL19gen_rev_vert_step32EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph34.i.prol.loopexit, %.lr.ph34.i, %.lr.ph40.i.prol.loopexit, %.lr.ph40.i, %.lr.ph46.i.prol.loopexit, %.lr.ph46.i, %.lr.ph52.i.prol.loopexit, %.lr.ph52.i, %.lr.ph58.i.prol.loopexit, %.lr.ph58.i, %scalar.ph273.prol.loopexit, %scalar.ph273, %scalar.ph310.prol.loopexit, %scalar.ph310.a, %middle.block, %middle.block116, %middle.block153, %middle.block190, %middle.block223, %middle.block256, %middle.block293, %middle.block330, %.preheader20.i, %.preheader22.i, %.preheader16.i, %.preheader18.i, %.preheader12.i, %.preheader14.i, %.preheader.i, %.preheader10.i, %.split, %.split17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %i.d = icmp ugt i32 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %.loopexit140.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 3 uses
  br i1 %5, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.l, ptr %i.f, align 4, !tbaa !13
  %i.n = add i32 %4, -1                           ; 2 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.preheader.i, label %._crit_edge.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.d, %bb.c
  %.0103190.i = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.c ] ; 7 uses
  %.0119189.i = phi i32 [ %i.n, %bb.d ], [ %4, %bb.c ] ; 5 uses
  %.0121188.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 7 uses
  %i.p = icmp ne i32 %.0119189.i, 2
  %.neg = sext i1 %i.p to i32
  %i.q = add i32 %.0119189.i, -1
  %i.r = add i32 %i.q, %.neg                      ; 2 uses
  %6 = zext i32 %i.r to i64                       ; 2 uses
  %7 = lshr i64 %6, 1
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 70
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %9 = lshr i64 %6, 1                             ; 2 uses
  %i.s = shl nuw nsw i64 %9, 2
  %i.t = add nuw nsw i64 %i.s, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.h, i64 %i.t ; 2 uses
  %scevgep131 = getelementptr i8, ptr %.0103190.i, i64 %i.t ; 2 uses
  %i.u = shl nuw nsw i64 %9, 3
  %i.v = getelementptr i8, ptr %.0121188.i, i64 %i.u
  %scevgep132 = getelementptr i8, ptr %i.v, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.h, %scevgep131
  %bound1 = icmp ult ptr %.0103190.i, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0133 = icmp ult ptr %i.h, %scevgep132
  %bound1134 = icmp ult ptr %.0121188.i, %scevgep.a
  %found.conflict135 = and i1 %bound0133, %bound1134
  %conflict.rdx = or i1 %found.conflict, %found.conflict135
  %bound0136 = icmp ult ptr %.0103190.i, %scevgep132
  %bound1137 = icmp ult ptr %.0121188.i, %scevgep131
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %conflict.rdx, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %8, 4294967292                 ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.x = getelementptr i8, ptr %.0103190.i, i64 %i.w
  %i.y = trunc nuw i64 %n.vec to i32
  %i.z = shl i32 %i.y, 1
  %i.aa = sub i32 %.0119189.i, %i.z               ; 2 uses
  %i.ab = shl nuw nsw i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %.0121188.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 %i.w    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0103190.i, i64 %i.ae
  %i.af = shl i64 %index, 3
  %next.gep140 = getelementptr i8, ptr %.0121188.i, i64 %i.af
  %next.gep141 = getelementptr i8, ptr %i.h, i64 %i.ae
  %wide.vec = load <8 x i32>, ptr %next.gep140, align 4, !tbaa !13, !alias.scope !170 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec142 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %strided.vec, ptr %next.gep141, align 4, !tbaa !13, !alias.scope !171, !noalias !172
  store <4 x i32> %strided.vec142, ptr %next.gep, align 4, !tbaa !13, !alias.scope !173, !noalias !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.1144.i.ph = phi ptr [ %.0103190.i, %vector.memcheck ], [ %.0103190.i, %.lr.ph.preheader.i ], [ %i.x, %middle.block ]
  %.1120143.i.ph = phi i32 [ %.0119189.i, %vector.memcheck ], [ %.0119189.i, %.lr.ph.preheader.i ], [ %i.aa, %middle.block ]
  %.1122142.i.ph = phi ptr [ %.0121188.i, %vector.memcheck ], [ %.0121188.i, %.lr.ph.preheader.i ], [ %i.ac, %middle.block ]
  %.0123141.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1144.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.1144.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.1120143.i = phi i32 [ %i.an, %.lr.ph.i ], [ %.1120143.i.ph, %.lr.ph.i.preheader ]
  %.1122142.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.1122142.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0123141.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.0123141.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.1122142.i, i64 4
  %i.ai = load i32, ptr %.1122142.i, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %.0123141.i, i64 4 ; 2 uses
  store i32 %i.ai, ptr %.0123141.i, align 4, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %.1122142.i, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %.1144.i, i64 4
  store i32 %i.al, ptr %.1144.i, align 4, !tbaa !13
  %i.an = add i32 %.1120143.i, -2                 ; 3 uses
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !113

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.lcssa130 = phi ptr [ %i.ad, %middle.block ], [ %i.aj, %.lr.ph.i ]
  %.lcssa129 = phi ptr [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i ]
  %.lcssa128 = phi i32 [ %i.aa, %middle.block ], [ %i.an, %.lr.ph.i ]
  %i.ap = icmp eq i32 %.lcssa128, 0
  br i1 %i.ap, label %bb.e, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.1122.lcssa195.i = phi ptr [ %.lcssa129, %._crit_edge.i ], [ %i.k, %bb.d ]
  %.0123.lcssa194.i = phi ptr [ %.lcssa130, %._crit_edge.i ], [ %i.h, %bb.d ]
  %i.aq = load i32, ptr %.1122.lcssa195.i, align 4, !tbaa !13
  store i32 %i.aq, ptr %.0123.lcssa194.i, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !22  ; 2 uses
  %.not127167.i = icmp eq i8 %i.as, 0
  br i1 %.not127167.i, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %bb.e
  %not..i = xor i1 %5, true
  %i.at = zext i1 %not..i to i32
  %i.au = add i32 %4, %i.at
  %i.av = lshr i32 %i.au, 1
  %i.aw = zext i1 %5 to i32
  %i.ax = add i32 %4, %i.aw
  %i.ay = lshr i32 %i.ax, 1
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !23
  %i.bd = zext i8 %i.as to i64
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.i, %.lr.ph175.i
  %indvars.iv.i = phi i64 [ %i.bd, %.lr.ph175.i ], [ %i.bi, %.loopexit.i ]
  %.0.in173.i = phi i1 [ %5, %.lr.ph175.i ], [ %i.kx, %.loopexit.i ] ; 6 uses
  %.0115171.i = phi i32 [ %i.av, %.lr.ph175.i ], [ %.0116170.i, %.loopexit.i ] ; 27 uses
  %.0116170.i = phi i32 [ %i.ay, %.lr.ph175.i ], [ %.0115171.i, %.loopexit.i ] ; 3 uses
  %.0117169.i = phi ptr [ %i.az, %.lr.ph175.i ], [ %.0118168.i, %.loopexit.i ] ; 18 uses
  %.0118168.i = phi ptr [ %i.ba, %.lr.ph175.i ], [ %.0117169.i, %.loopexit.i ] ; 29 uses
  %i.be = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bf = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bg = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bh = select i1 %.0.in173.i, i64 4, i64 0     ; 2 uses
  %i.bi = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !12 ; 3 uses
  %i.bm = sext i16 %i.bl to i32                   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !12 ; 2 uses
  %i.bp = sext i16 %i.bo to i32                   ; 12 uses
  %i.bq = load i8, ptr %i.bj, align 4, !tbaa !12  ; 3 uses
  %i.br = load i32, ptr %.0117169.i, align 4, !tbaa !13
  %i.bs = getelementptr inbounds i8, ptr %.0117169.i, i64 -4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !13
  %i.bt = add nsw i32 %.0116170.i, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.0117169.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = zext nneg i32 %.0116170.i to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0117169.i, i64 %i.bx
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !13
  %i.bz = zext i1 %.0.in173.i to i64
  %i.ca = getelementptr [4 x i8], ptr %.0117169.i, i64 %i.bz ; 20 uses
  %i.cb = icmp eq i16 %i.bl, 1
  br i1 %i.cb, label %.preheader.i, label %bb.g

.preheader.i:                                     ; preds = %bb.f
  %.not131162.i = icmp eq i32 %.0115171.i, 0
  br i1 %.not131162.i, label %.loopexit.i, label %.lr.ph166.i

.lr.ph166.i:                                      ; preds = %.preheader.i
  %i.cc = zext nneg i8 %i.bq to i32               ; 4 uses
  %i.cd = zext nneg i32 %.0115171.i to i64        ; 2 uses
  %min.iters.check162 = icmp samesign ult i32 %.0115171.i, 8
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph166.i
  %scevgep147 = getelementptr i8, ptr %.0118168.i, i64 4
  %i.ce = add nsw i32 %.0115171.i, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 2                ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.cg ; 2 uses
  %scevgep149 = getelementptr i8, ptr %.0117169.i, i64 -4
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.bh
  %i.ch = add nuw nsw i64 %i.bh, %i.cg            ; 2 uses
  %scevgep151 = getelementptr i8, ptr %.0117169.i, i64 %i.ch
  %scevgep152 = getelementptr i8, ptr %.0117169.i, i64 4
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.ch
  %bound0154 = icmp ult ptr %.0118168.i, %scevgep151
  %bound1155 = icmp ult ptr %scevgep150, %scevgep148
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %.0118168.i, %scevgep153
  %bound1158 = icmp ult ptr %i.ca, %scevgep148
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  br i1 %conflict.rdx160, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck146
  %n.vec164 = and i64 %i.cd, 2147483640           ; 4 uses
  %i.ci = trunc nuw nsw i64 %n.vec164 to i32
  %i.cj = sub nsw i32 %.0115171.i, %i.ci
  %i.ck = shl nuw nsw i64 %n.vec164, 2            ; 2 uses
  %i.cl = getelementptr i8, ptr %.0118168.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ca, i64 %i.ck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert165 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat166 = shufflevector <4 x i32> %broadcast.splatinsert165, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph163
  %index168 = phi i64 [ 0, %vector.ph163 ], [ %index.next176, %vector.body167 ] ; 2 uses
  %i.cn = shl i64 %index168, 2                    ; 2 uses
  %next.gep169 = getelementptr i8, ptr %.0118168.i, i64 %i.cn ; 3 uses
  %next.gep170 = getelementptr i8, ptr %i.ca, i64 %i.cn ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep170, i64 -4
  %i.cp = getelementptr inbounds nuw i8, ptr %next.gep170, i64 12
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !13, !alias.scope !174
  %wide.load171 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !13, !alias.scope !174
  %i.cq = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load172 = load <4 x i32>, ptr %next.gep170, align 4, !tbaa !13, !alias.scope !175
  %wide.load173 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !13, !alias.scope !175
  %i.cr = add <4 x i32> %wide.load, %broadcast.splat166
  %i.cs = add <4 x i32> %wide.load171, %broadcast.splat166
  %i.ct = add <4 x i32> %i.cr, %wide.load172
  %i.cu = add <4 x i32> %i.cs, %wide.load173
  %i.cv = ashr <4 x i32> %i.ct, %broadcast.splat
  %i.cw = ashr <4 x i32> %i.cu, %broadcast.splat
  %i.cx = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !13, !alias.scope !176, !noalias !177
  %wide.load175 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !13, !alias.scope !176, !noalias !177
  %i.cy = add nsw <4 x i32> %i.cv, %wide.load174
  %i.cz = add nsw <4 x i32> %i.cw, %wide.load175
  store <4 x i32> %i.cy, ptr %next.gep169, align 4, !tbaa !13, !alias.scope !176, !noalias !177
  store <4 x i32> %i.cz, ptr %i.cx, align 4, !tbaa !13, !alias.scope !176, !noalias !177
  %index.next176 = add nuw i64 %index168, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next176, %n.vec164
  br i1 %i.da, label %middle.block177, label %vector.body167, !llvm.loop !118

middle.block177:                                  ; preds = %vector.body167
  %cmp.n178 = icmp eq i64 %n.vec164, %i.cd
  br i1 %cmp.n178, label %.loopexit.i, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %vector.memcheck146, %.lr.ph166.i, %middle.block177
  %.0107165.i.ph = phi i32 [ %.0115171.i, %vector.memcheck146 ], [ %.0115171.i, %.lr.ph166.i ], [ %i.cj, %middle.block177 ] ; 4 uses
  %.0108164.i.ph = phi ptr [ %.0118168.i, %vector.memcheck146 ], [ %.0118168.i, %.lr.ph166.i ], [ %i.cl, %middle.block177 ] ; 4 uses
  %.0110163.i.ph = phi ptr [ %i.ca, %vector.memcheck146 ], [ %i.ca, %.lr.ph166.i ], [ %i.cm, %middle.block177 ] ; 4 uses
  %xtraiter506 = and i32 %.0107165.i.ph, 1
  %lcmp.mod507.not = icmp eq i32 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %scalar.ph161.prol.loopexit, label %scalar.ph161.prol

scalar.ph161.prol:                                ; preds = %scalar.ph161.preheader
  %i.db = getelementptr inbounds i8, ptr %.0110163.i.ph, i64 -4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !13
  %i.dd = load i32, ptr %.0110163.i.ph, align 4, !tbaa !13
  %i.de = add i32 %i.dc, %i.bp
  %i.df = add i32 %i.de, %i.dd
  %i.dg = ashr i32 %i.df, %i.cc
  %i.dh = load i32, ptr %.0108164.i.ph, align 4, !tbaa !13
  %i.di = add nsw i32 %i.dg, %i.dh
  store i32 %i.di, ptr %.0108164.i.ph, align 4, !tbaa !13
  %i.dj = add nsw i32 %.0107165.i.ph, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %.0110163.i.ph, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.0108164.i.ph, i64 4
  br label %scalar.ph161.prol.loopexit

scalar.ph161.prol.loopexit:                       ; preds = %scalar.ph161.prol, %scalar.ph161.preheader
  %.0107165.i.unr = phi i32 [ %.0107165.i.ph, %scalar.ph161.preheader ], [ %i.dj, %scalar.ph161.prol ]
  %.0108164.i.unr = phi ptr [ %.0108164.i.ph, %scalar.ph161.preheader ], [ %i.dl, %scalar.ph161.prol ]
  %.0110163.i.unr = phi ptr [ %.0110163.i.ph, %scalar.ph161.preheader ], [ %i.dk, %scalar.ph161.prol ]
end_hunk_0
begin_hunk_1_@_ZN4ojph5local16gen_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  br i1 %min.iters.check233, label %.lr.ph156.i.preheader494, label %vector.memcheck217

vector.memcheck217:                               ; preds = %.lr.ph156.i.preheader
  %scevgep218 = getelementptr i8, ptr %.0118168.i, i64 4
  %i.hy = add nsw i32 %.0115171.i, -1
  %i.hz = zext i32 %i.hy to i64
  %i.ia = shl nuw nsw i64 %i.hz, 2                ; 2 uses
  %scevgep219 = getelementptr i8, ptr %scevgep218, i64 %i.ia ; 2 uses
  %scevgep220 = getelementptr i8, ptr %.0117169.i, i64 -4
  %scevgep221 = getelementptr i8, ptr %scevgep220, i64 %i.bf
  %i.ib = add nuw nsw i64 %i.bf, %i.ia            ; 2 uses
  %scevgep222 = getelementptr i8, ptr %.0117169.i, i64 %i.ib
  %scevgep223 = getelementptr i8, ptr %.0117169.i, i64 4
  %scevgep224 = getelementptr i8, ptr %scevgep223, i64 %i.ib
  %bound0225 = icmp ult ptr %.0118168.i, %scevgep222
  %bound1226 = icmp ult ptr %scevgep221, %scevgep219
  %found.conflict227 = and i1 %bound0225, %bound1226
  %bound0228 = icmp ult ptr %.0118168.i, %scevgep224
  %bound1229 = icmp ult ptr %i.ca, %scevgep219
  %found.conflict230 = and i1 %bound0228, %bound1229
  %conflict.rdx231 = or i1 %found.conflict227, %found.conflict230
  br i1 %conflict.rdx231, label %.lr.ph156.i.preheader494, label %vector.ph234

vector.ph234:                                     ; preds = %vector.memcheck217
  %n.vec235 = and i64 %i.hx, 2147483640           ; 4 uses
  %i.ic = trunc nuw nsw i64 %n.vec235 to i32
  %i.id = sub nsw i32 %.0115171.i, %i.ic
  %i.ie = shl nuw nsw i64 %n.vec235, 2            ; 2 uses
  %i.if = getelementptr i8, ptr %.0118168.i, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.ca, i64 %i.ie
  %broadcast.splatinsert236 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat237 = shufflevector <4 x i32> %broadcast.splatinsert236, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph234
  %index241 = phi i64 [ 0, %vector.ph234 ], [ %index.next250, %vector.body240 ] ; 2 uses
  %i.ih = shl i64 %index241, 2                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.0118168.i, i64 %i.ih ; 3 uses
  %next.gep243 = getelementptr i8, ptr %i.ca, i64 %i.ih ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %next.gep243, i64 -4
  %i.ij = getelementptr inbounds nuw i8, ptr %next.gep243, i64 12
  %wide.load244 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !13, !alias.scope !186
  %wide.load245 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !13, !alias.scope !186
  %i.ik = getelementptr i8, ptr %next.gep243, i64 16
  %wide.load246 = load <4 x i32>, ptr %next.gep243, align 4, !tbaa !13, !alias.scope !187
  %wide.load247 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !13, !alias.scope !187
  %i.il = add <4 x i32> %wide.load244, %wide.load246
  %i.im = add <4 x i32> %wide.load245, %wide.load247
  %i.in = sub <4 x i32> %broadcast.splat237, %i.il
  %i.io = sub <4 x i32> %broadcast.splat237, %i.im
  %i.ip = ashr <4 x i32> %i.in, %broadcast.splat239
  %i.iq = ashr <4 x i32> %i.io, %broadcast.splat239
  %i.ir = getelementptr i8, ptr %next.gep242, i64 16 ; 2 uses
  %wide.load248 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !13, !alias.scope !188, !noalias !189
  %wide.load249 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !13, !alias.scope !188, !noalias !189
  %i.is = add nsw <4 x i32> %i.ip, %wide.load248
  %i.it = add nsw <4 x i32> %i.iq, %wide.load249
  store <4 x i32> %i.is, ptr %next.gep242, align 4, !tbaa !13, !alias.scope !188, !noalias !189
  store <4 x i32> %i.it, ptr %i.ir, align 4, !tbaa !13, !alias.scope !188, !noalias !189
  %index.next250 = add nuw i64 %index241, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next250, %n.vec235
  br i1 %i.iu, label %middle.block251, label %vector.body240, !llvm.loop !135

middle.block251:                                  ; preds = %vector.body240
  %cmp.n252 = icmp eq i64 %n.vec235, %i.hx
  br i1 %cmp.n252, label %.loopexit.i, label %.lr.ph156.i.preheader494

.lr.ph156.i.preheader494:                         ; preds = %vector.memcheck217, %.lr.ph156.i.preheader, %middle.block251
  %.0105155.i.ph = phi i32 [ %.0115171.i, %vector.memcheck217 ], [ %.0115171.i, %.lr.ph156.i.preheader ], [ %i.id, %middle.block251 ] ; 4 uses
  %.2154.i.ph = phi ptr [ %.0118168.i, %vector.memcheck217 ], [ %.0118168.i, %.lr.ph156.i.preheader ], [ %i.if, %middle.block251 ] ; 4 uses
  %.2112153.i.ph = phi ptr [ %i.ca, %vector.memcheck217 ], [ %i.ca, %.lr.ph156.i.preheader ], [ %i.ig, %middle.block251 ] ; 4 uses
  %xtraiter502 = and i32 %.0105155.i.ph, 1
  %lcmp.mod503.not = icmp eq i32 %xtraiter502, 0
  br i1 %lcmp.mod503.not, label %.lr.ph156.i.prol.loopexit, label %.lr.ph156.i.prol

.lr.ph156.i.prol:                                 ; preds = %.lr.ph156.i.preheader494
  %i.iv = getelementptr inbounds i8, ptr %.2112153.i.ph, i64 -4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !13
  %i.ix = load i32, ptr %.2112153.i.ph, align 4, !tbaa !13
  %i.iy = add i32 %i.iw, %i.ix
  %i.iz = sub i32 %i.bp, %i.iy
  %i.ja = ashr i32 %i.iz, %i.ej
  %i.jb = load i32, ptr %.2154.i.ph, align 4, !tbaa !13
  %i.jc = add nsw i32 %i.ja, %i.jb
  store i32 %i.jc, ptr %.2154.i.ph, align 4, !tbaa !13
  %i.jd = add nsw i32 %.0105155.i.ph, -1
  %i.je = getelementptr inbounds nuw i8, ptr %.2112153.i.ph, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.2154.i.ph, i64 4
  br label %.lr.ph156.i.prol.loopexit

.lr.ph156.i.prol.loopexit:                        ; preds = %.lr.ph156.i.prol, %.lr.ph156.i.preheader494
  %.0105155.i.unr = phi i32 [ %.0105155.i.ph, %.lr.ph156.i.preheader494 ], [ %i.jd, %.lr.ph156.i.prol ]
  %.2154.i.unr = phi ptr [ %.2154.i.ph, %.lr.ph156.i.preheader494 ], [ %i.jf, %.lr.ph156.i.prol ]
  %.2112153.i.unr = phi ptr [ %.2112153.i.ph, %.lr.ph156.i.preheader494 ], [ %i.je, %.lr.ph156.i.prol ]
  %i.jg = icmp eq i32 %.0105155.i.ph, 1
  br i1 %i.jg, label %.loopexit.i, label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %.lr.ph156.i.prol.loopexit, %.lr.ph156.i
  %.0105155.i = phi i32 [ %i.jy, %.lr.ph156.i ], [ %.0105155.i.unr, %.lr.ph156.i.prol.loopexit ]
  %.2154.i = phi ptr [ %i.ka, %.lr.ph156.i ], [ %.2154.i.unr, %.lr.ph156.i.prol.loopexit ] ; 4 uses
  %.2112153.i = phi ptr [ %i.jz, %.lr.ph156.i ], [ %.2112153.i.unr, %.lr.ph156.i.prol.loopexit ] ; 5 uses
  %i.jh = getelementptr inbounds i8, ptr %.2112153.i, i64 -4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !13
  %i.jj = load i32, ptr %.2112153.i, align 4, !tbaa !13
  %i.jk = add i32 %i.ji, %i.jj
  %i.jl = sub i32 %i.bp, %i.jk
  %i.jm = ashr i32 %i.jl, %i.ej
  %i.jn = load i32, ptr %.2154.i, align 4, !tbaa !13
  %i.jo = add nsw i32 %i.jm, %i.jn
  store i32 %i.jo, ptr %.2154.i, align 4, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.2112153.i, i64 4
  %i.jq = getelementptr inbounds nuw i8, ptr %.2154.i, i64 4 ; 2 uses
  %i.jr = load i32, ptr %.2112153.i, align 4, !tbaa !13
  %i.js = load i32, ptr %i.jp, align 4, !tbaa !13
  %i.jt = add i32 %i.jr, %i.js
  %i.ju = sub i32 %i.bp, %i.jt
  %i.jv = ashr i32 %i.ju, %i.ej
  %i.jw = load i32, ptr %i.jq, align 4, !tbaa !13
  %i.jx = add nsw i32 %i.jv, %i.jw
  store i32 %i.jx, ptr %i.jq, align 4, !tbaa !13
  %i.jy = add nsw i32 %.0105155.i, -2             ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.2112153.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %.2154.i, i64 8
  %.not129.i.1 = icmp eq i32 %i.jy, 0
  br i1 %.not129.i.1, label %.loopexit.i, label %.lr.ph156.i, !llvm.loop !136

.lr.ph151.i:                                      ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i
  %.0104150.i = phi i32 [ %i.ku, %.lr.ph151.i ], [ %.0104150.i.unr, %.lr.ph151.i.prol.loopexit ]
  %.3149.i = phi ptr [ %i.kw, %.lr.ph151.i ], [ %.3149.i.unr, %.lr.ph151.i.prol.loopexit ] ; 4 uses
  %.3113148.i = phi ptr [ %i.kv, %.lr.ph151.i ], [ %.3113148.i.unr, %.lr.ph151.i.prol.loopexit ] ; 5 uses
  %i.kb = getelementptr inbounds i8, ptr %.3113148.i, i64 -4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !13
  %i.kd = load i32, ptr %.3113148.i, align 4, !tbaa !13
  %i.ke = add nsw i32 %i.kd, %i.kc
  %i.kf = mul nsw i32 %i.ke, %i.bm
  %i.kg = add nsw i32 %i.kf, %i.bp
  %i.kh = ashr i32 %i.kg, %i.ej
  %i.ki = load i32, ptr %.3149.i, align 4, !tbaa !13
  %i.kj = add nsw i32 %i.kh, %i.ki
  store i32 %i.kj, ptr %.3149.i, align 4, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %.3113148.i, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %.3149.i, i64 4 ; 2 uses
  %i.km = load i32, ptr %.3113148.i, align 4, !tbaa !13
  %i.kn = load i32, ptr %i.kk, align 4, !tbaa !13
  %i.ko = add nsw i32 %i.kn, %i.km
  %i.kp = mul nsw i32 %i.ko, %i.bm
  %i.kq = add nsw i32 %i.kp, %i.bp
  %i.kr = ashr i32 %i.kq, %i.ej
  %i.ks = load i32, ptr %i.kl, align 4, !tbaa !13
  %i.kt = add nsw i32 %i.kr, %i.ks
  store i32 %i.kt, ptr %i.kl, align 4, !tbaa !13
  %i.ku = add nsw i32 %.0104150.i, -2             ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.3113148.i, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %.3149.i, i64 8
  %.not128.i.1 = icmp eq i32 %i.ku, 0
  br i1 %.not128.i.1, label %.loopexit.i, label %.lr.ph151.i, !llvm.loop !137

.loopexit.i:                                      ; preds = %.lr.ph151.i.prol.loopexit, %.lr.ph151.i, %.lr.ph156.i.prol.loopexit, %.lr.ph156.i, %.lr.ph161.i.prol.loopexit, %.lr.ph161.i, %scalar.ph161.prol.loopexit, %scalar.ph161, %middle.block292, %middle.block251, %middle.block212, %middle.block177, %.preheader136.i, %.preheader138.i, %.preheader134.i, %.preheader.i
  %i.kx = xor i1 %.0.in173.i, true
  %.not127.wide.i = icmp eq i64 %i.bi, 0
  br i1 %.not127.wide.i, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %bb.f, !llvm.loop !138

.loopexit140.sink.split.i:                        ; preds = %bb.b
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !13
  %.sink203.i = select i1 %5, ptr %1, ptr %2
  %not.204.i = xor i1 %5, true
  %i.lb = zext i1 %not.204.i to i32
  %.sink.i = shl i32 %i.la, %i.lb
  %i.lc = getelementptr inbounds nuw i8, ptr %.sink203.i, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !12
  store i32 %.sink.i, ptr %i.ld, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.j, label %.loopexit140.sink.split.i12

bb.j:                                             ; preds = %bb.i
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !12 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !12 ; 8 uses
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !12 ; 3 uses
  br i1 %5, label %.lr.ph.preheader.i58, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !24
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store i64 %i.ll, ptr %i.lf, align 8, !tbaa !24
  %i.ln = add i32 %4, -1                          ; 2 uses
  %i.lo = icmp ugt i32 %i.ln, 1
  br i1 %i.lo, label %.lr.ph.preheader.i58, label %._crit_edge.thread.i16

.lr.ph.preheader.i58:                             ; preds = %bb.k, %bb.j
  %.0103190.i59 = phi ptr [ %i.lm, %bb.k ], [ %i.lf, %bb.j ] ; 7 uses
  %.0119189.i60 = phi i32 [ %i.ln, %bb.k ], [ %4, %bb.j ] ; 5 uses
  %.0121188.i61 = phi ptr [ %i.lk, %bb.k ], [ %i.lj, %bb.j ] ; 7 uses
  %i.lp = icmp ne i32 %.0119189.i60, 2
  %.neg483 = sext i1 %i.lp to i32
  %i.lq = add i32 %.0119189.i60, -1
  %i.lr = add i32 %i.lq, %.neg483                 ; 2 uses
  %10 = zext i32 %i.lr to i64                     ; 2 uses
  %11 = lshr i64 %10, 1
  %12 = add nuw nsw i64 %11, 1                    ; 2 uses
  %min.iters.check314 = icmp ult i32 %i.lr, 82
  br i1 %min.iters.check314, label %.lr.ph.i62.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph.preheader.i58
  %13 = lshr i64 %10, 1                           ; 2 uses
  %i.ls = shl nuw nsw i64 %13, 3
  %i.lt = add nuw nsw i64 %i.ls, 8                ; 2 uses
  %scevgep299 = getelementptr i8, ptr %i.lh, i64 %i.lt ; 2 uses
  %scevgep300 = getelementptr i8, ptr %.0103190.i59, i64 %i.lt ; 2 uses
  %i.lu = shl nuw nsw i64 %13, 4
  %i.lv = getelementptr i8, ptr %.0121188.i61, i64 %i.lu
  %scevgep301 = getelementptr i8, ptr %i.lv, i64 16 ; 2 uses
  %bound0302 = icmp ult ptr %i.lh, %scevgep300
  %bound1303 = icmp ult ptr %.0103190.i59, %scevgep299
  %found.conflict304 = and i1 %bound0302, %bound1303
  %bound0305 = icmp ult ptr %i.lh, %scevgep301
  %bound1306 = icmp ult ptr %.0121188.i61, %scevgep299
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %found.conflict304, %found.conflict307
  %bound0309 = icmp ult ptr %.0103190.i59, %scevgep301
  %bound1310 = icmp ult ptr %.0121188.i61, %scevgep300
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  br i1 %conflict.rdx312, label %.lr.ph.i62.preheader, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck297
  %n.vec316 = and i64 %12, 4294967294             ; 5 uses
  %i.lw = shl nuw nsw i64 %n.vec316, 3            ; 2 uses
  %i.lx = getelementptr i8, ptr %.0103190.i59, i64 %i.lw
  %i.ly = trunc nuw i64 %n.vec316 to i32
  %i.lz = shl i32 %i.ly, 1
  %i.ma = sub i32 %.0119189.i60, %i.lz            ; 2 uses
  %i.mb = shl nuw nsw i64 %n.vec316, 4
  %i.mc = getelementptr i8, ptr %.0121188.i61, i64 %i.mb ; 2 uses
  %i.md = getelementptr i8, ptr %i.lh, i64 %i.lw  ; 2 uses
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next325, %vector.body317 ] ; 3 uses
  %i.me = shl i64 %index318, 3                    ; 2 uses
  %next.gep319 = getelementptr i8, ptr %.0103190.i59, i64 %i.me
  %i.mf = shl i64 %index318, 4
  %next.gep320 = getelementptr i8, ptr %.0121188.i61, i64 %i.mf
  %next.gep321 = getelementptr i8, ptr %i.lh, i64 %i.me
  %wide.vec322 = load <4 x i64>, ptr %next.gep320, align 8, !tbaa !24, !alias.scope !190 ; 2 uses
  %strided.vec323 = shufflevector <4 x i64> %wide.vec322, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec324 = shufflevector <4 x i64> %wide.vec322, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %strided.vec323, ptr %next.gep321, align 8, !tbaa !24, !alias.scope !191, !noalias !192
  store <2 x i64> %strided.vec324, ptr %next.gep319, align 8, !tbaa !24, !alias.scope !193, !noalias !190
  %index.next325 = add nuw i64 %index318, 2       ; 2 uses
  %i.mg = icmp eq i64 %index.next325, %n.vec316
  br i1 %i.mg, label %middle.block326, label %vector.body317, !llvm.loop !143

middle.block326:                                  ; preds = %vector.body317
  %cmp.n327 = icmp eq i64 %12, %n.vec316
  br i1 %cmp.n327, label %._crit_edge.i67, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %vector.memcheck297, %.lr.ph.preheader.i58, %middle.block326
  %.1144.i63.ph = phi ptr [ %.0103190.i59, %vector.memcheck297 ], [ %.0103190.i59, %.lr.ph.preheader.i58 ], [ %i.lx, %middle.block326 ]
  %.1120143.i64.ph = phi i32 [ %.0119189.i60, %vector.memcheck297 ], [ %.0119189.i60, %.lr.ph.preheader.i58 ], [ %i.ma, %middle.block326 ]
  %.1122142.i65.ph = phi ptr [ %.0121188.i61, %vector.memcheck297 ], [ %.0121188.i61, %.lr.ph.preheader.i58 ], [ %i.mc, %middle.block326 ]
  %.0123141.i66.ph = phi ptr [ %i.lh, %vector.memcheck297 ], [ %i.lh, %.lr.ph.preheader.i58 ], [ %i.md, %middle.block326 ]
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62
  %.1144.i63 = phi ptr [ %i.mm, %.lr.ph.i62 ], [ %.1144.i63.ph, %.lr.ph.i62.preheader ] ; 2 uses
  %.1120143.i64 = phi i32 [ %i.mn, %.lr.ph.i62 ], [ %.1120143.i64.ph, %.lr.ph.i62.preheader ]
  %.1122142.i65 = phi ptr [ %i.mk, %.lr.ph.i62 ], [ %.1122142.i65.ph, %.lr.ph.i62.preheader ] ; 3 uses
  %.0123141.i66 = phi ptr [ %i.mj, %.lr.ph.i62 ], [ %.0123141.i66.ph, %.lr.ph.i62.preheader ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.1122142.i65, i64 8
  %i.mi = load i64, ptr %.1122142.i65, align 8, !tbaa !24
  %i.mj = getelementptr inbounds nuw i8, ptr %.0123141.i66, i64 8 ; 2 uses
  store i64 %i.mi, ptr %.0123141.i66, align 8, !tbaa !24
  %i.mk = getelementptr inbounds nuw i8, ptr %.1122142.i65, i64 16 ; 2 uses
  %i.ml = load i64, ptr %i.mh, align 8, !tbaa !24
  %i.mm = getelementptr inbounds nuw i8, ptr %.1144.i63, i64 8
  store i64 %i.ml, ptr %.1144.i63, align 8, !tbaa !24
  %i.mn = add i32 %.1120143.i64, -2               ; 3 uses
  %i.mo = icmp ugt i32 %i.mn, 1
  br i1 %i.mo, label %.lr.ph.i62, label %._crit_edge.i67, !llvm.loop !144

._crit_edge.i67:                                  ; preds = %.lr.ph.i62, %middle.block326
  %.lcssa127 = phi ptr [ %i.md, %middle.block326 ], [ %i.mj, %.lr.ph.i62 ]
  %.lcssa126 = phi ptr [ %i.mc, %middle.block326 ], [ %i.mk, %.lr.ph.i62 ]
  %.lcssa = phi i32 [ %i.ma, %middle.block326 ], [ %i.mn, %.lr.ph.i62 ]
  %i.mp = icmp eq i32 %.lcssa, 0
  br i1 %i.mp, label %bb.l, label %._crit_edge.thread.i16

._crit_edge.thread.i16:                           ; preds = %._crit_edge.i67, %bb.k
  %.1122.lcssa195.i17 = phi ptr [ %.lcssa126, %._crit_edge.i67 ], [ %i.lk, %bb.k ]
  %.0123.lcssa194.i18 = phi ptr [ %.lcssa127, %._crit_edge.i67 ], [ %i.lh, %bb.k ]
  %i.mq = load i64, ptr %.1122.lcssa195.i17, align 8, !tbaa !24
  store i64 %i.mq, ptr %.0123.lcssa194.i18, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i16, %._crit_edge.i67
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !22  ; 2 uses
  %.not127167.i19 = icmp eq i8 %i.ms, 0
  br i1 %.not127167.i19, label %_ZN4ojph5localL18gen_rev_horz_ana32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %.lr.ph175.i20

.lr.ph175.i20:                                    ; preds = %bb.l
  %not..i21 = xor i1 %5, true
  %i.mt = zext i1 %not..i21 to i32
  %i.mu = add i32 %4, %i.mt
  %i.mv = lshr i32 %i.mu, 1
  %i.mw = zext i1 %5 to i32
  %i.mx = add i32 %4, %i.mw
  %i.my = lshr i32 %i.mx, 1
  %i.mz = load ptr, ptr %i.lg, align 8, !tbaa !12
  %i.na = load ptr, ptr %i.le, align 8, !tbaa !12
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !23
  %i.nd = zext i8 %i.ms to i64
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.i37, %.lr.ph175.i20
  %indvars.iv.i22 = phi i64 [ %i.nd, %.lr.ph175.i20 ], [ %i.ni, %.loopexit.i37 ]
  %.0.in173.i23 = phi i1 [ %5, %.lr.ph175.i20 ], [ %i.wq, %.loopexit.i37 ] ; 6 uses
  %.0115171.i24 = phi i32 [ %i.mv, %.lr.ph175.i20 ], [ %.0116170.i25, %.loopexit.i37 ] ; 27 uses
  %.0116170.i25 = phi i32 [ %i.my, %.lr.ph175.i20 ], [ %.0115171.i24, %.loopexit.i37 ] ; 3 uses
  %.0117169.i26 = phi ptr [ %i.mz, %.lr.ph175.i20 ], [ %.0118168.i27, %.loopexit.i37 ] ; 18 uses
  %.0118168.i27 = phi ptr [ %i.na, %.lr.ph175.i20 ], [ %.0117169.i26, %.loopexit.i37 ] ; 29 uses
  %i.ne = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.nf = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.ng = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.nh = select i1 %.0.in173.i23, i64 8, i64 0   ; 2 uses
  %i.ni = add nsw i64 %indvars.iv.i22, -1         ; 3 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %i.ni ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nl = load i16, ptr %i.nk, align 4, !tbaa !12 ; 3 uses
  %i.nm = sext i16 %i.nl to i64                   ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !12 ; 2 uses
  %i.np = sext i16 %i.no to i64                   ; 12 uses
  %i.nq = load i8, ptr %i.nj, align 4, !tbaa !12  ; 4 uses
  %i.nr = load i64, ptr %.0117169.i26, align 8, !tbaa !24
  %i.ns = getelementptr inbounds i8, ptr %.0117169.i26, i64 -8
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !24
  %i.nt = add nsw i32 %.0116170.i25, -1
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.0117169.i26, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !24
  %i.nx = zext nneg i32 %.0116170.i25 to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.0117169.i26, i64 %i.nx
  store i64 %i.nw, ptr %i.ny, align 8, !tbaa !24
  %i.nz = zext i1 %.0.in173.i23 to i64
  %i.oa = getelementptr [8 x i8], ptr %.0117169.i26, i64 %i.nz ; 20 uses
  %i.ob = icmp eq i16 %i.nl, 1
  br i1 %i.ob, label %.preheader.i51, label %bb.n

.preheader.i51:                                   ; preds = %bb.m
  %.not131162.i52 = icmp eq i32 %.0115171.i24, 0
  br i1 %.not131162.i52, label %.loopexit.i37, label %.lr.ph166.i53

.lr.ph166.i53:                                    ; preds = %.preheader.i51
  %i.oc = zext nneg i8 %i.nq to i64               ; 4 uses
  %i.od = zext nneg i32 %.0115171.i24 to i64      ; 2 uses
  %min.iters.check348 = icmp samesign ult i32 %.0115171.i24, 6
  br i1 %min.iters.check348, label %scalar.ph347.preheader, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph166.i53
  %scevgep333 = getelementptr i8, ptr %.0118168.i27, i64 8
  %i.oe = add nsw i32 %.0115171.i24, -1
  %i.of = zext i32 %i.oe to i64
  %i.og = shl nuw nsw i64 %i.of, 3                ; 2 uses
  %scevgep334 = getelementptr i8, ptr %scevgep333, i64 %i.og ; 2 uses
  %scevgep335 = getelementptr i8, ptr %.0117169.i26, i64 -8
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.nh
  %i.oh = add nuw nsw i64 %i.nh, %i.og            ; 2 uses
  %scevgep337 = getelementptr i8, ptr %.0117169.i26, i64 %i.oh
  %scevgep338 = getelementptr i8, ptr %.0117169.i26, i64 8
  %scevgep339 = getelementptr i8, ptr %scevgep338, i64 %i.oh
  %bound0340 = icmp ult ptr %.0118168.i27, %scevgep337
  %bound1341 = icmp ult ptr %scevgep336, %scevgep334
  %found.conflict342 = and i1 %bound0340, %bound1341
  %bound0343 = icmp ult ptr %.0118168.i27, %scevgep339
  %bound1344 = icmp ult ptr %i.oa, %scevgep334
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %found.conflict342, %found.conflict345
  br i1 %conflict.rdx346, label %scalar.ph347.preheader, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck332
  %n.vec350 = and i64 %i.od, 2147483644           ; 4 uses
  %i.oi = trunc nuw nsw i64 %n.vec350 to i32
  %i.oj = sub nsw i32 %.0115171.i24, %i.oi
  %i.ok = shl nuw nsw i64 %n.vec350, 3            ; 2 uses
  %i.ol = getelementptr i8, ptr %.0118168.i27, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.oa, i64 %i.ok
  %broadcast.splatinsert351 = insertelement <2 x i64> poison, i64 %i.oc, i64 0
  %broadcast.splat352 = shufflevector <2 x i64> %broadcast.splatinsert351, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert353 = insertelement <2 x i64> poison, i64 %i.np, i64 0
  %broadcast.splat354 = shufflevector <2 x i64> %broadcast.splatinsert353, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph349
  %index356 = phi i64 [ 0, %vector.ph349 ], [ %index.next365, %vector.body355 ] ; 2 uses
  %i.on = shl i64 %index356, 3                    ; 2 uses
  %next.gep357 = getelementptr i8, ptr %.0118168.i27, i64 %i.on ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.oa, i64 %i.on ; 4 uses
  %i.oo = getelementptr inbounds i8, ptr %next.gep358, i64 -8
  %i.op = getelementptr inbounds nuw i8, ptr %next.gep358, i64 8
  %wide.load359 = load <2 x i64>, ptr %i.oo, align 8, !tbaa !24, !alias.scope !194
  %wide.load360 = load <2 x i64>, ptr %i.op, align 8, !tbaa !24, !alias.scope !194
  %i.oq = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load361 = load <2 x i64>, ptr %next.gep358, align 8, !tbaa !24, !alias.scope !195
  %wide.load362 = load <2 x i64>, ptr %i.oq, align 8, !tbaa !24, !alias.scope !195
  %i.or = add <2 x i64> %wide.load359, %broadcast.splat354
  %i.os = add <2 x i64> %wide.load360, %broadcast.splat354
  %i.ot = add <2 x i64> %i.or, %wide.load361
  %i.ou = add <2 x i64> %i.os, %wide.load362
  %i.ov = ashr <2 x i64> %i.ot, %broadcast.splat352
  %i.ow = ashr <2 x i64> %i.ou, %broadcast.splat352
  %i.ox = getelementptr i8, ptr %next.gep357, i64 16 ; 2 uses
  %wide.load363 = load <2 x i64>, ptr %next.gep357, align 8, !tbaa !24, !alias.scope !196, !noalias !197
  %wide.load364 = load <2 x i64>, ptr %i.ox, align 8, !tbaa !24, !alias.scope !196, !noalias !197
  %i.oy = add nsw <2 x i64> %i.ov, %wide.load363
  %i.oz = add nsw <2 x i64> %i.ow, %wide.load364
  store <2 x i64> %i.oy, ptr %next.gep357, align 8, !tbaa !24, !alias.scope !196, !noalias !197
  store <2 x i64> %i.oz, ptr %i.ox, align 8, !tbaa !24, !alias.scope !196, !noalias !197
  %index.next365 = add nuw i64 %index356, 4       ; 2 uses
  %i.pa = icmp eq i64 %index.next365, %n.vec350
  br i1 %i.pa, label %middle.block366, label %vector.body355, !llvm.loop !149

middle.block366:                                  ; preds = %vector.body355
  %cmp.n367 = icmp eq i64 %n.vec350, %i.od
  br i1 %cmp.n367, label %.loopexit.i37, label %scalar.ph347.preheader

scalar.ph347.preheader:                           ; preds = %vector.memcheck332, %.lr.ph166.i53, %middle.block366
  %.0107165.i54.ph = phi i32 [ %.0115171.i24, %vector.memcheck332 ], [ %.0115171.i24, %.lr.ph166.i53 ], [ %i.oj, %middle.block366 ] ; 4 uses
  %.0108164.i55.ph = phi ptr [ %.0118168.i27, %vector.memcheck332 ], [ %.0118168.i27, %.lr.ph166.i53 ], [ %i.ol, %middle.block366 ] ; 4 uses
  %.0110163.i56.ph = phi ptr [ %i.oa, %vector.memcheck332 ], [ %i.oa, %.lr.ph166.i53 ], [ %i.om, %middle.block366 ] ; 4 uses
  %xtraiter514 = and i32 %.0107165.i54.ph, 1
  %lcmp.mod515.not = icmp eq i32 %xtraiter514, 0
  br i1 %lcmp.mod515.not, label %scalar.ph347.prol.loopexit, label %scalar.ph347.prol

scalar.ph347.prol:                                ; preds = %scalar.ph347.preheader
  %i.pb = getelementptr inbounds i8, ptr %.0110163.i56.ph, i64 -8
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !24
  %i.pd = load i64, ptr %.0110163.i56.ph, align 8, !tbaa !24
  %i.pe = add i64 %i.pc, %i.np
  %i.pf = add i64 %i.pe, %i.pd
  %i.pg = ashr i64 %i.pf, %i.oc
  %i.ph = load i64, ptr %.0108164.i55.ph, align 8, !tbaa !24
  %i.pi = add nsw i64 %i.pg, %i.ph
  store i64 %i.pi, ptr %.0108164.i55.ph, align 8, !tbaa !24
  %i.pj = add nsw i32 %.0107165.i54.ph, -1
  %i.pk = getelementptr inbounds nuw i8, ptr %.0110163.i56.ph, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %.0108164.i55.ph, i64 8
  br label %scalar.ph347.prol.loopexit

scalar.ph347.prol.loopexit:                       ; preds = %scalar.ph347.prol, %scalar.ph347.preheader
  %.0107165.i54.unr = phi i32 [ %.0107165.i54.ph, %scalar.ph347.preheader ], [ %i.pj, %scalar.ph347.prol ]
  %.0108164.i55.unr = phi ptr [ %.0108164.i55.ph, %scalar.ph347.preheader ], [ %i.pl, %scalar.ph347.prol ]
  %.0110163.i56.unr = phi ptr [ %.0110163.i56.ph, %scalar.ph347.preheader ], [ %i.pk, %scalar.ph347.prol ]
end_hunk_1
begin_hunk_2_@_ZN4ojph5local16gen_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %i.gn = add nsw i32 %i.gm, %i.gl
  %i.go = mul nsw i32 %i.gn, %i.am
  %i.gp = add nsw i32 %i.go, %i.ap
  %i.gq = ashr i32 %i.gp, %i.dj
  %i.gr = load i32, ptr %.3142.i.ph, align 4, !tbaa !13
  %i.gs = sub nsw i32 %i.gr, %i.gq
  store i32 %i.gs, ptr %.3142.i.ph, align 4, !tbaa !13
  %i.gt = add nsw i32 %.0111143.i.ph, -1
  %i.gu = getelementptr inbounds nuw i8, ptr %.3120141.i.ph, i64 4
  %i.gv = getelementptr inbounds nuw i8, ptr %.3142.i.ph, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader454
  %.0111143.i.unr = phi i32 [ %.0111143.i.ph, %.lr.ph.i.preheader454 ], [ %i.gt, %.lr.ph.i.prol ]
  %.3142.i.unr = phi ptr [ %.3142.i.ph, %.lr.ph.i.preheader454 ], [ %i.gv, %.lr.ph.i.prol ]
  %.3120141.i.unr = phi ptr [ %.3120141.i.ph, %.lr.ph.i.preheader454 ], [ %i.gu, %.lr.ph.i.prol ]
  %i.gw = icmp eq i32 %.0111143.i.ph, 1
  br i1 %i.gw, label %.loopexit.i, label %.lr.ph.i

.preheader136.i:                                  ; preds = %bb.f
  br i1 %.not130149.i, label %.loopexit.i, label %.lr.ph148.i.preheader

.lr.ph148.i.preheader:                            ; preds = %.preheader136.i
  %i.gx = zext nneg i32 %.0123160.i to i64        ; 2 uses
  %min.iters.check192 = icmp samesign ult i32 %.0123160.i, 8
  br i1 %min.iters.check192, label %.lr.ph148.i.preheader452, label %vector.memcheck176

vector.memcheck176:                               ; preds = %.lr.ph148.i.preheader
  %scevgep177 = getelementptr i8, ptr %.0124159.i, i64 4
  %i.gy = add nsw i32 %.0123160.i, -1
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  %scevgep178 = getelementptr i8, ptr %scevgep177, i64 %i.ha ; 2 uses
  %scevgep179 = getelementptr i8, ptr %.0110163.i, i64 -4
  %scevgep180 = getelementptr i8, ptr %scevgep179, i64 %i.ac
  %i.hb = add nuw nsw i64 %i.ac, %i.ha            ; 2 uses
  %scevgep181 = getelementptr i8, ptr %.0110163.i, i64 %i.hb
  %scevgep182 = getelementptr i8, ptr %.0110163.i, i64 4
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 %i.hb
  %bound0184 = icmp ult ptr %.0124159.i, %scevgep181
  %bound1185 = icmp ult ptr %scevgep180, %scevgep178
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0187 = icmp ult ptr %.0124159.i, %scevgep183
  %bound1188 = icmp ult ptr %i.ba, %scevgep178
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %found.conflict186, %found.conflict189
  br i1 %conflict.rdx190, label %.lr.ph148.i.preheader452, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck176
  %n.vec194 = and i64 %i.gx, 2147483640           ; 4 uses
  %i.hc = trunc nuw nsw i64 %n.vec194 to i32
  %i.hd = sub nsw i32 %.0123160.i, %i.hc
  %i.he = shl nuw nsw i64 %n.vec194, 2            ; 2 uses
  %i.hf = getelementptr i8, ptr %.0124159.i, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.ba, i64 %i.he
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph193
  %index200 = phi i64 [ 0, %vector.ph193 ], [ %index.next209, %vector.body199 ] ; 2 uses
  %i.hh = shl i64 %index200, 2                    ; 2 uses
  %next.gep201 = getelementptr i8, ptr %.0124159.i, i64 %i.hh ; 3 uses
  %next.gep202 = getelementptr i8, ptr %i.ba, i64 %i.hh ; 4 uses
  %i.hi = getelementptr inbounds i8, ptr %next.gep202, i64 -4
  %i.hj = getelementptr inbounds nuw i8, ptr %next.gep202, i64 12
  %wide.load203 = load <4 x i32>, ptr %i.hi, align 4, !tbaa !13, !alias.scope !280
  %wide.load204 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !13, !alias.scope !280
  %i.hk = getelementptr i8, ptr %next.gep202, i64 16
  %wide.load205 = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !13, !alias.scope !281
  %wide.load206 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !13, !alias.scope !281
  %i.hl = add <4 x i32> %wide.load203, %wide.load205
  %i.hm = add <4 x i32> %wide.load204, %wide.load206
  %i.hn = sub <4 x i32> %broadcast.splat196, %i.hl
  %i.ho = sub <4 x i32> %broadcast.splat196, %i.hm
  %i.hp = ashr <4 x i32> %i.hn, %broadcast.splat198
  %i.hq = ashr <4 x i32> %i.ho, %broadcast.splat198
  %i.hr = getelementptr i8, ptr %next.gep201, i64 16 ; 2 uses
  %wide.load207 = load <4 x i32>, ptr %next.gep201, align 4, !tbaa !13, !alias.scope !282, !noalias !283
  %wide.load208 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !13, !alias.scope !282, !noalias !283
  %i.hs = sub nsw <4 x i32> %wide.load207, %i.hp
  %i.ht = sub nsw <4 x i32> %wide.load208, %i.hq
  store <4 x i32> %i.hs, ptr %next.gep201, align 4, !tbaa !13, !alias.scope !282, !noalias !283
  store <4 x i32> %i.ht, ptr %i.hr, align 4, !tbaa !13, !alias.scope !282, !noalias !283
  %index.next209 = add nuw i64 %index200, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next209, %n.vec194
  br i1 %i.hu, label %middle.block210, label %vector.body199, !llvm.loop !231

middle.block210:                                  ; preds = %vector.body199
  %cmp.n211 = icmp eq i64 %n.vec194, %i.gx
  br i1 %cmp.n211, label %.loopexit.i, label %.lr.ph148.i.preheader452

.lr.ph148.i.preheader452:                         ; preds = %vector.memcheck176, %.lr.ph148.i.preheader, %middle.block210
  %.0112147.i.ph = phi i32 [ %.0123160.i, %vector.memcheck176 ], [ %.0123160.i, %.lr.ph148.i.preheader ], [ %i.hd, %middle.block210 ] ; 4 uses
  %.2146.i.ph = phi ptr [ %.0124159.i, %vector.memcheck176 ], [ %.0124159.i, %.lr.ph148.i.preheader ], [ %i.hf, %middle.block210 ] ; 4 uses
  %.2119145.i.ph = phi ptr [ %i.ba, %vector.memcheck176 ], [ %i.ba, %.lr.ph148.i.preheader ], [ %i.hg, %middle.block210 ] ; 4 uses
  %xtraiter456 = and i32 %.0112147.i.ph, 1
  %lcmp.mod457.not = icmp eq i32 %xtraiter456, 0
  br i1 %lcmp.mod457.not, label %.lr.ph148.i.prol.loopexit, label %.lr.ph148.i.prol

.lr.ph148.i.prol:                                 ; preds = %.lr.ph148.i.preheader452
  %i.hv = getelementptr inbounds i8, ptr %.2119145.i.ph, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !13
  %i.hx = load i32, ptr %.2119145.i.ph, align 4, !tbaa !13
  %i.hy = add i32 %i.hw, %i.hx
  %i.hz = sub i32 %i.ap, %i.hy
  %i.ia = ashr i32 %i.hz, %i.dj
  %i.ib = load i32, ptr %.2146.i.ph, align 4, !tbaa !13
  %i.ic = sub nsw i32 %i.ib, %i.ia
  store i32 %i.ic, ptr %.2146.i.ph, align 4, !tbaa !13
  %i.id = add nsw i32 %.0112147.i.ph, -1
  %i.ie = getelementptr inbounds nuw i8, ptr %.2119145.i.ph, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.2146.i.ph, i64 4
  br label %.lr.ph148.i.prol.loopexit

.lr.ph148.i.prol.loopexit:                        ; preds = %.lr.ph148.i.prol, %.lr.ph148.i.preheader452
  %.0112147.i.unr = phi i32 [ %.0112147.i.ph, %.lr.ph148.i.preheader452 ], [ %i.id, %.lr.ph148.i.prol ]
  %.2146.i.unr = phi ptr [ %.2146.i.ph, %.lr.ph148.i.preheader452 ], [ %i.if, %.lr.ph148.i.prol ]
  %.2119145.i.unr = phi ptr [ %.2119145.i.ph, %.lr.ph148.i.preheader452 ], [ %i.ie, %.lr.ph148.i.prol ]
  %i.ig = icmp eq i32 %.0112147.i.ph, 1
  br i1 %i.ig, label %.loopexit.i, label %.lr.ph148.i

.lr.ph148.i:                                      ; preds = %.lr.ph148.i.prol.loopexit, %.lr.ph148.i
  %.0112147.i = phi i32 [ %i.iy, %.lr.ph148.i ], [ %.0112147.i.unr, %.lr.ph148.i.prol.loopexit ]
  %.2146.i = phi ptr [ %i.ja, %.lr.ph148.i ], [ %.2146.i.unr, %.lr.ph148.i.prol.loopexit ] ; 4 uses
  %.2119145.i = phi ptr [ %i.iz, %.lr.ph148.i ], [ %.2119145.i.unr, %.lr.ph148.i.prol.loopexit ] ; 5 uses
  %i.ih = getelementptr inbounds i8, ptr %.2119145.i, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !13
  %i.ij = load i32, ptr %.2119145.i, align 4, !tbaa !13
  %i.ik = add i32 %i.ii, %i.ij
  %i.il = sub i32 %i.ap, %i.ik
  %i.im = ashr i32 %i.il, %i.dj
  %i.in = load i32, ptr %.2146.i, align 4, !tbaa !13
  %i.io = sub nsw i32 %i.in, %i.im
  store i32 %i.io, ptr %.2146.i, align 4, !tbaa !13
  %i.ip = getelementptr inbounds nuw i8, ptr %.2119145.i, i64 4
  %i.iq = getelementptr inbounds nuw i8, ptr %.2146.i, i64 4 ; 2 uses
  %i.ir = load i32, ptr %.2119145.i, align 4, !tbaa !13
  %i.is = load i32, ptr %i.ip, align 4, !tbaa !13
  %i.it = add i32 %i.ir, %i.is
  %i.iu = sub i32 %i.ap, %i.it
  %i.iv = ashr i32 %i.iu, %i.dj
  %i.iw = load i32, ptr %i.iq, align 4, !tbaa !13
  %i.ix = sub nsw i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %i.iq, align 4, !tbaa !13
  %i.iy = add nsw i32 %.0112147.i, -2             ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.2119145.i, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %.2146.i, i64 8
  %.not129.i.1 = icmp eq i32 %i.iy, 0
  br i1 %.not129.i.1, label %.loopexit.i, label %.lr.ph148.i, !llvm.loop !232

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.0111143.i = phi i32 [ %i.ju, %.lr.ph.i ], [ %.0111143.i.unr, %.lr.ph.i.prol.loopexit ]
  %.3142.i = phi ptr [ %i.jw, %.lr.ph.i ], [ %.3142.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.3120141.i = phi ptr [ %i.jv, %.lr.ph.i ], [ %.3120141.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.jb = getelementptr inbounds i8, ptr %.3120141.i, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !13
  %i.jd = load i32, ptr %.3120141.i, align 4, !tbaa !13
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = mul nsw i32 %i.je, %i.am
  %i.jg = add nsw i32 %i.jf, %i.ap
  %i.jh = ashr i32 %i.jg, %i.dj
  %i.ji = load i32, ptr %.3142.i, align 4, !tbaa !13
  %i.jj = sub nsw i32 %i.ji, %i.jh
  store i32 %i.jj, ptr %.3142.i, align 4, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.3120141.i, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.3142.i, i64 4 ; 2 uses
  %i.jm = load i32, ptr %.3120141.i, align 4, !tbaa !13
  %i.jn = load i32, ptr %i.jk, align 4, !tbaa !13
  %i.jo = add nsw i32 %i.jn, %i.jm
  %i.jp = mul nsw i32 %i.jo, %i.am
  %i.jq = add nsw i32 %i.jp, %i.ap
  %i.jr = ashr i32 %i.jq, %i.dj
  %i.js = load i32, ptr %i.jl, align 4, !tbaa !13
  %i.jt = sub nsw i32 %i.js, %i.jr
  store i32 %i.jt, ptr %i.jl, align 4, !tbaa !13
  %i.ju = add nsw i32 %.0111143.i, -2             ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.3120141.i, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.3142.i, i64 8
  %.not128.i.1 = icmp eq i32 %i.ju, 0
  br i1 %.not128.i.1, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !233

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph148.i.prol.loopexit, %.lr.ph148.i, %.lr.ph153.i.prol.loopexit, %.lr.ph153.i, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block251, %middle.block210, %middle.block171, %middle.block, %.preheader136.i, %.preheader138.i, %.preheader134.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !234

bb.g:                                             ; preds = %._crit_edge.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.jy = load i32, ptr %i.t, align 4, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.jy, ptr %i.w, align 4, !tbaa !13
  %i.ka = add i32 %4, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i
  %.0107.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.jx, %bb.g ] ; 6 uses
  %.0104.i = phi ptr [ %i.w, %._crit_edge.i ], [ %i.jz, %bb.g ] ; 9 uses
  %.0.i = phi i32 [ %4, %._crit_edge.i ], [ %i.ka, %bb.g ] ; 5 uses
  %i.kb = icmp ugt i32 %.0.i, 1
  br i1 %i.kb, label %.lr.ph171.i.preheader, label %._crit_edge172.thread.i

.lr.ph171.i.preheader:                            ; preds = %bb.h
  %i.kc = add i32 %.0.i, -2                       ; 2 uses
  %6 = zext i32 %i.kc to i64                      ; 2 uses
  %7 = lshr i64 %6, 1
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check268 = icmp ult i32 %i.kc, 42
  br i1 %min.iters.check268, label %.lr.ph171.i.preheader446, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph171.i.preheader
  %9 = lshr i64 %6, 1                             ; 2 uses
  %i.kd = shl nuw nsw i64 %9, 3
  %i.ke = getelementptr i8, ptr %.0104.i, i64 %i.kd
  %scevgep257 = getelementptr i8, ptr %i.ke, i64 8 ; 2 uses
  %i.kf = shl nuw nsw i64 %9, 2
  %i.kg = add nuw nsw i64 %i.kf, 4                ; 2 uses
  %scevgep258 = getelementptr i8, ptr %i.u, i64 %i.kg
  %scevgep259 = getelementptr i8, ptr %.0107.i, i64 %i.kg
  %bound0260 = icmp ult ptr %.0104.i, %scevgep258
  %bound1261 = icmp ult ptr %i.u, %scevgep257
  %found.conflict262 = and i1 %bound0260, %bound1261
  %bound0263 = icmp ult ptr %.0104.i, %scevgep259
  %bound1264 = icmp ult ptr %.0107.i, %scevgep257
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %found.conflict262, %found.conflict265
  br i1 %conflict.rdx266, label %.lr.ph171.i.preheader446, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck256
  %n.vec270 = and i64 %8, 4294967292              ; 5 uses
  %i.kh = trunc nuw i64 %n.vec270 to i32
  %i.ki = shl i32 %i.kh, 1
  %i.kj = sub i32 %.0.i, %i.ki                    ; 2 uses
  %i.kk = shl nuw nsw i64 %n.vec270, 3
  %i.kl = getelementptr i8, ptr %.0104.i, i64 %i.kk ; 2 uses
  %i.km = shl nuw nsw i64 %n.vec270, 2            ; 2 uses
  %i.kn = getelementptr i8, ptr %i.u, i64 %i.km   ; 2 uses
  %i.ko = getelementptr i8, ptr %.0107.i, i64 %i.km
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph269
  %index272 = phi i64 [ 0, %vector.ph269 ], [ %index.next282, %vector.body271 ] ; 3 uses
  %i.kp = shl i64 %index272, 3                    ; 2 uses
  %next.gep273 = getelementptr i8, ptr %.0104.i, i64 %i.kp
  %i.kq = getelementptr i8, ptr %.0104.i, i64 %i.kp
  %next.gep274 = getelementptr i8, ptr %i.kq, i64 16
  %i.kr = shl i64 %index272, 2                    ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.u, i64 %i.kr ; 2 uses
  %next.gep276 = getelementptr i8, ptr %.0107.i, i64 %i.kr ; 2 uses
  %i.ks = getelementptr i8, ptr %next.gep275, i64 8
  %wide.load277 = load <2 x i32>, ptr %next.gep275, align 4, !tbaa !13, !alias.scope !284
  %wide.load278 = load <2 x i32>, ptr %i.ks, align 4, !tbaa !13, !alias.scope !284
  %i.kt = getelementptr i8, ptr %next.gep276, i64 8
  %wide.load279 = load <2 x i32>, ptr %next.gep276, align 4, !tbaa !13, !alias.scope !285
  %wide.load280 = load <2 x i32>, ptr %i.kt, align 4, !tbaa !13, !alias.scope !285
  %interleaved.vec = shufflevector <2 x i32> %wide.load277, <2 x i32> %wide.load279, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep273, align 4, !tbaa !13, !alias.scope !286, !noalias !287
  %interleaved.vec281 = shufflevector <2 x i32> %wide.load278, <2 x i32> %wide.load280, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec281, ptr %next.gep274, align 4, !tbaa !13, !alias.scope !286, !noalias !287
  %index.next282 = add nuw i64 %index272, 4       ; 2 uses
  %i.ku = icmp eq i64 %index.next282, %n.vec270
  br i1 %i.ku, label %middle.block283, label %vector.body271, !llvm.loop !239

middle.block283:                                  ; preds = %vector.body271
  %cmp.n284 = icmp eq i64 %8, %n.vec270
  br i1 %cmp.n284, label %._crit_edge172.i, label %.lr.ph171.i.preheader446

.lr.ph171.i.preheader446:                         ; preds = %vector.memcheck256, %.lr.ph171.i.preheader, %middle.block283
  %.1169.i.ph = phi i32 [ %.0.i, %vector.memcheck256 ], [ %.0.i, %.lr.ph171.i.preheader ], [ %i.kj, %middle.block283 ]
  %.1105168.i.ph = phi ptr [ %.0104.i, %vector.memcheck256 ], [ %.0104.i, %.lr.ph171.i.preheader ], [ %i.kl, %middle.block283 ]
  %.0106167.i.ph = phi ptr [ %i.u, %vector.memcheck256 ], [ %i.u, %.lr.ph171.i.preheader ], [ %i.kn, %middle.block283 ]
  %.1108166.i.ph = phi ptr [ %.0107.i, %vector.memcheck256 ], [ %.0107.i, %.lr.ph171.i.preheader ], [ %i.ko, %middle.block283 ]
  br label %.lr.ph171.i

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.preheader446, %.lr.ph171.i
  %.1169.i = phi i32 [ %i.lb, %.lr.ph171.i ], [ %.1169.i.ph, %.lr.ph171.i.preheader446 ]
  %.1105168.i = phi ptr [ %i.la, %.lr.ph171.i ], [ %.1105168.i.ph, %.lr.ph171.i.preheader446 ] ; 3 uses
  %.0106167.i = phi ptr [ %i.kv, %.lr.ph171.i ], [ %.0106167.i.ph, %.lr.ph171.i.preheader446 ] ; 2 uses
  %.1108166.i = phi ptr [ %i.ky, %.lr.ph171.i ], [ %.1108166.i.ph, %.lr.ph171.i.preheader446 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0106167.i, i64 4 ; 2 uses
  %i.kw = load i32, ptr %.0106167.i, align 4, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %.1105168.i, i64 4
  store i32 %i.kw, ptr %.1105168.i, align 4, !tbaa !13
  %i.ky = getelementptr inbounds nuw i8, ptr %.1108166.i, i64 4
  %i.kz = load i32, ptr %.1108166.i, align 4, !tbaa !13
  %i.la = getelementptr inbounds nuw i8, ptr %.1105168.i, i64 8 ; 2 uses
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !13
  %i.lb = add i32 %.1169.i, -2                    ; 3 uses
  %i.lc = icmp ugt i32 %i.lb, 1
  br i1 %i.lc, label %.lr.ph171.i, label %._crit_edge172.i, !llvm.loop !240

._crit_edge172.i:                                 ; preds = %.lr.ph171.i, %middle.block283
  %.lcssa121 = phi ptr [ %i.kn, %middle.block283 ], [ %i.kv, %.lr.ph171.i ]
  %.lcssa120 = phi ptr [ %i.kl, %middle.block283 ], [ %i.la, %.lr.ph171.i ]
  %.lcssa119 = phi i32 [ %i.kj, %middle.block283 ], [ %i.lb, %.lr.ph171.i ]
  %i.ld = icmp eq i32 %.lcssa119, 0
  br i1 %i.ld, label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit, label %._crit_edge172.thread.i

._crit_edge172.thread.i:                          ; preds = %._crit_edge172.i, %bb.h
  %.1105.lcssa188.i = phi ptr [ %.lcssa120, %._crit_edge172.i ], [ %.0104.i, %bb.h ]
  %.0106.lcssa187.i = phi ptr [ %.lcssa121, %._crit_edge172.i ], [ %i.u, %bb.h ]
  %i.le = load i32, ptr %.0106.lcssa187.i, align 4, !tbaa !13
  store i32 %i.le, ptr %.1105.lcssa188.i, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.i:                                             ; preds = %bb.b
  br i1 %5, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !12
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !13
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !12
  store i32 %i.lh, ptr %i.lj, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.k:                                             ; preds = %bb.i
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !12
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !13
  %i.ln = ashr i32 %i.lm, 1
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !12
  store i32 %i.ln, ptr %i.lp, align 4, !tbaa !13
  br label %_ZN4ojph5localL18gen_rev_horz_syn32EPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb.exit

bb.l:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !22  ; 2 uses
  %.not175.i12 = icmp eq i8 %i.lt, 0
  br i1 %.not175.i12, label %._crit_edge.i35, label %.lr.ph165.i13

.lr.ph165.i13:                                    ; preds = %bb.m
  %not..i14 = xor i1 %5, true
  %i.lu = zext i1 %not..i14 to i32
  %i.lv = add i32 %4, %i.lu
  %i.lw = lshr i32 %i.lv, 1
  %i.lx = zext i1 %5 to i32
  %i.ly = add i32 %4, %i.lx
  %i.lz = lshr i32 %i.ly, 1
  %i.ma = load ptr, ptr %i.lr, align 8, !tbaa !12
  %i.mb = load ptr, ptr %i.lq, align 8, !tbaa !12
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !23
  %wide.trip.count.i15 = zext i8 %i.lt to i64
  %i.me = xor i1 %5, true                         ; 4 uses
  br label %bb.n

._crit_edge.i35:                                  ; preds = %.loopexit.i32, %bb.m
  %i.mf = load ptr, ptr %i.lq, align 8, !tbaa !12 ; 3 uses
  %i.mg = load ptr, ptr %i.lr, align 8, !tbaa !12 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !12 ; 3 uses
  br i1 %5, label %bb.r, label %bb.q

bb.n:                                             ; preds = %.loopexit.i32, %.lr.ph165.i13
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph165.i13 ], [ %indvars.iv.next.i33, %.loopexit.i32 ] ; 6 uses
  %.0109.in164.i17 = phi i1 [ %5, %.lr.ph165.i13 ], [ %not..0109.in.i22, %.loopexit.i32 ]
  %.0110163.i18 = phi ptr [ %i.mb, %.lr.ph165.i13 ], [ %.0124159.i21, %.loopexit.i32 ] ; 18 uses
  %.0122161.i19 = phi i32 [ %i.lw, %.lr.ph165.i13 ], [ %.0123160.i20, %.loopexit.i32 ] ; 3 uses
  %.0123160.i20 = phi i32 [ %i.lz, %.lr.ph165.i13 ], [ %.0122161.i19, %.loopexit.i32 ] ; 27 uses
  %.0124159.i21 = phi ptr [ %i.ma, %.lr.ph165.i13 ], [ %.0110163.i18, %.loopexit.i32 ] ; 29 uses
  %i.mj = trunc i64 %indvars.iv.i16 to i1
  %i.mk = xor i1 %i.mj, %i.me
  %i.ml = select i1 %i.mk, i64 8, i64 0           ; 2 uses
  %i.mm = trunc i64 %indvars.iv.i16 to i1
  %i.mn = xor i1 %i.mm, %i.me
  %i.mo = select i1 %i.mn, i64 8, i64 0           ; 2 uses
  %i.mp = trunc i64 %indvars.iv.i16 to i1
  %i.mq = xor i1 %i.mp, %i.me
  %i.mr = select i1 %i.mq, i64 8, i64 0           ; 2 uses
  %i.ms = trunc i64 %indvars.iv.i16 to i1
  %i.mt = xor i1 %i.ms, %i.me
  %i.mu = select i1 %i.mt, i64 8, i64 0           ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv.i16 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  %i.mx = load i16, ptr %i.mw, align 4, !tbaa !12 ; 3 uses
  %i.my = sext i16 %i.mx to i64                   ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !12 ; 2 uses
  %i.nb = sext i16 %i.na to i64                   ; 12 uses
  %i.nc = load i8, ptr %i.mv, align 4, !tbaa !12  ; 4 uses
  %i.nd = load i64, ptr %.0110163.i18, align 8, !tbaa !24
  %i.ne = getelementptr inbounds i8, ptr %.0110163.i18, i64 -8
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !24
  %i.nf = add nsw i32 %.0122161.i19, -1
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.0110163.i18, i64 %i.ng
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !24
  %i.nj = zext nneg i32 %.0122161.i19 to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.0110163.i18, i64 %i.nj
  store i64 %i.ni, ptr %i.nk, align 8, !tbaa !24
  %not..0109.in.i22 = xor i1 %.0109.in164.i17, true ; 2 uses
  %i.nl = zext i1 %not..0109.in.i22 to i64
  %i.nm = getelementptr [8 x i8], ptr %.0110163.i18, i64 %i.nl ; 20 uses
  %i.nn = icmp eq i16 %i.mx, 1
  br i1 %i.nn, label %.preheader.i60, label %bb.o

.preheader.i60:                                   ; preds = %bb.n
  %.not131154.i61 = icmp eq i32 %.0123160.i20, 0
  br i1 %.not131154.i61, label %.loopexit.i32, label %.lr.ph158.i62

.lr.ph158.i62:                                    ; preds = %.preheader.i60
  %i.no = zext nneg i8 %i.nc to i64               ; 4 uses
  %i.np = zext nneg i32 %.0123160.i20 to i64      ; 2 uses
  %min.iters.check305 = icmp samesign ult i32 %.0123160.i20, 6
  br i1 %min.iters.check305, label %scalar.ph304.preheader, label %vector.memcheck289

vector.memcheck289:                               ; preds = %.lr.ph158.i62
  %scevgep290 = getelementptr i8, ptr %.0124159.i21, i64 8
  %i.nq = add nsw i32 %.0123160.i20, -1
  %i.nr = zext i32 %i.nq to i64
  %i.ns = shl nuw nsw i64 %i.nr, 3                ; 2 uses
  %scevgep291 = getelementptr i8, ptr %scevgep290, i64 %i.ns ; 2 uses
  %scevgep292 = getelementptr i8, ptr %.0110163.i18, i64 -8
  %scevgep293 = getelementptr i8, ptr %scevgep292, i64 %i.mu
  %i.nt = add nuw nsw i64 %i.mu, %i.ns            ; 2 uses
  %scevgep294 = getelementptr i8, ptr %.0110163.i18, i64 %i.nt
  %scevgep295 = getelementptr i8, ptr %.0110163.i18, i64 8
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.nt
  %bound0297 = icmp ult ptr %.0124159.i21, %scevgep294
  %bound1298 = icmp ult ptr %scevgep293, %scevgep291
  %found.conflict299 = and i1 %bound0297, %bound1298
  %bound0300 = icmp ult ptr %.0124159.i21, %scevgep296
  %bound1301 = icmp ult ptr %i.nm, %scevgep291
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %found.conflict299, %found.conflict302
  br i1 %conflict.rdx303, label %scalar.ph304.preheader, label %vector.ph306

vector.ph306:                                     ; preds = %vector.memcheck289
  %n.vec307 = and i64 %i.np, 2147483644           ; 4 uses
  %i.nu = trunc nuw nsw i64 %n.vec307 to i32
  %i.nv = sub nsw i32 %.0123160.i20, %i.nu
  %i.nw = shl nuw nsw i64 %n.vec307, 3            ; 2 uses
  %i.nx = getelementptr i8, ptr %.0124159.i21, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nm, i64 %i.nw
  %broadcast.splatinsert308 = insertelement <2 x i64> poison, i64 %i.no, i64 0
  %broadcast.splat309 = shufflevector <2 x i64> %broadcast.splatinsert308, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert310 = insertelement <2 x i64> poison, i64 %i.nb, i64 0
  %broadcast.splat311 = shufflevector <2 x i64> %broadcast.splatinsert310, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph306
  %index313 = phi i64 [ 0, %vector.ph306 ], [ %index.next322, %vector.body312 ] ; 2 uses
  %i.nz = shl i64 %index313, 3                    ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.0124159.i21, i64 %i.nz ; 3 uses
  %next.gep315 = getelementptr i8, ptr %i.nm, i64 %i.nz ; 4 uses
  %i.oa = getelementptr inbounds i8, ptr %next.gep315, i64 -8
  %i.ob = getelementptr inbounds nuw i8, ptr %next.gep315, i64 8
  %wide.load316 = load <2 x i64>, ptr %i.oa, align 8, !tbaa !24, !alias.scope !288
  %wide.load317 = load <2 x i64>, ptr %i.ob, align 8, !tbaa !24, !alias.scope !288
  %i.oc = getelementptr i8, ptr %next.gep315, i64 16
  %wide.load318 = load <2 x i64>, ptr %next.gep315, align 8, !tbaa !24, !alias.scope !289
  %wide.load319 = load <2 x i64>, ptr %i.oc, align 8, !tbaa !24, !alias.scope !289
  %i.od = add <2 x i64> %wide.load316, %broadcast.splat311
  %i.oe = add <2 x i64> %wide.load317, %broadcast.splat311
  %i.of = add <2 x i64> %i.od, %wide.load318
  %i.og = add <2 x i64> %i.oe, %wide.load319
  %i.oh = ashr <2 x i64> %i.of, %broadcast.splat309
end_hunk_2
begin_hunk_3_@_ZN4ojph5local17gen_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb:bb.a
  %scevgep22 = getelementptr i8, ptr %i.d, i64 %i.m
  %bound0 = icmp ult ptr %i.h, %scevgep21
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
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
  %wide.load = load <4 x float>, ptr %next.gep26, align 4, !tbaa !25, !alias.scope !311
  %wide.load28 = load <4 x float>, ptr %i.u, align 4, !tbaa !25, !alias.scope !311
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load29 = load <4 x float>, ptr %next.gep, align 4, !tbaa !25, !alias.scope !312
  %wide.load30 = load <4 x float>, ptr %i.v, align 4, !tbaa !25, !alias.scope !312
  %i.w = fadd <4 x float> %wide.load, %wide.load29
  %i.x = fadd <4 x float> %wide.load28, %wide.load30
  %i.y = getelementptr i8, ptr %next.gep27, i64 16 ; 2 uses
  %wide.load31 = load <4 x float>, ptr %next.gep27, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  %wide.load32 = load <4 x float>, ptr %i.y, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.w, <4 x float> %wide.load31)
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.x, <4 x float> %wide.load32)
  store <4 x float> %i.z, ptr %next.gep27, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  store <4 x float> %i.aa, ptr %i.y, align 4, !tbaa !25, !alias.scope !313, !noalias !314
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !309

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
  %i.ad = load float, ptr %.01318.ph, align 4, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %.01219.ph, i64 4
  %i.af = load float, ptr %.01219.ph, align 4, !tbaa !25
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %.01417.ph, i64 4
  %i.ai = load float, ptr %.01417.ph, align 4, !tbaa !25
  %i.aj = tail call float @llvm.fmuladd.f32(float %.015, float %i.ag, float %i.ai)
  store float %i.aj, ptr %.01417.ph, align 4, !tbaa !25
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
  %i.an = load float, ptr %.01318, align 4, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.01219, i64 4
  %i.ap = load float, ptr %.01219, align 4, !tbaa !25
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417, i64 4 ; 2 uses
  %i.as = load float, ptr %.01417, align 4, !tbaa !25
  %i.at = tail call float @llvm.fmuladd.f32(float %.015, float %i.aq, float %i.as)
  store float %i.at, ptr %.01417, align 4, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %.01318, i64 8
  %i.av = load float, ptr %i.am, align 4, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %.01219, i64 8
  %i.ax = load float, ptr %i.ao, align 4, !tbaa !25
  %i.ay = fadd float %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.01417, i64 8
  %i.ba = load float, ptr %i.ar, align 4, !tbaa !25
  %i.bb = tail call float @llvm.fmuladd.f32(float %.015, float %i.ay, float %i.ba)
  store float %i.bb, ptr %i.ar, align 4, !tbaa !25
  %i.bc = add i32 %.020, -2                       ; 2 uses
  %.not.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !310
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local20gen_irv_vert_times_KEfPKNS_8line_bufEj(float noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #1 {
bb.a:
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
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
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !25
  %wide.load9 = load <4 x float>, ptr %i.i, align 4, !tbaa !25
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load9
  store <4 x float> %i.j, ptr %next.gep, align 4, !tbaa !25
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !315

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
  %i.n = load float, ptr %.057, align 4, !tbaa !25
  %i.o = fmul float %0, %i.n
  store float %i.o, ptr %.057, align 4, !tbaa !25
  %i.p = add i32 %.08, -1                         ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !316
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  br i1 %5, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.i, ptr %i.c, align 4, !tbaa !25
  %i.k = add i32 %4, -1                           ; 2 uses
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.078144 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.b ] ; 7 uses
  %.088143 = phi i32 [ %i.k, %bb.c ], [ %4, %bb.b ] ; 5 uses
  %.090142 = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ] ; 7 uses
  %i.m = icmp ne i32 %.088143, 2
  %.neg = sext i1 %i.m to i32
  %i.n = add i32 %.088143, -1
  %i.o = add i32 %i.n, %.neg                      ; 2 uses
  %6 = zext i32 %i.o to i64                       ; 2 uses
  %7 = lshr i64 %6, 1
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 70
  br i1 %min.iters.check, label %.lr.ph.preheader241, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %9 = lshr i64 %6, 1                             ; 2 uses
  %i.p = shl nuw nsw i64 %9, 2
  %i.q = add nuw nsw i64 %i.p, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.e, i64 %i.q ; 2 uses
  %scevgep157 = getelementptr i8, ptr %.078144, i64 %i.q ; 2 uses
  %i.r = shl nuw nsw i64 %9, 3
  %i.s = getelementptr i8, ptr %.090142, i64 %i.r
  %scevgep158 = getelementptr i8, ptr %i.s, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep157
  %bound1 = icmp ult ptr %.078144, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0159 = icmp ult ptr %i.e, %scevgep158
  %bound1160 = icmp ult ptr %.090142, %scevgep.a
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict, %found.conflict161
  %bound0162 = icmp ult ptr %.078144, %scevgep158
  %bound1163 = icmp ult ptr %.090142, %scevgep157
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph.preheader241, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %8, 4294967292                 ; 5 uses
  %i.t = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.u = getelementptr i8, ptr %.078144, i64 %i.t
  %i.v = trunc nuw i64 %n.vec to i32
  %i.w = shl i32 %i.v, 1
  %i.x = sub i32 %.088143, %i.w                   ; 2 uses
  %i.y = shl nuw nsw i64 %n.vec, 3
  %i.z = getelementptr i8, ptr %.090142, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.t    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.078144, i64 %i.ab
  %i.ac = shl i64 %index, 3
  %next.gep166 = getelementptr i8, ptr %.090142, i64 %i.ac
  %next.gep167 = getelementptr i8, ptr %i.e, i64 %i.ab
  %wide.vec = load <8 x float>, ptr %next.gep166, align 4, !tbaa !25, !alias.scope !334 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec168 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %strided.vec, ptr %next.gep167, align 4, !tbaa !25, !alias.scope !335, !noalias !336
  store <4 x float> %strided.vec168, ptr %next.gep, align 4, !tbaa !25, !alias.scope !337, !noalias !334
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader241

.lr.ph.preheader241:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.179101.ph = phi ptr [ %.078144, %vector.memcheck ], [ %.078144, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.189100.ph = phi i32 [ %.088143, %vector.memcheck ], [ %.088143, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.19199.ph = phi ptr [ %.090142, %vector.memcheck ], [ %.090142, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  %.09298.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader241, %.lr.ph
  %.179101 = phi ptr [ %i.aj, %.lr.ph ], [ %.179101.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.189100 = phi i32 [ %i.ak, %.lr.ph ], [ %.189100.ph, %.lr.ph.preheader241 ]
  %.19199 = phi ptr [ %i.ah, %.lr.ph ], [ %.19199.ph, %.lr.ph.preheader241 ] ; 3 uses
  %.09298 = phi ptr [ %i.ag, %.lr.ph ], [ %.09298.ph, %.lr.ph.preheader241 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.19199, i64 4
  %i.af = load float, ptr %.19199, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %.09298, i64 4 ; 2 uses
  store float %i.af, ptr %.09298, align 4, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %.19199, i64 8 ; 2 uses
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %.179101, i64 4
  store float %i.ai, ptr %.179101, align 4, !tbaa !25
  %i.ak = add i32 %.189100, -2                    ; 3 uses
  %i.al = icmp ugt i32 %i.ak, 1
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa156 = phi ptr [ %i.aa, %middle.block ], [ %i.ag, %.lr.ph ]
  %.lcssa155 = phi ptr [ %i.z, %middle.block ], [ %i.ah, %.lr.ph ]
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %i.ak, %.lr.ph ]
  %i.am = icmp eq i32 %.lcssa, 0
  br i1 %i.am, label %bb.d, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.191.lcssa149 = phi ptr [ %.lcssa155, %._crit_edge ], [ %i.h, %bb.c ]
  %.092.lcssa148 = phi ptr [ %.lcssa156, %._crit_edge ], [ %i.e, %bb.c ]
  %i.an = load float, ptr %.191.lcssa149, align 4, !tbaa !25
  store float %i.an, ptr %.092.lcssa148, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.aq = zext i1 %5 to i32
  %i.ar = add i32 %4, %i.aq
  %i.as = lshr i32 %i.ar, 1                       ; 2 uses
  %not. = xor i1 %5, true
  %i.at = zext i1 %not. to i32
  %i.au = add i32 %4, %i.at
  %i.av = lshr i32 %i.au, 1                       ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !22  ; 2 uses
  %.not94111 = icmp eq i8 %i.ax, 0
  br i1 %.not94111, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !23
  %i.ba = zext i8 %i.ax to i64
  br label %bb.e

._crit_edge120:                                   ; preds = %._crit_edge110, %bb.d
  %.087.lcssa = phi ptr [ %i.ao, %bb.d ], [ %.086113, %._crit_edge110 ] ; 3 uses
  %.086.lcssa = phi ptr [ %i.ap, %bb.d ], [ %.087112, %._crit_edge110 ] ; 3 uses
  %.085.lcssa = phi i32 [ %i.as, %bb.d ], [ %.084115, %._crit_edge110 ] ; 5 uses
  %.084.lcssa = phi i32 [ %i.av, %bb.d ], [ %.085114, %._crit_edge110 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !26 ; 3 uses
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 2 uses
  %.not95125 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not95125, label %.preheader, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %._crit_edge120
  %i.be = zext nneg i32 %.085.lcssa to i64        ; 2 uses
  %min.iters.check207 = icmp ult i32 %.085.lcssa, 8
  br i1 %min.iters.check207, label %.lr.ph129.preheader239, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph129.preheader
  %n.vec209 = and i64 %i.be, 2147483640           ; 4 uses
  %i.bf = trunc nuw nsw i64 %n.vec209 to i32
  %i.bg = sub i32 %.085.lcssa, %i.bf
  %i.bh = shl nuw nsw i64 %n.vec209, 2
  %i.bi = getelementptr i8, ptr %.086.lcssa, i64 %i.bh
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph208
  %index213 = phi i64 [ 0, %vector.ph208 ], [ %index.next217, %vector.body212 ] ; 2 uses
  %i.bj = shl i64 %index213, 2
  %next.gep214 = getelementptr i8, ptr %.086.lcssa, i64 %i.bj ; 3 uses
  %i.bk = getelementptr i8, ptr %next.gep214, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %next.gep214, align 4, !tbaa !25
  %wide.load216 = load <4 x float>, ptr %i.bk, align 4, !tbaa !25
  %i.bl = fmul <4 x float> %broadcast.splat211, %wide.load215
  %i.bm = fmul <4 x float> %broadcast.splat211, %wide.load216
  store <4 x float> %i.bl, ptr %next.gep214, align 4, !tbaa !25
  store <4 x float> %i.bm, ptr %i.bk, align 4, !tbaa !25
  %index.next217 = add nuw i64 %index213, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next217, %n.vec209
  br i1 %i.bn, label %middle.block218, label %vector.body212, !llvm.loop !323

middle.block218:                                  ; preds = %vector.body212
  %cmp.n219 = icmp eq i64 %n.vec209, %i.be
  br i1 %cmp.n219, label %.preheader, label %.lr.ph129.preheader239

.lr.ph129.preheader239:                           ; preds = %.lr.ph129.preheader, %middle.block218
  %.075127.ph = phi i32 [ %.085.lcssa, %.lr.ph129.preheader ], [ %i.bg, %middle.block218 ]
  %.076126.ph = phi ptr [ %.086.lcssa, %.lr.ph129.preheader ], [ %i.bi, %middle.block218 ]
  br label %.lr.ph129

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge110
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph119 ], [ %i.bp, %._crit_edge110 ]
  %.077.in117 = phi i1 [ %5, %.lr.ph119 ], [ %i.df, %._crit_edge110 ] ; 3 uses
  %.084115 = phi i32 [ %i.av, %.lr.ph119 ], [ %.085114, %._crit_edge110 ] ; 9 uses
  %.085114 = phi i32 [ %i.as, %.lr.ph119 ], [ %.084115, %._crit_edge110 ] ; 4 uses
  %.086113 = phi ptr [ %i.ap, %.lr.ph119 ], [ %.087112, %._crit_edge110 ] ; 10 uses
  %.087112 = phi ptr [ %i.ao, %.lr.ph119 ], [ %.086113, %._crit_edge110 ] ; 9 uses
  %i.bo = select i1 %.077.in117, i64 4, i64 0     ; 2 uses
  %i.bp = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12 ; 4 uses
  %i.bs = load float, ptr %.086113, align 4, !tbaa !25
  %i.bt = getelementptr inbounds i8, ptr %.086113, i64 -4
  store float %i.bs, ptr %i.bt, align 4, !tbaa !25
  %i.bu = add nsw i32 %.085114, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.086113, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !25
  %i.by = zext nneg i32 %.085114 to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.086113, i64 %i.by
  store float %i.bx, ptr %i.bz, align 4, !tbaa !25
  %.not97104 = icmp eq i32 %.084115, 0
  br i1 %.not97104, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.e
  %i.ca = zext i1 %.077.in117 to i64
  %i.cb = getelementptr [4 x i8], ptr %.086113, i64 %i.ca ; 5 uses
  %i.cc = zext nneg i32 %.084115 to i64           ; 2 uses
  %min.iters.check188 = icmp samesign ult i32 %.084115, 8
  br i1 %min.iters.check188, label %.lr.ph109.preheader240, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph109.preheader
  %scevgep173 = getelementptr i8, ptr %.087112, i64 4
  %i.cd = add nsw i32 %.084115, -1
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2                ; 2 uses
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.cf ; 2 uses
  %scevgep175 = getelementptr i8, ptr %.086113, i64 -4
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.bo
  %i.cg = add nuw nsw i64 %i.bo, %i.cf            ; 2 uses
  %scevgep177 = getelementptr i8, ptr %.086113, i64 %i.cg
  %scevgep178 = getelementptr i8, ptr %.086113, i64 4
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.cg
  %bound0180 = icmp ult ptr %.087112, %scevgep177
  %bound1181 = icmp ult ptr %scevgep176, %scevgep174
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0183 = icmp ult ptr %.087112, %scevgep179
  %bound1184 = icmp ult ptr %i.cb, %scevgep174
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %found.conflict182, %found.conflict185
  br i1 %conflict.rdx186, label %.lr.ph109.preheader240, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck172
  %n.vec190 = and i64 %i.cc, 2147483640           ; 4 uses
  %i.ch = trunc nuw nsw i64 %n.vec190 to i32
  %i.ci = sub nsw i32 %.084115, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec190, 2            ; 2 uses
  %i.ck = getelementptr i8, ptr %.087112, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.cj
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next200, %vector.body191 ] ; 2 uses
  %i.cm = shl i64 %index192, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.087112, i64 %i.cm ; 3 uses
  %next.gep194 = getelementptr i8, ptr %i.cb, i64 %i.cm ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %next.gep194, i64 -4
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep194, i64 12
  %wide.load = load <4 x float>, ptr %i.cn, align 4, !tbaa !25, !alias.scope !338
  %wide.load195 = load <4 x float>, ptr %i.co, align 4, !tbaa !25, !alias.scope !338
  %i.cp = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load196 = load <4 x float>, ptr %next.gep194, align 4, !tbaa !25, !alias.scope !339
  %wide.load197 = load <4 x float>, ptr %i.cp, align 4, !tbaa !25, !alias.scope !339
  %i.cq = fadd <4 x float> %wide.load, %wide.load196
  %i.cr = fadd <4 x float> %wide.load195, %wide.load197
  %i.cs = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load198 = load <4 x float>, ptr %next.gep193, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %wide.load199 = load <4 x float>, ptr %i.cs, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cq, <4 x float> %wide.load198)
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cr, <4 x float> %wide.load199)
  store <4 x float> %i.ct, ptr %next.gep193, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  store <4 x float> %i.cu, ptr %i.cs, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %index.next200 = add nuw i64 %index192, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next200, %n.vec190
  br i1 %i.cv, label %middle.block201, label %vector.body191, !llvm.loop !328

middle.block201:                                  ; preds = %vector.body191
end_hunk_3
begin_hunk_4_@_ZN4ojph5local16gen_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb:bb.a
  %.088100 = phi i32 [ %i.al, %.lr.ph ], [ %.088100.ph, %.lr.ph.preheader233 ]
  %.08999 = phi ptr [ %i.ai, %.lr.ph ], [ %.08999.ph, %.lr.ph.preheader233 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08999, i64 4
  %i.aj = load float, ptr %.08999, align 4, !tbaa !25
  %i.ak = fmul float %i.m, %i.aj
  store float %i.ak, ptr %.08999, align 4, !tbaa !25
  %i.al = add nsw i32 %.088100, -1                ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !344

._crit_edge:                                      ; preds = %.lr.ph104, %middle.block160, %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !22  ; 2 uses
  %.not130 = icmp eq i8 %i.an, 0
  br i1 %.not130, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %wide.trip.count = zext i8 %i.an to i64
  br label %bb.c

.lr.ph104:                                        ; preds = %.lr.ph104.preheader232, %.lr.ph104
  %.087103 = phi i32 [ %i.at, %.lr.ph104 ], [ %.087103.ph, %.lr.ph104.preheader232 ]
  %.190102 = phi ptr [ %i.aq, %.lr.ph104 ], [ %.190102.ph, %.lr.ph104.preheader232 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.190102, i64 4
  %i.ar = load float, ptr %.190102, align 4, !tbaa !25
  %i.as = fmul float %i.n, %i.ar
  store float %i.as, ptr %.190102, align 4, !tbaa !25
  %i.at = add nsw i32 %.087103, -1                ; 2 uses
  %.not95 = icmp eq i32 %i.at, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph104, !llvm.loop !345

._crit_edge120:                                   ; preds = %._crit_edge111, %._crit_edge
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !12  ; 3 uses
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !12  ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !12 ; 3 uses
  br i1 %5, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph119, %._crit_edge111
  %indvars.iv = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next, %._crit_edge111 ] ; 3 uses
  %.081.in117 = phi i1 [ %5, %.lr.ph119 ], [ %not..081.in, %._crit_edge111 ]
  %.082116 = phi ptr [ %i.c, %.lr.ph119 ], [ %.093112, %._crit_edge111 ] ; 9 uses
  %.091114 = phi i32 [ %i.k, %.lr.ph119 ], [ %.092113, %._crit_edge111 ] ; 3 uses
  %.092113 = phi i32 [ %i.h, %.lr.ph119 ], [ %.091114, %._crit_edge111 ] ; 8 uses
  %.093112 = phi ptr [ %i.e, %.lr.ph119 ], [ %.082116, %._crit_edge111 ] ; 8 uses
  %i.ay = trunc i64 %indvars.iv to i1
  %i.az = xor i1 %i.ay, %not.
  %i.ba = select i1 %i.az, i64 4, i64 0           ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %.082116, align 4, !tbaa !25
  %i.be = getelementptr inbounds i8, ptr %.082116, i64 -4
  store float %i.bd, ptr %i.be, align 4, !tbaa !25
  %i.bf = add nsw i32 %.091114, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.082116, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !25
  %i.bj = zext nneg i32 %.091114 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.082116, i64 %i.bj
  store float %i.bi, ptr %i.bk, align 4, !tbaa !25
  %not..081.in = xor i1 %.081.in117, true         ; 2 uses
  %.not97105 = icmp eq i32 %.092113, 0
  br i1 %.not97105, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.c
  %i.bl = zext i1 %not..081.in to i64
  %i.bm = getelementptr [4 x i8], ptr %.082116, i64 %i.bl ; 5 uses
  %i.bn = fneg float %i.bc                        ; 4 uses
  %i.bo = zext nneg i32 %.092113 to i64           ; 2 uses
  %min.iters.check174 = icmp samesign ult i32 %.092113, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110
  %scevgep = getelementptr i8, ptr %.093112, i64 4
  %i.bp = add nsw i32 %.092113, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  %scevgep164 = getelementptr i8, ptr %scevgep, i64 %i.br ; 2 uses
  %scevgep165 = getelementptr i8, ptr %.082116, i64 -4
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.ba
  %i.bs = add nuw nsw i64 %i.ba, %i.br            ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.082116, i64 %i.bs
  %scevgep168 = getelementptr i8, ptr %.082116, i64 4
  %scevgep169 = getelementptr i8, ptr %scevgep168, i64 %i.bs
  %bound0 = icmp ult ptr %.093112, %scevgep167
  %bound1 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict = and i1 %bound0, %bound1
  %bound0170 = icmp ult ptr %.093112, %scevgep169
  %bound1171 = icmp ult ptr %i.bm, %scevgep164
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx = or i1 %found.conflict, %found.conflict172
  br i1 %conflict.rdx, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck
  %n.vec176 = and i64 %i.bo, 2147483640           ; 4 uses
  %i.bt = trunc nuw nsw i64 %n.vec176 to i32
  %i.bu = sub nsw i32 %.092113, %i.bt
  %i.bv = shl nuw nsw i64 %n.vec176, 2            ; 2 uses
  %i.bw = getelementptr i8, ptr %.093112, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bm, i64 %i.bv
  %broadcast.splatinsert177 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat178 = shufflevector <4 x float> %broadcast.splatinsert177, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph175
  %index180 = phi i64 [ 0, %vector.ph175 ], [ %index.next189, %vector.body179 ] ; 2 uses
  %i.by = shl i64 %index180, 2                    ; 2 uses
  %next.gep181 = getelementptr i8, ptr %.093112, i64 %i.by ; 3 uses
  %next.gep182 = getelementptr i8, ptr %i.bm, i64 %i.by ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep182, i64 -4
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep182, i64 12
  %wide.load183 = load <4 x float>, ptr %i.bz, align 4, !tbaa !25, !alias.scope !359
  %wide.load184 = load <4 x float>, ptr %i.ca, align 4, !tbaa !25, !alias.scope !359
  %i.cb = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load185 = load <4 x float>, ptr %next.gep182, align 4, !tbaa !25, !alias.scope !360
  %wide.load186 = load <4 x float>, ptr %i.cb, align 4, !tbaa !25, !alias.scope !360
  %i.cc = fadd <4 x float> %wide.load183, %wide.load185
  %i.cd = fadd <4 x float> %wide.load184, %wide.load186
  %i.ce = getelementptr i8, ptr %next.gep181, i64 16 ; 2 uses
  %wide.load187 = load <4 x float>, ptr %next.gep181, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  %wide.load188 = load <4 x float>, ptr %i.ce, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat178, <4 x float> %i.cc, <4 x float> %wide.load187)
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat178, <4 x float> %i.cd, <4 x float> %wide.load188)
  store <4 x float> %i.cf, ptr %next.gep181, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  store <4 x float> %i.cg, ptr %i.ce, align 4, !tbaa !25, !alias.scope !361, !noalias !362
  %index.next189 = add nuw i64 %index180, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next189, %n.vec176
  br i1 %i.ch, label %middle.block190, label %vector.body179, !llvm.loop !350

middle.block190:                                  ; preds = %vector.body179
  %cmp.n191 = icmp eq i64 %n.vec176, %i.bo
  br i1 %cmp.n191, label %._crit_edge111, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %vector.memcheck, %.lr.ph110, %middle.block190
  %.083108.ph = phi i32 [ %.092113, %vector.memcheck ], [ %.092113, %.lr.ph110 ], [ %i.bu, %middle.block190 ] ; 4 uses
  %.084107.ph = phi ptr [ %.093112, %vector.memcheck ], [ %.093112, %.lr.ph110 ], [ %i.bw, %middle.block190 ] ; 4 uses
  %.085106.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph110 ], [ %i.bx, %middle.block190 ] ; 3 uses
  %xtraiter = and i32 %.083108.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph173.prol.loopexit, label %scalar.ph173.prol

scalar.ph173.prol:                                ; preds = %scalar.ph173.preheader
  %i.ci = getelementptr inbounds i8, ptr %.085106.ph, i64 -4
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !25
  %i.ck = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cj)
  %i.cl = load float, ptr %.084107.ph, align 4, !tbaa !25
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ck, float %i.cl)
  store float %i.cm, ptr %.084107.ph, align 4, !tbaa !25
  %i.cn = add nsw i32 %.083108.ph, -1
  %i.co = getelementptr inbounds nuw i8, ptr %.085106.ph, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.084107.ph, i64 4
  br label %scalar.ph173.prol.loopexit

scalar.ph173.prol.loopexit:                       ; preds = %scalar.ph173.prol, %scalar.ph173.preheader
  %.083108.unr = phi i32 [ %.083108.ph, %scalar.ph173.preheader ], [ %i.cn, %scalar.ph173.prol ]
  %.084107.unr = phi ptr [ %.084107.ph, %scalar.ph173.preheader ], [ %i.cp, %scalar.ph173.prol ]
  %.085106.unr = phi ptr [ %.085106.ph, %scalar.ph173.preheader ], [ %i.co, %scalar.ph173.prol ]
  %i.cq = icmp eq i32 %.083108.ph, 1
  br i1 %i.cq, label %._crit_edge111, label %scalar.ph173

._crit_edge111:                                   ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173, %middle.block190, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge120, label %bb.c, !llvm.loop !351

scalar.ph173:                                     ; preds = %scalar.ph173.prol.loopexit, %scalar.ph173
  %.083108 = phi i32 [ %i.db, %scalar.ph173 ], [ %.083108.unr, %scalar.ph173.prol.loopexit ]
  %.084107 = phi ptr [ %i.dd, %scalar.ph173 ], [ %.084107.unr, %scalar.ph173.prol.loopexit ] ; 4 uses
  %.085106 = phi ptr [ %i.dc, %scalar.ph173 ], [ %.085106.unr, %scalar.ph173.prol.loopexit ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.085106, i64 -4
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !25
  %i.ct = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cs)
  %i.cu = load float, ptr %.084107, align 4, !tbaa !25
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ct, float %i.cu)
  store float %i.cv, ptr %.084107, align 4, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %.084107, i64 4 ; 2 uses
  %i.cx = load <2 x float>, ptr %.085106, align 4, !tbaa !25
  %i.cy = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.cx)
  %i.cz = load float, ptr %i.cw, align 4, !tbaa !25
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.cy, float %i.cz)
  store float %i.da, ptr %i.cw, align 4, !tbaa !25
  %i.db = add nsw i32 %.083108, -2                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.085106, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.084107, i64 8
  %.not97.1 = icmp eq i32 %i.db, 0
  br i1 %.not97.1, label %._crit_edge111, label %scalar.ph173, !llvm.loop !352

bb.d:                                             ; preds = %._crit_edge120
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.df = load float, ptr %i.au, align 4, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %i.df, ptr %i.ax, align 4, !tbaa !25
  %i.dh = add i32 %4, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge120
  %.079 = phi ptr [ %i.au, %._crit_edge120 ], [ %i.de, %bb.d ] ; 6 uses
  %.076 = phi ptr [ %i.ax, %._crit_edge120 ], [ %i.dg, %bb.d ] ; 9 uses
  %.0 = phi i32 [ %4, %._crit_edge120 ], [ %i.dh, %bb.d ] ; 5 uses
  %i.di = icmp ugt i32 %.0, 1
  br i1 %i.di, label %.lr.ph126.preheader, label %._crit_edge127.thread

.lr.ph126.preheader:                              ; preds = %bb.e
  %i.dj = add i32 %.0, -2                         ; 2 uses
  %6 = zext i32 %i.dj to i64                      ; 2 uses
  %7 = lshr i64 %6, 1
  %8 = add nuw nsw i64 %7, 1                      ; 2 uses
  %min.iters.check207 = icmp ult i32 %i.dj, 42
  br i1 %min.iters.check207, label %.lr.ph126.preheader228, label %vector.memcheck195

vector.memcheck195:                               ; preds = %.lr.ph126.preheader
  %9 = lshr i64 %6, 1                             ; 2 uses
  %i.dk = shl nuw nsw i64 %9, 3
  %i.dl = getelementptr i8, ptr %.076, i64 %i.dk
  %scevgep196 = getelementptr i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dm = shl nuw nsw i64 %9, 2
  %i.dn = add nuw nsw i64 %i.dm, 4                ; 2 uses
  %scevgep197 = getelementptr i8, ptr %i.av, i64 %i.dn
  %scevgep198 = getelementptr i8, ptr %.079, i64 %i.dn
  %bound0199 = icmp ult ptr %.076, %scevgep197
  %bound1200 = icmp ult ptr %i.av, %scevgep196
  %found.conflict201 = and i1 %bound0199, %bound1200
  %bound0202 = icmp ult ptr %.076, %scevgep198
  %bound1203 = icmp ult ptr %.079, %scevgep196
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %found.conflict201, %found.conflict204
  br i1 %conflict.rdx205, label %.lr.ph126.preheader228, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck195
  %n.vec209 = and i64 %8, 4294967292              ; 5 uses
  %i.do = trunc nuw i64 %n.vec209 to i32
  %i.dp = shl i32 %i.do, 1
  %i.dq = sub i32 %.0, %i.dp                      ; 2 uses
  %i.dr = shl nuw nsw i64 %n.vec209, 3
  %i.ds = getelementptr i8, ptr %.076, i64 %i.dr  ; 2 uses
  %i.dt = shl nuw nsw i64 %n.vec209, 2            ; 2 uses
  %i.du = getelementptr i8, ptr %i.av, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %.079, i64 %i.dt
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next221, %vector.body210 ] ; 3 uses
  %i.dw = shl i64 %index211, 3                    ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.076, i64 %i.dw
  %i.dx = getelementptr i8, ptr %.076, i64 %i.dw
  %next.gep213 = getelementptr i8, ptr %i.dx, i64 16
  %i.dy = shl i64 %index211, 2                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %i.av, i64 %i.dy ; 2 uses
  %next.gep215 = getelementptr i8, ptr %.079, i64 %i.dy ; 2 uses
  %i.dz = getelementptr i8, ptr %next.gep214, i64 8
  %wide.load216 = load <2 x float>, ptr %next.gep214, align 4, !tbaa !25, !alias.scope !363
  %wide.load217 = load <2 x float>, ptr %i.dz, align 4, !tbaa !25, !alias.scope !363
  %i.ea = getelementptr i8, ptr %next.gep215, i64 8
  %wide.load218 = load <2 x float>, ptr %next.gep215, align 4, !tbaa !25, !alias.scope !364
  %wide.load219 = load <2 x float>, ptr %i.ea, align 4, !tbaa !25, !alias.scope !364
  %interleaved.vec = shufflevector <2 x float> %wide.load216, <2 x float> %wide.load218, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %next.gep212, align 4, !tbaa !25, !alias.scope !365, !noalias !366
  %interleaved.vec220 = shufflevector <2 x float> %wide.load217, <2 x float> %wide.load219, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec220, ptr %next.gep213, align 4, !tbaa !25, !alias.scope !365, !noalias !366
  %index.next221 = add nuw i64 %index211, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next221, %n.vec209
  br i1 %i.eb, label %middle.block222, label %vector.body210, !llvm.loop !357

middle.block222:                                  ; preds = %vector.body210
  %cmp.n223 = icmp eq i64 %8, %n.vec209
  br i1 %cmp.n223, label %._crit_edge127, label %.lr.ph126.preheader228

.lr.ph126.preheader228:                           ; preds = %vector.memcheck195, %.lr.ph126.preheader, %middle.block222
  %.1124.ph = phi i32 [ %.0, %vector.memcheck195 ], [ %.0, %.lr.ph126.preheader ], [ %i.dq, %middle.block222 ]
  %.177123.ph = phi ptr [ %.076, %vector.memcheck195 ], [ %.076, %.lr.ph126.preheader ], [ %i.ds, %middle.block222 ]
  %.078122.ph = phi ptr [ %i.av, %vector.memcheck195 ], [ %i.av, %.lr.ph126.preheader ], [ %i.du, %middle.block222 ]
  %.180121.ph = phi ptr [ %.079, %vector.memcheck195 ], [ %.079, %.lr.ph126.preheader ], [ %i.dv, %middle.block222 ]
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader228, %.lr.ph126
  %.1124 = phi i32 [ %i.ei, %.lr.ph126 ], [ %.1124.ph, %.lr.ph126.preheader228 ]
  %.177123 = phi ptr [ %i.eh, %.lr.ph126 ], [ %.177123.ph, %.lr.ph126.preheader228 ] ; 3 uses
  %.078122 = phi ptr [ %i.ec, %.lr.ph126 ], [ %.078122.ph, %.lr.ph126.preheader228 ] ; 2 uses
  %.180121 = phi ptr [ %i.ef, %.lr.ph126 ], [ %.180121.ph, %.lr.ph126.preheader228 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.078122, i64 4 ; 2 uses
  %i.ed = load float, ptr %.078122, align 4, !tbaa !25
  %i.ee = getelementptr inbounds nuw i8, ptr %.177123, i64 4
  store float %i.ed, ptr %.177123, align 4, !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %.180121, i64 4
  %i.eg = load float, ptr %.180121, align 4, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %.177123, i64 8 ; 2 uses
  store float %i.eg, ptr %i.ee, align 4, !tbaa !25
  %i.ei = add i32 %.1124, -2                      ; 3 uses
  %i.ej = icmp ugt i32 %i.ei, 1
  br i1 %i.ej, label %.lr.ph126, label %._crit_edge127, !llvm.loop !358

._crit_edge127:                                   ; preds = %.lr.ph126, %middle.block222
  %.lcssa145 = phi ptr [ %i.du, %middle.block222 ], [ %i.ec, %.lr.ph126 ]
  %.lcssa144 = phi ptr [ %i.ds, %middle.block222 ], [ %i.eh, %.lr.ph126 ]
  %.lcssa = phi i32 [ %i.dq, %middle.block222 ], [ %i.ei, %.lr.ph126 ]
  %i.ek = icmp eq i32 %.lcssa, 0
  br i1 %i.ek, label %bb.i, label %._crit_edge127.thread

._crit_edge127.thread:                            ; preds = %bb.e, %._crit_edge127
  %.177.lcssa141 = phi ptr [ %.lcssa144, %._crit_edge127 ], [ %.076, %bb.e ]
  %.078.lcssa140 = phi ptr [ %.lcssa145, %._crit_edge127 ], [ %i.av, %bb.e ]
  %i.el = load float, ptr %.078.lcssa140, align 4, !tbaa !25
  store float %i.el, ptr %.177.lcssa141, align 4, !tbaa !25
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  br i1 %5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !12
  store float %i.eo, ptr %i.eq, align 4, !tbaa !25
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !12
  %i.et = load float, ptr %i.es, align 4, !tbaa !25
  %i.eu = fmul float %i.et, 5.000000e-01
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !12
  store float %i.eu, ptr %i.ew, align 4, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge127, %._crit_edge127.thread, %bb.g, %bb.h
  ret void
}

declare noundef i32 @_ZN4ojph17get_cpu_ext_levelEv() local_unnamed_addr #2

declare void @_ZN4ojph5local17sse_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local20sse_irv_vert_times_KEfPKNS_8line_bufEj(float noundef, ptr noundef, i32 noundef) #2

declare void @_ZN4ojph5local16sse_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local16sse_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local18sse2_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17sse2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17sse2_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17avx_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local20avx_irv_vert_times_KEfPKNS_8line_bufEj(float noundef, ptr noundef, i32 noundef) #2

declare void @_ZN4ojph5local16avx_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local16avx_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local18avx2_rev_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17avx2_rev_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local17avx2_rev_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local20avx512_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local23avx512_irv_vert_times_KEfPKNS_8line_bufEj(float noundef, ptr noundef, i32 noundef) #2

declare void @_ZN4ojph5local19avx512_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_ZN4ojph5local19avx512_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN4ojph5localL19gen_rev_vert_step64EPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %.16.val, ptr nofree readonly captures(none) %.16.val1, ptr nofree captures(none) %.16.val3, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %i.c = sext i16 %i.b to i64                     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !12   ; 2 uses
  %i.f = sext i16 %i.e to i64                     ; 22 uses
  %i.g = load i8, ptr %0, align 4, !tbaa !12      ; 7 uses
  %i.h = icmp eq i16 %i.b, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not11465 = icmp eq i32 %1, 0                  ; 2 uses
  br i1 %2, label %.preheader, label %.preheader10

.preheader10:                                     ; preds = %bb.b
  br i1 %.not11465, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader10
  %i.i = zext nneg i8 %i.g to i64                 ; 4 uses
  %i.j = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check225 = icmp ult i32 %1, 10
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.memcheck213

vector.memcheck213:                               ; preds = %.lr.ph64
  %i.k = add i32 %1, -1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 8                  ; 3 uses
  %scevgep214 = getelementptr i8, ptr %.16.val3, i64 %i.n ; 2 uses
  %scevgep215 = getelementptr i8, ptr %.16.val, i64 %i.n
  %scevgep216 = getelementptr i8, ptr %.16.val1, i64 %i.n
  %bound0217 = icmp ult ptr %.16.val3, %scevgep215
  %bound1218 = icmp ult ptr %.16.val, %scevgep214
  %found.conflict219 = and i1 %bound0217, %bound1218
  %bound0220 = icmp ult ptr %.16.val3, %scevgep216
  %bound1221 = icmp ult ptr %.16.val1, %scevgep214
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %found.conflict219, %found.conflict222
  br i1 %conflict.rdx223, label %scalar.ph224.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck213
  %n.vec227 = and i64 %i.j, 4294967292            ; 4 uses
  %i.o = trunc nuw i64 %n.vec227 to i32
  %i.p = sub i32 %1, %i.o
  %i.q = shl nuw nsw i64 %n.vec227, 3             ; 3 uses
  %i.r = getelementptr i8, ptr %.16.val1, i64 %i.q
  %i.s = getelementptr i8, ptr %.16.val, i64 %i.q
  %i.t = getelementptr i8, ptr %.16.val3, i64 %i.q
  %broadcast.splatinsert228 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat229 = shufflevector <2 x i64> %broadcast.splatinsert228, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert230 = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat231 = shufflevector <2 x i64> %broadcast.splatinsert230, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph226
  %index233 = phi i64 [ 0, %vector.ph226 ], [ %index.next243, %vector.body232 ] ; 2 uses
  %i.u = shl i64 %index233, 3                     ; 3 uses
  %next.gep234 = getelementptr i8, ptr %.16.val1, i64 %i.u ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.16.val, i64 %i.u ; 2 uses
  %next.gep236 = getelementptr i8, ptr %.16.val3, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep235, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep235, align 8, !tbaa !24, !alias.scope !405
  %wide.load238 = load <2 x i64>, ptr %i.v, align 8, !tbaa !24, !alias.scope !405
  %i.w = add nsw <2 x i64> %wide.load237, %broadcast.splat231
  %i.x = add nsw <2 x i64> %wide.load238, %broadcast.splat231
  %i.y = getelementptr i8, ptr %next.gep234, i64 16
  %wide.load239 = load <2 x i64>, ptr %next.gep234, align 8, !tbaa !24, !alias.scope !406
  %wide.load240 = load <2 x i64>, ptr %i.y, align 8, !tbaa !24, !alias.scope !406
  %i.z = add nsw <2 x i64> %i.w, %wide.load239
  %i.aa = add nsw <2 x i64> %i.x, %wide.load240
  %i.ab = ashr <2 x i64> %i.z, %broadcast.splat229
  %i.ac = ashr <2 x i64> %i.aa, %broadcast.splat229
  %i.ad = getelementptr i8, ptr %next.gep236, i64 16 ; 2 uses
  %wide.load241 = load <2 x i64>, ptr %next.gep236, align 8, !tbaa !24, !alias.scope !407, !noalias !408
  %wide.load242 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !24, !alias.scope !407, !noalias !408
  %i.ae = add nsw <2 x i64> %i.ab, %wide.load241
  %i.af = add nsw <2 x i64> %i.ac, %wide.load242
  store <2 x i64> %i.ae, ptr %next.gep236, align 8, !tbaa !24, !alias.scope !407, !noalias !408
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !24, !alias.scope !407, !noalias !408
  %index.next243 = add nuw i64 %index233, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next243, %n.vec227
  br i1 %i.ag, label %middle.block244, label %vector.body232, !llvm.loop !371

middle.block244:                                  ; preds = %vector.body232
  %cmp.n245 = icmp eq i64 %n.vec227, %i.j
  br i1 %cmp.n245, label %.loopexit, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %vector.memcheck213, %.lr.ph64, %middle.block244
  %.08763.ph = phi i32 [ %1, %vector.memcheck213 ], [ %1, %.lr.ph64 ], [ %i.p, %middle.block244 ] ; 4 uses
  %.162.ph = phi ptr [ %.16.val1, %vector.memcheck213 ], [ %.16.val1, %.lr.ph64 ], [ %i.r, %middle.block244 ] ; 3 uses
  %.19161.ph = phi ptr [ %.16.val, %vector.memcheck213 ], [ %.16.val, %.lr.ph64 ], [ %i.s, %middle.block244 ] ; 3 uses
  %.19960.ph = phi ptr [ %.16.val3, %vector.memcheck213 ], [ %.16.val3, %.lr.ph64 ], [ %i.t, %middle.block244 ] ; 4 uses
  %xtraiter308 = and i32 %.08763.ph, 1
end_hunk_4
