Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__v_prefilter:bb.a
  %i.t = and i64 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 %i.k, ptr %i.u, align 1, !tbaa !37
  %i.v = lshr i32 %i.r, 1
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.j, align 1, !tbaa !37
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %.loopexit, label %.lr.ph147, !llvm.loop !16

.lr.ph141:                                        ; preds = %.preheader122, %.lr.ph141
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph141 ], [ 0, %.preheader122 ] ; 4 uses
  %.1140 = phi i32 [ %i.ag, %.lr.ph141 ], [ 0, %.preheader122 ]
  %i.x = mul nsw i64 %indvars.iv184, %i.e
  %i.y = getelementptr inbounds i8, ptr %.0111159, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i64 %indvars.iv184, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 %i.aa, %i.ae
  %i.ag = add i32 %i.af, %.1140                   ; 3 uses
  %i.ah = add nuw i64 %indvars.iv184, 3
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.z, ptr %i.aj, align 1, !tbaa !37
  %i.ak = udiv i32 %i.ag, 3
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.y, align 1, !tbaa !37
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %.loopexit, label %.lr.ph141, !llvm.loop !17

.lr.ph135:                                        ; preds = %.preheader124, %.lr.ph135
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph135 ], [ 0, %.preheader124 ] ; 4 uses
  %.2134 = phi i32 [ %i.aw, %.lr.ph135 ], [ 0, %.preheader124 ]
  %i.am = mul nsw i64 %indvars.iv179, %i.e
  %i.an = getelementptr inbounds i8, ptr %.0111159, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i64 %indvars.iv179, 7
  %i.ar = and i64 %indvars.iv179, 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = zext i8 %i.at to i32
  %i.av = sub nsw i32 %i.ap, %i.au
  %i.aw = add i32 %i.av, %.2134                   ; 3 uses
  %i.ax = xor i64 %i.aq, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 %i.ao, ptr %i.ay, align 1, !tbaa !37
  %i.az = lshr i32 %i.aw, 2
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.an, align 1, !tbaa !37
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.loopexit, label %.lr.ph135, !llvm.loop !18

.lr.ph:                                           ; preds = %.preheader126, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader126 ] ; 4 uses
  %.3130 = phi i32 [ %i.bk, %.lr.ph ], [ 0, %.preheader126 ]
  %i.bb = mul nsw i64 %indvars.iv, %i.e
  %i.bc = getelementptr inbounds i8, ptr %.0111159, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37  ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i64 %indvars.iv, 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = zext i8 %i.bh to i32
  %i.bj = sub nsw i32 %i.be, %i.bi
  %i.bk = add i32 %i.bj, %.3130                   ; 3 uses
  %i.bl = add nuw i64 %indvars.iv, 5
  %i.bm = and i64 %i.bl, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 %i.bd, ptr %i.bn, align 1, !tbaa !37
  %i.bo = udiv i32 %i.bk, 5
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %i.bc, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

.lr.ph153:                                        ; preds = %.preheader, %.lr.ph153
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.lr.ph153 ], [ 0, %.preheader ] ; 4 uses
  %.4152 = phi i32 [ %i.ca, %.lr.ph153 ], [ 0, %.preheader ]
  %i.bq = mul nsw i64 %indvars.iv194, %i.e
  %i.br = getelementptr inbounds i8, ptr %.0111159, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37  ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = trunc nuw nsw i64 %indvars.iv194 to i32
  %i.bv = and i64 %indvars.iv194, 7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i32
  %i.bz = sub nsw i32 %i.bt, %i.by
  %i.ca = add i32 %i.bz, %.4152                   ; 3 uses
  %i.cb = add i32 %4, %i.bu
  %i.cc = and i32 %i.cb, 7
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  store i8 %i.bs, ptr %i.ce, align 1, !tbaa !37
  %i.cf = udiv i32 %i.ca, %4
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.br, align 1, !tbaa !37
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.loopexit, label %.lr.ph153, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph135, %.lr.ph141, %.lr.ph147, %.lr.ph153, %.preheader126, %.preheader124, %.preheader122, %.preheader120, %.preheader
  %.5108 = phi i32 [ %i.g, %.lr.ph141 ], [ %i.g, %.lr.ph135 ], [ %i.g, %.lr.ph153 ], [ %i.g, %.lr.ph147 ], [ 0, %.preheader ], [ 0, %.preheader120 ], [ 0, %.preheader122 ], [ 0, %.preheader124 ], [ 0, %.preheader126 ], [ %i.g, %.lr.ph ] ; 2 uses
  %.5 = phi i32 [ %i.ag, %.lr.ph141 ], [ %i.aw, %.lr.ph135 ], [ %i.ca, %.lr.ph153 ], [ %i.r, %.lr.ph147 ], [ 0, %.preheader ], [ 0, %.preheader120 ], [ 0, %.preheader122 ], [ 0, %.preheader124 ], [ 0, %.preheader126 ], [ %i.bk, %.lr.ph ] ; 2 uses
  %i.ch = icmp slt i32 %.5108, %2
  br i1 %i.ch, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %.loopexit
  %i.ci = sext i32 %.5108 to i64                  ; 6 uses
  %i.cj = sub nsw i64 %wide.trip.count202, %i.ci
  %xtraiter = and i64 %i.cj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph158.prol.loopexit, label %.lr.ph158.prol

.lr.ph158.prol:                                   ; preds = %.lr.ph158.preheader
  %i.ck = and i64 %i.ci, 7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !37
  %i.cn = zext i8 %i.cm to i32
  %i.co = sub i32 %.5, %i.cn                      ; 2 uses
  %i.cp = udiv i32 %i.co, %4
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = mul nsw i64 %i.ci, %i.e
  %i.cs = getelementptr inbounds i8, ptr %.0111159, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !37
  %indvars.iv.next200.prol = add nuw nsw i64 %i.ci, 1
  br label %.lr.ph158.prol.loopexit

.lr.ph158.prol.loopexit:                          ; preds = %.lr.ph158.prol, %.lr.ph158.preheader
  %indvars.iv199.unr = phi i64 [ %i.ci, %.lr.ph158.preheader ], [ %indvars.iv.next200.prol, %.lr.ph158.prol ]
  %.6157.unr = phi i32 [ %.5, %.lr.ph158.preheader ], [ %i.co, %.lr.ph158.prol ]
  %i.ct = icmp eq i64 %i.h, %i.ci
  br i1 %i.ct, label %._crit_edge, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.1, %.lr.ph158 ], [ %indvars.iv199.unr, %.lr.ph158.prol.loopexit ] ; 4 uses
  %.6157 = phi i32 [ %i.dh, %.lr.ph158 ], [ %.6157.unr, %.lr.ph158.prol.loopexit ]
  %i.cu = and i64 %indvars.iv199, 7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !37
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub i32 %.6157, %i.cx                   ; 2 uses
  %i.cz = udiv i32 %i.cy, %4
  %i.da = trunc i32 %i.cz to i8
  %i.db = mul nsw i64 %indvars.iv199, %i.e
  %i.dc = getelementptr inbounds i8, ptr %.0111159, i64 %i.db
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !37
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.dd = and i64 %indvars.iv.next200, 7
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !37
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub i32 %i.cy, %i.dg                    ; 2 uses
  %i.di = udiv i32 %i.dh, %4
  %i.dj = trunc i32 %i.di to i8
  %i.dk = mul nsw i64 %indvars.iv.next200, %i.e
  %i.dl = getelementptr inbounds i8, ptr %.0111159, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !37
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %exitcond203.not.1 = icmp eq i64 %indvars.iv.next200.1, %wide.trip.count202
  br i1 %exitcond203.not.1, label %._crit_edge, label %.lr.ph158, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %.0111159, i64 1
  %i.dn = add nuw nsw i32 %.0110161, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.dn, %1
  br i1 %exitcond204.not, label %._crit_edge164, label %bb.b, !llvm.loop !22

._crit_edge164:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define float @stbtt__oversample_shift(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sub nsw i32 1, %0
  %i.b = sitofp i32 %i.a to float
  %i.c = sitofp i32 %0 to float
  %i.d = fmul nnan float %i.c, 2.000000e+00
  %i.e = fdiv float %i.b, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.e, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_PackFontRangesGatherRects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #12 {
bb.a:
  %5 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph90, label %._crit_edge91

.lr.ph90:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph90, %._crit_edge
  %indvars.iv98 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next99, %._crit_edge ] ; 2 uses
  %.088 = phi i32 [ 0, %.lr.ph90 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05487 = phi i32 [ 0, %.lr.ph90 ], [ %.155.lcssa, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv98 ; 6 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !143 ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.u = load i32, ptr %i.d, align 4, !tbaa !48
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %i.z = zext i8 %i.y to i16
  %i.aa = shl nuw i16 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.aa, %i.ad
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37
  %i.am = zext i8 %i.al to i16
  %i.an = or disjoint i16 %i.aj, %i.am
  %i.ao = sext i16 %i.an to i32
  %i.ap = sub nsw i32 %i.af, %i.ao
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fdiv float %i.r, %i.aq
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = fneg float %i.r
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.au = load i32, ptr %i.c, align 4, !tbaa !46
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = zext i8 %i.bc to i16
  %i.be = or disjoint i16 %i.ba, %i.bd
  %i.bf = uitofp i16 %i.be to float
  %i.bg = fdiv float %i.as, %i.bf
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = phi float [ %i.ar, %bb.c ], [ %i.bg, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bj = load <2 x i32>, ptr %i.e, align 4, !tbaa !39 ; 5 uses
  %i.bk = bitcast <2 x i32> %i.bj to <8 x i8>
  %i.bl = extractelement <8 x i8> %i.bk, i64 0
  store i8 %i.bl, ptr %i.bi, align 8, !tbaa !214
  %i.bm = bitcast <2 x i32> %i.bj to <8 x i8>
  %i.bn = extractelement <8 x i8> %i.bm, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !215
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !144 ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %6 = sext i32 %.05487 to i64
  %i.bu = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.u
  %.pre102.pre114 = phi i32 [ %i.bq, %.lr.ph ], [ %.pre102.pre115, %bb.u ] ; 5 uses
  %.pre102111 = phi i32 [ %i.bq, %.lr.ph ], [ %.pre102112, %bb.u ] ; 4 uses
  %i.bw = phi i32 [ %i.bq, %.lr.ph ], [ %i.he, %bb.u ]
  %indvars.iv93 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next94, %bb.u ] ; 3 uses
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.184.a = phi i32 [ %.088, %.lr.ph ], [ %.2, %bb.u ] ; 3 uses
  %i.bx = phi <2 x i32> [ %i.bj, %.lr.ph ], [ %i.hf, %bb.u ] ; 2 uses
  %i.by = phi <2 x i32> [ %i.bj, %.lr.ph ], [ %i.hg, %bb.u ] ; 5 uses
  %i.bz = phi <2 x i32> [ %i.bj, %.lr.ph ], [ %i.hh, %bb.u ] ; 4 uses
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !145 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = load i32, ptr %i.bt, align 4, !tbaa !146
  %i.cd = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.ce = add nsw i32 %i.cc, %i.cd
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv93
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ch = phi i32 [ %i.ce, %bb.g ], [ %i.cg, %bb.h ]
  %i.ci = call i32 @stbtt_FindGlyphIndex(ptr noundef %1, i32 noundef %i.ch) ; 5 uses
  %i.cj = icmp eq i32 %i.ci, 0                    ; 2 uses
  br i1 %i.cj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %i.f, align 8, !tbaa !141
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp ne i32 %.184.a, 0
  %or.cond = select i1 %i.cl, i1 true, i1 %i.cm
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr inbounds [24 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 0, ptr %i.co, align 4, !tbaa !127
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !126
  br label %bb.u

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.cq = uitofp <2 x i32> %i.bx to <2 x float>
  %i.cr = fmul <2 x float> %i.bv, %i.cq           ; 2 uses
  %i.cs = load i32, ptr %i.g, align 4, !tbaa !56
  %.not.i61 = icmp eq i32 %i.cs, 0
  br i1 %.not.i61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store i32 1, ptr %5, align 8
  %i.ct = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %1, i32 noundef %i.ci, ptr noundef nonnull %5)
  %.not17.i.i = icmp eq i32 %i.ct, 0              ; 4 uses
  %i.cu = load i32, ptr %i.h, align 8
  %i.cv = select i1 %.not17.i.i, i32 0, i32 %i.cu
  %i.cw = load i32, ptr %i.i, align 8
  %i.cx = select i1 %.not17.i.i, i32 0, i32 %i.cw
  %i.cy = load i32, ptr %i.j, align 4
  %i.cz = select i1 %.not17.i.i, i32 0, i32 %i.cy
  %i.da = load i32, ptr %i.k, align 4
  %i.db = select i1 %.not17.i.i, i32 0, i32 %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.dc = load <2 x i32>, ptr %i.e, align 4, !tbaa !39
  %.pre102.pre.pre = load i32, ptr %i.bp, align 8, !tbaa !144
  br label %stbtt_GetGlyphBox.exit

bb.n:                                             ; preds = %bb.l
  %i.dd = load i32, ptr %i.l, align 4, !tbaa !53
  %.not.i37.i = icmp slt i32 %i.ci, %i.dd
  br i1 %.not.i37.i, label %bb.o, label %stbtt_GetGlyphBitmapBoxSubpixel.exit

bb.o:                                             ; preds = %bb.n
  %i.de = load i32, ptr %i.m, align 4, !tbaa !55  ; 2 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = icmp eq i32 %i.de, 0
  %i.dh = load i32, ptr %i.n, align 8, !tbaa !47
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !43  ; 2 uses
  %i.dj = load i32, ptr %i.o, align 8, !tbaa !45
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk ; 2 uses
  br i1 %i.dg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = shl nsw i32 %i.ci, 1
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn ; 4 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !37
  %i.dq = zext i8 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dq, 9
  %i.dv = shl nuw nsw i32 %i.dt, 1
  %i.dw = or disjoint i32 %i.dv, %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !37
  %i.dz = zext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !37
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.dz, 9
  %i.ee = shl nuw nsw i32 %i.ec, 1
  %i.ef = or disjoint i32 %i.ee, %i.ed
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eg = shl nsw i32 %i.ci, 2
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.dl, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 1
  %i.ek = call i32 @llvm.bswap.i32(i32 %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = load i32, ptr %i.el, align 1
  %i.en = call i32 @llvm.bswap.i32(i32 %i.em)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i32 [ %i.en, %bb.r ], [ %i.ef, %bb.q ]
  %.pn.i.i = phi i32 [ %i.ek, %bb.r ], [ %i.dw, %bb.q ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.dh             ; 2 uses
  %i.eo = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.ep = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eq = zext nneg i32 %.023.i.i to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eq ; 8 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !37
  %i.eu = zext i8 %i.et to i16
  %i.ev = shl nuw i16 %i.eu, 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 3
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !37
  %i.ey = zext i8 %i.ex to i16
  %i.ez = or disjoint i16 %i.ev, %i.ey
  %i.fa = sext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !37
  %i.fd = zext i8 %i.fc to i16
  %i.fe = shl nuw i16 %i.fd, 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !37
  %i.fh = zext i8 %i.fg to i16
  %i.fi = or disjoint i16 %i.fe, %i.fh
  %i.fj = sext i16 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 6
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !37
  %i.fm = zext i8 %i.fl to i16
  %i.fn = shl nuw i16 %i.fm, 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 7
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !37
  %i.fq = zext i8 %i.fp to i16
  %i.fr = or disjoint i16 %i.fn, %i.fq
  %i.fs = sext i16 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !37
  %i.fv = zext i8 %i.fu to i16
  %i.fw = shl nuw i16 %i.fv, 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.er, i64 9
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !37
  %i.fz = zext i8 %i.fy to i16
  %i.ga = or disjoint i16 %i.fw, %i.fz
  %i.gb = sext i16 %i.ga to i32
  br label %stbtt_GetGlyphBox.exit

stbtt_GetGlyphBox.exit:                           ; preds = %bb.t, %bb.m
  %.pre102.pre = phi i32 [ %.pre102.pre114, %bb.t ], [ %.pre102.pre.pre, %bb.m ] ; 2 uses
  %.075 = phi i32 [ %i.fa, %bb.t ], [ %i.cv, %bb.m ]
  %.074 = phi i32 [ %i.fj, %bb.t ], [ %i.cx, %bb.m ]
  %.073 = phi i32 [ %i.fs, %bb.t ], [ %i.cz, %bb.m ]
  %.072 = phi i32 [ %i.gb, %bb.t ], [ %i.db, %bb.m ]
  %i.gc = phi <2 x i32> [ %i.by, %bb.t ], [ %i.dc, %bb.m ] ; 2 uses
  %i.gd = sub nsw i32 0, %.072
  %i.ge = sub nsw i32 0, %.074
  %i.gf = insertelement <2 x i32> poison, i32 %.075, i64 0
  %i.gg = insertelement <2 x i32> %i.gf, i32 %i.gd, i64 1
  %i.gh = sitofp <2 x i32> %i.gg to <2 x float>
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.cr, <2 x float> zeroinitializer)
  %i.gj = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.gi)
  %i.gk = fptosi <2 x float> %i.gj to <2 x i32>
  %i.gl = insertelement <2 x i32> poison, i32 %.073, i64 0
  %i.gm = insertelement <2 x i32> %i.gl, i32 %i.ge, i64 1
  %i.gn = sitofp <2 x i32> %i.gm to <2 x float>
  %i.go = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.cr, <2 x float> zeroinitializer)
  %i.gp = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.go)
  %i.gq = fptosi <2 x float> %i.gp to <2 x i32>
  %i.gr = xor <2 x i32> %i.gk, splat (i32 -1)
  br label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.o, %bb.n, %bb.s, %stbtt_GetGlyphBox.exit
  %.pre102.pre116 = phi i32 [ %.pre102.pre, %stbtt_GetGlyphBox.exit ], [ %.pre102.pre114, %bb.s ], [ %.pre102.pre114, %bb.n ], [ %.pre102.pre114, %bb.o ]
  %.pre102 = phi i32 [ %.pre102.pre, %stbtt_GetGlyphBox.exit ], [ %.pre102111, %bb.s ], [ %.pre102111, %bb.n ], [ %.pre102111, %bb.o ] ; 2 uses
  %i.gs = phi <2 x i32> [ %i.gr, %stbtt_GetGlyphBox.exit ], [ splat (i32 -1), %bb.s ], [ splat (i32 -1), %bb.n ], [ splat (i32 -1), %bb.o ]
  %i.gt = phi <2 x i32> [ %i.gq, %stbtt_GetGlyphBox.exit ], [ zeroinitializer, %bb.s ], [ zeroinitializer, %bb.n ], [ zeroinitializer, %bb.o ]
  %i.gu = phi <2 x i32> [ %i.gc, %stbtt_GetGlyphBox.exit ], [ %i.bz, %bb.s ], [ %i.bz, %bb.n ], [ %i.bz, %bb.o ] ; 3 uses
  %i.gv = phi <2 x i32> [ %i.gc, %stbtt_GetGlyphBox.exit ], [ %i.by, %bb.s ], [ %i.by, %bb.n ], [ %i.by, %bb.o ]
  %i.gw = load i32, ptr %i.p, align 4, !tbaa !137
  %i.gx = getelementptr inbounds [24 x i8], ptr %4, i64 %indvars.iv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = insertelement <2 x i32> poison, i32 %i.gw, i64 0
  %i.ha = shufflevector <2 x i32> %i.gz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.hb = add <2 x i32> %i.gs, %i.ha
  %i.hc = add <2 x i32> %i.hb, %i.gt
  %i.hd = add <2 x i32> %i.hc, %i.gu
  store <2 x i32> %i.hd, ptr %i.gy, align 4, !tbaa !39
  %spec.select = select i1 %i.cj, i32 1, i32 %.184.a
  br label %bb.u

bb.u:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.k
  %.pre102.pre115 = phi i32 [ %.pre102.pre114, %bb.k ], [ %.pre102.pre116, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %.pre102112 = phi i32 [ %.pre102111, %bb.k ], [ %.pre102, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.he = phi i32 [ %i.bw, %bb.k ], [ %.pre102, %stbtt_GetGlyphBitmapBoxSubpixel.exit ] ; 2 uses
  %.2 = phi i32 [ %.184.a, %bb.k ], [ %spec.select, %stbtt_GetGlyphBitmapBoxSubpixel.exit ] ; 2 uses
  %i.hf = phi <2 x i32> [ %i.bx, %bb.k ], [ %i.gu, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.hg = phi <2 x i32> [ %i.by, %bb.k ], [ %i.gv, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.hh = phi <2 x i32> [ %i.bz, %bb.k ], [ %i.gu, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.hi = sext i32 %i.he to i64
  %i.hj = icmp slt i64 %indvars.iv.next94, %i.hi
  br i1 %i.hj, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !212

._crit_edge.loopexit:                             ; preds = %bb.u
  %7 = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.155.lcssa = phi i32 [ %.05487, %bb.e ], [ %7, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.088, %bb.e ], [ %.2, %._crit_edge.loopexit ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge91, label %bb.b, !llvm.loop !213

._crit_edge91:                                    ; preds = %._crit_edge, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %.155.lcssa, %._crit_edge ]
  ret i32 %.054.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbtt_PackFontRangesRenderIntoRects(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %struct.stbtt__csctx, align 8       ; 7 uses
  %i.a = alloca [8 x i8], align 8                 ; 21 uses
  %i.b = alloca [8 x i8], align 8                 ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load <2 x i32>, ptr %i.c, align 4, !tbaa !39
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.lr.ph230, label %._crit_edge231

.lr.ph230:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph230, %._crit_edge
  %indvars.iv257 = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next258, %._crit_edge ] ; 2 uses
  %.0228 = phi i32 [ 1, %.lr.ph230 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.0139227 = phi i32 [ -1, %.lr.ph230 ], [ %.1140.lcssa, %._crit_edge ] ; 2 uses
  %.0142226 = phi i32 [ 0, %.lr.ph230 ], [ %.1143.lcssa, %._crit_edge ] ; 2 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv257 ; 6 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !143 ; 3 uses
  %i.x = fcmp ogt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.z = load i32, ptr %i.i, align 4, !tbaa !48
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i16
  %i.af = shl nuw i16 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37
  %i.ai = zext i8 %i.ah to i16
  %i.aj = or disjoint i16 %i.af, %i.ai
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = sext i16 %i.as to i32
  %i.au = sub nsw i32 %i.ak, %i.at
  %i.av = sitofp i32 %i.au to float
  %i.aw = fdiv float %i.w, %i.av
  br label %stbtt__oversample_shift.exit

bb.d:                                             ; preds = %bb.b
  %i.ax = fneg float %i.w
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.az = load i32, ptr %i.h, align 4, !tbaa !46
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 18
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = zext i8 %i.bd to i16
  %i.bf = shl nuw i16 %i.be, 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 19
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = zext i8 %i.bh to i16
  %i.bj = or disjoint i16 %i.bf, %i.bi
  %i.bk = uitofp i16 %i.bj to float
  %i.bl = fdiv float %i.ax, %i.bk
  br label %stbtt__oversample_shift.exit

stbtt__oversample_shift.exit:                     ; preds = %bb.d, %bb.c
  %i.bm = phi float [ %i.aw, %bb.c ], [ %i.bl, %bb.d ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bo = load <2 x i8>, ptr %i.bn, align 8, !tbaa !37 ; 4 uses
  %i.bp = zext <2 x i8> %i.bo to <2 x i32>
  store <2 x i32> %i.bp, ptr %i.c, align 4, !tbaa !39
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !144
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %stbtt__oversample_shift.exit
  %i.bt = icmp eq <2 x i8> %i.bo, zeroinitializer
  %i.bu = zext <2 x i8> %i.bo to <2 x i16>
  %i.bv = sub nsw <2 x i16> splat (i16 1), %i.bu
  %i.bw = sitofp <2 x i16> %i.bv to <2 x float>
  %i.bx = uitofp <2 x i8> %i.bo to <2 x float>    ; 2 uses
  %i.by = fmul nnan <2 x float> %i.bx, splat (float 2.000000e+00)
  %i.bz = fdiv <2 x float> %i.bw, %i.by
  %i.ca = select <2 x i1> %i.bt, <2 x float> zeroinitializer, <2 x float> %i.bz ; 2 uses
  %i.cb = fdiv <2 x float> splat (float 1.000000e+00), %i.bx ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.cf = sext i32 %.0142226 to i64
  %i.cg = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = extractelement <2 x float> %i.ca, i64 1
  %i.ci = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = extractelement <2 x float> %i.cb, i64 1
  %i.ck = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = shufflevector <4 x float> %i.cg, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.thread198
  %indvars.iv252 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next253, %.thread198 ] ; 6 uses
  %indvars.iv = phi i64 [ %i.cf, %.lr.ph ], [ %indvars.iv.next, %.thread198 ] ; 2 uses
  %.1222 = phi i32 [ %.0228, %.lr.ph ], [ %.2, %.thread198 ] ; 2 uses
  %.1140221 = phi i32 [ %.0139227, %.lr.ph ], [ %.3, %.thread198 ] ; 8 uses
  %i.cn = getelementptr inbounds [24 x i8], ptr %4, i64 %indvars.iv ; 11 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !130
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %.thread198, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 12 ; 6 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !126 ; 2 uses
  %.not151 = icmp eq i32 %i.cr, 0
  br i1 %.not151, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 6 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !127 ; 2 uses
  %.not152 = icmp eq i32 %i.ct, 0
  br i1 %.not152, label %.thread198, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !147
  %i.cv = getelementptr inbounds nuw [28 x i8], ptr %i.cu, i64 %indvars.iv252 ; 6 uses
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !145 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = load i32, ptr %i.ce, align 4, !tbaa !146
  %i.cz = trunc nuw nsw i64 %indvars.iv252 to i32
  %i.da = add nsw i32 %i.cy, %i.cz
  br label %stbtt_GetGlyphHMetrics.exit

bb.j:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv252
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !39
  br label %stbtt_GetGlyphHMetrics.exit

stbtt_GetGlyphHMetrics.exit:                      ; preds = %bb.j, %bb.i
  %i.dd = phi i32 [ %i.da, %bb.i ], [ %i.dc, %bb.j ]
  %i.de = call i32 @stbtt_FindGlyphIndex(ptr noundef %1, i32 noundef %i.dd) ; 8 uses
  %i.df = load i32, ptr %i.j, align 4, !tbaa !137 ; 4 uses
  %i.dg = load i32, ptr %i.cn, align 4, !tbaa !128
  %i.dh = add nsw i32 %i.dg, %i.df                ; 5 uses
  store i32 %i.dh, ptr %i.cn, align 4, !tbaa !128
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 6 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !129
  %i.dk = add nsw i32 %i.dj, %i.df                ; 5 uses
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !129
  %i.dl = sub nsw i32 %i.cr, %i.df                ; 5 uses
  store i32 %i.dl, ptr %i.cq, align 4, !tbaa !126
  %i.dm = sub nsw i32 %i.ct, %i.df                ; 5 uses
  store i32 %i.dm, ptr %i.cs, align 4, !tbaa !127
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !43  ; 4 uses
  %i.do = load i32, ptr %i.i, align 4, !tbaa !48
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 34
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !37
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 35
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !37
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.du, %i.dx            ; 2 uses
  %i.dz = icmp slt i32 %i.de, %i.dy               ; 2 uses
  %i.ea = load i32, ptr %i.k, align 8, !tbaa !49
end_hunk_0
