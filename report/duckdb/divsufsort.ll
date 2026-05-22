inline.NumInlined: 85
inline.NumDeleted: 33
begin_hunk_0_@_ZN11duckdb_zstdL13ss_mintrosortEPKhPKiPiS4_i:bb.a
  %i.ajd = getelementptr i8, ptr %i.aiz, i64 24   ; 2 uses
  %i.aje = getelementptr i8, ptr %i.aiz, i64 32   ; 2 uses
  br i1 %.not491, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr %i.afu, ptr %i.ajd, align 8, !tbaa !138
  store ptr %i.aej, ptr %i.aje, align 8, !tbaa !140
  %i.ajf = add nsw i32 %.0433, 1
  %i.ajg = getelementptr i8, ptr %i.aiz, i64 40
  store i32 %i.ajf, ptr %i.ajg, align 8, !tbaa !141
  %i.ajh = and i64 %i.afy, 261120
  %.not.i537 = icmp eq i64 %i.ajh, 0
  br i1 %.not.i537, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aji = lshr i64 %i.afz, 8
  %i.ajj = and i64 %i.aji, 255
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.ajj
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3
  %i.ajm = add nsw i32 %i.ajl, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit538

bb.cq:                                            ; preds = %bb.co
  %i.ajn = and i64 %i.afz, 255
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit538

_ZN11duckdb_zstdL6ss_ilgEi.exit538:               ; preds = %bb.cp, %bb.cq
  %i.ajq = phi i32 [ %i.ajm, %bb.cp ], [ %i.ajp, %bb.cq ]
  %i.ajr = add nsw i32 %.0392, 2
  %i.ajs = getelementptr i8, ptr %i.aiz, i64 44
  store i32 %i.ajq, ptr %i.ajs, align 4, !tbaa !142
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.cr:                                            ; preds = %bb.cn
  store ptr %i.aej, ptr %i.ajd, align 8, !tbaa !138
  store ptr %.0436, ptr %i.aje, align 8, !tbaa !140
  %i.ajt = getelementptr i8, ptr %i.aiz, i64 40
  store i32 %.0433, ptr %i.ajt, align 8, !tbaa !141
  %i.aju = add nsw i32 %.0392, 2                  ; 2 uses
  %i.ajv = getelementptr i8, ptr %i.aiz, i64 44
  store i32 %i.cf, ptr %i.ajv, align 4, !tbaa !142
  %i.ajw = add nsw i32 %.0433, 1                  ; 2 uses
  %i.ajx = and i64 %i.afy, 261120
  %.not.i539 = icmp eq i64 %i.ajx, 0
  br i1 %.not.i539, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ajy = lshr i64 %i.afz, 8
  %i.ajz = and i64 %i.ajy, 255
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.ajz
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !3
  %i.akc = add nsw i32 %i.akb, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.ct:                                            ; preds = %bb.cr
  %i.akd = and i64 %i.afz, 255
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.akd
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

bb.cu:                                            ; preds = %._crit_edge
  %i.akg = load i32, ptr %.0426, align 4, !tbaa !3
  %i.akh = sext i32 %i.akg to i64
  %i.aki = getelementptr inbounds [4 x i8], ptr %1, i64 %i.akh
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3
  %i.akk = sext i32 %i.akj to i64
  %i.akl = getelementptr i8, ptr %i.ce, i64 %i.akk
  %i.akm = getelementptr i8, ptr %i.akl, i64 -1
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !7
  %i.ako = icmp ult i8 %i.akn, %i.yk
  br i1 %i.ako, label %bb.cv, label %_ZN11duckdb_zstdL6ss_ilgEi.exit552

bb.cv:                                            ; preds = %bb.cu
  %i.akp = getelementptr inbounds i8, ptr %.0426, i64 -4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.da, %bb.cv
  %.031.i541 = phi ptr [ %.0436, %bb.cv ], [ %i.ald, %bb.da ] ; 3 uses
  %.0.i542 = phi ptr [ %i.akp, %bb.cv ], [ %.lcssa.i544, %bb.da ]
  %i.akq = getelementptr inbounds nuw i8, ptr %.0.i542, i64 4 ; 3 uses
  %i.akr = icmp ult ptr %i.akq, %.031.i541
  br i1 %i.akr, label %.lr.ph.i548, label %.critedge.i543

.lr.ph.i548:                                      ; preds = %bb.cw, %bb.cx
  %i.aks = phi ptr [ %i.alb, %bb.cx ], [ %i.akq, %bb.cw ] ; 4 uses
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !3 ; 2 uses
  %i.aku = sext i32 %i.akt to i64
  %i.akv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aku ; 2 uses
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !3
  %i.akx = add nsw i32 %i.akw, %.0433
  %i.aky = getelementptr i8, ptr %i.akv, i64 4
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !3
  %.not.not.i549 = icmp sgt i32 %i.akx, %i.akz
  br i1 %.not.not.i549, label %bb.cx, label %.critedge.i543

bb.cx:                                            ; preds = %.lr.ph.i548
  %i.ala = xor i32 %i.akt, -1
  store i32 %i.ala, ptr %i.aks, align 4, !tbaa !3
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aks, i64 4 ; 3 uses
  %i.alc = icmp ult ptr %i.alb, %.031.i541
  br i1 %i.alc, label %.lr.ph.i548, label %.critedge.i543, !llvm.loop !146

.critedge.i543:                                   ; preds = %bb.cx, %.lr.ph.i548, %bb.cw
  %.lcssa.i544 = phi ptr [ %i.akq, %bb.cw ], [ %i.aks, %.lr.ph.i548 ], [ %i.alb, %bb.cx ] ; 8 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cz, %.critedge.i543
  %.132.i545 = phi ptr [ %.031.i541, %.critedge.i543 ], [ %i.ald, %bb.cz ]
  %i.ald = getelementptr inbounds i8, ptr %.132.i545, i64 -4 ; 5 uses
  %i.ale = icmp ult ptr %.lcssa.i544, %i.ald
  br i1 %i.ale, label %bb.cz, label %.critedge2.i546

bb.cz:                                            ; preds = %bb.cy
  %i.alf = load i32, ptr %i.ald, align 4, !tbaa !3 ; 2 uses
  %i.alg = sext i32 %i.alf to i64
  %i.alh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.alg ; 2 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !3
  %i.alj = add nsw i32 %i.ali, %.0433
  %i.alk = getelementptr i8, ptr %i.alh, i64 4
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !3
  %.not.i547 = icmp sgt i32 %i.alj, %i.all
  br i1 %.not.i547, label %bb.da, label %bb.cy, !llvm.loop !147

bb.da:                                            ; preds = %bb.cz
  %i.alm = xor i32 %i.alf, -1
  %i.aln = load i32, ptr %.lcssa.i544, align 4, !tbaa !3
  store i32 %i.aln, ptr %i.ald, align 4, !tbaa !3
  store i32 %i.alm, ptr %.lcssa.i544, align 4, !tbaa !3
  br label %bb.cw, !llvm.loop !148

.critedge2.i546:                                  ; preds = %bb.cy
  %i.alo = icmp ult ptr %.0426, %.lcssa.i544
  br i1 %i.alo, label %bb.db, label %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit550

bb.db:                                            ; preds = %.critedge2.i546
  %i.alp = load i32, ptr %.0426, align 4, !tbaa !3
  %i.alq = xor i32 %i.alp, -1
  store i32 %i.alq, ptr %.0426, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit550

_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit550: ; preds = %.critedge2.i546, %bb.db
  %i.alr = ptrtoint ptr %.lcssa.i544 to i64
  %i.als = sub i64 %i.n, %i.alr                   ; 3 uses
  %i.alt = and i64 %i.als, 261120
  %.not.i551 = icmp eq i64 %i.alt, 0
  br i1 %.not.i551, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit550
  %i.alu = lshr i64 %i.als, 10
  %i.alv = and i64 %i.alu, 255
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.alv
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !3
  %i.aly = add nsw i32 %i.alx, 8
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit552

bb.dd:                                            ; preds = %_ZN11duckdb_zstdL12ss_partitionEPKiPiS2_i.exit550
  %i.alz = lshr exact i64 %i.als, 2
  %i.ama = and i64 %i.alz, 255
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr @_ZN11duckdb_zstdL8lg_tableE, i64 %i.ama
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit552

_ZN11duckdb_zstdL6ss_ilgEi.exit552:               ; preds = %bb.dd, %bb.dc, %bb.cu
  %.5431 = phi ptr [ %.0426, %bb.cu ], [ %.lcssa.i544, %bb.dc ], [ %.lcssa.i544, %bb.dd ]
  %.2390 = phi i32 [ %.0388, %bb.cu ], [ %i.aly, %bb.dc ], [ %i.amc, %bb.dd ]
  %i.amd = add nsw i32 %.0433, 1
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge

_ZN11duckdb_zstdL6ss_ilgEi.exit.backedge:         ; preds = %_ZN11duckdb_zstdL6ss_ilgEi.exit552, %_ZN11duckdb_zstdL6ss_ilgEi.exit536, %_ZN11duckdb_zstdL6ss_ilgEi.exit538, %_ZN11duckdb_zstdL6ss_ilgEi.exit530, %_ZN11duckdb_zstdL6ss_ilgEi.exit532, %bb.ch, %bb.ci, %bb.cs, %bb.ct, %_ZN11duckdb_zstdL6ss_ilgEi.exit512, %bb.af, %bb.ah, %bb.ai, %bb.ao, %bb.ap, %bb.l
  %.0436.be = phi ptr [ %i.aej, %bb.cs ], [ %i.aej, %bb.ct ], [ %i.by, %bb.l ], [ %.0419.lcssa, %bb.ap ], [ %.0436, %bb.af ], [ %.0419.lcssa, %bb.ai ], [ %.0436, %_ZN11duckdb_zstdL6ss_ilgEi.exit512 ], [ %.0419.lcssa, %bb.ah ], [ %.0419.lcssa, %bb.ao ], [ %i.aeh, %_ZN11duckdb_zstdL6ss_ilgEi.exit530 ], [ %i.aeh, %_ZN11duckdb_zstdL6ss_ilgEi.exit532 ], [ %.0436, %_ZN11duckdb_zstdL6ss_ilgEi.exit552 ], [ %.0436, %_ZN11duckdb_zstdL6ss_ilgEi.exit536 ], [ %.0436, %_ZN11duckdb_zstdL6ss_ilgEi.exit538 ], [ %i.aej, %bb.ci ], [ %i.aej, %bb.ch ]
  %.0433.be = phi i32 [ %i.ajw, %bb.cs ], [ %i.ajw, %bb.ct ], [ %i.ca, %bb.l ], [ %i.me, %bb.ap ], [ %.0433, %bb.af ], [ %i.lc, %bb.ai ], [ %.0433, %_ZN11duckdb_zstdL6ss_ilgEi.exit512 ], [ %i.lc, %bb.ah ], [ %i.me, %bb.ao ], [ %.0433, %_ZN11duckdb_zstdL6ss_ilgEi.exit530 ], [ %.0433, %_ZN11duckdb_zstdL6ss_ilgEi.exit532 ], [ %i.amd, %_ZN11duckdb_zstdL6ss_ilgEi.exit552 ], [ %.0433, %_ZN11duckdb_zstdL6ss_ilgEi.exit536 ], [ %.0433, %_ZN11duckdb_zstdL6ss_ilgEi.exit538 ], [ %i.aht, %bb.ci ], [ %i.aht, %bb.ch ]
  %.0426.be = phi ptr [ %i.afu, %bb.cs ], [ %i.afu, %bb.ct ], [ %i.bw, %bb.l ], [ %.3429, %bb.ap ], [ %.0419.lcssa, %bb.af ], [ %.3429, %bb.ai ], [ %.0419.lcssa, %_ZN11duckdb_zstdL6ss_ilgEi.exit512 ], [ %.3429, %bb.ah ], [ %.3429, %bb.ao ], [ %.0426, %_ZN11duckdb_zstdL6ss_ilgEi.exit530 ], [ %.0426, %_ZN11duckdb_zstdL6ss_ilgEi.exit532 ], [ %.5431, %_ZN11duckdb_zstdL6ss_ilgEi.exit552 ], [ %i.aej, %_ZN11duckdb_zstdL6ss_ilgEi.exit536 ], [ %i.aej, %_ZN11duckdb_zstdL6ss_ilgEi.exit538 ], [ %i.afu, %bb.ci ], [ %i.afu, %bb.ch ]
  %.0392.be = phi i32 [ %i.aju, %bb.cs ], [ %i.aju, %bb.ct ], [ %i.bt, %bb.l ], [ %.0392, %bb.ap ], [ %.0392, %bb.af ], [ %i.la, %bb.ai ], [ %i.mc, %_ZN11duckdb_zstdL6ss_ilgEi.exit512 ], [ %i.la, %bb.ah ], [ %.0392, %bb.ao ], [ %i.agt, %_ZN11duckdb_zstdL6ss_ilgEi.exit530 ], [ %i.aho, %_ZN11duckdb_zstdL6ss_ilgEi.exit532 ], [ %.0392, %_ZN11duckdb_zstdL6ss_ilgEi.exit552 ], [ %i.aiw, %_ZN11duckdb_zstdL6ss_ilgEi.exit536 ], [ %i.ajr, %_ZN11duckdb_zstdL6ss_ilgEi.exit538 ], [ %i.ahr, %bb.ci ], [ %i.ahr, %bb.ch ]
  %.0388.be = phi i32 [ %i.akc, %bb.cs ], [ %i.akf, %bb.ct ], [ %i.cc, %bb.l ], [ %i.mn, %bb.ap ], [ -1, %bb.af ], [ %i.ll, %bb.ai ], [ -1, %_ZN11duckdb_zstdL6ss_ilgEi.exit512 ], [ %i.li, %bb.ah ], [ %i.mk, %bb.ao ], [ %i.cf, %_ZN11duckdb_zstdL6ss_ilgEi.exit530 ], [ %i.cf, %_ZN11duckdb_zstdL6ss_ilgEi.exit532 ], [ %.2390, %_ZN11duckdb_zstdL6ss_ilgEi.exit552 ], [ %i.cf, %_ZN11duckdb_zstdL6ss_ilgEi.exit536 ], [ %i.cf, %_ZN11duckdb_zstdL6ss_ilgEi.exit538 ], [ %i.aic, %bb.ci ], [ %i.ahz, %bb.ch ]
  br label %_ZN11duckdb_zstdL6ss_ilgEi.exit, !llvm.loop !170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef range(i32 -2147483645, -2147483648) %6) unnamed_addr #3 {
bb.a:
  %7 = alloca [32 x %struct.anon.0], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.a = sext i32 %6 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 20 uses
  %scevgep126 = getelementptr i8, ptr %5, i64 4
  %scevgep153 = getelementptr i8, ptr %5, i64 4
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.a
  %.0233.ph = phi ptr [ %4, %bb.a ], [ %.0233.ph.be, %.backedge.outer.backedge ] ; 16 uses
  %.0226.ph = phi ptr [ %3, %bb.a ], [ %.0226.ph.be, %.backedge.outer.backedge ]
  %.0224.ph = phi ptr [ %2, %bb.a ], [ %.0224.ph.be, %.backedge.outer.backedge ]
  %.0217.ph = phi i32 [ 0, %bb.a ], [ %.0217.ph.be, %.backedge.outer.backedge ]
  %.0215.ph = phi i32 [ 0, %bb.a ], [ %.0215.ph.be, %.backedge.outer.backedge ]
  %i.c = ptrtoint ptr %.0233.ph to i64            ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.br
  %.0226 = phi ptr [ %i.sl, %bb.br ], [ %.0226.ph, %.backedge.outer ] ; 33 uses
  %.0224 = phi ptr [ %.1229, %bb.br ], [ %.0224.ph, %.backedge.outer ] ; 29 uses
  %.0217 = phi i32 [ %i.tt, %bb.br ], [ %.0217.ph, %.backedge.outer ] ; 10 uses
  %.0215 = phi i32 [ %i.tx, %bb.br ], [ %.0215.ph, %.backedge.outer ] ; 12 uses
  %i.d = ptrtoint ptr %.0226 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %.not = icmp sgt i64 %i.f, %i.a
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.g = icmp ult ptr %.0224, %.0226
  %i.h = icmp ult ptr %.0226, %.0233.ph
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = lshr exact i64 %i.e, 2                   ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %5, i64 %i.e
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = trunc i64 %i.i to i32                    ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.n = and i64 %i.i, 2147483647                 ; 2 uses
  %min.iters.check161 = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check161, label %.lr.ph.i.i.preheader184, label %vector.memcheck152

vector.memcheck152:                               ; preds = %.lr.ph.i.i.preheader
  %i.o = add i64 %i.e, 17179869180
  %i.p = and i64 %i.o, 17179869180                ; 2 uses
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.p
  %scevgep155 = getelementptr i8, ptr %.0226, i64 4
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.p
  %bound0157 = icmp ult ptr %5, %scevgep156
  %bound1158 = icmp ult ptr %.0226, %scevgep154
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i.preheader184, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck152
  %n.vec164 = and i64 %i.i, 2147483640            ; 4 uses
  %i.q = shl nuw nsw i64 %n.vec164, 2             ; 2 uses
  %i.r = getelementptr i8, ptr %5, i64 %i.q
  %i.s = trunc nuw nsw i64 %n.vec164 to i32
  %i.t = sub nsw i32 %i.l, %i.s
  %i.u = getelementptr i8, ptr %.0226, i64 %i.q
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next173, %vector.body165 ] ; 2 uses
  %i.v = shl i64 %index166, 2                     ; 2 uses
  %next.gep167 = getelementptr i8, ptr %5, i64 %i.v ; 3 uses
  %next.gep168 = getelementptr i8, ptr %.0226, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep167, i64 16 ; 2 uses
  %wide.load169 = load <4 x i32>, ptr %next.gep167, align 4, !tbaa !3, !alias.scope !171, !noalias !174
  %wide.load170 = load <4 x i32>, ptr %i.w, align 4, !tbaa !3, !alias.scope !171, !noalias !174
  %i.x = getelementptr i8, ptr %next.gep168, i64 16 ; 2 uses
  %wide.load171 = load <4 x i32>, ptr %next.gep168, align 4, !tbaa !3, !alias.scope !174
  %wide.load172 = load <4 x i32>, ptr %i.x, align 4, !tbaa !3, !alias.scope !174
  store <4 x i32> %wide.load171, ptr %next.gep167, align 4, !tbaa !3, !alias.scope !171, !noalias !174
  store <4 x i32> %wide.load172, ptr %i.w, align 4, !tbaa !3, !alias.scope !171, !noalias !174
  store <4 x i32> %wide.load169, ptr %next.gep168, align 4, !tbaa !3, !alias.scope !174
  store <4 x i32> %wide.load170, ptr %i.x, align 4, !tbaa !3, !alias.scope !174
  %index.next173 = add nuw i64 %index166, 8       ; 2 uses
  %i.y = icmp eq i64 %index.next173, %n.vec164
  br i1 %i.y, label %middle.block174, label %vector.body165, !llvm.loop !176

middle.block174:                                  ; preds = %vector.body165
  %cmp.n175 = icmp eq i64 %i.n, %n.vec164
  br i1 %cmp.n175, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i, label %.lr.ph.i.i.preheader184

.lr.ph.i.i.preheader184:                          ; preds = %vector.memcheck152, %.lr.ph.i.i.preheader, %middle.block174
  %.012.i.i.ph = phi ptr [ %5, %vector.memcheck152 ], [ %5, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block174 ]
  %.0811.i.i.ph = phi i32 [ %i.l, %vector.memcheck152 ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block174 ]
  %.0910.i.i.ph = phi ptr [ %.0226, %vector.memcheck152 ], [ %.0226, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block174 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader184, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader184 ] ; 3 uses
  %.0811.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %.0811.i.i.ph, %.lr.ph.i.i.preheader184 ] ; 2 uses
  %.0910.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader184 ] ; 3 uses
  %i.z = load i32, ptr %.012.i.i, align 4, !tbaa !3
  %i.aa = load i32, ptr %.0910.i.i, align 4, !tbaa !3
  store i32 %i.aa, ptr %.012.i.i, align 4, !tbaa !3
  store i32 %i.z, ptr %.0910.i.i, align 4, !tbaa !3
  %i.ab = add nsw i32 %.0811.i.i, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.ae = icmp samesign ugt i32 %.0811.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i, !llvm.loop !177

_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i:    ; preds = %.lr.ph.i.i, %middle.block174, %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !3   ; 3 uses
  %.lobit.i = ashr i32 %i.af, 31
  %.pn.in.i = xor i32 %.lobit.i, %i.af
  %.lobit186.i = lshr i32 %i.af, 31
  %.pn.i = zext i32 %.pn.in.i to i64
  %.0127.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn.i
  %i.ag = getelementptr inbounds i8, ptr %.0226, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 3 uses
  %.lobit187.i = ashr i32 %i.ah, 31
  %.pn175.in.i = xor i32 %.lobit187.i, %i.ah
  %i.ai = lshr i32 %i.ah, 30
  %i.aj = and i32 %i.ai, 2
  %.1.i = or disjoint i32 %i.aj, %.lobit186.i
  %.pn175.i = zext i32 %.pn175.in.i to i64
  %.0131.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn175.i
  %i.ak = getelementptr inbounds i8, ptr %.0233.ph, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i
  %.0149.i.ph = phi ptr [ %i.k, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.0149.i.ph.be, %.outer.backedge ] ; 9 uses
  %.0143.i.ph = phi ptr [ %i.ag, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.0143.i.ph.be, %.outer.backedge ]
  %.0134.i.ph = phi ptr [ %i.ak, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.0134.i.ph.be, %.outer.backedge ]
  %.1132.i.ph = phi ptr [ %.0131.i, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.1132.i.ph.be, %.outer.backedge ]
  %.1128.i.ph = phi ptr [ %.0127.i, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.1128.i.ph.be, %.outer.backedge ] ; 2 uses
  %.2.i.ph = phi i32 [ %.1.i, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit.i ], [ %.2.i.ph.be, %.outer.backedge ]
  %i.am = getelementptr i8, ptr %.1128.i.ph, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.backedge183, %.outer
  %.0143.i = phi ptr [ %.0143.i.ph, %.outer ], [ %i.cv, %.backedge183 ] ; 8 uses
  %.0134.i = phi ptr [ %.0134.i.ph, %.outer ], [ %i.ct, %.backedge183 ] ; 6 uses
  %.1132.i = phi ptr [ %.1132.i.ph, %.outer ], [ %.1132.i.be, %.backedge183 ] ; 4 uses
  %.2.i = phi i32 [ %.2.i.ph, %.outer ], [ %.2.i.be, %.backedge183 ] ; 9 uses
  %.1128.val.i = load i32, ptr %.1128.i.ph, align 4, !tbaa !3 ; 2 uses
  %.1128.val182.i = load i32, ptr %i.am, align 4, !tbaa !3 ; 2 uses
  %.1132.val.i = load i32, ptr %.1132.i, align 4, !tbaa !3 ; 2 uses
  %i.an = getelementptr i8, ptr %.1132.i, i64 4
  %.1132.val183.i = load i32, ptr %i.an, align 4, !tbaa !3 ; 2 uses
  %i.ao = sext i32 %.1128.val.i to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = sext i32 %.1132.val.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = sext i32 %.1128.val182.i to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = sext i32 %.1132.val183.i to i64
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 2
  %i.ay = icmp slt i32 %.1128.val.i, %.1128.val182.i ; 2 uses
  %i.az = icmp slt i32 %.1132.val.i, %.1132.val183.i ; 2 uses
  %or.cond6.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond6.i.i, label %.lr.ph.i184.i, label %.critedge.i.i

.lr.ph.i184.i:                                    ; preds = %bb.d, %bb.e
  %.08.i.i = phi ptr [ %i.bd, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %.0257.i.i = phi ptr [ %i.be, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.ba = load i8, ptr %.08.i.i, align 1, !tbaa !7 ; 2 uses
  %i.bb = load i8, ptr %.0257.i.i, align 1, !tbaa !7 ; 2 uses
  %i.bc = icmp eq i8 %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i184.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 1 ; 3 uses
  %i.bf = icmp ult ptr %i.bd, %i.au               ; 2 uses
  %i.bg = icmp ult ptr %i.be, %i.ax               ; 2 uses
  %or.cond.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i184.i, label %.critedge.i.i, !llvm.loop !21

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.025.lcssa.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.be, %bb.e ]
  %.0.lcssa.i.i = phi ptr [ %i.ap, %bb.d ], [ %i.bd, %bb.e ]
  %.lcssa5.i.i = phi i1 [ %i.ay, %bb.d ], [ %i.bf, %bb.e ]
  %.lcssa.i.i = phi i1 [ %i.az, %bb.d ], [ %i.bg, %bb.e ] ; 2 uses
  br i1 %.lcssa5.i.i, label %bb.f, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread185.i

bb.f:                                             ; preds = %.critedge.i.i
  br i1 %.lcssa.i.i, label %._ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit_crit_edge.i, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i

._ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit_crit_edge.i: ; preds = %bb.f
  %.pre.i = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !7
  %.pre = load i8, ptr %.025.lcssa.i.i, align 1, !tbaa !7
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.i

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread185.i: ; preds = %.critedge.i.i
  %i.bh = sext i1 %.lcssa.i.i to i32
  br label %bb.k

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.i:  ; preds = %.lr.ph.i184.i, %._ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit_crit_edge.i
  %i.bi = phi i8 [ %.pre, %._ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit_crit_edge.i ], [ %i.bb, %.lr.ph.i184.i ]
  %i.bj = phi i8 [ %.pre.i, %._ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit_crit_edge.i ], [ %i.ba, %.lr.ph.i184.i ]
  %i.bk = zext i8 %i.bj to i32
  %i.bl = zext i8 %i.bi to i32
  %i.bm = sub nsw i32 %i.bk, %i.bl                ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i, label %bb.k

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i: ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.i, %bb.f
  %i.bo = and i32 %.2.i, 1
  %.not180.i = icmp eq i32 %i.bo, 0
  %.pre255.i = load i32, ptr %.0149.i.ph, align 4, !tbaa !3 ; 2 uses
  br i1 %.not180.i, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread._crit_edge.i, label %.preheader190.i

.preheader190.i:                                  ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i, %.preheader190.i
  %i.bp = phi i32 [ %i.bt, %.preheader190.i ], [ %.pre255.i, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i ]
  %.1150.i = phi ptr [ %i.bs, %.preheader190.i ], [ %.0149.i.ph, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i ] ; 2 uses
  %.1135.i = phi ptr [ %i.bq, %.preheader190.i ], [ %.0134.i, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit.thread.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_ii:bb.a
bb.bc:                                            ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit356.thread
  %i.ny = getelementptr inbounds i8, ptr %.0233.ph, i64 -4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3  ; 2 uses
  %.lobit431 = ashr i32 %i.nz, 31
  %i.oa = xor i32 %.lobit431, %i.nz
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ob ; 2 uses
  %i.od = load i32, ptr %.0233.ph, align 4, !tbaa !3 ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %1, i64 %i.oe ; 2 uses
  %.val286 = load i32, ptr %i.oc, align 4, !tbaa !3 ; 2 uses
  %i.og = getelementptr i8, ptr %i.oc, i64 4
  %.val287 = load i32, ptr %i.og, align 4, !tbaa !3 ; 2 uses
  %.val288 = load i32, ptr %i.of, align 4, !tbaa !3 ; 2 uses
  %i.oh = getelementptr i8, ptr %i.of, i64 4
  %.val289 = load i32, ptr %i.oh, align 4, !tbaa !3 ; 2 uses
  %i.oi = sext i32 %.val286 to i64
  %i.oj = getelementptr inbounds i8, ptr %i.b, i64 %i.oi ; 2 uses
  %i.ok = sext i32 %.val288 to i64
  %i.ol = getelementptr inbounds i8, ptr %i.b, i64 %i.ok ; 2 uses
  %i.om = sext i32 %.val287 to i64
  %i.on = getelementptr i8, ptr %0, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.on, i64 2
  %i.op = sext i32 %.val289 to i64
  %i.oq = getelementptr i8, ptr %0, i64 %i.op
  %i.or = getelementptr i8, ptr %i.oq, i64 2
  %i.os = icmp slt i32 %.val286, %.val287         ; 2 uses
  %i.ot = icmp slt i32 %.val288, %.val289         ; 2 uses
  %or.cond6.i357 = select i1 %i.os, i1 %i.ot, i1 false
  br i1 %or.cond6.i357, label %.lr.ph.i366, label %.critedge.i358

.lr.ph.i366:                                      ; preds = %bb.bc, %bb.bd
  %.08.i367 = phi ptr [ %i.ox, %bb.bd ], [ %i.oj, %bb.bc ] ; 2 uses
  %.0257.i368 = phi ptr [ %i.oy, %bb.bd ], [ %i.ol, %bb.bc ] ; 3 uses
  %i.ou = load i8, ptr %.08.i367, align 1, !tbaa !7 ; 2 uses
  %i.ov = load i8, ptr %.0257.i368, align 1, !tbaa !7
  %i.ow = icmp eq i8 %i.ou, %i.ov
  br i1 %i.ow, label %bb.bd, label %.thread.i363

bb.bd:                                            ; preds = %.lr.ph.i366
  %i.ox = getelementptr inbounds nuw i8, ptr %.08.i367, i64 1 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.0257.i368, i64 1 ; 3 uses
  %i.oz = icmp ult ptr %i.ox, %i.oo               ; 2 uses
  %i.pa = icmp ult ptr %i.oy, %i.or               ; 2 uses
  %or.cond.i369 = select i1 %i.oz, i1 %i.pa, i1 false
  br i1 %or.cond.i369, label %.lr.ph.i366, label %.critedge.i358, !llvm.loop !21

.critedge.i358:                                   ; preds = %bb.bd, %bb.bc
  %.025.lcssa.i359 = phi ptr [ %i.ol, %bb.bc ], [ %i.oy, %bb.bd ]
  %.0.lcssa.i360 = phi ptr [ %i.oj, %bb.bc ], [ %i.ox, %bb.bd ]
  %.lcssa5.i361 = phi i1 [ %i.os, %bb.bc ], [ %i.oz, %bb.bd ]
  %.lcssa.i362 = phi i1 [ %i.ot, %bb.bc ], [ %i.pa, %bb.bd ] ; 2 uses
  br i1 %.lcssa5.i361, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge.i358
  br i1 %.lcssa.i362, label %..thread.i363_crit_edge, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370.thread

..thread.i363_crit_edge:                          ; preds = %bb.be
  %.pre665 = load i8, ptr %.0.lcssa.i360, align 1, !tbaa !7
  br label %.thread.i363

.thread.i363:                                     ; preds = %.lr.ph.i366, %..thread.i363_crit_edge
  %i.pb = phi i8 [ %.pre665, %..thread.i363_crit_edge ], [ %i.ou, %.lr.ph.i366 ]
  %.025.lcssa2229.i364 = phi ptr [ %.025.lcssa.i359, %..thread.i363_crit_edge ], [ %.0257.i368, %.lr.ph.i366 ]
  %i.pc = zext i8 %i.pb to i32
  %i.pd = load i8, ptr %.025.lcssa2229.i364, align 1, !tbaa !7
  %i.pe = zext i8 %i.pd to i32
  %i.pf = sub nsw i32 %i.pc, %i.pe
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370

bb.bf:                                            ; preds = %.critedge.i358
  %i.pg = sext i1 %.lcssa.i362 to i32
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370: ; preds = %.thread.i363, %bb.bf
  %i.ph = phi i32 [ %i.pg, %bb.bf ], [ %i.pf, %.thread.i363 ]
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.bg, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370.thread

bb.bg:                                            ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370
  %i.pj = xor i32 %i.od, -1
  store i32 %i.pj, ptr %.0233.ph, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370.thread

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370.thread: ; preds = %bb.be, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit356.thread, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370, %bb.bg
  %i.pk = icmp eq i32 %.0217, 0
  br i1 %i.pk, label %bb.ci, label %bb.bh

bb.bh:                                            ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit370.thread
  %i.pl = add nsw i32 %.0217, -1                  ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [32 x i8], ptr %7, i64 %i.pm ; 4 uses
  %i.po = load ptr, ptr %i.pn, align 16, !tbaa !185
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !187
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.ps = load ptr, ptr %i.pr, align 16, !tbaa !188
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !189
  br label %.backedge.outer.backedge

bb.bi:                                            ; preds = %bb.ag
  %. = tail call i64 @llvm.smin.i64(i64 %i.im, i64 %i.f)
  %i.pv = trunc i64 %. to i32                     ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.bi, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread
  %.0221546 = phi i32 [ %.1220, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread ], [ %i.pv, %bb.bi ] ; 2 uses
  %.0222545 = phi i32 [ %.1223, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread ], [ 0, %bb.bi ] ; 5 uses
  %.0219547 = lshr i32 %.0221546, 1               ; 6 uses
  %i.px = sext i32 %.0222545 to i64               ; 2 uses
  %i.py = getelementptr inbounds [4 x i8], ptr %.0226, i64 %i.px
  %i.pz = zext nneg i32 %.0219547 to i64          ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !3  ; 2 uses
  %.lobit435 = ashr i32 %i.qb, 31
  %i.qc = xor i32 %.lobit435, %i.qb
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qd ; 2 uses
  %i.qf = sub nsw i64 0, %i.px
  %i.qg = getelementptr inbounds [4 x i8], ptr %.0226, i64 %i.qf
  %i.qh = sub nsw i64 0, %i.pz
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.qg, i64 %i.qh
  %i.qj = getelementptr inbounds i8, ptr %i.qi, i64 -4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !3  ; 2 uses
  %.lobit436 = ashr i32 %i.qk, 31
  %i.ql = xor i32 %.lobit436, %i.qk
  %i.qm = zext nneg i32 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.qm ; 2 uses
  %.val282 = load i32, ptr %i.qe, align 4, !tbaa !3 ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qe, i64 4
  %.val283 = load i32, ptr %i.qo, align 4, !tbaa !3 ; 2 uses
  %.val284 = load i32, ptr %i.qn, align 4, !tbaa !3 ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qn, i64 4
  %.val285 = load i32, ptr %i.qp, align 4, !tbaa !3 ; 2 uses
  %i.qq = sext i32 %.val282 to i64
  %i.qr = getelementptr inbounds i8, ptr %i.b, i64 %i.qq ; 2 uses
  %i.qs = sext i32 %.val284 to i64
  %i.qt = getelementptr inbounds i8, ptr %i.b, i64 %i.qs ; 2 uses
  %i.qu = sext i32 %.val283 to i64
  %i.qv = getelementptr i8, ptr %0, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 2
  %i.qx = sext i32 %.val285 to i64
  %i.qy = getelementptr i8, ptr %0, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 2
  %i.ra = icmp slt i32 %.val282, %.val283         ; 2 uses
  %i.rb = icmp slt i32 %.val284, %.val285         ; 2 uses
  %or.cond6.i371 = select i1 %i.ra, i1 %i.rb, i1 false
  br i1 %or.cond6.i371, label %.lr.ph.i380, label %.critedge.i372

.lr.ph.i380:                                      ; preds = %.lr.ph, %bb.bj
  %.08.i381 = phi ptr [ %i.rf, %bb.bj ], [ %i.qr, %.lr.ph ] ; 2 uses
  %.0257.i382 = phi ptr [ %i.rg, %bb.bj ], [ %i.qt, %.lr.ph ] ; 3 uses
  %i.rc = load i8, ptr %.08.i381, align 1, !tbaa !7 ; 2 uses
  %i.rd = load i8, ptr %.0257.i382, align 1, !tbaa !7
  %i.re = icmp eq i8 %i.rc, %i.rd
  br i1 %i.re, label %bb.bj, label %.thread.i377

bb.bj:                                            ; preds = %.lr.ph.i380
  %i.rf = getelementptr inbounds nuw i8, ptr %.08.i381, i64 1 ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.0257.i382, i64 1 ; 3 uses
  %i.rh = icmp ult ptr %i.rf, %i.qw               ; 2 uses
  %i.ri = icmp ult ptr %i.rg, %i.qz               ; 2 uses
  %or.cond.i383 = select i1 %i.rh, i1 %i.ri, i1 false
  br i1 %or.cond.i383, label %.lr.ph.i380, label %.critedge.i372, !llvm.loop !21

.critedge.i372:                                   ; preds = %bb.bj, %.lr.ph
  %.025.lcssa.i373 = phi ptr [ %i.qt, %.lr.ph ], [ %i.rg, %bb.bj ]
  %.0.lcssa.i374 = phi ptr [ %i.qr, %.lr.ph ], [ %i.rf, %bb.bj ]
  %.lcssa5.i375 = phi i1 [ %i.ra, %.lr.ph ], [ %i.rh, %bb.bj ]
  %.lcssa.i376 = phi i1 [ %i.rb, %.lr.ph ], [ %i.ri, %bb.bj ] ; 2 uses
  br i1 %.lcssa5.i375, label %bb.bk, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384

bb.bk:                                            ; preds = %.critedge.i372
  br i1 %.lcssa.i376, label %..thread.i377_crit_edge, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread

..thread.i377_crit_edge:                          ; preds = %bb.bk
  %.pre666 = load i8, ptr %.0.lcssa.i374, align 1, !tbaa !7
  br label %.thread.i377

.thread.i377:                                     ; preds = %.lr.ph.i380, %..thread.i377_crit_edge
  %i.rj = phi i8 [ %.pre666, %..thread.i377_crit_edge ], [ %i.rc, %.lr.ph.i380 ]
  %.025.lcssa2229.i378 = phi ptr [ %.025.lcssa.i373, %..thread.i377_crit_edge ], [ %.0257.i382, %.lr.ph.i380 ]
  %i.rk = load i8, ptr %.025.lcssa2229.i378, align 1, !tbaa !7
  %i.rl = icmp ult i8 %i.rj, %i.rk
  br i1 %i.rl, label %bb.bl, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384: ; preds = %.critedge.i372
  br i1 %.lcssa.i376, label %bb.bl, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread

bb.bl:                                            ; preds = %.thread.i377, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384
  %i.rm = add i32 %.0222545, 1
  %i.rn = add i32 %i.rm, %.0219547
  %i.ro = and i32 %.0221546, 1
  %i.rp = xor i32 %i.ro, 1
  %i.rq = sub nsw i32 %.0219547, %i.rp
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread: ; preds = %.thread.i377, %bb.bk, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384, %bb.bl
  %.1223 = phi i32 [ %i.rn, %bb.bl ], [ %.0222545, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384 ], [ %.0222545, %bb.bk ], [ %.0222545, %.thread.i377 ] ; 6 uses
  %.1220 = phi i32 [ %i.rq, %bb.bl ], [ %.0219547, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384 ], [ %.0219547, %bb.bk ], [ %.0219547, %.thread.i377 ] ; 2 uses
  %i.rr = icmp sgt i32 %.1220, 0
  br i1 %i.rr, label %.lr.ph, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit384.thread
  %i.rs = icmp sgt i32 %.1223, 0
  br i1 %i.rs, label %bb.bm, label %._crit_edge.thread

bb.bm:                                            ; preds = %._crit_edge
  %i.rt = zext nneg i32 %.1223 to i64             ; 4 uses
  %i.ru = sub nsw i64 0, %i.rt
  %i.rv = getelementptr inbounds [4 x i8], ptr %.0226, i64 %i.ru ; 7 uses
  %min.iters.check = icmp ult i32 %.1223, 8
  br i1 %min.iters.check, label %.lr.ph.i386.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bm
  %n.vec = and i64 %i.rt, 2147483640              ; 4 uses
  %i.rw = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rv, i64 %i.rw
  %i.ry = trunc nuw nsw i64 %n.vec to i32
  %i.rz = sub nsw i32 %.1223, %i.ry
  %i.sa = getelementptr i8, ptr %.0226, i64 %i.rw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.rv, i64 %i.sb ; 3 uses
  %next.gep119 = getelementptr i8, ptr %.0226, i64 %i.sb ; 3 uses
  %i.sc = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load120 = load <4 x i32>, ptr %i.sc, align 4, !tbaa !3
  %i.sd = getelementptr i8, ptr %next.gep119, i64 16 ; 2 uses
  %wide.load121 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !3
  %wide.load122 = load <4 x i32>, ptr %i.sd, align 4, !tbaa !3
  store <4 x i32> %wide.load121, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load122, ptr %i.sc, align 4, !tbaa !3
  store <4 x i32> %wide.load, ptr %next.gep119, align 4, !tbaa !3
  store <4 x i32> %wide.load120, ptr %i.sd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.se = icmp eq i64 %index.next, %n.vec
  br i1 %i.se, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.rt
  br i1 %cmp.n, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit, label %.lr.ph.i386.preheader

.lr.ph.i386.preheader:                            ; preds = %bb.bm, %middle.block
  %.012.i.ph = phi ptr [ %i.rv, %bb.bm ], [ %i.rx, %middle.block ]
  %.0811.i.ph = phi i32 [ %.1223, %bb.bm ], [ %i.rz, %middle.block ]
  %.0910.i.ph = phi ptr [ %.0226, %bb.bm ], [ %i.sa, %middle.block ]
  br label %.lr.ph.i386

.lr.ph.i386:                                      ; preds = %.lr.ph.i386.preheader, %.lr.ph.i386
  %.012.i = phi ptr [ %i.si, %.lr.ph.i386 ], [ %.012.i.ph, %.lr.ph.i386.preheader ] ; 3 uses
  %.0811.i = phi i32 [ %i.sh, %.lr.ph.i386 ], [ %.0811.i.ph, %.lr.ph.i386.preheader ] ; 2 uses
  %.0910.i = phi ptr [ %i.sj, %.lr.ph.i386 ], [ %.0910.i.ph, %.lr.ph.i386.preheader ] ; 3 uses
  %i.sf = load i32, ptr %.012.i, align 4, !tbaa !3
  %i.sg = load i32, ptr %.0910.i, align 4, !tbaa !3
  store i32 %i.sg, ptr %.012.i, align 4, !tbaa !3
  store i32 %i.sf, ptr %.0910.i, align 4, !tbaa !3
  %i.sh = add nsw i32 %.0811.i, -1
  %i.si = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.sj = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %i.sk = icmp samesign ugt i32 %.0811.i, 1
  br i1 %i.sk, label %.lr.ph.i386, label %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit, !llvm.loop !207

_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit:      ; preds = %.lr.ph.i386, %middle.block
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.0226, i64 %i.rt ; 5 uses
  %i.sm = icmp ult ptr %i.sl, %.0233.ph
  br i1 %i.sm, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit
  %i.sn = load i32, ptr %i.sl, align 4, !tbaa !3  ; 2 uses
  %i.so = icmp slt i32 %i.sn, 0
  br i1 %i.so, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.sp = xor i32 %i.sn, -1
  store i32 %i.sp, ptr %i.sl, align 4, !tbaa !3
  %i.sq = icmp ult ptr %.0224, %i.rv
  br i1 %i.sq, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bo, %.preheader
  %.0230 = phi ptr [ %i.sr, %.preheader ], [ %.0226, %bb.bo ]
  %i.sr = getelementptr inbounds i8, ptr %.0230, i64 -4 ; 4 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !3
  %i.st = icmp slt i32 %i.ss, 0
  br i1 %i.st, label %.preheader, label %.loopexit.loopexit, !llvm.loop !208

bb.bp:                                            ; preds = %bb.bn
  %i.su = icmp ult ptr %.0224, %i.rv
  br i1 %i.su, label %.preheader439, label %.loopexit

.preheader439:                                    ; preds = %bb.bp, %.preheader439
  %.0228 = phi ptr [ %i.sx, %.preheader439 ], [ %.0226, %bb.bp ] ; 4 uses
  %i.sv = load i32, ptr %.0228, align 4, !tbaa !3
  %i.sw = icmp slt i32 %i.sv, 0
  %i.sx = getelementptr inbounds nuw i8, ptr %.0228, i64 4
  br i1 %i.sw, label %.preheader439, label %.loopexit.loopexit550, !llvm.loop !209

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre671 = ptrtoint ptr %i.sr to i64
  %.pre672 = sub i64 %.pre671, %i.ik
  br label %.loopexit

.loopexit.loopexit550:                            ; preds = %.preheader439
  %.pre674 = ptrtoint ptr %.0228 to i64
  %.pre676 = sub i64 %i.c, %.pre674
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit550, %.loopexit.loopexit, %bb.bo, %bb.bp, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit
  %.pre-phi677 = phi i64 [ %.pre676, %.loopexit.loopexit550 ], [ %i.e, %.loopexit.loopexit ], [ %i.e, %bb.bo ], [ %i.e, %bb.bp ], [ %i.e, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit ]
  %.pre-phi673 = phi i64 [ %i.il, %.loopexit.loopexit550 ], [ %.pre672, %.loopexit.loopexit ], [ %i.il, %bb.bo ], [ %i.il, %bb.bp ], [ %i.il, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit ]
  %.2232 = phi ptr [ %.0226, %.loopexit.loopexit550 ], [ %i.sr, %.loopexit.loopexit ], [ %.0226, %bb.bo ], [ %.0226, %bb.bp ], [ %.0226, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit ] ; 2 uses
  %.1229 = phi ptr [ %.0228, %.loopexit.loopexit550 ], [ %.0226, %.loopexit.loopexit ], [ %.0226, %bb.bo ], [ %.0226, %bb.bp ], [ %.0226, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit ] ; 3 uses
  %.1 = phi i32 [ 2, %.loopexit.loopexit550 ], [ 5, %.loopexit.loopexit ], [ 1, %bb.bo ], [ 0, %bb.bp ], [ 0, %_ZN11duckdb_zstdL12ss_blockswapEPiS0_i.exit ] ; 5 uses
  %.not262 = icmp sgt i64 %.pre-phi673, %.pre-phi677
  %i.sy = and i32 %.0215, 3                       ; 2 uses
  br i1 %.not262, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.loopexit
  %i.sz = sext i32 %.0217 to i64
  %i.ta = getelementptr inbounds [32 x i8], ptr %7, i64 %i.sz ; 4 uses
  store ptr %.1229, ptr %i.ta, align 16, !tbaa !185
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store ptr %i.sl, ptr %i.tb, align 8, !tbaa !187
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store ptr %.0233.ph, ptr %i.tc, align 16, !tbaa !188
  %i.td = and i32 %.1, 3
  %i.te = and i32 %.0215, 4
  %i.tf = or disjoint i32 %i.td, %i.te
  %i.tg = add nsw i32 %.0217, 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  store i32 %i.tf, ptr %i.th, align 8, !tbaa !189
  %i.ti = and i32 %.1, 4
  %i.tj = or disjoint i32 %i.ti, %i.sy
  br label %.backedge.outer.backedge

bb.br:                                            ; preds = %.loopexit
  %i.tk = and i32 %.1, 2
  %.not263 = icmp ne i32 %i.tk, 0
  %i.tl = icmp eq ptr %.1229, %.0226
  %or.cond270 = and i1 %i.tl, %.not263
  %i.tm = xor i32 %.1, 6
  %.2 = select i1 %or.cond270, i32 %i.tm, i32 %.1 ; 2 uses
  %i.tn = sext i32 %.0217 to i64
  %i.to = getelementptr inbounds [32 x i8], ptr %7, i64 %i.tn ; 4 uses
  store ptr %.0224, ptr %i.to, align 16, !tbaa !185
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  store ptr %i.rv, ptr %i.tp, align 8, !tbaa !187
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  store ptr %.2232, ptr %i.tq, align 16, !tbaa !188
  %i.tr = and i32 %.2, 4
  %i.ts = or disjoint i32 %i.tr, %i.sy
  %i.tt = add nsw i32 %.0217, 1
  %i.tu = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  store i32 %i.ts, ptr %i.tu, align 8, !tbaa !189
  %i.tv = and i32 %.2, 3
  %i.tw = and i32 %.0215, 4
  %i.tx = or disjoint i32 %i.tv, %i.tw
  br label %.backedge, !llvm.loop !190

._crit_edge.thread:                               ; preds = %bb.bi, %._crit_edge
  %i.ty = getelementptr inbounds i8, ptr %.0226, i64 -4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !3  ; 2 uses
  %.lobit432 = ashr i32 %i.tz, 31
  %i.ua = xor i32 %.lobit432, %i.tz
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ub ; 2 uses
  %i.ud = load i32, ptr %.0226, align 4, !tbaa !3 ; 2 uses
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ue ; 2 uses
  %.val278 = load i32, ptr %i.uc, align 4, !tbaa !3 ; 2 uses
  %i.ug = getelementptr i8, ptr %i.uc, i64 4
  %.val279 = load i32, ptr %i.ug, align 4, !tbaa !3 ; 2 uses
  %.val280 = load i32, ptr %i.uf, align 4, !tbaa !3 ; 2 uses
  %i.uh = getelementptr i8, ptr %i.uf, i64 4
  %.val281 = load i32, ptr %i.uh, align 4, !tbaa !3 ; 2 uses
  %i.ui = sext i32 %.val278 to i64
  %i.uj = getelementptr inbounds i8, ptr %i.b, i64 %i.ui ; 2 uses
  %i.uk = sext i32 %.val280 to i64
  %i.ul = getelementptr inbounds i8, ptr %i.b, i64 %i.uk ; 2 uses
  %i.um = sext i32 %.val279 to i64
  %i.un = getelementptr i8, ptr %0, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.un, i64 2
  %i.up = sext i32 %.val281 to i64
  %i.uq = getelementptr i8, ptr %0, i64 %i.up
  %i.ur = getelementptr i8, ptr %i.uq, i64 2
  %i.us = icmp slt i32 %.val278, %.val279         ; 2 uses
  %i.ut = icmp slt i32 %.val280, %.val281         ; 2 uses
  %or.cond6.i387 = select i1 %i.us, i1 %i.ut, i1 false
  br i1 %or.cond6.i387, label %.lr.ph.i396, label %.critedge.i388

.lr.ph.i396:                                      ; preds = %._crit_edge.thread, %bb.bs
  %.08.i397 = phi ptr [ %i.ux, %bb.bs ], [ %i.uj, %._crit_edge.thread ] ; 2 uses
  %.0257.i398 = phi ptr [ %i.uy, %bb.bs ], [ %i.ul, %._crit_edge.thread ] ; 3 uses
  %i.uu = load i8, ptr %.08.i397, align 1, !tbaa !7 ; 2 uses
  %i.uv = load i8, ptr %.0257.i398, align 1, !tbaa !7
  %i.uw = icmp eq i8 %i.uu, %i.uv
  br i1 %i.uw, label %bb.bs, label %.thread.i393

bb.bs:                                            ; preds = %.lr.ph.i396
  %i.ux = getelementptr inbounds nuw i8, ptr %.08.i397, i64 1 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.0257.i398, i64 1 ; 3 uses
  %i.uz = icmp ult ptr %i.ux, %i.uo               ; 2 uses
  %i.va = icmp ult ptr %i.uy, %i.ur               ; 2 uses
  %or.cond.i399 = select i1 %i.uz, i1 %i.va, i1 false
  br i1 %or.cond.i399, label %.lr.ph.i396, label %.critedge.i388, !llvm.loop !21

.critedge.i388:                                   ; preds = %bb.bs, %._crit_edge.thread
  %.025.lcssa.i389 = phi ptr [ %i.ul, %._crit_edge.thread ], [ %i.uy, %bb.bs ]
  %.0.lcssa.i390 = phi ptr [ %i.uj, %._crit_edge.thread ], [ %i.ux, %bb.bs ]
  %.lcssa5.i391 = phi i1 [ %i.us, %._crit_edge.thread ], [ %i.uz, %bb.bs ]
  %.lcssa.i392 = phi i1 [ %i.ut, %._crit_edge.thread ], [ %i.va, %bb.bs ] ; 2 uses
  br i1 %.lcssa5.i391, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge.i388
  br i1 %.lcssa.i392, label %..thread.i393_crit_edge, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread

..thread.i393_crit_edge:                          ; preds = %bb.bt
  %.pre667 = load i8, ptr %.0.lcssa.i390, align 1, !tbaa !7
  br label %.thread.i393

.thread.i393:                                     ; preds = %.lr.ph.i396, %..thread.i393_crit_edge
  %i.vb = phi i8 [ %.pre667, %..thread.i393_crit_edge ], [ %i.uu, %.lr.ph.i396 ]
  %.025.lcssa2229.i394 = phi ptr [ %.025.lcssa.i389, %..thread.i393_crit_edge ], [ %.0257.i398, %.lr.ph.i396 ]
  %i.vc = zext i8 %i.vb to i32
  %i.vd = load i8, ptr %.025.lcssa2229.i394, align 1, !tbaa !7
  %i.ve = zext i8 %i.vd to i32
  %i.vf = sub nsw i32 %i.vc, %i.ve
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400

bb.bu:                                            ; preds = %.critedge.i388
  %i.vg = sext i1 %.lcssa.i392 to i32
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400: ; preds = %.thread.i393, %bb.bu
  %i.vh = phi i32 [ %i.vg, %bb.bu ], [ %i.vf, %.thread.i393 ]
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.bv, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread

bb.bv:                                            ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400
  %i.vj = xor i32 %i.ud, -1
  store i32 %i.vj, ptr %.0226, align 4, !tbaa !3
  br label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread: ; preds = %bb.bt, %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400, %bb.bv
  %i.vk = and i32 %.0215, 1
  %.not259 = icmp eq i32 %i.vk, 0
  br i1 %.not259, label %bb.bw, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread._crit_edge

_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread._crit_edge: ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread
  %.pre669 = load i32, ptr %.0224, align 4, !tbaa !3
  br label %bb.cb

bb.bw:                                            ; preds = %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit400.thread
  %i.vl = and i32 %.0215, 2
  %.not260 = icmp eq i32 %i.vl, 0
  br i1 %.not260, label %_ZN11duckdb_zstdL10ss_compareEPKhPKiS3_i.exit414.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vm = getelementptr inbounds i8, ptr %.0224, i64 -4
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !3  ; 2 uses
  %.lobit433 = ashr i32 %i.vn, 31
  %i.vo = xor i32 %.lobit433, %i.vn
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vp ; 2 uses
  %i.vr = load i32, ptr %.0224, align 4, !tbaa !3 ; 2 uses
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vs ; 2 uses
  %.val274 = load i32, ptr %i.vq, align 4, !tbaa !3 ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vq, i64 4
  %.val275 = load i32, ptr %i.vu, align 4, !tbaa !3 ; 2 uses
  %.val276 = load i32, ptr %i.vt, align 4, !tbaa !3 ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vt, i64 4
  %.val277 = load i32, ptr %i.vv, align 4, !tbaa !3 ; 2 uses
  %i.vw = sext i32 %.val274 to i64
  %i.vx = getelementptr inbounds i8, ptr %i.b, i64 %i.vw ; 2 uses
  %i.vy = sext i32 %.val276 to i64
  %i.vz = getelementptr inbounds i8, ptr %i.b, i64 %i.vy ; 2 uses
  %i.wa = sext i32 %.val275 to i64
  %i.wb = getelementptr i8, ptr %0, i64 %i.wa
  %i.wc = getelementptr i8, ptr %i.wb, i64 2
  %i.wd = sext i32 %.val277 to i64
  %i.we = getelementptr i8, ptr %0, i64 %i.wd
  %i.wf = getelementptr i8, ptr %i.we, i64 2
  %i.wg = icmp slt i32 %.val274, %.val275         ; 2 uses
  %i.wh = icmp slt i32 %.val276, %.val277         ; 2 uses
  %or.cond6.i401 = select i1 %i.wg, i1 %i.wh, i1 false
  br i1 %or.cond6.i401, label %.lr.ph.i410, label %.critedge.i402

.lr.ph.i410:                                      ; preds = %bb.bx, %bb.by
  %.08.i411 = phi ptr [ %i.wl, %bb.by ], [ %i.vx, %bb.bx ] ; 2 uses
  %.0257.i412 = phi ptr [ %i.wm, %bb.by ], [ %i.vz, %bb.bx ] ; 3 uses
  %i.wi = load i8, ptr %.08.i411, align 1, !tbaa !7 ; 2 uses
  %i.wj = load i8, ptr %.0257.i412, align 1, !tbaa !7
  %i.wk = icmp eq i8 %i.wi, %i.wj
  br i1 %i.wk, label %bb.by, label %.thread.i407

end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !9, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = distinct !{!31, !9, !29}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !9, !29, !30}
!59 = distinct !{!59, !9, !29}
!60 = !{!61}
!61 = distinct !{!61, !62}
!62 = distinct !{!62, !"LVerDomain"}
!63 = !{!64}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !9, !29, !30}
!66 = distinct !{!66, !9, !29}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = !{!70, !71, i64 0}
!70 = !{!"_ZTSZN11duckdb_zstdL12tr_introsortEPiPKiS0_S0_S0_PNS_11_trbudget_tEE3$_0", !71, i64 0, !71, i64 8, !71, i64 16, !4, i64 24, !4, i64 28}
!71 = !{!"p1 int", !72, i64 0}
!72 = !{!"any pointer", !5, i64 0}
!73 = !{!70, !71, i64 8}
!74 = !{!70, !71, i64 16}
!75 = !{!70, !4, i64 24}
!76 = !{!70, !4, i64 28}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !9, !29, !30}
!95 = distinct !{!95, !9, !29}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !9, !29, !30}
!102 = distinct !{!102, !9, !29}
!103 = distinct !{!103, !9}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = distinct !{!107, !9}
!108 = distinct !{!108, !9}
!109 = distinct !{!109, !9}
!110 = distinct !{!110, !9, !29, !30}
!111 = distinct !{!111, !9, !29}
!112 = distinct !{!112, !9}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = distinct !{!115, !9}
!116 = distinct !{!116, !9}
!117 = distinct !{!117, !9}
!118 = distinct !{!118, !9}
!119 = distinct !{!119, !9}
!120 = !{!121}
!121 = distinct !{!121, !122}
!122 = distinct !{!122, !"LVerDomain"}
!123 = !{!124}
!124 = distinct !{!124, !122}
!125 = distinct !{!125, !9, !29, !30}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!132}
!132 = distinct !{!132, !130}
!133 = distinct !{!133, !9, !29, !30}
!134 = distinct !{!134, !9, !29}
!135 = distinct !{!135, !9, !29}
!136 = distinct !{!136, !9}
!137 = distinct !{!137, !9}
!138 = !{!139, !71, i64 0}
!139 = !{!"_ZTSZN11duckdb_zstdL13ss_mintrosortEPKhPKiPiS4_iE3$_0", !71, i64 0, !71, i64 8, !4, i64 16, !4, i64 20}
!140 = !{!139, !71, i64 8}
!141 = !{!139, !4, i64 16}
!142 = !{!139, !4, i64 20}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !9}
!145 = distinct !{!145, !9}
!146 = distinct !{!146, !9}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !9}
!151 = distinct !{!151, !9}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = distinct !{!154, !9}
!155 = distinct !{!155, !9}
!156 = !{!157}
!157 = distinct !{!157, !158}
!158 = distinct !{!158, !"LVerDomain"}
!159 = !{!160}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !9, !29, !30}
!162 = distinct !{!162, !9, !29}
!163 = !{!164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!167}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !9, !29, !30}
!169 = distinct !{!169, !9, !29}
!170 = distinct !{!170, !9}
!171 = !{!172}
!172 = distinct !{!172, !173}
!173 = distinct !{!173, !"LVerDomain"}
!174 = !{!175}
!175 = distinct !{!175, !173}
!176 = distinct !{!176, !9, !29, !30}
!177 = distinct !{!177, !9, !29}
!178 = distinct !{!178, !9}
!179 = distinct !{!179, !9}
!180 = distinct !{!180, !9}
!181 = distinct !{!181, !9}
!182 = distinct !{!182, !9}
!183 = distinct !{!183, !9}
!184 = distinct !{!184, !9}
!185 = !{!186, !71, i64 0}
!186 = !{!"_ZTSZN11duckdb_zstdL12ss_swapmergeEPKhPKiPiS4_S4_S4_iiE3$_0", !71, i64 0, !71, i64 8, !71, i64 16, !4, i64 24}
!187 = !{!186, !71, i64 8}
!188 = !{!186, !71, i64 16}
!189 = !{!186, !4, i64 24}
!190 = distinct !{!190, !9}
!191 = !{!192}
!192 = distinct !{!192, !193}
!193 = distinct !{!193, !"LVerDomain"}
!194 = !{!195}
!195 = distinct !{!195, !193}
!196 = distinct !{!196, !9, !29, !30}
!197 = distinct !{!197, !9, !29}
!198 = distinct !{!198, !9}
!199 = distinct !{!199, !9}
!200 = distinct !{!200, !9}
!201 = distinct !{!201, !9}
!202 = distinct !{!202, !9}
!203 = distinct !{!203, !9}
!204 = distinct !{!204, !9}
!205 = distinct !{!205, !9}
!206 = distinct !{!206, !9, !29, !30}
!207 = distinct !{!207, !9, !30, !29}
!208 = distinct !{!208, !9}
!209 = distinct !{!209, !9}
end_hunk_2
