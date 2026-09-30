Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMf?download=true
inline.NumInlined: 878
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Abc_Tt6IsopCover:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !24
  %wide.load98 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !24
  %i.bo = or <4 x i32> %wide.load, %broadcast.splat
  %i.bp = or <4 x i32> %wide.load98, %broadcast.splat
  store <4 x i32> %i.bo, ptr %gep, align 4, !tbaa !24
  store <4 x i32> %i.bp, ptr %i.bn, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv75.ph = phi i64 [ %i.bk, %.lr.ph ], [ %i.bm, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %split
  %i.br = icmp slt i32 %i.ar, %i.av
  br i1 %i.br, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %.preheader
  %i.bs = shl nsw i32 %.0.lcssa, 1
  %i.bt = shl nuw i32 2, %i.bs                    ; 2 uses
  %i.bu = sext i32 %i.ar to i64                   ; 4 uses
  %wide.trip.count83 = sext i32 %i.av to i64      ; 2 uses
  %i.bv = sub nsw i64 %wide.trip.count83, %i.bu   ; 3 uses
  %min.iters.check100 = icmp ult i64 %i.bv, 8
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph73
  %n.vec102 = and i64 %i.bv, -8                   ; 3 uses
  %i.bw = add nsw i64 %n.vec102, %i.bu
  %broadcast.splatinsert103 = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat104 = shufflevector <4 x i32> %broadcast.splatinsert103, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep117 = getelementptr [4 x i8], ptr %3, i64 %i.bu
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph101
  %index106 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body105 ] ; 2 uses
  %gep118 = getelementptr [4 x i8], ptr %invariant.gep117, i64 %index106 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep118, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %gep118, align 4, !tbaa !24
  %wide.load108 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !24
  %i.by = or <4 x i32> %wide.load107, %broadcast.splat104
  %i.bz = or <4 x i32> %wide.load108, %broadcast.splat104
  store <4 x i32> %i.by, ptr %gep118, align 4, !tbaa !24
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !24
  %index.next109 = add nuw i64 %index106, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.ca, label %middle.block110, label %vector.body105, !llvm.loop !410

middle.block110:                                  ; preds = %vector.body105
  %cmp.n111 = icmp eq i64 %i.bv, %n.vec102
  br i1 %cmp.n111, label %.loopexit, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %.lr.ph73, %middle.block110
  %indvars.iv79.ph = phi i64 [ %i.bu, %.lr.ph73 ], [ %i.bw, %middle.block110 ]
  br label %scalar.ph99

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %scalar.ph ], [ %indvars.iv75.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv75 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !24
  %i.cd = or i32 %i.cc, %i.bj
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !24
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !411

scalar.ph99:                                      ; preds = %scalar.ph99.preheader, %scalar.ph99
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %scalar.ph99 ], [ %indvars.iv79.ph, %scalar.ph99.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv79 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !24
  %i.cg = or i32 %i.cf, %i.bt
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !24
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %scalar.ph99, !llvm.loop !412

.loopexit:                                        ; preds = %scalar.ph99, %middle.block110, %.preheader, %bb.a, %bb.c
  %.064 = phi i64 [ 0, %bb.a ], [ -1, %bb.c ], [ %i.bg, %.preheader ], [ %i.bg, %middle.block110 ], [ %i.bg, %scalar.ph99 ]
  ret i64 %.064
}

; Function Attrs: inlinehint nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_Tt8IsopCover(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 32) %2, ptr nofree noundef nonnull captures(none) initializes((0, 32)) %3, ptr noundef nonnull %4, ptr noundef nonnull %5) unnamed_addr #17 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = alloca [2 x i64], align 16               ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %i.d = alloca [2 x i64], align 16               ; 5 uses
  %i.e = alloca [2 x i64], align 16               ; 4 uses
  %i.f = alloca [2 x i64], align 16               ; 4 uses
  %i.g = alloca [2 x i64], align 16               ; 4 uses
  %i.h = icmp samesign ult i32 %2, 7
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !19
  %i.j = load i64, ptr %1, align 8, !tbaa !19
  %i.k = tail call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.i, i64 noundef %i.j, i32 noundef %2, ptr noundef %4, ptr noundef %5) ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.k, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.k, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.n, align 8, !tbaa !19
  store i64 %i.k, ptr %3, align 8, !tbaa !19
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %2, 7
  br i1 %i.o, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %i.s = icmp eq i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 4 uses
  br i1 %i.s, label %bb.e, label %._crit_edge82

._crit_edge82:                                    ; preds = %bb.d
  %.pre83 = load i64, ptr %1, align 8, !tbaa !19
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre86 = load i64, ptr %.phi.trans.insert85, align 8, !tbaa !19
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %i.x = icmp eq i64 %i.u, %i.w
  %.pre84 = load i64, ptr %1, align 8, !tbaa !19  ; 4 uses
  br i1 %i.x, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !19
  %i.aa = icmp eq i64 %.pre84, %i.z
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.c
  tail call fastcc void @Abc_Tt7IsopCover(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load <2 x i64>, ptr %3, align 8, !tbaa !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !19
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge82, %bb.g, %bb.f, %bb.e
  %i.ai = phi i64 [ %.pre86, %._crit_edge82 ], [ %i.u, %bb.g ], [ %i.u, %bb.f ], [ %i.w, %bb.e ]
  %i.aj = phi i64 [ %.pre83, %._crit_edge82 ], [ %.pre84, %bb.g ], [ %.pre84, %bb.f ], [ %.pre84, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.am = xor i64 %i.al, -1
  %i.an = and i64 %i.p, %i.am
  store i64 %i.an, ptr %i.a, align 16, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = and i64 %i.u, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !19
  %i.at = xor i64 %i.aj, -1
  %i.au = and i64 %i.r, %i.at
  store i64 %i.au, ptr %i.b, align 16, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = and i64 %i.ai, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !19
  %i.ba = and i64 %i.aj, %i.al
  store i64 %i.ba, ptr %i.d, align 16, !tbaa !19
  %i.bb = and i64 %i.aw, %i.ap
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !19
  %i.bd = load i32, ptr %5, align 4, !tbaa !24    ; 2 uses
  call fastcc void @Abc_Tt7IsopCover(ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef %4, ptr noundef %5)
  %i.be = load i32, ptr %5, align 4, !tbaa !24    ; 4 uses
  call fastcc void @Abc_Tt7IsopCover(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ak, ptr noundef %i.f, ptr noundef %4, ptr noundef %5)
  %i.bf = load i32, ptr %5, align 4, !tbaa !24    ; 2 uses
  %i.bg = load <2 x i64>, ptr %0, align 8, !tbaa !19
  %i.bh = load <2 x i64>, ptr %i.e, align 16, !tbaa !19 ; 2 uses
  %6 = xor <2 x i64> %i.bh, splat (i64 -1)
  %7 = and <2 x i64> %i.bg, %6
  %8 = load <2 x i64>, ptr %i.q, align 8, !tbaa !19
  %9 = load <2 x i64>, ptr %i.f, align 16, !tbaa !19 ; 2 uses
  %i.bi = xor <2 x i64> %9, splat (i64 -1)
  %i.bj = and <2 x i64> %8, %i.bi
  %i.bk = or <2 x i64> %i.bj, %7
  store <2 x i64> %i.bk, ptr %i.c, align 16, !tbaa !19
  call fastcc void @Abc_Tt7IsopCover(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.g, ptr noundef %4, ptr noundef %5)
  %i.bl = load <2 x i64>, ptr %i.g, align 16, !tbaa !19 ; 2 uses
  %10 = or <2 x i64> %i.bl, %i.bh
  store <2 x i64> %10, ptr %3, align 8, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %12 = or <2 x i64> %i.bl, %9
  store <2 x i64> %12, ptr %11, align 8, !tbaa !19
  %i.bm = icmp slt i32 %i.bd, %i.be
  br i1 %i.bm, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.bn = sext i32 %i.bd to i64                   ; 4 uses
  %wide.trip.count = sext i32 %i.be to i64        ; 2 uses
  %i.bo = sub nsw i64 %wide.trip.count, %i.bn     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %.lr.ph.preheader108, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, -8                      ; 3 uses
  %i.bp = add nsw i64 %n.vec, %i.bn
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !24
  %wide.load94 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !24
  %i.br = or <4 x i32> %wide.load, splat (i32 16384)
  %i.bs = or <4 x i32> %wide.load94, splat (i32 16384)
  store <4 x i32> %i.br, ptr %gep, align 4, !tbaa !24
  store <4 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !413

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader108

.lr.ph.preheader108:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bn, %.lr.ph.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.i
  %i.bu = icmp slt i32 %i.be, %i.bf
  br i1 %i.bu, label %.lr.ph75.preheader, label %._crit_edge

.lr.ph75.preheader:                               ; preds = %.preheader
  %i.bv = sext i32 %i.be to i64                   ; 4 uses
  %wide.trip.count80 = sext i32 %i.bf to i64      ; 2 uses
  %i.bw = sub nsw i64 %wide.trip.count80, %i.bv   ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check96, label %.lr.ph75.preheader107, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph75.preheader
  %n.vec98 = and i64 %i.bw, -8                    ; 3 uses
  %i.bx = add nsw i64 %n.vec98, %i.bv
  %invariant.gep109 = getelementptr [4 x i8], ptr %4, i64 %i.bv
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next103, %vector.body99 ] ; 2 uses
  %gep110 = getelementptr [4 x i8], ptr %invariant.gep109, i64 %index100 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %gep110, i64 16 ; 2 uses
  %wide.load101 = load <4 x i32>, ptr %gep110, align 4, !tbaa !24
  %wide.load102 = load <4 x i32>, ptr %i.by, align 4, !tbaa !24
  %i.bz = or <4 x i32> %wide.load101, splat (i32 32768)
  %i.ca = or <4 x i32> %wide.load102, splat (i32 32768)
  store <4 x i32> %i.bz, ptr %gep110, align 4, !tbaa !24
  store <4 x i32> %i.ca, ptr %i.by, align 4, !tbaa !24
  %index.next103 = add nuw i64 %index100, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.cb, label %middle.block104, label %vector.body99, !llvm.loop !414

middle.block104:                                  ; preds = %vector.body99
  %cmp.n105 = icmp eq i64 %i.bw, %n.vec98
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph75.preheader107

.lr.ph75.preheader107:                            ; preds = %.lr.ph75.preheader, %middle.block104
  %indvars.iv77.ph = phi i64 [ %i.bv, %.lr.ph75.preheader ], [ %i.bx, %middle.block104 ]
  br label %.lr.ph75

.lr.ph:                                           ; preds = %.lr.ph.preheader108, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader108 ] ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.ce = or i32 %i.cd, 16384
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !415

.lr.ph75:                                         ; preds = %.lr.ph75.preheader107, %.lr.ph75
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph75 ], [ %indvars.iv77.ph, %.lr.ph75.preheader107 ] ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv77 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24
  %i.ch = or i32 %i.cg, 32768
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !24
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph75, !llvm.loop !416

._crit_edge:                                      ; preds = %.lr.ph75, %middle.block104, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_Tt7IsopCover(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2, ptr noundef nonnull %3, ptr noundef nonnull %4) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp eq i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.pre60 = load i64, ptr %1, align 8, !tbaa !19
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.a, i64 noundef %i.e, i32 noundef 6, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !19
  store i64 %i.i, ptr %2, align 8, !tbaa !19
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre60, %._crit_edge ], [ %i.e, %bb.b ]
  %i.l = phi i64 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ]
  %i.m = load i32, ptr %4, align 4, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = xor i64 %i.l, -1
  %i.p = and i64 %i.a, %i.o
  %i.q = tail call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.p, i64 noundef %i.k, i32 noundef 6, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.r = load i32, ptr %4, align 4, !tbaa !24     ; 4 uses
  %i.s = load i64, ptr %i.b, align 8, !tbaa !19
  %i.t = load i64, ptr %1, align 8, !tbaa !19
  %i.u = xor i64 %i.t, -1
  %i.v = and i64 %i.s, %i.u
  %i.w = load i64, ptr %i.n, align 8, !tbaa !19
  %i.x = tail call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.v, i64 noundef %i.w, i32 noundef 6, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.y = load i32, ptr %4, align 4, !tbaa !24     ; 2 uses
  %i.z = load i64, ptr %0, align 8, !tbaa !19
  %i.aa = xor i64 %i.q, -1
  %i.ab = and i64 %i.z, %i.aa
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ad = xor i64 %i.x, -1
  %i.ae = and i64 %i.ac, %i.ad
  %i.af = or i64 %i.ae, %i.ab
  %i.ag = load i64, ptr %1, align 8, !tbaa !19
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !19
  %i.ai = and i64 %i.ah, %i.ag
  %i.aj = tail call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.af, i64 noundef %i.ai, i32 noundef 6, ptr noundef %3, ptr noundef %4) ; 2 uses
  %i.ak = or i64 %i.aj, %i.q
  store i64 %i.ak, ptr %2, align 8, !tbaa !19
  %i.al = or i64 %i.aj, %i.x
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !19
  %i.an = icmp slt i32 %i.m, %i.r
  br i1 %i.an, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ao = sext i32 %i.m to i64                    ; 4 uses
  %wide.trip.count = sext i32 %i.r to i64         ; 2 uses
  %i.ap = sub nsw i64 %wide.trip.count, %i.ao     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 8
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ap, -8                      ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.ao
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !24
  %wide.load1 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !24
  %i.as = or <4 x i32> %wide.load, splat (i32 4096)
  %i.at = or <4 x i32> %wide.load1, splat (i32 4096)
  store <4 x i32> %i.as, ptr %gep, align 4, !tbaa !24
  store <4 x i32> %i.at, ptr %i.ar, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
end_hunk_0
