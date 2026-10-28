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
  %n.vec150 = and i64 %i.al, -8                   ; 4 uses
  %i.au = getelementptr i8, ptr %i.c, i64 %n.vec150 ; 2 uses
  %i.av = sub nsw i64 %i.ai, %n.vec150
  %invariant.gep298 = getelementptr i8, ptr %i.b, i64 %i.ai
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %i.c, i64 %index151
  %i.aw = xor i64 %index151, -1
  %gep299 = getelementptr i8, ptr %invariant.gep298, i64 %i.aw
  %i.ax = getelementptr i8, ptr %gep299, i64 -7
  %wide.load153 = load <8 x i8>, ptr %i.ax, align 1
  %reverse154 = shufflevector <8 x i8> %wide.load153, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse154, ptr %next.gep152, align 8
  %index.next155 = add nuw i64 %index151, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n156 = icmp eq i64 %i.al, %n.vec150
  br i1 %cmp.n156, label %.loopexit132, label %.lr.ph.i.preheader

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
  br i1 %i.bo, label %iter.check179, label %.loopexit131

iter.check179:                                    ; preds = %.preheader.i.1
  %i.bp = zext i32 %indvars.iv.i.1 to i64         ; 9 uses
  %i.bq = add nuw nsw i64 %i.bp, 1
  %i.br = icmp ne i32 %indvars.iv.i.1, 0
  %umin163.neg = sext i1 %i.br to i64
  %i.bs = add nsw i64 %i.bq, %umin163.neg         ; 7 uses
  %min.iters.check164 = icmp ult i64 %i.bs, 8
  br i1 %min.iters.check164, label %.lr.ph.i.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check179
  %i.bt = icmp ne i32 %indvars.iv.i.1, 0          ; 2 uses
  %umin158.neg = sext i1 %i.bt to i64
  %3 = getelementptr i8, ptr %.6, i64 %i.bp
  %i.bu = getelementptr i8, ptr %3, i64 2
  %scevgep159 = getelementptr i8, ptr %i.bu, i64 %umin158.neg
  %not. = xor i1 %i.bt, true
  %umin158.sroa.sel.idx = sext i1 %not. to i64
  %umin158.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin158.sroa.sel.idx
  %scevgep162 = getelementptr i8, ptr %i.b, i64 %i.bp
  %bound0 = icmp ult ptr %i.bd, %scevgep162
  %bound1 = icmp ult ptr %umin158.sroa.sel, %scevgep159
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.preheader, label %vector.main.loop.iter.check165

vector.main.loop.iter.check165:                   ; preds = %vector.memcheck
  %min.iters.check166 = icmp ult i64 %i.bs, 32
  br i1 %min.iters.check166, label %vec.epilog.ph183, label %vector.ph167

vector.ph167:                                     ; preds = %vector.main.loop.iter.check165
  %i.bv = and i64 %i.bs, 24
  %n.vec168 = and i64 %i.bs, -32                  ; 5 uses
  %i.bw = getelementptr i8, ptr %i.bd, i64 %n.vec168 ; 2 uses
  %i.bx = sub nsw i64 %i.bp, %n.vec168
  %invariant.gep300 = getelementptr i8, ptr %i.b, i64 %i.bp
  br label %vector.body169

vector.body169:                                   ; preds = %vector.ph167, %vector.body169
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body169 ] ; 3 uses
  %next.gep171 = getelementptr i8, ptr %i.bd, i64 %index170 ; 2 uses
  %i.by = xor i64 %index170, -1
  %gep301 = getelementptr i8, ptr %invariant.gep300, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %gep301, i64 -15
  %i.ca = getelementptr i8, ptr %gep301, i64 -31
  %wide.load172 = load <16 x i8>, ptr %i.bz, align 1, !alias.scope !57
  %wide.load173 = load <16 x i8>, ptr %i.ca, align 1, !alias.scope !57
  %reverse174 = shufflevector <16 x i8> %wide.load172, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse175 = shufflevector <16 x i8> %wide.load173, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cb = getelementptr i8, ptr %next.gep171, i64 16
  store <16 x i8> %reverse174, ptr %next.gep171, align 1, !alias.scope !58, !noalias !57
  store <16 x i8> %reverse175, ptr %i.cb, align 1, !alias.scope !58, !noalias !57
  %index.next176 = add nuw i64 %index170, 32      ; 2 uses
  %i.cc = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.cc, label %middle.block177, label %vector.body169, !llvm.loop !40

middle.block177:                                  ; preds = %vector.body169
  %cmp.n178 = icmp eq i64 %i.bs, %n.vec168
  br i1 %cmp.n178, label %.loopexit131, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block177
  %min.epilog.iters.check182 = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check182, label %.lr.ph.i.1.preheader, label %vec.epilog.ph183, !prof !56

vec.epilog.ph183:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check180
  %vec.epilog.resume.val184 = phi i64 [ %n.vec168, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check165 ]
  %n.vec185 = and i64 %i.bs, -8                   ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bd, i64 %n.vec185 ; 2 uses
  %i.ce = sub nsw i64 %i.bp, %n.vec185
  %invariant.gep302 = getelementptr i8, ptr %i.b, i64 %i.bp
  br label %vec.epilog.vector.body186

vec.epilog.vector.body186:                        ; preds = %vec.epilog.vector.body186, %vec.epilog.ph183
  %index187 = phi i64 [ %vec.epilog.resume.val184, %vec.epilog.ph183 ], [ %index.next191, %vec.epilog.vector.body186 ] ; 3 uses
  %next.gep188 = getelementptr i8, ptr %i.bd, i64 %index187
  %i.cf = xor i64 %index187, -1
  %gep303 = getelementptr i8, ptr %invariant.gep302, i64 %i.cf
  %i.cg = getelementptr i8, ptr %gep303, i64 -7
  %wide.load189 = load <8 x i8>, ptr %i.cg, align 1, !alias.scope !57
  %reverse190 = shufflevector <8 x i8> %wide.load189, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse190, ptr %next.gep188, align 1, !alias.scope !58, !noalias !57
  %index.next191 = add nuw i64 %index187, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.ch, label %vec.epilog.middle.block192, label %vec.epilog.vector.body186, !llvm.loop !41

vec.epilog.middle.block192:                       ; preds = %vec.epilog.vector.body186
  %cmp.n193 = icmp eq i64 %i.bs, %n.vec185
  br i1 %cmp.n193, label %.loopexit131, label %.lr.ph.i.1.preheader

.lr.ph.i.1.preheader:                             ; preds = %iter.check179, %vector.memcheck, %vec.epilog.iter.check180, %vec.epilog.middle.block192
  %.5.1.ph = phi ptr [ %i.bd, %iter.check179 ], [ %i.bd, %vector.memcheck ], [ %i.bw, %vec.epilog.iter.check180 ], [ %i.cd, %vec.epilog.middle.block192 ]
  %indvars.iv16.i.1.ph = phi i64 [ %i.bp, %iter.check179 ], [ %i.bp, %vector.memcheck ], [ %i.bx, %vec.epilog.iter.check180 ], [ %i.ce, %vec.epilog.middle.block192 ]
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

.loopexit131:                                     ; preds = %.lr.ph.i.1, %middle.block177, %vec.epilog.middle.block192, %.preheader.i.1
  %.6.1 = phi ptr [ %i.bd, %.preheader.i.1 ], [ %i.cd, %vec.epilog.middle.block192 ], [ %i.bw, %middle.block177 ], [ %i.ck, %.lr.ph.i.1 ] ; 3 uses
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
  br i1 %i.cx, label %iter.check222, label %.loopexit

iter.check222:                                    ; preds = %.preheader.i.2
  %i.cy = zext i32 %indvars.iv.i.2 to i64         ; 9 uses
  %i.cz = add nuw nsw i64 %i.cy, 1
  %i.da = icmp ne i32 %indvars.iv.i.2, 0
  %umin206.neg = sext i1 %i.da to i64
  %i.db = add nsw i64 %i.cz, %umin206.neg         ; 7 uses
  %min.iters.check207 = icmp ult i64 %i.db, 8
  br i1 %min.iters.check207, label %.lr.ph.i.2.preheader, label %vector.memcheck196

vector.memcheck196:                               ; preds = %iter.check222
  %i.dc = icmp ne i32 %indvars.iv.i.2, 0          ; 2 uses
  %umin198.neg = sext i1 %i.dc to i64
  %4 = getelementptr i8, ptr %.6.1, i64 %i.cy
  %i.dd = getelementptr i8, ptr %4, i64 2
  %scevgep199 = getelementptr i8, ptr %i.dd, i64 %umin198.neg
  %not.293 = xor i1 %i.dc, true
  %umin198.sroa.sel.idx = sext i1 %not.293 to i64
  %umin198.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin198.sroa.sel.idx
  %scevgep202 = getelementptr i8, ptr %i.b, i64 %i.cy
  %bound0203 = icmp ult ptr %i.cm, %scevgep202
  %bound1204 = icmp ult ptr %umin198.sroa.sel, %scevgep199
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %.lr.ph.i.2.preheader, label %vector.main.loop.iter.check208

vector.main.loop.iter.check208:                   ; preds = %vector.memcheck196
  %min.iters.check209 = icmp ult i64 %i.db, 32
  br i1 %min.iters.check209, label %vec.epilog.ph226, label %vector.ph210

vector.ph210:                                     ; preds = %vector.main.loop.iter.check208
  %i.de = and i64 %i.db, 24
  %n.vec211 = and i64 %i.db, -32                  ; 5 uses
  %i.df = getelementptr i8, ptr %i.cm, i64 %n.vec211 ; 2 uses
  %i.dg = sub nsw i64 %i.cy, %n.vec211
  %invariant.gep304 = getelementptr i8, ptr %i.b, i64 %i.cy
  br label %vector.body212

vector.body212:                                   ; preds = %vector.ph210, %vector.body212
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next219, %vector.body212 ] ; 3 uses
  %next.gep214 = getelementptr i8, ptr %i.cm, i64 %index213 ; 2 uses
  %i.dh = xor i64 %index213, -1
  %gep305 = getelementptr i8, ptr %invariant.gep304, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %gep305, i64 -15
  %i.dj = getelementptr i8, ptr %gep305, i64 -31
  %wide.load215 = load <16 x i8>, ptr %i.di, align 1, !alias.scope !59
  %wide.load216 = load <16 x i8>, ptr %i.dj, align 1, !alias.scope !59
  %reverse217 = shufflevector <16 x i8> %wide.load215, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse218 = shufflevector <16 x i8> %wide.load216, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.dk = getelementptr i8, ptr %next.gep214, i64 16
  store <16 x i8> %reverse217, ptr %next.gep214, align 1, !alias.scope !60, !noalias !59
  store <16 x i8> %reverse218, ptr %i.dk, align 1, !alias.scope !60, !noalias !59
  %index.next219 = add nuw i64 %index213, 32      ; 2 uses
  %i.dl = icmp eq i64 %index.next219, %n.vec211
  br i1 %i.dl, label %middle.block220, label %vector.body212, !llvm.loop !46

middle.block220:                                  ; preds = %vector.body212
  %cmp.n221 = icmp eq i64 %i.db, %n.vec211
  br i1 %cmp.n221, label %.loopexit, label %vec.epilog.iter.check223

vec.epilog.iter.check223:                         ; preds = %middle.block220
  %min.epilog.iters.check225 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check225, label %.lr.ph.i.2.preheader, label %vec.epilog.ph226, !prof !56

vec.epilog.ph226:                                 ; preds = %vector.main.loop.iter.check208, %vec.epilog.iter.check223
  %vec.epilog.resume.val227 = phi i64 [ %n.vec211, %vec.epilog.iter.check223 ], [ 0, %vector.main.loop.iter.check208 ]
  %n.vec228 = and i64 %i.db, -8                   ; 4 uses
  %i.dm = getelementptr i8, ptr %i.cm, i64 %n.vec228 ; 2 uses
  %i.dn = sub nsw i64 %i.cy, %n.vec228
  %invariant.gep306 = getelementptr i8, ptr %i.b, i64 %i.cy
  br label %vec.epilog.vector.body229

vec.epilog.vector.body229:                        ; preds = %vec.epilog.vector.body229, %vec.epilog.ph226
  %index230 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph226 ], [ %index.next234, %vec.epilog.vector.body229 ] ; 3 uses
  %next.gep231 = getelementptr i8, ptr %i.cm, i64 %index230
  %i.do = xor i64 %index230, -1
  %gep307 = getelementptr i8, ptr %invariant.gep306, i64 %i.do
  %i.dp = getelementptr i8, ptr %gep307, i64 -7
  %wide.load232 = load <8 x i8>, ptr %i.dp, align 1, !alias.scope !59
  %reverse233 = shufflevector <8 x i8> %wide.load232, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse233, ptr %next.gep231, align 1, !alias.scope !60, !noalias !59
  %index.next234 = add nuw i64 %index230, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next234, %n.vec228
  br i1 %i.dq, label %vec.epilog.middle.block235, label %vec.epilog.vector.body229, !llvm.loop !47

vec.epilog.middle.block235:                       ; preds = %vec.epilog.vector.body229
  %cmp.n236 = icmp eq i64 %i.db, %n.vec228
  br i1 %cmp.n236, label %.loopexit, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %iter.check222, %vector.memcheck196, %vec.epilog.iter.check223, %vec.epilog.middle.block235
  %.5.2.ph = phi ptr [ %i.cm, %iter.check222 ], [ %i.cm, %vector.memcheck196 ], [ %i.df, %vec.epilog.iter.check223 ], [ %i.dm, %vec.epilog.middle.block235 ]
  %indvars.iv16.i.2.ph = phi i64 [ %i.cy, %iter.check222 ], [ %i.cy, %vector.memcheck196 ], [ %i.dg, %vec.epilog.iter.check223 ], [ %i.dn, %vec.epilog.middle.block235 ]
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

.loopexit:                                        ; preds = %.lr.ph.i.2, %middle.block220, %vec.epilog.middle.block235, %.preheader.i.2
  %.6.2 = phi ptr [ %i.cm, %.preheader.i.2 ], [ %i.dm, %vec.epilog.middle.block235 ], [ %i.df, %middle.block220 ], [ %i.dt, %.lr.ph.i.2 ] ; 3 uses
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
  br i1 %i.eg, label %iter.check265, label %ip_write_num.exit.3

iter.check265:                                    ; preds = %.preheader.i.3
  %i.eh = zext i32 %indvars.iv.i.3 to i64         ; 9 uses
  %i.ei = add nuw nsw i64 %i.eh, 1
  %i.ej = icmp ne i32 %indvars.iv.i.3, 0
  %umin249.neg = sext i1 %i.ej to i64
  %i.ek = add nsw i64 %i.ei, %umin249.neg         ; 7 uses
  %min.iters.check250 = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check250, label %.lr.ph.i.3.preheader, label %vector.memcheck239

vector.memcheck239:                               ; preds = %iter.check265
  %i.el = icmp ne i32 %indvars.iv.i.3, 0          ; 2 uses
  %umin241.neg = sext i1 %i.el to i64
  %5 = getelementptr i8, ptr %.6.2, i64 %i.eh
  %i.em = getelementptr i8, ptr %5, i64 2
  %scevgep242 = getelementptr i8, ptr %i.em, i64 %umin241.neg
  %not.294 = xor i1 %i.el, true
  %umin241.sroa.sel.idx = sext i1 %not.294 to i64
  %umin241.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin241.sroa.sel.idx
  %scevgep245 = getelementptr i8, ptr %i.b, i64 %i.eh
  %bound0246 = icmp ult ptr %i.dv, %scevgep245
  %bound1247 = icmp ult ptr %umin241.sroa.sel, %scevgep242
  %found.conflict248 = and i1 %bound0246, %bound1247
  br i1 %found.conflict248, label %.lr.ph.i.3.preheader, label %vector.main.loop.iter.check251

vector.main.loop.iter.check251:                   ; preds = %vector.memcheck239
  %min.iters.check252 = icmp ult i64 %i.ek, 32
  br i1 %min.iters.check252, label %vec.epilog.ph269, label %vector.ph253

vector.ph253:                                     ; preds = %vector.main.loop.iter.check251
  %i.en = and i64 %i.ek, 24
  %n.vec254 = and i64 %i.ek, -32                  ; 5 uses
  %i.eo = getelementptr i8, ptr %i.dv, i64 %n.vec254 ; 2 uses
  %i.ep = sub nsw i64 %i.eh, %n.vec254
  %invariant.gep308 = getelementptr i8, ptr %i.b, i64 %i.eh
  br label %vector.body255

vector.body255:                                   ; preds = %vector.ph253, %vector.body255
  %index256 = phi i64 [ 0, %vector.ph253 ], [ %index.next262, %vector.body255 ] ; 3 uses
  %next.gep257 = getelementptr i8, ptr %i.dv, i64 %index256 ; 2 uses
  %i.eq = xor i64 %index256, -1
  %gep309 = getelementptr i8, ptr %invariant.gep308, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %gep309, i64 -15
  %i.es = getelementptr i8, ptr %gep309, i64 -31
  %wide.load258 = load <16 x i8>, ptr %i.er, align 1, !alias.scope !61
  %wide.load259 = load <16 x i8>, ptr %i.es, align 1, !alias.scope !61
  %reverse260 = shufflevector <16 x i8> %wide.load258, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse261 = shufflevector <16 x i8> %wide.load259, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.et = getelementptr i8, ptr %next.gep257, i64 16
  store <16 x i8> %reverse260, ptr %next.gep257, align 1, !alias.scope !62, !noalias !61
  store <16 x i8> %reverse261, ptr %i.et, align 1, !alias.scope !62, !noalias !61
  %index.next262 = add nuw i64 %index256, 32      ; 2 uses
  %i.eu = icmp eq i64 %index.next262, %n.vec254
  br i1 %i.eu, label %middle.block263, label %vector.body255, !llvm.loop !52

middle.block263:                                  ; preds = %vector.body255
  %cmp.n264 = icmp eq i64 %i.ek, %n.vec254
  br i1 %cmp.n264, label %ip_write_num.exit.3, label %vec.epilog.iter.check266

vec.epilog.iter.check266:                         ; preds = %middle.block263
  %min.epilog.iters.check268 = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check268, label %.lr.ph.i.3.preheader, label %vec.epilog.ph269, !prof !56

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check251, %vec.epilog.iter.check266
  %vec.epilog.resume.val270 = phi i64 [ %n.vec254, %vec.epilog.iter.check266 ], [ 0, %vector.main.loop.iter.check251 ]
  %n.vec271 = and i64 %i.ek, -8                   ; 4 uses
  %i.ev = getelementptr i8, ptr %i.dv, i64 %n.vec271 ; 2 uses
  %i.ew = sub nsw i64 %i.eh, %n.vec271
  %invariant.gep310 = getelementptr i8, ptr %i.b, i64 %i.eh
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph269
  %index273 = phi i64 [ %vec.epilog.resume.val270, %vec.epilog.ph269 ], [ %index.next277, %vec.epilog.vector.body272 ] ; 3 uses
  %next.gep274 = getelementptr i8, ptr %i.dv, i64 %index273
  %i.ex = xor i64 %index273, -1
  %gep311 = getelementptr i8, ptr %invariant.gep310, i64 %i.ex
  %i.ey = getelementptr i8, ptr %gep311, i64 -7
  %wide.load275 = load <8 x i8>, ptr %i.ey, align 1, !alias.scope !61
  %reverse276 = shufflevector <8 x i8> %wide.load275, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse276, ptr %next.gep274, align 1, !alias.scope !62, !noalias !61
  %index.next277 = add nuw i64 %index273, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next277, %n.vec271
  br i1 %i.ez, label %vec.epilog.middle.block278, label %vec.epilog.vector.body272, !llvm.loop !53

vec.epilog.middle.block278:                       ; preds = %vec.epilog.vector.body272
  %cmp.n279 = icmp eq i64 %i.ek, %n.vec271
  br i1 %cmp.n279, label %ip_write_num.exit.3, label %.lr.ph.i.3.preheader

.lr.ph.i.3.preheader:                             ; preds = %iter.check265, %vector.memcheck239, %vec.epilog.iter.check266, %vec.epilog.middle.block278
  %.5.3.ph = phi ptr [ %i.dv, %iter.check265 ], [ %i.dv, %vector.memcheck239 ], [ %i.eo, %vec.epilog.iter.check266 ], [ %i.ev, %vec.epilog.middle.block278 ]
  %indvars.iv16.i.3.ph = phi i64 [ %i.eh, %iter.check265 ], [ %i.eh, %vector.memcheck239 ], [ %i.ep, %vec.epilog.iter.check266 ], [ %i.ew, %vec.epilog.middle.block278 ]
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

ip_write_num.exit.3:                              ; preds = %.lr.ph.i.3, %middle.block263, %vec.epilog.middle.block278, %.preheader.i.3
  %.6.3 = phi ptr [ %i.dv, %.preheader.i.3 ], [ %i.ev, %vec.epilog.middle.block278 ], [ %i.eo, %middle.block263 ], [ %i.fc, %.lr.ph.i.3 ]
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
