Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fits_hcompress?download=true
inline.NumInlined: 60
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@qtree_encode:bb.a
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
  %conflict.rdx.a = or i1 %found.conflict181, %found.conflict184
  br i1 %conflict.rdx.a, label %scalar.ph176.preheader, label %vector.ph185

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
  %wide.vec199 = load <8 x i32>, ptr %gep263, align 4, !tbaa !13, !alias.scope !91 ; 2 uses
  %strided.vec200 = shufflevector <8 x i32> %wide.vec199, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec201 = shufflevector <8 x i32> %wide.vec199, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ap = and <4 x i32> %strided.vec201, %broadcast.splat188
  %i.aq = shl <4 x i32> %strided.vec200, splat (i32 1)
  %i.ar = and <4 x i32> %i.aq, %broadcast.splat190
  %i.as = or <4 x i32> %i.ar, %i.ap
  %gep265 = getelementptr [4 x i8], ptr %invariant.gep264, i64 %i.ao
  %wide.vec202 = load <8 x i32>, ptr %gep265, align 4, !tbaa !13, !alias.scope !92 ; 2 uses
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
  store <4 x i8> %i.ba, ptr %gep267, align 1, !tbaa !20, !alias.scope !93, !noalias !94
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
  %i.cs = sext i32 %1 to i64                      ; 8 uses
  %i.ct = add nsw i32 %2, -2                      ; 3 uses
  %i.cu = lshr i32 %i.ct, 1
  %i.cv = add nuw nsw i32 %i.cu, 1                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.cv to i64   ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.cs ; 9 uses
  %min.iters.check = icmp ult i32 %i.ct, 62
  br i1 %min.iters.check, label %.lr.ph86.split.split.us.preheader253, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph86.split.split.us.preheader
  %i.cw = getelementptr i8, ptr %4, i64 %wide.trip.count ; 2 uses
  %i.cx = lshr i32 %i.ct, 1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %6 = mul nsw i64 %i.cy, %i.cs
  %7 = shl i64 %6, 3
  %8 = getelementptr i8, ptr %0, i64 %7           ; 4 uses
  %9 = icmp ult ptr %0, %8
  %10 = select i1 %9, ptr %0, ptr %8
  %11 = icmp ugt ptr %0, %8
  %12 = select i1 %11, ptr %0, ptr %8
  %13 = getelementptr i8, ptr %12, i64 4
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %14 = or disjoint i64 %i.cz, 4
  %15 = mul i64 %14, %i.cs
  %i.da = getelementptr i8, ptr %0, i64 %15       ; 4 uses
  %16 = icmp ult ptr %i.da, %invariant.gep
  %17 = select i1 %16, ptr %i.da, ptr %invariant.gep
  %18 = icmp ugt ptr %i.da, %invariant.gep
  %19 = select i1 %18, ptr %i.da, ptr %invariant.gep
  %i.db = getelementptr i8, ptr %19, i64 4
  %bound0 = icmp ult ptr %4, %13
  %bound1 = icmp ult ptr %10, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  %bound0.a = icmp ult ptr %4, %i.db
  %bound1.a = icmp ult ptr %17, %i.cw
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict.a
  br i1 %conflict.rdx, label %.lr.ph86.split.split.us.preheader253, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.dc = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat152 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat154 = shufflevector <4 x i32> %broadcast.splatinsert153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = shl nuw i64 %index, 1                   ; 4 uses
  %20 = or disjoint i64 %i.dd, 2
  %21 = or disjoint i64 %i.dd, 4
  %22 = or disjoint i64 %i.dd, 6
  %23 = mul nsw i64 %i.dd, %i.cs                  ; 2 uses
  %24 = mul nsw i64 %20, %i.cs                    ; 2 uses
  %25 = mul nsw i64 %21, %i.cs                    ; 2 uses
  %26 = mul nsw i64 %22, %i.cs                    ; 2 uses
  %27 = getelementptr [4 x i8], ptr %invariant.gep, i64 %23
  %i.de = getelementptr [4 x i8], ptr %invariant.gep, i64 %24
  %i.df = getelementptr [4 x i8], ptr %invariant.gep, i64 %25
  %28 = getelementptr [4 x i8], ptr %invariant.gep, i64 %26
  %29 = load i32, ptr %27, align 4, !tbaa !13, !alias.scope !95
  %30 = load i32, ptr %i.de, align 4, !tbaa !13, !alias.scope !95
  %31 = load i32, ptr %i.df, align 4, !tbaa !13, !alias.scope !95
  %32 = load i32, ptr %28, align 4, !tbaa !13, !alias.scope !95
  %33 = insertelement <4 x i32> poison, i32 %29, i64 0
  %34 = insertelement <4 x i32> %33, i32 %30, i64 1
  %35 = insertelement <4 x i32> %34, i32 %31, i64 2
  %36 = insertelement <4 x i32> %35, i32 %32, i64 3
  %i.dg = shl <4 x i32> %36, splat (i32 1)
  %i.dh = and <4 x i32> %i.dg, %broadcast.splat
  %37 = getelementptr inbounds [4 x i8], ptr %0, i64 %23
  %38 = getelementptr inbounds [4 x i8], ptr %0, i64 %24
  %39 = getelementptr inbounds [4 x i8], ptr %0, i64 %25
  %40 = getelementptr inbounds [4 x i8], ptr %0, i64 %26
  %41 = load i32, ptr %37, align 4, !tbaa !13, !alias.scope !96
  %42 = load i32, ptr %38, align 4, !tbaa !13, !alias.scope !96
  %43 = load i32, ptr %39, align 4, !tbaa !13, !alias.scope !96
  %44 = load i32, ptr %40, align 4, !tbaa !13, !alias.scope !96
  %45 = insertelement <4 x i32> poison, i32 %41, i64 0
  %46 = insertelement <4 x i32> %45, i32 %42, i64 1
  %47 = insertelement <4 x i32> %46, i32 %43, i64 2
  %48 = insertelement <4 x i32> %47, i32 %44, i64 3
  %49 = shl <4 x i32> %48, splat (i32 3)
  %50 = and <4 x i32> %49, %broadcast.splat152
  %51 = or <4 x i32> %50, %i.dh
  %52 = ashr <4 x i32> %51, %broadcast.splat154
  %53 = trunc <4 x i32> %52 to <4 x i8>
  %54 = getelementptr inbounds nuw i8, ptr %4, i64 %index
  store <4 x i8> %53, ptr %54, align 1, !tbaa !20, !alias.scope !97, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge87.thread, label %.lr.ph86.split.split.us.preheader253

.lr.ph86.split.split.us.preheader253:             ; preds = %vector.memcheck, %.lr.ph86.split.split.us.preheader, %middle.block
  %indvars.iv115.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph86.split.split.us.preheader ], [ %i.dc, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph86.split.split.us.preheader ], [ %n.vec, %middle.block ]
  %i.dj = extractelement <2 x i32> %i.e, i64 0
  br label %.lr.ph86.split.split.us

.lr.ph86.split.split.us:                          ; preds = %.lr.ph86.split.split.us.preheader253, %.lr.ph86.split.split.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %.lr.ph86.split.split.us ], [ %indvars.iv115.ph, %.lr.ph86.split.split.us.preheader253 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph86.split.split.us ], [ %indvars.iv.ph, %.lr.ph86.split.split.us.preheader253 ] ; 2 uses
  %i.dk = mul nsw i64 %indvars.iv115, %i.cs       ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dk
  %i.dl = load i32, ptr %gep, align 4, !tbaa !13
  %i.dm = shl i32 %i.dl, 1
  %i.dn = and i32 %i.dm, %i.b
  %i.do = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !13
  %i.dq = shl i32 %i.dp, 3
  %i.dr = and i32 %i.dq, %i.dj
  %i.ds = or i32 %i.dr, %i.dn
  %i.dt = ashr i32 %i.ds, %5
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 2 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge87.thread, label %.lr.ph86.split.split.us, !llvm.loop !85

._crit_edge87.loopexit:                           ; preds = %bb.c
  %i.dw = and i32 %2, 2147483646
  br label %._crit_edge87

._crit_edge87:                                    ; preds = %.lr.ph86.split.split.preheader, %._crit_edge87.loopexit, %bb.a
  %.075.lcssa = phi i32 [ 0, %bb.a ], [ %i.cr, %.lr.ph86.split.split.preheader ], [ %i.dw, %._crit_edge87.loopexit ] ; 2 uses
  %.071.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph86.split.split.preheader ], [ %.2.us, %._crit_edge87.loopexit ] ; 2 uses
  %i.dx = icmp slt i32 %.075.lcssa, %2
  br i1 %i.dx, label %bb.d, label %bb.f

._crit_edge87.thread:                             ; preds = %.lr.ph86.split.split.us, %middle.block
  %indvars.iv.next116.lcssa = phi i64 [ %i.dc, %middle.block ], [ %indvars.iv.next116, %.lr.ph86.split.split.us ]
  %i.dy = trunc nuw nsw i64 %indvars.iv.next116.lcssa to i32 ; 2 uses
  %i.dz = icmp sgt i32 %2, %i.dy
  br i1 %i.dz, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge87.thread
  %i.ea = mul i32 %1, %i.dy
  br label %._crit_edge

bb.d:                                             ; preds = %._crit_edge87
  %i.eb = mul i32 %.075.lcssa, %1                 ; 2 uses
  %i.ec = add nsw i32 %3, -1
  %i.ed = icmp sgt i32 %3, 1
  br i1 %i.ed, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ee = sext i32 %i.eb to i64                   ; 5 uses
  %i.ef = sext i32 %.071.lcssa to i64             ; 6 uses
  %i.eg = add nsw i32 %3, -2                      ; 2 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = lshr i64 %i.eh, 1
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check221 = icmp ult i32 %i.eg, 22
  br i1 %min.iters.check221, label %.lr.ph.preheader246, label %vector.memcheck222

vector.memcheck222:                               ; preds = %.lr.ph.preheader
  %i.ek = getelementptr i8, ptr %4, i64 %i.ef
  %i.el = lshr i64 %i.eh, 1                       ; 2 uses
  %i.em = getelementptr i8, ptr %4, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ef
  %i.eo = getelementptr i8, ptr %i.en, i64 1
  %i.ep = shl nsw i64 %i.ee, 2                    ; 2 uses
  %i.eq = getelementptr i8, ptr %0, i64 %i.ep
  %i.er = shl nuw nsw i64 %i.el, 3
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 %i.ep
  %i.eu = getelementptr i8, ptr %i.et, i64 8
  %bound0223 = icmp ult ptr %i.ek, %i.eu
  %bound1224 = icmp ult ptr %i.eq, %i.eo
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.preheader246, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck222
  %n.vec227 = and i64 %i.ej, 4294967292           ; 5 uses
  %i.ev = add nsw i64 %n.vec227, %i.ef            ; 2 uses
  %i.ew = shl nuw nsw i64 %n.vec227, 1
  %i.ex = add nsw i64 %i.ew, %i.ee                ; 2 uses
  %i.ey = trunc nuw i64 %n.vec227 to i32
  %i.ez = shl i32 %i.ey, 1
  %broadcast.splat229 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat231 = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep268 = getelementptr [4 x i8], ptr %0, i64 %i.ee
  %invariant.gep270 = getelementptr i8, ptr %4, i64 %i.ef
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph226
  %index235 = phi i64 [ 0, %vector.ph226 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %.idx = shl i64 %index235, 3
  %gep269 = getelementptr i8, ptr %invariant.gep268, i64 %.idx
  %wide.vec236 = load <8 x i32>, ptr %gep269, align 4, !tbaa !13, !alias.scope !99 ; 2 uses
  %strided.vec237 = shufflevector <8 x i32> %wide.vec236, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec238 = shufflevector <8 x i32> %wide.vec236, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fa = shl <4 x i32> %strided.vec238, splat (i32 2)
  %i.fb = and <4 x i32> %i.fa, %broadcast.splat229
  %i.fc = shl <4 x i32> %strided.vec237, splat (i32 3)
  %i.fd = and <4 x i32> %i.fc, %broadcast.splat231
  %i.fe = or <4 x i32> %i.fd, %i.fb
  %i.ff = ashr <4 x i32> %i.fe, %broadcast.splat233
  %i.fg = trunc <4 x i32> %i.ff to <4 x i8>
  %gep271 = getelementptr i8, ptr %invariant.gep270, i64 %index235
  store <4 x i8> %i.fg, ptr %gep271, align 1, !tbaa !20, !alias.scope !100, !noalias !99
  %index.next239 = add nuw i64 %index235, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next239, %n.vec227
  br i1 %i.fh, label %middle.block240, label %vector.body234, !llvm.loop !89

middle.block240:                                  ; preds = %vector.body234
  %cmp.n241 = icmp eq i64 %i.ej, %n.vec227
  br i1 %cmp.n241, label %._crit_edge.loopexit, label %.lr.ph.preheader246

.lr.ph.preheader246:                              ; preds = %vector.memcheck222, %.lr.ph.preheader, %middle.block240
  %indvars.iv137.ph = phi i64 [ %i.ef, %vector.memcheck222 ], [ %i.ef, %.lr.ph.preheader ], [ %i.ev, %middle.block240 ]
  %indvars.iv135.ph = phi i64 [ %i.ee, %vector.memcheck222 ], [ %i.ee, %.lr.ph.preheader ], [ %i.ex, %middle.block240 ]
  %.17498.ph = phi i32 [ 0, %vector.memcheck222 ], [ 0, %.lr.ph.preheader ], [ %i.ez, %middle.block240 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader246, %.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph ], [ %indvars.iv137.ph, %.lr.ph.preheader246 ] ; 2 uses
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph ], [ %indvars.iv135.ph, %.lr.ph.preheader246 ] ; 2 uses
  %.17498 = phi i32 [ %i.fq, %.lr.ph ], [ %.17498.ph, %.lr.ph.preheader246 ]
  %i.fi = getelementptr [4 x i8], ptr %0, i64 %indvars.iv135
  %i.fj = load <2 x i32>, ptr %i.fi, align 4, !tbaa !13
  %i.fk = shl <2 x i32> %i.fj, <i32 3, i32 2>
  %i.fl = and <2 x i32> %i.fk, %i.e               ; 2 uses
  %shift = shufflevector <2 x i32> %i.fl, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or <2 x i32> %i.fl, %shift
  %i.fm = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %i.fn = ashr i32 %i.fm, %5
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds i8, ptr %4, i64 %indvars.iv137
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !20
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 2 ; 2 uses
  %i.fq = add nuw nsw i32 %.17498, 2              ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %i.ec
  br i1 %i.fr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !90

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block240
  %indvars.iv.next138.lcssa = phi i64 [ %i.ev, %middle.block240 ], [ %indvars.iv.next138, %.lr.ph ]
  %indvars.iv.next136.lcssa = phi i64 [ %i.ex, %middle.block240 ], [ %indvars.iv.next136, %.lr.ph ]
  %i.fs = and i32 %3, 2147483646
  %i.ft = trunc nsw i64 %indvars.iv.next138.lcssa to i32
  %i.fu = trunc nsw i64 %indvars.iv.next136.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %._crit_edge.loopexit, %bb.d
  %.174.lcssa = phi i32 [ 0, %bb.d ], [ %i.fs, %._crit_edge.loopexit ], [ 0, %.thread ]
  %.3.lcssa = phi i32 [ %.071.lcssa, %bb.d ], [ %i.ft, %._crit_edge.loopexit ], [ %i.cv, %.thread ]
  %.1.lcssa = phi i32 [ %i.eb, %bb.d ], [ %i.fu, %._crit_edge.loopexit ], [ %i.ea, %.thread ]
  %i.fv = icmp slt i32 %.174.lcssa, %3
  br i1 %i.fv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.fw = sext i32 %.1.lcssa to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !13
  %i.fz = shl i32 %i.fy, 3
  %i.ga = extractelement <2 x i32> %i.e, i64 0
  %i.gb = and i32 %i.fz, %i.ga
  %i.gc = ashr i32 %i.gb, %5
  %i.gd = trunc i32 %i.gc to i8
  %i.ge = sext i32 %.3.lcssa to i64
  %i.gf = getelementptr inbounds i8, ptr %4, i64 %i.ge
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge87.thread, %._crit_edge, %bb.e, %._crit_edge87
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @output_nnybble(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !20
  %i.c = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.d = shl i32 %i.c, 4
  %i.e = and i8 %i.b, 15
  %i.f = zext nneg i8 %i.e to i32
  %i.g = or disjoint i32 %i.d, %i.f               ; 2 uses
  store i32 %i.g, ptr @buffer2, align 4, !tbaa !13
  %i.h = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.i = add nsw i32 %i.h, -4
  store i32 %i.i, ptr @bits_to_go2, align 4, !tbaa !13
  %i.j = icmp slt i32 %i.h, 5
  br i1 %i.j, label %bb.c, label %output_nybble.exit

bb.c:                                             ; preds = %bb.b
  %i.k = sub nsw i32 4, %i.h
  %i.l = ashr i32 %i.g, %i.k
  %i.m = trunc i32 %i.l to i8
  %i.n = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  store i8 %i.m, ptr %i.o, align 1, !tbaa !20
  %i.p = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.q = icmp slt i64 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i64 %i.n, 1
  store i64 %i.r, ptr @noutchar, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = add nsw i32 %i.h, 4
  store i32 %i.s, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nybble.exit

output_nybble.exit:                               ; preds = %bb.b, %bb.e
  %i.t = load i64, ptr @bitcount, align 8, !tbaa !22
  %i.u = add nsw i64 %i.t, 4
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.v = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 8 uses
  %i.w = icmp slt i32 %i.v, 5
  br i1 %i.w, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %2, align 1, !tbaa !20
  %i.y = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.z = shl i32 %i.y, 4
  %i.aa = and i8 %i.x, 15
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 3 uses
  store i32 %i.ac, ptr @buffer2, align 4, !tbaa !13
  %i.ad = sub nsw i32 4, %i.v
  %i.ae = ashr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = load i64, ptr @noutchar, align 8, !tbaa !19 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !20
  %i.ai = load i64, ptr @noutmax, align 8, !tbaa !19 ; 2 uses
  %i.aj = icmp slt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %output_nybble.exit39

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i64 %i.ag, 1                    ; 2 uses
  store i64 %i.ak, ptr @noutchar, align 8, !tbaa !19
  br label %output_nybble.exit39

output_nybble.exit39:                             ; preds = %bb.g, %bb.h
  %i.al = phi i64 [ %i.ag, %bb.g ], [ %i.ak, %bb.h ] ; 3 uses
  %i.am = add nsw i32 %i.v, 4                     ; 2 uses
  store i32 %i.am, ptr @bits_to_go2, align 4, !tbaa !13
  %i.an = load i64, ptr @bitcount, align 8, !tbaa !22 ; 2 uses
  %i.ao = add nsw i64 %i.an, 4
  store i64 %i.ao, ptr @bitcount, align 8, !tbaa !22
  %i.ap = icmp eq i32 %1, 2
  br i1 %i.ap, label %bb.i, label %bb.m

bb.i:                                             ; preds = %output_nybble.exit39
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = shl i32 %i.ac, 4
  %i.at = and i8 %i.ar, 15
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  store i32 %i.av, ptr @buffer2, align 4, !tbaa !13
  store i32 %i.v, ptr @bits_to_go2, align 4, !tbaa !13
  %i.aw = icmp slt i32 %i.v, 1
  br i1 %i.aw, label %bb.j, label %output_nybble.exit40

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nsw i32 0, %i.v
  %i.ay = ashr i32 %i.av, %i.ax
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.al
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !20
  %i.bb = icmp slt i64 %i.al, %i.ai
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = add nsw i64 %i.al, 1
  store i64 %i.bc, ptr @noutchar, align 8, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bd = add nsw i32 %i.v, 8
  store i32 %i.bd, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nybble.exit40

output_nybble.exit40:                             ; preds = %bb.i, %bb.l
  %i.be = add nsw i64 %i.an, 8
  br label %.sink.split

bb.m:                                             ; preds = %output_nybble.exit39, %bb.f
  %i.bf = phi i32 [ %i.am, %output_nybble.exit39 ], [ %i.v, %bb.f ] ; 6 uses
  %.0 = phi i32 [ 1, %output_nybble.exit39 ], [ 0, %bb.f ] ; 5 uses
  %i.bg = sub nsw i32 8, %i.bf
  %i.bh = sub nsw i32 %1, %.0                     ; 2 uses
  %i.bi = sdiv i32 %i.bh, 2                       ; 7 uses
  %i.bj = icmp eq i32 %i.bf, 8
  %i.bk = icmp sgt i32 %i.bh, 1                   ; 2 uses
  br i1 %i.bj, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %buffer2.promoted = load i32, ptr @buffer2, align 4 ; 2 uses
  %noutchar.promoted = load i64, ptr @noutchar, align 8 ; 2 uses
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bl = zext nneg i32 %.0 to i64
  br label %.lr.ph

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr @buffer2, align 4, !tbaa !13
  %noutchar.promoted47 = load i64, ptr @noutchar, align 8 ; 9 uses
  br i1 %i.bk, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.n
  %i.bm = zext nneg i32 %.0 to i64                ; 8 uses
  %i.bn = add nsw i32 %i.bi, -1                   ; 3 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bn, 3
  br i1 %min.iters.check, label %.lr.ph50.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bq = getelementptr i8, ptr %0, i64 %noutchar.promoted47
  %i.br = add nsw i32 %i.bi, -1
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %noutchar.promoted47
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.bu, i64 1
  %i.bw = getelementptr i8, ptr %2, i64 %i.bm
  %i.bx = shl nuw nsw i64 %i.bs, 1
  %i.by = getelementptr i8, ptr %2, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.bm
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  %bound0 = icmp ult ptr %i.bq, %i.ca
  %bound1 = icmp ult ptr %i.bw, %i.bv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph50.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check85 = icmp ult i32 %i.bn, 15
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, 8589934576              ; 6 uses
  %i.cc = shl nuw nsw i64 %n.vec, 1
  %i.cd = or disjoint i64 %i.cc, %i.bm            ; 2 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = add i64 %noutchar.promoted47, %n.vec    ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 %noutchar.promoted47
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl nuw i64 %index, 1
  %i.ci = or disjoint i64 %i.ch, %i.bm            ; 16 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 18
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 22
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 26
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ci ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 30
  %i.do = load i8, ptr %i.cj, align 1, !tbaa !20, !alias.scope !108
  %i.dp = load i8, ptr %i.cl, align 1, !tbaa !20, !alias.scope !108
  %i.dq = load i8, ptr %i.cn, align 1, !tbaa !20, !alias.scope !108
  %i.dr = load i8, ptr %i.cp, align 1, !tbaa !20, !alias.scope !108
  %i.ds = load i8, ptr %i.cr, align 1, !tbaa !20, !alias.scope !108
  %i.dt = load i8, ptr %i.ct, align 1, !tbaa !20, !alias.scope !108
  %i.du = load i8, ptr %i.cv, align 1, !tbaa !20, !alias.scope !108
  %i.dv = load i8, ptr %i.cx, align 1, !tbaa !20, !alias.scope !108
  %i.dw = load i8, ptr %i.cz, align 1, !tbaa !20, !alias.scope !108
  %i.dx = load i8, ptr %i.db, align 1, !tbaa !20, !alias.scope !108
  %i.dy = load i8, ptr %i.dd, align 1, !tbaa !20, !alias.scope !108
  %i.dz = load i8, ptr %i.df, align 1, !tbaa !20, !alias.scope !108
  %i.ea = load i8, ptr %i.dh, align 1, !tbaa !20, !alias.scope !108
  %i.eb = load i8, ptr %i.dj, align 1, !tbaa !20, !alias.scope !108
  %i.ec = load i8, ptr %i.dl, align 1, !tbaa !20, !alias.scope !108
  %i.ed = load i8, ptr %i.dn, align 1, !tbaa !20, !alias.scope !108
  %i.ee = insertelement <16 x i8> poison, i8 %i.do, i64 0
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 1
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 2
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 3
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 4
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 5
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 6
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 7
  %i.em = insertelement <16 x i8> %i.el, i8 %i.dw, i64 8
  %i.en = insertelement <16 x i8> %i.em, i8 %i.dx, i64 9
  %i.eo = insertelement <16 x i8> %i.en, i8 %i.dy, i64 10
  %i.ep = insertelement <16 x i8> %i.eo, i8 %i.dz, i64 11
  %i.eq = insertelement <16 x i8> %i.ep, i8 %i.ea, i64 12
  %i.er = insertelement <16 x i8> %i.eq, i8 %i.eb, i64 13
  %i.es = insertelement <16 x i8> %i.er, i8 %i.ec, i64 14
  %i.et = insertelement <16 x i8> %i.es, i8 %i.ed, i64 15
  %i.eu = shl <16 x i8> %i.et, splat (i8 4)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cm, i64 5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.co, i64 7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cs, i64 11
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cu, i64 13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cw, i64 15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cy, i64 17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.da, i64 19
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dc, i64 21
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 23
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 25
  %i.fi = getelementptr inbounds nuw i8, ptr %i.di, i64 27
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dk, i64 29
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dm, i64 31
  %i.fl = load i8, ptr %i.ev, align 1, !tbaa !20, !alias.scope !108
  %i.fm = load i8, ptr %i.ew, align 1, !tbaa !20, !alias.scope !108
  %i.fn = load i8, ptr %i.ex, align 1, !tbaa !20, !alias.scope !108
  %i.fo = load i8, ptr %i.ey, align 1, !tbaa !20, !alias.scope !108
  %i.fp = load i8, ptr %i.ez, align 1, !tbaa !20, !alias.scope !108
  %i.fq = load i8, ptr %i.fa, align 1, !tbaa !20, !alias.scope !108
  %i.fr = load i8, ptr %i.fb, align 1, !tbaa !20, !alias.scope !108
  %i.fs = load i8, ptr %i.fc, align 1, !tbaa !20, !alias.scope !108
  %i.ft = load i8, ptr %i.fd, align 1, !tbaa !20, !alias.scope !108
  %i.fu = load i8, ptr %i.fe, align 1, !tbaa !20, !alias.scope !108
  %i.fv = load i8, ptr %i.ff, align 1, !tbaa !20, !alias.scope !108
  %i.fw = load i8, ptr %i.fg, align 1, !tbaa !20, !alias.scope !108
  %i.fx = load i8, ptr %i.fh, align 1, !tbaa !20, !alias.scope !108
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !20, !alias.scope !108
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !20, !alias.scope !108
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !20, !alias.scope !108
  %i.gb = insertelement <16 x i8> poison, i8 %i.fl, i64 0
  %i.gc = insertelement <16 x i8> %i.gb, i8 %i.fm, i64 1
  %i.gd = insertelement <16 x i8> %i.gc, i8 %i.fn, i64 2
  %i.ge = insertelement <16 x i8> %i.gd, i8 %i.fo, i64 3
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 4
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 5
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 6
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 7
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 8
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 9
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 10
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 11
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 12
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 13
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 14
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 15
  %i.gr = and <16 x i8> %i.gq, splat (i8 15)
  %i.gs = or disjoint <16 x i8> %i.gr, %i.eu
  %i.gt = getelementptr i8, ptr %i.cg, i64 %index
  store <16 x i8> %i.gs, ptr %i.gt, align 1, !tbaa !20, !alias.scope !109, !noalias !108
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit.sink.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.bp, 8589934588            ; 5 uses
  %i.gv = shl nuw nsw i64 %n.vec86, 1
  %i.gw = or disjoint i64 %i.gv, %i.bm            ; 2 uses
  %i.gx = trunc i64 %n.vec86 to i32
  %i.gy = add i64 %noutchar.promoted47, %n.vec86  ; 2 uses
  %i.gz = getelementptr i8, ptr %0, i64 %noutchar.promoted47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.ha = shl nuw i64 %index87, 1
  %i.hb = or disjoint i64 %i.ha, %i.bm            ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 %i.hb ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 6
  %i.hj = load i8, ptr %i.hc, align 1, !tbaa !20, !alias.scope !108
  %i.hk = load i8, ptr %i.he, align 1, !tbaa !20, !alias.scope !108
  %i.hl = load i8, ptr %i.hg, align 1, !tbaa !20, !alias.scope !108
  %i.hm = load i8, ptr %i.hi, align 1, !tbaa !20, !alias.scope !108
  %i.hn = insertelement <4 x i8> poison, i8 %i.hj, i64 0
  %i.ho = insertelement <4 x i8> %i.hn, i8 %i.hk, i64 1
  %i.hp = insertelement <4 x i8> %i.ho, i8 %i.hl, i64 2
  %i.hq = insertelement <4 x i8> %i.hp, i8 %i.hm, i64 3
  %i.hr = shl <4 x i8> %i.hq, splat (i8 4)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 5
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 7
  %i.hw = load i8, ptr %i.hs, align 1, !tbaa !20, !alias.scope !108
  %i.hx = load i8, ptr %i.ht, align 1, !tbaa !20, !alias.scope !108
  %i.hy = load i8, ptr %i.hu, align 1, !tbaa !20, !alias.scope !108
  %i.hz = load i8, ptr %i.hv, align 1, !tbaa !20, !alias.scope !108
  %i.ia = insertelement <4 x i8> poison, i8 %i.hw, i64 0
  %i.ib = insertelement <4 x i8> %i.ia, i8 %i.hx, i64 1
  %i.ic = insertelement <4 x i8> %i.ib, i8 %i.hy, i64 2
  %i.id = insertelement <4 x i8> %i.ic, i8 %i.hz, i64 3
  %i.ie = and <4 x i8> %i.id, splat (i8 15)
  %i.if = or disjoint <4 x i8> %i.ie, %i.hr
  %i.ig = getelementptr i8, ptr %i.gz, i64 %index87
  store <4 x i8> %i.if, ptr %i.ig, align 1, !tbaa !20, !alias.scope !109, !noalias !108
  %index.next88 = add nuw i64 %index87, 4         ; 2 uses
  %i.ih = icmp eq i64 %index.next88, %n.vec86
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.bp, %n.vec86
  br i1 %cmp.n89, label %.loopexit.sink.split, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv61.ph = phi i64 [ %i.bm, %iter.check ], [ %i.bm, %vector.memcheck ], [ %i.cd, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ] ; 3 uses
  %.03548.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ce, %vec.epilog.iter.check ], [ %i.gx, %vec.epilog.middle.block ] ; 4 uses
  %.ph = phi i64 [ %noutchar.promoted47, %iter.check ], [ %noutchar.promoted47, %vector.memcheck ], [ %i.cf, %vec.epilog.iter.check ], [ %i.gy, %vec.epilog.middle.block ] ; 3 uses
  %i.ii = sub i32 %i.bi, %.03548.ph
  %.neg = add i32 %.03548.ph, 1
  %xtraiter = and i32 %i.ii, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.prol.loopexit, label %.lr.ph50.prol

.lr.ph50.prol:                                    ; preds = %.lr.ph50.preheader
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv61.ph ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !20
  %i.il = shl i8 %i.ik, 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20
  %i.io = and i8 %i.in, 15
  %i.ip = or disjoint i8 %i.io, %i.il
  %i.iq = getelementptr inbounds i8, ptr %0, i64 %.ph
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !20
  %indvars.iv.next62.prol = add nuw nsw i64 %indvars.iv61.ph, 2 ; 2 uses
  %i.ir = add nsw i64 %.ph, 1                     ; 2 uses
  %i.is = add nuw nsw i32 %.03548.ph, 1
  br label %.lr.ph50.prol.loopexit

.lr.ph50.prol.loopexit:                           ; preds = %.lr.ph50.prol, %.lr.ph50.preheader
  %indvars.iv.next62.lcssa.unr = phi i64 [ poison, %.lr.ph50.preheader ], [ %indvars.iv.next62.prol, %.lr.ph50.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph50.preheader ], [ %i.ir, %.lr.ph50.prol ]
  %indvars.iv61.unr = phi i64 [ %indvars.iv61.ph, %.lr.ph50.preheader ], [ %indvars.iv.next62.prol, %.lr.ph50.prol ]
  %.03548.unr = phi i32 [ %.03548.ph, %.lr.ph50.preheader ], [ %i.is, %.lr.ph50.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph50.preheader ], [ %i.ir, %.lr.ph50.prol ]
  %i.it = icmp eq i32 %i.bi, %.neg
  br i1 %i.it, label %.loopexit.sink.split, label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.1, %.lr.ph50 ], [ %indvars.iv61.unr, %.lr.ph50.prol.loopexit ] ; 3 uses
  %.03548 = phi i32 [ %i.jo, %.lr.ph50 ], [ %.03548.unr, %.lr.ph50.prol.loopexit ]
  %i.iu = phi i64 [ %i.jn, %.lr.ph50 ], [ %.unr, %.lr.ph50.prol.loopexit ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv61 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !20
  %i.ix = shl i8 %i.iw, 4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !20
  %i.ja = and i8 %i.iz, 15
  %i.jb = or disjoint i8 %i.ja, %i.ix
  %i.jc = getelementptr inbounds i8, ptr %0, i64 %i.iu
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !20
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv61 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !20
  %i.jg = shl i8 %i.jf, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 3
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !20
  %i.jj = and i8 %i.ji, 15
  %i.jk = or disjoint i8 %i.jj, %i.jg
  %i.jl = getelementptr i8, ptr %0, i64 %i.iu
  %i.jm = getelementptr i8, ptr %i.jl, i64 1
  store i8 %i.jk, ptr %i.jm, align 1, !tbaa !20
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 4 ; 2 uses
  %i.jn = add nsw i64 %i.iu, 2                    ; 2 uses
  %i.jo = add nuw nsw i32 %.03548, 2              ; 2 uses
  %exitcond64.not.1 = icmp eq i32 %i.jo, %i.bi
  br i1 %exitcond64.not.1, label %.loopexit.sink.split, label %.lr.ph50, !llvm.loop !106

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.13643 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.kg, %.lr.ph ]
  %i.jp = phi i32 [ %buffer2.promoted, %.lr.ph.preheader ], [ %i.kb, %.lr.ph ]
  %i.jq = phi i64 [ %noutchar.promoted, %.lr.ph.preheader ], [ %i.kf, %.lr.ph ] ; 2 uses
  %i.jr = shl i32 %i.jp, 8
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !20
  %i.ju = shl i8 %i.jt, 4
  %i.jv = zext i8 %i.ju to i32
  %i.jw = or disjoint i32 %i.jr, %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !20
  %i.jz = and i8 %i.jy, 15
  %i.ka = zext nneg i8 %i.jz to i32
  %i.kb = or disjoint i32 %i.jw, %i.ka            ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.kc = ashr i32 %i.kb, %i.bg
  %i.kd = trunc i32 %i.kc to i8
  %i.ke = getelementptr inbounds i8, ptr %0, i64 %i.jq
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !20
  %i.kf = add nsw i64 %i.jq, 1                    ; 2 uses
  %i.kg = add nuw nsw i32 %.13643, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.kg, %i.bi
  br i1 %exitcond.not, label %..loopexit42_crit_edge, label %.lr.ph, !llvm.loop !107

..loopexit42_crit_edge:                           ; preds = %.lr.ph
  store i32 %i.kb, ptr @buffer2, align 4, !tbaa !13
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50, %middle.block, %vec.epilog.middle.block, %..loopexit42_crit_edge
  %.lcssa77.sink = phi i64 [ %i.kf, %..loopexit42_crit_edge ], [ %i.gy, %vec.epilog.middle.block ], [ %i.cf, %middle.block ], [ %.lcssa.unr, %.lr.ph50.prol.loopexit ], [ %i.jn, %.lr.ph50 ] ; 2 uses
  %.ph79 = phi i32 [ %i.kb, %..loopexit42_crit_edge ], [ 0, %vec.epilog.middle.block ], [ 0, %middle.block ], [ 0, %.lr.ph50 ], [ 0, %.lr.ph50.prol.loopexit ]
  %.3.ph.in = phi i64 [ %indvars.iv.next, %..loopexit42_crit_edge ], [ %i.gw, %vec.epilog.middle.block ], [ %i.cd, %middle.block ], [ %indvars.iv.next62.lcssa.unr, %.lr.ph50.prol.loopexit ], [ %indvars.iv.next62.1, %.lr.ph50 ]
  %.3.ph = trunc i64 %.3.ph.in to i32
  store i64 %.lcssa77.sink, ptr @noutchar, align 8, !tbaa !19
  %i.kh = shl i32 %i.bi, 3
  %i.ki = add i32 %i.kh, -8
  %i.kj = sext i32 %i.ki to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader, %bb.n
  %i.kk = phi i64 [ %noutchar.promoted47, %bb.n ], [ %noutchar.promoted, %.preheader ], [ %.lcssa77.sink, %.loopexit.sink.split ] ; 3 uses
  %i.kl = phi i32 [ 0, %bb.n ], [ %buffer2.promoted, %.preheader ], [ %.ph79, %.loopexit.sink.split ]
  %.237 = phi i64 [ -8, %bb.n ], [ -8, %.preheader ], [ %i.kj, %.loopexit.sink.split ]
  %.3 = phi i32 [ %.0, %bb.n ], [ %.0, %.preheader ], [ %.3.ph, %.loopexit.sink.split ]
  %i.km = load i64, ptr @bitcount, align 8, !tbaa !22
  %i.kn = add nsw i64 %i.km, %.237                ; 2 uses
  store i64 %i.kn, ptr @bitcount, align 8, !tbaa !22
  %.not = icmp eq i32 %.3, %1
  br i1 %.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ko = sext i32 %1 to i64
  %i.kp = getelementptr i8, ptr %2, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kp, i64 -1
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !20
  %i.ks = shl i32 %i.kl, 4
  %i.kt = and i8 %i.kr, 15
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = or disjoint i32 %i.ks, %i.ku            ; 2 uses
  store i32 %i.kv, ptr @buffer2, align 4, !tbaa !13
  %i.kw = add nsw i32 %i.bf, -4
  store i32 %i.kw, ptr @bits_to_go2, align 4, !tbaa !13
  %i.kx = icmp slt i32 %i.bf, 5
  br i1 %i.kx, label %bb.p, label %output_nybble.exit41

bb.p:                                             ; preds = %bb.o
  %i.ky = sub nsw i32 4, %i.bf
  %i.kz = ashr i32 %i.kv, %i.ky
  %i.la = trunc i32 %i.kz to i8
  %i.lb = getelementptr inbounds i8, ptr %0, i64 %i.kk
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !20
  %i.lc = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.ld = icmp slt i64 %i.kk, %i.lc
  br i1 %i.ld, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.le = add nsw i64 %i.kk, 1
  store i64 %i.le, ptr @noutchar, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.lf = add nsw i32 %i.bf, 4
  store i32 %i.lf, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nybble.exit41

output_nybble.exit41:                             ; preds = %bb.o, %bb.r
  %i.lg = add nsw i64 %i.kn, 4
  br label %.sink.split

.sink.split:                                      ; preds = %output_nybble.exit, %output_nybble.exit40, %output_nybble.exit41
  %.sink = phi i64 [ %i.lg, %output_nybble.exit41 ], [ %i.be, %output_nybble.exit40 ], [ %i.u, %output_nybble.exit ]
  store i64 %.sink, ptr @bitcount, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 414) i32 @qtree_encode64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef range(i32 -1073741824, 1073741824) %4, i32 noundef range(i32 0, 256) %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 2 uses
  %i.b = sitofp i32 %i.a to float
  %i.c = fpext float %i.b to double
  %i.d = tail call double @log(double noundef %i.c) #14
  %i.e = fdiv double %i.d, f0x3FE62E42FEFA39EF
  %i.f = fadd double %i.e, 5.000000e-01
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = shl nuw i32 1, %i.g
  %i.i = icmp sgt i32 %i.a, %i.h
  %i.j = zext i1 %i.i to i32
  %spec.select = add i32 %i.j, %i.g               ; 2 uses
  %i.k = add nsw i32 %3, 1                        ; 2 uses
  %i.l = sdiv i32 %i.k, 2
  %i.m = add nsw i32 %4, 1                        ; 2 uses
  %i.n = sdiv i32 %i.m, 2
  %i.o = mul nsw i32 %i.n, %i.l                   ; 3 uses
  %i.p = add nsw i32 %i.o, 1
  %i.q = sdiv i32 %i.p, 2                         ; 4 uses
  %i.r = shl nsw i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #15 ; 49 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ffpmsg(ptr noundef nonnull @.str.7) #14
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  %i.v = sext i32 %i.q to i64
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #15 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not158 = icmp eq i32 %5, 0
  br i1 %.not158, label %._crit_edge157, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader
  %i.y = ashr i32 %i.k, 1                         ; 2 uses
  %i.z = ashr i32 %i.m, 1                         ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  %wide.trip.count.i = zext nneg i32 %i.aa to i64
  %i.ac = icmp sgt i32 %spec.select, 1
  %invariant.gep.i = getelementptr i8, ptr %i.t, i64 1 ; 21 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.t) #14
  tail call void @ffpmsg(ptr noundef nonnull @.str.7) #14
  br label %bb.au

bb.e:                                             ; preds = %.lr.ph156, %.loopexit123
  %.074154.in = phi i32 [ %5, %.lr.ph156 ], [ %.074154, %.loopexit123 ] ; 2 uses
  %.074154 = add nsw i32 %.074154.in, -1          ; 4 uses
  tail call fastcc void @qtree_onebit64(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %i.t, i32 noundef %.074154)
  br i1 %i.ab, label %.lr.ph.i, label %bufcopy.exit

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %.1 = phi i32 [ %.2, %bb.i ], [ 0, %bb.e ]      ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.e ] ; 2 uses
  %i.ad = phi i32 [ %i.ax, %bb.i ], [ 0, %bb.e ]  ; 3 uses
  %i.ae = phi i32 [ %i.aw, %bb.i ], [ 0, %bb.e ]  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20  ; 2 uses
  %.not.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @code, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  %i.ak = shl i32 %i.aj, %i.ad
  %i.al = or i32 %i.ak, %i.ae                     ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @ncode, i64 %i.ah
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = add nsw i32 %i.an, %i.ad                ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 7
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = trunc i32 %i.al to i8
  %i.ar = sext i32 %.1 to i64
  %i.as = getelementptr inbounds i8, ptr %i.w, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !20
  %i.at = add nsw i32 %.1, 1                      ; 2 uses
  %.not15.i = icmp slt i32 %i.at, %i.q
  br i1 %.not15.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = ashr i32 %i.al, 8
  %i.av = add nsw i32 %i.ao, -8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.2 = phi i32 [ %.1, %.lr.ph.i ], [ %i.at, %bb.h ], [ %.1, %bb.f ] ; 2 uses
  %i.aw = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.au, %bb.h ], [ %i.al, %bb.f ] ; 2 uses
  %i.ax = phi i32 [ %i.ad, %.lr.ph.i ], [ %i.av, %bb.h ], [ %i.ao, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bufcopy.exit, label %.lr.ph.i, !llvm.loop !0

bufcopy.exit:                                     ; preds = %bb.i, %bb.e
  %bits_to_go3.promoted145 = phi i32 [ 0, %bb.e ], [ %i.ax, %bb.i ] ; 3 uses
  %bitbuffer.promoted138 = phi i32 [ 0, %bb.e ], [ %i.aw, %bb.i ] ; 3 uses
  %.3 = phi i32 [ 0, %bb.e ], [ %.2, %bb.i ]      ; 2 uses
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

bb.j:                                             ; preds = %bb.g
  %i.ay = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.az = shl i32 %i.ay, 4                        ; 2 uses
  store i32 %i.az, ptr @buffer2, align 4, !tbaa !13
  %i.ba = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.bb = add nsw i32 %i.ba, -4
  store i32 %i.bb, ptr @bits_to_go2, align 4, !tbaa !13
  %i.bc = icmp slt i32 %i.ba, 5
  br i1 %i.bc, label %bb.k, label %write_bdirect64.exit

bb.k:                                             ; preds = %bb.j
  %i.bd = sub nsw i32 4, %i.ba
  %i.be = ashr i32 %i.az, %i.bd
end_hunk_0
begin_hunk_1_@qtree_encode64:bb.a
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !20
  %.not63.us.i = icmp eq i8 %i.ce, 0
  %i.cf = select i1 %.not63.us.i, i8 0, i8 2
  %i.cg = or disjoint i8 %i.cf, %i.cd
  %i.ch = getelementptr i8, ptr %i.t, i64 %indvars.iv114.i ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20
  %.not64.us.i = icmp eq i8 %i.cj, 0
  %i.ck = select i1 %.not64.us.i, i8 0, i8 4
  %i.cl = or disjoint i8 %i.cg, %i.ck
  %i.cm = load i8, ptr %i.ch, align 1, !tbaa !20
  %.not65.us.i = icmp eq i8 %i.cm, 0
  %i.cn = select i1 %.not65.us.i, i8 0, i8 8
  %i.co = or disjoint i8 %i.cl, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv120.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !20
  %indvars.iv.next121.i = add nsw i64 %indvars.iv120.i, 1 ; 3 uses
  %indvars.iv.next115.i = add nsw i64 %indvars.iv114.i, 2 ; 2 uses
  %indvars.iv.next119.i = add nsw i64 %indvars.iv118.i, 2 ; 2 uses
  %i.cq = add nuw nsw i32 %.05666.us.i, 2         ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.bs
  br i1 %i.cr, label %bb.n, label %._crit_edge.us.i, !llvm.loop !1

bb.o:                                             ; preds = %._crit_edge.us.i
  %i.cs = trunc nsw i64 %indvars.iv120.i to i32
  %i.ct = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next119.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !20
  %.not61.us.i = icmp eq i8 %i.cu, 0
  %i.cv = select i1 %.not61.us.i, i8 0, i8 2
  %i.cw = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next115.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %.not62.us.i = icmp eq i8 %i.cx, 0
  %i.cy = select i1 %.not62.us.i, i8 0, i8 8
  %i.cz = or disjoint i8 %i.cy, %i.cv
  %i.da = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next121.i
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !20
  %i.db = add nsw i32 %i.cs, 2
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.us.i, %bb.o
  %.2.us.i = phi i32 [ %i.db, %bb.o ], [ %i.de, %._crit_edge.us.i ] ; 2 uses
  %i.dc = add nuw nsw i32 %.05873.us.i, 2         ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.bq
  %indvars.iv.next113.i = add i32 %indvars.iv112.i, %i.bu
  %indvars.iv.next117.i = add i32 %indvars.iv116.i, %i.bu
  br i1 %i.dd, label %.lr.ph.us.i, label %._crit_edge77.loopexit.i, !llvm.loop !2

._crit_edge.us.i:                                 ; preds = %bb.n
  %i.de = trunc nsw i64 %indvars.iv.next121.i to i32
  br i1 %.not, label %bb.p, label %bb.o

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i
  %i.df = icmp eq i32 %.0130, 1
  br i1 %i.df, label %iter.check, label %.lr.ph76.split.split.preheader.i

.lr.ph76.split.split.preheader.i:                 ; preds = %.lr.ph76.split.i
  %i.dg = and i32 %.073128, 2147483646
  br label %._crit_edge77.i

iter.check:                                       ; preds = %.lr.ph76.split.i
  %i.dh = add nsw i32 %.073128, -2                ; 3 uses
  %i.di = lshr i32 %i.dh, 1
  %i.dj = add nuw nsw i32 %i.di, 1                ; 2 uses
  %wide.trip.count.i88 = zext nneg i32 %i.dj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.dh, 6
  br i1 %min.iters.check, label %.lr.ph76.split.split.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check210 = icmp ult i32 %i.dh, 30
  br i1 %min.iters.check210, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dk = and i64 %wide.trip.count.i88, 12
  %n.vec = and i64 %wide.trip.count.i88, 2147483632 ; 5 uses
  %i.dl = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dm = shl nuw i64 %index, 1                   ; 17 uses
  %i.dn = or disjoint i64 %i.dm, 2                ; 2 uses
  %i.do = or disjoint i64 %i.dm, 4                ; 2 uses
  %i.dp = or disjoint i64 %i.dm, 6                ; 2 uses
  %i.dq = or disjoint i64 %i.dm, 8                ; 2 uses
  %i.dr = or disjoint i64 %i.dm, 10               ; 2 uses
  %i.ds = or disjoint i64 %i.dm, 12               ; 2 uses
  %i.dt = or disjoint i64 %i.dm, 14               ; 2 uses
  %i.du = or disjoint i64 %i.dm, 16               ; 2 uses
  %i.dv = or disjoint i64 %i.dm, 18               ; 2 uses
  %i.dw = or disjoint i64 %i.dm, 20               ; 2 uses
  %i.dx = or disjoint i64 %i.dm, 22               ; 2 uses
  %i.dy = or disjoint i64 %i.dm, 24               ; 2 uses
  %i.dz = or disjoint i64 %i.dm, 26               ; 2 uses
  %i.ea = or disjoint i64 %i.dm, 28               ; 2 uses
  %i.eb = or disjoint i64 %i.dm, 30               ; 2 uses
  %i.ec = getelementptr i8, ptr %invariant.gep.i, i64 %i.dm
  %i.ed = getelementptr i8, ptr %invariant.gep.i, i64 %i.dn
  %i.ee = getelementptr i8, ptr %invariant.gep.i, i64 %i.do
  %i.ef = getelementptr i8, ptr %invariant.gep.i, i64 %i.dp
  %i.eg = getelementptr i8, ptr %invariant.gep.i, i64 %i.dq
  %i.eh = getelementptr i8, ptr %invariant.gep.i, i64 %i.dr
  %i.ei = getelementptr i8, ptr %invariant.gep.i, i64 %i.ds
  %i.ej = getelementptr i8, ptr %invariant.gep.i, i64 %i.dt
  %i.ek = getelementptr i8, ptr %invariant.gep.i, i64 %i.du
  %i.el = getelementptr i8, ptr %invariant.gep.i, i64 %i.dv
  %i.em = getelementptr i8, ptr %invariant.gep.i, i64 %i.dw
  %i.en = getelementptr i8, ptr %invariant.gep.i, i64 %i.dx
  %i.eo = getelementptr i8, ptr %invariant.gep.i, i64 %i.dy
  %i.ep = getelementptr i8, ptr %invariant.gep.i, i64 %i.dz
  %i.eq = getelementptr i8, ptr %invariant.gep.i, i64 %i.ea
  %i.er = getelementptr i8, ptr %invariant.gep.i, i64 %i.eb
  %i.es = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.et = load i8, ptr %i.ed, align 1, !tbaa !20
  %i.eu = load i8, ptr %i.ee, align 1, !tbaa !20
  %i.ev = load i8, ptr %i.ef, align 1, !tbaa !20
  %i.ew = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ex = load i8, ptr %i.eh, align 1, !tbaa !20
  %i.ey = load i8, ptr %i.ei, align 1, !tbaa !20
  %i.ez = load i8, ptr %i.ej, align 1, !tbaa !20
  %i.fa = load i8, ptr %i.ek, align 1, !tbaa !20
  %i.fb = load i8, ptr %i.el, align 1, !tbaa !20
  %i.fc = load i8, ptr %i.em, align 1, !tbaa !20
  %i.fd = load i8, ptr %i.en, align 1, !tbaa !20
  %i.fe = load i8, ptr %i.eo, align 1, !tbaa !20
  %i.ff = load i8, ptr %i.ep, align 1, !tbaa !20
  %i.fg = load i8, ptr %i.eq, align 1, !tbaa !20
  %i.fh = load i8, ptr %i.er, align 1, !tbaa !20
  %i.fi = insertelement <16 x i8> poison, i8 %i.es, i64 0
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 1
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 2
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 3
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 4
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 5
  %i.fo = insertelement <16 x i8> %i.fn, i8 %i.ey, i64 6
  %i.fp = insertelement <16 x i8> %i.fo, i8 %i.ez, i64 7
  %i.fq = insertelement <16 x i8> %i.fp, i8 %i.fa, i64 8
  %i.fr = insertelement <16 x i8> %i.fq, i8 %i.fb, i64 9
  %i.fs = insertelement <16 x i8> %i.fr, i8 %i.fc, i64 10
  %i.ft = insertelement <16 x i8> %i.fs, i8 %i.fd, i64 11
  %i.fu = insertelement <16 x i8> %i.ft, i8 %i.fe, i64 12
  %i.fv = insertelement <16 x i8> %i.fu, i8 %i.ff, i64 13
  %i.fw = insertelement <16 x i8> %i.fv, i8 %i.fg, i64 14
  %i.fx = insertelement <16 x i8> %i.fw, i8 %i.fh, i64 15
  %i.fy = icmp eq <16 x i8> %i.fx, zeroinitializer
  %i.fz = select <16 x i1> %i.fy, <16 x i8> zeroinitializer, <16 x i8> splat (i8 2)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dm
  %i.gb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dn
  %i.gc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.do
  %i.gd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dp
  %i.ge = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ds
  %i.gh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dt
  %i.gi = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.du
  %i.gj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dv
  %i.gk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dw
  %i.gl = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dx
  %i.gm = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dy
  %i.gn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dz
  %i.go = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ea
  %i.gp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.eb
  %i.gq = load i8, ptr %i.ga, align 1, !tbaa !20
  %i.gr = load i8, ptr %i.gb, align 1, !tbaa !20
  %i.gs = load i8, ptr %i.gc, align 1, !tbaa !20
  %i.gt = load i8, ptr %i.gd, align 1, !tbaa !20
  %i.gu = load i8, ptr %i.ge, align 1, !tbaa !20
  %i.gv = load i8, ptr %i.gf, align 1, !tbaa !20
  %i.gw = load i8, ptr %i.gg, align 1, !tbaa !20
  %i.gx = load i8, ptr %i.gh, align 1, !tbaa !20
  %i.gy = load i8, ptr %i.gi, align 1, !tbaa !20
  %i.gz = load i8, ptr %i.gj, align 1, !tbaa !20
  %i.ha = load i8, ptr %i.gk, align 1, !tbaa !20
  %i.hb = load i8, ptr %i.gl, align 1, !tbaa !20
  %i.hc = load i8, ptr %i.gm, align 1, !tbaa !20
  %i.hd = load i8, ptr %i.gn, align 1, !tbaa !20
  %i.he = load i8, ptr %i.go, align 1, !tbaa !20
  %i.hf = load i8, ptr %i.gp, align 1, !tbaa !20
  %i.hg = insertelement <16 x i8> poison, i8 %i.gq, i64 0
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 1
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 2
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 3
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 4
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 5
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 6
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 7
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 8
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 9
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 10
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 11
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 12
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 13
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 14
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 15
  %i.hw = icmp eq <16 x i8> %i.hv, zeroinitializer
  %i.hx = select <16 x i1> %i.hw, <16 x i8> zeroinitializer, <16 x i8> splat (i8 8)
  %i.hy = or disjoint <16 x i8> %i.hx, %i.fz
  %i.hz = getelementptr inbounds nuw i8, ptr %i.t, i64 %index
  store <16 x i8> %i.hy, ptr %i.hz, align 1, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i88
  br i1 %cmp.n, label %._crit_edge77.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph76.split.split.us.i.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec211 = and i64 %wide.trip.count.i88, 2147483644 ; 4 uses
  %i.ib = shl nuw nsw i64 %n.vec211, 1            ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index212 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next213, %vec.epilog.vector.body ] ; 3 uses
  %i.ic = shl nuw i64 %index212, 1                ; 5 uses
  %i.id = or disjoint i64 %i.ic, 2                ; 2 uses
  %i.ie = or disjoint i64 %i.ic, 4                ; 2 uses
  %i.if = or disjoint i64 %i.ic, 6                ; 2 uses
  %i.ig = getelementptr i8, ptr %invariant.gep.i, i64 %i.ic
  %i.ih = getelementptr i8, ptr %invariant.gep.i, i64 %i.id
  %i.ii = getelementptr i8, ptr %invariant.gep.i, i64 %i.ie
  %i.ij = getelementptr i8, ptr %invariant.gep.i, i64 %i.if
  %i.ik = load i8, ptr %i.ig, align 1, !tbaa !20
  %i.il = load i8, ptr %i.ih, align 1, !tbaa !20
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !20
  %i.in = load i8, ptr %i.ij, align 1, !tbaa !20
  %i.io = insertelement <4 x i8> poison, i8 %i.ik, i64 0
  %i.ip = insertelement <4 x i8> %i.io, i8 %i.il, i64 1
  %i.iq = insertelement <4 x i8> %i.ip, i8 %i.im, i64 2
  %i.ir = insertelement <4 x i8> %i.iq, i8 %i.in, i64 3
  %i.is = icmp eq <4 x i8> %i.ir, zeroinitializer
  %i.it = select <4 x i1> %i.is, <4 x i8> zeroinitializer, <4 x i8> splat (i8 2)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ic
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.id
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ie
  %i.ix = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.if
  %i.iy = load i8, ptr %i.iu, align 1, !tbaa !20
  %i.iz = load i8, ptr %i.iv, align 1, !tbaa !20
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !20
  %i.jb = load i8, ptr %i.ix, align 1, !tbaa !20
  %i.jc = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jd = insertelement <4 x i8> %i.jc, i8 %i.iz, i64 1
  %i.je = insertelement <4 x i8> %i.jd, i8 %i.ja, i64 2
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.jb, i64 3
  %i.jg = icmp eq <4 x i8> %i.jf, zeroinitializer
  %i.jh = select <4 x i1> %i.jg, <4 x i8> zeroinitializer, <4 x i8> splat (i8 8)
  %i.ji = or disjoint <4 x i8> %i.jh, %i.it
  %i.jj = getelementptr inbounds nuw i8, ptr %i.t, i64 %index212
  store <4 x i8> %i.ji, ptr %i.jj, align 1, !tbaa !20
  %index.next213 = add nuw i64 %index212, 4       ; 2 uses
  %i.jk = icmp eq i64 %index.next213, %n.vec211
  br i1 %i.jk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n214 = icmp eq i64 %n.vec211, %wide.trip.count.i88
  br i1 %cmp.n214, label %._crit_edge77.thread.i, label %.lr.ph76.split.split.us.i.preheader

.lr.ph76.split.split.us.i.preheader:              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv107.i.ph = phi i64 [ 0, %iter.check ], [ %i.dl, %vec.epilog.iter.check ], [ %i.ib, %vec.epilog.middle.block ]
  %indvars.iv.i89.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec211, %vec.epilog.middle.block ]
  br label %.lr.ph76.split.split.us.i

.lr.ph76.split.split.us.i:                        ; preds = %.lr.ph76.split.split.us.i.preheader, %.lr.ph76.split.split.us.i
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.lr.ph76.split.split.us.i ], [ %indvars.iv107.i.ph, %.lr.ph76.split.split.us.i.preheader ] ; 3 uses
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %.lr.ph76.split.split.us.i ], [ %indvars.iv.i89.ph, %.lr.ph76.split.split.us.i.preheader ] ; 2 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv107.i
  %i.jl = load i8, ptr %gep.i, align 1, !tbaa !20
  %.not61.us83.i = icmp eq i8 %i.jl, 0
  %i.jm = select i1 %.not61.us83.i, i8 0, i8 2
  %i.jn = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv107.i
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !20
  %.not62.us84.i = icmp eq i8 %i.jo, 0
  %i.jp = select i1 %.not62.us84.i, i8 0, i8 8
  %i.jq = or disjoint i8 %i.jp, %i.jm
  %i.jr = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i89
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !20
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 2 ; 2 uses
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, %wide.trip.count.i88
  br i1 %exitcond.not.i91, label %._crit_edge77.thread.i, label %.lr.ph76.split.split.us.i, !llvm.loop !112

._crit_edge77.loopexit.i:                         ; preds = %bb.p
  %i.js = and i32 %.073128, 2147483646
  br label %._crit_edge77.i

._crit_edge77.i:                                  ; preds = %._crit_edge77.loopexit.i, %.lr.ph76.split.split.preheader.i, %.lr.ph
  %.058.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %i.dg, %.lr.ph76.split.split.preheader.i ], [ %i.js, %._crit_edge77.loopexit.i ] ; 2 uses
  %.054.lcssa.i = phi i32 [ 0, %.lr.ph ], [ 0, %.lr.ph76.split.split.preheader.i ], [ %.2.us.i, %._crit_edge77.loopexit.i ] ; 2 uses
  %i.jt = icmp slt i32 %.058.lcssa.i, %.073128
  br i1 %i.jt, label %bb.q, label %qtree_reduce.exit

._crit_edge77.thread.i:                           ; preds = %.lr.ph76.split.split.us.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next108.i.lcssa = phi i64 [ %i.ib, %vec.epilog.middle.block ], [ %i.dl, %middle.block ], [ %indvars.iv.next108.i, %.lr.ph76.split.split.us.i ]
  %i.ju = trunc nuw nsw i64 %indvars.iv.next108.i.lcssa to i32 ; 2 uses
  %i.jv = icmp sgt i32 %.073128, %i.ju
  br i1 %i.jv, label %._crit_edge.i, label %qtree_reduce.exit

bb.q:                                             ; preds = %._crit_edge77.i
  %i.jw = mul i32 %.058.lcssa.i, %.0130           ; 2 uses
  %i.jx = icmp sgt i32 %.0130, 1
  br i1 %i.jx, label %.lr.ph.preheader.i86, label %._crit_edge.i

.lr.ph.preheader.i86:                             ; preds = %bb.q
  %i.jy = sext i32 %i.jw to i64                   ; 2 uses
  %i.jz = sext i32 %.054.lcssa.i to i64           ; 2 uses
  %i.ka = add nsw i32 %.0130, -2                  ; 2 uses
  %i.kb = lshr i32 %i.ka, 1                       ; 2 uses
  %i.kc = add nuw i32 %i.kb, 1                    ; 2 uses
  %i.kd = icmp eq i32 %i.kb, 0
  br i1 %i.kd, label %.lr.ph.i87.epil.preheader, label %.lr.ph.preheader.i86.new

.lr.ph.preheader.i86.new:                         ; preds = %.lr.ph.preheader.i86
  %unroll_iter = and i32 %i.kc, -2
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87, %.lr.ph.preheader.i86.new
  %indvars.iv129.i = phi i64 [ %i.jz, %.lr.ph.preheader.i86.new ], [ %indvars.iv.next130.i.1, %.lr.ph.i87 ] ; 3 uses
  %indvars.iv127.i = phi i64 [ %i.jy, %.lr.ph.preheader.i86.new ], [ %indvars.iv.next128.i.1, %.lr.ph.i87 ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i86.new ], [ %niter.next.1, %.lr.ph.i87 ]
  %i.ke = getelementptr i8, ptr %i.t, i64 %indvars.iv127.i ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 1
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !20
  %.not59.i = icmp eq i8 %i.kg, 0
  %i.kh = select i1 %.not59.i, i8 0, i8 4
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !20
  %.not60.i = icmp eq i8 %i.ki, 0
  %i.kj = select i1 %.not60.i, i8 0, i8 8
  %i.kk = or disjoint i8 %i.kj, %i.kh
  %i.kl = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv129.i
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !20
  %i.km = getelementptr i8, ptr %i.t, i64 %indvars.iv127.i ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 2
  %i.ko = getelementptr i8, ptr %i.km, i64 3
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !20
  %.not59.i.1 = icmp eq i8 %i.kp, 0
  %i.kq = select i1 %.not59.i.1, i8 0, i8 4
  %i.kr = load i8, ptr %i.kn, align 1, !tbaa !20
  %.not60.i.1 = icmp eq i8 %i.kr, 0
  %i.ks = select i1 %.not60.i.1, i8 0, i8 8
  %i.kt = or disjoint i8 %i.ks, %i.kq
  %i.ku = getelementptr i8, ptr %i.t, i64 %indvars.iv129.i
  %i.kv = getelementptr i8, ptr %i.ku, i64 1
  store i8 %i.kt, ptr %i.kv, align 1, !tbaa !20
  %indvars.iv.next130.i.1 = add nsw i64 %indvars.iv129.i, 2 ; 3 uses
  %indvars.iv.next128.i.1 = add nsw i64 %indvars.iv127.i, 4 ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i87, !llvm.loop !3

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i87
  %i.kw = and i32 %i.ka, 2
  %lcmp.mod.not.not = icmp eq i32 %i.kw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i87.epil.preheader, label %._crit_edge.loopexit.i

.lr.ph.i87.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i86
  %indvars.iv129.i.epil.init = phi i64 [ %i.jz, %.lr.ph.preheader.i86 ], [ %indvars.iv.next130.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %indvars.iv127.i.epil.init = phi i64 [ %i.jy, %.lr.ph.preheader.i86 ], [ %indvars.iv.next128.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i32 %i.kc to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.kx = getelementptr i8, ptr %i.t, i64 %indvars.iv127.i.epil.init ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 1
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !20
  %.not59.i.epil = icmp eq i8 %i.kz, 0
  %i.la = select i1 %.not59.i.epil, i8 0, i8 4
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !20
  %.not60.i.epil = icmp eq i8 %i.lb, 0
  %i.lc = select i1 %.not60.i.epil, i8 0, i8 8
  %i.ld = or disjoint i8 %i.lc, %i.la
  %i.le = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv129.i.epil.init
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !20
  %indvars.iv.next130.i.epil = add nsw i64 %indvars.iv129.i.epil.init, 1
  %indvars.iv.next128.i.epil = add nsw i64 %indvars.iv127.i.epil.init, 2
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i87.epil.preheader
  %indvars.iv.next130.i.lcssa = phi i64 [ %indvars.iv.next130.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next130.i.epil, %.lr.ph.i87.epil.preheader ]
  %indvars.iv.next128.i.lcssa = phi i64 [ %indvars.iv.next128.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next128.i.epil, %.lr.ph.i87.epil.preheader ]
  %i.lf = and i32 %.0130, 2147483646
  %i.lg = trunc nsw i64 %indvars.iv.next130.i.lcssa to i32
  %i.lh = trunc nsw i64 %indvars.iv.next128.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge77.thread.i, %._crit_edge.loopexit.i, %bb.q
  %.157.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.lf, %._crit_edge.loopexit.i ], [ 0, %._crit_edge77.thread.i ]
  %.3.lcssa.i = phi i32 [ %.054.lcssa.i, %bb.q ], [ %i.lg, %._crit_edge.loopexit.i ], [ %i.dj, %._crit_edge77.thread.i ]
  %.1.lcssa.i = phi i32 [ %i.jw, %bb.q ], [ %i.lh, %._crit_edge.loopexit.i ], [ %i.ju, %._crit_edge77.thread.i ]
  %i.li = icmp slt i32 %.157.lcssa.i, %.0130
  br i1 %i.li, label %bb.r, label %qtree_reduce.exit

bb.r:                                             ; preds = %._crit_edge.i
  %i.lj = sext i32 %.1.lcssa.i to i64
  %i.lk = getelementptr inbounds i8, ptr %i.t, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !20
  %.not.i85 = icmp eq i8 %i.ll, 0
  %i.lm = select i1 %.not.i85, i8 0, i8 8
  %i.ln = sext i32 %.3.lcssa.i to i64
  %i.lo = getelementptr inbounds i8, ptr %i.t, i64 %i.ln
  store i8 %i.lm, ptr %i.lo, align 1, !tbaa !20
  br label %qtree_reduce.exit

qtree_reduce.exit:                                ; preds = %._crit_edge77.i, %._crit_edge77.thread.i, %._crit_edge.i, %bb.r
  %i.lp = add nsw i32 %.073128, 1
  %i.lq = ashr i32 %i.lp, 1                       ; 2 uses
  %i.lr = add nsw i32 %.0130, 1
  %i.ls = ashr i32 %i.lr, 1                       ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.lq                ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph.preheader.i94, label %.loopexit

.lr.ph.preheader.i94:                             ; preds = %qtree_reduce.exit
  %wide.trip.count.i97 = zext nneg i32 %i.lt to i64
  br label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.v, %.lr.ph.preheader.i94
  %bits_to_go3.promoted149 = phi i32 [ %bits_to_go3.promoted150, %.lr.ph.preheader.i94 ], [ %bits_to_go3.promoted148, %bb.v ]
  %bitbuffer.promoted142 = phi i32 [ %bitbuffer.promoted143, %.lr.ph.preheader.i94 ], [ %bitbuffer.promoted141, %bb.v ]
  %i.lv = phi i32 [ %i.bp, %.lr.ph.preheader.i94 ], [ %i.mq, %bb.v ]
  %i.lw = phi i32 [ %i.bo, %.lr.ph.preheader.i94 ], [ %i.mr, %bb.v ]
  %.4 = phi i32 [ %.0115126, %.lr.ph.preheader.i94 ], [ %.5, %bb.v ] ; 4 uses
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i101, %bb.v ] ; 2 uses
  %i.lx = phi i32 [ %i.bp, %.lr.ph.preheader.i94 ], [ %i.mt, %bb.v ] ; 3 uses
  %i.ly = phi i32 [ %i.bo, %.lr.ph.preheader.i94 ], [ %i.ms, %bb.v ] ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i99
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !20  ; 2 uses
  %.not.i100 = icmp eq i8 %i.ma, 0
  br i1 %.not.i100, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i98
  %i.mb = zext i8 %i.ma to i64                    ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @code, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !13
  %i.me = shl i32 %i.md, %i.lx
  %i.mf = or i32 %i.me, %i.ly                     ; 5 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr @ncode, i64 %i.mb
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !13
  %i.mi = add nsw i32 %i.mh, %i.lx                ; 5 uses
  %i.mj = icmp sgt i32 %i.mi, 7
  br i1 %i.mj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.mk = trunc i32 %i.mf to i8
  %i.ml = sext i32 %.4 to i64
  %i.mm = getelementptr inbounds i8, ptr %i.w, i64 %i.ml
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !20
  %i.mn = add nsw i32 %.4, 1                      ; 2 uses
  %.not15.i103 = icmp slt i32 %i.mn, %i.q
  br i1 %.not15.i103, label %bb.u, label %bufcopy.exit104

bb.u:                                             ; preds = %bb.t
  %i.mo = ashr i32 %i.mf, 8                       ; 3 uses
  %i.mp = add nsw i32 %i.mi, -8                   ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s, %.lr.ph.i98
  %bits_to_go3.promoted148 = phi i32 [ %bits_to_go3.promoted149, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ] ; 2 uses
  %bitbuffer.promoted141 = phi i32 [ %bitbuffer.promoted142, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ] ; 2 uses
  %i.mq = phi i32 [ %i.lv, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ] ; 2 uses
  %i.mr = phi i32 [ %i.lw, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %.lr.ph.i98 ], [ %i.mn, %bb.u ], [ %.4, %bb.s ] ; 2 uses
  %i.ms = phi i32 [ %i.ly, %.lr.ph.i98 ], [ %i.mo, %bb.u ], [ %i.mf, %bb.s ]
  %i.mt = phi i32 [ %i.lx, %.lr.ph.i98 ], [ %i.mp, %bb.u ], [ %i.mi, %bb.s ]
  %indvars.iv.next.i101 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i101, %wide.trip.count.i97
  br i1 %exitcond.not.i102, label %.loopexit, label %.lr.ph.i98, !llvm.loop !0

bufcopy.exit104:                                  ; preds = %bb.t
  %i.mu = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.mv = shl i32 %i.mu, 4                        ; 2 uses
  store i32 %i.mv, ptr @buffer2, align 4, !tbaa !13
  %i.mw = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.mx = add nsw i32 %i.mw, -4
  store i32 %i.mx, ptr @bits_to_go2, align 4, !tbaa !13
  %i.my = icmp slt i32 %i.mw, 5
  br i1 %i.my, label %bb.w, label %write_bdirect64.exit105

bb.w:                                             ; preds = %bufcopy.exit104
  %i.mz = sub nsw i32 4, %i.mw
  %i.na = ashr i32 %i.mv, %i.mz
  %i.nb = trunc i32 %i.na to i8
  %i.nc = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.nd = getelementptr inbounds i8, ptr %0, i64 %i.nc
  store i8 %i.nb, ptr %i.nd, align 1, !tbaa !20
  %i.ne = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.nf = icmp slt i64 %i.nc, %i.ne
  br i1 %i.nf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ng = add nsw i64 %i.nc, 1
  store i64 %i.ng, ptr @noutchar, align 8, !tbaa !19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.nh = add nsw i32 %i.mw, 4
  store i32 %i.nh, ptr @bits_to_go2, align 4, !tbaa !13
  br label %write_bdirect64.exit105

write_bdirect64.exit105:                          ; preds = %bufcopy.exit104, %bb.y
  %i.ni = load i64, ptr @bitcount, align 8, !tbaa !22
  %i.nj = add nsw i64 %i.ni, 4
  store i64 %i.nj, ptr @bitcount, align 8, !tbaa !22
  tail call fastcc void @qtree_onebit64(ptr noundef readonly %1, i32 noundef %2, i32 noundef range(i32 -1073741824, 1073741824) %3, i32 noundef range(i32 -1073741824, 1073741824) %4, ptr noundef nonnull %i.t, i32 noundef range(i32 0, 255) %.074154)
  tail call fastcc void @output_nnybble(ptr noundef %0, i32 noundef %i.o, ptr noundef nonnull %i.t)
  br label %.loopexit123

.loopexit:                                        ; preds = %bb.v, %qtree_reduce.exit
  %bits_to_go3.promoted147 = phi i32 [ %bits_to_go3.promoted150, %qtree_reduce.exit ], [ %bits_to_go3.promoted148, %bb.v ] ; 2 uses
  %bitbuffer.promoted140 = phi i32 [ %bitbuffer.promoted143, %qtree_reduce.exit ], [ %bitbuffer.promoted141, %bb.v ] ; 2 uses
  %i.nk = phi i32 [ %i.bp, %qtree_reduce.exit ], [ %i.mq, %bb.v ]
  %i.nl = phi i32 [ %i.bo, %qtree_reduce.exit ], [ %i.mr, %bb.v ]
  %.6.ph = phi i32 [ %.0115126, %qtree_reduce.exit ], [ %.5, %bb.v ] ; 2 uses
  %i.nm = add nuw nsw i32 %.075127, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.nm, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.loopexit, %bufcopy.exit
  %bits_to_go3.promoted146 = phi i32 [ %bits_to_go3.promoted145, %bufcopy.exit ], [ %bits_to_go3.promoted147, %.loopexit ] ; 9 uses
  %bitbuffer.promoted139 = phi i32 [ %bitbuffer.promoted138, %bufcopy.exit ], [ %bitbuffer.promoted140, %.loopexit ] ; 2 uses
  %.0115.lcssa = phi i32 [ %.3, %bufcopy.exit ], [ %.6.ph, %.loopexit ] ; 4 uses
  %i.nn = load i32, ptr @buffer2, align 4, !tbaa !13
  %i.no = shl i32 %i.nn, 4
  %i.np = or disjoint i32 %i.no, 15               ; 6 uses
  store i32 %i.np, ptr @buffer2, align 4, !tbaa !13
  %i.nq = load i32, ptr @bits_to_go2, align 4, !tbaa !13 ; 4 uses
  %i.nr = add nsw i32 %i.nq, -4                   ; 2 uses
  store i32 %i.nr, ptr @bits_to_go2, align 4, !tbaa !13
  %i.ns = icmp slt i32 %i.nq, 5
  br i1 %i.ns, label %bb.z, label %output_nybble.exit

bb.z:                                             ; preds = %._crit_edge
  %i.nt = sub nsw i32 4, %i.nq
  %i.nu = ashr i32 %i.np, %i.nt
  %i.nv = trunc i32 %i.nu to i8
  %i.nw = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.nx = getelementptr inbounds i8, ptr %0, i64 %i.nw
  store i8 %i.nv, ptr %i.nx, align 1, !tbaa !20
  %i.ny = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.nz = icmp slt i64 %i.nw, %i.ny
  br i1 %i.nz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.oa = add nsw i64 %i.nw, 1
  store i64 %i.oa, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ob = add nsw i32 %i.nq, 4                    ; 2 uses
  store i32 %i.ob, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nybble.exit

output_nybble.exit:                               ; preds = %._crit_edge, %bb.ab
  %i.oc = phi i32 [ %i.nr, %._crit_edge ], [ %i.ob, %bb.ab ] ; 7 uses
  %i.od = load i64, ptr @bitcount, align 8, !tbaa !22 ; 2 uses
  %i.oe = add nsw i64 %i.od, 4                    ; 4 uses
  store i64 %i.oe, ptr @bitcount, align 8, !tbaa !22
  %i.of = icmp eq i32 %.0115.lcssa, 0
  %i.og = icmp sgt i32 %bits_to_go3.promoted146, 0 ; 2 uses
  br i1 %i.of, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %output_nybble.exit
  br i1 %i.og, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %notmask83 = shl nsw i32 -1, %bits_to_go3.promoted146
  %i.oh = xor i32 %notmask83, -1
  %i.oi = and i32 %bitbuffer.promoted139, %i.oh
  %i.oj = shl i32 %i.np, %bits_to_go3.promoted146
  %i.ok = or i32 %i.oi, %i.oj                     ; 2 uses
  store i32 %i.ok, ptr @buffer2, align 4, !tbaa !13
  %i.ol = sub nsw i32 %i.oc, %bits_to_go3.promoted146 ; 4 uses
  store i32 %i.ol, ptr @bits_to_go2, align 4, !tbaa !13
  %i.om = icmp slt i32 %i.ol, 1
  br i1 %i.om, label %bb.ae, label %output_nbits.exit

bb.ae:                                            ; preds = %bb.ad
  %i.on = sub nsw i32 0, %i.ol
  %i.oo = ashr i32 %i.ok, %i.on
  %i.op = trunc i32 %i.oo to i8
  %i.oq = load i64, ptr @noutchar, align 8, !tbaa !19 ; 3 uses
  %i.or = getelementptr inbounds i8, ptr %0, i64 %i.oq
  store i8 %i.op, ptr %i.or, align 1, !tbaa !20
  %i.os = load i64, ptr @noutmax, align 8, !tbaa !19
  %i.ot = icmp slt i64 %i.oq, %i.os
  br i1 %i.ot, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ou = add nsw i64 %i.oq, 1
  store i64 %i.ou, ptr @noutchar, align 8, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ov = add nsw i32 %i.ol, 8
  store i32 %i.ov, ptr @bits_to_go2, align 4, !tbaa !13
  br label %output_nbits.exit

output_nbits.exit:                                ; preds = %bb.ad, %bb.ag
  %i.ow = zext nneg i32 %bits_to_go3.promoted146 to i64
  %i.ox = add nsw i64 %i.oe, %i.ow
  store i64 %i.ox, ptr @bitcount, align 8, !tbaa !22
  br label %.loopexit123

bb.ah:                                            ; preds = %bb.ac
  %i.oy = shl i32 %i.np, 6
  %i.oz = or disjoint i32 %i.oy, 62               ; 2 uses
  store i32 %i.oz, ptr @buffer2, align 4, !tbaa !13
  %i.pa = add nsw i32 %i.oc, -6
  store i32 %i.pa, ptr @bits_to_go2, align 4, !tbaa !13
  %i.pb = icmp slt i32 %i.oc, 7
  br i1 %i.pb, label %bb.ai, label %output_nbits.exit106

bb.ai:                                            ; preds = %bb.ah
  %i.pc = sub nsw i32 6, %i.oc
  %i.pd = ashr i32 %i.oz, %i.pc
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
  br i1 %i.qy, label %bb.ar, label %..loopexit123_crit_edge, !llvm.loop !114

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
  br i1 %i.re, label %bb.e, label %._crit_edge157, !llvm.loop !115

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
  %i.a = zext nneg i32 %5 to i64                  ; 13 uses
  %6 = shl nuw i64 1, %i.a                        ; 2 uses
  %7 = shl i64 2, %i.a                            ; 6 uses
  %8 = shl i64 4, %i.a                            ; 4 uses
  %9 = shl i64 8, %i.a                            ; 9 uses
  %i.b = add nsw i32 %2, -1
  %i.c = icmp sgt i32 %2, 1
  br i1 %i.c, label %.lr.ph86, label %.lr.ph86.split.split.us.preheader253

.lr.ph86:                                         ; preds = %bb.a
  %i.d = add nsw i32 %3, -1
  %i.e = icmp sgt i32 %3, 1
  br i1 %i.e, label %.lr.ph.us.preheader, label %.lr.ph86.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph86
  %i.f = shl i32 %1, 1                            ; 2 uses
  %i.g = and i32 %3, 2147483646
  %i.h = icmp slt i32 %i.g, %3
  %i.i = add nsw i32 %3, -2
  %i.j = lshr i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 4
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep174 = getelementptr i8, ptr %i.m, i64 16 ; 2 uses
  %i.n = getelementptr i8, ptr %4, i64 %i.k
  %scevgep175 = getelementptr i8, ptr %i.n, i64 1
  %i.o = add nsw i32 %3, -2
  %i.p = lshr i32 %i.o, 1                         ; 2 uses
  %narrow = add nuw i32 %i.p, 1
  %i.q = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check177 = icmp eq i32 %i.p, 0
  %n.vec186 = and i64 %i.q, 4294967294            ; 5 uses
  %i.r = shl nuw nsw i64 %n.vec186, 1             ; 2 uses
  %i.s = trunc nuw i64 %n.vec186 to i32
  %i.t = shl i32 %i.s, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %6, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <2 x i64> poison, i64 %7, i64 0
  %broadcast.splat166 = shufflevector <2 x i64> %broadcast.splatinsert165, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <2 x i64> poison, i64 %8, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert167, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <2 x i64> poison, i64 %9, i64 0
  %broadcast.splat170 = shufflevector <2 x i64> %broadcast.splatinsert169, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n207 = icmp eq i64 %n.vec186, %i.q
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.c
  %indvars.iv124 = phi i32 [ %1, %.lr.ph.us.preheader ], [ %indvars.iv.next125, %bb.c ] ; 2 uses
  %indvars.iv120 = phi i32 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next121, %bb.c ] ; 2 uses
  %.07184.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %.2.us, %bb.c ]
  %.07583.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.br, %bb.c ]
  %i.u = sext i32 %indvars.iv120 to i64           ; 5 uses
  %i.v = sext i32 %indvars.iv124 to i64           ; 5 uses
  %i.w = sext i32 %.07184.us to i64               ; 6 uses
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck178

vector.memcheck178:                               ; preds = %.lr.ph.us
  %i.x = getelementptr i8, ptr %4, i64 %i.w       ; 2 uses
  %i.y = getelementptr i8, ptr %scevgep175, i64 %i.w ; 2 uses
  %i.z = shl nsw i64 %i.u, 3                      ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %scevgep174, i64 %i.z
  %i.ac = shl nsw i64 %i.v, 3                     ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %i.ae = getelementptr i8, ptr %scevgep174, i64 %i.ac
  %bound0179 = icmp ult ptr %i.x, %i.ab
  %bound1180 = icmp ult ptr %i.aa, %i.y
  %found.conflict181 = and i1 %bound0179, %bound1180
  %bound0182 = icmp ult ptr %i.x, %i.ae
  %bound1183 = icmp ult ptr %i.ad, %i.y
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict181, %found.conflict184
  br i1 %conflict.rdx, label %scalar.ph176.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck178
  %i.af = add nsw i64 %n.vec186, %i.w             ; 3 uses
  %i.ag = add nsw i64 %i.r, %i.v                  ; 2 uses
  %i.ah = add nsw i64 %i.r, %i.u                  ; 2 uses
  %invariant.gep262 = getelementptr [8 x i8], ptr %0, i64 %i.v
  %invariant.gep264 = getelementptr [8 x i8], ptr %0, i64 %i.u
  %invariant.gep266 = getelementptr i8, ptr %4, i64 %i.w
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph185
  %index198 = phi i64 [ 0, %vector.ph185 ], [ %index.next205, %vector.body197 ] ; 3 uses
  %i.ai = shl i64 %index198, 1                    ; 2 uses
  %gep263 = getelementptr [8 x i8], ptr %invariant.gep262, i64 %i.ai
  %wide.vec199 = load <4 x i64>, ptr %gep263, align 8, !tbaa !22, !alias.scope !128 ; 2 uses
  %strided.vec200 = shufflevector <4 x i64> %wide.vec199, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec201 = shufflevector <4 x i64> %wide.vec199, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.aj = and <2 x i64> %strided.vec201, %broadcast.splat
  %i.ak = shl <2 x i64> %strided.vec200, splat (i64 1)
  %i.al = and <2 x i64> %i.ak, %broadcast.splat166
  %i.am = or <2 x i64> %i.al, %i.aj
  %gep265 = getelementptr [8 x i8], ptr %invariant.gep264, i64 %i.ai
  %wide.vec202 = load <4 x i64>, ptr %gep265, align 8, !tbaa !22, !alias.scope !129 ; 2 uses
  %strided.vec203 = shufflevector <4 x i64> %wide.vec202, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec204 = shufflevector <4 x i64> %wide.vec202, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.an = shl <2 x i64> %strided.vec204, splat (i64 2)
  %i.ao = and <2 x i64> %i.an, %broadcast.splat190
  %i.ap = or <2 x i64> %i.am, %i.ao
  %i.aq = shl <2 x i64> %strided.vec203, splat (i64 3)
  %i.ar = and <2 x i64> %i.aq, %broadcast.splat170
  %i.as = or <2 x i64> %i.ap, %i.ar
  %i.at = ashr <2 x i64> %i.as, %broadcast.splat196
  %i.au = trunc <2 x i64> %i.at to <2 x i8>
  %gep267 = getelementptr i8, ptr %invariant.gep266, i64 %index198
  store <2 x i8> %i.au, ptr %gep267, align 1, !tbaa !20, !alias.scope !130, !noalias !131
  %index.next205 = add nuw i64 %index198, 2       ; 2 uses
  %i.av = icmp eq i64 %index.next205, %n.vec186
  br i1 %i.av, label %middle.block206, label %vector.body197, !llvm.loop !120

middle.block206:                                  ; preds = %vector.body197
  %ind.escape = add nsw i64 %i.af, -1
  br i1 %cmp.n207, label %._crit_edge.us, label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck178, %.lr.ph.us, %middle.block206
  %indvars.iv128.ph = phi i64 [ %i.w, %vector.memcheck178 ], [ %i.w, %.lr.ph.us ], [ %i.af, %middle.block206 ]
  %indvars.iv126.ph = phi i64 [ %i.v, %vector.memcheck178 ], [ %i.v, %.lr.ph.us ], [ %i.ag, %middle.block206 ]
  %indvars.iv122.ph = phi i64 [ %i.u, %vector.memcheck178 ], [ %i.u, %.lr.ph.us ], [ %i.ah, %middle.block206 ]
  %.07376.us.ph = phi i32 [ 0, %vector.memcheck178 ], [ 0, %.lr.ph.us ], [ %i.t, %middle.block206 ]
  br label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176.preheader, %scalar.ph176
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %scalar.ph176 ], [ %indvars.iv128.ph, %scalar.ph176.preheader ] ; 3 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %scalar.ph176 ], [ %indvars.iv126.ph, %scalar.ph176.preheader ] ; 2 uses
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph176 ], [ %indvars.iv122.ph, %scalar.ph176.preheader ] ; 2 uses
  %.07376.us = phi i32 [ %i.bb, %scalar.ph176 ], [ %.07376.us.ph, %scalar.ph176.preheader ]
  %i.aw = getelementptr [8 x i8], ptr %0, i64 %indvars.iv126 ; 2 uses
  %10 = getelementptr i8, ptr %i.aw, i64 8
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = and i64 %11, %6
  %13 = load i64, ptr %i.aw, align 8, !tbaa !22
  %14 = shl i64 %13, 1
  %15 = and i64 %14, %7
  %16 = or i64 %15, %12
  %i.ax = getelementptr [8 x i8], ptr %0, i64 %indvars.iv122 ; 2 uses
  %17 = getelementptr i8, ptr %i.ax, i64 8
  %18 = load i64, ptr %17, align 8, !tbaa !22
  %19 = shl i64 %18, 2
  %20 = and i64 %19, %8
  %21 = or i64 %16, %20
  %22 = load i64, ptr %i.ax, align 8, !tbaa !22
  %23 = shl i64 %22, 3
  %24 = and i64 %23, %9
  %25 = or i64 %21, %24
  %i.ay = ashr i64 %25, %i.a
  %i.az = trunc i64 %i.ay to i8
  %i.ba = getelementptr inbounds i8, ptr %4, i64 %indvars.iv128
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !20
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, 1 ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 2 ; 2 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 2 ; 2 uses
  %i.bb = add nuw nsw i32 %.07376.us, 2           ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.d
  br i1 %i.bc, label %scalar.ph176, label %._crit_edge.us, !llvm.loop !121

bb.b:                                             ; preds = %._crit_edge.us
  %i.bd = trunc nsw i64 %indvars.iv128.lcssa to i32
  %i.be = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next127.lcssa
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !22
  %i.bg = shl i64 %i.bf, 1
  %i.bh = and i64 %i.bg, %7
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next123.lcssa
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !22
  %i.bk = shl i64 %i.bj, 3
  %i.bl = and i64 %i.bk, %9
  %i.bm = or i64 %i.bl, %i.bh
  %i.bn = ashr i64 %i.bm, %i.a
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds i8, ptr %4, i64 %indvars.iv.next129.lcssa
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !20
  %i.bq = add nsw i32 %i.bd, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.us
  %.2.us = phi i32 [ %i.bq, %bb.b ], [ %i.bt, %._crit_edge.us ] ; 2 uses
  %i.br = add nuw nsw i32 %.07583.us, 2           ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.b
  %indvars.iv.next121 = add i32 %indvars.iv120, %i.f
  %indvars.iv.next125 = add i32 %indvars.iv124, %i.f
  br i1 %i.bs, label %.lr.ph.us, label %middle.block, !llvm.loop !122

._crit_edge.us:                                   ; preds = %scalar.ph176, %middle.block206
  %indvars.iv128.lcssa = phi i64 [ %ind.escape, %middle.block206 ], [ %indvars.iv128, %scalar.ph176 ]
  %indvars.iv.next129.lcssa = phi i64 [ %i.af, %middle.block206 ], [ %indvars.iv.next129, %scalar.ph176 ] ; 2 uses
  %indvars.iv.next123.lcssa = phi i64 [ %i.ah, %middle.block206 ], [ %indvars.iv.next123, %scalar.ph176 ]
  %indvars.iv.next127.lcssa = phi i64 [ %i.ag, %middle.block206 ], [ %indvars.iv.next127, %scalar.ph176 ]
  %i.bt = trunc nsw i64 %indvars.iv.next129.lcssa to i32
  br i1 %i.h, label %bb.b, label %bb.c

.lr.ph86.split:                                   ; preds = %.lr.ph86
  %i.bu = icmp eq i32 %3, 1
  br i1 %i.bu, label %.lr.ph86.split.split.us.preheader, label %.lr.ph86.split.split.preheader

.lr.ph86.split.split.preheader:                   ; preds = %.lr.ph86.split
  %i.bv = and i32 %2, 2147483646
  br label %.lr.ph86.split.split.us.preheader253

.lr.ph86.split.split.us.preheader:                ; preds = %.lr.ph86.split
  %i.bw = sext i32 %1 to i64                      ; 4 uses
  %i.bx = add nsw i32 %2, -2                      ; 2 uses
  %i.by = lshr i32 %i.bx, 1
  %i.bz = add nuw nsw i32 %i.by, 1                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bz to i64   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.bw ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %min.iters.check = icmp ult i32 %i.bx, 2
  br i1 %min.iters.check, label %.lr.ph86.split.split.us, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph86.split.split.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %indvars.iv115 = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next116.1, %vector.body ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %vector.ph ], [ %indvars.iv.next.1, %vector.body ] ; 3 uses
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %26 = mul nsw i64 %indvars.iv115, %i.bw         ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %26
  %27 = load i64, ptr %gep, align 8, !tbaa !22
  %28 = shl i64 %27, 1
  %29 = and i64 %28, %7
  %30 = getelementptr inbounds [8 x i8], ptr %0, i64 %26
  %31 = load i64, ptr %30, align 8, !tbaa !22
  %.idx.a = shl i64 %31, 3
  %32 = and i64 %.idx.a, %9
  %33 = or i64 %32, %29
  %34 = ashr i64 %33, %i.a
  %35 = trunc i64 %34 to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %35, ptr %i.ca, align 1, !tbaa !20
  %indvars.iv.next116 = or disjoint i64 %indvars.iv115, 2
  %36 = mul nsw i64 %indvars.iv.next116, %i.bw    ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %36
  %37 = load i64, ptr %gep.1, align 8, !tbaa !22
  %38 = shl i64 %37, 1
  %39 = and i64 %38, %7
  %40 = getelementptr inbounds [8 x i8], ptr %0, i64 %36
  %41 = load i64, ptr %40, align 8, !tbaa !22
  %42 = shl i64 %41, 3
  %43 = and i64 %42, %9
  %44 = or i64 %43, %39
  %45 = ashr i64 %44, %i.a
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %47, i64 1
  store i8 %46, ptr %i.cb, align 1, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 4 ; 3 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %._crit_edge87.thread.unr-lcssa, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %bb.c
  %48 = and i32 %2, 2147483646
  br label %.lr.ph86.split.split.us.preheader253

.lr.ph86.split.split.us.preheader253:             ; preds = %.lr.ph86.split.split.preheader, %middle.block, %bb.a
  %.075.lcssa = phi i32 [ 0, %bb.a ], [ %i.bv, %.lr.ph86.split.split.preheader ], [ %48, %middle.block ] ; 2 uses
  %.071.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph86.split.split.preheader ], [ %.2.us, %middle.block ] ; 2 uses
  %49 = icmp slt i32 %.075.lcssa, %2
  br i1 %49, label %bb.d, label %bb.f

._crit_edge87.thread.unr-lcssa:                   ; preds = %vector.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge87.thread, label %.lr.ph86.split.split.us

.lr.ph86.split.split.us:                          ; preds = %._crit_edge87.thread.unr-lcssa, %.lr.ph86.split.split.us.preheader
  %indvars.iv115.a = phi i64 [ 0, %.lr.ph86.split.split.us.preheader ], [ %indvars.iv.next116.1, %._crit_edge87.thread.unr-lcssa ] ; 2 uses
  %indvars.iv.a = phi i64 [ 0, %.lr.ph86.split.split.us.preheader ], [ %indvars.iv.next.1, %._crit_edge87.thread.unr-lcssa ]
  %lcmp.mod221 = trunc i32 %i.bz to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.cd = mul nsw i64 %indvars.iv115.a, %i.bw     ; 2 uses
  %gep.a = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cd
  %i.ce = load i64, ptr %gep.a, align 8, !tbaa !22
  %i.cf = shl i64 %i.ce, 1
  %i.cg = and i64 %i.cf, %7
  %i.ch = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.cj = shl i64 %i.ci, 3
  %i.ck = and i64 %i.cj, %9
  %i.cl = or i64 %i.ck, %i.cg
  %i.cm = ashr i64 %i.cl, %i.a
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.a
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !20
  %indvars.iv.next116.a = add nuw nsw i64 %indvars.iv115.a, 2
  br label %._crit_edge87.thread

._crit_edge87.thread:                             ; preds = %._crit_edge87.thread.unr-lcssa, %.lr.ph86.split.split.us
  %indvars.iv.next116.lcssa = phi i64 [ %indvars.iv.next116.1, %._crit_edge87.thread.unr-lcssa ], [ %indvars.iv.next116.a, %.lr.ph86.split.split.us ]
  %i.cp = trunc nuw nsw i64 %indvars.iv.next116.lcssa to i32 ; 2 uses
  %i.cq = icmp sgt i32 %2, %i.cp
  br i1 %i.cq, label %.thread, label %bb.f

.thread:                                          ; preds = %._crit_edge87.thread
  %i.cr = mul i32 %1, %i.cp
  br label %._crit_edge

bb.d:                                             ; preds = %.lr.ph86.split.split.us.preheader253
  %i.cs = mul i32 %.075.lcssa, %1                 ; 2 uses
  %i.ct = add nsw i32 %3, -1
  %i.cu = icmp sgt i32 %3, 1
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.cv = sext i32 %i.cs to i64                   ; 5 uses
  %i.cw = sext i32 %.071.lcssa to i64             ; 6 uses
  %i.cx = add nsw i32 %3, -2                      ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = lshr i64 %i.cy, 1
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check221 = icmp ult i32 %i.cx, 46
  br i1 %min.iters.check221, label %.lr.ph.preheader246, label %vector.memcheck222

vector.memcheck222:                               ; preds = %.lr.ph.preheader
  %i.db = getelementptr i8, ptr %4, i64 %i.cw
  %i.dc = lshr i64 %i.cy, 1                       ; 2 uses
  %i.dd = getelementptr i8, ptr %4, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.cw
  %i.df = getelementptr i8, ptr %i.de, i64 1
  %i.dg = shl nsw i64 %i.cv, 3                    ; 2 uses
  %i.dh = getelementptr i8, ptr %0, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.dc, 4
  %i.dj = getelementptr i8, ptr %0, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dg
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %bound0223 = icmp ult ptr %i.db, %i.dl
  %bound1224 = icmp ult ptr %i.dh, %i.df
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.preheader246, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck222
  %n.vec227 = and i64 %i.da, 4294967294           ; 5 uses
  %i.dm = add nsw i64 %n.vec227, %i.cw            ; 2 uses
  %i.dn = shl nuw nsw i64 %n.vec227, 1
  %i.do = add nsw i64 %i.dn, %i.cv                ; 2 uses
  %i.dp = trunc nuw i64 %n.vec227 to i32
  %i.dq = shl i32 %i.dp, 1
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %8, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <2 x i64> poison, i64 %9, i64 0
  %broadcast.splat199 = shufflevector <2 x i64> %broadcast.splatinsert198, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %broadcast.splat233 = shufflevector <2 x i64> %broadcast.splatinsert232, <2 x i64> poison, <2 x i32> zeroinitializer
  %invariant.gep268 = getelementptr [8 x i8], ptr %0, i64 %i.cv
  %invariant.gep270 = getelementptr i8, ptr %4, i64 %i.cw
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph226
  %index235 = phi i64 [ 0, %vector.ph226 ], [ %index.next239, %vector.body234 ] ; 3 uses
  %.idx245 = shl i64 %index235, 4
  %gep269 = getelementptr i8, ptr %invariant.gep268, i64 %.idx245
  %wide.vec236 = load <4 x i64>, ptr %gep269, align 8, !tbaa !22, !alias.scope !132 ; 2 uses
  %strided.vec237 = shufflevector <4 x i64> %wide.vec236, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec238 = shufflevector <4 x i64> %wide.vec236, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.dr = shl <2 x i64> %strided.vec238, splat (i64 2)
  %i.ds = and <2 x i64> %i.dr, %broadcast.splat197
  %i.dt = shl <2 x i64> %strided.vec237, splat (i64 3)
  %i.du = and <2 x i64> %i.dt, %broadcast.splat199
  %i.dv = or <2 x i64> %i.du, %i.ds
  %i.dw = ashr <2 x i64> %i.dv, %broadcast.splat233
  %i.dx = trunc <2 x i64> %i.dw to <2 x i8>
  %gep271 = getelementptr i8, ptr %invariant.gep270, i64 %index235
  store <2 x i8> %i.dx, ptr %gep271, align 1, !tbaa !20, !alias.scope !133, !noalias !132
  %index.next239 = add nuw i64 %index235, 2       ; 2 uses
  %i.dy = icmp eq i64 %index.next239, %n.vec227
  br i1 %i.dy, label %middle.block240, label %vector.body234, !llvm.loop !126

middle.block240:                                  ; preds = %vector.body234
  %cmp.n241 = icmp eq i64 %i.da, %n.vec227
  br i1 %cmp.n241, label %._crit_edge.loopexit, label %.lr.ph.preheader246

.lr.ph.preheader246:                              ; preds = %vector.memcheck222, %.lr.ph.preheader, %middle.block240
  %indvars.iv137.ph = phi i64 [ %i.cw, %vector.memcheck222 ], [ %i.cw, %.lr.ph.preheader ], [ %i.dm, %middle.block240 ]
  %indvars.iv135.ph = phi i64 [ %i.cv, %vector.memcheck222 ], [ %i.cv, %.lr.ph.preheader ], [ %i.do, %middle.block240 ]
  %.17498.ph = phi i32 [ 0, %vector.memcheck222 ], [ 0, %.lr.ph.preheader ], [ %i.dq, %middle.block240 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader246, %.lr.ph
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph ], [ %indvars.iv137.ph, %.lr.ph.preheader246 ] ; 2 uses
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %.lr.ph ], [ %indvars.iv135.ph, %.lr.ph.preheader246 ] ; 2 uses
  %.17498 = phi i32 [ %i.el, %.lr.ph ], [ %.17498.ph, %.lr.ph.preheader246 ]
  %i.dz = getelementptr [8 x i8], ptr %0, i64 %indvars.iv135 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !22
  %i.ec = shl i64 %i.eb, 2
  %i.ed = and i64 %i.ec, %8
  %i.ee = load i64, ptr %i.dz, align 8, !tbaa !22
  %i.ef = shl i64 %i.ee, 3
  %i.eg = and i64 %i.ef, %9
  %i.eh = or i64 %i.eg, %i.ed
  %i.ei = ashr i64 %i.eh, %i.a
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds i8, ptr %4, i64 %indvars.iv137
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !20
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, 2 ; 2 uses
  %i.el = add nuw nsw i32 %.17498, 2              ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.ct
  br i1 %i.em, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !127

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block240
  %indvars.iv.next138.lcssa = phi i64 [ %i.dm, %middle.block240 ], [ %indvars.iv.next138, %.lr.ph ]
  %indvars.iv.next136.lcssa = phi i64 [ %i.do, %middle.block240 ], [ %indvars.iv.next136, %.lr.ph ]
  %i.en = and i32 %3, 2147483646
  %i.eo = trunc nsw i64 %indvars.iv.next138.lcssa to i32
  %i.ep = trunc nsw i64 %indvars.iv.next136.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread, %._crit_edge.loopexit, %bb.d
  %.174.lcssa = phi i32 [ 0, %bb.d ], [ %i.en, %._crit_edge.loopexit ], [ 0, %.thread ]
  %.3.lcssa = phi i32 [ %.071.lcssa, %bb.d ], [ %i.eo, %._crit_edge.loopexit ], [ %i.bz, %.thread ]
  %.1.lcssa = phi i32 [ %i.cs, %bb.d ], [ %i.ep, %._crit_edge.loopexit ], [ %i.cr, %.thread ]
  %i.eq = icmp slt i32 %.174.lcssa, %3
  br i1 %i.eq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.er = sext i32 %.1.lcssa to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %0, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !22
  %i.eu = shl i64 %i.et, 3
  %i.ev = and i64 %i.eu, %9
  %i.ew = ashr i64 %i.ev, %i.a
  %i.ex = trunc i64 %i.ew to i8
  %i.ey = sext i32 %.3.lcssa to i64
  %i.ez = getelementptr inbounds i8, ptr %4, i64 %i.ey
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge87.thread, %._crit_edge, %bb.e, %.lr.ph86.split.split.us.preheader253
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
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !14, !15, !16}
!85 = distinct !{!85, !14, !15}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !14, !15, !16}
!90 = distinct !{!90, !14, !15}
!91 = !{!74}
!92 = !{!75}
!93 = !{!76}
!94 = !{!75, !74}
!95 = !{!81}
!96 = !{!82}
!97 = !{!83}
!98 = !{!82, !81}
!99 = !{!87}
!100 = !{!88}
!101 = distinct !{!101, i1 false, !"LVerDomain"}
!102 = distinct !{!102, !101}
!103 = distinct !{!103, !101}
!104 = distinct !{!104, !14, !15, !16}
!105 = distinct !{!105, !14, !15, !16}
!106 = distinct !{!106, !14, !15}
!107 = distinct !{!107, !14}
!108 = !{!102}
!109 = !{!103}
!110 = distinct !{!110, !14, !15, !16}
!111 = distinct !{!111, !14, !15, !16}
!112 = distinct !{!112, !14, !16, !15}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, !14}
!116 = distinct !{!116, i1 false, !"LVerDomain"}
!117 = distinct !{!117, !116}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !116}
!120 = distinct !{!120, !14, !15, !16}
!121 = distinct !{!121, !14, !15}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, i1 false, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !14, !15, !16}
!127 = distinct !{!127, !14, !15}
!128 = !{!117}
!129 = !{!118}
!130 = !{!119}
!131 = !{!118, !117}
!132 = !{!124}
!133 = !{!125}
end_hunk_1
