Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/lame?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@lame_encode_buffer_interleaved:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @lame_encode_buffer(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load float, ptr %i.h, align 8, !tbaa !22
  %i.j = fcmp une float %i.i, 1.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = sext i32 %2 to i64
  %i.l = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #22 ; 5 uses
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #22 ; 5 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = icmp eq ptr %i.n, null
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.q = icmp sgt i32 %2, 0
  br i1 %i.q, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %.preheader
  %wide.trip.count156 = zext nneg i32 %2 to i64   ; 3 uses
  %min.iters.check206 = icmp ult i32 %2, 4
  br i1 %min.iters.check206, label %.lr.ph133.preheader219, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph133.preheader
  %n.vec208 = and i64 %wide.trip.count156, 2147483644 ; 3 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next214, %vector.body209 ] ; 4 uses
  %i.r = shl nuw nsw i64 %index210, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %wide.vec211 = load <8 x i16>, ptr %i.s, align 2, !tbaa !58 ; 2 uses
  %strided.vec212 = shufflevector <8 x i16> %wide.vec211, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec213 = shufflevector <8 x i16> %wide.vec211, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index210
  store <4 x i16> %strided.vec212, ptr %i.t, align 2, !tbaa !58
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %index210
  store <4 x i16> %strided.vec213, ptr %i.u, align 2, !tbaa !58
  %index.next214 = add nuw i64 %index210, 4       ; 2 uses
  %i.v = icmp eq i64 %index.next214, %n.vec208
  br i1 %i.v, label %middle.block215, label %vector.body209, !llvm.loop !119

middle.block215:                                  ; preds = %vector.body209
  %cmp.n216 = icmp eq i64 %n.vec208, %wide.trip.count156
  br i1 %cmp.n216, label %._crit_edge134, label %.lr.ph133.preheader219

.lr.ph133.preheader219:                           ; preds = %.lr.ph133.preheader, %middle.block215
  %indvars.iv153.ph = phi i64 [ 0, %.lr.ph133.preheader ], [ %n.vec208, %middle.block215 ]
  br label %.lr.ph133

.lr.ph133:                                        ; preds = %.lr.ph133.preheader219, %.lr.ph133
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %.lr.ph133 ], [ %indvars.iv153.ph, %.lr.ph133.preheader219 ] ; 4 uses
  %.idx170 = shl nuw nsw i64 %indvars.iv153, 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.idx170 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !58
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv153
  store i16 %i.x, ptr %i.y, align 2, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !58
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv153
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !58
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge134, label %.lr.ph133, !llvm.loop !120

._crit_edge134:                                   ; preds = %.lr.ph133, %middle.block215, %.preheader
  %i.ac = tail call i32 @lame_encode_buffer(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  tail call void @free(ptr noundef nonnull %i.m) #17
  tail call void @free(ptr noundef nonnull %i.n) #17
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  %.b = load i1, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  %or.cond3 = select i1 %i.af, i1 true, i1 %.b
  br i1 %or.cond3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12224) @mfbuf, i8 0, i64 12224, i1 false)
  store i1 true, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  store i32 1088, ptr @mf_samples_to_encode, align 4, !tbaa !7
  store i32 752, ptr @mf_size, align 4, !tbaa !7
  %.pr = load i64, ptr %i.ad, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = phi i64 [ %.pr, %bb.f ], [ %i.ae, %bb.e ]
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i1 false, ptr @lame_encode_buffer_interleaved.frame_buffered, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = load i32, ptr %i.d, align 8, !tbaa !14
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.j, label %.loopexit116

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = icmp eq i32 %i.al, 1
  %i.an = icmp sgt i32 %2, 0
  %or.cond135 = and i1 %i.am, %i.an
  br i1 %or.cond135, label %.lr.ph.preheader, label %.loopexit116

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl nuw nsw i64 %index, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 2 uses
  %wide.vec = load <8 x i16>, ptr %i.ap, align 2, !tbaa !58 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec171 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aq = sext <4 x i16> %strided.vec to <4 x i32>
  %i.ar = sext <4 x i16> %strided.vec171 to <4 x i32>
  %i.as = add nsw <4 x i32> %i.ar, %i.aq
  %i.at = sdiv <4 x i32> %i.as, splat (i32 2)
  %i.au = trunc nsw <4 x i32> %i.at to <4 x i16>
  %interleaved.vec = shufflevector <4 x i16> %i.au, <4 x i16> zeroinitializer, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.ap, align 2, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph129, label %.lr.ph.preheader220

.lr.ph.preheader220:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader220, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader220 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !58
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !58
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, %i.ay
  %i.bd = sdiv i32 %i.bc, 2
  %i.be = trunc nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.aw, align 2, !tbaa !58
  store i16 0, ptr %i.az, align 2, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph129, label %.lr.ph, !llvm.loop !122

.loopexit116:                                     ; preds = %bb.j, %bb.i
  %i.bf = icmp sgt i32 %2, 0
  br i1 %i.bf, label %.lr.ph129, label %.critedge

.lr.ph129:                                        ; preds = %.lr.ph, %middle.block, %.loopexit116
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 204
  %.pre = load i32, ptr %i.a, align 4, !tbaa !21
  %.pre158.pre = load i32, ptr @mf_size, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph129, %.loopexit
  %.pre158 = phi i32 [ %.pre158.pre, %.lr.ph129 ], [ %.pre158160, %.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.pre, %.lr.ph129 ], [ %i.ej, %.loopexit ] ; 3 uses
  %.095127 = phi i32 [ 0, %.lr.ph129 ], [ %.297, %.loopexit ] ; 2 uses
  %.0102126 = phi ptr [ %3, %.lr.ph129 ], [ %.2104, %.loopexit ] ; 3 uses
  %.0105125 = phi i32 [ %2, %.lr.ph129 ], [ %i.cu, %.loopexit ] ; 2 uses
  %.0106124 = phi ptr [ %1, %.lr.ph129 ], [ %i.ct, %.loopexit ] ; 7 uses
  %..0105 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %.0105125) ; 6 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %bb.k
  %i.bj = sext i32 %.pre158 to i64                ; 6 uses
  %wide.trip.count141 = zext i32 %..0105 to i64   ; 7 uses
  %min.iters.check193 = icmp ult i32 %..0105, 4
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph119
  %i.bk = shl nsw i64 %i.bj, 1
  %scevgep = getelementptr i8, ptr @mfbuf, i64 %i.bk
  %i.bl = add nsw i64 %i.bj, %wide.trip.count141
  %i.bm = shl nsw i64 %i.bl, 1
  %scevgep190 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @mfbuf, i64 6112), i64 %i.bm
  %i.bn = shl nuw nsw i64 %wide.trip.count141, 2
  %scevgep191 = getelementptr i8, ptr %.0106124, i64 %i.bn
  %bound0 = icmp ult ptr %scevgep, %scevgep191
  %bound1 = icmp ult ptr %.0106124, %scevgep190
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck189
  %n.vec195 = and i64 %wide.trip.count141, 2147483644 ; 3 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next201, %vector.body196 ] ; 3 uses
  %i.bo = shl nuw nsw i64 %index197, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.0106124, i64 %i.bo
  %wide.vec198 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !58, !alias.scope !134 ; 2 uses
  %strided.vec199 = shufflevector <8 x i16> %wide.vec198, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec200 = shufflevector <8 x i16> %wide.vec198, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bq = add nsw i64 %index197, %i.bj            ; 2 uses
  %i.br = getelementptr inbounds [2 x i8], ptr @mfbuf, i64 %i.bq
  store <4 x i16> %strided.vec199, ptr %i.br, align 2, !tbaa !58, !alias.scope !135, !noalias !134
  %i.bs = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @mfbuf, i64 6112), i64 %i.bq
  store <4 x i16> %strided.vec200, ptr %i.bs, align 2, !tbaa !58, !alias.scope !135, !noalias !134
  %index.next201 = add nuw i64 %index197, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next201, %n.vec195
  br i1 %i.bt, label %middle.block202, label %vector.body196, !llvm.loop !126

middle.block202:                                  ; preds = %vector.body196
  %cmp.n203 = icmp eq i64 %n.vec195, %wide.trip.count141
  br i1 %cmp.n203, label %._crit_edge, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %vector.memcheck189, %.lr.ph119, %middle.block202
  %indvars.iv138.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph119 ], [ %n.vec195, %middle.block202 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count141, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph192.prol.loopexit, label %scalar.ph192.prol

scalar.ph192.prol:                                ; preds = %scalar.ph192.preheader
  %.idx169.prol = shl nuw nsw i64 %indvars.iv138.ph, 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.0106124, i64 %.idx169.prol ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !58
  %i.bw = add nsw i64 %indvars.iv138.ph, %i.bj    ; 2 uses
  %i.bx = getelementptr inbounds [2 x i8], ptr @mfbuf, i64 %i.bw
  store i16 %i.bv, ptr %i.bx, align 2, !tbaa !58
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !58
  %i.ca = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @mfbuf, i64 6112), i64 %i.bw
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !58
  %indvars.iv.next139.prol = or disjoint i64 %indvars.iv138.ph, 1
  br label %scalar.ph192.prol.loopexit

scalar.ph192.prol.loopexit:                       ; preds = %scalar.ph192.prol, %scalar.ph192.preheader
  %indvars.iv138.unr = phi i64 [ %indvars.iv138.ph, %scalar.ph192.preheader ], [ %indvars.iv.next139.prol, %scalar.ph192.prol ]
  %i.cb = add nsw i64 %wide.trip.count141, -1
  %i.cc = icmp eq i64 %indvars.iv138.ph, %i.cb
  br i1 %i.cc, label %._crit_edge, label %scalar.ph192

scalar.ph192:                                     ; preds = %scalar.ph192.prol.loopexit, %scalar.ph192
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.1, %scalar.ph192 ], [ %indvars.iv138.unr, %scalar.ph192.prol.loopexit ] ; 4 uses
  %.idx169 = shl nuw nsw i64 %indvars.iv138, 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.0106124, i64 %.idx169 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !58
  %i.cf = add nsw i64 %indvars.iv138, %i.bj       ; 2 uses
  %i.cg = getelementptr inbounds [2 x i8], ptr @mfbuf, i64 %i.cf
  store i16 %i.ce, ptr %i.cg, align 2, !tbaa !58
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !58
  %i.cj = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @mfbuf, i64 6112), i64 %i.cf
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !58
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %.idx169.1 = shl nuw nsw i64 %indvars.iv.next139, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.0106124, i64 %.idx169.1 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !58
  %i.cm = add nsw i64 %indvars.iv.next139, %i.bj  ; 2 uses
  %i.cn = getelementptr inbounds [2 x i8], ptr @mfbuf, i64 %i.cm
  store i16 %i.cl, ptr %i.cn, align 2, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !58
  %i.cq = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @mfbuf, i64 6112), i64 %i.cm
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !58
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %exitcond142.not.1 = icmp eq i64 %indvars.iv.next139.1, %wide.trip.count141
  br i1 %exitcond142.not.1, label %._crit_edge, label %scalar.ph192, !llvm.loop !127

._crit_edge:                                      ; preds = %scalar.ph192.prol.loopexit, %scalar.ph192, %middle.block202, %bb.k
  %i.cr = shl nsw i32 %..0105, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %.0106124, i64 %i.cs
  %i.cu = sub nsw i32 %.0105125, %..0105          ; 2 uses
  %i.cv = add nsw i32 %.pre158, %..0105           ; 3 uses
  store i32 %i.cv, ptr @mf_size, align 4, !tbaa !7
  %i.cw = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !7
  %i.cx = add nsw i32 %i.cw, %..0105
  store i32 %i.cx, ptr @mf_samples_to_encode, align 4, !tbaa !7
  %.not = icmp slt i32 %i.cv, %i.c
  br i1 %.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.cy = tail call i32 @lame_encode_frame(ptr noundef %0, ptr noundef nonnull @mfbuf, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mfbuf, i64 6112), i32 poison, ptr noundef %.0102126, i32 noundef %4) ; 3 uses
  %i.cz = icmp eq i32 %i.cy, -1
  br i1 %i.cz, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = sext i32 %i.cy to i64
  %i.db = getelementptr inbounds i8, ptr %.0102126, i64 %i.da ; 2 uses
  %i.dc = add nsw i32 %i.cy, %.095127             ; 2 uses
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !21  ; 5 uses
  %i.de = load i32, ptr @mf_size, align 4, !tbaa !7
  %i.df = sub i32 %i.de, %i.dd                    ; 7 uses
  store i32 %i.df, ptr @mf_size, align 4, !tbaa !7
  %i.dg = load i32, ptr @mf_samples_to_encode, align 4, !tbaa !7
  %i.dh = sub nsw i32 %i.dg, %i.dd
  store i32 %i.dh, ptr @mf_samples_to_encode, align 4, !tbaa !7
  %i.di = load i32, ptr %i.bg, align 4, !tbaa !16 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  %i.dk = icmp sgt i32 %i.df, 0
  %or.cond136 = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond136, label %.preheader114.preheader, label %.loopexit

.preheader114.preheader:                          ; preds = %bb.m
  %i.dl = sext i32 %i.dd to i64                   ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.di to i64
  %wide.trip.count146 = zext nneg i32 %i.df to i64 ; 8 uses
  %min.iters.check173 = icmp ult i32 %i.df, 4
  %i.dm = shl nsw i64 %i.dl, 1
  %diff.check = icmp ugt i64 %i.dm, -32
  %or.cond218 = select i1 %min.iters.check173, i1 true, i1 %diff.check
  %min.iters.check174 = icmp ult i32 %i.df, 16
  %i.dn = and i64 %wide.trip.count146, 12
  %n.vec176 = and i64 %wide.trip.count146, 2147483632 ; 4 uses
  %cmp.n182 = icmp eq i64 %n.vec176, %wide.trip.count146
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  %n.vec183 = and i64 %wide.trip.count146, 2147483644 ; 3 uses
  %cmp.n187 = icmp eq i64 %n.vec183, %wide.trip.count146
  %xtraiter221 = and i64 %wide.trip.count146, 3   ; 2 uses
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader114.preheader, %._crit_edge122
  %indvars.iv148 = phi i64 [ 0, %.preheader114.preheader ], [ %indvars.iv.next149, %._crit_edge122 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [6112 x i8], ptr @mfbuf, i64 %indvars.iv148 ; 8 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.do, i64 %i.dl ; 7 uses
  br i1 %or.cond218, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.body177

vector.body177:                                   ; preds = %vector.main.loop.iter.check, %vector.body177
  %index178 = phi i64 [ %index.next180, %vector.body177 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.dp = getelementptr [2 x i8], ptr %invariant.gep, i64 %index178 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %wide.load = load <8 x i16>, ptr %i.dp, align 2, !tbaa !58
  %wide.load179 = load <8 x i16>, ptr %i.dq, align 2, !tbaa !58
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index178 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <8 x i16> %wide.load, ptr %i.dr, align 16, !tbaa !58
  store <8 x i16> %wide.load179, ptr %i.ds, align 16, !tbaa !58
  %index.next180 = add nuw i64 %index178, 16      ; 2 uses
  %i.dt = icmp eq i64 %index.next180, %n.vec176
  br i1 %i.dt, label %middle.block181, label %vector.body177, !llvm.loop !128

middle.block181:                                  ; preds = %vector.body177
  br i1 %cmp.n182, label %._crit_edge122, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block181
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec176, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index184 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next186, %vec.epilog.vector.body ] ; 3 uses
  %i.du = getelementptr [2 x i8], ptr %invariant.gep, i64 %index184
  %wide.load185 = load <4 x i16>, ptr %i.du, align 2, !tbaa !58
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %index184
  store <4 x i16> %wide.load185, ptr %i.dv, align 8, !tbaa !58
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next186, %n.vec183
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n187, label %._crit_edge122, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv143.ph = phi i64 [ 0, %iter.check ], [ %n.vec176, %vec.epilog.iter.check ], [ %n.vec183, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod222.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv143.prol = phi i64 [ %indvars.iv.next144.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv143.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv143.prol
  %i.dx = load i16, ptr %gep.prol, align 2, !tbaa !58
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv143.prol
  store i16 %i.dx, ptr %i.dy, align 2, !tbaa !58
  %indvars.iv.next144.prol = add nuw nsw i64 %indvars.iv143.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter221
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !130

end_hunk_0
