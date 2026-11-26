Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fits_hcompress?download=true
inline.NumInlined: 60
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@qtree_encode:bb.a
  store i8 %i.pe, ptr %i.pg, align 1, !tbaa !20
  %i.ph = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.pi = icmp slt i64 %i.pf, %i.ph
  br i1 %i.pi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.pj = add nsw i64 %i.pf, 1
  store i64 %i.pj, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.pk = add nsw i32 %i.oc, 2
  store i32 %i.pk, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit106

output_nbits.exit106:                             ; preds = %bb.ah, %bb.ak
  %i.pl = add nsw i64 %i.od, 10
  store i64 %i.pl, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit123

bb.al:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %notmask = shl nsw i32 -1, %bits_to_go3.promoted146
  %i.pm = xor i32 %notmask, -1
  %i.pn = and i32 %bitbuffer.promoted139, %i.pm
  %i.po = shl i32 %i.np, %bits_to_go3.promoted146
  %i.pp = or i32 %i.pn, %i.po                     ; 3 uses
  store i32 %i.pp, ptr @buffer2, align 4, !tbaa !13
  %i.pq = sub nsw i32 %i.oc, %bits_to_go3.promoted146 ; 5 uses
  store i32 %i.pq, ptr @bits_to_go2, align 4, !tbaa !13
  %i.pr = icmp slt i32 %i.pq, 1
  br i1 %i.pr, label %bb.an, label %output_nbits.exit108

bb.an:                                            ; preds = %bb.am
  %i.ps = sub nsw i32 0, %i.pq
  %i.pt = ashr i32 %i.pp, %i.ps
  %i.pu = trunc i32 %i.pt to i8
  %i.pv = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pw = getelementptr inbounds i8, ptr %0, i64 %i.pv
  store i8 %i.pu, ptr %i.pw, align 1, !tbaa !20
  %i.px = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.py = icmp slt i64 %i.pv, %i.px
  br i1 %i.py, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pz = add nsw i64 %i.pv, 1
  store i64 %i.pz, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.qa = add nsw i32 %i.pq, 8                    ; 2 uses
  store i32 %i.qa, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit108

output_nbits.exit108:                             ; preds = %bb.am, %bb.ap
  %bits_to_go2.promoted168 = phi i32 [ %i.pq, %bb.am ], [ %i.qa, %bb.ap ]
  %i.qb = zext nneg i32 %bits_to_go3.promoted146 to i64
  %i.qc = add nsw i64 %i.oe, %i.qb                ; 2 uses
  store i64 %i.qc, ptr @bitcount, align 8, !tbaa !22
  br label %bb.aq

bb.aq:                                            ; preds = %output_nbits.exit108, %bb.al
  %buffer2.promoted = phi i32 [ %i.pp, %output_nbits.exit108 ], [ %i.np, %bb.al ]
  %bits_to_go2.promoted = phi i32 [ %bits_to_go2.promoted168, %output_nbits.exit108 ], [ %i.oc, %bb.al ]
  %bitcount.promoted = phi i64 [ %i.qc, %output_nbits.exit108 ], [ %i.oe, %bb.al ]
  %i.qd = icmp sgt i32 %.0115.lcssa, 0
  br i1 %i.qd, label %.lr.ph133, label %.loopexit123

.lr.ph133:                                        ; preds = %bb.aq
  %noutchar.promoted = load i64, ptr @noutchar, align 8
  %i.qe = load i64, ptr @noutmax, align 8
  %i.qf = zext nneg i32 %.0115.lcssa to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph133, %output_nbits.exit109
  %indvars.iv = phi i64 [ %i.qf, %.lr.ph133 ], [ %indvars.iv.next, %output_nbits.exit109 ] ; 2 uses
  %i.qg = phi i32 [ %buffer2.promoted, %.lr.ph133 ], [ %i.qn, %output_nbits.exit109 ]
  %i.qh = phi i32 [ %bits_to_go2.promoted, %.lr.ph133 ], [ %i.qx, %output_nbits.exit109 ] ; 5 uses
  %i.qi = phi i64 [ %noutchar.promoted, %.lr.ph133 ], [ %i.qw, %output_nbits.exit109 ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !20
  %i.ql = zext i8 %i.qk to i32
  %i.qm = shl i32 %i.qg, 8
  %i.qn = or disjoint i32 %i.qm, %i.ql            ; 3 uses
  %i.qo = add nsw i32 %i.qh, -8
  %i.qp = icmp slt i32 %i.qh, 9
  br i1 %i.qp, label %bb.as, label %output_nbits.exit109

bb.as:                                            ; preds = %bb.ar
  %i.qq = sub nsw i32 8, %i.qh
  %i.qr = ashr i32 %i.qn, %i.qq
  %i.qs = trunc i32 %i.qr to i8
  %i.qt = getelementptr inbounds i8, ptr %0, i64 %i.qi
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !20
  %i.qu = icmp slt i64 %i.qi, %i.qe
  br i1 %i.qu, label %bb.at, label %output_nbits.exit109

bb.at:                                            ; preds = %bb.as
  %i.qv = add nsw i64 %i.qi, 1                    ; 2 uses
  store i64 %i.qv, ptr @noutchar, align 8, !tbaa !19
  br label %output_nbits.exit109

output_nbits.exit109:                             ; preds = %bb.as, %bb.at, %bb.ar
  %i.qw = phi i64 [ %i.qi, %bb.ar ], [ %i.qv, %bb.at ], [ %i.qi, %bb.as ]
  %i.qx = phi i32 [ %i.qo, %bb.ar ], [ %i.qh, %bb.at ], [ %i.qh, %bb.as ] ; 2 uses
  %i.qy = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.qy, label %bb.ar, label %..loopexit123_crit_edge, !llvm.loop !71

..loopexit123_crit_edge:                          ; preds = %output_nbits.exit109
  %i.qz = add i64 %bitcount.promoted, 8
  %i.ra = add nsw i32 %.0115.lcssa, -1
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 3
  %i.rd = add i64 %i.qz, %i.rc
  store i32 %i.qn, ptr @buffer2, align 4, !tbaa !13
  store i32 %i.qx, ptr @bits_to_go2, align 4, !tbaa !13
  store i64 %i.rd, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit123

.loopexit123:                                     ; preds = %bb.aq, %..loopexit123_crit_edge, %write_bdirect.exit, %write_bdirect.exit105, %output_nbits.exit, %output_nbits.exit106
  %i.re = icmp sgt i32 %.074154.in, 1
  br i1 %i.re, label %bb.e, label %._crit_edge157, !llvm.loop !72

._crit_edge157:                                   ; preds = %.loopexit123, %.preheader
  tail call void @free(ptr noundef %i.w) #14
  tail call void @free(ptr noundef %i.t) #14
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge157, %bb.d, %bb.b
  %.078 = phi i32 [ 413, %bb.b ], [ 413, %bb.d ], [ 0, %._crit_edge157 ]
  ret i32 %.078
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @qtree_onebit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 -1073741824, 1073741824) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #8 {
bb.a:
  %i.a = shl nuw i32 1, %5                        ; 2 uses
  %i.b = shl i32 2, %5                            ; 5 uses
  %i.c = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.d = shufflevector <2 x i32> %i.c, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.e = shl <2 x i32> <i32 8, i32 4>, %i.d       ; 10 uses
  %i.f = add nsw i32 %2, -1
  %i.g = icmp sgt i32 %2, 1
  br i1 %i.g, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.h = add nsw i32 %3, -1
  %i.i = icmp sgt i32 %3, 1
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph86.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.j = shl i32 %1, 1                            ; 2 uses
  %i.k = and i32 %3, 2147483646
  %i.l = icmp slt i32 %i.k, %3
  %i.m = add nsw i32 %3, -2
  %i.n = lshr i32 %i.m, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 8    ; 2 uses
  %i.r = getelementptr i8, ptr %4, i64 %i.o
  %scevgep175 = getelementptr i8, ptr %i.r, i64 1
  %i.s = extractelement <2 x i32> %i.e, i64 0     ; 2 uses
  %i.t = add nsw i32 %3, -2                       ; 2 uses
  %i.u = lshr i32 %i.t, 1
  %narrow = add nuw i32 %i.u, 1
  %i.v = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check177 = icmp ult i32 %i.t, 6
  %n.vec186 = and i64 %i.v, 4294967292            ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec186, 1             ; 2 uses
  %i.x = trunc nuw i64 %n.vec186 to i32
  %i.y = shl i32 %i.x, 1
  %broadcast.splatinsert187 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat188 = shufflevector <4 x i32> %broadcast.splatinsert187, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat190 = shufflevector <4 x i32> %broadcast.splatinsert189, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat192 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat194 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n207 = icmp eq i64 %n.vec186, %i.v
  %i.z = extractelement <2 x i32> %i.e, i64 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %indvars.iv124 = phi i32 [ %1, %.lr.ph.us.preheader ], [ %indvars.iv.next125, %bb.c ] ; 2 uses
  %indvars.iv120 = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next121, %bb.c ] ; 2 uses
  %.07184.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.2.us, %bb.c ]
  %.07583.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.cn, %bb.c ]
  %i.aa = sext i32 %indvars.iv120 to i64          ; 5 uses
  %i.ab = sext i32 %indvars.iv124 to i64          ; 5 uses
  %i.ac = sext i32 %.07184.us to i64              ; 6 uses
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.us
  %i.ad = getelementptr i8, ptr %4, i64 %i.ac     ; 2 uses
  %i.ae = getelementptr i8, ptr %scevgep175, i64 %i.ac ; 2 uses
  %i.af = shl nsw i64 %i.aa, 2                    ; 2 uses
  %i.ag = getelementptr i8, ptr %0, i64 %i.af
  %i.ah = getelementptr i8, ptr %scevgep, i64 %i.af
  %i.ai = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %scevgep, i64 %i.ai
  %bound0179 = icmp ult ptr %i.ad, %i.ah
  %bound1180 = icmp ult ptr %i.ag, %i.ae
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0182 = icmp ult ptr %i.ad, %i.ak
  %bound1183 = icmp ult ptr %i.aj, %i.ae
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict181, %found.conflict184
  br i1 %conflict.rdx, label %scalar.ph176.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck178
  %i.al = add nsw i64 %n.vec186, %i.ac            ; 3 uses
  %i.am = add nsw i64 %i.w, %i.ab                 ; 2 uses
  %i.an = add nsw i64 %i.w, %i.aa                 ; 2 uses
  %invariant.gep262 = getelementptr [4 x i8], ptr %0, i64 %i.ab
  %invariant.gep264 = getelementptr [4 x i8], ptr %0, i64 %i.aa
  %invariant.gep266 = getelementptr i8, ptr %4, i64 %i.ac
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph185
  %index198 = phi i64 [ 0, %vector.ph185 ], [ %index.next205, %vector.body197 ] ; 3 uses
  %i.ao = shl i64 %index198, 1                    ; 2 uses
  %gep263 = getelementptr [4 x i8], ptr %invariant.gep262, i64 %i.ao
  %wide.vec199 = load <8 x i32>, ptr %gep263, align 4, !tbaa !13, !alias.scope !90 ; 2 uses
  %strided.vec200 = shufflevector <8 x i32> %wide.vec199, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec201 = shufflevector <8 x i32> %wide.vec199, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ap = and <4 x i32> %strided.vec201, %broadcast.splat188
  %i.aq = shl <4 x i32> %strided.vec200, splat (i32 1)
  %i.ar = and <4 x i32> %i.aq, %broadcast.splat190
  %i.as = or <4 x i32> %i.ar, %i.ap
  %gep265 = getelementptr [4 x i8], ptr %invariant.gep264, i64 %i.ao
  %wide.vec202 = load <8 x i32>, ptr %gep265, align 4, !tbaa !13, !alias.scope !91 ; 2 uses
  %strided.vec203 = shufflevector <8 x i32> %wide.vec202, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec204 = shufflevector <8 x i32> %wide.vec202, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.at = shl <4 x i32> %strided.vec204, splat (i32 2)
  %i.au = and <4 x i32> %i.at, %broadcast.splat192
  %i.av = or <4 x i32> %i.as, %i.au
  %i.aw = shl <4 x i32> %strided.vec203, splat (i32 3)
  %i.ax = and <4 x i32> %i.aw, %broadcast.splat194
  %i.ay = or <4 x i32> %i.av, %i.ax
  %i.az = ashr <4 x i32> %i.ay, %broadcast.splat196
  %i.ba = trunc <4 x i32> %i.az to <4 x i8>
  %gep267 = getelementptr i8, ptr %invariant.gep266, i64 %index198
  store <4 x i8> %i.ba, ptr %gep267, align 1, !tbaa !20, !alias.scope !92, !noalias !93
  %index.next205 = add nuw i64 %index198, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next205, %n.vec186
  br i1 %i.bb, label %middle.block206, label %vector.body197, !llvm.loop !77

middle.block206:                                  ; preds = %vector.body197
  %ind.escape = add nsw i64 %i.al, -1
  br i1 %cmp.n207, label %._crit_edge.us, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck178, %.lr.ph.us, %middle.block206
  %indvars.iv128.ph = phi i64 [ %i.ac, %vector.memcheck178 ], [ %i.ac, %.lr.ph.us ], [ %i.al, %middle.block206 ]
  %indvars.iv126.ph = phi i64 [ %i.ab, %vector.memcheck178 ], [ %i.ab, %.lr.ph.us ], [ %i.am, %middle.block206 ]
  %indvars.iv122.ph = phi i64 [ %i.aa, %vector.memcheck178 ], [ %i.aa, %.lr.ph.us ], [ %i.an, %middle.block206 ]
  %.07376.us.ph = phi i32 [ 0, %vector.memcheck178 ], [ 0, %.lr.ph.us ], [ %i.y, %middle.block206 ]
  br label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176.preheader, %scalar.ph176
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph176 ], [ %indvars.iv128.ph, %scalar.ph176.preheader ] ; 3 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %scalar.ph176 ], [ %indvars.iv126.ph, %scalar.ph176.preheader ] ; 2 uses
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph176 ], [ %indvars.iv122.ph, %scalar.ph176.preheader ] ; 2 uses
  %.07376.us = phi i32 [ %i.bx, %scalar.ph176 ], [ %.07376.us.ph, %scalar.ph176.preheader ]
  %i.bc = getelementptr [4 x i8], ptr %0, i64 %indvars.iv126 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %i.bf = and i32 %i.be, %i.a
  %i.bg = load i32, ptr %i.bc, align 4, !tbaa !13
  %i.bh = shl i32 %i.bg, 1
  %i.bi = and i32 %i.bh, %i.b
  %i.bj = or i32 %i.bi, %i.bf
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %indvars.iv122 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = shl i32 %i.bm, 2
  %i.bo = and i32 %i.bn, %i.z
  %i.bp = or i32 %i.bj, %i.bo
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !13
  %i.br = shl i32 %i.bq, 3
  %i.bs = and i32 %i.br, %i.s
  %i.bt = or i32 %i.bp, %i.bs
  %i.bu = ashr i32 %i.bt, %5
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds i8, ptr %4, i64 %indvars.iv128
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !20
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 2 ; 2 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 2 ; 2 uses
  %i.bx = add nuw nsw i32 %.07376.us, 2           ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.h
  br i1 %i.by, label %scalar.ph176, label %._crit_edge.us, !llvm.loop !78

bb.b:                                             ; preds = %._crit_edge.us
  %i.bz = trunc nsw i64 %indvars.iv128.lcssa to i32
  %i.ca = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next127.lcssa
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13
  %i.cc = shl i32 %i.cb, 1
  %i.cd = and i32 %i.cc, %i.b
  %i.ce = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next123.lcssa
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cg = shl i32 %i.cf, 3
  %i.ch = and i32 %i.cg, %i.s
  %i.ci = or i32 %i.ch, %i.cd
  %i.cj = ashr i32 %i.ci, %5
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next129.lcssa
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !20
  %i.cm = add nsw i32 %i.bz, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %.2.us = phi i32 [ %i.cm, %bb.b ], [ %i.cp, %._crit_edge.us ] ; 2 uses
  %i.cn = add nuw nsw i32 %.07583.us, 2           ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.f
  %indvars.iv.next121 = add i32 %indvars.iv120, %i.j
  %indvars.iv.next125 = add i32 %indvars.iv124, %i.j
  br i1 %i.co, label %.lr.ph.us, label %._crit_edge87.loopexit, !llvm.loop !79

._crit_edge.us:                                   ; preds = %scalar.ph176, %middle.block206
  %indvars.iv128.lcssa = phi i64 [ %ind.escape, %middle.block206 ], [ %indvars.iv128, %scalar.ph176 ]
  %indvars.iv.next129.lcssa = phi i64 [ %i.al, %middle.block206 ], [ %indvars.iv.next129, %scalar.ph176 ] ; 2 uses
  %indvars.iv.next123.lcssa = phi i64 [ %i.an, %middle.block206 ], [ %indvars.iv.next123, %scalar.ph176 ]
  %indvars.iv.next127.lcssa = phi i64 [ %i.am, %middle.block206 ], [ %indvars.iv.next127, %scalar.ph176 ]
  %i.cp = trunc nsw i64 %indvars.iv.next129.lcssa to i32
  br i1 %i.l, label %bb.b, label %bb.c

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.cq = icmp eq i32 %3, 1
  br i1 %i.cq, label %.lr.ph86.split.split.us.preheader, label %.lr.ph86.split.split.preheader

.lr.ph86.split.split.preheader:                   ; preds = %.lr.ph86.split
  %i.cr = and i32 %2, 2147483646
  br label %._crit_edge87

.lr.ph86.split.split.us.preheader:                ; preds = %.lr.ph86.split
  %i.cs = sext i32 %1 to i64                      ; 2 uses
  %i.ct = add nsw i32 %2, -2                      ; 3 uses
  %i.cu = lshr i32 %i.ct, 1
  %i.cv = add nuw nsw i32 %i.cu, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cv to i64   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.cs ; 3 uses
  %min.iters.check = icmp ugt i32 %i.ct, 13
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph86.split.split.us.preheader253

vector.memcheck:                                  ; preds = %.lr.ph86.split.split.us.preheader
  %i.cw = getelementptr i8, ptr %4, i64 %wide.trip.count
  %i.cx = lshr i32 %i.ct, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = getelementptr i8, ptr %0, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 8
  %bound0 = icmp ult ptr %4, %i.db
  %bound1 = icmp ult ptr %0, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph86.split.split.us.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.dc = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat152 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = shl nuw i64 %index, 1                   ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dd
  %i.df = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dd
  %i.dg = getelementptr i8, ptr %i.de, i64 -4
  %i.dh = getelementptr i8, ptr %i.df, i64 28
  %wide.vec = load <8 x i32>, ptr %i.dg, align 4, !tbaa !13, !alias.scope !94 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec155 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec156 = load <8 x i32>, ptr %i.dh, align 4, !tbaa !13, !alias.scope !94 ; 2 uses
  %strided.vec157 = shufflevector <8 x i32> %wide.vec156, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec158 = shufflevector <8 x i32> %wide.vec156, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.di = shl <4 x i32> %strided.vec155, splat (i32 1)
  %i.dj = shl <4 x i32> %strided.vec158, splat (i32 1)
  %i.dk = and <4 x i32> %i.di, %broadcast.splat
  %i.dl = and <4 x i32> %i.dj, %broadcast.splat
  %i.dm = shl <4 x i32> %strided.vec, splat (i32 3)
  %i.dn = shl <4 x i32> %strided.vec157, splat (i32 3)
  %i.do = and <4 x i32> %i.dm, %broadcast.splat152
  %i.dp = and <4 x i32> %i.dn, %broadcast.splat152
  %i.dq = or <4 x i32> %i.do, %i.dk
  %i.dr = or <4 x i32> %i.dp, %i.dl
  %i.ds = ashr <4 x i32> %i.dq, %broadcast.splat154
  %i.dt = ashr <4 x i32> %i.dr, %broadcast.splat154
  %i.du = trunc <4 x i32> %i.ds to <4 x i8>
  %i.dv = trunc <4 x i32> %i.dt to <4 x i8>
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store <4 x i8> %i.du, ptr %i.dw, align 1, !tbaa !20, !alias.scope !95, !noalias !94
end_hunk_0
begin_hunk_1_@qtree_encode64:bb.a
  %i.pe = trunc i32 %i.pd to i8
  %i.pf = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pg = getelementptr inbounds i8, ptr %0, i64 %i.pf
  store i8 %i.pe, ptr %i.pg, align 1, !tbaa !20
  %i.ph = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.pi = icmp slt i64 %i.pf, %i.ph
  br i1 %i.pi, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.pj = add nsw i64 %i.pf, 1
  store i64 %i.pj, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.pk = add nsw i32 %i.oc, 2
  store i32 %i.pk, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit106

output_nbits.exit106:                             ; preds = %bb.ah, %bb.ak
  %i.pl = add nsw i64 %i.od, 10
  store i64 %i.pl, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit123

bb.al:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %notmask = shl nsw i32 -1, %bits_to_go3.promoted146
  %i.pm = xor i32 %notmask, -1
  %i.pn = and i32 %bitbuffer.promoted139, %i.pm
  %i.po = shl i32 %i.np, %bits_to_go3.promoted146
  %i.pp = or i32 %i.pn, %i.po                     ; 3 uses
  store i32 %i.pp, ptr @buffer2, align 4, !tbaa !13
  %i.pq = sub nsw i32 %i.oc, %bits_to_go3.promoted146 ; 5 uses
  store i32 %i.pq, ptr @bits_to_go2, align 4, !tbaa !13
  %i.pr = icmp slt i32 %i.pq, 1
  br i1 %i.pr, label %bb.an, label %output_nbits.exit108

bb.an:                                            ; preds = %bb.am
  %i.ps = sub nsw i32 0, %i.pq
  %i.pt = ashr i32 %i.pp, %i.ps
  %i.pu = trunc i32 %i.pt to i8
  %i.pv = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.pw = getelementptr inbounds i8, ptr %0, i64 %i.pv
  store i8 %i.pu, ptr %i.pw, align 1, !tbaa !20
  %i.px = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.py = icmp slt i64 %i.pv, %i.px
  br i1 %i.py, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.pz = add nsw i64 %i.pv, 1
  store i64 %i.pz, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.qa = add nsw i32 %i.pq, 8                    ; 2 uses
  store i32 %i.qa, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit108

output_nbits.exit108:                             ; preds = %bb.am, %bb.ap
  %bits_to_go2.promoted168 = phi i32 [ %i.pq, %bb.am ], [ %i.qa, %bb.ap ]
  %i.qb = zext nneg i32 %bits_to_go3.promoted146 to i64
  %i.qc = add nsw i64 %i.oe, %i.qb                ; 2 uses
  store i64 %i.qc, ptr @bitcount, align 8, !tbaa !22
  br label %bb.aq

bb.aq:                                            ; preds = %output_nbits.exit108, %bb.al
  %buffer2.promoted = phi i32 [ %i.pp, %output_nbits.exit108 ], [ %i.np, %bb.al ]
  %bits_to_go2.promoted = phi i32 [ %bits_to_go2.promoted168, %output_nbits.exit108 ], [ %i.oc, %bb.al ]
  %bitcount.promoted = phi i64 [ %i.qc, %output_nbits.exit108 ], [ %i.oe, %bb.al ]
  %i.qd = icmp sgt i32 %.0115.lcssa, 0
  br i1 %i.qd, label %.lr.ph133, label %.loopexit123

.lr.ph133:                                        ; preds = %bb.aq
  %noutchar.promoted = load i64, ptr @noutchar, align 8
  %i.qe = load i64, ptr @noutmax, align 8
  %i.qf = zext nneg i32 %.0115.lcssa to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph133, %output_nbits.exit109
  %indvars.iv = phi i64 [ %i.qf, %.lr.ph133 ], [ %indvars.iv.next, %output_nbits.exit109 ] ; 2 uses
  %i.qg = phi i32 [ %buffer2.promoted, %.lr.ph133 ], [ %i.qn, %output_nbits.exit109 ]
  %i.qh = phi i32 [ %bits_to_go2.promoted, %.lr.ph133 ], [ %i.qx, %output_nbits.exit109 ] ; 5 uses
  %i.qi = phi i64 [ %noutchar.promoted, %.lr.ph133 ], [ %i.qw, %output_nbits.exit109 ] ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !20
  %i.ql = zext i8 %i.qk to i32
  %i.qm = shl i32 %i.qg, 8
  %i.qn = or disjoint i32 %i.qm, %i.ql            ; 3 uses
  %i.qo = add nsw i32 %i.qh, -8
  %i.qp = icmp slt i32 %i.qh, 9
  br i1 %i.qp, label %bb.as, label %output_nbits.exit109

bb.as:                                            ; preds = %bb.ar
  %i.qq = sub nsw i32 8, %i.qh
  %i.qr = ashr i32 %i.qn, %i.qq
  %i.qs = trunc i32 %i.qr to i8
  %i.qt = getelementptr inbounds i8, ptr %0, i64 %i.qi
  store i8 %i.qs, ptr %i.qt, align 1, !tbaa !20
  %i.qu = icmp slt i64 %i.qi, %i.qe
  br i1 %i.qu, label %bb.at, label %output_nbits.exit109

bb.at:                                            ; preds = %bb.as
  %i.qv = add nsw i64 %i.qi, 1                    ; 2 uses
  store i64 %i.qv, ptr @noutchar, align 8, !tbaa !19
  br label %output_nbits.exit109

output_nbits.exit109:                             ; preds = %bb.as, %bb.at, %bb.ar
  %i.qw = phi i64 [ %i.qi, %bb.ar ], [ %i.qv, %bb.at ], [ %i.qi, %bb.as ]
  %i.qx = phi i32 [ %i.qo, %bb.ar ], [ %i.qh, %bb.at ], [ %i.qh, %bb.as ] ; 2 uses
  %i.qy = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.qy, label %bb.ar, label %..loopexit123_crit_edge, !llvm.loop !111

..loopexit123_crit_edge:                          ; preds = %output_nbits.exit109
  %i.qz = add i64 %bitcount.promoted, 8
  %i.ra = add nsw i32 %.0115.lcssa, -1
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 3
  %i.rd = add i64 %i.qz, %i.rc
  store i32 %i.qn, ptr @buffer2, align 4, !tbaa !13
  store i32 %i.qx, ptr @bits_to_go2, align 4, !tbaa !13
  store i64 %i.rd, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit123

.loopexit123:                                     ; preds = %bb.aq, %..loopexit123_crit_edge, %write_bdirect64.exit, %write_bdirect64.exit105, %output_nbits.exit, %output_nbits.exit106
  %i.re = icmp sgt i32 %.074154.in, 1
  br i1 %i.re, label %bb.e, label %._crit_edge157, !llvm.loop !112

._crit_edge157:                                   ; preds = %.loopexit123, %.preheader
  tail call void @free(ptr noundef %i.w) #14
  tail call void @free(ptr noundef %i.t) #14
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge157, %bb.d, %bb.b
  %.078 = phi i32 [ 413, %bb.b ], [ 413, %bb.d ], [ 0, %._crit_edge157 ]
  ret i32 %.078
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @qtree_onebit64(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 -1073741824, 1073741824) %2, i32 noundef range(i32 -1073741824, 1073741824) %3, ptr nofree noundef nonnull writeonly captures(none) %4, i32 noundef range(i32 0, 255) %5) unnamed_addr #8 {
bb.a:
  %i.a = zext nneg i32 %5 to i64                  ; 9 uses
  %i.b = insertelement <4 x i64> poison, i64 %i.a, i64 0
  %i.c = shufflevector <4 x i64> %i.b, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.d = shl <4 x i64> <i64 2, i64 1, i64 8, i64 4>, %i.c ; 16 uses
  %i.e = add nsw i32 %2, -1
  %i.f = icmp sgt i32 %2, 1
  br i1 %i.f, label %.lr.ph86, label %._crit_edge87

.lr.ph86:                                         ; preds = %bb.a
  %i.g = add nsw i32 %3, -1
  %i.h = icmp sgt i32 %3, 1
  br i1 %i.h, label %.lr.ph.us.preheader, label %.lr.ph86.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.i = shl i32 %1, 1                            ; 2 uses
  %i.j = and i32 %3, 2147483646
  %i.k = icmp slt i32 %i.j, %3
  %i.l = add nsw i32 %3, -2
  %i.m = lshr i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep174 = getelementptr i8, ptr %i.p, i64 16 ; 2 uses
  %i.q = getelementptr i8, ptr %4, i64 %i.n
  %scevgep175 = getelementptr i8, ptr %i.q, i64 1
  %i.r = extractelement <4 x i64> %i.d, i64 0
  %i.s = extractelement <4 x i64> %i.d, i64 2
  %i.t = add nsw i32 %3, -2
  %i.u = lshr i32 %i.t, 1                         ; 2 uses
  %narrow = add nuw i32 %i.u, 1
  %i.v = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check177 = icmp eq i32 %i.u, 0
  %n.vec186 = and i64 %i.v, 4294967294            ; 5 uses
  %i.w = shl nuw nsw i64 %n.vec186, 1             ; 2 uses
  %i.x = trunc nuw i64 %n.vec186 to i32
  %i.y = shl i32 %i.x, 1
  %broadcast.splat188 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat190 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splat192 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 3, i32 3>
  %broadcast.splat194 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n207 = icmp eq i64 %n.vec186, %i.v
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %indvars.iv124 = phi i32 [ %1, %.lr.ph.us.preheader ], [ %indvars.iv.next125, %bb.c ] ; 2 uses
  %indvars.iv120 = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next121, %bb.c ] ; 2 uses
  %.07184.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.2.us, %bb.c ]
  %.07583.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.cc, %bb.c ]
  %i.z = sext i32 %indvars.iv120 to i64           ; 5 uses
  %i.aa = sext i32 %indvars.iv124 to i64          ; 5 uses
  %i.ab = sext i32 %.07184.us to i64              ; 6 uses
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.us
  %i.ac = getelementptr i8, ptr %4, i64 %i.ab     ; 2 uses
  %i.ad = getelementptr i8, ptr %scevgep175, i64 %i.ab ; 2 uses
  %i.ae = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %i.ag = getelementptr i8, ptr %scevgep174, i64 %i.ae
  %i.ah = shl nsw i64 %i.aa, 3                    ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %scevgep174, i64 %i.ah
  %bound0179 = icmp ult ptr %i.ac, %i.ag
  %bound1180 = icmp ult ptr %i.af, %i.ad
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0182 = icmp ult ptr %i.ac, %i.aj
  %bound1183 = icmp ult ptr %i.ai, %i.ad
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict181, %found.conflict184
  br i1 %conflict.rdx, label %scalar.ph176.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck178
  %i.ak = add nsw i64 %n.vec186, %i.ab            ; 3 uses
  %i.al = add nsw i64 %i.w, %i.aa                 ; 2 uses
  %i.am = add nsw i64 %i.w, %i.z                  ; 2 uses
  %invariant.gep262 = getelementptr [8 x i8], ptr %0, i64 %i.aa
  %invariant.gep264 = getelementptr [8 x i8], ptr %0, i64 %i.z
  %invariant.gep266 = getelementptr i8, ptr %4, i64 %i.ab
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph185
  %index198 = phi i64 [ 0, %vector.ph185 ], [ %index.next205, %vector.body197 ] ; 3 uses
  %i.an = shl i64 %index198, 1                    ; 2 uses
  %gep263 = getelementptr [8 x i8], ptr %invariant.gep262, i64 %i.an
  %wide.vec199 = load <4 x i64>, ptr %gep263, align 8, !tbaa !22, !alias.scope !130 ; 2 uses
  %strided.vec200 = shufflevector <4 x i64> %wide.vec199, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec201 = shufflevector <4 x i64> %wide.vec199, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.ao = and <2 x i64> %strided.vec201, %broadcast.splat188
  %i.ap = shl <2 x i64> %strided.vec200, splat (i64 1)
  %i.aq = and <2 x i64> %i.ap, %broadcast.splat190
  %i.ar = or <2 x i64> %i.aq, %i.ao
  %gep265 = getelementptr [8 x i8], ptr %invariant.gep264, i64 %i.an
  %wide.vec202 = load <4 x i64>, ptr %gep265, align 8, !tbaa !22, !alias.scope !131 ; 2 uses
  %strided.vec203 = shufflevector <4 x i64> %wide.vec202, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec204 = shufflevector <4 x i64> %wide.vec202, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.as = shl <2 x i64> %strided.vec204, splat (i64 2)
  %i.at = and <2 x i64> %i.as, %broadcast.splat192
  %i.au = or <2 x i64> %i.ar, %i.at
  %i.av = shl <2 x i64> %strided.vec203, splat (i64 3)
  %i.aw = and <2 x i64> %i.av, %broadcast.splat194
  %i.ax = or <2 x i64> %i.au, %i.aw
  %i.ay = ashr <2 x i64> %i.ax, %broadcast.splat196
  %i.az = trunc <2 x i64> %i.ay to <2 x i8>
  %gep267 = getelementptr i8, ptr %invariant.gep266, i64 %index198
  store <2 x i8> %i.az, ptr %gep267, align 1, !tbaa !20, !alias.scope !132, !noalias !133
  %index.next205 = add nuw i64 %index198, 2       ; 2 uses
  %i.ba = icmp eq i64 %index.next205, %n.vec186
  br i1 %i.ba, label %middle.block206, label %vector.body197, !llvm.loop !117

middle.block206:                                  ; preds = %vector.body197
  %ind.escape = add nsw i64 %i.ak, -1
  br i1 %cmp.n207, label %._crit_edge.us, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck178, %.lr.ph.us, %middle.block206
  %indvars.iv128.ph = phi i64 [ %i.ab, %vector.memcheck178 ], [ %i.ab, %.lr.ph.us ], [ %i.ak, %middle.block206 ]
  %indvars.iv126.ph = phi i64 [ %i.aa, %vector.memcheck178 ], [ %i.aa, %.lr.ph.us ], [ %i.al, %middle.block206 ]
  %indvars.iv122.ph = phi i64 [ %i.z, %vector.memcheck178 ], [ %i.z, %.lr.ph.us ], [ %i.am, %middle.block206 ]
  %.07376.us.ph = phi i32 [ 0, %vector.memcheck178 ], [ 0, %.lr.ph.us ], [ %i.y, %middle.block206 ]
  br label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176.preheader, %scalar.ph176
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph176 ], [ %indvars.iv128.ph, %scalar.ph176.preheader ] ; 3 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %scalar.ph176 ], [ %indvars.iv126.ph, %scalar.ph176.preheader ] ; 2 uses
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph176 ], [ %indvars.iv122.ph, %scalar.ph176.preheader ] ; 2 uses
  %.07376.us = phi i32 [ %i.bm, %scalar.ph176 ], [ %.07376.us.ph, %scalar.ph176.preheader ]
  %i.bb = getelementptr [8 x i8], ptr %0, i64 %indvars.iv126
  %i.bc = getelementptr [8 x i8], ptr %0, i64 %indvars.iv122
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !22
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !22
  %i.bf = shufflevector <2 x i64> %i.bd, <2 x i64> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bg = shl <4 x i64> %i.bf, <i64 1, i64 0, i64 3, i64 2>
  %i.bh = and <4 x i64> %i.bg, %i.d
  %i.bi = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bh)
  %i.bj = ashr i64 %i.bi, %i.a
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds i8, ptr %4, i64 %indvars.iv128
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !20
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 2 ; 2 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 2 ; 2 uses
  %i.bm = add nuw nsw i32 %.07376.us, 2           ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.g
  br i1 %i.bn, label %scalar.ph176, label %._crit_edge.us, !llvm.loop !118

bb.b:                                             ; preds = %._crit_edge.us
  %i.bo = trunc nsw i64 %indvars.iv128.lcssa to i32
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next127.lcssa
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !22
  %i.br = shl i64 %i.bq, 1
  %i.bs = and i64 %i.br, %i.r
  %i.bt = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next123.lcssa
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.bv = shl i64 %i.bu, 3
  %i.bw = and i64 %i.bv, %i.s
  %i.bx = or i64 %i.bw, %i.bs
  %i.by = ashr i64 %i.bx, %i.a
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next129.lcssa
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !20
  %i.cb = add nsw i32 %i.bo, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %.2.us = phi i32 [ %i.cb, %bb.b ], [ %i.ce, %._crit_edge.us ] ; 2 uses
  %i.cc = add nuw nsw i32 %.07583.us, 2           ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.e
  %indvars.iv.next121 = add i32 %indvars.iv120, %i.i
  %indvars.iv.next125 = add i32 %indvars.iv124, %i.i
  br i1 %i.cd, label %.lr.ph.us, label %._crit_edge87.loopexit, !llvm.loop !119

._crit_edge.us:                                   ; preds = %scalar.ph176, %middle.block206
  %indvars.iv128.lcssa = phi i64 [ %ind.escape, %middle.block206 ], [ %indvars.iv128, %scalar.ph176 ]
  %indvars.iv.next129.lcssa = phi i64 [ %i.ak, %middle.block206 ], [ %indvars.iv.next129, %scalar.ph176 ] ; 2 uses
  %indvars.iv.next123.lcssa = phi i64 [ %i.am, %middle.block206 ], [ %indvars.iv.next123, %scalar.ph176 ]
  %indvars.iv.next127.lcssa = phi i64 [ %i.al, %middle.block206 ], [ %indvars.iv.next127, %scalar.ph176 ]
  %i.ce = trunc nsw i64 %indvars.iv.next129.lcssa to i32
  br i1 %i.k, label %bb.b, label %bb.c

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.cf = icmp eq i32 %3, 1
  br i1 %i.cf, label %.lr.ph86.split.split.us.preheader, label %.lr.ph86.split.split.preheader

.lr.ph86.split.split.preheader:                   ; preds = %.lr.ph86.split
  %i.cg = and i32 %2, 2147483646
  br label %._crit_edge87

.lr.ph86.split.split.us.preheader:                ; preds = %.lr.ph86.split
  %i.ch = sext i32 %1 to i64                      ; 2 uses
  %i.ci = add nsw i32 %2, -2                      ; 4 uses
  %i.cj = lshr i32 %i.ci, 1
  %i.ck = add nuw nsw i32 %i.cj, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ck to i64   ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.ch ; 2 uses
  %min.iters.check = icmp ult i32 %i.ci, 78
  br i1 %min.iters.check, label %.lr.ph86.split.split.us.preheader253, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph86.split.split.us.preheader
  %ident.check = icmp ne i32 %1, 1
  %i.cl = lshr i32 %i.ci, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %scevgep = getelementptr i8, ptr %0, i64 8      ; 2 uses
  %mul = shl nuw nsw i64 %i.cm, 4
  %i.cn = getelementptr i8, ptr %scevgep, i64 %mul
  %i.co = icmp ult ptr %i.cn, %scevgep
  %i.cp = or i1 %ident.check, %i.co
  br i1 %i.cp, label %.lr.ph86.split.split.us.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cq = getelementptr i8, ptr %4, i64 %wide.trip.count
  %i.cr = lshr i32 %i.ci, 1
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  %i.cu = getelementptr i8, ptr %0, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %bound0 = icmp ult ptr %4, %i.cv
  %bound1 = icmp ult ptr %0, %i.cq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph86.split.split.us.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 4 uses
  %i.cw = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %broadcast.splat = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splat153 = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splatinsert154 = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %broadcast.splat155 = shufflevector <2 x i64> %broadcast.splatinsert154, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.idx = shl i64 %index, 4
  %i.cx = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %wide.vec = load <4 x i64>, ptr %i.cy, align 8, !tbaa !22, !alias.scope !134 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec156 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.cz = shl <2 x i64> %strided.vec156, splat (i64 1)
  %i.da = and <2 x i64> %i.cz, %broadcast.splat
  %i.db = shl <2 x i64> %strided.vec, splat (i64 3)
  %i.dc = and <2 x i64> %i.db, %broadcast.splat153
  %i.dd = or <2 x i64> %i.dc, %i.da
  %i.de = ashr <2 x i64> %i.dd, %broadcast.splat155
  %i.df = trunc <2 x i64> %i.de to <2 x i8>
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 %index
  store <2 x i8> %i.df, ptr %i.dg, align 1, !tbaa !20, !alias.scope !135, !noalias !134
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge87.thread, label %.lr.ph86.split.split.us.preheader253

.lr.ph86.split.split.us.preheader253:             ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph86.split.split.us.preheader, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.split.split.us.preheader ], [ %i.cw, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph86.split.split.us.preheader ], [ %n.vec, %middle.block ]
  %i.di = extractelement <4 x i64> %i.d, i64 0
  %i.dj = extractelement <4 x i64> %i.d, i64 2
  br label %.lr.ph86.split.split.us

end_hunk_1
begin_hunk_2_@qtree_onebit64:bb.a
  %.17498.ph = phi i32 [ 0, %vector.memcheck222 ], [ 0, %.lr.ph.preheader ], [ %i.ez, %middle.block240 ]
  %i.fi = extractelement <4 x i64> %i.d, i64 3
  %i.fj = extractelement <4 x i64> %i.d, i64 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader246, %.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph ], [ %indvars.iv137.ph, %.lr.ph.preheader246 ] ; 2 uses
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph ], [ %indvars.iv135.ph, %.lr.ph.preheader246 ] ; 2 uses
  %.17498 = phi i32 [ %i.fw, %.lr.ph ], [ %.17498.ph, %.lr.ph.preheader246 ]
  %i.fk = getelementptr [8 x i8], ptr %0, i64 %indvars.iv135 ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !22
  %i.fn = shl i64 %i.fm, 2
  %i.fo = and i64 %i.fn, %i.fi
  %i.fp = load i64, ptr %i.fk, align 8, !tbaa !22
  %i.fq = shl i64 %i.fp, 3
  %i.fr = and i64 %i.fq, %i.fj
  %i.fs = or i64 %i.fr, %i.fo
  %i.ft = ashr i64 %i.fs, %i.a
  %i.fu = trunc i64 %i.ft to i8
  %i.fv = getelementptr inbounds i8, ptr %4, i64 %indvars.iv137
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !20
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 2 ; 2 uses
  %i.fw = add nuw nsw i32 %.17498, 2              ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.ec
  br i1 %i.fx, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !129

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block240
  %indvars.iv.next138.lcssa = phi i64 [ %i.ev, %middle.block240 ], [ %indvars.iv.next138, %.lr.ph ]
  %indvars.iv.next136.lcssa = phi i64 [ %i.ex, %middle.block240 ], [ %indvars.iv.next136, %.lr.ph ]
  %i.fy = and i32 %3, 2147483646
  %i.fz = trunc nsw i64 %indvars.iv.next138.lcssa to i32
  %i.ga = trunc nsw i64 %indvars.iv.next136.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %._crit_edge.loopexit, %bb.d
  %.174.lcssa = phi i32 [ 0, %bb.d ], [ %i.fy, %._crit_edge.loopexit ], [ 0, %.thread ]
  %.3.lcssa = phi i32 [ %.071.lcssa, %bb.d ], [ %i.fz, %._crit_edge.loopexit ], [ %i.ck, %.thread ]
  %.1.lcssa = phi i32 [ %i.eb, %bb.d ], [ %i.ga, %._crit_edge.loopexit ], [ %i.ea, %.thread ]
  %i.gb = icmp slt i32 %.174.lcssa, %3
  br i1 %i.gb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.gc = sext i32 %.1.lcssa to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !22
  %i.gf = shl i64 %i.ge, 3
  %i.gg = extractelement <4 x i64> %i.d, i64 2
  %i.gh = and i64 %i.gf, %i.gg
  %i.gi = ashr i64 %i.gh, %i.a
  %i.gj = trunc i64 %i.gi to i8
  %i.gk = sext i32 %.3.lcssa to i64
  %i.gl = getelementptr inbounds i8, ptr %4, i64 %i.gk
  store i8 %i.gj, ptr %i.gl, align 1, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge87.thread, %._crit_edge, %bb.e, %._crit_edge87
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!"long", !9, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!9, !9, i64 0}
!21 = !{!"long long", !9, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !14, !15, !16}
!25 = distinct !{!25, !14, !15}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14, !15, !16}
!28 = distinct !{!28, !14, !16, !15}
!29 = distinct !{!29, !14, !15, !16}
!30 = distinct !{!30, !14, !16, !15}
!31 = distinct !{!31, !14, !15, !16}
!32 = distinct !{!32, !14, !15, !16}
!33 = distinct !{!33, !14, !16, !15}
!34 = distinct !{!34, !14, !15}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14, !15, !16}
!45 = distinct !{!45, !14, !16, !15}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !14, !15, !16}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14, !15}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14, !15, !16}
!68 = distinct !{!68, !14, !15, !16}
!69 = distinct !{!69, !14, !16, !15}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !73}
!77 = distinct !{!77, !14, !15, !16}
!78 = distinct !{!78, !14, !15}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !14, !15, !16}
!84 = distinct !{!84, !14, !15}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !14, !15, !16}
!89 = distinct !{!89, !14, !15}
!90 = !{!74}
!91 = !{!75}
!92 = !{!76}
!93 = !{!75, !74}
!94 = !{!81}
!95 = !{!82}
!96 = !{!86}
!97 = !{!87}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !14, !15, !16}
!102 = distinct !{!102, !14, !15, !16}
!103 = distinct !{!103, !14, !15}
!104 = distinct !{!104, !14}
!105 = !{!99}
!106 = !{!100}
!107 = distinct !{!107, !14, !15, !16}
!108 = distinct !{!108, !14, !15, !16}
!109 = distinct !{!109, !14, !16, !15}
!110 = distinct !{!110, !14}
!111 = distinct !{!111, !14}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, i1 false, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !14, !15, !16}
!118 = distinct !{!118, !14, !15}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, i1 false, !"LVerDomain"}
!121 = distinct !{!121, !120}
!122 = distinct !{!122, !120}
!123 = distinct !{!123, !14, !15, !16}
!124 = distinct !{!124, !14, !15}
!125 = distinct !{!125, i1 false, !"LVerDomain"}
!126 = distinct !{!126, !125}
!127 = distinct !{!127, !125}
!128 = distinct !{!128, !14, !15, !16}
!129 = distinct !{!129, !14, !15}
!130 = !{!114}
!131 = !{!115}
!132 = !{!116}
!133 = !{!115, !114}
!134 = !{!121}
!135 = !{!122}
!136 = !{!126}
!137 = !{!127}
end_hunk_2
