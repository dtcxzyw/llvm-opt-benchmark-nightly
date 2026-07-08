inline.NumInlined: 4
begin_hunk_0_@a2d_ASN1_OBJECT:bb.a

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq ptr %.197230, null
  br i1 %i.z, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.aa = call ptr @BN_new() #5                   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.thread171, label %.thread

.thread:                                          ; preds = %bb.k, %bb.l
  %.2156 = phi ptr [ %i.aa, %bb.l ], [ %.197230, %bb.k ] ; 3 uses
  %i.ac = call i32 @BN_set_word(ptr noundef nonnull %.2156, i64 noundef %.098229) #5
  %.not141 = icmp eq i32 %i.ac, 0
  br i1 %.not141, label %.thread171, label %.thread157

bb.m:                                             ; preds = %bb.j
  br i1 %i.x, label %bb.o, label %.thread157

.thread157:                                       ; preds = %.thread, %bb.m
  %.3163 = phi ptr [ %.197230, %bb.m ], [ %.2156, %.thread ] ; 5 uses
  %i.ad = call i32 @BN_mul_word(ptr noundef %.3163, i64 noundef 10) #5
  %.not143 = icmp eq i32 %i.ad, 0
  br i1 %.not143, label %.thread171, label %bb.n

bb.n:                                             ; preds = %.thread157
  %i.ae = add nsw i32 %i.v, -48
  %i.af = sext i32 %i.ae to i64
  %i.ag = call i32 @BN_add_word(ptr noundef %.3163, i64 noundef %i.af) #5
  %.not144 = icmp eq i32 %i.ag, 0
  br i1 %.not144, label %.thread171, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ah = mul i64 %.098229, 10
  %i.ai = add nsw i32 %i.v, -48
  %i.aj = sext i32 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.aj
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.3164 = phi ptr [ %.3163, %bb.n ], [ %.197230, %bb.o ] ; 2 uses
  %.1115161 = phi i32 [ 1, %bb.n ], [ 0, %bb.o ]  ; 2 uses
  %.199 = phi i64 [ %.098229, %bb.n ], [ %i.ak, %bb.o ] ; 2 uses
  %i.al = icmp samesign ult i32 %.2124226, 2
  br i1 %i.al, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %.lr.ph, %.lr.ph
  %.0114.lcssa.ph = phi i32 [ %.1115161, %bb.p ], [ %.0114227, %.lr.ph ], [ %.0114227, %.lr.ph ] ; 2 uses
  %.098.lcssa.ph = phi i64 [ %.199, %bb.p ], [ %.098229, %.lr.ph ], [ %.098229, %.lr.ph ] ; 3 uses
  %.197.lcssa.ph = phi ptr [ %.3164, %bb.p ], [ %.197230, %.lr.ph ], [ %.197230, %.lr.ph ] ; 11 uses
  %.3125.ph = phi i32 [ 0, %bb.p ], [ %i.s, %.lr.ph ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.am = icmp eq i32 %.0119261, 0
  br i1 %i.am, label %bb.q, label %bb.t

bb.q:                                             ; preds = %._crit_edge
  %i.an = icmp ugt i64 %.098.lcssa.ph, 39
  %or.cond9 = select i1 %i.n, i1 %i.an, i1 false
  br i1 %or.cond9, label %.thread171.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not145 = icmp eq i32 %.0114.lcssa.ph, 0
  br i1 %.not145, label %.thread325, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = call i32 @BN_add_word(ptr noundef %.197.lcssa.ph, i64 noundef %i.q) #5
  %.not146 = icmp eq i32 %i.ao, 0
  br i1 %.not146, label %.thread171, label %.thread165

.thread325:                                       ; preds = %bb.r
  %i.ap = add i64 %.098.lcssa.ph, %i.q
  br label %.preheader187.preheader

bb.t:                                             ; preds = %._crit_edge
  %.not147 = icmp eq i32 %.0114.lcssa.ph, 0
  br i1 %.not147, label %.preheader187.preheader, label %.thread165

.preheader187.preheader:                          ; preds = %.thread325, %bb.t
  %.3101.ph = phi i64 [ %.098.lcssa.ph, %bb.t ], [ %i.ap, %.thread325 ]
  br label %.preheader187

.thread165:                                       ; preds = %bb.s, %bb.t
  %i.aq = call i32 @BN_num_bits(ptr noundef %.197.lcssa.ph) #5 ; 2 uses
  %i.ar = add nsw i32 %i.aq, 6
  %i.as = sdiv i32 %i.ar, 7                       ; 3 uses
  %i.at = icmp sgt i32 %i.as, %.0105264
  br i1 %i.at, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.thread165
  %.not148 = icmp eq ptr %.0109263, %i.a
  br i1 %.not148, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @CRYPTO_free(ptr noundef %.0109263, ptr noundef nonnull @.str, i32 noundef 133) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.au = add nuw nsw i32 %i.as, 32               ; 2 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = call noalias ptr @CRYPTO_malloc(i64 noundef %i.av, ptr noundef nonnull @.str, i32 noundef 135) #5 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.thread171.thread, label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread165
  %.1110 = phi ptr [ %i.aw, %bb.w ], [ %.0109263, %.thread165 ] ; 4 uses
  %.1106 = phi i32 [ %i.au, %bb.w ], [ %.0105264, %.thread165 ] ; 2 uses
  %.off = add i32 %i.aq, 12
  %.not149250 = icmp ult i32 %.off, 13
  br i1 %.not149250, label %.loopexit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.x, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %.in = phi i32 [ %i.az, %bb.y ], [ %i.as, %bb.x ]
  %i.ay = call i64 @BN_div_word(ptr noundef %.197.lcssa.ph, i64 noundef 128) #5 ; 2 uses
  %.not150 = icmp eq i64 %i.ay, -1
  br i1 %.not150, label %.thread171, label %bb.y

bb.y:                                             ; preds = %.lr.ph253
  %i.az = add nsw i32 %.in, -1                    ; 2 uses
  %i.ba = trunc i64 %i.ay to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1110, i64 %indvars.iv
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !15
  %.not149 = icmp eq i32 %i.az, 0
  br i1 %.not149, label %.loopexit.loopexit273, label %.lr.ph253, !llvm.loop !16

.preheader187:                                    ; preds = %.preheader187.preheader, %.preheader187
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %.preheader187 ], [ 0, %.preheader187.preheader ] ; 2 uses
  %.3101 = phi i64 [ %i.bf, %.preheader187 ], [ %.3101.ph, %.preheader187.preheader ] ; 2 uses
  %i.bc = trunc i64 %.3101 to i8
  %i.bd = and i8 %i.bc, 127
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0109263, i64 %indvars.iv309
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !15
  %i.bf = lshr i64 %.3101, 7                      ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.loopexit.loopexit, label %.preheader187

.loopexit.loopexit:                               ; preds = %.preheader187
  %i.bh = trunc nuw nsw i64 %indvars.iv.next310 to i32
  br label %.loopexit

.loopexit.loopexit273:                            ; preds = %bb.y
  %i.bi = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit273, %.loopexit.loopexit, %bb.x
  %.4130 = phi i32 [ %i.bh, %.loopexit.loopexit ], [ 0, %bb.x ], [ %i.bi, %.loopexit.loopexit273 ] ; 5 uses
  %.3112 = phi ptr [ %.0109263, %.loopexit.loopexit ], [ %.1110, %bb.x ], [ %.1110, %.loopexit.loopexit273 ] ; 10 uses
  %.3108 = phi i32 [ %.0105264, %.loopexit.loopexit ], [ %.1106, %bb.x ], [ %.1106, %.loopexit.loopexit273 ]
  %i.bj = add nsw i32 %.4130, %.0119261           ; 2 uses
  br i1 %.not151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.bk = icmp sgt i32 %i.bj, %1
  br i1 %i.bk, label %.thread171.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.z
  %i.bl = icmp sgt i32 %.4130, 1
  br i1 %i.bl, label %iter.check, label %._crit_edge258

iter.check:                                       ; preds = %.preheader
  %i.bm = sext i32 %.0119261 to i64               ; 8 uses
  %i.bn = zext nneg i32 %.4130 to i64             ; 9 uses
  %i.bo = add nsw i64 %i.bn, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %.4130, 9
  br i1 %min.iters.check, label %.lr.ph257.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %i.bm
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bm
  %scevgep388 = getelementptr i8, ptr %i.bp, i64 %i.bn
  %scevgep390 = getelementptr i8, ptr %.3112, i64 1
  %scevgep391 = getelementptr i8, ptr %.3112, i64 %i.bn
  %bound0 = icmp ult ptr %scevgep, %scevgep391
  %bound1 = icmp ult ptr %scevgep390, %scevgep388
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph257.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check393 = icmp ult i32 %.4130, 33
  br i1 %min.iters.check393, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bo, 24
  %n.vec = and i64 %i.bo, -32                     ; 5 uses
  %i.bq = sub nsw i64 %i.bn, %n.vec
  %i.br = add nsw i64 %n.vec, %i.bm               ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.3112, i64 %i.bn
  %invariant.gep444 = getelementptr i8, ptr %0, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.bs ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.bu = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.bt, align 1, !tbaa !15, !alias.scope !18
  %wide.load394 = load <16 x i8>, ptr %i.bu, align 1, !tbaa !15, !alias.scope !18
  %i.bv = or <16 x i8> %wide.load, splat (i8 -128)
  %4 = or <16 x i8> %wide.load394, splat (i8 -128)
  %reverse = shufflevector <16 x i8> %i.bv, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bw = shufflevector <16 x i8> %4, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep445 = getelementptr i8, ptr %invariant.gep444, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep445, i64 16
  store <16 x i8> %reverse, ptr %gep445, align 1, !tbaa !15, !alias.scope !21, !noalias !18
  store <16 x i8> %i.bw, ptr %i.bx, align 1, !tbaa !15, !alias.scope !21, !noalias !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge258.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph257.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec398 = and i64 %i.bo, -8                   ; 4 uses
  %i.bz = sub nsw i64 %i.bn, %n.vec398
  %i.ca = add nsw i64 %n.vec398, %i.bm            ; 2 uses
  %invariant.gep446 = getelementptr i8, ptr %.3112, i64 %i.bn
  %invariant.gep448 = getelementptr i8, ptr %0, i64 %i.bm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index399 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next402, %vec.epilog.vector.body ] ; 3 uses
  %i.cb = xor i64 %index399, -1
  %gep447 = getelementptr i8, ptr %invariant.gep446, i64 %i.cb
  %i.cc = getelementptr inbounds i8, ptr %gep447, i64 -7
  %wide.load400 = load <8 x i8>, ptr %i.cc, align 1, !tbaa !15, !alias.scope !18
  %i.cd = or <8 x i8> %wide.load400, splat (i8 -128)
  %i.ce = shufflevector <8 x i8> %i.cd, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep449 = getelementptr i8, ptr %invariant.gep448, i64 %index399
  store <8 x i8> %i.ce, ptr %gep449, align 1, !tbaa !15, !alias.scope !21, !noalias !18
  %index.next402 = add nuw i64 %index399, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next402, %n.vec398
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n403 = icmp eq i64 %i.bo, %n.vec398
  br i1 %cmp.n403, label %._crit_edge258.loopexit, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv314.ph = phi i64 [ %i.bn, %iter.check ], [ %i.bn, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  %indvars.iv312.ph = phi i64 [ %i.bm, %iter.check ], [ %i.bm, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %.lr.ph257
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %.lr.ph257 ], [ %indvars.iv314.ph, %.lr.ph257.preheader ] ; 2 uses
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %.lr.ph257 ], [ %indvars.iv312.ph, %.lr.ph257.preheader ] ; 2 uses
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, -1 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.3112, i64 %indvars.iv.next315
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = or i8 %i.ch, -128
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %0, i64 %indvars.iv312
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !15
  %i.ck = icmp samesign ugt i64 %indvars.iv314, 2
  br i1 %i.ck, label %.lr.ph257, label %._crit_edge258.loopexit, !llvm.loop !28

._crit_edge258.loopexit:                          ; preds = %.lr.ph257, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next313.lcssa = phi i64 [ %i.ca, %vec.epilog.middle.block ], [ %i.br, %middle.block ], [ %indvars.iv.next313, %.lr.ph257 ]
  %i.cl = trunc nsw i64 %indvars.iv.next313.lcssa to i32
  br label %._crit_edge258

._crit_edge258:                                   ; preds = %._crit_edge258.loopexit, %.preheader
  %.1120.lcssa = phi i32 [ %.0119261, %.preheader ], [ %i.cl, %._crit_edge258.loopexit ] ; 2 uses
  %i.cm = load i8, ptr %.3112, align 1, !tbaa !15
  %i.cn = add nsw i32 %.1120.lcssa, 1
  %i.co = sext i32 %.1120.lcssa to i64
  %i.cp = getelementptr inbounds i8, ptr %0, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %._crit_edge258
  %.2121 = phi i32 [ %i.cn, %._crit_edge258 ], [ %i.bj, %.loopexit ] ; 3 uses
  %i.cq = icmp slt i32 %.3125.ph, 1
  br i1 %i.cq, label %._crit_edge269, label %bb.h

._crit_edge269:                                   ; preds = %bb.aa
  %.not152 = icmp eq ptr %.3112, %i.a
  br i1 %.not152, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge269
  call void @CRYPTO_free(ptr noundef %.3112, ptr noundef nonnull @.str, i32 noundef 166) #5
  br label %.sink.split

.thread171.sink.split:                            ; preds = %bb.z, %bb.q, %bb.h, %bb.i
  %.sink366 = phi i32 [ 98, %bb.i ], [ 156, %bb.z ], [ 85, %bb.h ], [ 117, %bb.q ]
  %.sink = phi i32 [ 130, %bb.i ], [ 107, %bb.z ], [ 131, %bb.h ], [ 147, %bb.q ]
  %.4113.ph = phi ptr [ %.0109263, %bb.i ], [ %.3112, %bb.z ], [ %.0109263, %bb.h ], [ %.0109263, %bb.q ]
  %.4.ph = phi ptr [ %.197230, %bb.i ], [ %.197.lcssa.ph, %bb.z ], [ %.096266, %bb.h ], [ %.197.lcssa.ph, %bb.q ]
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink366, ptr noundef nonnull @__func__.a2d_ASN1_OBJECT) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.sink, ptr noundef null) #5
  br label %.thread171

.thread171:                                       ; preds = %bb.s, %.thread157, %bb.n, %bb.l, %.thread, %.lr.ph253, %.thread171.sink.split
  %.4113 = phi ptr [ %.1110, %.lr.ph253 ], [ %.0109263, %.thread157 ], [ %.4113.ph, %.thread171.sink.split ], [ %.0109263, %.thread ], [ %.0109263, %bb.l ], [ %.0109263, %bb.n ], [ %.0109263, %bb.s ] ; 2 uses
  %.4 = phi ptr [ %.197.lcssa.ph, %.lr.ph253 ], [ %.3163, %.thread157 ], [ %.4.ph, %.thread171.sink.split ], [ %.3163, %bb.n ], [ null, %bb.l ], [ %.2156, %.thread ], [ %.197.lcssa.ph, %bb.s ] ; 2 uses
  %.not153 = icmp eq ptr %.4113, %i.a
  br i1 %.not153, label %.sink.split, label %.thread171.thread

.thread171.thread:                                ; preds = %bb.w, %.thread171
  %.4186 = phi ptr [ %.4, %.thread171 ], [ %.197.lcssa.ph, %bb.w ]
  %.4113185 = phi ptr [ %.4113, %.thread171 ], [ null, %bb.w ]
  call void @CRYPTO_free(ptr noundef %.4113185, ptr noundef nonnull @.str, i32 noundef 171) #5
  br label %.sink.split

.sink.split:                                      ; preds = %.thread171, %.thread171.thread, %bb.f, %bb.e, %._crit_edge269, %bb.ab, %bb.g
  %.4181.sink = phi ptr [ null, %bb.g ], [ %.197.lcssa.ph, %._crit_edge269 ], [ %.197.lcssa.ph, %bb.ab ], [ %.4, %.thread171 ], [ %.4186, %.thread171.thread ], [ null, %bb.f ], [ null, %bb.e ]
  %.0.ph = phi i32 [ 0, %bb.g ], [ %.2121, %._crit_edge269 ], [ %.2121, %bb.ab ], [ 0, %.thread171 ], [ 0, %.thread171.thread ], [ 0, %bb.f ], [ 0, %bb.e ]
  call void @BN_free(ptr noundef %.4181.sink) #5
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ %3, %bb.a ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ossl_isdigit(i32 noundef) local_unnamed_addr #2

declare ptr @BN_new() local_unnamed_addr #2

declare i32 @BN_set_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_add_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @BN_div_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @i2t_ASN1_OBJECT(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @OBJ_obj2txt(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0) #5
  ret i32 %i.a
}

declare i32 @OBJ_obj2txt(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @i2a_ASN1_OBJECT(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 4) #5
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.g = call i32 @OBJ_obj2txt(ptr noundef nonnull %i.a, i32 noundef 80, ptr noundef nonnull %1, i32 noundef 0) #5 ; 8 uses
  %i.h = icmp sgt i32 %i.g, 79
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq i32 %i.g, 2147483647
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 191, ptr noundef nonnull @__func__.i2a_ASN1_OBJECT) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 231, ptr noundef null) #5
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.j = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = call noalias ptr @CRYPTO_malloc(i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 194) #5 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.n = icmp slt i32 %i.g, 1
  br i1 %i.n, label %bb.i, label %.thread32

.thread32:                                        ; preds = %bb.h
end_hunk_0
