Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ffbench?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %spec.select = select i1 %i.bg, i32 255, i32 0  ; 2 uses
  %.not = icmp eq i32 %spec.select, %i.bd
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.split
  %i.bh = add nsw i32 %.1107, 1
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.1, i32 noundef %i.an, i32 noundef %i.be, i32 noundef %spec.select, i32 noundef %i.bd) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.split, %bb.g
  %.2 = phi i32 [ %i.bh, %bb.g ], [ %.1107, %.preheader.split ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next131, 256
  br i1 %exitcond133.not, label %.split109.us, label %.preheader.split, !llvm.loop !15

.split109.us:                                     ; preds = %bb.h, %bb.f
  %.us-phi = phi i32 [ %.2.us, %bb.f ], [ %.2, %bb.h ] ; 3 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, 256
  br i1 %exitcond141.not, label %bb.i, label %.preheader, !llvm.loop !16

bb.i:                                             ; preds = %.split109.us
  %i.bk = icmp eq i32 %.us-phi, 0
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !19 ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.2, i32 noundef 63) #10 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.3, i32 noundef 63, i32 noundef %.us-phi) #10 ; 0 uses
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
  %i.p = load double, ptr %i.o, align 8, !tbaa !9
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !9
  store double %i.s, ptr %i.o, align 8, !tbaa !9
  store double %i.p, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr i8, ptr %i.o, i64 8        ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !9
  store double %i.w, ptr %i.t, align 8, !tbaa !9
  store double %i.u, ptr %i.v, align 8, !tbaa !9
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
  %i.aj = tail call double @sin(double noundef %i.ai) #11, !tbaa !7 ; 2 uses
  %i.ak = tail call double @sin(double noundef %i.ah) #11, !tbaa !7 ; 2 uses
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
  %i.bb = load double, ptr %i.az, align 8, !tbaa !9
  %i.bc = load <2 x double>, ptr %gep, align 8, !tbaa !9 ; 2 uses
  %i.bd = fneg double %i.bb
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 0
  %i.bg = fmul <2 x double> %i.ax, %i.bf
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bc, <2 x double> %i.bg) ; 2 uses
  %i.bi = load <2 x double>, ptr %i.ba, align 8, !tbaa !9
  %i.bj = fsub <2 x double> %i.bi, %i.bh          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  store double %i.bk, ptr %gep, align 8, !tbaa !9
  %i.bl = load <2 x double>, ptr %i.ba, align 8, !tbaa !9
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  store double %i.bm, ptr %i.az, align 8, !tbaa !9
  %i.bn = fadd <2 x double> %i.bh, %i.bl
  store <2 x double> %i.bn, ptr %i.ba, align 8, !tbaa !9
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
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !9
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd ; 3 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !9
  store double %i.cf, ptr %i.cb, align 8, !tbaa !9
  store double %i.cc, ptr %i.ce, align 8, !tbaa !9
  %i.cg = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9
  %i.ci = getelementptr i8, ptr %i.ce, i64 8      ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !9
  store double %i.cj, ptr %i.cg, align 8, !tbaa !9
  store double %i.ch, ptr %i.ci, align 8, !tbaa !9
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
  %i.cr = zext nneg i32 %i.bt to i64
  br label %.lr.ph32.1

.lr.ph32.1:                                       ; preds = %.loopexit.1, %.lr.ph32.preheader.1
  %.013931.1 = phi i32 [ %i.cs, %.loopexit.1 ], [ %i.bs, %.lr.ph32.preheader.1 ] ; 4 uses
  %i.cs = shl i32 %.013931.1, 1                   ; 4 uses
  %i.ct = sdiv i32 %i.cs, %i.bs
  %i.cu = sitofp i32 %i.ct to double
  %i.cv = fdiv double %i.d, %i.cu                 ; 2 uses
  %i.cw = fmul double %i.cv, 5.000000e-01
  %i.cx = tail call double @sin(double noundef %i.cw) #11, !tbaa !7 ; 2 uses
  %i.cy = tail call double @sin(double noundef %i.cv) #11, !tbaa !7 ; 2 uses
  %.not15127.1 = icmp slt i32 %.013931.1, 1
  br i1 %.not15127.1, label %.loopexit.1, label %.preheader1.lr.ph.1

.preheader1.lr.ph.1:                              ; preds = %.lr.ph32.1
  %i.cz = fmul double %i.cx, -2.000000e+00
  %i.da = fmul double %i.cx, %i.cz
  %i.db = fneg double %i.cy
  %i.dc = sext i32 %i.cs to i64
  %i.dd = zext nneg i32 %.013931.1 to i64
  %invariant.gep72 = getelementptr [8 x i8], ptr %0, i64 %i.dd
  %i.de = insertelement <2 x double> poison, double %i.da, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.cy, i64 1
  br label %.preheader1.1

.preheader1.1:                                    ; preds = %._crit_edge26.1, %.preheader1.lr.ph.1
  %indvars.iv45.1 = phi i64 [ 1, %.preheader1.lr.ph.1 ], [ %indvars.iv.next46.1, %._crit_edge26.1 ] ; 3 uses
  %i.di = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %.preheader1.lr.ph.1 ], [ %i.ee, %._crit_edge26.1 ] ; 5 uses
  %indvars56.1 = trunc i64 %indvars.iv45.1 to i32
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45.1, %i.cq ; 2 uses
  %indvars55.1 = trunc i64 %indvars.iv.next46.1 to i32 ; 2 uses
  %i.dj = add nsw i32 %indvars55.1, -2            ; 2 uses
  %.not15224.1 = icmp slt i32 %i.dj, %indvars56.1
  br i1 %.not15224.1, label %._crit_edge26.1, label %.preheader.1.preheader

.preheader.1.preheader:                           ; preds = %.preheader1.1
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.1.preheader, %._crit_edge23.1
  %indvars.iv47.1 = phi i64 [ %indvars.iv.next48.1, %._crit_edge23.1 ], [ %indvars.iv45.1, %.preheader.1.preheader ] ; 3 uses
  %indvars54.1 = trunc i64 %indvars.iv47.1 to i32
  %.not15320.1 = icmp slt i32 %i.bt, %indvars54.1
  br i1 %.not15320.1, label %._crit_edge23.1, label %.lr.ph22.1

.lr.ph22.1:                                       ; preds = %.preheader.1, %.lr.ph22.1
  %indvars.iv49.1 = phi i64 [ %indvars.iv.next50.1, %.lr.ph22.1 ], [ %indvars.iv47.1, %.preheader.1 ] ; 3 uses
  %gep73 = getelementptr [8 x i8], ptr %invariant.gep72, i64 %indvars.iv49.1 ; 3 uses
  %i.dm = getelementptr i8, ptr %gep73, i64 8     ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv49.1 ; 3 uses
  %i.do = load double, ptr %i.dm, align 8, !tbaa !9
  %i.dp = load <2 x double>, ptr %gep73, align 8, !tbaa !9 ; 2 uses
  %i.dq = fneg double %i.do
  %i.dr = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x double> %i.dr, double %i.dq, i64 0
  %i.dt = fmul <2 x double> %i.dk, %i.ds
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dp, <2 x double> %i.dt) ; 2 uses
  %i.dv = load <2 x double>, ptr %i.dn, align 8, !tbaa !9
  %i.dw = fsub <2 x double> %i.dv, %i.du          ; 2 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0
  store double %i.dx, ptr %gep73, align 8, !tbaa !9
  %i.dy = load <2 x double>, ptr %i.dn, align 8, !tbaa !9
  %i.dz = extractelement <2 x double> %i.dw, i64 1
  store double %i.dz, ptr %i.dm, align 8, !tbaa !9
  %i.ea = fadd <2 x double> %i.du, %i.dy
  store <2 x double> %i.ea, ptr %i.dn, align 8, !tbaa !9
  %indvars.iv.next50.1 = add nsw i64 %indvars.iv49.1, %i.dc ; 2 uses
  %.not153.1 = icmp sgt i64 %indvars.iv.next50.1, %i.cr
  br i1 %.not153.1, label %._crit_edge23.1, label %.lr.ph22.1, !llvm.loop !24

._crit_edge23.1:                                  ; preds = %.lr.ph22.1, %.preheader.1
  %indvars.iv.next48.1 = add nuw nsw i64 %indvars.iv47.1, 2 ; 2 uses
  %indvars53.1 = trunc i64 %indvars.iv.next48.1 to i32
  %.not152.1 = icmp slt i32 %i.dj, %indvars53.1
  br i1 %.not152.1, label %._crit_edge26.1, label %.preheader.1, !llvm.loop !27

._crit_edge26.1:                                  ; preds = %._crit_edge23.1, %.preheader1.1
  %i.eb = fmul <2 x double> %i.di, %i.dh
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.df, <2 x double> %i.ec)
  %i.ee = fadd <2 x double> %i.di, %i.ed
  %.not151.1 = icmp slt i32 %.013931.1, %indvars55.1
  br i1 %.not151.1, label %.loopexit.1, label %.preheader1.1, !llvm.loop !25

.loopexit.1:                                      ; preds = %._crit_edge26.1, %.lr.ph32.1
  %i.ef = icmp slt i32 %i.cs, %i.bt
  br i1 %i.ef, label %.lr.ph32.1, label %._crit_edge33.1, !llvm.loop !23

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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
end_hunk_0
