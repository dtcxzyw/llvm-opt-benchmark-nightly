Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc?download=true
inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_ac3_encode_init:bb.a
  %.0 = phi i32 [ 0, %bb.g ], [ %i.d, %bb.a ], [ %i.am, %bb.f ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -22, 1) i32 @validate_options(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !203 ; 6 uses
  tail call fastcc void @set_channel_info(ptr noundef %i.c) #19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.e = load i32, ptr %i.d, align 8, !tbaa !201  ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @ff_ac3_sample_rate_tab, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = icmp eq i32 %i.g, %i.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5164
  store i32 %i.i, ptr %i.j, align 4, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4956
  store i32 %i.e, ptr %i.k, align 4, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4940
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  %i.n = select i1 %.not, i32 8, i32 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4944
  store i32 %i.n, ptr %i.o, align 16, !tbaa !130
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !223  ; 2 uses
  %.not137 = icmp eq i64 %i.q, 0
  br i1 %.not137, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26
  %switch.tableidx = add i32 %i.s, -1             ; 2 uses
  %i.t = icmp ult i32 %switch.tableidx, 5
  br i1 %i.t, label %switch.lookup, label %bb.e

switch.lookup:                                    ; preds = %bb.d
  %i.u = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.validate_options, i64 %i.u
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64      ; 2 uses
  store i64 %switch.ext, ptr %i.p, align 8, !tbaa !223
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup, %bb.c
  %i.v = phi i64 [ 0, %bb.d ], [ %i.q, %bb.c ], [ %switch.ext, %switch.lookup ] ; 7 uses
  br i1 %.not, label %.preheader, label %.preheader148

.preheader148:                                    ; preds = %bb.e
  store <4 x i32> <i32 1, i32 2, i32 3, i32 6>, ptr %i.a, align 16, !tbaa !45
  %i.w = shl nsw i32 %i.e, 11
  br label %bb.f

bb.f:                                             ; preds = %.preheader148, %bb.g
  %indvars.iv168 = phi i64 [ 3, %.preheader148 ], [ %indvars.iv.next169, %bb.g ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv168
  %i.y = load i32, ptr %i.x, align 4, !tbaa !45   ; 2 uses
  %i.z = shl nsw i32 %i.y, 8                      ; 4 uses
  %i.aa = sdiv i32 %i.w, %i.z
  %i.ab = shl nsw i32 %i.aa, 4                    ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %.not140 = icmp sgt i64 %i.v, %i.ac             ; 2 uses
  br i1 %.not140, label %bb.g, label %.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, -1
  %.not184 = icmp eq i64 %indvars.iv168, 0
  br i1 %.not184, label %.split.loop.exit187, label %bb.f, !llvm.loop !224

.split.loop.exit:                                 ; preds = %bb.f
  %i.ad = trunc nuw nsw i64 %indvars.iv168 to i32
  br label %.split.loop.exit187

.split.loop.exit187:                              ; preds = %bb.g, %.split.loop.exit
  %.0120.lcssa = phi i32 [ %i.ad, %.split.loop.exit ], [ -1, %bb.g ]
  %i.ae = add i32 %i.e, -1
  %i.af = add i32 %i.ae, %i.z
  %i.ag = sdiv i32 %i.af, %i.z
  %i.ah = shl nsw i32 %i.ag, 4                    ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %i.v, %i.ai
  %or.cond = or i1 %i.aj, %.not140
  br i1 %or.cond, label %.critedge147, label %bb.h

.critedge147:                                     ; preds = %.split.loop.exit187
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.86, i32 noundef %i.ah, i32 noundef %i.ab) #15
  br label %bb.v

bb.h:                                             ; preds = %.split.loop.exit187
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4960
  store i32 %.0120.lcssa, ptr %i.ak, align 16, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4964
  store i32 %i.y, ptr %i.al, align 4, !tbaa !9
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %.lhs.trunc = trunc nsw i64 %i.v to i32         ; 2 uses
  %i.am = sdiv i32 %.lhs.trunc, 16
  %.sext = sext i32 %i.am to i64
  %i.an = sext i32 %i.z to i64
  %i.ao = mul nsw i64 %.sext, %i.an
  %i.ap = sext i32 %i.e to i64
  %i.aq = sdiv i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = shl i32 %spec.select, 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4976
  store i32 %i.as, ptr %i.at, align 16, !tbaa !225
  %i.au = icmp sgt i32 %i.ar, 1
  br i1 %i.au, label %.lr.ph, label %.critedge

bb.j:                                             ; preds = %bb.h, %bb.j
  %indvars.iv171 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next172, %bb.j ] ; 3 uses
  %.0114156 = phi i64 [ 9223372036854775807, %bb.h ], [ %spec.select145, %bb.j ] ; 2 uses
  %.0121155 = phi i32 [ -1, %bb.h ], [ %spec.select, %bb.j ]
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_bitrate_tab, i64 %indvars.iv171
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !144
  %i.ax = zext i16 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ax, 1000
  %i.az = sub nsw i64 %i.ay, %i.v
  %i.ba = tail call i64 @llvm.abs.i64(i64 %i.az, i1 true) ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, %.0114156
  %i.bc = trunc nuw nsw i64 %indvars.iv171 to i32
  %spec.select = select i1 %i.bb, i32 %i.bc, i32 %.0121155 ; 2 uses
  %spec.select145 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %.0114156)
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next172, 19
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !226

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %.0123158 = phi i32 [ %i.bi, %bb.k ], [ %i.ar, %bb.i ] ; 4 uses
  %i.bd = mul nsw i32 %.0123158, %i.e
  %i.be = sdiv i32 %i.bd, 1536
  %i.bf = shl nsw i32 %i.be, 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %i.v, %i.bg
  br i1 %i.bh, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.bi = add nsw i32 %.0123158, -1
  %i.bj = icmp sgt i32 %.0123158, 2
  br i1 %i.bj, label %.lr.ph, label %.critedge, !llvm.loop !227

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.i
  %.0123.lcssa = phi i32 [ %i.ar, %bb.i ], [ 1, %bb.k ], [ %.0123158, %.lr.ph ]
  %i.bk = shl nsw i32 %.0123.lcssa, 1             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4968
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !70
  br label %bb.n

.preheader:                                       ; preds = %bb.e, %bb.l
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %bb.l ], [ 0, %bb.e ] ; 3 uses
  %.0105163 = phi i64 [ %.1, %bb.l ], [ 9223372036854775807, %bb.e ] ; 2 uses
  %.0106162 = phi i32 [ %.1107, %bb.l ], [ 0, %bb.e ]
  %.0108161 = phi i32 [ %.1109, %bb.l ], [ 0, %bb.e ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_bitrate_tab, i64 %indvars.iv174
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !144
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.bo, 1000             ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = sub nsw i64 %i.bq, %i.v
  %i.bs = tail call i64 @llvm.abs.i64(i64 %i.br, i1 true) ; 2 uses
  %i.bt = icmp samesign ult i64 %i.bs, %.0105163  ; 2 uses
  %.1109 = select i1 %i.bt, i32 %i.bp, i32 %.0108161 ; 3 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv174 to i32
  %.1107 = select i1 %i.bt, i32 %i.bu, i32 %.0106162 ; 2 uses
  %.not139.not = icmp eq i64 %i.v, %i.bq
  br i1 %.not139.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader
  %.1 = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %.0105163)
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next175, 19
  br i1 %exitcond177.not, label %bb.m, label %.preheader, !llvm.loop !228

bb.m:                                             ; preds = %bb.l, %.preheader
  %i.bv = zext nneg i32 %.1109 to i64
  store i64 %i.bv, ptr %i.p, align 8, !tbaa !223
  %i.bw = shl nuw i32 %.1107, 1                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4976
  store i32 %i.bw, ptr %i.bx, align 16, !tbaa !225
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds [6 x i8], ptr @ff_ac3_frame_size_tab, i64 %i.by
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !144
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4968
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4960
  store i32 3, ptr %i.cf, align 16, !tbaa !100
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 4964
  store i32 6, ptr %1, align 4, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m
  %.pre-phi = phi i32 [ %.lhs.trunc, %.critedge ], [ %.1109, %bb.m ]
  %i.cg = phi i32 [ %i.bk, %.critedge ], [ %i.cd, %bb.m ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4952
  store i32 %.pre-phi, ptr %i.ch, align 8, !tbaa !65
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4972
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !71
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !229 ; 2 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.c, i32 noundef 16, ptr noundef nonnull @.str.87) #15
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.cn = ashr i32 %i.e, 1
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.cn)
  store i32 %spec.store.select, ptr %i.cm, align 8
  %i.co = tail call fastcc i32 @ac3_validate_metadata(ptr noundef nonnull %0) ; 2 uses
  %.not141 = icmp eq i32 %i.co, 0
  br i1 %.not141, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !230
  %.not142 = icmp eq i32 %i.cq, 0
  br i1 %.not142, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.cs = load i32, ptr %i.cr, align 16, !tbaa !120
  %i.ct = icmp eq i32 %i.cs, 2
  %i.cu = zext i1 %i.ct to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cv = phi i32 [ 0, %bb.q ], [ %i.cu, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 5140
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !78
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !231
  %.not143 = icmp eq i32 %i.cy, 0
  br i1 %.not143, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.da = load i32, ptr %i.cz, align 16, !tbaa !120
  %i.db = icmp sgt i32 %i.da, 1
  %i.dc = zext i1 %i.db to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dd = phi i32 [ 0, %bb.s ], [ %i.dc, %bb.t ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 5108
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !232
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %.critedge147, %bb.u, %bb.o
  %.1130 = phi i32 [ -22, %bb.o ], [ -22, %.critedge147 ], [ 0, %bb.u ], [ %i.co, %bb.p ]
  ret i32 %.1130
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define internal fastcc i32 @pow_poly(i32 noundef range(i32 -2147483648, 2147483632) %0) unnamed_addr #5 {
bb.a:
  %.not25 = icmp eq i32 %0, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %mul_poly.exit24
  %.028 = phi i32 [ %.1, %mul_poly.exit24 ], [ 1, %bb.a ] ; 3 uses
  %.01027 = phi i32 [ %.0.lcssa.i23, %mul_poly.exit24 ], [ 49154, %bb.a ] ; 4 uses
  %.01126 = phi i32 [ %i.n, %mul_poly.exit24 ], [ %0, %bb.a ] ; 2 uses
  %i.a = and i32 %.01126, 1
  %.not12 = icmp eq i32 %i.a, 0
  br i1 %.not12, label %mul_poly.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not15.i = icmp eq i32 %.028, 0
  br i1 %.not15.i, label %mul_poly.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.01017.i = phi i32 [ %i.d, %.lr.ph.i ], [ %.028, %bb.b ] ; 2 uses
  %.01116.i = phi i32 [ %.112.i, %.lr.ph.i ], [ %.01027, %bb.b ] ; 3 uses
  %i.b = and i32 %.01017.i, 1
  %.not13.i = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not13.i, i32 0, i32 %.01116.i
  %spec.select.i = xor i32 %i.c, %.018.i          ; 2 uses
  %i.d = lshr i32 %.01017.i, 1                    ; 2 uses
  %i.e = shl i32 %.01116.i, 1                     ; 2 uses
  %i.f = and i32 %.01116.i, 32768
  %.not14.i = icmp eq i32 %i.f, 0
  %i.g = xor i32 %i.e, 98309
  %.112.i = select i1 %.not14.i, i32 %i.e, i32 %i.g
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %mul_poly.exit, label %.lr.ph.i, !llvm.loop !198

mul_poly.exit:                                    ; preds = %.lr.ph.i, %bb.b, %.lr.ph
  %.1 = phi i32 [ %.028, %.lr.ph ], [ 0, %bb.b ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %.not15.i13 = icmp eq i32 %.01027, 0
  br i1 %.not15.i13, label %mul_poly.exit24, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %mul_poly.exit, %.lr.ph.i14
  %.018.i15 = phi i32 [ %spec.select.i19, %.lr.ph.i14 ], [ 0, %mul_poly.exit ]
  %.01017.i16 = phi i32 [ %i.j, %.lr.ph.i14 ], [ %.01027, %mul_poly.exit ] ; 2 uses
  %.01116.i17 = phi i32 [ %.112.i21, %.lr.ph.i14 ], [ %.01027, %mul_poly.exit ] ; 3 uses
  %i.h = and i32 %.01017.i16, 1
  %.not13.i18 = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not13.i18, i32 0, i32 %.01116.i17
  %spec.select.i19 = xor i32 %i.i, %.018.i15      ; 2 uses
  %i.j = lshr i32 %.01017.i16, 1                  ; 2 uses
  %i.k = shl i32 %.01116.i17, 1                   ; 2 uses
  %i.l = and i32 %.01116.i17, 32768
  %.not14.i20 = icmp eq i32 %i.l, 0
  %i.m = xor i32 %i.k, 98309
  %.112.i21 = select i1 %.not14.i20, i32 %i.k, i32 %i.m
  %.not.i22 = icmp eq i32 %i.j, 0
  br i1 %.not.i22, label %mul_poly.exit24, label %.lr.ph.i14, !llvm.loop !198

mul_poly.exit24:                                  ; preds = %.lr.ph.i14, %mul_poly.exit
  %.0.lcssa.i23 = phi i32 [ 0, %mul_poly.exit ], [ %spec.select.i19, %.lr.ph.i14 ]
  %i.n = lshr i32 %.01126, 1                      ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %mul_poly.exit24, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1, %mul_poly.exit24 ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @ac3_output_frame_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1) #3 {
put_bits.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr i8, ptr %1, i64 4          ; 21 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !171
  %i.d = shl i32 %i.c, 16
  %i.e = or disjoint i32 %i.d, 2935
  store i32 %i.e, ptr %1, align 8, !tbaa !171
  store i32 16, ptr %i.b, align 4, !tbaa !170
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 20 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 60 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !169  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.l, 3
  br i1 %i.m, label %bb.a, label %bb.b

bb.a:                                             ; preds = %put_bits.exit
  store i32 30475, ptr %i.i, align 1, !tbaa !28
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !169
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store ptr %i.o, ptr %i.h, align 8, !tbaa !169
  br label %put_bits.exit78

bb.b:                                             ; preds = %put_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.82) #15
  br label %put_bits.exit78

put_bits.exit78:                                  ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5164
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.s = load i32, ptr %i.r, align 16, !tbaa !225
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4972
  %i.u = load i32, ptr %i.t, align 4, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4968
  %i.w = load i32, ptr %i.v, align 8, !tbaa !70
  %i.x = sub nsw i32 %i.u, %i.w
  %i.y = sdiv i32 %i.x, 2
  %i.z = add nsw i32 %i.y, %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4944 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 16, !tbaa !130
  %i.ac = shl i32 %i.q, 11
  %i.ad = shl i32 %i.z, 5
  %i.ae = or i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4948
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !222
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !120 ; 5 uses
  %i.ak = shl i32 %i.af, 6
  %i.al = shl i32 %i.ah, 3
  %i.am = or i32 %i.ak, %i.al
  %i.an = or i32 %i.am, %i.aj                     ; 2 uses
  %i.ao = and i32 %i.aj, 1
  %.not = icmp eq i32 %i.ao, 0
  %.not70 = icmp eq i32 %i.aj, 1
  %or.cond = or i1 %.not70, %.not
  br i1 %or.cond, label %bb.c, label %put_bits.exit102

put_bits.exit102:                                 ; preds = %put_bits.exit78
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5040
end_hunk_0
begin_hunk_1_@set_bandwidth:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5072
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4964 ; 2 uses
  %.pre122 = load i32, ptr %i.ad, align 4, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph94, %._crit_edge
  %i.ae = phi i32 [ %.pre122, %.lr.ph94 ], [ %i.aq, %._crit_edge ] ; 2 uses
  %indvars.iv109 = phi i64 [ 1, %.lr.ph94 ], [ %indvars.iv.next110, %._crit_edge ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv109
  store i32 0, ptr %i.af, align 4, !tbaa !45
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.ai = mul nsw i32 %i.ah, 3
  %i.aj = add nsw i32 %i.ai, 73
  %i.ak = getelementptr inbounds nuw [648 x i8], ptr %0, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1664
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv109
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i32, ptr %i.ad, align 4, !tbaa !9  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !241

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.aq = phi i32 [ %i.ae, %bb.e ], [ %i.an, %.lr.ph ]
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ar = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.as = sext i32 %i.ar to i64
  %.not79.not = icmp slt i64 %indvars.iv109, %i.as
  br i1 %.not79.not, label %bb.e, label %._crit_edge95, !llvm.loop !242

._crit_edge95:                                    ; preds = %._crit_edge, %bb.d
  %.073.lcssa = phi i64 [ 1, %bb.d ], [ %indvars.iv.next110, %._crit_edge ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.au = load i32, ptr %i.at, align 16, !tbaa !104
  %.not80 = icmp eq i32 %i.au, 0
  br i1 %.not80, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge95
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5072
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5012
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !105
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !45
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4964 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %bb.f, %.lr.ph98
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.lr.ph98 ], [ 0, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [648 x i8], ptr %0, i64 %indvars.iv112
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1664
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.073.lcssa
  store i32 7, ptr %i.bf, align 4, !tbaa !45
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next113, %i.bh
  br i1 %i.bi, label %.lr.ph98, label %.loopexit, !llvm.loop !243

.loopexit:                                        ; preds = %.lr.ph98, %bb.f, %._crit_edge95
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5108 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !232
  %.not81 = icmp eq i32 %i.bk, 0
  br i1 %.not81, label %.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !244 ; 2 uses
  %.not82 = icmp eq i32 %i.bm, -1
  br i1 %.not82, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !120
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [57 x i8], ptr @ac3_coupling_start_tab, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -114
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5164
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !63
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [19 x i8], ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.bx = load i32, ptr %i.bw, align 16, !tbaa !225
  %i.by = sdiv i32 %i.bx, 2
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !28  ; 2 uses
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = icmp slt i8 %i.cb, 0
  br i1 %i.cd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !231
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bj, align 4, !tbaa !232
  br label %.thread

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.072.ph = phi i32 [ 15, %bb.i ], [ %i.cc, %bb.h ], [ %i.bm, %bb.g ]
  %.072.ph.fr = freeze i32 %.072.ph               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 5120 ; 2 uses
  %i.ci = load i32, ptr %i.aa, align 4, !tbaa !46
  %i.cj = sdiv i32 %i.ci, 4                       ; 3 uses
  %i.ck = add nsw i32 %i.cj, 3                    ; 3 uses
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 13)
  %i.cm = add nsw i32 %i.cl, 2
  %i.cn = icmp slt i32 %.072.ph.fr, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %.072.ph.fr, i32 %i.cm)
  %spec.select = select i1 %i.cn, i32 0, i32 %..i ; 4 uses
  %i.co = sub nsw i32 %i.ck, %spec.select
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 5112
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !136
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5116 ; 3 uses
  store i32 1, ptr %i.cq, align 4, !tbaa !137
  store i8 12, ptr %i.ch, align 16, !tbaa !28
  %i.cr = add nsw i32 %i.cj, 2
  %i.cs = icmp slt i32 %spec.select, %i.cr
  br i1 %i.cs, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %bb.k
  %i.ct = sext i32 %spec.select to i64
  %i.cu = add nsw i64 %i.ct, 1
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.n
  %i.cv = phi i8 [ 12, %.lr.ph103.preheader ], [ %i.dc, %bb.n ]
  %indvars.iv115 = phi i64 [ %i.cu, %.lr.ph103.preheader ], [ %indvars.iv.next116, %bb.n ] ; 2 uses
  %.0100 = phi ptr [ %i.ch, %.lr.ph103.preheader ], [ %.1, %bb.n ] ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr @ff_eac3_default_cpl_band_struct, i64 %indvars.iv115
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !28
  %.not84 = icmp eq i8 %i.cx, 0
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph103
  %i.cy = add i8 %i.cv, 12                        ; 2 uses
  store i8 %i.cy, ptr %.0100, align 1, !tbaa !28
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph103
  %i.cz = load i32, ptr %i.cq, align 4, !tbaa !137
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cq, align 4, !tbaa !137
  %i.db = getelementptr inbounds nuw i8, ptr %.0100, i64 1 ; 2 uses
  store i8 12, ptr %i.db, align 1, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dc = phi i8 [ %i.cy, %bb.l ], [ 12, %bb.m ]
  %.1 = phi ptr [ %.0100, %bb.l ], [ %i.db, %bb.m ]
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next116 to i32
  %exitcond.not = icmp eq i32 %i.ck, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge104, label %.lr.ph103, !llvm.loop !245

._crit_edge104:                                   ; preds = %bb.n, %bb.k
  %i.dd = mul nsw i32 %spec.select, 12
  %i.de = add nsw i32 %i.dd, 37
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 5072
  store i32 %i.de, ptr %i.df, align 16, !tbaa !45
  %i.dg = mul nsw i32 %i.ck, 12
  %i.dh = add nsw i32 %i.dg, 37                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !177
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9  ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph107.preheader, label %.thread

.lr.ph107.preheader:                              ; preds = %._crit_edge104
  %wide.trip.count = zext nneg i32 %i.dk to i64
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %indvars.iv118 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next119, %.lr.ph107 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [648 x i8], ptr %0, i64 %indvars.iv118
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1664
  store i32 %i.dh, ptr %i.dn, align 8, !tbaa !45
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count
  br i1 %exitcond121.not, label %.thread, label %.lr.ph107, !llvm.loop !246

.thread:                                          ; preds = %.lr.ph107, %._crit_edge104, %.loopexit, %bb.j
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @bit_alloc_init(ptr nofree noundef captures(none) initializes((5144, 5164)) %0) unnamed_addr #6 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 5148
  store i32 2, ptr %1, align 4, !tbaa !186
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store i32 1, ptr %i.a, align 16, !tbaa !187
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5144
  store i32 1, ptr %i.b, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4940
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = select i1 %.not, i32 3, i32 2            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5156
  store i32 %i.e, ptr %i.f, align 4, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5160
  store i32 7, ptr %i.g, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5004
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93   ; 2 uses
  %.not2425 = icmp slt i32 %i.i, 0
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5204
  %i.k = add nuw i32 %i.i, 1
  %wide.trip.count = zext i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 4, ptr %i.l, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !247

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5200
  store i32 40, ptr %i.m, align 16, !tbaa !148
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_slow_decay_tab, i64 2), align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5176
  store i32 %i.o, ptr %i.p, align 8, !tbaa !248
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_fast_decay_tab, i64 1), align 1, !tbaa !28
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5180
  store i32 %i.r, ptr %i.s, align 4, !tbaa !249
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_slow_gain_tab, i64 2), align 2, !tbaa !144
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5172
  store i32 %i.u, ptr %i.v, align 4, !tbaa !250
  %i.w = zext nneg i32 %i.e to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_db_per_bit_tab, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !144
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store i32 %i.z, ptr %i.aa, align 16, !tbaa !251
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_floor_tab, i64 14), align 2, !tbaa !144
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5188
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !252
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store i32 0, ptr %i.ae, align 8, !tbaa !192
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 5196
  store i32 0, ptr %2, align 4, !tbaa !193
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !9  ; 6 uses
  %.not57.i = icmp eq i32 %i.ag, 6
  %i.ah = select i1 %.not57.i, i32 66, i32 65
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5460
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !127
  %.not58.i = icmp eq i32 %i.aj, 0
  br i1 %.not58.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !26
  %i.am = mul nsw i32 %i.al, 5                    ; 2 uses
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  %i.an = shl nsw i32 %i.ag, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  %i.aq = mul nsw i32 %i.an, %i.ap
  %.pre = mul nsw i32 %i.ap, 5
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.pre-phi = phi i32 [ %.pre, %bb.e ], [ %i.am, %bb.d ]
  %.pn.i = phi i32 [ %i.aq, %bb.e ], [ %i.am, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !104
  %.not59.i = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not59.i, i32 0, i32 %i.ag
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4960
  %i.av = load i32, ptr %i.au, align 16, !tbaa !100
  %.not60.i = icmp eq i32 %i.av, 3
  %.4.v.i = select i1 %.not60.i, i32 %.pre-phi, i32 1
  %.not61.i = icmp eq i32 %i.ag, 1
  %spec.select69.v.i = select i1 %.not61.i, i32 10, i32 11
  %.2.i = add nuw nsw i32 %spec.select69.v.i, %i.ah
  %spec.select78.i = add i32 %.2.i, %.pn.i
  %.4.i = add i32 %spec.select78.i, %i.at
  %spec.select69.i = add i32 %.4.i, %.4.v.i       ; 2 uses
  %i.aw = icmp sgt i32 %i.ag, 0
  br i1 %i.aw, label %.lr.ph.split.preheader.i, label %count_frame_bits_fixed.exit

bb.f:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !120
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr @count_frame_bits_fixed.frame_bits_inc, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i32                    ; 3 uses
  %i.bd = add nuw nsw i32 %i.bc, 65
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9 ; 3 uses
  %i.be = icmp sgt i32 %.pre.i, 0
  br i1 %i.be, label %.lr.ph.split.us.i, label %count_frame_bits_fixed.exit

.lr.ph.split.preheader.i:                         ; preds = %.thread.i
  %i.bf = mul i32 %i.ag, 3
  %i.bg = add i32 %spec.select69.i, %i.bf
  br label %count_frame_bits_fixed.exit

.lr.ph.split.us.i:                                ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !26 ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 16, !tbaa !104
  %.not66.us.i = icmp ne i32 %i.bk, 0             ; 2 uses
  %i.bl = zext i1 %.not66.us.i to i32             ; 2 uses
  %reass.mul.us.i = shl i32 %i.bj, 2              ; 2 uses
  %invariant.op.i = or disjoint i32 %reass.mul.us.i, %i.bl
  %invariant.op82.i = add nuw nsw i32 %i.bc, 82
  %spec.select72.us.reass.peel.i = add i32 %invariant.op82.i, %invariant.op.i
  %exitcond.peel.not.i = icmp eq i32 %.pre.i, 1
  br i1 %exitcond.peel.not.i, label %count_frame_bits_fixed.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.split.us.i
  %i.bm = or disjoint i32 %reass.mul.us.i, %i.bl
  %i.bn = add i32 %i.bm, 6
  %i.bo = add nsw i32 %.pre.i, -2
  %i.bp = mul i32 %i.bn, %i.bo
  %i.bq = shl i32 %i.bj, 3
  %i.br = add i32 %i.bp, %i.bq
  %i.bs = select i1 %.not66.us.i, i32 2, i32 0
  %i.bt = add i32 %i.br, %i.bs
  %i.bu = add i32 %i.bt, %i.bc
  %i.bv = add i32 %i.bu, 88
  br label %count_frame_bits_fixed.exit

count_frame_bits_fixed.exit:                      ; preds = %.peel.next.i, %.thread.i, %bb.f, %.lr.ph.split.preheader.i, %.lr.ph.split.us.i
  %.6.lcssa.i = phi i32 [ %i.bd, %bb.f ], [ %spec.select69.i, %.thread.i ], [ %i.bg, %.lr.ph.split.preheader.i ], [ %spec.select72.us.reass.peel.i, %.lr.ph.split.us.i ], [ %i.bv, %.peel.next.i ]
  %i.bw = add nsw i32 %.6.lcssa.i, 18
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5260
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !133
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @allocate_buffers(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5004 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93   ; 3 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4964 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = mul nsw i32 %i.c, %i.e                   ; 5 uses
  %i.g = shl nsw i32 %i.f, 8
  %.not119137 = icmp sgt i32 %i.b, 0
  br i1 %.not119137, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5272
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !93
  %i.j = sext i32 %i.i to i64
  %.not119 = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %.not119, label %bb.c, label %.critedge, !llvm.loop !253

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = tail call noalias ptr @av_mallocz(i64 noundef 1024) #15 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr %i.k, ptr %i.l, align 8, !tbaa !95
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.m = sext i32 %i.g to i64                     ; 7 uses
  %i.n = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 1) #15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5320
  store ptr %i.n, ptr %i.o, align 8, !tbaa !152
  %.not120 = icmp eq ptr %i.n, null
  br i1 %.not120, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 1) #15 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5328
  store ptr %i.p, ptr %i.q, align 16, !tbaa !151
  %.not121 = icmp eq ptr %i.p, null
  br i1 %.not121, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @av_calloc(i64 noundef %i.m, i64 noundef 4) #15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5336 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !254
  %.not122 = icmp eq ptr %i.r, null
  br i1 %.not122, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 1) #15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !255
  %.not123 = icmp eq ptr %i.t, null
  br i1 %.not123, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = shl nsw i32 %i.f, 7
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @av_malloc_array(i64 noundef %i.w, i64 noundef 1) #15 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5360 ; 2 uses
  store ptr %i.x, ptr %i.y, align 16, !tbaa !256
  %.not124 = icmp eq ptr %i.x, null
  br i1 %.not124, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 2) #15 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5368 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !257
  %.not125 = icmp eq ptr %i.z, null
  br i1 %.not125, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = shl nsw i32 %i.f, 6
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = tail call ptr @av_malloc_array(i64 noundef %i.ac, i64 noundef 2) #15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5376 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 16, !tbaa !258
  %.not126 = icmp eq ptr %i.ad, null
  br i1 %.not126, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @av_malloc_array(i64 noundef %i.ac, i64 noundef 2) #15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5384 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !259
  %.not127 = icmp eq ptr %i.af, null
  br i1 %.not127, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 2) #15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5392 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !260
  %.not128 = icmp eq ptr %i.ah, null
  br i1 %.not128, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_1
