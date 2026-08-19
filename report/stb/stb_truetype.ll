inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__h_prefilter:bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__v_prefilter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph163, label %._crit_edge164

.lr.ph163:                                        ; preds = %bb.a
  %i.c = sub i32 %2, %4
  %i.d = zext i32 %4 to i64
  %.not128 = icmp slt i32 %i.c, 0                 ; 5 uses
  %i.e = sext i32 %3 to i64                       ; 8 uses
  %i.f = add i32 %2, 1
  %i.g = sub i32 %i.f, %4                         ; 10 uses
  %wide.trip.count = zext i32 %i.g to i64
  %wide.trip.count182 = zext i32 %i.g to i64
  %wide.trip.count187 = zext i32 %i.g to i64
  %wide.trip.count192 = zext i32 %i.g to i64
  %wide.trip.count197 = zext i32 %i.g to i64
  %wide.trip.count202 = sext i32 %2 to i64        ; 3 uses
  %i.h = add nsw i64 %wide.trip.count202, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %._crit_edge
  %.0110161 = phi i32 [ 0, %.lr.ph163 ], [ %i.dn, %._crit_edge ]
  %.0111159 = phi ptr [ %0, %.lr.ph163 ], [ %i.dm, %._crit_edge ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.a, i8 0, i64 %i.d, i1 false)
  switch i32 %4, label %.preheader [
    i32 2, label %.preheader120
    i32 3, label %.preheader122
    i32 4, label %.preheader124
    i32 5, label %.preheader126
  ]

.preheader126:                                    ; preds = %bb.b
  br i1 %.not128, label %.loopexit, label %.lr.ph

.preheader124:                                    ; preds = %bb.b
  br i1 %.not128, label %.loopexit, label %.lr.ph135

.preheader122:                                    ; preds = %bb.b
  br i1 %.not128, label %.loopexit, label %.lr.ph141

.preheader120:                                    ; preds = %bb.b
  br i1 %.not128, label %.loopexit, label %.lr.ph147

.preheader:                                       ; preds = %bb.b
  br i1 %.not128, label %.loopexit, label %.lr.ph153

.lr.ph147:                                        ; preds = %.preheader120, %.lr.ph147
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.lr.ph147 ], [ 0, %.preheader120 ] ; 4 uses
  %.0146 = phi i32 [ %i.r, %.lr.ph147 ], [ 0, %.preheader120 ]
  %i.i = mul nsw i64 %indvars.iv189, %i.e
  %i.j = getelementptr inbounds i8, ptr %.0111159, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = and i64 %indvars.iv189, 7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 %i.l, %i.p
  %i.r = add i32 %i.q, %.0146                     ; 3 uses
  %i.s = add nuw i64 %indvars.iv189, 2
  %i.t = and i64 %i.s, 7
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  store i8 %i.k, ptr %i.u, align 1, !tbaa !14
  %i.v = lshr i32 %i.r, 1
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.j, align 1, !tbaa !14
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %.loopexit, label %.lr.ph147, !llvm.loop !197

.lr.ph141:                                        ; preds = %.preheader122, %.lr.ph141
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph141 ], [ 0, %.preheader122 ] ; 4 uses
  %.1140 = phi i32 [ %i.ag, %.lr.ph141 ], [ 0, %.preheader122 ]
  %i.x = mul nsw i64 %indvars.iv184, %i.e
  %i.y = getelementptr inbounds i8, ptr %.0111159, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i64 %indvars.iv184, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 %i.aa, %i.ae
  %i.ag = add i32 %i.af, %.1140                   ; 3 uses
  %i.ah = add nuw i64 %indvars.iv184, 3
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.z, ptr %i.aj, align 1, !tbaa !14
  %i.ak = udiv i32 %i.ag, 3
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.y, align 1, !tbaa !14
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %.loopexit, label %.lr.ph141, !llvm.loop !198

.lr.ph135:                                        ; preds = %.preheader124, %.lr.ph135
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph135 ], [ 0, %.preheader124 ] ; 4 uses
  %.2134 = phi i32 [ %i.aw, %.lr.ph135 ], [ 0, %.preheader124 ]
  %i.am = mul nsw i64 %indvars.iv179, %i.e
  %i.an = getelementptr inbounds i8, ptr %.0111159, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = and i64 %indvars.iv179, 7
  %i.ar = and i64 %indvars.iv179, 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14
  %i.au = zext i8 %i.at to i32
  %i.av = sub nsw i32 %i.ap, %i.au
  %i.aw = add i32 %i.av, %.2134                   ; 3 uses
  %i.ax = xor i64 %i.aq, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i8 %i.ao, ptr %i.ay, align 1, !tbaa !14
  %i.az = lshr i32 %i.aw, 2
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.an, align 1, !tbaa !14
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %.loopexit, label %.lr.ph135, !llvm.loop !199

.lr.ph:                                           ; preds = %.preheader126, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader126 ] ; 4 uses
  %.3130 = phi i32 [ %i.bk, %.lr.ph ], [ 0, %.preheader126 ]
  %i.bb = mul nsw i64 %indvars.iv, %i.e
  %i.bc = getelementptr inbounds i8, ptr %.0111159, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14  ; 2 uses
  %i.be = zext i8 %i.bd to i32
  %i.bf = and i64 %indvars.iv, 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = zext i8 %i.bh to i32
  %i.bj = sub nsw i32 %i.be, %i.bi
  %i.bk = add i32 %i.bj, %.3130                   ; 3 uses
  %i.bl = add nuw i64 %indvars.iv, 5
  %i.bm = and i64 %i.bl, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bm
  store i8 %i.bd, ptr %i.bn, align 1, !tbaa !14
  %i.bo = udiv i32 %i.bk, 5
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %i.bc, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !200

.lr.ph153:                                        ; preds = %.preheader, %.lr.ph153
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.lr.ph153 ], [ 0, %.preheader ] ; 4 uses
  %.4152 = phi i32 [ %i.ca, %.lr.ph153 ], [ 0, %.preheader ]
  %i.bq = mul nsw i64 %indvars.iv194, %i.e
  %i.br = getelementptr inbounds i8, ptr %.0111159, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14  ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = trunc nuw nsw i64 %indvars.iv194 to i32
  %i.bv = and i64 %indvars.iv194, 7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i32
  %i.bz = sub nsw i32 %i.bt, %i.by
  %i.ca = add i32 %i.bz, %.4152                   ; 3 uses
  %i.cb = add i32 %4, %i.bu
  %i.cc = and i32 %i.cb, 7
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  store i8 %i.bs, ptr %i.ce, align 1, !tbaa !14
  %i.cf = udiv i32 %i.ca, %4
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.br, align 1, !tbaa !14
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %.loopexit, label %.lr.ph153, !llvm.loop !201

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
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cn = zext i8 %i.cm to i32
  %i.co = sub i32 %.5, %i.cn                      ; 2 uses
  %i.cp = udiv i32 %i.co, %4
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = mul nsw i64 %i.ci, %i.e
  %i.cs = getelementptr inbounds i8, ptr %.0111159, i64 %i.cr
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !14
  %indvars.iv.next200.prol = add nsw i64 %i.ci, 1
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
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !14
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub i32 %.6157, %i.cx                   ; 2 uses
  %i.cz = udiv i32 %i.cy, %4
  %i.da = trunc i32 %i.cz to i8
  %i.db = mul nsw i64 %indvars.iv199, %i.e
  %i.dc = getelementptr inbounds i8, ptr %.0111159, i64 %i.db
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !14
  %indvars.iv.next200 = add nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.dd = and i64 %indvars.iv.next200, 7
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !14
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub i32 %i.cy, %i.dg                    ; 2 uses
  %i.di = udiv i32 %i.dh, %4
  %i.dj = trunc i32 %i.di to i8
  %i.dk = mul nsw i64 %indvars.iv.next200, %i.e
  %i.dl = getelementptr inbounds i8, ptr %.0111159, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1, !tbaa !14
  %indvars.iv.next200.1 = add nsw i64 %indvars.iv199, 2 ; 2 uses
  %exitcond203.not.1 = icmp eq i64 %indvars.iv.next200.1, %wide.trip.count202
  br i1 %exitcond203.not.1, label %._crit_edge, label %.lr.ph158, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph158.prol.loopexit, %.lr.ph158, %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %.0111159, i64 1
  %i.dn = add nuw nsw i32 %.0110161, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.dn, %1
  br i1 %exitcond204.not, label %._crit_edge164, label %bb.b, !llvm.loop !203

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
  %i.r = load float, ptr %i.q, align 8, !tbaa !204 ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.u = load i32, ptr %i.d, align 4, !tbaa !30
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = zext i8 %i.y to i16
  %i.aa = shl nuw i16 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext i8 %i.ac to i16
  %i.ae = or disjoint i16 %i.aa, %i.ad
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = zext i8 %i.al to i16
  %i.an = or disjoint i16 %i.aj, %i.am
  %i.ao = sext i16 %i.an to i32
  %i.ap = sub nsw i32 %i.af, %i.ao
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fdiv float %i.r, %i.aq
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = fneg float %i.r
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.au = load i32, ptr %i.c, align 4, !tbaa !28
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 18
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 19
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14
  %i.bd = zext i8 %i.bc to i16
  %i.be = or disjoint i16 %i.ba, %i.bd
  %i.bf = uitofp i16 %i.be to float
  %i.bg = fdiv float %i.as, %i.bf
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = phi float [ %i.ar, %bb.c ], [ %i.bg, %bb.d ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bj = load <2 x i32>, ptr %i.e, align 4, !tbaa !19 ; 5 uses
  %i.bk = bitcast <2 x i32> %i.bj to <8 x i8>
  %i.bl = extractelement <8 x i8> %i.bk, i64 0
  store i8 %i.bl, ptr %i.bi, align 8, !tbaa !206
  %i.bm = bitcast <2 x i32> %i.bj to <8 x i8>
  %i.bn = extractelement <8 x i8> %i.bm, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !207
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !208 ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bu = sext i32 %.05487 to i64
  %i.bv = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.u
  %.pre102.pre114 = phi i32 [ %i.bq, %.lr.ph ], [ %.pre102.pre115, %bb.u ] ; 5 uses
  %.pre102111 = phi i32 [ %i.bq, %.lr.ph ], [ %.pre102112, %bb.u ] ; 4 uses
  %i.bx = phi i32 [ %i.bq, %.lr.ph ], [ %i.hf, %bb.u ]
  %indvars.iv93 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next94, %bb.u ] ; 3 uses
  %indvars.iv = phi i64 [ %i.bu, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.184 = phi i32 [ %.088, %.lr.ph ], [ %.2, %bb.u ] ; 3 uses
  %i.by = phi <2 x i32> [ %i.bj, %.lr.ph ], [ %i.hg, %bb.u ] ; 2 uses
  %i.bz = phi <2 x i32> [ %i.bj, %.lr.ph ], [ %i.hh, %bb.u ] ; 5 uses
  %i.ca = phi <2 x i32> [ %i.bj, %.lr.ph ], [ %i.hi, %bb.u ] ; 4 uses
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !209 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = load i32, ptr %i.bt, align 4, !tbaa !210
  %i.ce = trunc nuw nsw i64 %indvars.iv93 to i32
  %i.cf = add nsw i32 %i.cd, %i.ce
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv93
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ci = phi i32 [ %i.cf, %bb.g ], [ %i.ch, %bb.h ]
  %i.cj = call i32 @stbtt_FindGlyphIndex(ptr noundef %1, i32 noundef %i.ci) ; 5 uses
  %i.ck = icmp eq i32 %i.cj, 0                    ; 2 uses
  br i1 %i.ck, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cl = load i32, ptr %i.f, align 8, !tbaa !189
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = icmp ne i32 %.184, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds [24 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i32 0, ptr %i.cp, align 4, !tbaa !170
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !168
  br label %bb.u

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.cr = uitofp <2 x i32> %i.by to <2 x float>
  %i.cs = fmul <2 x float> %i.bw, %i.cr           ; 2 uses
  %i.ct = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i61 = icmp eq i32 %i.ct, 0
  br i1 %.not.i61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store i32 1, ptr %5, align 8
  %i.cu = call i32 @stbtt__run_charstring(ptr noundef nonnull readonly %1, i32 noundef %i.cj, ptr noundef nonnull %5)
  %.not17.i.i = icmp eq i32 %i.cu, 0              ; 4 uses
  %i.cv = load i32, ptr %i.h, align 8
  %i.cw = select i1 %.not17.i.i, i32 0, i32 %i.cv
  %i.cx = load i32, ptr %i.i, align 8
end_hunk_0
begin_hunk_1_@stbtt_PackFontRangesRenderIntoRects:bb.a
  br i1 %i.pm, label %.lr.ph135.i.epil.preheader, label %.lr.ph135.i

.preheader122.i:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph141.i

.preheader120.i:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph147.i

.preheader.i172:                                  ; preds = %bb.w
  br i1 %.not128.i, label %.loopexit.i164, label %.lr.ph153.i

.lr.ph147.i:                                      ; preds = %.preheader120.i, %.lr.ph147.i
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %.lr.ph147.i ], [ 0, %.preheader120.i ] ; 4 uses
  %.0146.i = phi i32 [ %i.px, %.lr.ph147.i ], [ 0, %.preheader120.i ]
  %i.po = mul nsw i64 %indvars.iv189.i, %i.pk
  %i.pp = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.po ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !14  ; 2 uses
  %i.pr = zext i8 %i.pq to i32
  %i.ps = and i64 %indvars.iv189.i, 7
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ps
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !14
  %i.pv = zext i8 %i.pu to i32
  %i.pw = sub nsw i32 %i.pr, %i.pv
  %i.px = add i32 %i.pw, %.0146.i                 ; 3 uses
  %i.py = add nuw nsw i64 %indvars.iv189.i, 2
  %i.pz = and i64 %i.py, 7
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pz
  store i8 %i.pq, ptr %i.qa, align 1, !tbaa !14
  %i.qb = lshr i32 %i.px, 1
  %i.qc = trunc i32 %i.qb to i8
  store i8 %i.qc, ptr %i.pp, align 1, !tbaa !14
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %wide.trip.count.i158
  br i1 %exitcond193.not.i, label %.loopexit.i164, label %.lr.ph147.i, !llvm.loop !197

.lr.ph141.i:                                      ; preds = %.preheader122.i, %.lr.ph141.i
  %indvars.iv184.i170 = phi i64 [ %indvars.iv.next185.i171, %.lr.ph141.i ], [ 0, %.preheader122.i ] ; 4 uses
  %.1140.i = phi i32 [ %i.qm, %.lr.ph141.i ], [ 0, %.preheader122.i ]
  %i.qd = mul nsw i64 %indvars.iv184.i170, %i.pk
  %i.qe = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.qd ; 2 uses
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !14  ; 2 uses
  %i.qg = zext i8 %i.qf to i32
  %i.qh = and i64 %indvars.iv184.i170, 7
  %i.qi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !14
  %i.qk = zext i8 %i.qj to i32
  %i.ql = sub nsw i32 %i.qg, %i.qk
  %i.qm = add i32 %i.ql, %.1140.i                 ; 3 uses
  %i.qn = add nuw nsw i64 %indvars.iv184.i170, 3
  %i.qo = and i64 %i.qn, 7
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qo
  store i8 %i.qf, ptr %i.qp, align 1, !tbaa !14
  %i.qq = udiv i32 %i.qm, 3
  %i.qr = trunc i32 %i.qq to i8
  store i8 %i.qr, ptr %i.qe, align 1, !tbaa !14
  %indvars.iv.next185.i171 = add nuw nsw i64 %indvars.iv184.i170, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i171, %wide.trip.count.i158
  br i1 %exitcond188.not.i, label %.loopexit.i164, label %.lr.ph141.i, !llvm.loop !198

.lr.ph135.i:                                      ; preds = %.lr.ph135.i.preheader, %.lr.ph135.i
  %indvars.iv179.i167 = phi i64 [ %indvars.iv.next180.i168.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ] ; 4 uses
  %.2134.i = phi i32 [ %i.rp, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %niter388 = phi i64 [ %niter388.next.1, %.lr.ph135.i ], [ 0, %.lr.ph135.i.preheader ]
  %i.qs = mul nsw i64 %indvars.iv179.i167, %i.pk
  %i.qt = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.qs ; 2 uses
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !14  ; 2 uses
  %i.qv = zext i8 %i.qu to i32
  %i.qw = and i64 %indvars.iv179.i167, 6          ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 2, !tbaa !14
  %i.qz = zext i8 %i.qy to i32
  %i.ra = sub nsw i32 %i.qv, %i.qz
  %i.rb = add i32 %i.ra, %.2134.i                 ; 2 uses
  %i.rc = xor i64 %i.qw, 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rc
  store i8 %i.qu, ptr %i.rd, align 2, !tbaa !14
  %i.re = lshr i32 %i.rb, 2
  %i.rf = trunc i32 %i.re to i8
  store i8 %i.rf, ptr %i.qt, align 1, !tbaa !14
  %indvars.iv.next180.i168 = or disjoint i64 %indvars.iv179.i167, 1 ; 2 uses
  %i.rg = mul nsw i64 %indvars.iv.next180.i168, %i.pk
  %i.rh = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.rg ; 2 uses
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !14  ; 2 uses
  %i.rj = zext i8 %i.ri to i32
  %i.rk = and i64 %indvars.iv.next180.i168, 7     ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !14
  %i.rn = zext i8 %i.rm to i32
  %i.ro = sub nsw i32 %i.rj, %i.rn
  %i.rp = add i32 %i.ro, %i.rb                    ; 4 uses
  %i.rq = xor i64 %i.rk, 4
  %i.rr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rq
  store i8 %i.ri, ptr %i.rr, align 1, !tbaa !14
  %i.rs = lshr i32 %i.rp, 2
  %i.rt = trunc i32 %i.rs to i8
  store i8 %i.rt, ptr %i.rh, align 1, !tbaa !14
  %indvars.iv.next180.i168.1 = add nuw nsw i64 %indvars.iv179.i167, 2 ; 2 uses
  %niter388.next.1 = add i64 %niter388, 2         ; 2 uses
  %niter388.ncmp.1 = icmp eq i64 %niter388.next.1, %unroll_iter387
  br i1 %niter388.ncmp.1, label %.loopexit.i164.loopexit358.unr-lcssa, label %.lr.ph135.i, !llvm.loop !199

.lr.ph.i160:                                      ; preds = %.preheader126.i, %.lr.ph.i160
  %indvars.iv.i161 = phi i64 [ %indvars.iv.next.i162, %.lr.ph.i160 ], [ 0, %.preheader126.i ] ; 4 uses
  %.3130.i = phi i32 [ %i.sd, %.lr.ph.i160 ], [ 0, %.preheader126.i ]
  %i.ru = mul nsw i64 %indvars.iv.i161, %i.pk
  %i.rv = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ru ; 2 uses
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !14  ; 2 uses
  %i.rx = zext i8 %i.rw to i32
  %i.ry = and i64 %indvars.iv.i161, 7
  %i.rz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !14
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sub nsw i32 %i.rx, %i.sb
  %i.sd = add i32 %i.sc, %.3130.i                 ; 3 uses
  %i.se = add nuw nsw i64 %indvars.iv.i161, 5
  %i.sf = and i64 %i.se, 7
  %i.sg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sf
  store i8 %i.rw, ptr %i.sg, align 1, !tbaa !14
  %i.sh = udiv i32 %i.sd, 5
  %i.si = trunc i32 %i.sh to i8
  store i8 %i.si, ptr %i.rv, align 1, !tbaa !14
  %indvars.iv.next.i162 = add nuw nsw i64 %indvars.iv.i161, 1 ; 2 uses
  %exitcond.not.i163 = icmp eq i64 %indvars.iv.next.i162, %wide.trip.count.i158
  br i1 %exitcond.not.i163, label %.loopexit.i164, label %.lr.ph.i160, !llvm.loop !200

.lr.ph153.i:                                      ; preds = %.preheader.i172, %.lr.ph153.i
  %indvars.iv194.i = phi i64 [ %indvars.iv.next195.i, %.lr.ph153.i ], [ 0, %.preheader.i172 ] ; 4 uses
  %.4152.i = phi i32 [ %i.st, %.lr.ph153.i ], [ 0, %.preheader.i172 ]
  %i.sj = mul nsw i64 %indvars.iv194.i, %i.pk
  %i.sk = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.sj ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !14  ; 2 uses
  %i.sm = zext i8 %i.sl to i32
  %i.sn = trunc nuw nsw i64 %indvars.iv194.i to i32
  %i.so = and i64 %indvars.iv194.i, 7
  %i.sp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !14
  %i.sr = zext i8 %i.sq to i32
  %i.ss = sub nsw i32 %i.sm, %i.sr
  %i.st = add i32 %i.ss, %.4152.i                 ; 3 uses
  %i.su = add i32 %i.oy, %i.sn
  %i.sv = and i32 %i.su, 7
  %i.sw = zext nneg i32 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sw
  store i8 %i.sl, ptr %i.sx, align 1, !tbaa !14
  %i.sy = udiv i32 %i.st, %i.oy
  %i.sz = trunc i32 %i.sy to i8
  store i8 %i.sz, ptr %i.sk, align 1, !tbaa !14
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %exitcond198.not.i = icmp eq i64 %indvars.iv.next195.i, %wide.trip.count.i158
  br i1 %exitcond198.not.i, label %.loopexit.i164, label %.lr.ph153.i, !llvm.loop !201

.loopexit.i164.loopexit358.unr-lcssa:             ; preds = %.lr.ph135.i
  br i1 %lcmp.mod384.not, label %.loopexit.i164, label %.lr.ph135.i.epil.preheader

.lr.ph135.i.epil.preheader:                       ; preds = %.loopexit.i164.loopexit358.unr-lcssa, %.lr.ph135.i.preheader
  %indvars.iv179.i167.epil.init = phi i64 [ 0, %.lr.ph135.i.preheader ], [ %indvars.iv.next180.i168.1, %.loopexit.i164.loopexit358.unr-lcssa ] ; 2 uses
  %.2134.i.epil.init = phi i32 [ 0, %.lr.ph135.i.preheader ], [ %i.rp, %.loopexit.i164.loopexit358.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod386)
  %i.ta = mul nsw i64 %indvars.iv179.i167.epil.init, %i.pk
  %i.tb = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ta ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !14  ; 2 uses
  %i.td = zext i8 %i.tc to i32
  %i.te = and i64 %indvars.iv179.i167.epil.init, 7 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !14
  %i.th = zext i8 %i.tg to i32
  %i.ti = sub nsw i32 %i.td, %i.th
  %i.tj = add i32 %i.ti, %.2134.i.epil.init       ; 2 uses
  %i.tk = xor i64 %i.te, 4
  %i.tl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tk
  store i8 %i.tc, ptr %i.tl, align 1, !tbaa !14
  %i.tm = lshr i32 %i.tj, 2
  %i.tn = trunc i32 %i.tm to i8
  store i8 %i.tn, ptr %i.tb, align 1, !tbaa !14
  br label %.loopexit.i164

.loopexit.i164:                                   ; preds = %.lr.ph.i160, %.lr.ph135.i.epil.preheader, %.loopexit.i164.loopexit358.unr-lcssa, %.lr.ph141.i, %.lr.ph147.i, %.lr.ph153.i, %.preheader.i172, %.preheader120.i, %.preheader122.i, %.preheader124.i, %.preheader126.i
  %.5108.i = phi i32 [ %i.pl, %.lr.ph153.i ], [ %i.pl, %.lr.ph147.i ], [ %i.pl, %.lr.ph141.i ], [ %i.pl, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i172 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.pl, %.loopexit.i164.loopexit358.unr-lcssa ], [ %i.pl, %.lr.ph.i160 ] ; 2 uses
  %.5.i165 = phi i32 [ %i.st, %.lr.ph153.i ], [ %i.px, %.lr.ph147.i ], [ %i.qm, %.lr.ph141.i ], [ %i.tj, %.lr.ph135.i.epil.preheader ], [ 0, %.preheader.i172 ], [ 0, %.preheader120.i ], [ 0, %.preheader122.i ], [ 0, %.preheader124.i ], [ 0, %.preheader126.i ], [ %i.rp, %.loopexit.i164.loopexit358.unr-lcssa ], [ %i.sd, %.lr.ph.i160 ] ; 2 uses
  %i.to = icmp slt i32 %.5108.i, %.pre272
  br i1 %i.to, label %.lr.ph158.preheader.i, label %._crit_edge.i166

.lr.ph158.preheader.i:                            ; preds = %.loopexit.i164
  %i.tp = sext i32 %.5108.i to i64                ; 6 uses
  %i.tq = sub nsw i64 %wide.trip.count202.i, %i.tp
  %xtraiter389 = and i64 %i.tq, 1
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph158.i.prol.loopexit, label %.lr.ph158.i.prol

.lr.ph158.i.prol:                                 ; preds = %.lr.ph158.preheader.i
  %i.tr = and i64 %i.tp, 7
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !14
  %i.tu = zext i8 %i.tt to i32
  %i.tv = sub i32 %.5.i165, %i.tu                 ; 2 uses
  %i.tw = udiv i32 %i.tv, %i.oy
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = mul nsw i64 %i.tp, %i.pk
  %i.tz = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ty
  store i8 %i.tx, ptr %i.tz, align 1, !tbaa !14
  %indvars.iv.next200.i.prol = add nsw i64 %i.tp, 1
  br label %.lr.ph158.i.prol.loopexit

.lr.ph158.i.prol.loopexit:                        ; preds = %.lr.ph158.i.prol, %.lr.ph158.preheader.i
  %indvars.iv199.i.unr = phi i64 [ %i.tp, %.lr.ph158.preheader.i ], [ %indvars.iv.next200.i.prol, %.lr.ph158.i.prol ]
  %.6157.i.unr = phi i32 [ %.5.i165, %.lr.ph158.preheader.i ], [ %i.tv, %.lr.ph158.i.prol ]
  %i.ua = icmp eq i64 %i.pn, %i.tp
  br i1 %i.ua, label %._crit_edge.i166, label %.lr.ph158.i

.lr.ph158.i:                                      ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %.lr.ph158.i ], [ %indvars.iv199.i.unr, %.lr.ph158.i.prol.loopexit ] ; 4 uses
  %.6157.i = phi i32 [ %i.uo, %.lr.ph158.i ], [ %.6157.i.unr, %.lr.ph158.i.prol.loopexit ]
  %i.ub = and i64 %indvars.iv199.i, 7
  %i.uc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !14
  %i.ue = zext i8 %i.ud to i32
  %i.uf = sub i32 %.6157.i, %i.ue                 ; 2 uses
  %i.ug = udiv i32 %i.uf, %i.oy
  %i.uh = trunc i32 %i.ug to i8
  %i.ui = mul nsw i64 %indvars.iv199.i, %i.pk
  %i.uj = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ui
  store i8 %i.uh, ptr %i.uj, align 1, !tbaa !14
  %indvars.iv.next200.i = add nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %i.uk = and i64 %indvars.iv.next200.i, 7
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !14
  %i.un = zext i8 %i.um to i32
  %i.uo = sub i32 %i.uf, %i.un                    ; 2 uses
  %i.up = udiv i32 %i.uo, %i.oy
  %i.uq = trunc i32 %i.up to i8
  %i.ur = mul nsw i64 %indvars.iv.next200.i, %i.pk
  %i.us = getelementptr inbounds i8, ptr %.0111159.i, i64 %i.ur
  store i8 %i.uq, ptr %i.us, align 1, !tbaa !14
  %indvars.iv.next200.i.1 = add nsw i64 %indvars.iv199.i, 2 ; 2 uses
  %exitcond203.not.i.1 = icmp eq i64 %indvars.iv.next200.i.1, %wide.trip.count202.i
  br i1 %exitcond203.not.i.1, label %._crit_edge.i166, label %.lr.ph158.i, !llvm.loop !202

._crit_edge.i166:                                 ; preds = %.lr.ph158.i.prol.loopexit, %.lr.ph158.i, %.loopexit.i164
  %i.ut = getelementptr inbounds nuw i8, ptr %.0111159.i, i64 1
  %i.uu = add nuw nsw i32 %.0110161.i, 1          ; 2 uses
  %exitcond204.not.i = icmp eq i32 %i.uu, %.pre270
  br i1 %exitcond204.not.i, label %stbtt__v_prefilter.exit.loopexit, label %bb.w, !llvm.loop !203

stbtt__v_prefilter.exit.loopexit:                 ; preds = %._crit_edge.i166
  %.pre265.pre = load i32, ptr %i.cn, align 4, !tbaa !171
  %.pre267.pre = load i32, ptr %i.di, align 4, !tbaa !172
  %.pre269.pre = load i32, ptr %i.cq, align 4, !tbaa !168
  %.pre271.pre = load i32, ptr %i.cs, align 4, !tbaa !170
  br label %stbtt__v_prefilter.exit

stbtt__v_prefilter.exit:                          ; preds = %stbtt__v_prefilter.exit.loopexit, %bb.v
  %.pre271 = phi i32 [ %.pre271.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre272, %bb.v ]
  %.pre269 = phi i32 [ %.pre269.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre270, %bb.v ]
  %.pre267 = phi i32 [ %.pre267.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre268, %bb.v ]
  %.pre265 = phi i32 [ %.pre265.pre, %stbtt__v_prefilter.exit.loopexit ], [ %.pre266, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.x

bb.x:                                             ; preds = %stbtt__v_prefilter.exit, %bb.u
  %i.uv = phi i32 [ %.pre271, %stbtt__v_prefilter.exit ], [ %.pre272, %bb.u ] ; 2 uses
  %i.uw = phi i32 [ %.pre269, %stbtt__v_prefilter.exit ], [ %.pre270, %bb.u ] ; 2 uses
  %i.ux = phi i32 [ %.pre267, %stbtt__v_prefilter.exit ], [ %.pre268, %bb.u ] ; 2 uses
  %i.uy = phi i32 [ %.pre265, %stbtt__v_prefilter.exit ], [ %.pre266, %bb.u ] ; 2 uses
  %i.uz = trunc i32 %i.uy to i16
  store i16 %i.uz, ptr %i.cv, align 4, !tbaa !214
  %i.va = trunc i32 %i.ux to i16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i16 %i.va, ptr %i.vb, align 2, !tbaa !216
  %i.vc = add nsw i32 %i.uw, %i.uy
  %i.vd = trunc i32 %i.vc to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i16 %i.vd, ptr %i.ve, align 4, !tbaa !217
  %i.vf = add nsw i32 %i.uv, %i.ux
  %i.vg = trunc i32 %i.vf to i16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.cv, i64 6
  store i16 %i.vg, ptr %i.vh, align 2, !tbaa !218
  %i.vi = sitofp i16 %i.en to float
  %i.vj = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.vk = extractelement <2 x i32> %i.hu, i64 0
  %i.vl = add nsw i32 %i.uw, %i.vk
  %i.vm = sitofp i32 %i.vl to float
  %i.vn = shufflevector <2 x i32> %i.hu, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vo = sitofp <4 x i32> %i.vn to <4 x float>
  %i.vp = insertelement <4 x float> %i.vo, float %i.bm, i64 2
  %i.vq = insertelement <4 x float> %i.vp, float %i.vm, i64 3
  %i.vr = insertelement <4 x float> %i.ci, float %i.vi, i64 2
  %i.vs = shufflevector <4 x float> %i.vr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.vs, <4 x float> %i.cm)
  store <4 x float> %i.vt, ptr %i.vj, align 4, !tbaa !74
  %i.vu = extractelement <2 x i32> %i.hu, i64 1
  %i.vv = add nsw i32 %i.uv, %i.vu
  %i.vw = sitofp i32 %i.vv to float
  %i.vx = call float @llvm.fmuladd.f32(float %i.vw, float %i.cj, float %i.ch)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store float %i.vx, ptr %i.vy, align 4, !tbaa !219
  %i.vz = icmp eq i32 %i.de, 0
  %i.wa = trunc nuw nsw i64 %indvars.iv252 to i32
  %spec.select = select i1 %i.vz, i32 %i.wa, i32 %.1140221
  br label %.thread198

bb.y:                                             ; preds = %bb.f
  %i.wb = load i32, ptr %i.u, align 8, !tbaa !189
  %.not153.not = icmp eq i32 %i.wb, 0
  br i1 %.not153.not, label %bb.z, label %.thread198

bb.z:                                             ; preds = %bb.y
  %i.wc = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !170
  %i.we = icmp eq i32 %i.wd, 0
  %i.wf = icmp sgt i32 %.1140221, -1
  %or.cond = select i1 %i.we, i1 %i.wf, i1 false
  br i1 %or.cond, label %bb.aa, label %.thread198

bb.aa:                                            ; preds = %bb.z
  %i.wg = load ptr, ptr %i.cc, align 8, !tbaa !213 ; 2 uses
  %i.wh = getelementptr inbounds nuw [28 x i8], ptr %i.wg, i64 %indvars.iv252
  %i.wi = zext nneg i32 %.1140221 to i64
  %i.wj = getelementptr inbounds nuw [28 x i8], ptr %i.wg, i64 %i.wi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.wh, ptr noundef nonnull align 4 dereferenceable(28) %i.wj, i64 28, i1 false), !tbaa.struct !220
  br label %.thread198

.thread198:                                       ; preds = %bb.g, %bb.y, %bb.e, %bb.z, %bb.aa, %bb.x
  %.3 = phi i32 [ %spec.select, %bb.x ], [ %.1140221, %bb.y ], [ %.1140221, %bb.aa ], [ %.1140221, %bb.z ], [ %.1140221, %bb.e ], [ %.1140221, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.1222, %bb.x ], [ 0, %bb.y ], [ %.1222, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.e ], [ 0, %bb.g ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.wk = load i32, ptr %i.bq, align 8, !tbaa !208
  %i.wl = sext i32 %i.wk to i64
  %i.wm = icmp slt i64 %indvars.iv.next253, %i.wl
  br i1 %i.wm, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !221

._crit_edge.loopexit:                             ; preds = %.thread198
  %i.wn = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %stbtt__oversample_shift.exit
  %.1143.lcssa = phi i32 [ %.0142226, %stbtt__oversample_shift.exit ], [ %i.wn, %._crit_edge.loopexit ]
  %.1140.lcssa = phi i32 [ %.0139227, %stbtt__oversample_shift.exit ], [ %.3, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.0228, %stbtt__oversample_shift.exit ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge231, label %bb.b, !llvm.loop !222

._crit_edge231:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  store <2 x i32> %i.e, ptr %i.c, align 4, !tbaa !19
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_PackFontRangesPackRects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !164
  %.promoted.i = load i32, ptr %i.d, align 4, !tbaa !165
  %.promoted41.i = load i32, ptr %i.g, align 4, !tbaa !166
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.j = phi i32 [ %.promoted41.i, %.lr.ph.i ], [ %i.r, %bb.g ]
  %i.k = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !168  ; 2 uses
  %i.o = add nsw i32 %i.n, %i.k
  %i.p = icmp sgt i32 %i.o, %i.e
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 4, !tbaa !165
  %i.q = load i32, ptr %i.f, align 4, !tbaa !167  ; 2 uses
  store i32 %i.q, ptr %i.g, align 4, !tbaa !166
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i32 [ %i.q, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.s = phi i32 [ 0, %bb.c ], [ %i.k, %bb.b ]    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !170
  %i.v = add nsw i32 %i.u, %i.r                   ; 3 uses
  %i.w = icmp sgt i32 %i.v, %i.i
  br i1 %i.w, label %._crit_edge.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.l, align 4, !tbaa !171
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.r, ptr %i.x, align 4, !tbaa !172
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 1, ptr %i.y, align 4, !tbaa !173
  %i.z = add nsw i32 %i.s, %i.n                   ; 2 uses
  store i32 %i.z, ptr %i.d, align 4, !tbaa !165
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !167
  %i.ab = icmp sgt i32 %i.v, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.f, align 4, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbrp_pack_rects.exit, label %bb.b, !llvm.loop !174

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.ac = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ad = icmp slt i32 %.0.lcssa.i, %2
  br i1 %i.ad, label %.lr.ph44.preheader.i, label %stbrp_pack_rects.exit

.lr.ph44.preheader.i:                             ; preds = %._crit_edge.i
  %i.ae = zext i32 %.0.lcssa.i to i64             ; 4 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %i.af = sub nsw i64 %wide.trip.count, %i.ae
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.i.prol.loopexit, label %.lr.ph44.i.prol

.lr.ph44.i.prol:                                  ; preds = %.lr.ph44.preheader.i, %.lr.ph44.i.prol
end_hunk_1
