Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_drawing?download=true
inline.NumInlined: 68
inline.NumDeleted: 6
begin_hunk_0_@_ZN4ncnn14draw_circle_c4EPhiiiiiiji:bb.a
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not96.us = icmp slt i32 %.087106.us, %1
  br i1 %.not96.us, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i32 %.087106.us, %4              ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.u
  %i.w = add nuw nsw i32 %i.v, %i.s
  %i.x = uitofp ninf nsz nneg i32 %i.w to float
  %i.y = fcmp fast ult float %i.j, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i32 %.087106.us, 2
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  store i32 %7, ptr %i.ab, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ac = add nsw i32 %.087106.us, 1              ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.g
  br i1 %i.ad, label %bb.d, label %.loopexit.us, !llvm.loop !67

.loopexit.us:                                     ; preds = %bb.h, %bb.e, %.lr.ph110.split.us
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next122 to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit97, label %.lr.ph110.split.us, !llvm.loop !68

bb.i:                                             ; preds = %bb.a
  %i.ae = sitofp fast i32 %8 to float
  %i.af = fmul fast float %i.ae, 5.000000e-01     ; 6 uses
  %i.ag = add nsw i32 %6, -1                      ; 2 uses
  %i.ah = sub nsw i32 %5, %i.ag
  %i.ai = sitofp fast i32 %i.ah to float
  %i.aj = fsub fast float %i.ai, %i.af
  %i.ak = fptosi float %i.aj to i32               ; 2 uses
  %i.al = add nsw i32 %6, %5
  %i.am = sitofp fast i32 %i.al to float
  %i.an = fadd fast float %i.af, %i.am            ; 2 uses
  %i.ao = sitofp fast i32 %i.ak to float
  %i.ap = fcmp fast ogt float %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph104, label %.loopexit97

.lr.ph104:                                        ; preds = %bb.i
  %i.aq = sub nsw i32 %4, %i.ag
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = fsub fast float %i.ar, %i.af
  %i.at = fptosi float %i.as to i32               ; 2 uses
  %i.au = add nsw i32 %6, %4
  %i.av = sitofp fast i32 %i.au to float
  %i.aw = fadd fast float %i.af, %i.av            ; 2 uses
  %i.ax = sitofp fast i32 %i.at to float
  %i.ay = fcmp fast ogt float %i.aw, %i.ax
  %i.az = sitofp fast i32 %6 to float             ; 2 uses
  %i.ba = fsub fast float %i.az, %i.af            ; 2 uses
  %i.bb = fadd fast float %i.af, %i.az            ; 2 uses
  %i.bc = fmul fast float %i.ba, %i.ba
  %i.bd = fmul fast float %i.bb, %i.bb
  %.fr = freeze i1 %i.ay
  br i1 %.fr, label %.lr.ph104.split.us.preheader, label %.loopexit97

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %i.be = sext i32 %i.ak to i64
  %i.bf = sext i32 %2 to i64
  %i.bg = sext i32 %3 to i64
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %.loopexit98.us
  %indvars.iv = phi i64 [ %i.be, %.lr.ph104.split.us.preheader ], [ %indvars.iv.next, %.loopexit98.us ] ; 5 uses
  %i.bh = icmp slt i64 %indvars.iv, 0
  br i1 %i.bh, label %.loopexit98.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph104.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.bf
  br i1 %.not.us, label %.lr.ph.us, label %.loopexit97

.lr.ph.us:                                        ; preds = %bb.j
  %i.bi = mul nsw i64 %indvars.iv, %i.bg
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = trunc i64 %indvars.iv to i32
  %i.bl = sub i32 %i.bk, %5                       ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.o
  %.0100.us = phi i32 [ %i.at, %.lr.ph.us ], [ %i.by, %bb.o ] ; 5 uses
  %i.bn = icmp slt i32 %.0100.us, 0
  br i1 %i.bn, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not94.us = icmp slt i32 %.0100.us, %1
  br i1 %.not94.us, label %bb.m, label %.loopexit98.us

bb.m:                                             ; preds = %bb.l
  %i.bo = sub nsw i32 %.0100.us, %4               ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bo
  %i.bq = add nuw nsw i32 %i.bp, %i.bm
  %i.br = uitofp ninf nsz nneg i32 %i.bq to float ; 2 uses
  %i.bs = fcmp fast ole float %i.bc, %i.br
  %i.bt = fcmp fast ogt float %i.bd, %i.br
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = shl nuw nsw i32 %.0100.us, 2
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw
  store i32 %7, ptr %i.bx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.by = add nsw i32 %.0100.us, 1                ; 2 uses
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = fcmp fast ogt float %i.aw, %i.bz
  br i1 %i.ca, label %bb.k, label %.loopexit98.us, !llvm.loop !69

.loopexit98.us:                                   ; preds = %bb.o, %bb.l, %.lr.ph104.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cb = trunc nsw i64 %indvars.iv.next to i32
  %i.cc = sitofp fast i32 %i.cb to float
  %i.cd = fcmp fast ogt float %i.an, %i.cc
  br i1 %i.cd, label %.lr.ph104.split.us, label %.loopexit97, !llvm.loop !70

.loopexit97:                                      ; preds = %bb.j, %.loopexit98.us, %bb.c, %.loopexit.us, %.lr.ph104, %.lr.ph110, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn20draw_circle_yuv420spEPhiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %.sroa.026.0.insert.ext = and i32 %6, 255
  tail call void @_ZN4ncnn14draw_circle_c1EPhiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %.sroa.026.0.insert.ext, i32 noundef %7)
  %i.a = icmp eq i32 %7, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %7, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.sroa.speculated, %bb.b ], [ -1, %bb.a ]
  %i.d = mul nsw i32 %2, %1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.sroa.2.0.extract.shift = lshr i32 %6, 8
  %i.g = sdiv i32 %1, 2                           ; 2 uses
  %i.h = sdiv i32 %2, 2
  %i.i = sdiv i32 %3, 2
  %i.j = sdiv i32 %4, 2
  %i.k = sdiv i32 %5, 2
  %.sroa.028.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.l = shl nsw i32 %i.g, 1
  tail call void @_ZN4ncnn14draw_circle_c2EPhiiiiiiji(ptr noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.l, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %.sroa.028.0.insert.insert, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c1EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN4ncnn12draw_line_c1EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c1EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %8 to i8
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated38 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %i.c = sitofp fast i32 %.sroa.speculated38 to float
  %i.d = fsub fast float %i.c, %i.b
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp fast i32 %.sroa.speculated to float
  %i.g = fadd fast float %i.b, %i.f               ; 2 uses
  %i.h = sitofp fast i32 %i.e to float
  %i.i = fcmp fast ogt float %i.g, %i.h
  br i1 %i.i, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.a
  %.sroa.speculated46 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %.sroa.speculated49 = tail call i32 @llvm.smin.i32(i32 %6, i32 %4)
  %i.j = sitofp fast i32 %.sroa.speculated49 to float
  %i.k = fsub fast float %i.j, %i.b
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = sitofp fast i32 %.sroa.speculated46 to float
  %i.n = fadd fast float %i.b, %i.m               ; 2 uses
  %i.o = sitofp fast i32 %i.l to float
  %i.p = fcmp fast ogt float %i.n, %i.o
  %i.q = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %7, i64 1
  %i.s = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %5, i64 1 ; 2 uses
  %i.u = sub nsw <2 x i32> %i.r, %i.t             ; 3 uses
  %i.v = sitofp <2 x i32> %i.t to <2 x float>
  %i.w = sitofp <2 x i32> %i.u to <2 x float>
  %.fr = freeze i1 %i.p
  br i1 %.fr, label %.lr.ph77.split.us.preheader, label %._crit_edge

.lr.ph77.split.us.preheader:                      ; preds = %.lr.ph77
  %i.x = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.x
  %i.z = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = uitofp ninf nsz nneg i32 %i.ab to float
  %i.ad = sext i32 %i.e to i64
  %i.ae = sext i32 %2 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = fdiv fast float 1.000000e+00, %i.ac
  br label %.lr.ph77.split.us

.lr.ph77.split.us:                                ; preds = %.lr.ph77.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph77.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ah = icmp slt i64 %indvars.iv, 0
  br i1 %i.ah, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph77.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.ai = mul nsw i64 %indvars.iv, %i.af
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = trunc i64 %indvars.iv to i32
  %i.al = sub i32 %i.ak, %5
  %i.am = mul nsw i32 %i.al, %i.x
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.071.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bk, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.aq = icmp slt i32 %.071.us, 0
  br i1 %i.aq, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not30.us = icmp slt i32 %.071.us, %1
  br i1 %.not30.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.071.us, %4
  %i.as = mul nsw i32 %i.ar, %i.z
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fmul fast float %i.au, %i.ag            ; 3 uses
  %i.aw = fcmp fast olt float %i.av, 0.000000e+00
  %i.ax = fcmp fast ogt float %i.av, 1.000000e+00
  %or.cond.i.us = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.ay = uitofp nneg i32 %.071.us to float
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x float> %i.ba, %i.w
  %i.bc = fadd fast <2 x float> %i.bb, %i.v
  %i.bd = insertelement <2 x float> %i.ap, float %i.ay, i64 0
  %i.be = fsub fast <2 x float> %i.bd, %i.bc      ; 2 uses
  %i.bf = fmul fast <2 x float> %i.be, %i.be
  %i.bg = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp fast olt float %i.bg, %i.b
  br i1 %i.bh, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bi = zext nneg i32 %.071.us to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bi
  store i8 %.sroa.0.0.extract.trunc, ptr %i.bj, align 1, !tbaa !9
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bk = add nsw i32 %.071.us, 1                 ; 2 uses
  %i.bl = sitofp fast i32 %i.bk to float
  %i.bm = fcmp fast ogt float %i.n, %i.bl
  br i1 %i.bm, label %bb.c, label %.loopexit.us, !llvm.loop !71

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph77.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bn = trunc nsw i64 %indvars.iv.next to i32
  %i.bo = sitofp fast i32 %i.bn to float
  %i.bp = fcmp fast ogt float %i.g, %i.bo
  br i1 %i.bp, label %.lr.ph77.split.us, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph77, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c2EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 1
  tail call void @_ZN4ncnn12draw_line_c2EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c2EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated41 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %i.c = sitofp fast i32 %.sroa.speculated41 to float
  %i.d = fsub fast float %i.c, %i.b
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp fast i32 %.sroa.speculated to float
  %i.g = fadd fast float %i.b, %i.f               ; 2 uses
  %i.h = sitofp fast i32 %i.e to float
  %i.i = fcmp fast ogt float %i.g, %i.h
  br i1 %i.i, label %.lr.ph80, label %._crit_edge

.lr.ph80:                                         ; preds = %bb.a
  %.sroa.speculated49 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %.sroa.speculated52 = tail call i32 @llvm.smin.i32(i32 %6, i32 %4)
  %i.j = sitofp fast i32 %.sroa.speculated52 to float
  %i.k = fsub fast float %i.j, %i.b
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = sitofp fast i32 %.sroa.speculated49 to float
  %i.n = fadd fast float %i.b, %i.m               ; 2 uses
  %i.o = sitofp fast i32 %i.l to float
  %i.p = fcmp fast ogt float %i.n, %i.o
  %i.q = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %7, i64 1
  %i.s = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %5, i64 1 ; 2 uses
  %i.u = sub nsw <2 x i32> %i.r, %i.t             ; 3 uses
  %i.v = sitofp <2 x i32> %i.t to <2 x float>
  %i.w = sitofp <2 x i32> %i.u to <2 x float>
  %i.x = trunc i32 %8 to i16
  %.fr = freeze i1 %i.p
  br i1 %.fr, label %.lr.ph80.split.us.preheader, label %._crit_edge

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %i.y = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = extractelement <2 x i32> %i.u, i64 0    ; 3 uses
  %i.ab = mul nsw i32 %i.aa, %i.aa
  %i.ac = add nuw nsw i32 %i.z, %i.ab
  %i.ad = uitofp ninf nsz nneg i32 %i.ac to float
  %i.ae = sext i32 %i.e to i64
  %i.af = sext i32 %2 to i64
  %i.ag = sext i32 %3 to i64
  %i.ah = fdiv fast float 1.000000e+00, %i.ad
  br label %.lr.ph80.split.us

.lr.ph80.split.us:                                ; preds = %.lr.ph80.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph80.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ai = icmp slt i64 %indvars.iv, 0
  br i1 %i.ai, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph80.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.af
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.aj = mul nsw i64 %indvars.iv, %i.ag
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.al = trunc i64 %indvars.iv to i32
  %i.am = sub i32 %i.al, %5
  %i.an = mul nsw i32 %i.am, %i.y
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  %i.ap = uitofp nneg i32 %i.ao to float
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.074.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bm, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.ar = icmp slt i32 %.074.us, 0
  br i1 %i.ar, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not33.us = icmp slt i32 %.074.us, %1
  br i1 %.not33.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.as = sub nsw i32 %.074.us, %4
  %i.at = mul nsw i32 %i.as, %i.aa
  %i.au = add nsw i32 %i.at, %i.an
  %i.av = sitofp fast i32 %i.au to float
  %i.aw = fmul fast float %i.av, %i.ah            ; 3 uses
  %i.ax = fcmp fast olt float %i.aw, 0.000000e+00
  %i.ay = fcmp fast ogt float %i.aw, 1.000000e+00
  %or.cond.i.us = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.az = uitofp nneg i32 %.074.us to float
  %i.ba = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul fast <2 x float> %i.bb, %i.w
  %i.bd = fadd fast <2 x float> %i.bc, %i.v
  %i.be = insertelement <2 x float> %i.aq, float %i.az, i64 0
  %i.bf = fsub fast <2 x float> %i.be, %i.bd      ; 2 uses
  %i.bg = fmul fast <2 x float> %i.bf, %i.bf
  %i.bh = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bg)
  %i.bi = fcmp fast olt float %i.bh, %i.b
  br i1 %i.bi, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bj = shl nuw nsw i32 %.074.us, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bk
  store i16 %i.x, ptr %i.bl, align 1
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bm = add nsw i32 %.074.us, 1                 ; 2 uses
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = fcmp fast ogt float %i.n, %i.bn
  br i1 %i.bo, label %bb.c, label %.loopexit.us, !llvm.loop !73

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph80.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bp = trunc nsw i64 %indvars.iv.next to i32
  %i.bq = sitofp fast i32 %i.bp to float
  %i.br = fcmp fast ogt float %i.g, %i.bq
  br i1 %i.br, label %.lr.ph80.split.us, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph80, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c3EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %1, 3
  tail call void @_ZN4ncnn12draw_line_c3EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c3EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %8 to i8
  %.sroa.2.0.extract.shift = lshr i32 %8, 8
  %.sroa.2.0.extract.trunc = trunc i32 %.sroa.2.0.extract.shift to i8
  %.sroa.3.0.extract.shift = lshr i32 %8, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated44 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %i.c = sitofp fast i32 %.sroa.speculated44 to float
  %i.d = fsub fast float %i.c, %i.b
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp fast i32 %.sroa.speculated to float
  %i.g = fadd fast float %i.b, %i.f               ; 2 uses
  %i.h = sitofp fast i32 %i.e to float
  %i.i = fcmp fast ogt float %i.g, %i.h
  br i1 %i.i, label %.lr.ph83, label %._crit_edge

.lr.ph83:                                         ; preds = %bb.a
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %.sroa.speculated55 = tail call i32 @llvm.smin.i32(i32 %6, i32 %4)
  %i.j = sitofp fast i32 %.sroa.speculated55 to float
  %i.k = fsub fast float %i.j, %i.b
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = sitofp fast i32 %.sroa.speculated52 to float
  %i.n = fadd fast float %i.b, %i.m               ; 2 uses
  %i.o = sitofp fast i32 %i.l to float
  %i.p = fcmp fast ogt float %i.n, %i.o
  %i.q = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %7, i64 1
  %i.s = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %5, i64 1 ; 2 uses
  %i.u = sub nsw <2 x i32> %i.r, %i.t             ; 3 uses
  %i.v = sitofp <2 x i32> %i.t to <2 x float>
  %i.w = sitofp <2 x i32> %i.u to <2 x float>
  %.fr = freeze i1 %i.p
  br i1 %.fr, label %.lr.ph83.split.us.preheader, label %._crit_edge

.lr.ph83.split.us.preheader:                      ; preds = %.lr.ph83
  %i.x = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.x
  %i.z = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = uitofp ninf nsz nneg i32 %i.ab to float
  %i.ad = sext i32 %i.e to i64
  %i.ae = sext i32 %2 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = fdiv fast float 1.000000e+00, %i.ac
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph83.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ah = icmp slt i64 %indvars.iv, 0
  br i1 %i.ah, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph83.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.ai = mul nsw i64 %indvars.iv, %i.af
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = trunc i64 %indvars.iv to i32
  %i.al = sub i32 %i.ak, %5
  %i.am = mul nsw i32 %i.al, %i.x
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.077.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bn, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.aq = icmp slt i32 %.077.us, 0
  br i1 %i.aq, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not36.us = icmp slt i32 %.077.us, %1
  br i1 %.not36.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.077.us, %4
  %i.as = mul nsw i32 %i.ar, %i.z
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fmul fast float %i.au, %i.ag            ; 3 uses
  %i.aw = fcmp fast olt float %i.av, 0.000000e+00
  %i.ax = fcmp fast ogt float %i.av, 1.000000e+00
  %or.cond.i.us = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.ay = uitofp nneg i32 %.077.us to float
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x float> %i.ba, %i.w
  %i.bc = fadd fast <2 x float> %i.bb, %i.v
  %i.bd = insertelement <2 x float> %i.ap, float %i.ay, i64 0
  %i.be = fsub fast <2 x float> %i.bd, %i.bc      ; 2 uses
  %i.bf = fmul fast <2 x float> %i.be, %i.be
  %i.bg = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp fast olt float %i.bg, %i.b
  br i1 %i.bh, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bi = mul nuw nsw i32 %.077.us, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bj ; 3 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %i.bk, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %.sroa.2.0.extract.trunc, ptr %i.bl, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %.sroa.3.0.extract.trunc, ptr %i.bm, align 1, !tbaa !9
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bn = add nsw i32 %.077.us, 1                 ; 2 uses
  %i.bo = sitofp fast i32 %i.bn to float
  %i.bp = fcmp fast ogt float %i.n, %i.bo
  br i1 %i.bp, label %bb.c, label %.loopexit.us, !llvm.loop !75

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph83.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = trunc nsw i64 %indvars.iv.next to i32
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = fcmp fast ogt float %i.g, %i.br
  br i1 %i.bs, label %.lr.ph83.split.us, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph83, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c4EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  tail call void @_ZN4ncnn12draw_line_c4EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c4EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %i.c = sitofp fast i32 %.sroa.speculated47 to float
  %i.d = fsub fast float %i.c, %i.b
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp fast i32 %.sroa.speculated to float
  %i.g = fadd fast float %i.b, %i.f               ; 2 uses
  %i.h = sitofp fast i32 %i.e to float
  %i.i = fcmp fast ogt float %i.g, %i.h
  br i1 %i.i, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %bb.a
  %.sroa.speculated55 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %6, i32 %4)
  %i.j = sitofp fast i32 %.sroa.speculated58 to float
  %i.k = fsub fast float %i.j, %i.b
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = sitofp fast i32 %.sroa.speculated55 to float
  %i.n = fadd fast float %i.b, %i.m               ; 2 uses
  %i.o = sitofp fast i32 %i.l to float
  %i.p = fcmp fast ogt float %i.n, %i.o
  %i.q = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %7, i64 1
  %i.s = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %5, i64 1 ; 2 uses
  %i.u = sub nsw <2 x i32> %i.r, %i.t             ; 3 uses
  %i.v = sitofp <2 x i32> %i.t to <2 x float>
  %i.w = sitofp <2 x i32> %i.u to <2 x float>
  %.fr = freeze i1 %i.p
  br i1 %.fr, label %.lr.ph86.split.us.preheader, label %._crit_edge

.lr.ph86.split.us.preheader:                      ; preds = %.lr.ph86
  %i.x = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.x
  %i.z = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = uitofp ninf nsz nneg i32 %i.ab to float
  %i.ad = sext i32 %i.e to i64
  %i.ae = sext i32 %2 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = fdiv fast float 1.000000e+00, %i.ac
  br label %.lr.ph86.split.us

.lr.ph86.split.us:                                ; preds = %.lr.ph86.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph86.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ah = icmp slt i64 %indvars.iv, 0
  br i1 %i.ah, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph86.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.ai = mul nsw i64 %indvars.iv, %i.af
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = trunc i64 %indvars.iv to i32
  %i.al = sub i32 %i.ak, %5
  %i.am = mul nsw i32 %i.al, %i.x
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.080.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bl, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.aq = icmp slt i32 %.080.us, 0
  br i1 %i.aq, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not39.us = icmp slt i32 %.080.us, %1
  br i1 %.not39.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.080.us, %4
  %i.as = mul nsw i32 %i.ar, %i.z
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fmul fast float %i.au, %i.ag            ; 3 uses
  %i.aw = fcmp fast olt float %i.av, 0.000000e+00
  %i.ax = fcmp fast ogt float %i.av, 1.000000e+00
  %or.cond.i.us = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.ay = uitofp nneg i32 %.080.us to float
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x float> %i.ba, %i.w
  %i.bc = fadd fast <2 x float> %i.bb, %i.v
  %i.bd = insertelement <2 x float> %i.ap, float %i.ay, i64 0
  %i.be = fsub fast <2 x float> %i.bd, %i.bc      ; 2 uses
  %i.bf = fmul fast <2 x float> %i.be, %i.be
  %i.bg = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp fast olt float %i.bg, %i.b
  br i1 %i.bh, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bi = shl nuw nsw i32 %.080.us, 2
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bj
  store i32 %8, ptr %i.bk, align 1
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bl = add nsw i32 %.080.us, 1                 ; 2 uses
  %i.bm = sitofp fast i32 %i.bl to float
  %i.bn = fcmp fast ogt float %i.n, %i.bm
  br i1 %i.bn, label %bb.c, label %.loopexit.us, !llvm.loop !77

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph86.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bo = trunc nsw i64 %indvars.iv.next to i32
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = fcmp fast ogt float %i.g, %i.bp
  br i1 %i.bq, label %.lr.ph86.split.us, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph86, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn18draw_line_yuv420spEPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %.sroa.028.0.insert.ext = and i32 %7, 255
  tail call void @_ZN4ncnn12draw_line_c1EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %.sroa.028.0.insert.ext, i32 noundef %8)
  %i.a = icmp eq i32 %8, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %8, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.sroa.speculated, %bb.b ], [ -1, %bb.a ]
  %i.d = mul nsw i32 %2, %1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.sroa.2.0.extract.shift = lshr i32 %7, 8
  %i.g = sdiv i32 %1, 2                           ; 2 uses
  %i.h = sdiv i32 %2, 2
  %i.i = sdiv i32 %3, 2
  %i.j = sdiv i32 %4, 2
  %i.k = sdiv i32 %5, 2
  %i.l = sdiv i32 %6, 2
  %.sroa.030.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.m = shl nsw i32 %i.g, 1
  tail call void @_ZN4ncnn12draw_line_c2EPhiiiiiiiji(ptr noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.m, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %.sroa.030.0.insert.insert, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN4ncnn21get_text_drawing_sizeEPKciPiS2_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3) local_unnamed_addr #2 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !11
  store i32 0, ptr %3, align 4, !tbaa !11
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = shl nsw i32 %1, 1                        ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.028.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.d ]
  %i.e = load i32, ptr %2, align 4, !tbaa !11
  %.sroa.speculated23 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.028.lcssa)
  store i32 %.sroa.speculated23, ptr %2, align 4, !tbaa !11
  %i.f = load i32, ptr %3, align 4, !tbaa !11
  %i.g = add nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %3, align 4, !tbaa !11
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.02829 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.j = sext i8 %i.i to i32
  %i.k = icmp eq i8 %i.i, 10
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 4, !tbaa !11
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %.02829)
  store i32 %.sroa.speculated, ptr %2, align 4, !tbaa !11
  %i.m = load i32, ptr %3, align 4, !tbaa !11
  %i.n = add nsw i32 %i.m, %i.d
  store i32 %i.n, ptr %3, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %.02829, %bb.b ]
  %i.o = tail call i32 @isprint(i32 noundef %i.j) #16
  %.not = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not, i32 0, i32 %1
  %spec.select = add nsw i32 %i.p, %.1            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !79
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c1EPhiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN4ncnn12draw_text_c1EPhiiiPKciiij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c1EPhiiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %7, 1                            ; 3 uses
  %i.b = mul i32 %i.a, %7
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #17 ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16 ; 2 uses
  %i.f = trunc i64 %i.e to i32
end_hunk_0
