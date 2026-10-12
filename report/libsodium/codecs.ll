Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parse_ipv4:bb.a
.critedge51:                                      ; preds = %.lr.ph152, %.lr.ph, %.preheader.preheader, %bb.c, %bb.f, %bb.h, %bb.k, %bb.m, %.lr.ph.3, %bb.q, %bb.s, %.lr.ph152.3, %bb.w, %bb.y, %.lr.ph157.3, %.critedge, %bb.j, %.critedge.1, %bb.o, %.critedge.2, %bb.u, %.critedge.3, %.critedge.thread, %.thread, %.critedge.1.thread, %.thread94, %.critedge.2.thread, %.thread96, %bb.a, %bb.aa
  %.238 = phi i32 [ %i.dy, %bb.aa ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %.critedge ], [ 0, %bb.q ], [ 0, %.lr.ph ], [ 0, %.thread96 ], [ 0, %.critedge.2.thread ], [ 0, %.thread94 ], [ 0, %.critedge.1.thread ], [ 0, %.thread ], [ 0, %.critedge.thread ], [ 0, %.critedge.3 ], [ 0, %bb.u ], [ 0, %.critedge.2 ], [ 0, %bb.o ], [ 0, %.critedge.1 ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %.preheader.preheader ], [ 0, %.lr.ph157.3 ], [ 0, %bb.y ], [ 0, %.lr.ph152.3 ], [ 0, %bb.s ], [ 0, %.lr.ph.3 ], [ 0, %bb.m ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %.lr.ph152 ]
  ret i32 %.238
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sodium_bin2ip(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 20 uses
  %i.b = alloca [4 x i8], align 1                 ; 30 uses
  %i.c = alloca [46 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = icmp ult i64 %1, 3
  br i1 %i.d, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 1
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = zext i32 %i.g to i64
  %i.i = xor i64 %i.h, 4294901760
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.preheader.preheader, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %bb.b
  %i.n = load i8, ptr %2, align 1
  %i.o = getelementptr i8, ptr %2, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = or i8 %i.p, %i.n
  %.not130 = icmp ne i8 %i.q, 0                   ; 4 uses
  %.2 = sext i1 %.not130 to i32
  %not..not130 = xor i1 %.not130, true
  %.1 = zext i1 %not..not130 to i32
  %i.r = getelementptr i8, ptr %2, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %2, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = or i8 %i.u, %i.s
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %.preheader102.2

.preheader.preheader:                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %2, i64 12
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.c ], [ 1, %.preheader.preheader ] ; 3 uses
  %.011.i = phi i32 [ %i.ag, %bb.c ], [ %i.z, %.preheader.preheader ] ; 3 uses
  %.0.i = phi i32 [ %i.ad, %bb.c ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.aa = urem i32 %.011.i, 10
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, 48
  %i.ad = add i32 %.0.i, 1
  %i.ae = sext i32 %.0.i to i64
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1
  %i.ag = udiv i32 %.011.i, 10
  %.not.i = icmp samesign ult i32 %.011.i, 10
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !33

.preheader.i:                                     ; preds = %bb.c
  %i.ah = icmp ult i32 %.0.i, 2147483647
  br i1 %i.ah, label %iter.check, label %.loopexit132

iter.check:                                       ; preds = %.preheader.i
  %i.ai = zext i32 %indvars.iv.i to i64           ; 6 uses
  %i.aj = add nuw nsw i64 %i.ai, 1
  %i.ak = icmp ne i32 %indvars.iv.i, 0
  %umin.neg = sext i1 %i.ak to i64
  %i.al = add nsw i64 %i.aj, %umin.neg            ; 7 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check147 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 5 uses
  %i.an = getelementptr i8, ptr %i.c, i64 %n.vec  ; 2 uses
  %i.ao = sub nsw i64 %i.ai, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %index ; 2 uses
  %i.ap = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %gep, i64 -15
  %i.ar = getelementptr i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.aq, align 1
  %wide.load148 = load <16 x i8>, ptr %i.ar, align 1
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse149 = shufflevector <16 x i8> %wide.load148, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 16
  store <16 x i8> %reverse149, ptr %i.as, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit132, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.al, -8                   ; 4 uses
  %i.au = getelementptr i8, ptr %i.c, i64 %n.vec151 ; 2 uses
  %i.av = sub nsw i64 %i.ai, %n.vec151
  %invariant.gep303 = getelementptr i8, ptr %i.b, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep153 = getelementptr i8, ptr %i.c, i64 %index152
  %i.aw = xor i64 %index152, -1
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %i.aw
  %i.ax = getelementptr i8, ptr %gep304, i64 -7
  %wide.load154 = load <8 x i8>, ptr %i.ax, align 1
  %reverse155 = shufflevector <8 x i8> %wide.load154, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse155, ptr %next.gep153, align 8
  %index.next156 = add nuw i64 %index152, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.al, %n.vec151
  br i1 %cmp.n157, label %.loopexit132, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.ph = phi ptr [ %i.c, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %indvars.iv16.i.ph = phi i64 [ %i.ai, %iter.check ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.5 = phi ptr [ %i.bb, %.lr.ph.i ], [ %.5.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %.lr.ph.i ], [ %indvars.iv16.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.az = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = getelementptr i8, ptr %.5, i64 1        ; 2 uses
  store i8 %i.ba, ptr %.5, align 1
  %i.bc = icmp samesign ugt i64 %indvars.iv16.i, 1
  br i1 %i.bc, label %.lr.ph.i, label %.loopexit132, !llvm.loop !36

.loopexit132:                                     ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.6 = phi ptr [ %i.c, %.preheader.i ], [ %i.au, %vec.epilog.middle.block ], [ %i.an, %middle.block ], [ %i.bb, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bd = getelementptr i8, ptr %.6, i64 1        ; 8 uses
  store i8 46, ptr %.6, align 1
  %i.be = getelementptr i8, ptr %2, i64 13
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.loopexit132
  %indvars.iv.i.1 = phi i32 [ %indvars.iv.next.i.1, %bb.d ], [ 1, %.loopexit132 ] ; 4 uses
  %.011.i.1 = phi i32 [ %i.bn, %bb.d ], [ %i.bg, %.loopexit132 ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.bk, %bb.d ], [ 0, %.loopexit132 ] ; 3 uses
  %i.bh = urem i32 %.011.i.1, 10
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = or disjoint i8 %i.bi, 48
  %i.bk = add i32 %.0.i.1, 1
  %i.bl = sext i32 %.0.i.1 to i64
  %i.bm = getelementptr i8, ptr %i.b, i64 %i.bl
  store i8 %i.bj, ptr %i.bm, align 1
  %i.bn = udiv i32 %.011.i.1, 10
  %.not.i.1 = icmp samesign ult i32 %.011.i.1, 10
  %indvars.iv.next.i.1 = add i32 %indvars.iv.i.1, 1
  br i1 %.not.i.1, label %.preheader.i.1, label %bb.d, !llvm.loop !33

.preheader.i.1:                                   ; preds = %bb.d
  %i.bo = icmp ult i32 %.0.i.1, 2147483647
  br i1 %i.bo, label %iter.check183, label %.loopexit131

iter.check183:                                    ; preds = %.preheader.i.1
  %i.bp = zext i32 %indvars.iv.i.1 to i64         ; 9 uses
  %i.bq = add nuw nsw i64 %i.bp, 1
  %i.br = icmp ne i32 %indvars.iv.i.1, 0
  %umin165.neg = sext i1 %i.br to i64
  %i.bs = add nsw i64 %i.bq, %umin165.neg         ; 7 uses
  %min.iters.check166 = icmp ult i64 %i.bs, 8
  br i1 %min.iters.check166, label %.lr.ph.i.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check183
  %scevgep = getelementptr i8, ptr %.6, i64 2
  %i.bt = icmp ne i32 %indvars.iv.i.1, 0          ; 2 uses
  %umin160.neg = sext i1 %i.bt to i64
  %i.bu = getelementptr i8, ptr %scevgep, i64 %umin160.neg
  %scevgep161 = getelementptr i8, ptr %i.bu, i64 %i.bp
  %not. = xor i1 %i.bt, true
  %umin160.sroa.sel.idx = sext i1 %not. to i64
  %umin160.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin160.sroa.sel.idx
  %scevgep164 = getelementptr i8, ptr %i.b, i64 %i.bp
  %bound0 = icmp ult ptr %i.bd, %scevgep164
  %bound1 = icmp ult ptr %umin160.sroa.sel, %scevgep161
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.preheader, label %vector.main.loop.iter.check167

vector.main.loop.iter.check167:                   ; preds = %vector.memcheck
  %min.iters.check168 = icmp ult i64 %i.bs, 32
  br i1 %min.iters.check168, label %vec.epilog.ph187, label %vector.ph169

vector.ph169:                                     ; preds = %vector.main.loop.iter.check167
  %i.bv = and i64 %i.bs, 24
  %n.vec170 = and i64 %i.bs, -32                  ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bd, i64 %n.vec170 ; 2 uses
  %i.bx = sub nsw i64 %i.bp, %n.vec170
  %invariant.gep305 = getelementptr i8, ptr %i.b, i64 %i.bp
  br label %vector.body171

vector.body171:                                   ; preds = %vector.ph169, %vector.body171
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next178, %vector.body171 ] ; 3 uses
  %next.gep173 = getelementptr i8, ptr %i.bd, i64 %index172 ; 2 uses
  %i.by = xor i64 %index172, -1
  %gep306 = getelementptr i8, ptr %invariant.gep305, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %gep306, i64 -15
  %i.ca = getelementptr i8, ptr %gep306, i64 -31
  %wide.load174 = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !57
  %wide.load175 = load <16 x i8>, ptr %i.ca, align 1, !alias.scope !57
  %reverse176 = shufflevector <16 x i8> %wide.load174, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse177 = shufflevector <16 x i8> %wide.load175, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cb = getelementptr i8, ptr %next.gep173, i64 16
  store <16 x i8> %reverse176, ptr %next.gep173, align 1, !alias.scope !58, !noalias !57
  store <16 x i8> %reverse177, ptr %i.cb, align 1, !alias.scope !58, !noalias !57
  %index.next178 = add nuw i64 %index172, 32      ; 2 uses
  %i.cc = icmp eq i64 %index.next178, %n.vec170
  br i1 %i.cc, label %middle.block179, label %vector.body171, !llvm.loop !40

middle.block179:                                  ; preds = %vector.body171
  %cmp.n180 = icmp eq i64 %i.bs, %n.vec170
  br i1 %cmp.n180, label %.loopexit131, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block179
  %min.epilog.iters.check186 = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check186, label %.lr.ph.i.1.preheader, label %vec.epilog.ph187, !prof !56

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check167, %vec.epilog.iter.check185
  %vec.epilog.resume.val181 = phi i64 [ %n.vec170, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check167 ]
  %n.vec188 = and i64 %i.bs, -8                   ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bd, i64 %n.vec188 ; 2 uses
  %i.ce = sub nsw i64 %i.bp, %n.vec188
  %invariant.gep307 = getelementptr i8, ptr %i.b, i64 %i.bp
  br label %vec.epilog.vector.body189

vec.epilog.vector.body189:                        ; preds = %vec.epilog.vector.body189, %vec.epilog.ph187
  %index190 = phi i64 [ %vec.epilog.resume.val181, %vec.epilog.ph187 ], [ %index.next194, %vec.epilog.vector.body189 ] ; 3 uses
  %next.gep191 = getelementptr i8, ptr %i.bd, i64 %index190
  %i.cf = xor i64 %index190, -1
  %gep308 = getelementptr i8, ptr %invariant.gep307, i64 %i.cf
  %i.cg = getelementptr i8, ptr %gep308, i64 -7
  %wide.load192 = load <8 x i8>, ptr %i.cg, align 1, !alias.scope !57
  %reverse193 = shufflevector <8 x i8> %wide.load192, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse193, ptr %next.gep191, align 1, !alias.scope !58, !noalias !57
  %index.next194 = add nuw i64 %index190, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next194, %n.vec188
  br i1 %i.ch, label %vec.epilog.middle.block195, label %vec.epilog.vector.body189, !llvm.loop !41

vec.epilog.middle.block195:                       ; preds = %vec.epilog.vector.body189
  %cmp.n196 = icmp eq i64 %i.bs, %n.vec188
  br i1 %cmp.n196, label %.loopexit131, label %.lr.ph.i.1.preheader

.lr.ph.i.1.preheader:                             ; preds = %iter.check183, %vector.memcheck, %vec.epilog.iter.check185, %vec.epilog.middle.block195
  %.5.1.ph = phi ptr [ %i.bd, %iter.check183 ], [ %i.bd, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check185 ], [ %i.cd, %vec.epilog.middle.block195 ]
  %indvars.iv16.i.1.ph = phi i64 [ %i.bp, %iter.check183 ], [ %i.bp, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check185 ], [ %i.ce, %vec.epilog.middle.block195 ]
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.preheader, %.lr.ph.i.1
  %.5.1 = phi ptr [ %i.ck, %.lr.ph.i.1 ], [ %.5.1.ph, %.lr.ph.i.1.preheader ] ; 2 uses
  %indvars.iv16.i.1 = phi i64 [ %indvars.iv.next17.i.1, %.lr.ph.i.1 ], [ %indvars.iv16.i.1.ph, %.lr.ph.i.1.preheader ] ; 2 uses
  %indvars.iv.next17.i.1 = add nsw i64 %indvars.iv16.i.1, -1 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i.1
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr i8, ptr %.5.1, i64 1      ; 2 uses
  store i8 %i.cj, ptr %.5.1, align 1
  %i.cl = icmp samesign ugt i64 %indvars.iv16.i.1, 1
  br i1 %i.cl, label %.lr.ph.i.1, label %.loopexit131, !llvm.loop !42

.loopexit131:                                     ; preds = %.lr.ph.i.1, %middle.block179, %vec.epilog.middle.block195, %.preheader.i.1
  %.6.1 = phi ptr [ %i.bd, %.preheader.i.1 ], [ %i.cd, %vec.epilog.middle.block195 ], [ %i.bw, %middle.block179 ], [ %i.ck, %.lr.ph.i.1 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.cm = getelementptr i8, ptr %.6.1, i64 1      ; 8 uses
  store i8 46, ptr %.6.1, align 1
  %i.cn = getelementptr i8, ptr %2, i64 14
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.loopexit131
  %indvars.iv.i.2 = phi i32 [ %indvars.iv.next.i.2, %bb.e ], [ 1, %.loopexit131 ] ; 4 uses
  %.011.i.2 = phi i32 [ %i.cw, %bb.e ], [ %i.cp, %.loopexit131 ] ; 3 uses
  %.0.i.2 = phi i32 [ %i.ct, %bb.e ], [ 0, %.loopexit131 ] ; 3 uses
  %i.cq = urem i32 %.011.i.2, 10
  %i.cr = trunc nuw nsw i32 %i.cq to i8
  %i.cs = or disjoint i8 %i.cr, 48
  %i.ct = add i32 %.0.i.2, 1
  %i.cu = sext i32 %.0.i.2 to i64
  %i.cv = getelementptr i8, ptr %i.b, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1
  %i.cw = udiv i32 %.011.i.2, 10
  %.not.i.2 = icmp samesign ult i32 %.011.i.2, 10
  %indvars.iv.next.i.2 = add i32 %indvars.iv.i.2, 1
  br i1 %.not.i.2, label %.preheader.i.2, label %bb.e, !llvm.loop !33

.preheader.i.2:                                   ; preds = %bb.e
  %i.cx = icmp ult i32 %.0.i.2, 2147483647
  br i1 %i.cx, label %iter.check227, label %.loopexit

iter.check227:                                    ; preds = %.preheader.i.2
  %i.cy = zext i32 %indvars.iv.i.2 to i64         ; 9 uses
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = icmp ne i32 %indvars.iv.i.2, 0
  %umin209.neg = sext i1 %i.da to i64
  %i.db = add nsw i64 %i.cz, %umin209.neg         ; 7 uses
  %min.iters.check210 = icmp ult i64 %i.db, 8
  br i1 %min.iters.check210, label %.lr.ph.i.2.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %iter.check227
  %scevgep200 = getelementptr i8, ptr %.6.1, i64 2
  %i.dc = icmp ne i32 %indvars.iv.i.2, 0          ; 2 uses
  %umin201.neg = sext i1 %i.dc to i64
  %i.dd = getelementptr i8, ptr %scevgep200, i64 %umin201.neg
  %scevgep202 = getelementptr i8, ptr %i.dd, i64 %i.cy
  %not.298 = xor i1 %i.dc, true
  %umin201.sroa.sel.idx = sext i1 %not.298 to i64
  %umin201.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin201.sroa.sel.idx
  %scevgep205 = getelementptr i8, ptr %i.b, i64 %i.cy
  %bound0206 = icmp ult ptr %i.cm, %scevgep205
  %bound1207 = icmp ult ptr %umin201.sroa.sel, %scevgep202
  %found.conflict208 = and i1 %bound0206, %bound1207
  br i1 %found.conflict208, label %.lr.ph.i.2.preheader, label %vector.main.loop.iter.check211

vector.main.loop.iter.check211:                   ; preds = %vector.memcheck199
  %min.iters.check212 = icmp ult i64 %i.db, 32
  br i1 %min.iters.check212, label %vec.epilog.ph231, label %vector.ph213

vector.ph213:                                     ; preds = %vector.main.loop.iter.check211
  %i.de = and i64 %i.db, 24
  %n.vec214 = and i64 %i.db, -32                  ; 5 uses
  %i.df = getelementptr i8, ptr %i.cm, i64 %n.vec214 ; 2 uses
  %i.dg = sub nsw i64 %i.cy, %n.vec214
  %invariant.gep309 = getelementptr i8, ptr %i.b, i64 %i.cy
  br label %vector.body215

vector.body215:                                   ; preds = %vector.ph213, %vector.body215
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next222, %vector.body215 ] ; 3 uses
  %next.gep217 = getelementptr i8, ptr %i.cm, i64 %index216 ; 2 uses
  %i.dh = xor i64 %index216, -1
  %gep310 = getelementptr i8, ptr %invariant.gep309, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %gep310, i64 -15
  %i.dj = getelementptr i8, ptr %gep310, i64 -31
  %wide.load218 = load <16 x i8>, ptr %i.di, align 1, !alias.scope !59
  %wide.load219 = load <16 x i8>, ptr %i.dj, align 1, !alias.scope !59
  %reverse220 = shufflevector <16 x i8> %wide.load218, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse221 = shufflevector <16 x i8> %wide.load219, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.dk = getelementptr i8, ptr %next.gep217, i64 16
  store <16 x i8> %reverse220, ptr %next.gep217, align 1, !alias.scope !60, !noalias !59
  store <16 x i8> %reverse221, ptr %i.dk, align 1, !alias.scope !60, !noalias !59
  %index.next222 = add nuw i64 %index216, 32      ; 2 uses
  %i.dl = icmp eq i64 %index.next222, %n.vec214
  br i1 %i.dl, label %middle.block223, label %vector.body215, !llvm.loop !46

middle.block223:                                  ; preds = %vector.body215
  %cmp.n224 = icmp eq i64 %i.db, %n.vec214
  br i1 %cmp.n224, label %.loopexit, label %vec.epilog.iter.check229

vec.epilog.iter.check229:                         ; preds = %middle.block223
  %min.epilog.iters.check230 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check230, label %.lr.ph.i.2.preheader, label %vec.epilog.ph231, !prof !56

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check211, %vec.epilog.iter.check229
  %vec.epilog.resume.val225 = phi i64 [ %n.vec214, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check211 ]
  %n.vec232 = and i64 %i.db, -8                   ; 4 uses
  %i.dm = getelementptr i8, ptr %i.cm, i64 %n.vec232 ; 2 uses
  %i.dn = sub nsw i64 %i.cy, %n.vec232
  %invariant.gep311 = getelementptr i8, ptr %i.b, i64 %i.cy
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph231
  %index234 = phi i64 [ %vec.epilog.resume.val225, %vec.epilog.ph231 ], [ %index.next238, %vec.epilog.vector.body233 ] ; 3 uses
  %next.gep235 = getelementptr i8, ptr %i.cm, i64 %index234
  %i.do = xor i64 %index234, -1
  %gep312 = getelementptr i8, ptr %invariant.gep311, i64 %i.do
  %i.dp = getelementptr i8, ptr %gep312, i64 -7
  %wide.load236 = load <8 x i8>, ptr %i.dp, align 1, !alias.scope !59
  %reverse237 = shufflevector <8 x i8> %wide.load236, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse237, ptr %next.gep235, align 1, !alias.scope !60, !noalias !59
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next238, %n.vec232
  br i1 %i.dq, label %vec.epilog.middle.block239, label %vec.epilog.vector.body233, !llvm.loop !47

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body233
  %cmp.n240 = icmp eq i64 %i.db, %n.vec232
  br i1 %cmp.n240, label %.loopexit, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %iter.check227, %vector.memcheck199, %vec.epilog.iter.check229, %vec.epilog.middle.block239
  %.5.2.ph = phi ptr [ %i.cm, %iter.check227 ], [ %i.cm, %vector.memcheck199 ], [ %i.df, %vec.epilog.iter.check229 ], [ %i.dm, %vec.epilog.middle.block239 ]
  %indvars.iv16.i.2.ph = phi i64 [ %i.cy, %iter.check227 ], [ %i.cy, %vector.memcheck199 ], [ %i.dg, %vec.epilog.iter.check229 ], [ %i.dn, %vec.epilog.middle.block239 ]
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.preheader, %.lr.ph.i.2
  %.5.2 = phi ptr [ %i.dt, %.lr.ph.i.2 ], [ %.5.2.ph, %.lr.ph.i.2.preheader ] ; 2 uses
  %indvars.iv16.i.2 = phi i64 [ %indvars.iv.next17.i.2, %.lr.ph.i.2 ], [ %indvars.iv16.i.2.ph, %.lr.ph.i.2.preheader ] ; 2 uses
  %indvars.iv.next17.i.2 = add nsw i64 %indvars.iv16.i.2, -1 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i.2
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = getelementptr i8, ptr %.5.2, i64 1      ; 2 uses
  store i8 %i.ds, ptr %.5.2, align 1
  %i.du = icmp samesign ugt i64 %indvars.iv16.i.2, 1
  br i1 %i.du, label %.lr.ph.i.2, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph.i.2, %middle.block223, %vec.epilog.middle.block239, %.preheader.i.2
  %.6.2 = phi ptr [ %i.cm, %.preheader.i.2 ], [ %i.dm, %vec.epilog.middle.block239 ], [ %i.df, %middle.block223 ], [ %i.dt, %.lr.ph.i.2 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.dv = getelementptr i8, ptr %.6.2, i64 1      ; 8 uses
  store i8 46, ptr %.6.2, align 1
  %i.dw = getelementptr i8, ptr %2, i64 15
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.loopexit
  %indvars.iv.i.3 = phi i32 [ %indvars.iv.next.i.3, %bb.f ], [ 1, %.loopexit ] ; 4 uses
  %.011.i.3 = phi i32 [ %i.ef, %bb.f ], [ %i.dy, %.loopexit ] ; 3 uses
  %.0.i.3 = phi i32 [ %i.ec, %bb.f ], [ 0, %.loopexit ] ; 3 uses
  %i.dz = urem i32 %.011.i.3, 10
  %i.ea = trunc nuw nsw i32 %i.dz to i8
  %i.eb = or disjoint i8 %i.ea, 48
  %i.ec = add i32 %.0.i.3, 1
  %i.ed = sext i32 %.0.i.3 to i64
  %i.ee = getelementptr i8, ptr %i.b, i64 %i.ed
  store i8 %i.eb, ptr %i.ee, align 1
  %i.ef = udiv i32 %.011.i.3, 10
  %.not.i.3 = icmp samesign ult i32 %.011.i.3, 10
  %indvars.iv.next.i.3 = add i32 %indvars.iv.i.3, 1
  br i1 %.not.i.3, label %.preheader.i.3, label %bb.f, !llvm.loop !33

.preheader.i.3:                                   ; preds = %bb.f
  %i.eg = icmp ult i32 %.0.i.3, 2147483647
  br i1 %i.eg, label %iter.check271, label %ip_write_num.exit.3

iter.check271:                                    ; preds = %.preheader.i.3
  %i.eh = zext i32 %indvars.iv.i.3 to i64         ; 9 uses
  %i.ei = add nuw nsw i64 %i.eh, 1
  %i.ej = icmp ne i32 %indvars.iv.i.3, 0
  %umin253.neg = sext i1 %i.ej to i64
  %i.ek = add nsw i64 %i.ei, %umin253.neg         ; 7 uses
  %min.iters.check254 = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check254, label %.lr.ph.i.3.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %iter.check271
  %scevgep244 = getelementptr i8, ptr %.6.2, i64 2
  %i.el = icmp ne i32 %indvars.iv.i.3, 0          ; 2 uses
  %umin245.neg = sext i1 %i.el to i64
  %i.em = getelementptr i8, ptr %scevgep244, i64 %umin245.neg
  %scevgep246 = getelementptr i8, ptr %i.em, i64 %i.eh
  %not.299 = xor i1 %i.el, true
  %umin245.sroa.sel.idx = sext i1 %not.299 to i64
  %umin245.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin245.sroa.sel.idx
  %scevgep249 = getelementptr i8, ptr %i.b, i64 %i.eh
  %bound0250 = icmp ult ptr %i.dv, %scevgep249
  %bound1251 = icmp ult ptr %umin245.sroa.sel, %scevgep246
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.3.preheader, label %vector.main.loop.iter.check255

vector.main.loop.iter.check255:                   ; preds = %vector.memcheck243
  %min.iters.check256 = icmp ult i64 %i.ek, 32
  br i1 %min.iters.check256, label %vec.epilog.ph275, label %vector.ph257

vector.ph257:                                     ; preds = %vector.main.loop.iter.check255
  %i.en = and i64 %i.ek, 24
  %n.vec258 = and i64 %i.ek, -32                  ; 5 uses
  %i.eo = getelementptr i8, ptr %i.dv, i64 %n.vec258 ; 2 uses
  %i.ep = sub nsw i64 %i.eh, %n.vec258
  %invariant.gep313 = getelementptr i8, ptr %i.b, i64 %i.eh
  br label %vector.body259

vector.body259:                                   ; preds = %vector.ph257, %vector.body259
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next266, %vector.body259 ] ; 3 uses
  %next.gep261 = getelementptr i8, ptr %i.dv, i64 %index260 ; 2 uses
  %i.eq = xor i64 %index260, -1
  %gep314 = getelementptr i8, ptr %invariant.gep313, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %gep314, i64 -15
  %i.es = getelementptr i8, ptr %gep314, i64 -31
  %wide.load262 = load <16 x i8>, ptr %i.er, align 1, !alias.scope !61
  %wide.load263 = load <16 x i8>, ptr %i.es, align 1, !alias.scope !61
  %reverse264 = shufflevector <16 x i8> %wide.load262, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse265 = shufflevector <16 x i8> %wide.load263, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.et = getelementptr i8, ptr %next.gep261, i64 16
  store <16 x i8> %reverse264, ptr %next.gep261, align 1, !alias.scope !62, !noalias !61
  store <16 x i8> %reverse265, ptr %i.et, align 1, !alias.scope !62, !noalias !61
  %index.next266 = add nuw i64 %index260, 32      ; 2 uses
  %i.eu = icmp eq i64 %index.next266, %n.vec258
  br i1 %i.eu, label %middle.block267, label %vector.body259, !llvm.loop !52

middle.block267:                                  ; preds = %vector.body259
  %cmp.n268 = icmp eq i64 %i.ek, %n.vec258
  br i1 %cmp.n268, label %ip_write_num.exit.3, label %vec.epilog.iter.check273

vec.epilog.iter.check273:                         ; preds = %middle.block267
  %min.epilog.iters.check274 = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check274, label %.lr.ph.i.3.preheader, label %vec.epilog.ph275, !prof !56

vec.epilog.ph275:                                 ; preds = %vector.main.loop.iter.check255, %vec.epilog.iter.check273
  %vec.epilog.resume.val269 = phi i64 [ %n.vec258, %vec.epilog.iter.check273 ], [ 0, %vector.main.loop.iter.check255 ]
  %n.vec276 = and i64 %i.ek, -8                   ; 4 uses
  %i.ev = getelementptr i8, ptr %i.dv, i64 %n.vec276 ; 2 uses
  %i.ew = sub nsw i64 %i.eh, %n.vec276
  %invariant.gep315 = getelementptr i8, ptr %i.b, i64 %i.eh
  br label %vec.epilog.vector.body277

vec.epilog.vector.body277:                        ; preds = %vec.epilog.vector.body277, %vec.epilog.ph275
  %index278 = phi i64 [ %vec.epilog.resume.val269, %vec.epilog.ph275 ], [ %index.next282, %vec.epilog.vector.body277 ] ; 3 uses
  %next.gep279 = getelementptr i8, ptr %i.dv, i64 %index278
  %i.ex = xor i64 %index278, -1
  %gep316 = getelementptr i8, ptr %invariant.gep315, i64 %i.ex
  %i.ey = getelementptr i8, ptr %gep316, i64 -7
  %wide.load280 = load <8 x i8>, ptr %i.ey, align 1, !alias.scope !61
  %reverse281 = shufflevector <8 x i8> %wide.load280, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse281, ptr %next.gep279, align 1, !alias.scope !62, !noalias !61
  %index.next282 = add nuw i64 %index278, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next282, %n.vec276
  br i1 %i.ez, label %vec.epilog.middle.block283, label %vec.epilog.vector.body277, !llvm.loop !53

vec.epilog.middle.block283:                       ; preds = %vec.epilog.vector.body277
  %cmp.n284 = icmp eq i64 %i.ek, %n.vec276
  br i1 %cmp.n284, label %ip_write_num.exit.3, label %.lr.ph.i.3.preheader

.lr.ph.i.3.preheader:                             ; preds = %iter.check271, %vector.memcheck243, %vec.epilog.iter.check273, %vec.epilog.middle.block283
  %.5.3.ph = phi ptr [ %i.dv, %iter.check271 ], [ %i.dv, %vector.memcheck243 ], [ %i.eo, %vec.epilog.iter.check273 ], [ %i.ev, %vec.epilog.middle.block283 ]
  %indvars.iv16.i.3.ph = phi i64 [ %i.eh, %iter.check271 ], [ %i.eh, %vector.memcheck243 ], [ %i.ep, %vec.epilog.iter.check273 ], [ %i.ew, %vec.epilog.middle.block283 ]
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.3.preheader, %.lr.ph.i.3
  %.5.3 = phi ptr [ %i.fc, %.lr.ph.i.3 ], [ %.5.3.ph, %.lr.ph.i.3.preheader ] ; 2 uses
  %indvars.iv16.i.3 = phi i64 [ %indvars.iv.next17.i.3, %.lr.ph.i.3 ], [ %indvars.iv16.i.3.ph, %.lr.ph.i.3.preheader ] ; 2 uses
  %indvars.iv.next17.i.3 = add nsw i64 %indvars.iv16.i.3, -1 ; 2 uses
  %i.fa = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i.3
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = getelementptr i8, ptr %.5.3, i64 1      ; 2 uses
  store i8 %i.fb, ptr %.5.3, align 1
  %i.fd = icmp samesign ugt i64 %indvars.iv16.i.3, 1
  br i1 %i.fd, label %.lr.ph.i.3, label %ip_write_num.exit.3, !llvm.loop !54

ip_write_num.exit.3:                              ; preds = %.lr.ph.i.3, %middle.block267, %vec.epilog.middle.block283, %.preheader.i.3
  %.6.3 = phi ptr [ %i.dv, %.preheader.i.3 ], [ %i.ev, %vec.epilog.middle.block283 ], [ %i.eo, %middle.block267 ], [ %i.fc, %.lr.ph.i.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.fe = ptrtoint ptr %.6.3 to i64
  %i.ff = ptrtoint ptr %i.c to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %.not74 = icmp ult i64 %i.fg, %1
  br i1 %.not74, label %bb.g, label %bb.al

bb.g:                                             ; preds = %ip_write_num.exit.3
  %i.fh = add nuw i64 %i.fg, 1
  br label %.sink.split

bb.h:                                             ; preds = %.preheader102.preheader
  %spec.select.1 = zext i1 %.not130 to i32
  %i.fi = select i1 %.not130, i32 1, i32 2
  br label %.preheader102.2

.preheader102.2:                                  ; preds = %.preheader102.preheader, %bb.h
  %.262.1 = phi i32 [ -1, %bb.h ], [ %.2, %.preheader102.preheader ] ; 2 uses
  %.259.1 = phi i32 [ 0, %bb.h ], [ %.1, %.preheader102.preheader ] ; 3 uses
  %.2.1 = phi i32 [ %spec.select.1, %bb.h ], [ -1, %.preheader102.preheader ] ; 3 uses
  %.1.1 = phi i32 [ %i.fi, %bb.h ], [ 0, %.preheader102.preheader ] ; 3 uses
  %i.fj = getelementptr i8, ptr %2, i64 4
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr i8, ptr %2, i64 5
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = or i8 %i.fm, %i.fk
  %i.fo = icmp eq i8 %i.fn, 0
  br i1 %i.fo, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader102.2
  %i.fp = icmp samesign ugt i32 %.1.1, %.259.1
  %spec.select76.2 = select i1 %i.fp, i32 %.2.1, i32 %.262.1
  %i.fq = tail call i32 @llvm.umax.i32(i32 %.1.1, i32 %.259.1)
  br label %.preheader102.3

bb.j:                                             ; preds = %.preheader102.2
  %i.fr = icmp slt i32 %.2.1, 0
  %spec.select.2 = select i1 %i.fr, i32 2, i32 %.2.1
  %i.fs = add nuw nsw i32 %.1.1, 1
  br label %.preheader102.3

.preheader102.3:                                  ; preds = %bb.j, %bb.i
  %.262.2 = phi i32 [ %.262.1, %bb.j ], [ %spec.select76.2, %bb.i ] ; 2 uses
  %.259.2 = phi i32 [ %.259.1, %bb.j ], [ %i.fq, %bb.i ] ; 3 uses
  %.2.2 = phi i32 [ %spec.select.2, %bb.j ], [ -1, %bb.i ] ; 3 uses
  %.1.2 = phi i32 [ %i.fs, %bb.j ], [ 0, %bb.i ]  ; 3 uses
  %i.ft = getelementptr i8, ptr %2, i64 6
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = getelementptr i8, ptr %2, i64 7
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = or i8 %i.fw, %i.fu
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader102.3
  %i.fz = icmp samesign ugt i32 %.1.2, %.259.2
  %spec.select76.3 = select i1 %i.fz, i32 %.2.2, i32 %.262.2
  %i.ga = tail call i32 @llvm.umax.i32(i32 %.1.2, i32 %.259.2)
  br label %.preheader102.4

bb.l:                                             ; preds = %.preheader102.3
  %i.gb = icmp slt i32 %.2.2, 0
  %spec.select.3 = select i1 %i.gb, i32 3, i32 %.2.2
  %i.gc = add nuw nsw i32 %.1.2, 1
  br label %.preheader102.4

.preheader102.4:                                  ; preds = %bb.l, %bb.k
  %.262.3 = phi i32 [ %.262.2, %bb.l ], [ %spec.select76.3, %bb.k ] ; 2 uses
  %.259.3 = phi i32 [ %.259.2, %bb.l ], [ %i.ga, %bb.k ] ; 3 uses
  %.2.3 = phi i32 [ %spec.select.3, %bb.l ], [ -1, %bb.k ] ; 3 uses
  %.1.3 = phi i32 [ %i.gc, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.gd = getelementptr i8, ptr %2, i64 8
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = getelementptr i8, ptr %2, i64 9
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = or i8 %i.gg, %i.ge
  %i.gi = icmp eq i8 %i.gh, 0
  br i1 %i.gi, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.4
  %i.gj = icmp samesign ugt i32 %.1.3, %.259.3
  %spec.select76.4 = select i1 %i.gj, i32 %.2.3, i32 %.262.3
  %i.gk = tail call i32 @llvm.umax.i32(i32 %.1.3, i32 %.259.3)
  br label %.preheader102.5

bb.n:                                             ; preds = %.preheader102.4
  %i.gl = icmp slt i32 %.2.3, 0
  %spec.select.4 = select i1 %i.gl, i32 4, i32 %.2.3
  %i.gm = add nuw nsw i32 %.1.3, 1
  br label %.preheader102.5

.preheader102.5:                                  ; preds = %bb.n, %bb.m
  %.262.4 = phi i32 [ %.262.3, %bb.n ], [ %spec.select76.4, %bb.m ] ; 2 uses
  %.259.4 = phi i32 [ %.259.3, %bb.n ], [ %i.gk, %bb.m ] ; 3 uses
  %.2.4 = phi i32 [ %spec.select.4, %bb.n ], [ -1, %bb.m ] ; 3 uses
  %.1.4 = phi i32 [ %i.gm, %bb.n ], [ 0, %bb.m ]  ; 3 uses
  %i.gn = getelementptr i8, ptr %2, i64 10
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = getelementptr i8, ptr %2, i64 11
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = or i8 %i.gq, %i.go
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader102.5
  %i.gt = icmp samesign ugt i32 %.1.4, %.259.4
  %spec.select76.5 = select i1 %i.gt, i32 %.2.4, i32 %.262.4
  %i.gu = tail call i32 @llvm.umax.i32(i32 %.1.4, i32 %.259.4)
  br label %.preheader102.6

end_hunk_0
