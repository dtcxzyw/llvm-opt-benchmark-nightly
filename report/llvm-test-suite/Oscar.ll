Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Oscar?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Exptab:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.af = sdiv i32 %0, 2                          ; 2 uses
  %i.ag = sdiv i32 %0, 4                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ah, align 4, !tbaa !18
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr [8 x i8], ptr %1, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ak, align 4, !tbaa !18
  %i.al = sext i32 %i.af to i64                   ; 4 uses
  %i.am = getelementptr [8 x i8], ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 8
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.an, align 4, !tbaa !18
  %scevgep = getelementptr i8, ptr %1, i64 8      ; 2 uses
  %scevgep57 = getelementptr i8, ptr %1, i64 12
  %i.ao = add nsw i64 %i.al, 1
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
  %.046 = phi i32 [ 1, %bb.c ], [ %..i, %.loopexit ] ; 2 uses
  %.0 = phi i32 [ %i.ag, %bb.c ], [ %i.ap, %.loopexit ] ; 5 uses
  %i.ap = sdiv i32 %.0, 2                         ; 2 uses
  %i.aq = sext i32 %.046 to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !18 ; 2 uses
  %i.at = sext i32 %i.ap to i64                   ; 7 uses
  %i.au = sext i32 %.0 to i64                     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.al)
  %i.aw = add nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = sub i64 %i.aw, %i.at                    ; 2 uses
  %min.iters.check = icmp ugt i64 %i.ax, 23
  %ident.check.not = icmp eq i32 %.0, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %bb.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.au, i64 %i.ao)
  %i.ay = icmp sge i32 %i.af, %.0                 ; 2 uses
  %umin = zext i1 %i.ay to i64
  %.neg = select i1 %i.ay, i64 2305843009213693950, i64 2305843009213693951
  %i.az = add nuw i64 %.neg, %smax
  %i.ba = add i64 %i.az, %umin
  %i.bb = shl i64 %i.ba, 3                        ; 6 uses
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.bb ; 2 uses
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.bb
  %scevgep64 = getelementptr i8, ptr %scevgep63, i64 %i.bb
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.bb ; 2 uses
  %scevgep72 = getelementptr i8, ptr %scevgep71, i64 %i.bb
  %scevgep74 = getelementptr i8, ptr %scevgep73, i64 %i.bb
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
  %i.bc = and i64 %i.aw, 3                        ; 2 uses
  %n.vec = sub nsw i64 %i.ax, %i.bc               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.as, i64 0
  %i.bd = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.be = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %wide.vec = load <8 x float>, ptr %i.bf, align 4, !tbaa !18
  %i.bg = sub nuw nsw i64 %index, %i.at
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %wide.vec87 = load <8 x float>, ptr %i.bi, align 4, !tbaa !18
  %i.bj = getelementptr [8 x i8], ptr %1, i64 %index
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = fadd <8 x float> %wide.vec, %wide.vec87
  %interleaved.vec = fmul <8 x float> %i.bd, %i.bl
  store <8 x float> %interleaved.vec, ptr %i.bk, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, 0
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.d, %middle.block
  %indvars.iv53.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %bb.d ], [ %n.vec, %middle.block ]
  %i.bn = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %scalar.ph ], [ %indvars.iv53.ph, %scalar.ph.preheader ] ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv53
  %i.bp = getelementptr i8, ptr %gep, i64 8
  %i.bq = sub nsw i64 %indvars.iv53, %i.at
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = getelementptr [8 x i8], ptr %1, i64 %indvars.iv53
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load <2 x float>, ptr %i.bp, align 4, !tbaa !18
  %i.bw = load <2 x float>, ptr %i.bs, align 4, !tbaa !18
  %i.bx = fadd <2 x float> %i.bv, %i.bw
  %i.by = fmul <2 x float> %i.bo, %i.bx
  store <2 x float> %i.by, ptr %i.bu, align 4, !tbaa !18
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, %i.au ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next54, %i.al
  br i1 %.not, label %.loopexit, label %scalar.ph, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bz = tail call i32 @llvm.smin.i32(i32 %.046, i32 24)
  %..i = add nsw i32 %i.bz, 1
  %i.ca = icmp sgt i32 %.0, 3
  br i1 %i.ca, label %bb.d, label %bb.e, !llvm.loop !24

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
  %i.f = shl nsw i64 %i.d, 3                      ; 3 uses
  %scevgep119 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep129 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep131 = getelementptr i8, ptr %1, i64 4
  %scevgep134 = getelementptr i8, ptr %1, i64 4
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep142 = getelementptr i8, ptr %i.g, i64 4
  %scevgep144 = getelementptr i8, ptr %1, i64 8
  %scevgep146 = getelementptr i8, ptr %1, i64 4
  %scevgep148 = getelementptr i8, ptr %1, i64 8
  %i.h = zext nneg i32 %smax to i64               ; 4 uses
  %min.iters.check = icmp slt i32 %0, 4
  %i.i = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %i.j = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.h
  %i.k = add nuw nsw i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.083 = phi i32 [ 1, %bb.a ], [ %i.dj, %.loopexit ] ; 2 uses
  %i.l = sext i32 %.083 to i64                    ; 4 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = getelementptr i8, ptr %2, i64 %i.n
  %i.r = getelementptr i8, ptr %i.q, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.d ], [ %i.l, %bb.b ] ; 7 uses
  %.086 = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %bb.b ] ; 12 uses
  %.084 = phi i64 [ %indvars.iv99, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %i.s = mul i64 %i.m, %indvar                    ; 5 uses
  %i.t = getelementptr i8, ptr %2, i64 %i.s
  %scevgep123 = getelementptr i8, ptr %i.t, i64 4 ; 2 uses
  %scevgep127 = getelementptr i8, ptr %i.p, i64 %i.s ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  %scevgep137 = getelementptr i8, ptr %i.u, i64 8
  %scevgep140 = getelementptr i8, ptr %i.r, i64 %i.s
  %i.v = getelementptr i8, ptr %3, i64 %i.s
  %scevgep150 = getelementptr i8, ptr %i.v, i64 16 ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %3, i64 %.084 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8        ; 5 uses
  %i.y = getelementptr i8, ptr %i.w, i64 12       ; 6 uses
  %invariant.gep112 = getelementptr [8 x i8], ptr %2, i64 %.084 ; 4 uses
  %invariant.gep114 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv99 ; 4 uses
  %i.z = tail call i64 @llvm.smax.i64(i64 %.086, i64 %indvars.iv99)
  %i.aa = add i64 %i.z, 1
  %i.ab = sub i64 %i.aa, %.086                    ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.ab, 13
  br i1 %min.iters.check203, label %scalar.ph202.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.c
  %smax117 = tail call i64 @llvm.smax.i64(i64 %.086, i64 %indvars.iv99)
  %i.ac = sub i64 %smax117, %.086                 ; 2 uses
  %i.ad = shl i64 %.086, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %invariant.gep112, i64 %i.ad ; 2 uses
  %mul.result = shl i64 %i.ac, 3                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.ac, 2305843009213693951
  %i.ae = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.af = icmp ult ptr %i.ae, %scevgep
  %scevgep118 = getelementptr i8, ptr %invariant.gep114, i64 %i.ad ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep118, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep118
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.ad ; 2 uses
  %i.ai = getelementptr i8, ptr %scevgep120, i64 %mul.result
  %i.aj = icmp ult ptr %i.ai, %scevgep120
  %i.ak = or i1 %i.aj, %mul.overflow
  %i.al = or i1 %i.ah, %i.af
  %i.am = or i1 %i.al, %i.ak
  br i1 %i.am, label %scalar.ph202.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %vector.scevcheck
  %i.an = shl i64 %.086, 3                        ; 8 uses
  %scevgep122 = getelementptr i8, ptr %invariant.gep112, i64 %i.an ; 4 uses
  %smax124 = tail call i64 @llvm.smax.i64(i64 %.086, i64 %indvars.iv99) ; 2 uses
  %i.ao = shl i64 %smax124, 3                     ; 6 uses
  %scevgep125 = getelementptr i8, ptr %scevgep123, i64 %i.ao ; 4 uses
  %scevgep126 = getelementptr i8, ptr %invariant.gep114, i64 %i.an ; 4 uses
  %scevgep128 = getelementptr i8, ptr %scevgep127, i64 %i.ao ; 4 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.an ; 2 uses
  %i.ap = add i64 %smax124, %i.d
  %i.aq = shl i64 %i.ap, 3                        ; 2 uses
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.aq ; 2 uses
  %scevgep133 = getelementptr i8, ptr %1, i64 %i.an ; 2 uses
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.ao ; 2 uses
  %scevgep136 = getelementptr i8, ptr %scevgep123, i64 %i.an ; 4 uses
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.ao ; 4 uses
  %scevgep139 = getelementptr i8, ptr %scevgep127, i64 %i.an ; 4 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.ao ; 4 uses
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.an ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.aq ; 2 uses
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.an ; 2 uses
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.ao ; 2 uses
  %bound0 = icmp ult ptr %scevgep122, %scevgep128
  %bound1 = icmp ult ptr %scevgep126, %scevgep125
  %found.conflict = and i1 %bound0, %bound1
  %bound0151 = icmp ult ptr %scevgep122, %scevgep132
  %bound1152 = icmp ult ptr %scevgep130, %scevgep125
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx = or i1 %found.conflict, %found.conflict153
  %bound0154 = icmp ult ptr %scevgep122, %scevgep135
  %bound1155 = icmp ult ptr %scevgep133, %scevgep125
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx, %found.conflict156
  %bound0158 = icmp ult ptr %scevgep122, %i.y
  %bound1159 = icmp ult ptr %i.x, %scevgep125
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  %bound0162 = icmp ult ptr %scevgep126, %scevgep132
  %bound1163 = icmp ult ptr %scevgep130, %scevgep128
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx161, %found.conflict164
  %bound0166 = icmp ult ptr %scevgep126, %scevgep135
  %bound1167 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %scevgep126, %i.y
  %bound1171 = icmp ult ptr %i.x, %scevgep128
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %scevgep136, %scevgep141
  %bound1175 = icmp ult ptr %scevgep139, %scevgep138
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %scevgep136, %scevgep145
  %bound1179 = icmp ult ptr %scevgep143, %scevgep138
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %scevgep136, %scevgep149
  %bound1183 = icmp ult ptr %scevgep147, %scevgep138
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %scevgep136, %scevgep150
  %bound1187 = icmp ult ptr %i.y, %scevgep138
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %scevgep139, %scevgep145
  %bound1191 = icmp ult ptr %scevgep143, %scevgep141
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %scevgep139, %scevgep149
  %bound1195 = icmp ult ptr %scevgep147, %scevgep141
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %scevgep139, %scevgep150
  %bound1199 = icmp ult ptr %i.y, %scevgep141
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  br i1 %conflict.rdx201, label %scalar.ph202.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %vector.memcheck121
  %i.ar = and i64 %i.ab, 3                        ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = select i1 %i.as, i64 4, i64 %i.ar
  %n.vec205 = sub i64 %i.ab, %i.at                ; 2 uses
  %i.au = add i64 %.086, %n.vec205
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next227, %vector.body206 ] ; 2 uses
  %i.av = add i64 %.086, %index207                ; 4 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av ; 3 uses
  %wide.vec = load <8 x float>, ptr %i.aw, align 4, !tbaa !15, !alias.scope !37
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ax = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.av ; 3 uses
  %wide.vec208 = load <8 x float>, ptr %i.ax, align 4, !tbaa !15, !alias.scope !38
  %strided.vec209 = shufflevector <8 x float> %wide.vec208, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ay = fadd <4 x float> %strided.vec, %strided.vec209
  %i.az = getelementptr [8 x i8], ptr %invariant.gep112, i64 %i.av
  %wide.vec210 = load <8 x float>, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %strided.vec211 = shufflevector <8 x float> %wide.vec210, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec212 = shufflevector <8 x float> %wide.vec210, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec213 = load <8 x float>, ptr %i.ax, align 4, !tbaa !18 ; 2 uses
  %strided.vec214 = shufflevector <8 x float> %wide.vec213, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec215 = shufflevector <8 x float> %wide.vec213, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ba = fadd <4 x float> %strided.vec212, %strided.vec215
  %interleaved.vec = shufflevector <4 x float> %i.ay, <4 x float> %i.ba, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.az, align 4, !tbaa !18
  %i.bb = load float, ptr %i.x, align 4, !tbaa !15, !alias.scope !39
  %broadcast.splatinsert222 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat223 = shufflevector <4 x float> %broadcast.splatinsert222, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bc = fsub <4 x float> %strided.vec211, %strided.vec214
  %i.bd = load float, ptr %i.y, align 4, !tbaa !16, !alias.scope !40
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %wide.vec216 = load <8 x float>, ptr %i.aw, align 4, !tbaa !18 ; 2 uses
  %strided.vec217 = shufflevector <8 x float> %wide.vec216, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec218 = shufflevector <8 x float> %wide.vec216, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec219 = load <8 x float>, ptr %i.ax, align 4, !tbaa !18 ; 2 uses
  %strided.vec220 = shufflevector <8 x float> %wide.vec219, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec221 = shufflevector <8 x float> %wide.vec219, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.be = fsub <4 x float> %strided.vec218, %strided.vec221 ; 2 uses
  %i.bf = fneg <4 x float> %i.be
  %i.bg = fmul <4 x float> %broadcast.splat, %i.bf
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat223, <4 x float> %i.bc, <4 x float> %i.bg)
  %i.bi = getelementptr [8 x i8], ptr %invariant.gep114, i64 %i.av
  %i.bj = fsub <4 x float> %strided.vec217, %strided.vec220
  %i.bk = fmul <4 x float> %broadcast.splat, %i.bj
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat223, <4 x float> %i.be, <4 x float> %i.bk)
  %interleaved.vec226 = shufflevector <4 x float> %i.bh, <4 x float> %i.bl, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec226, ptr %i.bi, align 4, !tbaa !18
  %index.next227 = add nuw i64 %index207, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next227, %n.vec205
  br i1 %i.bm, label %scalar.ph202.preheader, label %vector.body206, !llvm.loop !30

scalar.ph202.preheader:                           ; preds = %vector.body206, %vector.memcheck121, %vector.scevcheck, %bb.c
  %indvars.iv.ph = phi i64 [ %.086, %vector.memcheck121 ], [ %.086, %vector.scevcheck ], [ %.086, %bb.c ], [ %i.au, %vector.body206 ]
  br label %scalar.ph202

scalar.ph202:                                     ; preds = %scalar.ph202.preheader, %scalar.ph202
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph202 ], [ %indvars.iv.ph, %scalar.ph202.preheader ] ; 6 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %gep113 = getelementptr [8 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.bq = load <2 x float>, ptr %i.bn, align 4, !tbaa !18
  %i.br = load <2 x float>, ptr %gep, align 4, !tbaa !18
  %i.bs = fadd <2 x float> %i.bq, %i.br
  store <2 x float> %i.bs, ptr %gep113, align 4, !tbaa !18
  %i.bt = load float, ptr %i.x, align 4, !tbaa !15
  %i.bu = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bv = load float, ptr %gep, align 4, !tbaa !15
  %i.bw = fsub float %i.bu, %i.bv
  %i.bx = load float, ptr %i.y, align 4, !tbaa !16 ; 2 uses
  %i.by = load float, ptr %i.bo, align 4, !tbaa !16
  %i.bz = load float, ptr %i.bp, align 4, !tbaa !16
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = fneg float %i.ca
  %i.cc = fmul float %i.bx, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bw, float %i.cc)
  %gep115 = getelementptr [8 x i8], ptr %invariant.gep114, i64 %indvars.iv ; 2 uses
  store float %i.cd, ptr %gep115, align 4, !tbaa !15
  %i.ce = load float, ptr %i.x, align 4, !tbaa !15
  %i.cf = load float, ptr %i.bn, align 4, !tbaa !15
  %i.cg = load float, ptr %gep, align 4, !tbaa !15
  %i.ch = fsub float %i.cf, %i.cg
  %i.ci = fmul float %i.bx, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ca, float %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %gep115, i64 4
  store float %i.cj, ptr %i.ck, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not.not = icmp slt i64 %indvars.iv, %indvars.iv99
  br i1 %.not.not, label %scalar.ph202, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %scalar.ph202
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, %i.l ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next100, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.preheader95.preheader, label %bb.c, !llvm.loop !1

.preheader95.preheader:                           ; preds = %bb.d
  br i1 %or.cond, label %.preheader95.preheader248, label %vector.body

vector.body:                                      ; preds = %.preheader95.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader95.preheader ] ; 2 uses
  %i.cl = or disjoint i64 %index, 1               ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <2 x i64>, ptr %i.cn, align 4, !tbaa !18
  %wide.load116 = load <2 x i64>, ptr %i.co, align 4, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x i64> %wide.load, ptr %i.cm, align 4, !tbaa !18
  store <2 x i64> %wide.load116, ptr %i.cp, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.preheader95.preheader248

.preheader95.preheader248:                        ; preds = %.preheader95.preheader, %middle.block
  %indvars.iv103.ph = phi i64 [ 1, %.preheader95.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %i.cr = sub nsw i64 %i.k, %indvars.iv103.ph
  %i.cs = sub nsw i64 %i.h, %indvars.iv103.ph
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader95.prol.loopexit, label %.preheader95.prol

.preheader95.prol:                                ; preds = %.preheader95.preheader248, %.preheader95.prol
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %.preheader95.prol ], [ %indvars.iv103.ph, %.preheader95.preheader248 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader95.prol ], [ 0, %.preheader95.preheader248 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv103.prol
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103.prol
  %i.cv = load i64, ptr %i.cu, align 4, !tbaa !18
  store i64 %i.cv, ptr %i.ct, align 4, !tbaa !18
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader95.prol.loopexit, label %.preheader95.prol, !llvm.loop !33

.preheader95.prol.loopexit:                       ; preds = %.preheader95.prol, %.preheader95.preheader248
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %.preheader95.preheader248 ], [ %indvars.iv.next104.prol, %.preheader95.prol ]
  %i.cw = icmp ult i64 %i.cs, 3
  br i1 %i.cw, label %.loopexit, label %.preheader95

.preheader95:                                     ; preds = %.preheader95.prol.loopexit, %.preheader95
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.preheader95 ], [ %indvars.iv103.unr, %.preheader95.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv103
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.cz = load i64, ptr %i.cy, align 4, !tbaa !18
  store i64 %i.cz, ptr %i.cx, align 4, !tbaa !18
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next104
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next104
  %i.dc = load i64, ptr %i.db, align 4, !tbaa !18
  store i64 %i.dc, ptr %i.da, align 4, !tbaa !18
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next104.1
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next104.1
  %i.df = load i64, ptr %i.de, align 4, !tbaa !18
  store i64 %i.df, ptr %i.dd, align 4, !tbaa !18
  %indvars.iv.next104.2 = add nuw nsw i64 %indvars.iv103, 3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next104.2
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next104.2
  %i.di = load i64, ptr %i.dh, align 4, !tbaa !18
  store i64 %i.di, ptr %i.dg, align 4, !tbaa !18
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next104.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader95, !llvm.loop !34

.loopexit:                                        ; preds = %.preheader95.prol.loopexit, %.preheader95, %middle.block
  %i.dj = shl nsw i32 %.083, 1                    ; 2 uses
  %.not93 = icmp sgt i32 %i.dj, %i.c
  br i1 %.not93, label %.preheader, label %bb.b, !llvm.loop !2

.preheader:                                       ; preds = %.loopexit
  %.not9496 = icmp slt i32 %0, 1
  br i1 %.not9496, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.dk = fneg float %4                           ; 2 uses
  %i.dl = add nuw i32 %0, 1
  %wide.trip.count109 = zext i32 %i.dl to i64
  %i.dm = zext nneg i32 %0 to i64                 ; 3 uses
  %min.iters.check231 = icmp eq i32 %0, 1
  br i1 %min.iters.check231, label %scalar.ph230.preheader, label %vector.ph232

vector.ph232:                                     ; preds = %.lr.ph
  %n.vec233 = and i64 %i.dm, 2147483646           ; 2 uses
  %i.dn = or i64 %i.dm, 1
  %broadcast.splatinsert234.a = insertelement <2 x float> poison, float %i.dk, i64 0
  %broadcast.splatinsert236 = insertelement <2 x float> poison, float %4, i64 0
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph232
  %index239 = phi i64 [ 0, %vector.ph232 ], [ %index.next244, %vector.body238 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index239
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %wide.vec240 = load <4 x float>, ptr %i.dp, align 4, !tbaa !18 ; 2 uses
  %strided.vec241 = shufflevector <4 x float> %wide.vec240, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec242 = shufflevector <4 x float> %wide.vec240, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.dq = shufflevector <2 x float> %broadcast.splatinsert236, <2 x float> %strided.vec242, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.dr = shufflevector <2 x float> %strided.vec241, <2 x float> %broadcast.splatinsert234.a, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %interleaved.vec243 = fmul <4 x float> %i.dq, %i.dr
  store <4 x float> %interleaved.vec243, ptr %i.dp, align 4, !tbaa !18
  %index.next244 = add nuw i64 %index239, 2       ; 2 uses
  %i.ds = icmp eq i64 %index.next244, %n.vec233
  br i1 %i.ds, label %middle.block245, label %vector.body238, !llvm.loop !35

middle.block245:                                  ; preds = %vector.body238
  %cmp.n246 = icmp eq i64 %n.vec233, %i.dm
  br i1 %cmp.n246, label %._crit_edge, label %scalar.ph230.preheader

scalar.ph230.preheader:                           ; preds = %.lr.ph, %middle.block245
  %indvars.iv106.ph = phi i64 [ 1, %.lr.ph ], [ %i.dn, %middle.block245 ]
  %i.dt = insertelement <2 x float> poison, float %4, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dk, i64 1
  br label %scalar.ph230

scalar.ph230:                                     ; preds = %scalar.ph230.preheader, %scalar.ph230
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %scalar.ph230 ], [ %indvars.iv106.ph, %scalar.ph230.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv106 ; 2 uses
  %i.dw = load <2 x float>, ptr %i.dv, align 4, !tbaa !18
  %i.dx = fmul <2 x float> %i.dw, %i.du
  store <2 x float> %i.dx, ptr %i.dv, align 4, !tbaa !18
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %scalar.ph230, !llvm.loop !36

._crit_edge:                                      ; preds = %scalar.ph230, %middle.block245, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @Oscar() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [26 x float], align 16            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
end_hunk_0
