Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@wc_EncodeRsaPssAlgoId:bb.a
  %.not5.2.i.i.i.i.i = icmp samesign ult i32 %i.k, 256
  %i.n = select i1 %.not5.2.i.i.i.i.i, i32 3, i32 4
  %.0.i.i.i.ph = select i1 %.not5.1.i.i.i.i.i, i32 %i.n, i32 5
  %i.o = add nuw nsw i32 %i.k, 11
  br label %bb.s

SetExplicit.exit:                                 ; preds = %bb.r, %bb.q
  %.0.i.i.i = phi i32 [ 2, %bb.q ], [ 6, %bb.r ]  ; 2 uses
  %i.p = add i32 %i.k, 11                         ; 3 uses
  %i.q = icmp ult i32 %i.p, 128
  br i1 %i.q, label %SetSequence.exit, label %bb.s

bb.s:                                             ; preds = %SetExplicit.exit.thread, %SetExplicit.exit
  %i.r = phi i32 [ %i.o, %SetExplicit.exit.thread ], [ %i.p, %SetExplicit.exit ] ; 6 uses
  %.0.i.i.i367 = phi i32 [ %.0.i.i.i.ph, %SetExplicit.exit.thread ], [ %.0.i.i.i, %SetExplicit.exit ] ; 3 uses
  %.not5.i.i.i.i.i132 = icmp ult i32 %i.r, 16777216
  br i1 %.not5.i.i.i.i.i132, label %bb.t, label %SetSequence.exit

bb.t:                                             ; preds = %bb.s
  %.not5.1.i.i.i.i.i137 = icmp samesign ult i32 %i.r, 65536
  br i1 %.not5.1.i.i.i.i.i137, label %bb.u, label %SetSequence.exit

bb.u:                                             ; preds = %bb.t
  %.not5.2.i.i.i.i.i138 = icmp samesign ult i32 %i.r, 256
  %i.s = select i1 %.not5.2.i.i.i.i.i138, i32 3, i32 4
  br label %SetSequence.exit

SetSequence.exit:                                 ; preds = %bb.s, %bb.t, %bb.u, %SetExplicit.exit
  %i.t = phi i1 [ true, %SetExplicit.exit ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.t ] ; 2 uses
  %i.u = phi i32 [ %i.p, %SetExplicit.exit ], [ %i.r, %bb.s ], [ %i.r, %bb.u ], [ %i.r, %bb.t ] ; 4 uses
  %.0.i.i.i368 = phi i32 [ %.0.i.i.i, %SetExplicit.exit ], [ %.0.i.i.i367, %bb.s ], [ %.0.i.i.i367, %bb.u ], [ %.0.i.i.i367, %bb.t ]
  %.0.i.i.i136 = phi i32 [ 2, %SetExplicit.exit ], [ 6, %bb.s ], [ %i.s, %bb.u ], [ 5, %bb.t ]
  %i.v = add i32 %.0.i.i.i136, %i.u               ; 5 uses
  %i.w = icmp ult i32 %i.v, 128
  br i1 %i.w, label %SetExplicit.exit146, label %bb.v

bb.v:                                             ; preds = %SetSequence.exit
  %.not5.i.i.i.i.i139 = icmp ult i32 %i.v, 16777216
  br i1 %.not5.i.i.i.i.i139, label %bb.w, label %SetExplicit.exit146

bb.w:                                             ; preds = %bb.v
  %.not5.1.i.i.i.i.i144 = icmp samesign ult i32 %i.v, 65536
  br i1 %.not5.1.i.i.i.i.i144, label %bb.x, label %SetExplicit.exit146

bb.x:                                             ; preds = %bb.w
  %.not5.2.i.i.i.i.i145 = icmp samesign ult i32 %i.v, 256
  %i.x = select i1 %.not5.2.i.i.i.i.i145, i32 3, i32 4
  br label %SetExplicit.exit146

SetExplicit.exit146:                              ; preds = %bb.v, %bb.w, %bb.x, %SetSequence.exit
  %.0.i.i.i143 = phi i32 [ 2, %SetSequence.exit ], [ 6, %bb.v ], [ %i.x, %bb.x ], [ 5, %bb.w ]
  %i.y = trunc nuw i32 %1 to i8                   ; 2 uses
  %.not18.i = icmp slt i8 %i.y, 0                 ; 2 uses
  %.lobit = lshr i32 %1, 7
  %i.z = select i1 %.not18.i, i32 11, i32 10
  %i.aa = add i32 %i.z, %i.k
  %i.ab = add i32 %i.aa, %.0.i.i.i368
  %i.ac = add i32 %i.ab, %i.v
  %i.ad = add i32 %i.ac, %.0.i.i.i143             ; 15 uses
  %i.ae = icmp ult i32 %i.ad, 128                 ; 3 uses
  br i1 %i.ae, label %SetSequence.exit173, label %bb.y

bb.y:                                             ; preds = %SetExplicit.exit146
  %.not5.i.i.i.i.i166 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i.i.i.i166, label %bb.z, label %SetSequence.exit173

bb.z:                                             ; preds = %bb.y
  %.not5.1.i.i.i.i.i171 = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i171, label %bb.aa, label %SetSequence.exit173

bb.aa:                                            ; preds = %bb.z
  %.not5.2.i.i.i.i.i172 = icmp samesign ult i32 %i.ad, 256
  %i.af = select i1 %.not5.2.i.i.i.i.i172, i32 3, i32 4
  br label %SetSequence.exit173

SetSequence.exit173:                              ; preds = %bb.y, %bb.z, %bb.aa, %SetExplicit.exit146
  %.0.i.i.i170 = phi i32 [ 2, %SetExplicit.exit146 ], [ 6, %bb.y ], [ %i.af, %bb.aa ], [ 5, %bb.z ]
  %i.ag = add i32 %.0.i.i.i170, %i.ad             ; 2 uses
  %i.ah = add i32 %i.ag, 11                       ; 4 uses
  %i.ai = icmp ult i32 %i.ah, 128
  br i1 %i.ai, label %SetSequence.exit181, label %bb.ab

bb.ab:                                            ; preds = %SetSequence.exit173
  %.not5.i.i.i.i.i174 = icmp ult i32 %i.ah, 16777216
  br i1 %.not5.i.i.i.i.i174, label %bb.ac, label %SetSequence.exit181

bb.ac:                                            ; preds = %bb.ab
  %.not5.1.i.i.i.i.i179 = icmp samesign ult i32 %i.ah, 65536
  br i1 %.not5.1.i.i.i.i.i179, label %bb.ad, label %SetSequence.exit181

bb.ad:                                            ; preds = %bb.ac
  %.not5.2.i.i.i.i.i180 = icmp samesign ult i32 %i.ah, 256
  %i.aj = select i1 %.not5.2.i.i.i.i.i180, i32 14, i32 15
  br label %SetSequence.exit181

SetSequence.exit181:                              ; preds = %bb.ab, %bb.ac, %bb.ad, %SetSequence.exit173
  %.0.i.i.i178 = phi i32 [ 13, %SetSequence.exit173 ], [ 17, %bb.ab ], [ %i.aj, %bb.ad ], [ 16, %bb.ac ]
  %i.ak = add i32 %.0.i.i.i178, %i.ag             ; 2 uses
  br i1 %.not, label %bb.ae, label %bb.ax

bb.ae:                                            ; preds = %SetSequence.exit181
  %i.al = icmp ult i32 %3, %i.ak
  %i.am = icmp ugt i32 %i.k, 128
  %or.cond131 = or i1 %i.am, %i.al
  br i1 %or.cond131, label %bb.ax, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ae, label %.thread.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not5.i.i.i.i.i183 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i.i.i.i183, label %bb.ah, label %.thread.i.i

bb.ah:                                            ; preds = %bb.ag
  %.not5.1.i.i.i.i.i188 = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i188, label %bb.ai, label %.thread.i.i

bb.ai:                                            ; preds = %bb.ah
  %.not5.2.i.i.i.i.i189 = icmp samesign ult i32 %i.ad, 256
  %i.an = select i1 %.not5.2.i.i.i.i.i189, i32 3, i32 4
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.af
  %.0.i.i.i187 = phi i32 [ 2, %bb.af ], [ 6, %bb.ag ], [ %i.an, %bb.ai ], [ 5, %bb.ah ]
  %i.ao = add nuw nsw i32 %i.ad, 11
  %i.ap = add nuw nsw i32 %i.ao, %.0.i.i.i187     ; 7 uses
  store i8 48, ptr %2, align 1, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.ar = icmp ult i32 %i.ap, 128
  br i1 %i.ar, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread.i.i
  %i.as = trunc nuw nsw i32 %i.ap to i8
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !15
  br label %.thread.i.i201

bb.ak:                                            ; preds = %.thread.i.i
  %.not5.i.i.i.i.i191 = icmp ult i32 %i.ap, 16777216
  br i1 %.not5.i.i.i.i.i191, label %bb.al, label %iter.check

bb.al:                                            ; preds = %bb.ak
  %.not5.1.i.i.i.i.i196 = icmp samesign ult i32 %i.ap, 65536
  br i1 %.not5.1.i.i.i.i.i196, label %bb.am, label %iter.check

bb.am:                                            ; preds = %bb.al
  %.not5.2.i.i.i.i.i197 = icmp samesign ult i32 %i.ap, 256
  %i.at = select i1 %.not5.2.i.i.i.i.i197, i8 1, i8 2
  br label %iter.check

iter.check:                                       ; preds = %bb.ak, %bb.al, %bb.am
  %.0.lcssa.i.i.i.i.i193 = phi i8 [ 4, %bb.ak ], [ %i.at, %bb.am ], [ 3, %bb.al ] ; 6 uses
  %i.au = or disjoint i8 %.0.lcssa.i.i.i.i.i193, -128
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !15
  %i.av = zext nneg i8 %.0.lcssa.i.i.i.i.i193 to i64 ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i193, 4
  br i1 %min.iters.check, label %.split.i.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert378 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i193, i64 0
  %broadcast.splat379 = shufflevector <4 x i8> %broadcast.splatinsert378, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aw = add nsw <4 x i8> %broadcast.splat379, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert376 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat377 = shufflevector <4 x i32> %broadcast.splatinsert376, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec375 = and i64 %i.av, 4                    ; 3 uses
  %i.ax = trunc nuw nsw i64 %n.vec375 to i8
  %i.ay = sub nsw i8 %.0.lcssa.i.i.i.i.i193, %i.ax
  %i.az = or disjoint i64 %n.vec375, 1            ; 2 uses
  %i.ba = zext <4 x i8> %i.aw to <4 x i32>
  %i.bb = shl nuw nsw <4 x i32> %i.ba, splat (i32 3)
  %i.bc = add nsw <4 x i32> %i.bb, splat (i32 -8)
  %i.bd = lshr <4 x i32> %broadcast.splat377, %i.bc
  %i.be = trunc <4 x i32> %i.bd to <4 x i8>
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <4 x i8> %i.be, ptr %i.bf, align 1, !tbaa !15
  %cmp.n384 = icmp eq i64 %n.vec375, %i.av
  br i1 %cmp.n384, label %.loopexit.loopexit30.i.i.i.i, label %.split.i.i.i.i.preheader

.split.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.az, %vec.epilog.vector.body ]
  %.029.i.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i.i193, %iter.check ], [ %i.ay, %vec.epilog.vector.body ]
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i.preheader, %.split.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i.i = phi i8 [ %i.bm, %.split.i.i.i.i ], [ %.029.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %i.bg = zext i8 %.029.i.i.i.i to i32
  %i.bh = shl nuw nsw i32 %i.bg, 3
  %i.bi = add nsw i32 %i.bh, -8
  %i.bj = lshr i32 %i.ap, %i.bi
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i.i.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.bm = add nsw i8 %.029.i.i.i.i, -1            ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not26.i.i.i.i, label %.loopexit.loopexit30.i.i.i.i, label %.split.i.i.i.i, !llvm.loop !173

.loopexit.loopexit30.i.i.i.i:                     ; preds = %.split.i.i.i.i, %vec.epilog.vector.body
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %i.az, %vec.epilog.vector.body ], [ %indvars.iv.next.i.i.i.i, %.split.i.i.i.i ]
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  %i.bo = add nuw i32 %i.bn, 1
  br label %.thread.i.i201

.thread.i.i201:                                   ; preds = %.loopexit.loopexit30.i.i.i.i, %bb.aj
  %.0.i.i.i194 = phi i32 [ %i.bo, %.loopexit.loopexit30.i.i.i.i ], [ 2, %bb.aj ] ; 3 uses
  %i.bp = zext i32 %.0.i.i.i194 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp ; 2 uses
  store i8 6, ptr %i.bq, align 1, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 9, ptr %i.br, align 1, !tbaa !15
  %i.bs = add i32 %.0.i.i.i194, 2
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bu, ptr noundef nonnull align 1 dereferenceable(9) @sigRsaSsaPssOid, i64 9, i1 false)
  %i.bv = add i32 %.0.i.i.i194, 11                ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.bw ; 3 uses
  store i8 48, ptr %i.bx, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  br i1 %i.ae, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread.i.i201
  %i.bz = trunc nuw nsw i32 %i.ad to i8
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !15
  br label %.thread.i.i218

bb.ao:                                            ; preds = %.thread.i.i201
  %.not5.i.i.i.i.i202 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i.i.i.i202, label %bb.ap, label %iter.check405

bb.ap:                                            ; preds = %bb.ao
  %.not5.1.i.i.i.i.i214 = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i214, label %bb.aq, label %iter.check405

bb.aq:                                            ; preds = %bb.ap
  %.not5.2.i.i.i.i.i215 = icmp samesign ult i32 %i.ad, 256
  %i.ca = select i1 %.not5.2.i.i.i.i.i215, i8 1, i8 2
  br label %iter.check405

iter.check405:                                    ; preds = %bb.ao, %bb.ap, %bb.aq
  %.0.lcssa.i.i.i.i.i204 = phi i8 [ 4, %bb.ao ], [ %i.ca, %bb.aq ], [ 3, %bb.ap ] ; 6 uses
  %i.cb = or disjoint i8 %.0.lcssa.i.i.i.i.i204, -128
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !15
  %i.cc = zext nneg i8 %.0.lcssa.i.i.i.i.i204 to i64 ; 2 uses
  %min.iters.check387 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i204, 4
  br i1 %min.iters.check387, label %.split.i.i.i.i205.preheader, label %vec.epilog.vector.body415

vec.epilog.vector.body415:                        ; preds = %iter.check405
  %broadcast.splatinsert413 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i204, i64 0
  %broadcast.splat414 = shufflevector <4 x i8> %broadcast.splatinsert413, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cd = add nsw <4 x i8> %broadcast.splat414, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert411 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat412 = shufflevector <4 x i32> %broadcast.splatinsert411, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec410 = and i64 %i.cc, 4                    ; 3 uses
  %i.ce = trunc nuw nsw i64 %n.vec410 to i8
  %i.cf = sub nsw i8 %.0.lcssa.i.i.i.i.i204, %i.ce
  %i.cg = or disjoint i64 %n.vec410, 1            ; 2 uses
  %i.ch = zext <4 x i8> %i.cd to <4 x i32>
  %i.ci = shl nuw nsw <4 x i32> %i.ch, splat (i32 3)
  %i.cj = add nsw <4 x i32> %i.ci, splat (i32 -8)
  %i.ck = lshr <4 x i32> %broadcast.splat412, %i.cj
  %i.cl = trunc <4 x i32> %i.ck to <4 x i8>
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store <4 x i8> %i.cl, ptr %i.cm, align 1, !tbaa !15
  %cmp.n421 = icmp eq i64 %n.vec410, %i.cc
  br i1 %cmp.n421, label %.loopexit.loopexit30.i.i.i.i210, label %.split.i.i.i.i205.preheader

.split.i.i.i.i205.preheader:                      ; preds = %iter.check405, %vec.epilog.vector.body415
  %indvars.iv.i.i.i.i206.ph = phi i64 [ 1, %iter.check405 ], [ %i.cg, %vec.epilog.vector.body415 ]
  %.029.i.i.i.i207.ph = phi i8 [ %.0.lcssa.i.i.i.i.i204, %iter.check405 ], [ %i.cf, %vec.epilog.vector.body415 ]
  br label %.split.i.i.i.i205

.split.i.i.i.i205:                                ; preds = %.split.i.i.i.i205.preheader, %.split.i.i.i.i205
  %indvars.iv.i.i.i.i206 = phi i64 [ %indvars.iv.next.i.i.i.i208, %.split.i.i.i.i205 ], [ %indvars.iv.i.i.i.i206.ph, %.split.i.i.i.i205.preheader ] ; 2 uses
  %.029.i.i.i.i207 = phi i8 [ %i.ct, %.split.i.i.i.i205 ], [ %.029.i.i.i.i207.ph, %.split.i.i.i.i205.preheader ] ; 2 uses
  %i.cn = zext i8 %.029.i.i.i.i207 to i32
  %i.co = shl nuw nsw i32 %i.cn, 3
  %i.cp = add nsw i32 %i.co, -8
  %i.cq = lshr i32 %i.ad, %i.cp
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv.i.i.i.i206
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i208 = add nuw nsw i64 %indvars.iv.i.i.i.i206, 1 ; 2 uses
  %i.ct = add nsw i8 %.029.i.i.i.i207, -1         ; 2 uses
  %.not26.i.i.i.i209 = icmp eq i8 %i.ct, 0
  br i1 %.not26.i.i.i.i209, label %.loopexit.loopexit30.i.i.i.i210, label %.split.i.i.i.i205, !llvm.loop !174

.loopexit.loopexit30.i.i.i.i210:                  ; preds = %.split.i.i.i.i205, %vec.epilog.vector.body415
  %indvars.iv.next.i.i.i.i208.lcssa = phi i64 [ %i.cg, %vec.epilog.vector.body415 ], [ %indvars.iv.next.i.i.i.i208, %.split.i.i.i.i205 ]
  %i.cu = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i208.lcssa to i32
  %i.cv = add nuw i32 %i.cu, 1
  br label %.thread.i.i218

.thread.i.i218:                                   ; preds = %.loopexit.loopexit30.i.i.i.i210, %bb.an
  %.0.i.i.i211 = phi i32 [ %i.cv, %.loopexit.loopexit30.i.i.i.i210 ], [ 2, %bb.an ]
  %i.cw = add i32 %.0.i.i.i211, %i.bv             ; 2 uses
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cx ; 3 uses
  store i8 -96, ptr %i.cy, align 1, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = trunc nuw i32 %i.k to i8                ; 2 uses
  br i1 %i.m, label %SetExplicit.exit233, label %.split.i.i.i.i222

.split.i.i.i.i222:                                ; preds = %.thread.i.i218
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store i8 %i.da, ptr %i.db, align 1, !tbaa !15
  br label %SetExplicit.exit233

SetExplicit.exit233:                              ; preds = %.thread.i.i218, %.split.i.i.i.i222
  %.sink = phi i8 [ -127, %.split.i.i.i.i222 ], [ %i.da, %.thread.i.i218 ]
  %.0.i.i.i228 = phi i32 [ 3, %.split.i.i.i.i222 ], [ 2, %.thread.i.i218 ]
  store i8 %.sink, ptr %i.cz, align 1, !tbaa !15
  %i.dc = add i32 %.0.i.i.i228, %i.cw             ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.dd
  %i.df = zext nneg i32 %i.k to i64               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull align 16 %i.b, i64 %i.df, i1 false)
  %i.dg = add i32 %i.dc, %i.k                     ; 2 uses
  %.0.i.i.i240 = select i1 %i.t, i32 2, i32 3
  %i.dh = add nuw nsw i32 %.0.i.i.i240, %i.u      ; 7 uses
  %i.di = zext i32 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di ; 3 uses
  store i8 -95, ptr %i.dj, align 1, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1 ; 3 uses
  %i.dl = icmp ult i32 %i.dh, 128
  br i1 %i.dl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %SetExplicit.exit233
  %i.dm = trunc nuw nsw i32 %i.dh to i8
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !15
  br label %.thread.i.i262

bb.as:                                            ; preds = %SetExplicit.exit233
  %.not5.i.i.i.i.i246 = icmp ult i32 %i.dh, 16777216
  br i1 %.not5.i.i.i.i.i246, label %bb.at, label %iter.check442

bb.at:                                            ; preds = %bb.as
  %.not5.1.i.i.i.i.i258 = icmp samesign ult i32 %i.dh, 65536
  br i1 %.not5.1.i.i.i.i.i258, label %bb.au, label %iter.check442

bb.au:                                            ; preds = %bb.at
  %.not5.2.i.i.i.i.i259 = icmp samesign ult i32 %i.dh, 256
  %i.dn = select i1 %.not5.2.i.i.i.i.i259, i8 1, i8 2
  br label %iter.check442

iter.check442:                                    ; preds = %bb.as, %bb.at, %bb.au
  %.0.lcssa.i.i.i.i.i248 = phi i8 [ 4, %bb.as ], [ %i.dn, %bb.au ], [ 3, %bb.at ] ; 6 uses
  %i.do = or disjoint i8 %.0.lcssa.i.i.i.i.i248, -128
  store i8 %i.do, ptr %i.dk, align 1, !tbaa !15
  %i.dp = zext nneg i8 %.0.lcssa.i.i.i.i.i248 to i64 ; 2 uses
  %min.iters.check424 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i248, 4
  br i1 %min.iters.check424, label %.split.i.i.i.i249.preheader, label %vec.epilog.vector.body452

vec.epilog.vector.body452:                        ; preds = %iter.check442
  %broadcast.splatinsert450 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i248, i64 0
  %broadcast.splat451 = shufflevector <4 x i8> %broadcast.splatinsert450, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dq = add nsw <4 x i8> %broadcast.splat451, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert448 = insertelement <4 x i32> poison, i32 %i.dh, i64 0
  %broadcast.splat449 = shufflevector <4 x i32> %broadcast.splatinsert448, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec447 = and i64 %i.dp, 4                    ; 3 uses
  %i.dr = trunc nuw nsw i64 %n.vec447 to i8
  %i.ds = sub nsw i8 %.0.lcssa.i.i.i.i.i248, %i.dr
  %i.dt = or disjoint i64 %n.vec447, 1            ; 2 uses
  %i.du = zext <4 x i8> %i.dq to <4 x i32>
  %i.dv = shl nuw nsw <4 x i32> %i.du, splat (i32 3)
  %i.dw = add nsw <4 x i32> %i.dv, splat (i32 -8)
  %i.dx = lshr <4 x i32> %broadcast.splat449, %i.dw
  %i.dy = trunc <4 x i32> %i.dx to <4 x i8>
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store <4 x i8> %i.dy, ptr %i.dz, align 1, !tbaa !15
  %cmp.n458 = icmp eq i64 %n.vec447, %i.dp
  br i1 %cmp.n458, label %.loopexit.loopexit30.i.i.i.i254, label %.split.i.i.i.i249.preheader

.split.i.i.i.i249.preheader:                      ; preds = %iter.check442, %vec.epilog.vector.body452
  %indvars.iv.i.i.i.i250.ph = phi i64 [ 1, %iter.check442 ], [ %i.dt, %vec.epilog.vector.body452 ]
  %.029.i.i.i.i251.ph = phi i8 [ %.0.lcssa.i.i.i.i.i248, %iter.check442 ], [ %i.ds, %vec.epilog.vector.body452 ]
  br label %.split.i.i.i.i249

.split.i.i.i.i249:                                ; preds = %.split.i.i.i.i249.preheader, %.split.i.i.i.i249
  %indvars.iv.i.i.i.i250 = phi i64 [ %indvars.iv.next.i.i.i.i252, %.split.i.i.i.i249 ], [ %indvars.iv.i.i.i.i250.ph, %.split.i.i.i.i249.preheader ] ; 2 uses
  %.029.i.i.i.i251 = phi i8 [ %i.eg, %.split.i.i.i.i249 ], [ %.029.i.i.i.i251.ph, %.split.i.i.i.i249.preheader ] ; 2 uses
  %i.ea = zext i8 %.029.i.i.i.i251 to i32
  %i.eb = shl nuw nsw i32 %i.ea, 3
  %i.ec = add nsw i32 %i.eb, -8
  %i.ed = lshr i32 %i.dh, %i.ec
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv.i.i.i.i250
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i252 = add nuw nsw i64 %indvars.iv.i.i.i.i250, 1 ; 2 uses
  %i.eg = add nsw i8 %.029.i.i.i.i251, -1         ; 2 uses
  %.not26.i.i.i.i253 = icmp eq i8 %i.eg, 0
  br i1 %.not26.i.i.i.i253, label %.loopexit.loopexit30.i.i.i.i254, label %.split.i.i.i.i249, !llvm.loop !175

.loopexit.loopexit30.i.i.i.i254:                  ; preds = %.split.i.i.i.i249, %vec.epilog.vector.body452
  %indvars.iv.next.i.i.i.i252.lcssa = phi i64 [ %i.dt, %vec.epilog.vector.body452 ], [ %indvars.iv.next.i.i.i.i252, %.split.i.i.i.i249 ]
  %i.eh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i252.lcssa to i32
  %i.ei = add nuw i32 %i.eh, 1
  br label %.thread.i.i262

.thread.i.i262:                                   ; preds = %.loopexit.loopexit30.i.i.i.i254, %bb.ar
  %.0.i.i.i255 = phi i32 [ %i.ei, %.loopexit.loopexit30.i.i.i.i254 ], [ 2, %bb.ar ]
  %i.ej = add i32 %.0.i.i.i255, %i.dg             ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %i.ek ; 3 uses
  store i8 48, ptr %i.el, align 1, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  br i1 %i.t, label %bb.av, label %BytePrecision.exit.i.i.i.i264

bb.av:                                            ; preds = %.thread.i.i262
  %i.en = trunc nuw nsw i32 %i.u to i8
  store i8 %i.en, ptr %i.em, align 1, !tbaa !15
  br label %.split.i

BytePrecision.exit.i.i.i.i264:                    ; preds = %.thread.i.i262
  store i8 -127, ptr %i.em, align 1, !tbaa !15
  %i.eo = trunc i32 %i.u to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !15
  br label %.split.i

.split.i:                                         ; preds = %BytePrecision.exit.i.i.i.i264, %bb.av
  %.0.i.i.i272 = phi i32 [ 3, %BytePrecision.exit.i.i.i.i264 ], [ 2, %bb.av ]
  %i.eq = add i32 %.0.i.i.i272, %i.ej             ; 3 uses
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 %i.er ; 2 uses
  store i8 6, ptr %i.es, align 1, !tbaa !15
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 9, ptr %i.et, align 1, !tbaa !15
  %i.eu = add i32 %i.eq, 2
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ew, ptr noundef nonnull align 1 dereferenceable(9) @wc_EncodeRsaPssAlgoId.mgf1Oid, i64 9, i1 false)
  %i.ex = add i32 %i.eq, 11                       ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ez, ptr nonnull align 16 %i.b, i64 %i.df, i1 false)
  %i.fa = add i32 %i.ex, %i.k                     ; 2 uses
  store i8 2, ptr %i.b, align 16, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.fc = trunc nuw nsw i32 %.lobit to i8
  %i.fd = add nuw nsw i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !15
  br i1 %.not18.i, label %bb.aw, label %SetExplicit.exit336

bb.aw:                                            ; preds = %.split.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.fe, align 2, !tbaa !15
  br label %SetExplicit.exit336

SetExplicit.exit336:                              ; preds = %.split.i, %bb.aw
  %.0.i289 = phi i32 [ 3, %bb.aw ], [ 2, %.split.i ] ; 2 uses
  %i.ff = zext nneg i32 %.0.i289 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ff
  store i8 %i.y, ptr %i.fg, align 1, !tbaa !15
  %i.fh = add nuw nsw i32 %.0.i289, 1             ; 3 uses
  %i.fi = zext i32 %i.fa to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi ; 2 uses
  store i8 -94, ptr %i.fj, align 1, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = trunc nuw nsw i32 %i.fh to i8
  store i8 %i.fl, ptr %i.fk, align 1, !tbaa !15
  %i.fm = add i32 %i.fa, 2                        ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn
  %i.fp = zext nneg i32 %i.fh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.fp, i1 false)
  %i.fq = add i32 %i.fh, %i.fm                    ; 3 uses
  store i8 2, ptr %i.b, align 16, !tbaa !15
  store i8 1, ptr %i.fb, align 1, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 1, ptr %i.fr, align 2, !tbaa !15
  %i.fs = zext i32 %i.fq to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 %i.fs ; 2 uses
  store i8 -93, ptr %i.ft, align 1, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store i8 3, ptr %i.fu, align 1, !tbaa !15
  %i.fv = add i32 %i.fq, 2
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fx, ptr noundef nonnull align 16 dereferenceable(3) %i.b, i64 3, i1 false)
  %i.fy = add i32 %i.fq, 5
  br label %bb.ax

bb.ax:                                            ; preds = %SetAlgoIDImpl.exit.thread, %SetExplicit.exit336, %SetAlgoIDImpl.exit, %SetSequence.exit181, %bb.ae, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.fy, %SetExplicit.exit336 ], [ 0, %SetAlgoIDImpl.exit ], [ 0, %SetAlgoIDImpl.exit.thread ], [ 0, %bb.ae ], [ %i.ak, %SetSequence.exit181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @SetAlgoID(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc i32 @SetAlgoIDImpl(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 2, 1) i32 @SetExplicit(i8 noundef zeroext %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i8 noundef zeroext %3) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i8 %3, 0
  %i.a = icmp ult i32 %1, 128
  %or.cond.i = or i1 %i.a, %.not.i.i
  br i1 %or.cond.i, label %SetHeader.exit, label %bb.e

.thread.i:                                        ; preds = %bb.a
  %i.b = or i8 %0, -96
  store i8 %i.b, ptr %2, align 1, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %.not.i6.i = icmp eq i8 %3, 0
  br i1 %.not.i6.i, label %.thread8.i, label %bb.c

bb.c:                                             ; preds = %.thread.i
  store i8 -128, ptr %i.c, align 1, !tbaa !15
  br label %SetHeader.exit

.thread8.i:                                       ; preds = %.thread.i
  %i.d = icmp ult i32 %1, 128
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread8.i
  %i.e = trunc nuw nsw i32 %1 to i8
  store i8 %i.e, ptr %i.c, align 1, !tbaa !15
  br label %SetHeader.exit

bb.e:                                             ; preds = %.thread8.i, %bb.b
  %i.f = phi ptr [ %i.c, %.thread8.i ], [ null, %bb.b ] ; 3 uses
  %.not5.i.i.i.i = icmp ult i32 %1, 16777216
  br i1 %.not5.i.i.i.i, label %bb.f, label %BytePrecision.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not5.1.i.i.i.i = icmp samesign ult i32 %1, 65536
  br i1 %.not5.1.i.i.i.i, label %bb.g, label %BytePrecision.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %.not5.2.i.i.i.i = icmp samesign ult i32 %1, 256
  %i.g = select i1 %.not5.2.i.i.i.i, i8 1, i8 2
  br label %BytePrecision.exit.i.i.i

BytePrecision.exit.i.i.i:                         ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i = phi i8 [ 4, %bb.e ], [ %i.g, %bb.g ], [ 3, %bb.f ] ; 7 uses
  br i1 %.not.i, label %.split.us.critedge.i.i.i, label %iter.check

iter.check:                                       ; preds = %BytePrecision.exit.i.i.i
  %i.h = or disjoint i8 %.0.lcssa.i.i.i.i, -128
  store i8 %i.h, ptr %i.f, align 1, !tbaa !15
  %i.i = zext nneg i8 %.0.lcssa.i.i.i.i to i64    ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i, 4
  br i1 %min.iters.check, label %.split.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert11 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i, i64 0
  %broadcast.splat12 = shufflevector <4 x i8> %broadcast.splatinsert11, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.j = add nsw <4 x i8> %broadcast.splat12, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert9 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat10 = shufflevector <4 x i32> %broadcast.splatinsert9, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec8 = and i64 %i.i, 4                       ; 3 uses
  %i.k = trunc nuw nsw i64 %n.vec8 to i8
  %i.l = sub nsw i8 %.0.lcssa.i.i.i.i, %i.k
  %i.m = or disjoint i64 %n.vec8, 1               ; 2 uses
  %i.n = zext <4 x i8> %i.j to <4 x i32>
  %i.o = shl nuw nsw <4 x i32> %i.n, splat (i32 3)
  %i.p = add nsw <4 x i32> %i.o, splat (i32 -8)
  %i.q = lshr <4 x i32> %broadcast.splat10, %i.p
  %i.r = trunc <4 x i32> %i.q to <4 x i8>
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store <4 x i8> %i.r, ptr %i.s, align 1, !tbaa !15
  %cmp.n17 = icmp eq i64 %n.vec8, %i.i
  br i1 %cmp.n17, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i.preheader

.split.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.m, %vec.epilog.vector.body ]
  %.029.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i, %iter.check ], [ %i.l, %vec.epilog.vector.body ]
  br label %.split.i.i.i

.split.us.critedge.i.i.i:                         ; preds = %BytePrecision.exit.i.i.i
  %narrow.i.i.i = add nuw nsw i8 %.0.lcssa.i.i.i.i, 1
  %i.t = zext nneg i8 %narrow.i.i.i to i32
  br label %SetHeader.exit

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.split.i.i.i ], [ %indvars.iv.i.i.i.ph, %.split.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i = phi i8 [ %i.aa, %.split.i.i.i ], [ %.029.i.i.i.ph, %.split.i.i.i.preheader ] ; 2 uses
  %i.u = zext i8 %.029.i.i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 3
  %i.w = add nsw i32 %i.v, -8
  %i.x = lshr i32 %1, %i.w
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !15
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aa = add nsw i8 %.029.i.i.i, -1              ; 2 uses
  %.not26.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not26.i.i.i, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i, !llvm.loop !176
end_hunk_0
begin_hunk_1_@wc_EncryptPKCS8Key_ex:bb.a
OidFromId.exit164:                                ; preds = %switch.lookup, %bb.i
  %.2485 = phi i32 [ 0, %bb.i ], [ 8, %switch.lookup ] ; 2 uses
  %i.w = phi ptr [ null, %bb.i ], [ %switch.load, %switch.lookup ]
  %i.x = add i32 %i.q, 4
  %i.y = add i32 %i.x, %.2485
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %OidFromId.exit164
  %.0 = phi i32 [ %.2485, %OidFromId.exit164 ], [ 0, %bb.h ] ; 3 uses
  %.1135 = phi i32 [ %i.y, %OidFromId.exit164 ], [ %i.q, %bb.h ] ; 12 uses
  %.0127 = phi ptr [ %i.w, %OidFromId.exit164 ], [ null, %bb.h ]
  %i.z = add i32 %.1135, 13                       ; 7 uses
  %i.aa = add i32 %.1135, 59                      ; 8 uses
  %i.ab = call i32 @wc_RNG_GenerateBlock(ptr noundef %13, ptr noundef nonnull %i.b, i32 noundef 16) #24 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %.thread758

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %i.j, %1                        ; 13 uses
  %i.ae = icmp ult i32 %i.ad, 128
  br i1 %i.ae, label %SetLength.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not5.i.i165 = icmp ult i32 %i.ad, 16777216
  br i1 %.not5.i.i165, label %SetLength.exit.thread, label %SetLength.exit.thread.thread

SetLength.exit.thread:                            ; preds = %bb.l
  %.not5.1.i.i167 = icmp samesign ult i32 %i.ad, 65536
  %.not5.2.i.i168 = icmp samesign ult i32 %i.ad, 256
  %i.af = select i1 %.not5.2.i.i168, i32 2, i32 3
  %.0.lcssa.i.i = select i1 %.not5.1.i.i167, i32 %i.af, i32 4
  %i.ag = add nuw nsw i32 %i.ad, 3
  %i.ah = add i32 %i.ag, %i.aa
  %i.ai = add i32 %i.ah, %.0.lcssa.i.i            ; 3 uses
  %.not159677 = icmp eq ptr %2, null
  br i1 %.not159677, label %bb.m, label %bb.q

SetLength.exit:                                   ; preds = %bb.k
  %i.aj = add nuw nsw i32 %i.ad, 63
  %i.ak = add i32 %i.aj, %.1135                   ; 2 uses
  %.not159 = icmp eq ptr %2, null
  br i1 %.not159, label %bb.m, label %.thread.i.i178

SetLength.exit.thread.thread:                     ; preds = %bb.l
  %op.rdx = add i32 %.1135, 67
  %op.rdx1067 = add i32 %op.rdx, %i.ad            ; 2 uses
  %.not159677791 = icmp eq ptr %2, null
  br i1 %.not159677791, label %bb.m, label %iter.check

bb.m:                                             ; preds = %SetLength.exit.thread.thread, %SetLength.exit.thread, %SetLength.exit
  %i.al = phi i32 [ %i.ai, %SetLength.exit.thread ], [ %i.ak, %SetLength.exit ], [ %op.rdx1067, %SetLength.exit.thread.thread ] ; 5 uses
  %i.am = icmp ult i32 %i.al, 128
  br i1 %i.am, label %BytePrecision.exit.i170, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not5.i.i169 = icmp ult i32 %i.al, 16777216
  br i1 %.not5.i.i169, label %bb.o, label %BytePrecision.exit.i170

bb.o:                                             ; preds = %bb.n
  %.not5.1.i.i174 = icmp samesign ult i32 %i.al, 65536
  br i1 %.not5.1.i.i174, label %bb.p, label %BytePrecision.exit.i170

bb.p:                                             ; preds = %bb.o
  %.not5.2.i.i175 = icmp samesign ult i32 %i.al, 256
  %i.an = select i1 %.not5.2.i.i175, i32 3, i32 4
  br label %BytePrecision.exit.i170

bb.q:                                             ; preds = %SetLength.exit.thread
  %.not5.1.i.i.i.i.i = icmp samesign ult i32 %i.ad, 65536
  br i1 %.not5.1.i.i.i.i.i, label %bb.r, label %iter.check

bb.r:                                             ; preds = %bb.q
  %.not5.2.i.i.i.i.i = icmp samesign ult i32 %i.ad, 256
  %i.ao = select i1 %.not5.2.i.i.i.i.i, i8 1, i8 2
  br label %iter.check

iter.check:                                       ; preds = %SetLength.exit.thread.thread, %bb.q, %bb.r
  %i.ap = phi i32 [ %i.ai, %bb.q ], [ %i.ai, %bb.r ], [ %op.rdx1067, %SetLength.exit.thread.thread ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i8 [ 3, %bb.q ], [ %i.ao, %bb.r ], [ 4, %SetLength.exit.thread.thread ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ar = zext nneg i8 %.0.lcssa.i.i.i.i.i to i64 ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.split.i.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert799 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i, i64 0
  %broadcast.splat800 = shufflevector <4 x i8> %broadcast.splatinsert799, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.as = add nsw <4 x i8> %broadcast.splat800, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert797 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat798 = shufflevector <4 x i32> %broadcast.splatinsert797, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec796 = and i64 %i.ar, 4                    ; 3 uses
  %i.at = trunc nuw nsw i64 %n.vec796 to i8
  %i.au = sub nsw i8 %.0.lcssa.i.i.i.i.i, %i.at
  %i.av = or disjoint i64 %n.vec796, 1
  %i.aw = zext <4 x i8> %i.as to <4 x i32>
  %i.ax = shl nuw nsw <4 x i32> %i.aw, splat (i32 3)
  %i.ay = add nsw <4 x i32> %i.ax, splat (i32 -8)
  %i.az = lshr <4 x i32> %broadcast.splat798, %i.ay
  %i.ba = trunc <4 x i32> %i.az to <4 x i8>
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !15
  %cmp.n805 = icmp eq i64 %n.vec796, %i.ar
  br i1 %cmp.n805, label %.thread.i.i178, label %.split.i.i.i.i.preheader

.split.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.av, %vec.epilog.vector.body ]
  %.029.i.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i.i, %iter.check ], [ %i.au, %vec.epilog.vector.body ]
  br label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.split.i.i.i.i.preheader, %.split.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i.i = phi i8 [ %i.bi, %.split.i.i.i.i ], [ %.029.i.i.i.i.ph, %.split.i.i.i.i.preheader ] ; 2 uses
  %i.bc = zext i8 %.029.i.i.i.i to i32
  %i.bd = shl nuw nsw i32 %i.bc, 3
  %i.be = add nsw i32 %i.bd, -8
  %i.bf = lshr i32 %i.ad, %i.be
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.i.i.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.bi = add nsw i8 %.029.i.i.i.i, -1            ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not26.i.i.i.i, label %.thread.i.i178, label %.split.i.i.i.i, !llvm.loop !178

.thread.i.i178:                                   ; preds = %.split.i.i.i.i, %vec.epilog.vector.body, %SetLength.exit
  %i.bj = phi i32 [ %i.ak, %SetLength.exit ], [ %i.ap, %vec.epilog.vector.body ], [ %i.ap, %.split.i.i.i.i ] ; 8 uses
  store i8 48, ptr %2, align 1, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.bl = icmp ult i32 %i.bj, 128
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread.i.i178
  %i.bm = trunc nuw nsw i32 %i.bj to i8
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !15
  br label %SetSequence.exit

bb.t:                                             ; preds = %.thread.i.i178
  %.not5.i.i.i.i.i179 = icmp ult i32 %i.bj, 16777216
  br i1 %.not5.i.i.i.i.i179, label %bb.u, label %iter.check826

bb.u:                                             ; preds = %bb.t
  %.not5.1.i.i.i.i.i191 = icmp samesign ult i32 %i.bj, 65536
  br i1 %.not5.1.i.i.i.i.i191, label %bb.v, label %iter.check826

bb.v:                                             ; preds = %bb.u
  %.not5.2.i.i.i.i.i192 = icmp samesign ult i32 %i.bj, 256
  %i.bn = select i1 %.not5.2.i.i.i.i.i192, i8 1, i8 2
  br label %iter.check826

iter.check826:                                    ; preds = %bb.t, %bb.u, %bb.v
  %.0.lcssa.i.i.i.i.i181 = phi i8 [ 4, %bb.t ], [ %i.bn, %bb.v ], [ 3, %bb.u ] ; 6 uses
  %i.bo = or disjoint i8 %.0.lcssa.i.i.i.i.i181, -128
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !15
  %i.bp = zext nneg i8 %.0.lcssa.i.i.i.i.i181 to i64 ; 2 uses
  %min.iters.check808 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i181, 4
  br i1 %min.iters.check808, label %.split.i.i.i.i182.preheader, label %vec.epilog.vector.body836

vec.epilog.vector.body836:                        ; preds = %iter.check826
  %broadcast.splatinsert834 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i181, i64 0
  %broadcast.splat835 = shufflevector <4 x i8> %broadcast.splatinsert834, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bq = add nsw <4 x i8> %broadcast.splat835, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert832 = insertelement <4 x i32> poison, i32 %i.bj, i64 0
  %broadcast.splat833 = shufflevector <4 x i32> %broadcast.splatinsert832, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec831 = and i64 %i.bp, 4                    ; 3 uses
  %i.br = trunc nuw nsw i64 %n.vec831 to i8
  %i.bs = sub nsw i8 %.0.lcssa.i.i.i.i.i181, %i.br
  %i.bt = or disjoint i64 %n.vec831, 1            ; 2 uses
  %i.bu = zext <4 x i8> %i.bq to <4 x i32>
  %i.bv = shl nuw nsw <4 x i32> %i.bu, splat (i32 3)
  %i.bw = add nsw <4 x i32> %i.bv, splat (i32 -8)
  %i.bx = lshr <4 x i32> %broadcast.splat833, %i.bw
  %i.by = trunc <4 x i32> %i.bx to <4 x i8>
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 2
  store <4 x i8> %i.by, ptr %i.bz, align 1, !tbaa !15
  %cmp.n842 = icmp eq i64 %n.vec831, %i.bp
  br i1 %cmp.n842, label %.loopexit.loopexit30.i.i.i.i187, label %.split.i.i.i.i182.preheader

.split.i.i.i.i182.preheader:                      ; preds = %iter.check826, %vec.epilog.vector.body836
  %indvars.iv.i.i.i.i183.ph = phi i64 [ 1, %iter.check826 ], [ %i.bt, %vec.epilog.vector.body836 ]
  %.029.i.i.i.i184.ph = phi i8 [ %.0.lcssa.i.i.i.i.i181, %iter.check826 ], [ %i.bs, %vec.epilog.vector.body836 ]
  br label %.split.i.i.i.i182

.split.i.i.i.i182:                                ; preds = %.split.i.i.i.i182.preheader, %.split.i.i.i.i182
  %indvars.iv.i.i.i.i183 = phi i64 [ %indvars.iv.next.i.i.i.i185, %.split.i.i.i.i182 ], [ %indvars.iv.i.i.i.i183.ph, %.split.i.i.i.i182.preheader ] ; 2 uses
  %.029.i.i.i.i184 = phi i8 [ %i.cg, %.split.i.i.i.i182 ], [ %.029.i.i.i.i184.ph, %.split.i.i.i.i182.preheader ] ; 2 uses
  %i.ca = zext i8 %.029.i.i.i.i184 to i32
  %i.cb = shl nuw nsw i32 %i.ca, 3
  %i.cc = add nsw i32 %i.cb, -8
  %i.cd = lshr i32 %i.bj, %i.cc
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.i.i.i.i183
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i185 = add nuw nsw i64 %indvars.iv.i.i.i.i183, 1 ; 2 uses
  %i.cg = add nsw i8 %.029.i.i.i.i184, -1         ; 2 uses
  %.not26.i.i.i.i186 = icmp eq i8 %i.cg, 0
  br i1 %.not26.i.i.i.i186, label %.loopexit.loopexit30.i.i.i.i187, label %.split.i.i.i.i182, !llvm.loop !179

.loopexit.loopexit30.i.i.i.i187:                  ; preds = %.split.i.i.i.i182, %vec.epilog.vector.body836
  %indvars.iv.next.i.i.i.i185.lcssa = phi i64 [ %i.bt, %vec.epilog.vector.body836 ], [ %indvars.iv.next.i.i.i.i185, %.split.i.i.i.i182 ]
  %i.ch = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i185.lcssa to i32
  %i.ci = add nuw i32 %i.ch, 1
  br label %SetSequence.exit

SetSequence.exit:                                 ; preds = %bb.s, %.loopexit.loopexit30.i.i.i.i187
  %.0.i.i.i188 = phi i32 [ %i.ci, %.loopexit.loopexit30.i.i.i.i187 ], [ 2, %bb.s ] ; 3 uses
  %i.cj = sub i32 %i.bj, %i.ad
  %i.ck = add i32 %i.cj, %.0.i.i.i188
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cl ; 3 uses
  %i.cn = zext i32 %1 to i64                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 1 %0, i64 %i.cn, i1 false)
  %.not158 = icmp eq i32 %i.j, 0
  br i1 %.not158, label %bb.x, label %bb.w

bb.w:                                             ; preds = %SetSequence.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  %i.cp = trunc nuw nsw i32 %i.j to i8
  %i.cq = zext nneg i32 %i.j to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 %i.cp, i64 %i.cq, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %SetSequence.exit
  %.0143 = phi i32 [ %i.ad, %bb.w ], [ %1, %SetSequence.exit ] ; 9 uses
  br i1 %or.cond5, label %bb.y, label %.thread729

BytePrecision.exit.i170:                          ; preds = %bb.n, %bb.o, %bb.p, %bb.m
  %.1.i173 = phi i32 [ 2, %bb.m ], [ 6, %bb.n ], [ %i.an, %bb.p ], [ 5, %bb.o ]
  %i.cr = add i32 %.1.i173, %i.al
  store i32 %i.cr, ptr %3, align 4, !tbaa !26
  br label %.thread758

bb.y:                                             ; preds = %bb.x
  %i.cs = call i32 @wc_RNG_GenerateBlock(ptr noundef %13, ptr noundef nonnull %i.a, i32 noundef 8) #24 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.thread729, label %.thread758

.thread729:                                       ; preds = %bb.x, %bb.y
  %.1147.ph732 = phi ptr [ %i.a, %bb.y ], [ %9, %bb.x ] ; 2 uses
  %i.cu = call i32 @wc_CryptKey(ptr noundef nonnull %4, i32 noundef %5, ptr noundef nonnull %.1147.ph732, i32 noundef %spec.select161, i32 noundef %11, i32 noundef %.0499536, ptr noundef nonnull %i.cm, i32 noundef %.0143, i32 noundef 6, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef %12) #24 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.thread.i.i212, label %.thread758

.thread.i.i212:                                   ; preds = %.thread729
  %i.cw = zext i32 %.0.i.i.i188 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw ; 3 uses
  store i8 48, ptr %i.cx, align 1, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 3 uses
  %i.cz = icmp ult i32 %i.aa, 128
  br i1 %i.cz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread.i.i212
  %i.da = trunc nuw nsw i32 %i.aa to i8
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !15
  br label %SetSequence.exit227

bb.aa:                                            ; preds = %.thread.i.i212
  %.not5.i.i.i.i.i213 = icmp ult i32 %i.aa, 16777216
  br i1 %.not5.i.i.i.i.i213, label %bb.ab, label %iter.check863

bb.ab:                                            ; preds = %bb.aa
  %.not5.1.i.i.i.i.i225 = icmp samesign ult i32 %i.aa, 65536
  br i1 %.not5.1.i.i.i.i.i225, label %bb.ac, label %iter.check863

bb.ac:                                            ; preds = %bb.ab
  %.not5.2.i.i.i.i.i226 = icmp samesign ult i32 %i.aa, 256
  %i.db = select i1 %.not5.2.i.i.i.i.i226, i8 1, i8 2
  br label %iter.check863

iter.check863:                                    ; preds = %bb.aa, %bb.ab, %bb.ac
  %.0.lcssa.i.i.i.i.i215 = phi i8 [ 4, %bb.aa ], [ %i.db, %bb.ac ], [ 3, %bb.ab ] ; 6 uses
  %i.dc = or disjoint i8 %.0.lcssa.i.i.i.i.i215, -128
  store i8 %i.dc, ptr %i.cy, align 1, !tbaa !15
  %i.dd = zext nneg i8 %.0.lcssa.i.i.i.i.i215 to i64 ; 2 uses
  %min.iters.check845 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i215, 4
  br i1 %min.iters.check845, label %.split.i.i.i.i216.preheader, label %vec.epilog.vector.body873

vec.epilog.vector.body873:                        ; preds = %iter.check863
  %broadcast.splatinsert871 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i215, i64 0
  %broadcast.splat872 = shufflevector <4 x i8> %broadcast.splatinsert871, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.de = add nsw <4 x i8> %broadcast.splat872, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert869 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat870 = shufflevector <4 x i32> %broadcast.splatinsert869, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec868 = and i64 %i.dd, 4                    ; 3 uses
  %i.df = trunc nuw nsw i64 %n.vec868 to i8
  %i.dg = sub nsw i8 %.0.lcssa.i.i.i.i.i215, %i.df
  %i.dh = or disjoint i64 %n.vec868, 1            ; 2 uses
  %i.di = zext <4 x i8> %i.de to <4 x i32>
  %i.dj = shl nuw nsw <4 x i32> %i.di, splat (i32 3)
  %i.dk = add nsw <4 x i32> %i.dj, splat (i32 -8)
  %i.dl = lshr <4 x i32> %broadcast.splat870, %i.dk
  %i.dm = trunc <4 x i32> %i.dl to <4 x i8>
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store <4 x i8> %i.dm, ptr %i.dn, align 1, !tbaa !15
  %cmp.n879 = icmp eq i64 %n.vec868, %i.dd
  br i1 %cmp.n879, label %.loopexit.loopexit30.i.i.i.i221, label %.split.i.i.i.i216.preheader

.split.i.i.i.i216.preheader:                      ; preds = %iter.check863, %vec.epilog.vector.body873
  %indvars.iv.i.i.i.i217.ph = phi i64 [ 1, %iter.check863 ], [ %i.dh, %vec.epilog.vector.body873 ]
  %.029.i.i.i.i218.ph = phi i8 [ %.0.lcssa.i.i.i.i.i215, %iter.check863 ], [ %i.dg, %vec.epilog.vector.body873 ]
  br label %.split.i.i.i.i216

.split.i.i.i.i216:                                ; preds = %.split.i.i.i.i216.preheader, %.split.i.i.i.i216
  %indvars.iv.i.i.i.i217 = phi i64 [ %indvars.iv.next.i.i.i.i219, %.split.i.i.i.i216 ], [ %indvars.iv.i.i.i.i217.ph, %.split.i.i.i.i216.preheader ] ; 2 uses
  %.029.i.i.i.i218 = phi i8 [ %i.du, %.split.i.i.i.i216 ], [ %.029.i.i.i.i218.ph, %.split.i.i.i.i216.preheader ] ; 2 uses
  %i.do = zext i8 %.029.i.i.i.i218 to i32
  %i.dp = shl nuw nsw i32 %i.do, 3
  %i.dq = add nsw i32 %i.dp, -8
  %i.dr = lshr i32 %i.aa, %i.dq
  %i.ds = trunc i32 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.i.i.i.i217
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i219 = add nuw nsw i64 %indvars.iv.i.i.i.i217, 1 ; 2 uses
  %i.du = add nsw i8 %.029.i.i.i.i218, -1         ; 2 uses
  %.not26.i.i.i.i220 = icmp eq i8 %i.du, 0
  br i1 %.not26.i.i.i.i220, label %.loopexit.loopexit30.i.i.i.i221, label %.split.i.i.i.i216, !llvm.loop !180

.loopexit.loopexit30.i.i.i.i221:                  ; preds = %.split.i.i.i.i216, %vec.epilog.vector.body873
  %indvars.iv.next.i.i.i.i219.lcssa = phi i64 [ %i.dh, %vec.epilog.vector.body873 ], [ %indvars.iv.next.i.i.i.i219, %.split.i.i.i.i216 ]
  %i.dv = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i219.lcssa to i32
  %i.dw = add nuw i32 %i.dv, 1
  br label %SetSequence.exit227

SetSequence.exit227:                              ; preds = %bb.z, %.loopexit.loopexit30.i.i.i.i221
  %.0.i.i.i222 = phi i32 [ %i.dw, %.loopexit.loopexit30.i.i.i.i221 ], [ 2, %bb.z ]
  %i.dx = add i32 %.0.i.i.i222, %.0.i.i.i188      ; 3 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %i.dy ; 2 uses
  store i8 6, ptr %i.dz, align 1, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store i8 9, ptr %i.ea, align 1, !tbaa !15
  %i.eb = add i32 %i.dx, 2
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ed, ptr noundef nonnull align 1 dereferenceable(9) @pbes2, i64 9, i1 false)
  %i.ee = add i32 %i.dx, 11                       ; 2 uses
  %i.ef = add i32 %.1135, 46                      ; 7 uses
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 %i.eg ; 3 uses
  store i8 48, ptr %i.eh, align 1, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1 ; 3 uses
  %i.ej = icmp ult i32 %i.ef, 128
  br i1 %i.ej, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %SetSequence.exit227
  %i.ek = trunc nuw nsw i32 %i.ef to i8
  store i8 %i.ek, ptr %i.ei, align 1, !tbaa !15
  br label %SetSequence.exit261

bb.ae:                                            ; preds = %SetSequence.exit227
  %.not5.i.i.i.i.i247 = icmp ult i32 %i.ef, 16777216
  br i1 %.not5.i.i.i.i.i247, label %bb.af, label %iter.check900

bb.af:                                            ; preds = %bb.ae
  %.not5.1.i.i.i.i.i259 = icmp samesign ult i32 %i.ef, 65536
  br i1 %.not5.1.i.i.i.i.i259, label %bb.ag, label %iter.check900

bb.ag:                                            ; preds = %bb.af
  %.not5.2.i.i.i.i.i260 = icmp samesign ult i32 %i.ef, 256
  %i.el = select i1 %.not5.2.i.i.i.i.i260, i8 1, i8 2
  br label %iter.check900

iter.check900:                                    ; preds = %bb.ae, %bb.af, %bb.ag
  %.0.lcssa.i.i.i.i.i249 = phi i8 [ 4, %bb.ae ], [ %i.el, %bb.ag ], [ 3, %bb.af ] ; 6 uses
  %i.em = or disjoint i8 %.0.lcssa.i.i.i.i.i249, -128
  store i8 %i.em, ptr %i.ei, align 1, !tbaa !15
  %i.en = zext nneg i8 %.0.lcssa.i.i.i.i.i249 to i64 ; 2 uses
  %min.iters.check882 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i249, 4
  br i1 %min.iters.check882, label %.split.i.i.i.i250.preheader, label %vec.epilog.vector.body910

vec.epilog.vector.body910:                        ; preds = %iter.check900
  %broadcast.splatinsert908 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i249, i64 0
  %broadcast.splat909 = shufflevector <4 x i8> %broadcast.splatinsert908, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.eo = add nsw <4 x i8> %broadcast.splat909, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert906 = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat907 = shufflevector <4 x i32> %broadcast.splatinsert906, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec905 = and i64 %i.en, 4                    ; 3 uses
  %i.ep = trunc nuw nsw i64 %n.vec905 to i8
  %i.eq = sub nsw i8 %.0.lcssa.i.i.i.i.i249, %i.ep
  %i.er = or disjoint i64 %n.vec905, 1            ; 2 uses
  %i.es = zext <4 x i8> %i.eo to <4 x i32>
  %i.et = shl nuw nsw <4 x i32> %i.es, splat (i32 3)
  %i.eu = add nsw <4 x i32> %i.et, splat (i32 -8)
  %i.ev = lshr <4 x i32> %broadcast.splat907, %i.eu
  %i.ew = trunc <4 x i32> %i.ev to <4 x i8>
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store <4 x i8> %i.ew, ptr %i.ex, align 1, !tbaa !15
  %cmp.n916 = icmp eq i64 %n.vec905, %i.en
  br i1 %cmp.n916, label %.loopexit.loopexit30.i.i.i.i255, label %.split.i.i.i.i250.preheader

.split.i.i.i.i250.preheader:                      ; preds = %iter.check900, %vec.epilog.vector.body910
  %indvars.iv.i.i.i.i251.ph = phi i64 [ 1, %iter.check900 ], [ %i.er, %vec.epilog.vector.body910 ]
  %.029.i.i.i.i252.ph = phi i8 [ %.0.lcssa.i.i.i.i.i249, %iter.check900 ], [ %i.eq, %vec.epilog.vector.body910 ]
  br label %.split.i.i.i.i250

.split.i.i.i.i250:                                ; preds = %.split.i.i.i.i250.preheader, %.split.i.i.i.i250
  %indvars.iv.i.i.i.i251 = phi i64 [ %indvars.iv.next.i.i.i.i253, %.split.i.i.i.i250 ], [ %indvars.iv.i.i.i.i251.ph, %.split.i.i.i.i250.preheader ] ; 2 uses
  %.029.i.i.i.i252 = phi i8 [ %i.fe, %.split.i.i.i.i250 ], [ %.029.i.i.i.i252.ph, %.split.i.i.i.i250.preheader ] ; 2 uses
  %i.ey = zext i8 %.029.i.i.i.i252 to i32
  %i.ez = shl nuw nsw i32 %i.ey, 3
  %i.fa = add nsw i32 %i.ez, -8
  %i.fb = lshr i32 %i.ef, %i.fa
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv.i.i.i.i251
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i253 = add nuw nsw i64 %indvars.iv.i.i.i.i251, 1 ; 2 uses
  %i.fe = add nsw i8 %.029.i.i.i.i252, -1         ; 2 uses
  %.not26.i.i.i.i254 = icmp eq i8 %i.fe, 0
  br i1 %.not26.i.i.i.i254, label %.loopexit.loopexit30.i.i.i.i255, label %.split.i.i.i.i250, !llvm.loop !181

.loopexit.loopexit30.i.i.i.i255:                  ; preds = %.split.i.i.i.i250, %vec.epilog.vector.body910
  %indvars.iv.next.i.i.i.i253.lcssa = phi i64 [ %i.er, %vec.epilog.vector.body910 ], [ %indvars.iv.next.i.i.i.i253, %.split.i.i.i.i250 ]
  %i.ff = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i253.lcssa to i32
  %i.fg = add nuw i32 %i.ff, 1
  br label %SetSequence.exit261

SetSequence.exit261:                              ; preds = %bb.ad, %.loopexit.loopexit30.i.i.i.i255
  %.0.i.i.i256 = phi i32 [ %i.fg, %.loopexit.loopexit30.i.i.i.i255 ], [ 2, %bb.ad ]
  %i.fh = add i32 %.0.i.i.i256, %i.ee             ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi ; 3 uses
  store i8 48, ptr %i.fj, align 1, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1 ; 3 uses
  %i.fl = icmp ult i32 %i.z, 128
  br i1 %i.fl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %SetSequence.exit261
  %i.fm = trunc nuw nsw i32 %i.z to i8
  store i8 %i.fm, ptr %i.fk, align 1, !tbaa !15
  br label %SetSequence.exit278

bb.ai:                                            ; preds = %SetSequence.exit261
  %.not5.i.i.i.i.i264 = icmp ult i32 %i.z, 16777216
  br i1 %.not5.i.i.i.i.i264, label %bb.aj, label %iter.check937

bb.aj:                                            ; preds = %bb.ai
  %.not5.1.i.i.i.i.i276 = icmp samesign ult i32 %i.z, 65536
  br i1 %.not5.1.i.i.i.i.i276, label %bb.ak, label %iter.check937

bb.ak:                                            ; preds = %bb.aj
  %.not5.2.i.i.i.i.i277 = icmp samesign ult i32 %i.z, 256
  %i.fn = select i1 %.not5.2.i.i.i.i.i277, i8 1, i8 2
  br label %iter.check937

iter.check937:                                    ; preds = %bb.ai, %bb.aj, %bb.ak
  %.0.lcssa.i.i.i.i.i266 = phi i8 [ 4, %bb.ai ], [ %i.fn, %bb.ak ], [ 3, %bb.aj ] ; 6 uses
  %i.fo = or disjoint i8 %.0.lcssa.i.i.i.i.i266, -128
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !15
  %i.fp = zext nneg i8 %.0.lcssa.i.i.i.i.i266 to i64 ; 2 uses
  %min.iters.check919 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i266, 4
  br i1 %min.iters.check919, label %.split.i.i.i.i267.preheader, label %vec.epilog.vector.body947

vec.epilog.vector.body947:                        ; preds = %iter.check937
  %broadcast.splatinsert945 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i266, i64 0
  %broadcast.splat946 = shufflevector <4 x i8> %broadcast.splatinsert945, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fq = add nsw <4 x i8> %broadcast.splat946, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert943 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat944 = shufflevector <4 x i32> %broadcast.splatinsert943, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec942 = and i64 %i.fp, 4                    ; 3 uses
  %i.fr = trunc nuw nsw i64 %n.vec942 to i8
  %i.fs = sub nsw i8 %.0.lcssa.i.i.i.i.i266, %i.fr
  %i.ft = or disjoint i64 %n.vec942, 1            ; 2 uses
  %i.fu = zext <4 x i8> %i.fq to <4 x i32>
  %i.fv = shl nuw nsw <4 x i32> %i.fu, splat (i32 3)
  %i.fw = add nsw <4 x i32> %i.fv, splat (i32 -8)
  %i.fx = lshr <4 x i32> %broadcast.splat944, %i.fw
  %i.fy = trunc <4 x i32> %i.fx to <4 x i8>
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store <4 x i8> %i.fy, ptr %i.fz, align 1, !tbaa !15
  %cmp.n953 = icmp eq i64 %n.vec942, %i.fp
  br i1 %cmp.n953, label %.loopexit.loopexit30.i.i.i.i272, label %.split.i.i.i.i267.preheader

.split.i.i.i.i267.preheader:                      ; preds = %iter.check937, %vec.epilog.vector.body947
  %indvars.iv.i.i.i.i268.ph = phi i64 [ 1, %iter.check937 ], [ %i.ft, %vec.epilog.vector.body947 ]
  %.029.i.i.i.i269.ph = phi i8 [ %.0.lcssa.i.i.i.i.i266, %iter.check937 ], [ %i.fs, %vec.epilog.vector.body947 ]
  br label %.split.i.i.i.i267

.split.i.i.i.i267:                                ; preds = %.split.i.i.i.i267.preheader, %.split.i.i.i.i267
  %indvars.iv.i.i.i.i268 = phi i64 [ %indvars.iv.next.i.i.i.i270, %.split.i.i.i.i267 ], [ %indvars.iv.i.i.i.i268.ph, %.split.i.i.i.i267.preheader ] ; 2 uses
  %.029.i.i.i.i269 = phi i8 [ %i.gg, %.split.i.i.i.i267 ], [ %.029.i.i.i.i269.ph, %.split.i.i.i.i267.preheader ] ; 2 uses
  %i.ga = zext i8 %.029.i.i.i.i269 to i32
  %i.gb = shl nuw nsw i32 %i.ga, 3
  %i.gc = add nsw i32 %i.gb, -8
  %i.gd = lshr i32 %i.z, %i.gc
  %i.ge = trunc i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.i.i.i.i268
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i270 = add nuw nsw i64 %indvars.iv.i.i.i.i268, 1 ; 2 uses
  %i.gg = add nsw i8 %.029.i.i.i.i269, -1         ; 2 uses
  %.not26.i.i.i.i271 = icmp eq i8 %i.gg, 0
  br i1 %.not26.i.i.i.i271, label %.loopexit.loopexit30.i.i.i.i272, label %.split.i.i.i.i267, !llvm.loop !182

.loopexit.loopexit30.i.i.i.i272:                  ; preds = %.split.i.i.i.i267, %vec.epilog.vector.body947
  %indvars.iv.next.i.i.i.i270.lcssa = phi i64 [ %i.ft, %vec.epilog.vector.body947 ], [ %indvars.iv.next.i.i.i.i270, %.split.i.i.i.i267 ]
  %i.gh = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i270.lcssa to i32
  %i.gi = add nuw i32 %i.gh, 1
  br label %SetSequence.exit278

SetSequence.exit278:                              ; preds = %bb.ah, %.loopexit.loopexit30.i.i.i.i272
  %.0.i.i.i273 = phi i32 [ %i.gi, %.loopexit.loopexit30.i.i.i.i272 ], [ 2, %bb.ah ]
  %i.gj = add i32 %.0.i.i.i273, %i.fh             ; 3 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 %i.gk ; 2 uses
  store i8 6, ptr %i.gl, align 1, !tbaa !15
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  store i8 9, ptr %i.gm, align 1, !tbaa !15
  %i.gn = add i32 %i.gj, 2
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gp, ptr noundef nonnull align 1 dereferenceable(9) @pbkdf2Oid, i64 9, i1 false)
  %i.gq = add i32 %i.gj, 11                       ; 2 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 %i.gr ; 3 uses
  store i8 48, ptr %i.gs, align 1, !tbaa !15
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1 ; 3 uses
  %i.gu = icmp ult i32 %.1135, 128
  br i1 %i.gu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %SetSequence.exit278
  %i.gv = trunc nuw nsw i32 %.1135 to i8
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !15
  br label %SetSequence.exit299

bb.am:                                            ; preds = %SetSequence.exit278
  %.not5.i.i.i.i.i285 = icmp ult i32 %.1135, 16777216
  br i1 %.not5.i.i.i.i.i285, label %bb.an, label %iter.check974

bb.an:                                            ; preds = %bb.am
  %.not5.1.i.i.i.i.i297 = icmp samesign ult i32 %.1135, 65536
  br i1 %.not5.1.i.i.i.i.i297, label %bb.ao, label %iter.check974

bb.ao:                                            ; preds = %bb.an
  %.not5.2.i.i.i.i.i298 = icmp samesign ult i32 %.1135, 256
  %i.gw = select i1 %.not5.2.i.i.i.i.i298, i8 1, i8 2
  br label %iter.check974

iter.check974:                                    ; preds = %bb.am, %bb.an, %bb.ao
  %.0.lcssa.i.i.i.i.i287 = phi i8 [ 4, %bb.am ], [ %i.gw, %bb.ao ], [ 3, %bb.an ] ; 6 uses
  %i.gx = or disjoint i8 %.0.lcssa.i.i.i.i.i287, -128
  store i8 %i.gx, ptr %i.gt, align 1, !tbaa !15
  %i.gy = zext nneg i8 %.0.lcssa.i.i.i.i.i287 to i64 ; 2 uses
  %min.iters.check956 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i287, 4
  br i1 %min.iters.check956, label %.split.i.i.i.i288.preheader, label %vec.epilog.vector.body984

vec.epilog.vector.body984:                        ; preds = %iter.check974
  %broadcast.splatinsert982 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i287, i64 0
  %broadcast.splat983 = shufflevector <4 x i8> %broadcast.splatinsert982, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.gz = add nsw <4 x i8> %broadcast.splat983, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert980 = insertelement <4 x i32> poison, i32 %.1135, i64 0
  %broadcast.splat981 = shufflevector <4 x i32> %broadcast.splatinsert980, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec979 = and i64 %i.gy, 4                    ; 3 uses
  %i.ha = trunc nuw nsw i64 %n.vec979 to i8
  %i.hb = sub nsw i8 %.0.lcssa.i.i.i.i.i287, %i.ha
  %i.hc = or disjoint i64 %n.vec979, 1            ; 2 uses
  %i.hd = zext <4 x i8> %i.gz to <4 x i32>
  %i.he = shl nuw nsw <4 x i32> %i.hd, splat (i32 3)
  %i.hf = add nsw <4 x i32> %i.he, splat (i32 -8)
  %i.hg = lshr <4 x i32> %broadcast.splat981, %i.hf
  %i.hh = trunc <4 x i32> %i.hg to <4 x i8>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store <4 x i8> %i.hh, ptr %i.hi, align 1, !tbaa !15
  %cmp.n990 = icmp eq i64 %n.vec979, %i.gy
  br i1 %cmp.n990, label %.loopexit.loopexit30.i.i.i.i293, label %.split.i.i.i.i288.preheader

.split.i.i.i.i288.preheader:                      ; preds = %iter.check974, %vec.epilog.vector.body984
  %indvars.iv.i.i.i.i289.ph = phi i64 [ 1, %iter.check974 ], [ %i.hc, %vec.epilog.vector.body984 ]
  %.029.i.i.i.i290.ph = phi i8 [ %.0.lcssa.i.i.i.i.i287, %iter.check974 ], [ %i.hb, %vec.epilog.vector.body984 ]
  br label %.split.i.i.i.i288

.split.i.i.i.i288:                                ; preds = %.split.i.i.i.i288.preheader, %.split.i.i.i.i288
  %indvars.iv.i.i.i.i289 = phi i64 [ %indvars.iv.next.i.i.i.i291, %.split.i.i.i.i288 ], [ %indvars.iv.i.i.i.i289.ph, %.split.i.i.i.i288.preheader ] ; 2 uses
  %.029.i.i.i.i290 = phi i8 [ %i.hp, %.split.i.i.i.i288 ], [ %.029.i.i.i.i290.ph, %.split.i.i.i.i288.preheader ] ; 2 uses
  %i.hj = zext i8 %.029.i.i.i.i290 to i32
  %i.hk = shl nuw nsw i32 %i.hj, 3
  %i.hl = add nsw i32 %i.hk, -8
  %i.hm = lshr i32 %.1135, %i.hl
  %i.hn = trunc i32 %i.hm to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i.i289
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i291 = add nuw nsw i64 %indvars.iv.i.i.i.i289, 1 ; 2 uses
  %i.hp = add nsw i8 %.029.i.i.i.i290, -1         ; 2 uses
  %.not26.i.i.i.i292 = icmp eq i8 %i.hp, 0
  br i1 %.not26.i.i.i.i292, label %.loopexit.loopexit30.i.i.i.i293, label %.split.i.i.i.i288, !llvm.loop !183

.loopexit.loopexit30.i.i.i.i293:                  ; preds = %.split.i.i.i.i288, %vec.epilog.vector.body984
  %indvars.iv.next.i.i.i.i291.lcssa = phi i64 [ %i.hc, %vec.epilog.vector.body984 ], [ %indvars.iv.next.i.i.i.i291, %.split.i.i.i.i288 ]
  %i.hq = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i291.lcssa to i32
  %i.hr = add nuw i32 %i.hq, 1
  br label %SetSequence.exit299

SetSequence.exit299:                              ; preds = %bb.al, %.loopexit.loopexit30.i.i.i.i293
  %.0.i.i.i294 = phi i32 [ %i.hr, %.loopexit.loopexit30.i.i.i.i293 ], [ 2, %bb.al ]
  %i.hs = add i32 %.0.i.i.i294, %i.gq             ; 2 uses
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ht ; 3 uses
  store i8 4, ptr %i.hu, align 1, !tbaa !15
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 3 uses
  %i.hw = icmp ult i32 %spec.select161, 128
  br i1 %i.hw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %SetSequence.exit299
  %i.hx = trunc nuw nsw i32 %spec.select161 to i8
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !15
  br label %SetOctetString.exit316

bb.aq:                                            ; preds = %SetSequence.exit299
  %.not5.i.i.i.i.i302 = icmp ult i32 %spec.select161, 16777216
  br i1 %.not5.i.i.i.i.i302, label %bb.ar, label %iter.check1011

bb.ar:                                            ; preds = %bb.aq
  %.not5.1.i.i.i.i.i314 = icmp samesign ult i32 %spec.select161, 65536
  br i1 %.not5.1.i.i.i.i.i314, label %bb.as, label %iter.check1011

bb.as:                                            ; preds = %bb.ar
  %.not5.2.i.i.i.i.i315 = icmp samesign ult i32 %spec.select161, 256
  %i.hy = select i1 %.not5.2.i.i.i.i.i315, i8 1, i8 2
  br label %iter.check1011

iter.check1011:                                   ; preds = %bb.aq, %bb.ar, %bb.as
  %.0.lcssa.i.i.i.i.i304 = phi i8 [ 4, %bb.aq ], [ %i.hy, %bb.as ], [ 3, %bb.ar ] ; 6 uses
  %i.hz = or disjoint i8 %.0.lcssa.i.i.i.i.i304, -128
  store i8 %i.hz, ptr %i.hv, align 1, !tbaa !15
  %i.ia = zext nneg i8 %.0.lcssa.i.i.i.i.i304 to i64 ; 2 uses
  %min.iters.check993 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i304, 4
  br i1 %min.iters.check993, label %.split.i.i.i.i305.preheader, label %vec.epilog.vector.body1021

vec.epilog.vector.body1021:                       ; preds = %iter.check1011
  %broadcast.splatinsert1019 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i304, i64 0
  %broadcast.splat1020 = shufflevector <4 x i8> %broadcast.splatinsert1019, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ib = add nsw <4 x i8> %broadcast.splat1020, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert1017 = insertelement <4 x i32> poison, i32 %spec.select161, i64 0
  %broadcast.splat1018 = shufflevector <4 x i32> %broadcast.splatinsert1017, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1016 = and i64 %i.ia, 4                   ; 3 uses
  %i.ic = trunc nuw nsw i64 %n.vec1016 to i8
  %i.id = sub nsw i8 %.0.lcssa.i.i.i.i.i304, %i.ic
  %i.ie = or disjoint i64 %n.vec1016, 1           ; 2 uses
  %i.if = zext <4 x i8> %i.ib to <4 x i32>
  %i.ig = shl nuw nsw <4 x i32> %i.if, splat (i32 3)
  %i.ih = add nsw <4 x i32> %i.ig, splat (i32 -8)
  %i.ii = lshr <4 x i32> %broadcast.splat1018, %i.ih
  %i.ij = trunc <4 x i32> %i.ii to <4 x i8>
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 2
  store <4 x i8> %i.ij, ptr %i.ik, align 1, !tbaa !15
  %cmp.n1027 = icmp eq i64 %n.vec1016, %i.ia
  br i1 %cmp.n1027, label %.loopexit.loopexit30.i.i.i.i310, label %.split.i.i.i.i305.preheader

.split.i.i.i.i305.preheader:                      ; preds = %iter.check1011, %vec.epilog.vector.body1021
  %indvars.iv.i.i.i.i306.ph = phi i64 [ 1, %iter.check1011 ], [ %i.ie, %vec.epilog.vector.body1021 ]
  %.029.i.i.i.i307.ph = phi i8 [ %.0.lcssa.i.i.i.i.i304, %iter.check1011 ], [ %i.id, %vec.epilog.vector.body1021 ]
  br label %.split.i.i.i.i305

.split.i.i.i.i305:                                ; preds = %.split.i.i.i.i305.preheader, %.split.i.i.i.i305
  %indvars.iv.i.i.i.i306 = phi i64 [ %indvars.iv.next.i.i.i.i308, %.split.i.i.i.i305 ], [ %indvars.iv.i.i.i.i306.ph, %.split.i.i.i.i305.preheader ] ; 2 uses
  %.029.i.i.i.i307 = phi i8 [ %i.ir, %.split.i.i.i.i305 ], [ %.029.i.i.i.i307.ph, %.split.i.i.i.i305.preheader ] ; 2 uses
  %i.il = zext i8 %.029.i.i.i.i307 to i32
  %i.im = shl nuw nsw i32 %i.il, 3
  %i.in = add nsw i32 %i.im, -8
  %i.io = lshr i32 %spec.select161, %i.in
  %i.ip = trunc i32 %i.io to i8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvars.iv.i.i.i.i306
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i308 = add nuw nsw i64 %indvars.iv.i.i.i.i306, 1 ; 2 uses
  %i.ir = add nsw i8 %.029.i.i.i.i307, -1         ; 2 uses
  %.not26.i.i.i.i309 = icmp eq i8 %i.ir, 0
  br i1 %.not26.i.i.i.i309, label %.loopexit.loopexit30.i.i.i.i310, label %.split.i.i.i.i305, !llvm.loop !184

.loopexit.loopexit30.i.i.i.i310:                  ; preds = %.split.i.i.i.i305, %vec.epilog.vector.body1021
  %indvars.iv.next.i.i.i.i308.lcssa = phi i64 [ %i.ie, %vec.epilog.vector.body1021 ], [ %indvars.iv.next.i.i.i.i308, %.split.i.i.i.i305 ]
  %i.is = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i308.lcssa to i32
  %i.it = add nuw i32 %i.is, 1
  br label %SetOctetString.exit316

SetOctetString.exit316:                           ; preds = %bb.ap, %.loopexit.loopexit30.i.i.i.i310
  %.0.i.i.i311 = phi i32 [ %i.it, %.loopexit.loopexit30.i.i.i.i310 ], [ 2, %bb.ap ]
  %i.iu = add i32 %.0.i.i.i311, %i.hs             ; 2 uses
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 %i.iv
  %i.ix = zext i32 %spec.select161 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iw, ptr nonnull align 1 %.1147.ph732, i64 %i.ix, i1 false)
  %i.iy = add i32 %i.iu, %spec.select161          ; 6 uses
  %i.iz = load i32, ptr %3, align 4, !tbaa !26
  br i1 %i.k, label %BytePrecision.exit.thread.i318, label %bb.at

bb.at:                                            ; preds = %SetOctetString.exit316
  %.not5.i.i317 = icmp ult i32 %11, 16777216
  br i1 %.not5.i.i317, label %bb.au, label %BytePrecision.exit.thread.i318

bb.au:                                            ; preds = %bb.at
  %.not5.1.i.i327 = icmp samesign ult i32 %11, 65536
  br i1 %.not5.1.i.i327, label %BytePrecision.exit.i328, label %BytePrecision.exit.thread.i318

BytePrecision.exit.i328:                          ; preds = %bb.au
  %.not5.2.i.i329 = icmp samesign ult i32 %11, 256
  %spec.select.i.i330 = select i1 %.not5.2.i.i329, i32 1, i32 2
  br label %BytePrecision.exit.thread.i318

BytePrecision.exit.thread.i318:                   ; preds = %BytePrecision.exit.i328, %bb.au, %bb.at, %SetOctetString.exit316
  %.03744.i319 = phi i32 [ %spec.select.i.i330, %BytePrecision.exit.i328 ], [ 3, %bb.au ], [ 4, %bb.at ], [ 1, %SetOctetString.exit316 ] ; 9 uses
  %i.ja = shl nuw nsw i32 %.03744.i319, 3
  %i.jb = add nsw i32 %i.ja, -1
  %i.jc = lshr i32 %11, %i.jb
  %.not.i320 = icmp ne i32 %i.jc, 0               ; 2 uses
  %spec.select.i321 = zext i1 %.not.i320 to i32
  %i.jd = add i32 %i.iy, 2                        ; 3 uses
  %i.je = add nuw nsw i32 %.03744.i319, %spec.select.i321 ; 2 uses
  %i.jf = add i32 %i.je, %i.jd
  %i.jg = icmp ugt i32 %i.jf, %i.iz
  br i1 %i.jg, label %SetShortInt.exit331, label %bb.av

bb.av:                                            ; preds = %BytePrecision.exit.thread.i318
  %i.jh = add i32 %i.iy, 1
  %i.ji = zext i32 %i.iy to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ji
  store i8 2, ptr %i.jj, align 1, !tbaa !15
  %i.jk = trunc nuw nsw i32 %i.je to i8
  %i.jl = zext i32 %i.jh to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 %i.jl
  store i8 %i.jk, ptr %i.jm, align 1, !tbaa !15
  br i1 %.not.i320, label %bb.aw, label %.preheader

bb.aw:                                            ; preds = %bb.av
  %i.jn = add i32 %i.iy, 3
  %i.jo = zext i32 %i.jd to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 %i.jo
  store i8 0, ptr %i.jp, align 1, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %bb.av, %bb.aw
  %.145.i324.ph = phi i32 [ %i.jd, %bb.av ], [ %i.jn, %bb.aw ] ; 5 uses
  %.036.i325 = shl nuw nsw i32 %.03744.i319, 3
  %i.jq = add nsw i32 %.036.i325, -8
  %i.jr = lshr i32 %11, %i.jq
  %i.js = trunc i32 %i.jr to i8
  %i.jt = add i32 %.145.i324.ph, 1                ; 2 uses
  %i.ju = zext i32 %.145.i324.ph to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ju
  store i8 %i.js, ptr %i.jv, align 1, !tbaa !15
  %i.jw = icmp samesign ugt i32 %.03744.i319, 1
  br i1 %i.jw, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %.preheader
  %.036.i325.1 = shl nuw nsw i32 %.03744.i319, 3
  %i.jx = add nsw i32 %.036.i325.1, -16
  %i.jy = lshr i32 %11, %i.jx
  %i.jz = trunc i32 %i.jy to i8
  %i.ka = add i32 %.145.i324.ph, 2                ; 2 uses
  %i.kb = zext i32 %i.jt to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 %i.kb
  store i8 %i.jz, ptr %i.kc, align 1, !tbaa !15
  %.not = icmp eq i32 %.03744.i319, 2
  br i1 %.not, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.036.i325.2 = shl nuw nsw i32 %.03744.i319, 3
  %i.kd = add nsw i32 %.036.i325.2, -24
  %i.ke = lshr i32 %11, %i.kd
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = add i32 %.145.i324.ph, 3                ; 2 uses
  %i.kh = zext i32 %i.ka to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %2, i64 %i.kh
  store i8 %i.kf, ptr %i.ki, align 1, !tbaa !15
  %i.kj = icmp samesign ugt i32 %.03744.i319, 3
  br i1 %i.kj, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.036.i325.3 = shl nuw nsw i32 %.03744.i319, 3
  %i.kk = add nsw i32 %.036.i325.3, -32
  %i.kl = lshr i32 %11, %i.kk
  %i.km = trunc i32 %i.kl to i8
  %i.kn = add i32 %.145.i324.ph, 4
  %i.ko = zext i32 %i.kg to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 %i.ko
  store i8 %i.km, ptr %i.kp, align 1, !tbaa !15
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %.preheader
  %.lcssa = phi i32 [ %i.jt, %.preheader ], [ %i.ka, %bb.ax ], [ %i.kg, %bb.ay ], [ %i.kn, %bb.az ] ; 2 uses
  %i.kq = sub i32 %.lcssa, %i.iy
  %i.kr = call i32 @llvm.smin.i32(i32 %i.kq, i32 0)
  br label %SetShortInt.exit331

SetShortInt.exit331:                              ; preds = %BytePrecision.exit.thread.i318, %bb.ba
  %.4490 = phi i32 [ %i.iy, %BytePrecision.exit.thread.i318 ], [ %.lcssa, %bb.ba ] ; 4 uses
  %.039.i326 = phi i32 [ -132, %BytePrecision.exit.thread.i318 ], [ %i.kr, %bb.ba ] ; 2 uses
  br i1 %i.r, label %SetSequence.exit348, label %bb.bb

SetSequence.exit348:                              ; preds = %SetShortInt.exit331
  %i.ks = zext i32 %.4490 to i64
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ks ; 2 uses
  store i8 48, ptr %i.kt, align 1, !tbaa !15
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  %i.kv = trunc nuw nsw i32 %.0 to i8             ; 2 uses
  %i.kw = add nuw nsw i8 %i.kv, 2
  store i8 %i.kw, ptr %i.ku, align 1, !tbaa !15
  %i.kx = add i32 %.4490, 2
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 %i.ky ; 2 uses
  store i8 6, ptr %i.kz, align 1, !tbaa !15
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 %i.kv, ptr %i.la, align 1, !tbaa !15
  %i.lb = add i32 %.4490, 4                       ; 2 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 %i.lc
  %i.le = zext nneg i32 %.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr align 1 %.0127, i64 %i.le, i1 false)
  %i.lf = add i32 %i.lb, %.0
  br label %bb.bb

bb.bb:                                            ; preds = %SetShortInt.exit331, %SetSequence.exit348
  %.2488 = phi i32 [ %i.lf, %SetSequence.exit348 ], [ %.4490, %SetShortInt.exit331 ] ; 6 uses
  %i.lg = icmp eq i32 %.039.i326, 0
  br i1 %i.lg, label %SetSequence.exit382, label %.thread758

SetSequence.exit382:                              ; preds = %bb.bb
  %i.lh = zext i32 %.2488 to i64
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.lh ; 2 uses
  store i8 48, ptr %i.li, align 1, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  store i8 29, ptr %i.lj, align 1, !tbaa !15
  %i.lk = add i32 %.2488, 2
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ll ; 2 uses
  store i8 6, ptr %i.lm, align 1, !tbaa !15
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  store i8 9, ptr %i.ln, align 1, !tbaa !15
  %i.lo = add i32 %.2488, 4
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %i.lp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.lq, ptr noundef nonnull align 1 dereferenceable(9) %.0495540, i64 9, i1 false)
  %i.lr = add i32 %.2488, 13
  %i.ls = zext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ls ; 2 uses
  store i8 4, ptr %i.lt, align 1, !tbaa !15
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  store i8 16, ptr %i.lu, align 1, !tbaa !15
  %i.lv = add i32 %.2488, 15
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %2, i64 %i.lw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.lx, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ly = add i32 %.2488, 31                      ; 2 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 %i.lz ; 3 uses
  store i8 4, ptr %i.ma, align 1, !tbaa !15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1 ; 3 uses
  %i.mc = icmp ult i32 %.0143, 128
  br i1 %i.mc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %SetSequence.exit382
  %i.md = trunc nuw nsw i32 %.0143 to i8
  store i8 %i.md, ptr %i.mb, align 1, !tbaa !15
  br label %SetOctetString.exit433

bb.bd:                                            ; preds = %SetSequence.exit382
  %.not5.i.i.i.i.i419 = icmp ult i32 %.0143, 16777216
  br i1 %.not5.i.i.i.i.i419, label %bb.be, label %iter.check1048

bb.be:                                            ; preds = %bb.bd
  %.not5.1.i.i.i.i.i431 = icmp samesign ult i32 %.0143, 65536
  br i1 %.not5.1.i.i.i.i.i431, label %bb.bf, label %iter.check1048

bb.bf:                                            ; preds = %bb.be
  %.not5.2.i.i.i.i.i432 = icmp samesign ult i32 %.0143, 256
  %i.me = select i1 %.not5.2.i.i.i.i.i432, i8 1, i8 2
  br label %iter.check1048

iter.check1048:                                   ; preds = %bb.bd, %bb.be, %bb.bf
  %.0.lcssa.i.i.i.i.i421 = phi i8 [ 4, %bb.bd ], [ %i.me, %bb.bf ], [ 3, %bb.be ] ; 6 uses
  %i.mf = or disjoint i8 %.0.lcssa.i.i.i.i.i421, -128
  store i8 %i.mf, ptr %i.mb, align 1, !tbaa !15
  %i.mg = zext nneg i8 %.0.lcssa.i.i.i.i.i421 to i64 ; 2 uses
  %min.iters.check1030 = icmp samesign ult i8 %.0.lcssa.i.i.i.i.i421, 4
  br i1 %min.iters.check1030, label %.split.i.i.i.i422.preheader, label %vec.epilog.vector.body1058

vec.epilog.vector.body1058:                       ; preds = %iter.check1048
  %broadcast.splatinsert1056 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i.i421, i64 0
  %broadcast.splat1057 = shufflevector <4 x i8> %broadcast.splatinsert1056, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.mh = add nsw <4 x i8> %broadcast.splat1057, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %.0143, i64 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec1053 = and i64 %i.mg, 4                   ; 3 uses
  %i.mi = trunc nuw nsw i64 %n.vec1053 to i8
  %i.mj = sub nsw i8 %.0.lcssa.i.i.i.i.i421, %i.mi
  %i.mk = or disjoint i64 %n.vec1053, 1           ; 2 uses
  %i.ml = zext <4 x i8> %i.mh to <4 x i32>
  %i.mm = shl nuw nsw <4 x i32> %i.ml, splat (i32 3)
  %i.mn = add nsw <4 x i32> %i.mm, splat (i32 -8)
  %i.mo = lshr <4 x i32> %broadcast.splat1055, %i.mn
  %i.mp = trunc <4 x i32> %i.mo to <4 x i8>
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  store <4 x i8> %i.mp, ptr %i.mq, align 1, !tbaa !15
  %cmp.n1064 = icmp eq i64 %n.vec1053, %i.mg
  br i1 %cmp.n1064, label %.loopexit.loopexit30.i.i.i.i427, label %.split.i.i.i.i422.preheader

.split.i.i.i.i422.preheader:                      ; preds = %iter.check1048, %vec.epilog.vector.body1058
  %indvars.iv.i.i.i.i423.ph = phi i64 [ 1, %iter.check1048 ], [ %i.mk, %vec.epilog.vector.body1058 ]
  %.029.i.i.i.i424.ph = phi i8 [ %.0.lcssa.i.i.i.i.i421, %iter.check1048 ], [ %i.mj, %vec.epilog.vector.body1058 ]
  br label %.split.i.i.i.i422

.split.i.i.i.i422:                                ; preds = %.split.i.i.i.i422.preheader, %.split.i.i.i.i422
  %indvars.iv.i.i.i.i423 = phi i64 [ %indvars.iv.next.i.i.i.i425, %.split.i.i.i.i422 ], [ %indvars.iv.i.i.i.i423.ph, %.split.i.i.i.i422.preheader ] ; 2 uses
  %.029.i.i.i.i424 = phi i8 [ %i.mx, %.split.i.i.i.i422 ], [ %.029.i.i.i.i424.ph, %.split.i.i.i.i422.preheader ] ; 2 uses
  %i.mr = zext i8 %.029.i.i.i.i424 to i32
  %i.ms = shl nuw nsw i32 %i.mr, 3
  %i.mt = add nsw i32 %i.ms, -8
  %i.mu = lshr i32 %.0143, %i.mt
  %i.mv = trunc i32 %i.mu to i8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mb, i64 %indvars.iv.i.i.i.i423
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !15
  %indvars.iv.next.i.i.i.i425 = add nuw nsw i64 %indvars.iv.i.i.i.i423, 1 ; 2 uses
  %i.mx = add nsw i8 %.029.i.i.i.i424, -1         ; 2 uses
  %.not26.i.i.i.i426 = icmp eq i8 %i.mx, 0
  br i1 %.not26.i.i.i.i426, label %.loopexit.loopexit30.i.i.i.i427, label %.split.i.i.i.i422, !llvm.loop !185

.loopexit.loopexit30.i.i.i.i427:                  ; preds = %.split.i.i.i.i422, %vec.epilog.vector.body1058
  %indvars.iv.next.i.i.i.i425.lcssa = phi i64 [ %i.mk, %vec.epilog.vector.body1058 ], [ %indvars.iv.next.i.i.i.i425, %.split.i.i.i.i422 ]
  %i.my = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i425.lcssa to i32
  %i.mz = add nuw i32 %i.my, 1
  br label %SetOctetString.exit433

SetOctetString.exit433:                           ; preds = %bb.bc, %.loopexit.loopexit30.i.i.i.i427
  %.0.i.i.i428 = phi i32 [ %i.mz, %.loopexit.loopexit30.i.i.i.i427 ], [ 2, %bb.bc ]
  %i.na = add i32 %i.ly, %.0143
  %i.nb = add i32 %i.na, %.0.i.i.i428
  br label %.thread758

.thread758:                                       ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %bb.e, %bb.j, %bb.y, %.thread729, %BytePrecision.exit.i170, %bb.bb, %SetOctetString.exit433
  %.1142 = phi i32 [ -202, %BytePrecision.exit.i170 ], [ %i.nb, %SetOctetString.exit433 ], [ %.039.i326, %bb.bb ], [ %i.cu, %.thread729 ], [ %i.cs, %bb.y ], [ %i.ab, %bb.j ], [ -173, %bb.a ], [ -133, %bb.b ], [ -133, %bb.e ], [ -154, %bb.c ], [ -133, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.1142
}

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 2, 1) i32 @SetOctetString(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not.i = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %SetHeader.exit, label %bb.d

.thread.i:                                        ; preds = %bb.a
  store i8 4, ptr %1, align 1, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = icmp ult i32 %0, 128
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread.i
  %i.d = trunc nuw nsw i32 %0 to i8
  store i8 %i.d, ptr %i.b, align 1, !tbaa !15
  br label %SetHeader.exit

bb.d:                                             ; preds = %.thread.i, %bb.b
  %i.e = phi ptr [ %i.b, %.thread.i ], [ null, %bb.b ] ; 3 uses
  %.not5.i.i.i.i = icmp ult i32 %0, 16777216
  br i1 %.not5.i.i.i.i, label %bb.e, label %BytePrecision.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %.not5.1.i.i.i.i = icmp samesign ult i32 %0, 65536
  br i1 %.not5.1.i.i.i.i, label %bb.f, label %BytePrecision.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %.not5.2.i.i.i.i = icmp samesign ult i32 %0, 256
  %i.f = select i1 %.not5.2.i.i.i.i, i8 1, i8 2
  br label %BytePrecision.exit.i.i.i

BytePrecision.exit.i.i.i:                         ; preds = %bb.f, %bb.e, %bb.d
  %.0.lcssa.i.i.i.i = phi i8 [ 4, %bb.d ], [ %i.f, %bb.f ], [ 3, %bb.e ] ; 7 uses
  br i1 %.not.i, label %.split.us.critedge.i.i.i, label %iter.check

iter.check:                                       ; preds = %BytePrecision.exit.i.i.i
  %i.g = or disjoint i8 %.0.lcssa.i.i.i.i, -128
  store i8 %i.g, ptr %i.e, align 1, !tbaa !15
  %i.h = zext nneg i8 %.0.lcssa.i.i.i.i to i64    ; 2 uses
  %min.iters.check = icmp samesign ult i8 %.0.lcssa.i.i.i.i, 4
  br i1 %min.iters.check, label %.split.i.i.i.preheader, label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %iter.check
  %broadcast.splatinsert9 = insertelement <4 x i8> poison, i8 %.0.lcssa.i.i.i.i, i64 0
  %broadcast.splat10 = shufflevector <4 x i8> %broadcast.splatinsert9, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.i = add nsw <4 x i8> %broadcast.splat10, <i8 0, i8 -1, i8 -2, i8 -3>
  %broadcast.splatinsert7 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat8 = shufflevector <4 x i32> %broadcast.splatinsert7, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.vec6 = and i64 %i.h, 4                       ; 3 uses
  %i.j = trunc nuw nsw i64 %n.vec6 to i8
  %i.k = sub nsw i8 %.0.lcssa.i.i.i.i, %i.j
  %i.l = or disjoint i64 %n.vec6, 1               ; 2 uses
  %i.m = zext <4 x i8> %i.i to <4 x i32>
  %i.n = shl nuw nsw <4 x i32> %i.m, splat (i32 3)
  %i.o = add nsw <4 x i32> %i.n, splat (i32 -8)
  %i.p = lshr <4 x i32> %broadcast.splat8, %i.o
  %i.q = trunc <4 x i32> %i.p to <4 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store <4 x i8> %i.q, ptr %i.r, align 1, !tbaa !15
  %cmp.n15 = icmp eq i64 %n.vec6, %i.h
  br i1 %cmp.n15, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i.preheader

.split.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.vector.body
  %indvars.iv.i.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.vector.body ]
  %.029.i.i.i.ph = phi i8 [ %.0.lcssa.i.i.i.i, %iter.check ], [ %i.k, %vec.epilog.vector.body ]
  br label %.split.i.i.i

.split.us.critedge.i.i.i:                         ; preds = %BytePrecision.exit.i.i.i
  %narrow.i.i.i = add nuw nsw i8 %.0.lcssa.i.i.i.i, 1
  %i.s = zext nneg i8 %narrow.i.i.i to i32
  br label %SetHeader.exit

.split.i.i.i:                                     ; preds = %.split.i.i.i.preheader, %.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.split.i.i.i ], [ %indvars.iv.i.i.i.ph, %.split.i.i.i.preheader ] ; 2 uses
  %.029.i.i.i = phi i8 [ %i.z, %.split.i.i.i ], [ %.029.i.i.i.ph, %.split.i.i.i.preheader ] ; 2 uses
  %i.t = zext i8 %.029.i.i.i to i32
  %i.u = shl nuw nsw i32 %i.t, 3
  %i.v = add nsw i32 %i.u, -8
  %i.w = lshr i32 %0, %i.v
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !15
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.z = add nsw i8 %.029.i.i.i, -1               ; 2 uses
  %.not26.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not26.i.i.i, label %.loopexit.loopexit30.i.i.i, label %.split.i.i.i, !llvm.loop !186

.loopexit.loopexit30.i.i.i:                       ; preds = %.split.i.i.i, %vec.epilog.vector.body
  %indvars.iv.next.i.i.i.lcssa = phi i64 [ %i.l, %vec.epilog.vector.body ], [ %indvars.iv.next.i.i.i, %.split.i.i.i ]
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i.i.i.lcssa to i32
  br label %SetHeader.exit

SetHeader.exit:                                   ; preds = %bb.b, %bb.c, %.split.us.critedge.i.i.i, %.loopexit.loopexit30.i.i.i
  %.0.i.i = phi i32 [ %i.aa, %.loopexit.loopexit30.i.i.i ], [ %i.s, %.split.us.critedge.i.i.i ], [ 1, %bb.b ], [ 1, %bb.c ]
  %i.ab = add i32 %.0.i.i, 1
  ret i32 %i.ab
}

declare i32 @wc_CryptKey(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @wc_EncryptPKCS8Key(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, ptr nofree noundef readnone captures(none) %13) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wc_EncryptPKCS8Key_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef 0, ptr noundef %12, ptr poison)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_DecryptPKCS8Key(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.thread, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !15
  %i.e = icmp ne i8 %i.d, 48
  %i.f = icmp eq i32 %1, 1
  %or.cond66 = or i1 %i.f, %i.e
  br i1 %or.cond66, label %.thread, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15    ; 3 uses
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  %i.j = icmp slt i8 %i.h, 0
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.i, 127                        ; 6 uses
  %i.l = icmp eq i8 %i.h, -128
  br i1 %i.l, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.thread69.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp samesign ugt i32 %i.k, 4
  br i1 %i.n, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i32 %i.k, 3
  %i.p = add nsw i32 %i.o, -8
  %i.q = shl nuw nsw i32 1, %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.0.i.i.i = phi i32 [ %i.q, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %i.r = add nuw nsw i32 %i.k, 2                  ; 2 uses
  %i.s = icmp ugt i32 %i.r, %1
  br i1 %i.s, label %.thread, label %.preheader.i.i.i

.thread69.i.i.i:                                  ; preds = %bb.e
  %i.t = icmp ult i32 %1, 3
  br i1 %i.t, label %.thread, label %.lr.ph.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h
  %.not58.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not58.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i, %.thread69.i.i.i
  %.07174.i.i.i = phi i32 [ %.0.i.i.i, %.preheader.i.i.i ], [ 128, %.thread69.i.i.i ] ; 2 uses
  %i.u = phi i32 [ %i.r, %.preheader.i.i.i ], [ 3, %.thread69.i.i.i ] ; 2 uses
  %i.v = add nsw i32 %i.k, -1
  %xtraiter = and i32 %i.i, 3                     ; 3 uses
  %i.w = icmp ult i32 %i.v, 3
  br i1 %i.w, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i32 %i.i, 124
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
end_hunk_1
