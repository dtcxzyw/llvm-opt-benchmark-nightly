Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ss_mintrosort:bb.a
  store i32 %i.cf, ptr %i.aje, align 4, !tbaa !165
  br label %ss_ilg.exit.backedge

bb.cn:                                            ; preds = %bb.cj
  %.not491 = icmp sgt i64 %i.adh, %i.agg
  %i.ajf = sext i32 %.0392 to i64
  %i.ajg = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ajf ; 10 uses
  store ptr %.0432, ptr %i.ajg, align 8, !tbaa !162
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  store ptr %i.aeo, ptr %i.ajh, align 8, !tbaa !163
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  store i32 %.0426, ptr %i.aji, align 8, !tbaa !164
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajg, i64 20
  store i32 %i.cf, ptr %i.ajj, align 4, !tbaa !165
  %i.ajk = getelementptr i8, ptr %i.ajg, i64 24   ; 2 uses
  %i.ajl = getelementptr i8, ptr %i.ajg, i64 32   ; 2 uses
  br i1 %.not491, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr %i.agb, ptr %i.ajk, align 8, !tbaa !162
  store ptr %i.aeq, ptr %i.ajl, align 8, !tbaa !163
  %i.ajm = add nsw i32 %.0426, 1
  %i.ajn = getelementptr i8, ptr %i.ajg, i64 40
  store i32 %i.ajm, ptr %i.ajn, align 8, !tbaa !164
  %i.ajo = and i64 %i.agf, 261120
  %.not.i537 = icmp eq i64 %i.ajo, 0
  br i1 %.not.i537, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ajp = lshr i64 %i.agg, 8
  %i.ajq = and i64 %i.ajp, 255
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !12
  %i.ajt = add nsw i32 %i.ajs, 8
  br label %ss_ilg.exit538

bb.cq:                                            ; preds = %bb.co
  %i.aju = and i64 %i.agg, 255
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aju
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !12
  br label %ss_ilg.exit538

ss_ilg.exit538:                                   ; preds = %bb.cp, %bb.cq
  %i.ajx = phi i32 [ %i.ajt, %bb.cp ], [ %i.ajw, %bb.cq ]
  %i.ajy = add nsw i32 %.0392, 2
  %i.ajz = getelementptr i8, ptr %i.ajg, i64 44
  store i32 %i.ajx, ptr %i.ajz, align 4, !tbaa !165
  br label %ss_ilg.exit.backedge

bb.cr:                                            ; preds = %bb.cn
  store ptr %i.aeq, ptr %i.ajk, align 8, !tbaa !162
  store ptr %.0429, ptr %i.ajl, align 8, !tbaa !163
  %i.aka = getelementptr i8, ptr %i.ajg, i64 40
  store i32 %.0426, ptr %i.aka, align 8, !tbaa !164
  %i.akb = add nsw i32 %.0392, 2                  ; 2 uses
  %i.akc = getelementptr i8, ptr %i.ajg, i64 44
  store i32 %i.cf, ptr %i.akc, align 4, !tbaa !165
  %i.akd = add nsw i32 %.0426, 1                  ; 2 uses
  %i.ake = and i64 %i.agf, 261120
  %.not.i539 = icmp eq i64 %i.ake, 0
  br i1 %.not.i539, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.akf = lshr i64 %i.agg, 8
  %i.akg = and i64 %i.akf, 255
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.akg
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !12
  %i.akj = add nsw i32 %i.aki, 8
  br label %ss_ilg.exit.backedge

bb.ct:                                            ; preds = %bb.cr
  %i.akk = and i64 %i.agg, 255
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.akk
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !12
  br label %ss_ilg.exit.backedge

bb.cu:                                            ; preds = %._crit_edge
  %i.akn = load i32, ptr %.0432, align 4, !tbaa !12
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ako
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !12
  %i.akr = sext i32 %i.akq to i64
  %i.aks = getelementptr i8, ptr %i.ce, i64 %i.akr
  %i.akt = getelementptr i8, ptr %i.aks, i64 -1
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !13
  %i.akv = icmp ult i8 %i.aku, %i.yl
  br i1 %i.akv, label %bb.cv, label %ss_ilg.exit552

bb.cv:                                            ; preds = %bb.cu
  %i.akw = getelementptr inbounds i8, ptr %.0432, i64 -4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.da, %bb.cv
  %.031.i541 = phi ptr [ %i.akw, %bb.cv ], [ %.lcssa.i544, %bb.da ]
  %.0.i542 = phi ptr [ %.0429, %bb.cv ], [ %i.alk, %bb.da ] ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.031.i541, i64 4 ; 3 uses
  %i.aky = icmp ult ptr %i.akx, %.0.i542
  br i1 %i.aky, label %.lr.ph.i548, label %.critedge.i543

.lr.ph.i548:                                      ; preds = %bb.cw, %bb.cx
  %i.akz = phi ptr [ %i.ali, %bb.cx ], [ %i.akx, %bb.cw ] ; 4 uses
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !12 ; 2 uses
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.alb ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !12
  %i.ale = add nsw i32 %i.ald, %.0426
  %i.alf = getelementptr i8, ptr %i.alc, i64 4
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !12
  %.not.not.i549 = icmp sgt i32 %i.ale, %i.alg
  br i1 %.not.not.i549, label %bb.cx, label %.critedge.i543

bb.cx:                                            ; preds = %.lr.ph.i548
  %i.alh = xor i32 %i.ala, -1
  store i32 %i.alh, ptr %i.akz, align 4, !tbaa !12
  %i.ali = getelementptr inbounds nuw i8, ptr %i.akz, i64 4 ; 3 uses
  %i.alj = icmp ult ptr %i.ali, %.0.i542
  br i1 %i.alj, label %.lr.ph.i548, label %.critedge.i543, !llvm.loop !142

.critedge.i543:                                   ; preds = %bb.cx, %.lr.ph.i548, %bb.cw
  %.lcssa.i544 = phi ptr [ %i.akx, %bb.cw ], [ %i.akz, %.lr.ph.i548 ], [ %i.ali, %bb.cx ] ; 8 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cz, %.critedge.i543
  %.1.i545 = phi ptr [ %.0.i542, %.critedge.i543 ], [ %i.alk, %bb.cz ]
  %i.alk = getelementptr inbounds i8, ptr %.1.i545, i64 -4 ; 5 uses
  %i.all = icmp ult ptr %.lcssa.i544, %i.alk
  br i1 %i.all, label %bb.cz, label %.critedge2.i546

bb.cz:                                            ; preds = %bb.cy
  %i.alm = load i32, ptr %i.alk, align 4, !tbaa !12 ; 2 uses
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aln ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !12
  %i.alq = add nsw i32 %i.alp, %.0426
  %i.alr = getelementptr i8, ptr %i.alo, i64 4
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !12
  %.not.i547 = icmp sgt i32 %i.alq, %i.als
  br i1 %.not.i547, label %bb.da, label %bb.cy, !llvm.loop !143

bb.da:                                            ; preds = %bb.cz
  %i.alt = xor i32 %i.alm, -1
  %i.alu = load i32, ptr %.lcssa.i544, align 4, !tbaa !12
  store i32 %i.alu, ptr %i.alk, align 4, !tbaa !12
  store i32 %i.alt, ptr %.lcssa.i544, align 4, !tbaa !12
  br label %bb.cw

.critedge2.i546:                                  ; preds = %bb.cy
  %i.alv = icmp ult ptr %.0432, %.lcssa.i544
  br i1 %i.alv, label %bb.db, label %ss_partition.exit550

bb.db:                                            ; preds = %.critedge2.i546
  %i.alw = load i32, ptr %.0432, align 4, !tbaa !12
  %i.alx = xor i32 %i.alw, -1
  store i32 %i.alx, ptr %.0432, align 4, !tbaa !12
  br label %ss_partition.exit550

ss_partition.exit550:                             ; preds = %.critedge2.i546, %bb.db
  %i.aly = ptrtoint ptr %.lcssa.i544 to i64
  %i.alz = sub i64 %i.n, %i.aly                   ; 3 uses
  %i.ama = and i64 %i.alz, 261120
  %.not.i551 = icmp eq i64 %i.ama, 0
  br i1 %.not.i551, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %ss_partition.exit550
  %i.amb = lshr i64 %i.alz, 10
  %i.amc = and i64 %i.amb, 255
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.amc
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !12
  %i.amf = add nsw i32 %i.ame, 8
  br label %ss_ilg.exit552

bb.dd:                                            ; preds = %ss_partition.exit550
  %i.amg = lshr exact i64 %i.alz, 2
  %i.amh = and i64 %i.amg, 255
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.amh
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !12
  br label %ss_ilg.exit552

ss_ilg.exit552:                                   ; preds = %bb.dd, %bb.dc, %bb.cu
  %.5437 = phi ptr [ %.0432, %bb.cu ], [ %.lcssa.i544, %bb.dc ], [ %.lcssa.i544, %bb.dd ]
  %.2390 = phi i32 [ %.0388, %bb.cu ], [ %i.amf, %bb.dc ], [ %i.amj, %bb.dd ]
  %i.amk = add nsw i32 %.0426, 1
  br label %ss_ilg.exit.backedge

ss_ilg.exit.backedge:                             ; preds = %ss_ilg.exit552, %ss_ilg.exit536, %ss_ilg.exit538, %ss_ilg.exit530, %ss_ilg.exit532, %bb.ch, %bb.ci, %bb.cs, %bb.ct, %ss_ilg.exit513, %bb.af, %bb.ah, %bb.ai, %bb.ao, %bb.ap, %bb.l
  %.0432.be = phi ptr [ %i.agb, %bb.cs ], [ %i.agb, %bb.ct ], [ %i.bw, %bb.l ], [ %.3435, %bb.ap ], [ %.0419.lcssa, %bb.af ], [ %.3435, %bb.ai ], [ %.0419.lcssa, %ss_ilg.exit513 ], [ %.3435, %bb.ah ], [ %.3435, %bb.ao ], [ %.0432, %ss_ilg.exit530 ], [ %.0432, %ss_ilg.exit532 ], [ %.5437, %ss_ilg.exit552 ], [ %i.aeq, %ss_ilg.exit536 ], [ %i.aeq, %ss_ilg.exit538 ], [ %i.agb, %bb.ci ], [ %i.agb, %bb.ch ]
  %.0429.be = phi ptr [ %i.aeq, %bb.cs ], [ %i.aeq, %bb.ct ], [ %i.by, %bb.l ], [ %.0419.lcssa, %bb.ap ], [ %.0429, %bb.af ], [ %.0419.lcssa, %bb.ai ], [ %.0429, %ss_ilg.exit513 ], [ %.0419.lcssa, %bb.ah ], [ %.0419.lcssa, %bb.ao ], [ %i.aeo, %ss_ilg.exit530 ], [ %i.aeo, %ss_ilg.exit532 ], [ %.0429, %ss_ilg.exit552 ], [ %.0429, %ss_ilg.exit536 ], [ %.0429, %ss_ilg.exit538 ], [ %i.aeq, %bb.ci ], [ %i.aeq, %bb.ch ]
  %.0426.be = phi i32 [ %i.akd, %bb.cs ], [ %i.akd, %bb.ct ], [ %i.ca, %bb.l ], [ %i.me, %bb.ap ], [ %.0426, %bb.af ], [ %i.lc, %bb.ai ], [ %.0426, %ss_ilg.exit513 ], [ %i.lc, %bb.ah ], [ %i.me, %bb.ao ], [ %.0426, %ss_ilg.exit530 ], [ %.0426, %ss_ilg.exit532 ], [ %i.amk, %ss_ilg.exit552 ], [ %.0426, %ss_ilg.exit536 ], [ %.0426, %ss_ilg.exit538 ], [ %i.aia, %bb.ci ], [ %i.aia, %bb.ch ]
  %.0392.be = phi i32 [ %i.akb, %bb.cs ], [ %i.akb, %bb.ct ], [ %i.bt, %bb.l ], [ %.0392, %bb.ap ], [ %.0392, %bb.af ], [ %i.la, %bb.ai ], [ %i.mc, %ss_ilg.exit513 ], [ %i.la, %bb.ah ], [ %.0392, %bb.ao ], [ %i.aha, %ss_ilg.exit530 ], [ %i.ahv, %ss_ilg.exit532 ], [ %.0392, %ss_ilg.exit552 ], [ %i.ajd, %ss_ilg.exit536 ], [ %i.ajy, %ss_ilg.exit538 ], [ %i.ahy, %bb.ci ], [ %i.ahy, %bb.ch ]
  %.0388.be = phi i32 [ %i.akj, %bb.cs ], [ %i.akm, %bb.ct ], [ %i.cc, %bb.l ], [ %i.mn, %bb.ap ], [ -1, %bb.af ], [ %i.ll, %bb.ai ], [ -1, %ss_ilg.exit513 ], [ %i.li, %bb.ah ], [ %i.mk, %bb.ao ], [ %i.cf, %ss_ilg.exit530 ], [ %i.cf, %ss_ilg.exit532 ], [ %.2390, %ss_ilg.exit552 ], [ %i.cf, %ss_ilg.exit536 ], [ %i.cf, %ss_ilg.exit538 ], [ %i.aij, %bb.ci ], [ %i.aig, %bb.ch ]
  br label %ss_ilg.exit
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ss_swapmerge(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr nofree noundef nonnull captures(address) %5, i32 noundef range(i32 -2147483645, -2147483648) %6) unnamed_addr #3 {
bb.a:
  %7 = alloca [32 x %struct.anon.0], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.a = sext i32 %6 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 20 uses
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.a
  %.0233.ph = phi ptr [ %4, %bb.a ], [ %.0233.ph.be, %.backedge.outer.backedge ] ; 16 uses
  %.0231.ph = phi ptr [ %3, %bb.a ], [ %.0231.ph.be, %.backedge.outer.backedge ]
  %.0229.ph = phi ptr [ %2, %bb.a ], [ %.0229.ph.be, %.backedge.outer.backedge ]
  %.0217.ph = phi i32 [ 0, %bb.a ], [ %.0217.ph.be, %.backedge.outer.backedge ]
  %.0215.ph = phi i32 [ 0, %bb.a ], [ %.0215.ph.be, %.backedge.outer.backedge ]
  %i.c = ptrtoint ptr %.0233.ph to i64            ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.bq
  %.0231 = phi ptr [ %i.sp, %bb.bq ], [ %.0231.ph, %.backedge.outer ] ; 33 uses
  %.0229 = phi ptr [ %.1225, %bb.bq ], [ %.0229.ph, %.backedge.outer ] ; 29 uses
  %.0217 = phi i32 [ %i.tx, %bb.bq ], [ %.0217.ph, %.backedge.outer ] ; 10 uses
  %.0215 = phi i32 [ %i.ub, %bb.bq ], [ %.0215.ph, %.backedge.outer ] ; 12 uses
  %i.d = ptrtoint ptr %.0231 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %.not = icmp sgt i64 %i.f, %i.a
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.g = icmp ult ptr %.0229, %.0231
  %i.h = icmp ult ptr %.0231, %.0233.ph
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = lshr exact i64 %i.e, 2                   ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %5, i64 %i.e
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = trunc i64 %i.i to i32                    ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %ss_blockswap.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.n = and i64 %i.i, 2147483647                 ; 2 uses
  %min.iters.check151 = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check151, label %.lr.ph.i.i.preheader177, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i.i.preheader
  %i.o = add i64 %i.e, 17179869180
  %i.p = and i64 %i.o, 17179869180
  %8 = add nuw nsw i64 %i.p, 4                    ; 2 uses
  %i.q = getelementptr i8, ptr %5, i64 %8
  %i.r = getelementptr i8, ptr %.0231, i64 %8
  %bound0153 = icmp ult ptr %5, %i.r
  %bound1154 = icmp ult ptr %.0231, %i.q
  %found.conflict155 = and i1 %bound0153, %bound1154
  br i1 %found.conflict155, label %.lr.ph.i.i.preheader177, label %vector.ph156

vector.ph156:                                     ; preds = %vector.memcheck152
  %n.vec157 = and i64 %i.i, 2147483640            ; 4 uses
  %i.s = trunc nuw nsw i64 %n.vec157 to i32
  %i.t = sub nsw i32 %i.l, %i.s
  %i.u = shl nuw nsw i64 %n.vec157, 2             ; 2 uses
  %i.v = getelementptr i8, ptr %.0231, i64 %i.u
  %i.w = getelementptr i8, ptr %5, i64 %i.u
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next166, %vector.body158 ] ; 2 uses
  %i.x = shl i64 %index159, 2                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.0231, i64 %i.x ; 3 uses
  %next.gep161 = getelementptr i8, ptr %5, i64 %i.x ; 3 uses
  %i.y = getelementptr i8, ptr %next.gep161, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %next.gep161, align 4, !tbaa !12, !alias.scope !197, !noalias !198
  %wide.load163 = load <4 x i32>, ptr %i.y, align 4, !tbaa !12, !alias.scope !197, !noalias !198
  %i.z = getelementptr i8, ptr %next.gep160, i64 16 ; 2 uses
  %wide.load164 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !12, !alias.scope !198
  %wide.load165 = load <4 x i32>, ptr %i.z, align 4, !tbaa !12, !alias.scope !198
  store <4 x i32> %wide.load164, ptr %next.gep161, align 4, !tbaa !12, !alias.scope !197, !noalias !198
  store <4 x i32> %wide.load165, ptr %i.y, align 4, !tbaa !12, !alias.scope !197, !noalias !198
  store <4 x i32> %wide.load162, ptr %next.gep160, align 4, !tbaa !12, !alias.scope !198
  store <4 x i32> %wide.load163, ptr %i.z, align 4, !tbaa !12, !alias.scope !198
  %index.next166 = add nuw i64 %index159, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next166, %n.vec157
  br i1 %i.aa, label %middle.block167, label %vector.body158, !llvm.loop !173

middle.block167:                                  ; preds = %vector.body158
  %cmp.n168 = icmp eq i64 %i.n, %n.vec157
  br i1 %cmp.n168, label %ss_blockswap.exit.i, label %.lr.ph.i.i.preheader177

.lr.ph.i.i.preheader177:                          ; preds = %vector.memcheck152, %.lr.ph.i.i.preheader, %middle.block167
  %.012.i.i.ph = phi i32 [ %i.l, %vector.memcheck152 ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block167 ]
  %.0811.i.i.ph = phi ptr [ %.0231, %vector.memcheck152 ], [ %.0231, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block167 ]
  %.0910.i.i.ph = phi ptr [ %5, %vector.memcheck152 ], [ %5, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block167 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader177, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %i.ad, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader177 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.0811.i.i.ph, %.lr.ph.i.i.preheader177 ] ; 3 uses
  %.0910.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader177 ] ; 3 uses
  %i.ab = load i32, ptr %.0910.i.i, align 4, !tbaa !12
  %i.ac = load i32, ptr %.0811.i.i, align 4, !tbaa !12
  store i32 %i.ac, ptr %.0910.i.i, align 4, !tbaa !12
  store i32 %i.ab, ptr %.0811.i.i, align 4, !tbaa !12
  %i.ad = add nsw i32 %.012.i.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.ag = icmp samesign ugt i32 %.012.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i, label %ss_blockswap.exit.i, !llvm.loop !174

ss_blockswap.exit.i:                              ; preds = %.lr.ph.i.i, %middle.block167, %bb.c
  %i.ah = load i32, ptr %i.k, align 4, !tbaa !12  ; 3 uses
  %.lobit.i = ashr i32 %i.ah, 31
  %.pn.in.i = xor i32 %.lobit.i, %i.ah
  %.lobit186.i = lshr i32 %i.ah, 31
  %.pn.i = zext i32 %.pn.in.i to i64
  %.0153.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn.i
  %i.ai = getelementptr inbounds i8, ptr %.0231, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12 ; 3 uses
  %.lobit187.i = ashr i32 %i.aj, 31
  %.pn175.in.i = xor i32 %.lobit187.i, %i.aj
  %i.ak = lshr i32 %i.aj, 30
  %i.al = and i32 %i.ak, 2
  %.1.i = or disjoint i32 %i.al, %.lobit186.i
  %.pn175.i = zext i32 %.pn175.in.i to i64
  %.0150.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn175.i
  %i.am = getelementptr inbounds i8, ptr %.0233.ph, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !12
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %ss_blockswap.exit.i
  %.1154.i.ph = phi ptr [ %.0153.i, %ss_blockswap.exit.i ], [ %.1154.i.ph.be, %.outer.backedge ] ; 2 uses
  %.1151.i.ph = phi ptr [ %.0150.i, %ss_blockswap.exit.i ], [ %.1151.i.ph.be, %.outer.backedge ]
  %.0141.i.ph = phi ptr [ %i.am, %ss_blockswap.exit.i ], [ %.0141.i.ph.be, %.outer.backedge ]
  %.0133.i.ph = phi ptr [ %i.k, %ss_blockswap.exit.i ], [ %.0133.i.ph.be, %.outer.backedge ] ; 9 uses
  %.0127.i.ph = phi ptr [ %i.ai, %ss_blockswap.exit.i ], [ %.0127.i.ph.be, %.outer.backedge ]
  %.2.i.ph = phi i32 [ %.1.i, %ss_blockswap.exit.i ], [ %.2.i.ph.be, %.outer.backedge ]
  %i.ao = getelementptr i8, ptr %.1154.i.ph, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.backedge176, %.outer
  %.1151.i = phi ptr [ %.1151.i.ph, %.outer ], [ %.1151.i.be, %.backedge176 ] ; 4 uses
  %.0141.i = phi ptr [ %.0141.i.ph, %.outer ], [ %i.cv, %.backedge176 ] ; 6 uses
  %.0127.i = phi ptr [ %.0127.i.ph, %.outer ], [ %i.cx, %.backedge176 ] ; 8 uses
  %.2.i = phi i32 [ %.2.i.ph, %.outer ], [ %.2.i.be, %.backedge176 ] ; 9 uses
  %.1154.val.i = load i32, ptr %.1154.i.ph, align 4, !tbaa !12 ; 2 uses
  %.1154.val182.i = load i32, ptr %i.ao, align 4, !tbaa !12 ; 2 uses
  %.1151.val.i = load i32, ptr %.1151.i, align 4, !tbaa !12 ; 2 uses
  %i.ap = getelementptr i8, ptr %.1151.i, i64 4
  %.1151.val183.i = load i32, ptr %i.ap, align 4, !tbaa !12 ; 2 uses
  %i.aq = sext i32 %.1154.val.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = sext i32 %.1151.val.i to i64
  %i.at = getelementptr inbounds i8, ptr %i.b, i64 %i.as ; 2 uses
  %i.au = sext i32 %.1154.val182.i to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 2
  %i.ax = sext i32 %.1151.val183.i to i64
  %i.ay = getelementptr i8, ptr %0, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 2
  %i.ba = icmp slt i32 %.1154.val.i, %.1154.val182.i ; 2 uses
  %i.bb = icmp slt i32 %.1151.val.i, %.1151.val183.i ; 2 uses
  %or.cond6.i.i = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond6.i.i, label %.lr.ph.i184.i, label %.critedge.i.i

.lr.ph.i184.i:                                    ; preds = %bb.d, %bb.e
  %.08.i.i = phi ptr [ %i.bg, %bb.e ], [ %i.at, %bb.d ] ; 2 uses
  %.0257.i.i = phi ptr [ %i.bf, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.bc = load i8, ptr %.0257.i.i, align 1, !tbaa !13 ; 2 uses
  %i.bd = load i8, ptr %.08.i.i, align 1, !tbaa !13 ; 2 uses
  %i.be = icmp eq i8 %i.bc, %i.bd
  br i1 %i.be, label %bb.e, label %ss_compare.exit.i

bb.e:                                             ; preds = %.lr.ph.i184.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 3 uses
  %i.bh = icmp ult ptr %i.bf, %i.aw               ; 2 uses
  %i.bi = icmp ult ptr %i.bg, %i.az               ; 2 uses
  %or.cond.i.i = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i184.i, label %.critedge.i.i, !llvm.loop !0

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.025.lcssa.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.bf, %bb.e ]
  %.0.lcssa.i.i = phi ptr [ %i.at, %bb.d ], [ %i.bg, %bb.e ]
  %.lcssa5.i.i = phi i1 [ %i.ba, %bb.d ], [ %i.bh, %bb.e ]
  %.lcssa.i.i = phi i1 [ %i.bb, %bb.d ], [ %i.bi, %bb.e ] ; 2 uses
  br i1 %.lcssa5.i.i, label %bb.f, label %ss_compare.exit.thread185.i

bb.f:                                             ; preds = %.critedge.i.i
  br i1 %.lcssa.i.i, label %.ss_compare.exit_crit_edge.i, label %ss_compare.exit.thread.i

.ss_compare.exit_crit_edge.i:                     ; preds = %bb.f
  %.pre.i = load i8, ptr %.025.lcssa.i.i, align 1, !tbaa !13
  %.pre = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !13
  br label %ss_compare.exit.i

ss_compare.exit.thread185.i:                      ; preds = %.critedge.i.i
  %i.bj = sext i1 %.lcssa.i.i to i32
  br label %bb.k

ss_compare.exit.i:                                ; preds = %.lr.ph.i184.i, %.ss_compare.exit_crit_edge.i
  %i.bk = phi i8 [ %.pre, %.ss_compare.exit_crit_edge.i ], [ %i.bd, %.lr.ph.i184.i ]
  %i.bl = phi i8 [ %.pre.i, %.ss_compare.exit_crit_edge.i ], [ %i.bc, %.lr.ph.i184.i ]
  %i.bm = zext i8 %i.bl to i32
  %i.bn = zext i8 %i.bk to i32
  %i.bo = sub nsw i32 %i.bm, %i.bn                ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %ss_compare.exit.thread.i, label %bb.k

ss_compare.exit.thread.i:                         ; preds = %ss_compare.exit.i, %bb.f
  %i.bq = and i32 %.2.i, 1
  %.not180.i = icmp eq i32 %i.bq, 0
  %.pre255.i = load i32, ptr %.0133.i.ph, align 4, !tbaa !12 ; 2 uses
  br i1 %.not180.i, label %ss_compare.exit.thread._crit_edge.i, label %.preheader190.i

.preheader190.i:                                  ; preds = %ss_compare.exit.thread.i, %.preheader190.i
  %i.br = phi i32 [ %i.bv, %.preheader190.i ], [ %.pre255.i, %ss_compare.exit.thread.i ]
  %.1142.i = phi ptr [ %i.bs, %.preheader190.i ], [ %.0141.i, %ss_compare.exit.thread.i ] ; 2 uses
  %.1134.i = phi ptr [ %i.bu, %.preheader190.i ], [ %.0133.i.ph, %ss_compare.exit.thread.i ] ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.1142.i, i64 -4 ; 3 uses
  store i32 %i.br, ptr %.1142.i, align 4, !tbaa !12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12
  %i.bu = getelementptr inbounds i8, ptr %.1134.i, i64 -4 ; 3 uses
  store i32 %i.bt, ptr %.1134.i, align 4, !tbaa !12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12 ; 3 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader190.i, label %bb.g, !llvm.loop !175

bb.g:                                             ; preds = %.preheader190.i
  %i.bx = and i32 %.2.i, -2
  br label %ss_compare.exit.thread._crit_edge.i

ss_compare.exit.thread._crit_edge.i:              ; preds = %bb.g, %ss_compare.exit.thread.i
  %i.by = phi i32 [ %i.bv, %bb.g ], [ %.pre255.i, %ss_compare.exit.thread.i ]
  %.2143.i = phi ptr [ %i.bs, %bb.g ], [ %.0141.i, %ss_compare.exit.thread.i ] ; 2 uses
  %.2135.i = phi ptr [ %i.bu, %bb.g ], [ %.0133.i.ph, %ss_compare.exit.thread.i ] ; 3 uses
  %.3.i = phi i32 [ %i.bx, %bb.g ], [ %.2.i, %ss_compare.exit.thread.i ] ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.2143.i, i64 -4 ; 3 uses
  store i32 %i.by, ptr %.2143.i, align 4, !tbaa !12
  %.not181.i = icmp ugt ptr %.2135.i, %5
  br i1 %.not181.i, label %bb.h, label %ss_mergebackward.exit

bb.h:                                             ; preds = %ss_compare.exit.thread._crit_edge.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.cb = getelementptr inbounds i8, ptr %.2135.i, i64 -4 ; 3 uses
  store i32 %i.ca, ptr %.2135.i, align 4, !tbaa !12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = xor i32 %i.cc, -1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = or disjoint i32 %.3.i, 1
end_hunk_0
begin_hunk_1_@ss_swapmerge:bb.a
  %i.fu = getelementptr i8, ptr %i.ft, i64 2
  %i.fv = icmp slt i32 %.val298, %.val299         ; 2 uses
  %i.fw = icmp slt i32 %.val300, %.val301         ; 2 uses
  %or.cond6.i = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond6.i, label %.lr.ph.i302, label %.critedge.i

.lr.ph.i302:                                      ; preds = %bb.v, %bb.w
  %.08.i = phi ptr [ %i.gb, %bb.w ], [ %i.fo, %bb.v ] ; 3 uses
  %.0257.i = phi ptr [ %i.ga, %bb.w ], [ %i.fm, %bb.v ] ; 2 uses
  %i.fx = load i8, ptr %.0257.i, align 1, !tbaa !13 ; 2 uses
  %i.fy = load i8, ptr %.08.i, align 1, !tbaa !13
  %i.fz = icmp eq i8 %i.fx, %i.fy
  br i1 %i.fz, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %.lr.ph.i302
  %i.ga = getelementptr inbounds nuw i8, ptr %.0257.i, i64 1 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 3 uses
  %i.gc = icmp ult ptr %i.ga, %i.fr               ; 2 uses
  %i.gd = icmp ult ptr %i.gb, %i.fu               ; 2 uses
  %or.cond.i = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond.i, label %.lr.ph.i302, label %.critedge.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.w, %bb.v
  %.025.lcssa.i = phi ptr [ %i.fm, %bb.v ], [ %i.ga, %bb.w ]
  %.0.lcssa.i = phi ptr [ %i.fo, %bb.v ], [ %i.gb, %bb.w ]
  %.lcssa5.i = phi i1 [ %i.fv, %bb.v ], [ %i.gc, %bb.w ]
  %.lcssa.i = phi i1 [ %i.fw, %bb.v ], [ %i.gd, %bb.w ] ; 2 uses
  br i1 %.lcssa5.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge.i
  br i1 %.lcssa.i, label %..thread.i_crit_edge, label %ss_compare.exit.thread

..thread.i_crit_edge:                             ; preds = %bb.x
  %.pre658 = load i8, ptr %.025.lcssa.i, align 1, !tbaa !13
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i302, %..thread.i_crit_edge
  %i.ge = phi i8 [ %.pre658, %..thread.i_crit_edge ], [ %i.fx, %.lr.ph.i302 ]
  %.0.lcssa2328.i = phi ptr [ %.0.lcssa.i, %..thread.i_crit_edge ], [ %.08.i, %.lr.ph.i302 ]
  %i.gf = zext i8 %i.ge to i32
  %i.gg = load i8, ptr %.0.lcssa2328.i, align 1, !tbaa !13
  %i.gh = zext i8 %i.gg to i32
  %i.gi = sub nsw i32 %i.gf, %i.gh
  br label %ss_compare.exit

bb.y:                                             ; preds = %.critedge.i
  %i.gj = sext i1 %.lcssa.i to i32
  br label %ss_compare.exit

ss_compare.exit:                                  ; preds = %.thread.i, %bb.y
  %i.gk = phi i32 [ %i.gj, %bb.y ], [ %i.gi, %.thread.i ]
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.z, label %ss_compare.exit.thread

bb.z:                                             ; preds = %._crit_edge659, %ss_compare.exit
  %i.gm = phi i32 [ %.pre660, %._crit_edge659 ], [ %i.fg, %ss_compare.exit ]
  %i.gn = xor i32 %i.gm, -1
  store i32 %i.gn, ptr %.0229, align 4, !tbaa !12
  br label %ss_compare.exit.thread

ss_compare.exit.thread:                           ; preds = %bb.x, %bb.z, %ss_compare.exit, %bb.u
  %i.go = and i32 %.0215, 4
  %.not269 = icmp eq i32 %i.go, 0
  br i1 %.not269, label %ss_compare.exit316.thread, label %bb.aa

bb.aa:                                            ; preds = %ss_compare.exit.thread
  %i.gp = getelementptr inbounds i8, ptr %.0233.ph, i64 -4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !12 ; 2 uses
  %.lobit429 = ashr i32 %i.gq, 31
  %i.gr = xor i32 %.lobit429, %i.gq
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gs ; 2 uses
  %i.gu = load i32, ptr %.0233.ph, align 4, !tbaa !12 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gv ; 2 uses
  %.val294 = load i32, ptr %i.gt, align 4, !tbaa !12 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gt, i64 4
  %.val295 = load i32, ptr %i.gx, align 4, !tbaa !12 ; 2 uses
  %.val296 = load i32, ptr %i.gw, align 4, !tbaa !12 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 4
  %.val297 = load i32, ptr %i.gy, align 4, !tbaa !12 ; 2 uses
  %i.gz = sext i32 %.val294 to i64
  %i.ha = getelementptr inbounds i8, ptr %i.b, i64 %i.gz ; 2 uses
  %i.hb = sext i32 %.val296 to i64
  %i.hc = getelementptr inbounds i8, ptr %i.b, i64 %i.hb ; 2 uses
  %i.hd = sext i32 %.val295 to i64
  %i.he = getelementptr i8, ptr %0, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 2
  %i.hg = sext i32 %.val297 to i64
  %i.hh = getelementptr i8, ptr %0, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 2
  %i.hj = icmp slt i32 %.val294, %.val295         ; 2 uses
  %i.hk = icmp slt i32 %.val296, %.val297         ; 2 uses
  %or.cond6.i303 = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %or.cond6.i303, label %.lr.ph.i312, label %.critedge.i304

.lr.ph.i312:                                      ; preds = %bb.aa, %bb.ab
  %.08.i313 = phi ptr [ %i.hp, %bb.ab ], [ %i.hc, %bb.aa ] ; 3 uses
  %.0257.i314 = phi ptr [ %i.ho, %bb.ab ], [ %i.ha, %bb.aa ] ; 2 uses
  %i.hl = load i8, ptr %.0257.i314, align 1, !tbaa !13 ; 2 uses
  %i.hm = load i8, ptr %.08.i313, align 1, !tbaa !13
  %i.hn = icmp eq i8 %i.hl, %i.hm
  br i1 %i.hn, label %bb.ab, label %.thread.i309

bb.ab:                                            ; preds = %.lr.ph.i312
  %i.ho = getelementptr inbounds nuw i8, ptr %.0257.i314, i64 1 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.08.i313, i64 1 ; 3 uses
  %i.hq = icmp ult ptr %i.ho, %i.hf               ; 2 uses
  %i.hr = icmp ult ptr %i.hp, %i.hi               ; 2 uses
  %or.cond.i315 = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond.i315, label %.lr.ph.i312, label %.critedge.i304, !llvm.loop !0

.critedge.i304:                                   ; preds = %bb.ab, %bb.aa
  %.025.lcssa.i305 = phi ptr [ %i.ha, %bb.aa ], [ %i.ho, %bb.ab ]
  %.0.lcssa.i306 = phi ptr [ %i.hc, %bb.aa ], [ %i.hp, %bb.ab ]
  %.lcssa5.i307 = phi i1 [ %i.hj, %bb.aa ], [ %i.hq, %bb.ab ]
  %.lcssa.i308 = phi i1 [ %i.hk, %bb.aa ], [ %i.hr, %bb.ab ] ; 2 uses
  br i1 %.lcssa5.i307, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge.i304
  br i1 %.lcssa.i308, label %..thread.i309_crit_edge, label %ss_compare.exit316.thread

..thread.i309_crit_edge:                          ; preds = %bb.ac
  %.pre661 = load i8, ptr %.025.lcssa.i305, align 1, !tbaa !13
  br label %.thread.i309

.thread.i309:                                     ; preds = %.lr.ph.i312, %..thread.i309_crit_edge
  %i.hs = phi i8 [ %.pre661, %..thread.i309_crit_edge ], [ %i.hl, %.lr.ph.i312 ]
  %.0.lcssa2328.i311 = phi ptr [ %.0.lcssa.i306, %..thread.i309_crit_edge ], [ %.08.i313, %.lr.ph.i312 ]
  %i.ht = zext i8 %i.hs to i32
  %i.hu = load i8, ptr %.0.lcssa2328.i311, align 1, !tbaa !13
  %i.hv = zext i8 %i.hu to i32
  %i.hw = sub nsw i32 %i.ht, %i.hv
  br label %ss_compare.exit316

bb.ad:                                            ; preds = %.critedge.i304
  %i.hx = sext i1 %.lcssa.i308 to i32
  br label %ss_compare.exit316

ss_compare.exit316:                               ; preds = %.thread.i309, %bb.ad
  %i.hy = phi i32 [ %i.hx, %bb.ad ], [ %i.hw, %.thread.i309 ]
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.ae, label %ss_compare.exit316.thread

bb.ae:                                            ; preds = %ss_compare.exit316
  %i.ia = xor i32 %i.gu, -1
  store i32 %i.ia, ptr %.0233.ph, align 4, !tbaa !12
  br label %ss_compare.exit316.thread

ss_compare.exit316.thread:                        ; preds = %bb.ac, %ss_compare.exit.thread, %ss_compare.exit316, %bb.ae
  %i.ib = icmp eq i32 %.0217, 0
  br i1 %i.ib, label %bb.ch, label %bb.af

bb.af:                                            ; preds = %ss_compare.exit316.thread
  %i.ic = add nsw i32 %.0217, -1                  ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [32 x i8], ptr %7, i64 %i.id ; 4 uses
  %i.if = load ptr, ptr %i.ie, align 16, !tbaa !200
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !201
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ij = load ptr, ptr %i.ii, align 16, !tbaa !202
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !203
  br label %.backedge.outer.backedge

.backedge.outer.backedge:                         ; preds = %bb.af, %bb.bg, %bb.bp, %bb.cg
  %.0233.ph.be = phi ptr [ %i.yy, %bb.cg ], [ %.2228, %bb.bp ], [ %i.pw, %bb.bg ], [ %i.ij, %bb.af ]
  %.0231.ph.be = phi ptr [ %i.yw, %bb.cg ], [ %i.rz, %bb.bp ], [ %i.pu, %bb.bg ], [ %i.ih, %bb.af ]
  %.0229.ph.be = phi ptr [ %i.yu, %bb.cg ], [ %.0229, %bb.bp ], [ %i.ps, %bb.bg ], [ %i.if, %bb.af ]
  %.0217.ph.be = phi i32 [ %i.yr, %bb.cg ], [ %i.tk, %bb.bp ], [ %i.pp, %bb.bg ], [ %i.ic, %bb.af ]
  %.0215.ph.be = phi i32 [ %i.za, %bb.cg ], [ %i.tn, %bb.bp ], [ %i.py, %bb.bg ], [ %i.il, %bb.af ]
  br label %.backedge.outer

bb.ag:                                            ; preds = %.backedge
  %i.im = ptrtoint ptr %.0229 to i64              ; 2 uses
  %i.in = sub i64 %i.d, %i.im                     ; 8 uses
  %i.io = ashr exact i64 %i.in, 2                 ; 2 uses
  %.not258 = icmp sgt i64 %i.io, %i.a
  br i1 %.not258, label %bb.bh, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ip = icmp ult ptr %.0229, %.0231
  br i1 %i.ip, label %bb.ai, label %ss_mergeforward.exit

bb.ai:                                            ; preds = %bb.ah
  %i.iq = lshr exact i64 %i.in, 2                 ; 3 uses
  %i.ir = getelementptr inbounds i8, ptr %5, i64 %i.in
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -4 ; 8 uses
  %i.it = trunc i64 %i.iq to i32                  ; 4 uses
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %.lr.ph.i.i339.preheader, label %ss_blockswap.exit.i317

.lr.ph.i.i339.preheader:                          ; preds = %bb.ai
  %i.iv = and i64 %i.iq, 2147483647               ; 2 uses
  %min.iters.check126 = icmp samesign ult i64 %i.iv, 8
  br i1 %min.iters.check126, label %.lr.ph.i.i339.preheader174, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i339.preheader
  %i.iw = add i64 %i.in, 17179869180
  %i.ix = and i64 %i.iw, 17179869180
  %9 = add nuw nsw i64 %i.ix, 4                   ; 2 uses
  %i.iy = getelementptr i8, ptr %5, i64 %9
  %i.iz = getelementptr i8, ptr %.0229, i64 %9
  %bound0 = icmp ult ptr %5, %i.iz
  %bound1 = icmp ult ptr %.0229, %i.iy
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i339.preheader174, label %vector.ph127

vector.ph127:                                     ; preds = %vector.memcheck
  %n.vec128 = and i64 %i.iq, 2147483640           ; 4 uses
  %i.ja = trunc nuw nsw i64 %n.vec128 to i32
  %i.jb = sub nsw i32 %i.it, %i.ja
  %i.jc = shl nuw nsw i64 %n.vec128, 2            ; 2 uses
  %i.jd = getelementptr i8, ptr %.0229, i64 %i.jc
  %i.je = getelementptr i8, ptr %5, i64 %i.jc
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next137, %vector.body129 ] ; 2 uses
  %i.jf = shl i64 %index130, 2                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %.0229, i64 %i.jf ; 3 uses
  %next.gep132 = getelementptr i8, ptr %5, i64 %i.jf ; 3 uses
  %i.jg = getelementptr i8, ptr %next.gep132, i64 16 ; 2 uses
  %wide.load133 = load <4 x i32>, ptr %next.gep132, align 4, !tbaa !12, !alias.scope !204, !noalias !205
  %wide.load134 = load <4 x i32>, ptr %i.jg, align 4, !tbaa !12, !alias.scope !204, !noalias !205
  %i.jh = getelementptr i8, ptr %next.gep131, i64 16 ; 2 uses
  %wide.load135 = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !12, !alias.scope !205
  %wide.load136 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !12, !alias.scope !205
  store <4 x i32> %wide.load135, ptr %next.gep132, align 4, !tbaa !12, !alias.scope !204, !noalias !205
  store <4 x i32> %wide.load136, ptr %i.jg, align 4, !tbaa !12, !alias.scope !204, !noalias !205
  store <4 x i32> %wide.load133, ptr %next.gep131, align 4, !tbaa !12, !alias.scope !205
  store <4 x i32> %wide.load134, ptr %i.jh, align 4, !tbaa !12, !alias.scope !205
  %index.next137 = add nuw i64 %index130, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.ji, label %middle.block138, label %vector.body129, !llvm.loop !184

middle.block138:                                  ; preds = %vector.body129
  %cmp.n139 = icmp eq i64 %i.iv, %n.vec128
  br i1 %cmp.n139, label %ss_blockswap.exit.i317, label %.lr.ph.i.i339.preheader174

.lr.ph.i.i339.preheader174:                       ; preds = %vector.memcheck, %.lr.ph.i.i339.preheader, %middle.block138
  %.012.i.i340.ph = phi i32 [ %i.it, %vector.memcheck ], [ %i.it, %.lr.ph.i.i339.preheader ], [ %i.jb, %middle.block138 ]
  %.0811.i.i341.ph = phi ptr [ %.0229, %vector.memcheck ], [ %.0229, %.lr.ph.i.i339.preheader ], [ %i.jd, %middle.block138 ]
  %.0910.i.i342.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i339.preheader ], [ %i.je, %middle.block138 ]
  br label %.lr.ph.i.i339

.lr.ph.i.i339:                                    ; preds = %.lr.ph.i.i339.preheader174, %.lr.ph.i.i339
  %.012.i.i340 = phi i32 [ %i.jl, %.lr.ph.i.i339 ], [ %.012.i.i340.ph, %.lr.ph.i.i339.preheader174 ] ; 2 uses
  %.0811.i.i341 = phi ptr [ %i.jn, %.lr.ph.i.i339 ], [ %.0811.i.i341.ph, %.lr.ph.i.i339.preheader174 ] ; 3 uses
  %.0910.i.i342 = phi ptr [ %i.jm, %.lr.ph.i.i339 ], [ %.0910.i.i342.ph, %.lr.ph.i.i339.preheader174 ] ; 3 uses
  %i.jj = load i32, ptr %.0910.i.i342, align 4, !tbaa !12
  %i.jk = load i32, ptr %.0811.i.i341, align 4, !tbaa !12
  store i32 %i.jk, ptr %.0910.i.i342, align 4, !tbaa !12
  store i32 %i.jj, ptr %.0811.i.i341, align 4, !tbaa !12
  %i.jl = add nsw i32 %.012.i.i340, -1
  %i.jm = getelementptr inbounds nuw i8, ptr %.0910.i.i342, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %.0811.i.i341, i64 4
  %i.jo = icmp samesign ugt i32 %.012.i.i340, 1
  br i1 %i.jo, label %.lr.ph.i.i339, label %ss_blockswap.exit.i317, !llvm.loop !185

ss_blockswap.exit.i317:                           ; preds = %.lr.ph.i.i339, %middle.block138, %bb.ai
  %i.jp = load i32, ptr %.0229, align 4, !tbaa !12 ; 4 uses
  br label %.loopexit.i.outer

.loopexit.i.outer:                                ; preds = %.loopexit.i.outer.backedge, %ss_blockswap.exit.i317
  %.075.i.ph = phi ptr [ %.0229, %ss_blockswap.exit.i317 ], [ %.075.i.ph.be, %.loopexit.i.outer.backedge ]
  %.071.i.ph = phi ptr [ %5, %ss_blockswap.exit.i317 ], [ %.071.i.ph.be, %.loopexit.i.outer.backedge ] ; 7 uses
  %.0.i.ph = phi ptr [ %.0231, %ss_blockswap.exit.i317 ], [ %.0.i.ph.be, %.loopexit.i.outer.backedge ]
  br label %.loopexit.i

.loopexit.i.outer.backedge:                       ; preds = %bb.au, %bb.an
  %.075.i.ph.be = phi ptr [ %i.la, %bb.an ], [ %i.ma, %bb.au ]
  %.071.i.ph.be = phi ptr [ %i.lc, %bb.an ], [ %i.lw, %bb.au ]
  %.0.i.ph.be = phi ptr [ %.0.i, %bb.an ], [ %i.mc, %bb.au ]
  br label %.loopexit.i.outer

.loopexit.i:                                      ; preds = %bb.ao, %.loopexit.i.outer
  %.075.i = phi ptr [ %.075.i.ph, %.loopexit.i.outer ], [ %i.lg, %bb.ao ] ; 3 uses
  %.0.i = phi ptr [ %.0.i.ph, %.loopexit.i.outer ], [ %i.li, %bb.ao ] ; 6 uses
  %i.jq = load i32, ptr %.071.i.ph, align 4, !tbaa !12 ; 2 uses
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jr ; 2 uses
  %i.jt = load i32, ptr %.0.i, align 4, !tbaa !12 ; 3 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ju ; 2 uses
  %.val.i = load i32, ptr %i.js, align 4, !tbaa !12 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.js, i64 4
  %.val91.i = load i32, ptr %i.jw, align 4, !tbaa !12 ; 2 uses
  %.val92.i = load i32, ptr %i.jv, align 4, !tbaa !12 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jv, i64 4
  %.val93.i = load i32, ptr %i.jx, align 4, !tbaa !12 ; 2 uses
  %i.jy = sext i32 %.val.i to i64
  %i.jz = getelementptr inbounds i8, ptr %i.b, i64 %i.jy ; 2 uses
  %i.ka = sext i32 %.val92.i to i64
  %i.kb = getelementptr inbounds i8, ptr %i.b, i64 %i.ka ; 2 uses
  %i.kc = sext i32 %.val91.i to i64
  %i.kd = getelementptr i8, ptr %0, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 2
  %i.kf = sext i32 %.val93.i to i64
  %i.kg = getelementptr i8, ptr %0, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 2
  %i.ki = icmp slt i32 %.val.i, %.val91.i         ; 2 uses
  %i.kj = icmp slt i32 %.val92.i, %.val93.i       ; 2 uses
  %or.cond6.i.i318 = select i1 %i.ki, i1 %i.kj, i1 false
  br i1 %or.cond6.i.i318, label %.lr.ph.i94.i, label %.critedge.i.i319

.lr.ph.i94.i:                                     ; preds = %.loopexit.i, %bb.aj
  %.08.i.i336 = phi ptr [ %i.ko, %bb.aj ], [ %i.kb, %.loopexit.i ] ; 2 uses
  %.0257.i.i337 = phi ptr [ %i.kn, %bb.aj ], [ %i.jz, %.loopexit.i ] ; 2 uses
  %i.kk = load i8, ptr %.0257.i.i337, align 1, !tbaa !13 ; 2 uses
  %i.kl = load i8, ptr %.08.i.i336, align 1, !tbaa !13 ; 2 uses
  %i.km = icmp eq i8 %i.kk, %i.kl
  br i1 %i.km, label %bb.aj, label %.thread.i.i

bb.aj:                                            ; preds = %.lr.ph.i94.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.0257.i.i337, i64 1 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.08.i.i336, i64 1 ; 3 uses
  %i.kp = icmp ult ptr %i.kn, %i.ke               ; 2 uses
  %i.kq = icmp ult ptr %i.ko, %i.kh               ; 2 uses
  %or.cond.i.i338 = select i1 %i.kp, i1 %i.kq, i1 false
  br i1 %or.cond.i.i338, label %.lr.ph.i94.i, label %.critedge.i.i319, !llvm.loop !0

.critedge.i.i319:                                 ; preds = %bb.aj, %.loopexit.i
  %.025.lcssa.i.i320 = phi ptr [ %i.jz, %.loopexit.i ], [ %i.kn, %bb.aj ]
  %.0.lcssa.i.i321 = phi ptr [ %i.kb, %.loopexit.i ], [ %i.ko, %bb.aj ]
  %.lcssa5.i.i322 = phi i1 [ %i.ki, %.loopexit.i ], [ %i.kp, %bb.aj ]
  %.lcssa.i.i323 = phi i1 [ %i.kj, %.loopexit.i ], [ %i.kq, %bb.aj ] ; 2 uses
  br i1 %.lcssa5.i.i322, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i.i319
  br i1 %.lcssa.i.i323, label %..thread.i_crit_edge.i, label %.preheader99.i.preheader

..thread.i_crit_edge.i:                           ; preds = %bb.ak
  %.pre.i334 = load i8, ptr %.025.lcssa.i.i320, align 1, !tbaa !13
  %.pre662 = load i8, ptr %.0.lcssa.i.i321, align 1, !tbaa !13
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i94.i, %..thread.i_crit_edge.i
  %i.kr = phi i8 [ %.pre662, %..thread.i_crit_edge.i ], [ %i.kl, %.lr.ph.i94.i ]
  %i.ks = phi i8 [ %.pre.i334, %..thread.i_crit_edge.i ], [ %i.kk, %.lr.ph.i94.i ]
  %i.kt = zext i8 %i.ks to i32
  %i.ku = zext i8 %i.kr to i32
  %i.kv = sub nsw i32 %i.kt, %i.ku
  br label %ss_compare.exit.i324

bb.al:                                            ; preds = %.critedge.i.i319
  %i.kw = sext i1 %.lcssa.i.i323 to i32
  br label %ss_compare.exit.i324

ss_compare.exit.i324:                             ; preds = %bb.al, %.thread.i.i
  %i.kx = phi i32 [ %i.kw, %bb.al ], [ %i.kv, %.thread.i.i ] ; 2 uses
  %i.ky = icmp slt i32 %i.kx, 0
  br i1 %i.ky, label %.preheader96.i, label %ss_compare.exit.thread.i325

.preheader96.i:                                   ; preds = %ss_compare.exit.i324, %bb.an
  %i.kz = phi i32 [ %i.ld, %bb.an ], [ %i.jq, %ss_compare.exit.i324 ]
  %.176.i = phi ptr [ %i.la, %bb.an ], [ %.075.i, %ss_compare.exit.i324 ] ; 2 uses
  %.172.i = phi ptr [ %i.lc, %bb.an ], [ %.071.i.ph, %ss_compare.exit.i324 ] ; 3 uses
  store i32 %i.kz, ptr %.176.i, align 4, !tbaa !12
  %.not90.i = icmp ugt ptr %i.is, %.172.i
  br i1 %.not90.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader96.i
  store i32 %i.jp, ptr %i.is, align 4, !tbaa !12
  br label %ss_mergeforward.exit

bb.an:                                            ; preds = %.preheader96.i
  %i.la = getelementptr inbounds nuw i8, ptr %.176.i, i64 4 ; 3 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr %.172.i, i64 4 ; 3 uses
  store i32 %i.lb, ptr %.172.i, align 4, !tbaa !12
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !12 ; 2 uses
  %i.le = icmp slt i32 %i.ld, 0
  br i1 %i.le, label %.preheader96.i, label %.loopexit.i.outer.backedge, !llvm.loop !186

ss_compare.exit.thread.i325:                      ; preds = %ss_compare.exit.i324
  %.not.i326 = icmp eq i32 %i.kx, 0
  br i1 %.not.i326, label %bb.ap, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %ss_compare.exit.thread.i325, %bb.ak
  br label %.preheader99.i

.preheader99.i:                                   ; preds = %.preheader99.i.preheader, %bb.ao
  %i.lf = phi i32 [ %i.lq, %bb.ao ], [ %i.jt, %.preheader99.i.preheader ]
  %.277.i = phi ptr [ %i.lg, %bb.ao ], [ %.075.i, %.preheader99.i.preheader ] ; 2 uses
  %.1.i327 = phi ptr [ %i.li, %bb.ao ], [ %.0.i, %.preheader99.i.preheader ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.277.i, i64 4 ; 5 uses
  store i32 %i.lf, ptr %.277.i, align 4, !tbaa !12
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !12
  %i.li = getelementptr inbounds nuw i8, ptr %.1.i327, i64 4 ; 4 uses
  store i32 %i.lh, ptr %.1.i327, align 4, !tbaa !12
  %.not89.i = icmp ugt ptr %.0233.ph, %i.li
  br i1 %.not89.i, label %bb.ao, label %.preheader95.i

.preheader95.i:                                   ; preds = %.preheader99.i
  %i.lj = icmp ult ptr %.071.i.ph, %i.is
  br i1 %i.lj, label %.lr.ph.i328, label %._crit_edge.i

.lr.ph.i328:                                      ; preds = %.preheader95.i, %.lr.ph.i328
  %.273122.i = phi ptr [ %i.ln, %.lr.ph.i328 ], [ %.071.i.ph, %.preheader95.i ] ; 3 uses
  %.378121.i = phi ptr [ %i.ll, %.lr.ph.i328 ], [ %i.lg, %.preheader95.i ] ; 2 uses
  %i.lk = load i32, ptr %.273122.i, align 4, !tbaa !12
  %i.ll = getelementptr inbounds nuw i8, ptr %.378121.i, i64 4 ; 3 uses
  store i32 %i.lk, ptr %.378121.i, align 4, !tbaa !12
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !12
end_hunk_1
