inline.NumInlined: 220
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 93
begin_hunk_0_@process_display:bb.a
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.br)
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, 4.000000e+00 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 1.000000e+00
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bv, float 1.000000e+00, float %i.bt
  store float %i.bw, ptr %i.bu, align 4, !tbaa !16
  %i.bx = add nuw i64 %.03335, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @process_v1(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, %i.c                   ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !35  ; 4 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 262196 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 524340 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02538 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.g ] ; 2 uses
  %i.r = mul i64 %.02538, %i.l                    ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !16 ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.v, float %i.x) ; 3 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = fmul reassoc nnan nsz arcp contract afn float %i.y, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.y)
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, f0x3E22F983
  %i.ad = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.aa, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = load float, ptr %i.s, align 4, !tbaa !16 ; 2 uses
  %i.af = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.x, float noundef %i.v) #32 ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, f0x3C23D70A
  br label %bb.g

bb.f:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, f0x3BB504F3
  br label %bb.g

bb.g:                                             ; preds = %dt_Lab_2_LCH.exit, %bb.f, %bb.e
  %.0 = phi nsz float [ %i.ah, %bb.f ], [ %i.ag, %bb.e ], [ %.0.i, %dt_Lab_2_LCH.exit ] ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %.0, 1.000000e+00
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %.0, 0.000000e+00
  %i.ak = select reassoc nsz arcp contract afn i1 %i.aj, float 0.000000e+00, float %.0
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 6.553600e+04
  %i.am = select i1 %i.ai, float 6.553600e+04, float %i.al ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 3 uses
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 65535) ; 2 uses
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.an, i32 -1)
  %i.ar = add nsw i32 %i.aq, 1
  %.inv.i = icmp slt i32 %i.an, 65535
  %narrow.i = select i1 %.inv.i, i32 %i.ar, i32 65535
  %i.as = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.at = uitofp nneg i32 %i.ap to float
  %i.au = fsub reassoc nsz arcp contract afn float %i.am, %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16
  %i.ax = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !16 ; 2 uses
  %i.ba = fsub reassoc nsz arcp contract afn float %i.aw, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.az
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 4.000000e+00
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, -2.000000e+00
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.be)
  %i.bf = fmul reassoc nsz arcp contract afn float %exp2, %i.ae
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.as
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ax
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !16 ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.au, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bj
  %i.bn = fmul reassoc nsz arcp contract afn float %i.af, 2.000000e+00
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.as
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ax
  %i.bs = load float, ptr %i.br, align 4, !tbaa !16 ; 2 uses
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bq, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn float %i.au, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn float %.0.i, -5.000000e-01
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, %i.bs
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bu
  store float %i.bf, ptr %i.t, align 4, !tbaa !16
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.by) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bz = fmul reassoc nsz arcp contract afn float %cos, %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !16
  %i.cb = fmul reassoc nsz arcp contract afn float %sin, %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store float %i.cb, ptr %i.cc, align 4, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store float %i.ce, ptr %i.cf, align 4, !tbaa !16
  %i.cg = add nuw i64 %.02538, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @process_v3(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, %i.c                   ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !35  ; 4 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 524340 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 262196 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.056 = phi i64 [ 0, %.lr.ph ], [ %i.ci, %bb.f ] ; 2 uses
  %i.r = mul i64 %.056, %i.l                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !16 ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.x, float %i.v)
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, f0x40C90FDB
  %i.aa = frem reassoc nsz arcp contract afn float %i.z, f0x40C90FDB
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0x3E22F983 ; 2 uses
  %i.ac = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.x, float noundef %i.v) #32 ; 3 uses
  switch i32 %i.n, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = load float, ptr %i.s, align 4, !tbaa !16
  %6 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ad, float 1.000000e+02)
  %7 = fmul reassoc nnan nsz arcp contract afn float %6, f0x3C23D70A
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %8 = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ac, float 1.280000e+02)
  %9 = fmul reassoc nnan nsz arcp contract afn float %8, 7.812500e-03
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ac, 7.812500e-03
  %i.af = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ae ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.051 = phi nsz float [ %i.ag, %bb.e ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.050 = phi nsz float [ %i.ab, %bb.e ], [ %7, %bb.c ], [ %9, %bb.d ]
  %i.ah = fmul reassoc nsz arcp contract afn float %.051, 5.000000e-01 ; 2 uses
  %i.ai = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.051 ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %.050, 6.553600e+04 ; 2 uses
  %i.ak = fptosi float %i.aj to i32               ; 3 uses
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0)
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 65535) ; 2 uses
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 -1)
  %i.ao = add nsw i32 %i.an, 1
  %.inv.i = icmp slt i32 %i.ak, 65535
  %narrow.i = select i1 %.inv.i, i32 %i.ao, i32 65535
  %i.ap = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.aq = uitofp nneg i32 %i.am to float
  %i.ar = fsub reassoc nsz arcp contract afn float %i.aj, %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ap
  %i.at = load float, ptr %i.as, align 4, !tbaa !16
  %i.au = zext nneg i32 %i.am to i64              ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16 ; 2 uses
  %i.ax = fsub reassoc nsz arcp contract afn float %i.at, %i.aw
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ar, %i.ax
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, %i.aw
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.ai
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.ah
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ap
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.au
  %i.bf = load float, ptr %i.be, align 4, !tbaa !16 ; 2 uses
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bd, %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn float %i.ar, %i.bg
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, %i.bf
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.ai
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ap
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.au
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16 ; 2 uses
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bl, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.ar
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bp, %i.bn
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, 2.000000e+00
  %i.bs = load float, ptr %i.s, align 4, !tbaa !16
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bb, 4.000000e+00
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, -2.000000e+00
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bu)
  %i.bv = fmul reassoc nsz arcp contract afn float %exp2, %i.bs
  store float %i.bv, ptr %i.t, align 4, !tbaa !16
  %i.bw = fadd reassoc nsz arcp contract afn float %i.ab, -5.000000e-01
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.ah
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, %i.bj
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bz) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.ca = fmul reassoc nsz arcp contract afn float %i.br, %i.ac ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %cos
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !16
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, %sin
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store float %i.cd, ptr %i.ce, align 4, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store float %i.cg, ptr %i.ch, align 4, !tbaa !16
  %i.ci = add nuw i64 %.056, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !52  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = getelementptr i8, ptr %i.f, i64 644
  %.val = load i32, ptr %i.g, align 4, !tbaa !92
  %i.h = and i32 %.val, 2
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 5316
  %i.l = load i32, ptr %i.k, align 4, !tbaa !93
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @dt_iop_has_focus(ptr noundef nonnull %0) #30
  %.not28 = icmp eq i32 %i.m, 0
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2760
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @process_display(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5)
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 786484
  %i.u = load i32, ptr %i.t, align 4, !tbaa !112
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @process_v3(ptr nonnull poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @process_v1(ptr nonnull poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void
}

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
.preheader116.preheader:
  %1 = alloca %struct.dt_iop_colorzones_params_t, align 4 ; 72 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(456) %i.b, i8 0, i64 456, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !113
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !115
  tail call void @dt_database_start_transaction(ptr noundef %i.c) #30
  store i32 2, ptr %1, align 4, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store float 5.000000e-01, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  store float 5.000000e-01, ptr %i.i, align 4, !tbaa !19
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !17
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !17
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 332 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  store float f0x3E924925, ptr %i.r, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 356 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  store <8 x float> <float f0x3E124925, float 5.000000e-01, float f0x3E924925, float 5.000000e-01, float f0x3EDB6DB8, float 5.000000e-01, float f0x3F124925, float 5.000000e-01>, ptr %i.j, align 4, !tbaa !16
  store <8 x float> <float f0x3E124925, float 5.000000e-01, float f0x3E924925, float 5.000000e-01, float f0x3EDB6DB8, float 5.000000e-01, float f0x3F124925, float 5.000000e-01>, ptr %i.n, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store float 5.000000e-01, ptr %i.af, align 4, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
end_hunk_0
