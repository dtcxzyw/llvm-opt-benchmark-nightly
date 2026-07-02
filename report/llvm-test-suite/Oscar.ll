inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@printf

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @Uniform11(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = mul nsw i32 %i.a, 4855
  %i.c = add nsw i32 %i.b, 1731
  %i.d = and i32 %i.c, 8191                       ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !4
  %i.e = uitofp nneg i32 %i.d to float
  %i.f = fmul nnan float %i.e, f0x39000000
  store float %i.f, ptr %1, align 4, !tbaa !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Exptab(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [26 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.051 = phi float [ 4.000000e+00, %bb.a ], [ %i.y, %bb.b ] ; 3 uses
  %i.b = fdiv float f0x40490FDB, %.051            ; 10 uses
  %i.c = fmul float %i.b, %i.b                    ; 2 uses
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fsub float 1.000000e+00, %i.d
  %i.f = fmul float %i.b, %i.c
  %i.g = fmul float %i.b, %i.f                    ; 2 uses
  %i.h = fdiv float %i.g, 2.400000e+01
  %i.i = fadd float %i.e, %i.h
  %i.j = fmul float %i.b, %i.g
  %i.k = fmul float %i.b, %i.j                    ; 2 uses
  %i.l = fdiv float %i.k, 7.200000e+02
  %i.m = fsub float %i.i, %i.l
  %i.n = fmul float %i.b, %i.k
  %i.o = fmul float %i.b, %i.n                    ; 2 uses
  %i.p = fdiv float %i.o, 4.032000e+04
  %i.q = fadd float %i.m, %i.p
  %i.r = fmul float %i.b, %i.o
  %i.s = fmul float %i.b, %i.r
  %i.t = fdiv float %i.s, 3.628800e+06
  %i.u = fsub float %i.q, %i.t
  %i.v = fmul float %i.u, 2.000000e+00
  %i.w = fdiv float 1.000000e+00, %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !16
  %i.y = fadd float %.051, %.051
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !17

bb.c:                                             ; preds = %bb.b
  %i.z = sdiv i32 %0, 2                           ; 2 uses
  %i.aa = sdiv i32 %0, 4                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ab, align 4, !tbaa !16
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr [8 x i8], ptr %1, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ae, align 4, !tbaa !16
  %i.af = sext i32 %i.z to i64                    ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.ah, align 4, !tbaa !16
  %scevgep = getelementptr i8, ptr %1, i64 8      ; 2 uses
  %scevgep57 = getelementptr i8, ptr %1, i64 12
  %i.ai = add nsw i64 %i.af, 1
  %scevgep59 = getelementptr i8, ptr %1, i64 8    ; 2 uses
  %scevgep61 = getelementptr i8, ptr %1, i64 12
  %scevgep63 = getelementptr i8, ptr %1, i64 12
  %scevgep65 = getelementptr i8, ptr %1, i64 12   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %1, i64 16
  %scevgep69 = getelementptr i8, ptr %1, i64 12   ; 2 uses
  %scevgep71 = getelementptr i8, ptr %1, i64 16
  %scevgep73 = getelementptr i8, ptr %1, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.c
  %.047 = phi i32 [ 1, %bb.c ], [ %..i, %.loopexit ] ; 2 uses
  %.045 = phi i32 [ %i.aa, %bb.c ], [ %i.aj, %.loopexit ] ; 5 uses
  %i.aj = sdiv i32 %.045, 2                       ; 2 uses
  %i.ak = sext i32 %.047 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ak
  %i.am = load float, ptr %i.al, align 4, !tbaa !16 ; 2 uses
  %i.an = sext i32 %i.aj to i64                   ; 7 uses
  %i.ao = sext i32 %.045 to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.an ; 2 uses
  %i.ap = tail call i64 @llvm.smax.i64(i64 %i.an, i64 %i.af)
  %smax86 = add nsw i64 %i.ap, 1                  ; 2 uses
  %i.aq = sub i64 %smax86, %i.an                  ; 2 uses
  %min.iters.check = icmp ugt i64 %i.aq, 11
  %ident.check.not = icmp eq i32 %.045, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %bb.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 %i.ai)
  %i.ar = icmp sge i32 %i.z, %.045                ; 2 uses
  %umin = zext i1 %i.ar to i64
  %.neg = select i1 %i.ar, i64 2305843009213693950, i64 2305843009213693951
  %i.as = add nuw i64 %.neg, %smax
  %i.at = add i64 %i.as, %umin
  %i.au = shl i64 %i.at, 3                        ; 6 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.au ; 2 uses
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.au
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.au
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.au ; 2 uses
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.au
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.au
  %bound0 = icmp ult ptr %scevgep, %scevgep62
  %bound1 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  %bound075 = icmp ult ptr %scevgep, %scevgep64
  %bound176 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  %bound078 = icmp ult ptr %scevgep65, %scevgep72
  %bound179 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx, %found.conflict80
  %bound082 = icmp ult ptr %scevgep65, %scevgep74
  %bound183 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %smax86, 3                  ; 2 uses
  %n.vec = sub nsw i64 %i.aq, %n.mod.vf           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.am, i64 0
  %i.av = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %wide.vec = load <8 x float>, ptr %i.ax, align 4, !tbaa !16
  %i.ay = sub nuw nsw i64 %index, %i.an
  %i.az = getelementptr [8 x i8], ptr %1, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %wide.vec91 = load <8 x float>, ptr %i.ba, align 4, !tbaa !16
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %index
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = fadd <8 x float> %wide.vec, %wide.vec91
  %interleaved.vec = fmul <8 x float> %i.av, %i.bd
  store <8 x float> %interleaved.vec, ptr %i.bc, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.d, %middle.block
  %indvars.iv53.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %bb.d ], [ %n.vec, %middle.block ]
  %i.bf = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %scalar.ph ], [ %indvars.iv53.ph, %scalar.ph.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv53
  %i.bh = getelementptr i8, ptr %gep, i64 8
  %i.bi = sub nsw i64 %indvars.iv53, %i.an
  %i.bj = getelementptr [8 x i8], ptr %1, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = getelementptr [8 x i8], ptr %1, i64 %indvars.iv53
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load <2 x float>, ptr %i.bh, align 4, !tbaa !16
  %i.bo = load <2 x float>, ptr %i.bk, align 4, !tbaa !16
  %i.bp = fadd <2 x float> %i.bn, %i.bo
  %i.bq = fmul <2 x float> %i.bg, %i.bp
  store <2 x float> %i.bq, ptr %i.bm, align 4, !tbaa !16
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, %i.ao ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next54, %i.af
  br i1 %.not, label %.loopexit, label %scalar.ph, !llvm.loop !21

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.br = tail call i32 @llvm.smin.i32(i32 %.047, i32 24)
  %..i = add nsw i32 %i.br, 1
  %i.bs = icmp sgt i32 %.045, 3
  br i1 %i.bs, label %bb.d, label %bb.e, !llvm.loop !22

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @Fft(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = sdiv i32 %0, 2                           ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 1) ; 2 uses
  %i.e = add nuw i32 %smax, 1
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.d ; 2 uses
  %wide.trip.count = zext i32 %i.e to i64
  %i.f = sub i64 %i.b, %i.a
  %5 = zext nneg i32 %smax to i64                 ; 4 uses
  %scevgep119 = getelementptr i8, ptr %2, i64 4
  %i.g = shl nsw i64 %i.d, 3                      ; 2 uses
  %scevgep128 = getelementptr i8, ptr %1, i64 %i.g
  %scevgep130 = getelementptr i8, ptr %1, i64 4
  %scevgep133 = getelementptr i8, ptr %1, i64 4
  %scevgep135 = getelementptr i8, ptr %3, i64 8
  %scevgep137 = getelementptr i8, ptr %3, i64 12
  %scevgep139 = getelementptr i8, ptr %2, i64 4
  %scevgep141 = getelementptr i8, ptr %2, i64 8
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %scevgep146 = getelementptr i8, ptr %i.h, i64 4
  %scevgep148 = getelementptr i8, ptr %1, i64 8
  %scevgep150 = getelementptr i8, ptr %1, i64 4
  %scevgep152 = getelementptr i8, ptr %1, i64 8
  %scevgep154 = getelementptr i8, ptr %3, i64 16
  %i.i = add nuw nsw i64 %5, 1
  %min.iters.check = icmp slt i32 %0, 4
  %diff.check = icmp ult i64 %i.f, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %5, 2147483644                 ; 3 uses
  %i.j = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %5
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.084 = phi i32 [ 1, %bb.a ], [ %i.dd, %.loopexit ] ; 3 uses
  %i.k = sext i32 %.084 to i64                    ; 4 uses
  %i.l = shl nsw i64 %i.k, 3                      ; 3 uses
  %i.m = shl nsw i64 %i.k, 3
  %i.n = getelementptr i8, ptr %2, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %2, i64 %i.l
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = getelementptr i8, ptr %2, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvar122 = phi i64 [ %indvar.next123, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %indvar = phi i32 [ %indvar.next, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.d ], [ %i.k, %bb.b ] ; 6 uses
  %.085 = phi i64 [ %indvars.iv99, %bb.d ], [ 0, %bb.b ]
  %.083 = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %bb.b ]
  %sext = shl i64 %.085, 32
  %i.s = ashr exact i64 %sext, 32                 ; 2 uses
  %i.t = getelementptr [8 x i8], ptr %3, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8        ; 4 uses
  %i.v = getelementptr i8, ptr %i.t, i64 12       ; 2 uses
  %sext112 = shl i64 %.083, 32                    ; 2 uses
  %i.w = ashr exact i64 %sext112, 32              ; 7 uses
  %invariant.gep113 = getelementptr [8 x i8], ptr %2, i64 %i.s ; 2 uses
  %invariant.gep115 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv99 ; 2 uses
  %smax207 = tail call i64 @llvm.smax.i64(i64 %indvars.iv99, i64 %i.w)
  %i.x = add i64 %smax207, 1
  %i.y = sub i64 %i.x, %i.w                       ; 3 uses
  %min.iters.check209 = icmp ult i64 %i.y, 9
  br i1 %min.iters.check209, label %scalar.ph208.preheader, label %vector.memcheck118

vector.memcheck118:                               ; preds = %bb.c
  %i.z = mul i32 %.084, %indvar
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl nsw i64 %i.aa, 3                    ; 4 uses
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.ab ; 2 uses
  %i.ac = mul i64 %i.m, %indvar122                ; 3 uses
  %scevgep144 = getelementptr i8, ptr %i.o, i64 %i.ac
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.ab ; 4 uses
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.ab ; 2 uses
  %scevgep126 = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %scevgep124 = getelementptr i8, ptr %i.r, i64 %i.ac
  %i.ad = ashr exact i64 %sext112, 29             ; 7 uses
  %i.ae = add nsw i64 %i.ab, %i.ad                ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ae  ; 4 uses
  %smax120 = tail call i64 @llvm.smax.i64(i64 %indvars.iv99, i64 %i.w) ; 3 uses
  %i.af = add i64 %smax120, %i.aa
  %i.ag = shl i64 %i.af, 3                        ; 2 uses
  %scevgep121 = getelementptr i8, ptr %scevgep119, i64 %i.ag ; 4 uses
  %scevgep125 = getelementptr i8, ptr %scevgep124, i64 %i.ad ; 4 uses
  %i.ah = shl i64 %smax120, 3                     ; 4 uses
  %scevgep127 = getelementptr i8, ptr %scevgep126, i64 %i.ah ; 4 uses
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.ad ; 2 uses
  %i.ai = add i64 %smax120, %i.d
  %i.aj = shl i64 %i.ai, 3                        ; 2 uses
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.aj ; 2 uses
  %scevgep132 = getelementptr i8, ptr %1, i64 %i.ad ; 2 uses
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.ah ; 2 uses
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.ae ; 4 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.ag ; 4 uses
  %scevgep143 = getelementptr i8, ptr %scevgep126, i64 %i.ad ; 4 uses
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.ah ; 4 uses
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.ad ; 2 uses
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.aj ; 2 uses
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.ad ; 2 uses
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.ah ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep127
  %bound1 = icmp ult ptr %scevgep125, %scevgep121
  %found.conflict = and i1 %bound0, %bound1
  %bound0156 = icmp ult ptr %scevgep, %scevgep131
  %bound1157 = icmp ult ptr %scevgep129, %scevgep121
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx = or i1 %found.conflict, %found.conflict158
  %bound0159 = icmp ult ptr %scevgep, %scevgep134
  %bound1160 = icmp ult ptr %scevgep132, %scevgep121
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx, %found.conflict161
  %bound0163 = icmp ult ptr %scevgep, %scevgep138
  %bound1164 = icmp ult ptr %scevgep136, %scevgep121
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %conflict.rdx162, %found.conflict165
  %bound0167 = icmp ult ptr %scevgep125, %scevgep131
  %bound1168 = icmp ult ptr %scevgep129, %scevgep127
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  %bound0171 = icmp ult ptr %scevgep125, %scevgep134
  %bound1172 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep125, %scevgep138
  %bound1176 = icmp ult ptr %scevgep136, %scevgep127
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  %bound0179 = icmp ult ptr %scevgep140, %scevgep145
  %bound1180 = icmp ult ptr %scevgep143, %scevgep142
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  %bound0183 = icmp ult ptr %scevgep140, %scevgep149
  %bound1184 = icmp ult ptr %scevgep147, %scevgep142
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep140, %scevgep153
  %bound1188 = icmp ult ptr %scevgep151, %scevgep142
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep140, %scevgep155
  %bound1192 = icmp ult ptr %scevgep138, %scevgep142
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep143, %scevgep149
  %bound1196 = icmp ult ptr %scevgep147, %scevgep145
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep143, %scevgep153
  %bound1200 = icmp ult ptr %scevgep151, %scevgep145
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep143, %scevgep155
  %bound1204 = icmp ult ptr %scevgep138, %scevgep145
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  br i1 %conflict.rdx206, label %scalar.ph208.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck118
  %n.mod.vf211 = and i64 %i.y, 3                  ; 2 uses
  %i.ak = icmp eq i64 %n.mod.vf211, 0
  %i.al = select i1 %i.ak, i64 4, i64 %n.mod.vf211
  %n.vec212 = sub i64 %i.y, %i.al                 ; 2 uses
  %i.am = add i64 %i.w, %n.vec212
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph210
  %index214 = phi i64 [ 0, %vector.ph210 ], [ %index.next234, %vector.body213 ] ; 2 uses
  %i.an = add i64 %i.w, %index214                 ; 4 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %1, i64 %i.an ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ao, align 4, !tbaa !10, !alias.scope !23 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.an ; 2 uses
  %wide.vec215 = load <8 x float>, ptr %i.ap, align 4, !tbaa !10, !alias.scope !26 ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %invariant.gep113, i64 %i.an
  %interleaved.vec = fadd <8 x float> %wide.vec, %wide.vec215
  store <8 x float> %interleaved.vec, ptr %i.aq, align 4, !tbaa !16
  %i.ar = load float, ptr %i.u, align 4, !tbaa !10, !alias.scope !28
  %broadcast.splatinsert229 = insertelement <4 x float> poison, float %i.ar, i64 0
  %broadcast.splat230 = shufflevector <4 x float> %broadcast.splatinsert229, <4 x float> poison, <4 x i32> zeroinitializer
  %i.as = fsub <8 x float> %wide.vec, %wide.vec215
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.au = load float, ptr %i.v, align 4, !tbaa !13, !alias.scope !30
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %wide.vec223 = load <8 x float>, ptr %i.ao, align 4, !tbaa !16 ; 2 uses
  %wide.vec226 = load <8 x float>, ptr %i.ap, align 4, !tbaa !16 ; 2 uses
  %i.av = fsub <8 x float> %wide.vec223, %wide.vec226
  %i.aw = shufflevector <8 x float> %i.av, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ax = fneg <4 x float> %i.aw
  %i.ay = fmul <4 x float> %broadcast.splat, %i.ax
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat230, <4 x float> %i.at, <4 x float> %i.ay)
  %i.ba = getelementptr [8 x i8], ptr %invariant.gep115, i64 %i.an
  %i.bb = load float, ptr %i.u, align 4, !tbaa !10, !alias.scope !28
  %broadcast.splatinsert231 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat232 = shufflevector <4 x float> %broadcast.splatinsert231, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fsub <8 x float> %wide.vec223, %wide.vec226
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.be = fmul <4 x float> %broadcast.splat, %i.bd
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat232, <4 x float> %i.aw, <4 x float> %i.be)
  %interleaved.vec233 = shufflevector <4 x float> %i.az, <4 x float> %i.bf, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec233, ptr %i.ba, align 4, !tbaa !16
  %index.next234 = add nuw i64 %index214, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next234, %n.vec212
  br i1 %i.bg, label %scalar.ph208.preheader, label %vector.body213, !llvm.loop !32

scalar.ph208.preheader:                           ; preds = %vector.body213, %vector.memcheck118, %bb.c
  %indvars.iv.ph = phi i64 [ %i.w, %vector.memcheck118 ], [ %i.w, %bb.c ], [ %i.am, %vector.body213 ]
  br label %scalar.ph208

scalar.ph208:                                     ; preds = %scalar.ph208.preheader, %scalar.ph208
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph208 ], [ %indvars.iv.ph, %scalar.ph208.preheader ] ; 6 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.bk = load <2 x float>, ptr %i.bh, align 4, !tbaa !16
  %i.bl = load <2 x float>, ptr %gep, align 4, !tbaa !16
  %i.bm = fadd <2 x float> %i.bk, %i.bl
  store <2 x float> %i.bm, ptr %gep114, align 4, !tbaa !16
  %i.bn = load float, ptr %i.u, align 4, !tbaa !10
  %i.bo = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bp = load float, ptr %gep, align 4, !tbaa !10
  %i.bq = fsub float %i.bo, %i.bp
  %i.br = load float, ptr %i.v, align 4, !tbaa !13 ; 2 uses
  %i.bs = load float, ptr %i.bi, align 4, !tbaa !13
  %i.bt = load float, ptr %i.bj, align 4, !tbaa !13
  %i.bu = fsub float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fneg float %i.bu
  %i.bw = fmul float %i.br, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bq, float %i.bw)
end_hunk_0
