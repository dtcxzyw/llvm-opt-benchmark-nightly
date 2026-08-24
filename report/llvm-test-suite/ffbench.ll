Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ffbench?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.split.us ], [ 0, %bb.a ] ; 3 uses
  %i.d = and i64 %indvars.iv122, 15
  %i.e = icmp eq i64 %i.d, 8
  %invariant.gep150.idx = shl nsw i64 %indvars.iv122, 12
  %invariant.gep150 = getelementptr inbounds nuw i8, ptr %calloc, i64 %invariant.gep150.idx ; 9 uses
  br i1 %i.e, label %.preheader97.split.us, label %.preheader97.split

.preheader97.split.us:                            ; preds = %.preheader97, %.preheader97.split.us
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.7, %.preheader97.split.us ], [ 0, %.preheader97 ] ; 9 uses
  %.idx144 = shl nuw nsw i64 %indvars.iv118, 4
  %gep151 = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %.idx144
  %i.f = getelementptr inbounds nuw i8, ptr %gep151, i64 8
  store double 1.280000e+02, ptr %i.f, align 8, !tbaa !11
  %indvars.iv.next119 = shl i64 %indvars.iv118, 4
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store double 1.280000e+02, ptr %i.h, align 8, !tbaa !11
  %indvars.iv.next119.1 = shl i64 %indvars.iv118, 4
  %i.i = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store double 1.280000e+02, ptr %i.j, align 8, !tbaa !11
  %indvars.iv.next119.2 = shl i64 %indvars.iv118, 4
  %i.k = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119.2
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store double 1.280000e+02, ptr %i.l, align 8, !tbaa !11
  %indvars.iv.next119.3 = shl i64 %indvars.iv118, 4
  %i.m = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119.3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store double 1.280000e+02, ptr %i.n, align 8, !tbaa !11
  %indvars.iv.next119.4 = shl i64 %indvars.iv118, 4
  %i.o = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119.4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store double 1.280000e+02, ptr %i.p, align 8, !tbaa !11
  %indvars.iv.next119.5 = shl i64 %indvars.iv118, 4
  %i.q = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119.5
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  store double 1.280000e+02, ptr %i.r, align 8, !tbaa !11
  %indvars.iv.next119.6 = shl i64 %indvars.iv118, 4
  %i.s = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %indvars.iv.next119.6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store double 1.280000e+02, ptr %i.t, align 8, !tbaa !11
  %indvars.iv.next119.7 = add nuw nsw i64 %indvars.iv118, 8 ; 2 uses
  %exitcond121.not.7 = icmp eq i64 %indvars.iv.next119.7, 256
  br i1 %exitcond121.not.7, label %.split.us, label %.preheader97.split.us, !llvm.loop !13

.preheader97.split:                               ; preds = %.preheader97, %.preheader97.split.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader97.split.1 ], [ 0, %.preheader97 ] ; 3 uses
  %i.u = and i64 %indvars.iv, 14
  %i.v = icmp eq i64 %i.u, 8
  br i1 %i.v, label %bb.c, label %.preheader97.split.1

bb.c:                                             ; preds = %.preheader97.split
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep150, i64 %.idx
  %i.w = getelementptr inbounds nuw i8, ptr %gep, i64 8
  store double 1.280000e+02, ptr %i.w, align 8, !tbaa !11
  br label %.preheader97.split.1

.preheader97.split.1:                             ; preds = %bb.c, %.preheader97.split
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.split.us, label %.preheader97.split, !llvm.loop !13

.split.us:                                        ; preds = %.preheader97.split.1, %.preheader97.split.us
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 256
  br i1 %exitcond125.not, label %.preheader96, label %.preheader97, !llvm.loop !15

.preheader96:                                     ; preds = %.split.us, %.preheader96
  %.188100 = phi i32 [ %i.x, %.preheader96 ], [ 0, %.split.us ]
  tail call fastcc void @fourn(ptr noundef %calloc, i32 noundef 1)
  tail call fastcc void @fourn(ptr noundef %calloc, i32 noundef -1)
  %i.x = add nuw nsw i32 %.188100, 1              ; 2 uses
  %exitcond126.not = icmp eq i32 %i.x, 63
  br i1 %exitcond126.not, label %.preheader95, label %.preheader96, !llvm.loop !16

.preheader95:                                     ; preds = %.preheader96, %.preheader95
  %indvars.iv127 = phi i64 [ %indvars.iv.next128.1, %.preheader95 ], [ 1, %.preheader96 ] ; 4 uses
  %.082103 = phi double [ %i.ak, %.preheader95 ], [ -1.000000e+10, %.preheader96 ] ; 2 uses
  %.083102 = phi double [ %i.ai, %.preheader95 ], [ 1.000000e+10, %.preheader96 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %indvars.iv127
  %i.z = load double, ptr %i.y, align 8, !tbaa !11 ; 4 uses
  %i.aa = fcmp ole double %i.z, %.083102
  %i.ab = select i1 %i.aa, double %i.z, double %.083102 ; 2 uses
  %i.ac = fcmp ogt double %i.z, %.082103
  %i.ad = select i1 %i.ac, double %i.z, double %.082103 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %indvars.iv127
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11 ; 4 uses
  %i.ah = fcmp ole double %i.ag, %i.ab
  %i.ai = select i1 %i.ah, double %i.ag, double %i.ab ; 4 uses
  %i.aj = fcmp ogt double %i.ag, %i.ad
  %i.ak = select i1 %i.aj, double %i.ag, double %i.ad ; 2 uses
  %indvars.iv.next128.1 = add nuw nsw i64 %indvars.iv127, 4
  %i.al = icmp samesign ult i64 %indvars.iv127, 65533
  br i1 %i.al, label %.preheader95, label %bb.d, !llvm.loop !17

bb.d:                                             ; preds = %.preheader95
  %i.am = fsub double %i.ak, %i.ai
  %i.an = fdiv double 2.550000e+02, %i.am         ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %.split109.us
  %indvars.iv138 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next139, %.split109.us ] ; 3 uses
  %.084112 = phi i32 [ 0, %bb.d ], [ %.us-phi, %.split109.us ] ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv138 to i32 ; 3 uses
  %i.ap = and i32 %i.ao, 15
  %i.aq = icmp eq i32 %i.ap, 8
  %invariant.gep154.idx = shl nsw i64 %indvars.iv138, 12
  %invariant.gep154 = getelementptr inbounds nuw i8, ptr %calloc, i64 %invariant.gep154.idx ; 2 uses
  br i1 %i.aq, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.f
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %.1107.us = phi i32 [ %.2.us, %bb.f ], [ %.084112, %.preheader ] ; 2 uses
  %.idx146 = shl nuw nsw i64 %indvars.iv134, 4
  %gep155 = getelementptr inbounds nuw i8, ptr %invariant.gep154, i64 %.idx146
  %i.ar = getelementptr inbounds nuw i8, ptr %gep155, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !11
  %i.at = fsub double %i.as, %i.ai
  %i.au = fmul double %i.an, %i.at
  %i.av = fptosi double %i.au to i32              ; 2 uses
  %.not.us = icmp eq i32 %i.av, 255
  br i1 %.not.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.split.us
  %i.aw = add nsw i32 %.1107.us, 1
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ay = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.1, i32 noundef %i.ao, i32 noundef %i.ay, i32 noundef 255, i32 noundef %i.av) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader.split.us, %bb.e
  %.2.us = phi i32 [ %i.aw, %bb.e ], [ %.1107.us, %.preheader.split.us ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 256
  br i1 %exitcond137.not, label %.split109.us, label %.preheader.split.us, !llvm.loop !18

.preheader.split:                                 ; preds = %.preheader, %bb.h
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %.1107 = phi i32 [ %.2, %bb.h ], [ %.084112, %.preheader ] ; 2 uses
  %.idx145 = shl nuw nsw i64 %indvars.iv130, 4
  %gep153 = getelementptr inbounds nuw i8, ptr %invariant.gep154, i64 %.idx145
  %i.ba = getelementptr inbounds nuw i8, ptr %gep153, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bc = fsub double %i.bb, %i.ai
  %i.bd = fmul double %i.an, %i.bc
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv130 to i32 ; 2 uses
  %i.bg = and i32 %i.bf, 15
  %i.bh = icmp eq i32 %i.bg, 8
  %spec.select = select i1 %i.bh, i32 255, i32 0  ; 2 uses
  %.not = icmp eq i32 %spec.select, %i.be
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.split
  %i.bi = add nsw i32 %.1107, 1
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.1, i32 noundef %i.ao, i32 noundef %i.bf, i32 noundef %spec.select, i32 noundef %i.be) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.split, %bb.g
  %.2 = phi i32 [ %i.bi, %bb.g ], [ %.1107, %.preheader.split ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next131, 256
  br i1 %exitcond133.not, label %.split109.us, label %.preheader.split, !llvm.loop !18

.split109.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.h ] ; 3 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, 256
  br i1 %exitcond141.not, label %bb.i, label %.preheader, !llvm.loop !19

bb.i:                                             ; preds = %.split109.us
  %i.bl = icmp eq i32 %.us-phi, 0
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !8 ; 2 uses
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.2, i32 noundef 63) #10 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bm, ptr noundef nonnull @.str.3, i32 noundef 63, i32 noundef %.us-phi) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @fourn(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -1, 2) %1) unnamed_addr #3 {
.preheader6:
  %.b = load i1, ptr @main.nsize.0, align 4
  %i.a = select i1 %.b, i32 256, i32 0            ; 2 uses
  %.b1 = load i1, ptr @main.nsize.1, align 4      ; 2 uses
  %i.b = select i1 %.b1, i32 256, i32 0           ; 2 uses
  %i.c = sitofp i32 %1 to double
  %i.d = fmul nnan double %i.c, f0x401921FB54442D1C ; 2 uses
  %i.e = shl nuw nsw i32 %i.b, 1                  ; 4 uses
  %i.f = mul nuw nsw i32 %i.e, %i.a               ; 2 uses
  br i1 %.b1, label %.lr.ph19, label %._crit_edge33

.lr.ph19:                                         ; preds = %.preheader6
  %i.g = zext nneg i32 %i.e to i64                ; 2 uses
  %i.h = zext nneg i32 %i.f to i64                ; 2 uses
  br label %bb.a

.lr.ph32.preheader:                               ; preds = %bb.b
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  br label %.lr.ph32

bb.a:                                             ; preds = %.lr.ph19, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph19 ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.014016 = phi i32 [ 1, %.lr.ph19 ], [ %i.ab, %bb.b ] ; 3 uses
  %indvars44 = trunc i64 %indvars.iv to i32       ; 2 uses
  %i.j = icmp sgt i32 %.014016, %indvars44
  br i1 %i.j, label %.preheader2.lr.ph, label %.loopexit4.preheader

.preheader2.lr.ph:                                ; preds = %bb.a
  %i.k = sub i32 %.014016, %indvars44
  %i.l = icmp samesign ugt i64 %indvars.iv, %i.h
  br i1 %i.l, label %.loopexit4.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader2.lr.ph, %.lr.ph
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %.lr.ph ], [ %indvars.iv, %.preheader2.lr.ph ] ; 3 uses
  %i.m = trunc nsw i64 %indvars.iv39 to i32
  %i.n = add i32 %i.k, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv39 ; 3 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !11
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !11
  store double %i.s, ptr %i.o, align 8, !tbaa !11
  store double %i.p, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr i8, ptr %i.o, i64 8        ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !11
  store double %i.w, ptr %i.t, align 8, !tbaa !11
  store double %i.u, ptr %i.v, align 8, !tbaa !11
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, %i.g ; 2 uses
  %.not155 = icmp samesign ugt i64 %indvars.iv.next40, %i.h
  br i1 %.not155, label %.loopexit4.preheader, label %.lr.ph, !llvm.loop !20

.loopexit4.preheader:                             ; preds = %.lr.ph, %.preheader2.lr.ph, %bb.a
  br label %.loopexit4

.loopexit4:                                       ; preds = %.loopexit4.preheader, %.loopexit4
  %.1141 = phi i32 [ %i.aa, %.loopexit4 ], [ %.014016, %.loopexit4.preheader ] ; 3 uses
  %.0138.in = phi i32 [ %.0138, %.loopexit4 ], [ %i.e, %.loopexit4.preheader ] ; 2 uses
  %.0138 = lshr i32 %.0138.in, 1                  ; 4 uses
  %i.x = icmp samesign ugt i32 %.0138.in, 3
  %i.y = icmp sgt i32 %.1141, %.0138
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %i.aa = sub nsw i32 %.1141, %.0138
  br i1 %i.z, label %.loopexit4, label %bb.b, !llvm.loop !21

bb.b:                                             ; preds = %.loopexit4
  %i.ab = add nsw i32 %.0138, %.1141
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ac = icmp samesign ugt i64 %indvars.iv.next, %i.g
  br i1 %i.ac, label %.lr.ph32.preheader, label %bb.a, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge26, %.lr.ph32
  %i.ad = icmp slt i32 %i.ae, %i.e
  br i1 %i.ad, label %.lr.ph32, label %._crit_edge33, !llvm.loop !23

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.loopexit
  %.013931 = phi i32 [ %i.ae, %.loopexit ], [ 2, %.lr.ph32.preheader ] ; 4 uses
  %i.ae = shl i32 %.013931, 1                     ; 4 uses
  %i.af = ashr exact i32 %i.ae, 1
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fdiv double %i.d, %i.ag                 ; 2 uses
  %i.ai = fmul double %i.ah, 5.000000e-01
  %i.aj = tail call double @sin(double noundef %i.ai) #11, !tbaa !4 ; 2 uses
  %i.ak = tail call double @sin(double noundef %i.ah) #11, !tbaa !4 ; 2 uses
  %.not15127 = icmp slt i32 %.013931, 1
  br i1 %.not15127, label %.loopexit, label %.preheader1.lr.ph

.preheader1.lr.ph:                                ; preds = %.lr.ph32
  %i.al = fmul double %i.aj, -2.000000e+00
  %i.am = fmul double %i.aj, %i.al
  %i.an = fneg double %i.ak
  %i.ao = sext i32 %i.ae to i64
  %i.ap = zext nneg i32 %.013931 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.aq = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x double> poison, double %i.an, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ak, i64 1
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge26
  %indvars.iv45 = phi i64 [ 1, %.preheader1.lr.ph ], [ %indvars.iv.next46, %._crit_edge26 ] ; 4 uses
  %i.au = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.preheader1.lr.ph ], [ %i.br, %._crit_edge26 ] ; 5 uses
  %indvars56 = trunc i64 %indvars.iv45 to i32
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %indvars55 = trunc i64 %indvars.iv.next46 to i32 ; 2 uses
  %i.av = add nsw i32 %indvars55, -2
  %.not15224 = icmp slt i32 %i.av, %indvars56
  %i.aw = icmp samesign ugt i64 %indvars.iv45, %i.i
  %or.cond = select i1 %.not15224, i1 true, i1 %i.aw
  br i1 %or.cond, label %._crit_edge26, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %.preheader1
  %i.ax = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %.lr.ph22
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %.lr.ph22 ], [ %indvars.iv45, %.lr.ph22.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv49 ; 3 uses
  %i.az = getelementptr i8, ptr %gep, i64 8       ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv49 ; 3 uses
  %i.bb = load double, ptr %i.az, align 8, !tbaa !11
  %i.bc = load <2 x double>, ptr %gep, align 8, !tbaa !11 ; 2 uses
  %i.bd = fneg double %i.bb
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 0
  %i.bg = fmul <2 x double> %i.ax, %i.bf
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bc, <2 x double> %i.bg) ; 2 uses
  %i.bi = load <2 x double>, ptr %i.ba, align 8, !tbaa !11
  %i.bj = fsub <2 x double> %i.bi, %i.bh          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  store double %i.bk, ptr %gep, align 8, !tbaa !11
  %i.bl = load <2 x double>, ptr %i.ba, align 8, !tbaa !11
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  store double %i.bm, ptr %i.az, align 8, !tbaa !11
  %i.bn = fadd <2 x double> %i.bh, %i.bl
  store <2 x double> %i.bn, ptr %i.ba, align 8, !tbaa !11
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, %i.ao ; 2 uses
  %.not153 = icmp sgt i64 %indvars.iv.next50, %i.i
  br i1 %.not153, label %._crit_edge26, label %.lr.ph22, !llvm.loop !24

._crit_edge26:                                    ; preds = %.lr.ph22, %.preheader1
  %i.bo = fmul <2 x double> %i.au, %i.at
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.ar, <2 x double> %i.bp)
  %i.br = fadd <2 x double> %i.au, %i.bq
  %.not151 = icmp slt i32 %.013931, %indvars55
  br i1 %.not151, label %.loopexit, label %.preheader1, !llvm.loop !25

._crit_edge33:                                    ; preds = %.loopexit, %.preheader6
  %i.bs = shl nuw nsw i32 %i.b, 1                 ; 8 uses
  %i.bt = mul nuw nsw i32 %i.a, %i.bs             ; 8 uses
  %.not13.1 = icmp eq i32 %i.bt, 0
  br i1 %.not13.1, label %.preheader5.1, label %.lr.ph19.1

.lr.ph19.1:                                       ; preds = %._crit_edge33
  %i.bu = add nsw i32 %i.bs, -2
  %i.bv = zext nneg i32 %i.bs to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph19.1
  %indvars.iv.1 = phi i64 [ 1, %.lr.ph19.1 ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.014016.1 = phi i32 [ 1, %.lr.ph19.1 ], [ %i.co, %bb.d ] ; 3 uses
  %indvars44.1 = trunc i64 %indvars.iv.1 to i32   ; 4 uses
  %i.bw = icmp sgt i32 %.014016.1, %indvars44.1
  br i1 %i.bw, label %.preheader3.1, label %.loopexit4.1.preheader

.preheader3.1:                                    ; preds = %bb.c
  %i.bx = add i32 %i.bu, %indvars44.1             ; 2 uses
  %.not15411.1 = icmp slt i32 %i.bx, %indvars44.1
  br i1 %.not15411.1, label %.loopexit4.1.preheader, label %.preheader2.lr.ph.1

.preheader2.lr.ph.1:                              ; preds = %.preheader3.1
  %i.by = sub i32 %.014016.1, %indvars44.1
  br label %.preheader2.1

.preheader2.1:                                    ; preds = %._crit_edge.1, %.preheader2.lr.ph.1
  %indvars.iv37.1 = phi i64 [ %indvars.iv.1, %.preheader2.lr.ph.1 ], [ %indvars.iv.next38.1, %._crit_edge.1 ] ; 4 uses
  %indvars42.1 = trunc i64 %indvars.iv37.1 to i32
  %.not1559.1 = icmp slt i32 %i.bt, %indvars42.1
  br i1 %.not1559.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader2.1
  %i.bz = trunc nsw i64 %indvars.iv37.1 to i32
  %i.ca = add i32 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv37.1 ; 3 uses
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !11
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd ; 3 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11
  store double %i.cf, ptr %i.cb, align 8, !tbaa !11
  store double %i.cc, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %i.ce, i64 8      ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !11
  store double %i.cj, ptr %i.cg, align 8, !tbaa !11
  store double %i.ch, ptr %i.ci, align 8, !tbaa !11
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %.preheader2.1
  %indvars.iv.next38.1 = add nuw nsw i64 %indvars.iv37.1, 2 ; 2 uses
  %indvars.1 = trunc i64 %indvars.iv.next38.1 to i32
  %.not154.1 = icmp slt i32 %i.bx, %indvars.1
  br i1 %.not154.1, label %.loopexit4.1.preheader, label %.preheader2.1, !llvm.loop !26

.loopexit4.1.preheader:                           ; preds = %._crit_edge.1, %.preheader3.1, %bb.c
  br label %.loopexit4.1

.loopexit4.1:                                     ; preds = %.loopexit4.1.preheader, %.loopexit4.1
  %.1141.1 = phi i32 [ %i.cn, %.loopexit4.1 ], [ %.014016.1, %.loopexit4.1.preheader ] ; 3 uses
  %.0138.in.1 = phi i32 [ %.0138.1, %.loopexit4.1 ], [ %i.bt, %.loopexit4.1.preheader ]
  %.0138.1 = lshr i32 %.0138.in.1, 1              ; 5 uses
  %i.ck = icmp samesign uge i32 %.0138.1, %i.bs
  %i.cl = icmp sgt i32 %.1141.1, %.0138.1
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cn = sub nsw i32 %.1141.1, %.0138.1
  br i1 %i.cm, label %.loopexit4.1, label %bb.d, !llvm.loop !21

bb.d:                                             ; preds = %.loopexit4.1
  %i.co = add nsw i32 %.0138.1, %.1141.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, %i.bv ; 2 uses
  %indvars43.1 = trunc i64 %indvars.iv.next.1 to i32
  %.not.1 = icmp slt i32 %i.bt, %indvars43.1
  br i1 %.not.1, label %.preheader5.1, label %bb.c, !llvm.loop !22

.preheader5.1:                                    ; preds = %bb.d, %._crit_edge33
  %i.cp = icmp samesign ult i32 %i.bs, %i.bt
  br i1 %i.cp, label %.lr.ph32.preheader.1, label %._crit_edge33.1

.lr.ph32.preheader.1:                             ; preds = %.preheader5.1
  %i.cq = zext nneg i32 %i.bs to i64
  %2 = zext nneg i32 %i.bt to i64
  br label %.lr.ph32.1

.lr.ph32.1:                                       ; preds = %.loopexit.1, %.lr.ph32.preheader.1
  %.013931.1 = phi i32 [ %i.cr, %.loopexit.1 ], [ %i.bs, %.lr.ph32.preheader.1 ] ; 4 uses
  %i.cr = shl i32 %.013931.1, 1                   ; 4 uses
  %i.cs = sdiv i32 %i.cr, %i.bs
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fdiv double %i.d, %i.ct                 ; 2 uses
  %i.cv = fmul double %i.cu, 5.000000e-01
  %i.cw = tail call double @sin(double noundef %i.cv) #11, !tbaa !4 ; 2 uses
  %i.cx = tail call double @sin(double noundef %i.cu) #11, !tbaa !4 ; 2 uses
  %.not15127.1 = icmp slt i32 %.013931.1, 1
  br i1 %.not15127.1, label %.loopexit.1, label %.preheader1.lr.ph.1

.preheader1.lr.ph.1:                              ; preds = %.lr.ph32.1
  %i.cy = fmul double %i.cw, -2.000000e+00
  %i.cz = fmul double %i.cw, %i.cy
  %i.da = fneg double %i.cx
  %i.db = sext i32 %i.cr to i64
  %i.dc = zext nneg i32 %.013931.1 to i64
  %invariant.gep73 = getelementptr [8 x i8], ptr %0, i64 %i.dc
  %i.dd = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dg = insertelement <2 x double> %i.df, double %i.cx, i64 1
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %._crit_edge26.1, %.preheader1.lr.ph.1
  %indvars.iv45.1 = phi i64 [ 1, %.preheader1.lr.ph.1 ], [ %indvars.iv.next46.1, %._crit_edge26.1 ] ; 3 uses
  %i.dh = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.preheader1.lr.ph.1 ], [ %i.ed, %._crit_edge26.1 ] ; 5 uses
  %indvars56.1 = trunc i64 %indvars.iv45.1 to i32
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45.1, %i.cq ; 2 uses
  %indvars55.1 = trunc i64 %indvars.iv.next46.1 to i32 ; 2 uses
  %i.di = add nsw i32 %indvars55.1, -2            ; 2 uses
  %.not15224.1 = icmp slt i32 %i.di, %indvars56.1
  br i1 %.not15224.1, label %._crit_edge26.1, label %.preheader.1.preheader

.preheader.1.preheader:                           ; preds = %.preheader1.1
  %i.dj = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.preheader, %._crit_edge23.1
  %indvars.iv47.1 = phi i64 [ %indvars.iv.next48.1, %._crit_edge23.1 ], [ %indvars.iv45.1, %.preheader.1.preheader ] ; 3 uses
  %indvars54.1 = trunc i64 %indvars.iv47.1 to i32
  %.not15320.1 = icmp slt i32 %i.bt, %indvars54.1
  br i1 %.not15320.1, label %._crit_edge23.1, label %.lr.ph22.1

.lr.ph22.1:                                       ; preds = %.preheader.1, %.lr.ph22.1
  %indvars.iv49.1 = phi i64 [ %indvars.iv.next50.1, %.lr.ph22.1 ], [ %indvars.iv47.1, %.preheader.1 ] ; 3 uses
  %gep74 = getelementptr [8 x i8], ptr %invariant.gep73, i64 %indvars.iv49.1 ; 3 uses
  %i.dl = getelementptr i8, ptr %gep74, i64 8     ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv49.1 ; 3 uses
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !11
  %i.do = load <2 x double>, ptr %gep74, align 8, !tbaa !11 ; 2 uses
  %i.dp = fneg double %i.dn
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 0
  %i.ds = fmul <2 x double> %i.dj, %i.dr
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.do, <2 x double> %i.ds) ; 2 uses
  %i.du = load <2 x double>, ptr %i.dm, align 8, !tbaa !11
  %i.dv = fsub <2 x double> %i.du, %i.dt          ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  store double %i.dw, ptr %gep74, align 8, !tbaa !11
  %i.dx = load <2 x double>, ptr %i.dm, align 8, !tbaa !11
  %i.dy = extractelement <2 x double> %i.dv, i64 1
  store double %i.dy, ptr %i.dl, align 8, !tbaa !11
  %i.dz = fadd <2 x double> %i.dt, %i.dx
  store <2 x double> %i.dz, ptr %i.dm, align 8, !tbaa !11
  %indvars.iv.next50.1 = add nsw i64 %indvars.iv49.1, %i.db ; 2 uses
  %.not153.1 = icmp sgt i64 %indvars.iv.next50.1, %2
  br i1 %.not153.1, label %._crit_edge23.1, label %.lr.ph22.1, !llvm.loop !24

._crit_edge23.1:                                  ; preds = %.lr.ph22.1, %.preheader.1
  %indvars.iv.next48.1 = add nuw nsw i64 %indvars.iv47.1, 2 ; 2 uses
  %indvars53.1 = trunc i64 %indvars.iv.next48.1 to i32
  %.not152.1 = icmp slt i32 %i.di, %indvars53.1
  br i1 %.not152.1, label %._crit_edge26.1, label %.preheader.1, !llvm.loop !27

._crit_edge26.1:                                  ; preds = %._crit_edge23.1, %.preheader1.1
  %i.ea = fmul <2 x double> %i.dh, %i.dg
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.de, <2 x double> %i.eb)
  %i.ed = fadd <2 x double> %i.dh, %i.ec
  %.not151.1 = icmp slt i32 %.013931.1, %indvars55.1
  br i1 %.not151.1, label %.loopexit.1, label %.preheader1.1, !llvm.loop !25

.loopexit.1:                                      ; preds = %._crit_edge26.1, %.lr.ph32.1
  %i.ee = icmp slt i32 %i.cr, %i.bt
  br i1 %i.ee, label %.lr.ph32.1, label %._crit_edge33.1, !llvm.loop !23

._crit_edge33.1:                                  ; preds = %.loopexit.1, %.preheader5.1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
end_hunk_0
