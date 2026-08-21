inline.NumInlined: 86
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@SDL_qsort_REAL:bb.a
bb.cm:                                            ; preds = %bb.cl
  %i.agl = load i32, ptr %.0181213.i.i, align 4
  store i32 %i.agl, ptr %.0179214.i.i, align 4
  store i32 %i.agk, ptr %.0181213.i.i, align 4
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %i.agm = load i32, ptr %i.adw, align 4
  store i32 %i.agm, ptr %.0179214.i.i, align 4
  store i32 %i.agk, ptr %i.adw, align 4
  %i.agn = tail call i32 %3(ptr noundef nonnull %i.adw, ptr noundef nonnull %.0181213.i.i) #4, !inline_history !270
  %i.ago = icmp sgt i32 %i.agn, 0
  br i1 %i.ago, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.agp = load i32, ptr %i.adw, align 4
  %i.agq = load i32, ptr %.0181213.i.i, align 4
  store i32 %i.agq, ptr %i.adw, align 4
  store i32 %i.agp, ptr %.0181213.i.i, align 4
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %bb.ci
  %i.agr = getelementptr inbounds nuw i8, ptr %.0179214.i.i, i64 4
  %i.ags = getelementptr inbounds i8, ptr %.0181213.i.i, i64 -4
  br label %pivot_big.exit

pivot_big.exit:                                   ; preds = %.sink.split134.i, %bb.cg, %bb.cf, %bb.cp
  %.0183.i.i = phi ptr [ %i.adw, %bb.cp ], [ %i.afd, %bb.cf ], [ %i.aeq, %bb.cg ], [ %i.afz, %.sink.split134.i ]
  %.1171.i.i = phi ptr [ %i.ags, %bb.cp ], [ %.0181213.i.i, %bb.cf ], [ %.0181213.i.i, %bb.cg ], [ %.0181213.i.i, %.sink.split134.i ]
  %.1169.i.i = phi ptr [ %i.agr, %bb.cp ], [ %.0179214.i.i, %bb.cf ], [ %.0179214.i.i, %bb.cg ], [ %.0179214.i.i, %.sink.split134.i ]
  %i.agt = load i32, ptr %.0183.i.i, align 4
  store i32 %i.agt, ptr %i.adm, align 4
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cv, %pivot_big.exit
  %.3173.i.i = phi ptr [ %.1171.i.i, %pivot_big.exit ], [ %.5175.i.i, %bb.cv ]
  %.3.i121.i = phi ptr [ %.1169.i.i, %pivot_big.exit ], [ %.5.i123.i, %bb.cv ]
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %bb.cq
  %.4.i.i = phi ptr [ %.3.i121.i, %bb.cq ], [ %i.agw, %bb.cr ] ; 7 uses
  %i.agu = tail call i32 %3(ptr noundef %.4.i.i, ptr noundef nonnull %i.adm) #4, !inline_history !270
  %i.agv = icmp slt i32 %i.agu, 0
  %i.agw = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 4 ; 3 uses
  br i1 %i.agv, label %bb.cr, label %.preheader.i122.i, !llvm.loop !142

.preheader.i122.i:                                ; preds = %bb.cr, %.preheader.i122.i
  %.4174.i.i = phi ptr [ %i.agz, %.preheader.i122.i ], [ %.3173.i.i, %bb.cr ] ; 7 uses
  %i.agx = tail call i32 %3(ptr noundef nonnull %i.adm, ptr noundef %.4174.i.i) #4, !inline_history !270
  %i.agy = icmp slt i32 %i.agx, 0
  %i.agz = getelementptr inbounds i8, ptr %.4174.i.i, i64 -4 ; 3 uses
  br i1 %i.agy, label %.preheader.i122.i, label %bb.cs, !llvm.loop !143

bb.cs:                                            ; preds = %.preheader.i122.i
  %i.aha = icmp ult ptr %.4.i.i, %.4174.i.i
  br i1 %i.aha, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ahb = load i32, ptr %.4.i.i, align 4
  %i.ahc = load i32, ptr %.4174.i.i, align 4
  store i32 %i.ahc, ptr %.4.i.i, align 4
  store i32 %i.ahb, ptr %.4174.i.i, align 4
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ahd = icmp eq ptr %.4.i.i, %.4174.i.i
  br i1 %i.ahd, label %.loopexit.i124.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.5175.i.i = phi ptr [ %i.agz, %bb.ct ], [ %.4174.i.i, %bb.cu ] ; 3 uses
  %.5.i123.i = phi ptr [ %i.agw, %bb.ct ], [ %.4.i.i, %bb.cu ] ; 3 uses
  %.not192.i.i = icmp ugt ptr %.5.i123.i, %.5175.i.i
  br i1 %.not192.i.i, label %.loopexit.i124.i, label %bb.cq, !llvm.loop !144

.loopexit.i124.i:                                 ; preds = %bb.cv, %bb.cu
  %.6176.i.i = phi ptr [ %i.agz, %bb.cu ], [ %.5175.i.i, %bb.cv ] ; 4 uses
  %.6.i125.i = phi ptr [ %i.agw, %bb.cu ], [ %.5.i123.i, %bb.cv ] ; 4 uses
  %i.ahe = ptrtoint ptr %.6176.i.i to i64
  %i.ahf = ptrtoint ptr %.0179214.i.i to i64
  %i.ahg = sub i64 %i.ahe, %i.ahf                 ; 4 uses
  %i.ahh = ptrtoint ptr %.0181213.i.i to i64
  %i.ahi = ptrtoint ptr %.6.i125.i to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi                 ; 5 uses
  %i.ahk = icmp ult i64 %i.ahg, 48
  br i1 %i.ahk, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %.loopexit.i124.i
  %i.ahl = icmp ugt i64 %i.ahj, 47
  br i1 %i.ahl, label %bb.dd, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ahm = icmp slt i32 %.0167215.i.i, 1
  br i1 %i.ahm, label %.lr.ph221.preheader.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ahn = add nsw i32 %.0167215.i.i, -1          ; 2 uses
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.aho ; 2 uses
  %i.ahq = load ptr, ptr %i.ahp, align 16         ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8
  %i.ahs = load ptr, ptr %i.ahr, align 8          ; 2 uses
  %.pre.i128.i = ptrtoint ptr %i.ahs to i64
  %.pre244.i.i = ptrtoint ptr %i.ahq to i64
  %.pre246.i.i = sub i64 %.pre.i128.i, %.pre244.i.i
  br label %bb.dd

bb.cz:                                            ; preds = %.loopexit.i124.i
  %.not193.i.i = icmp ugt i64 %i.ahg, %i.ahj
  br i1 %.not193.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aht = sext i32 %.0167215.i.i to i64
  %i.ahu = getelementptr inbounds [16 x i8], ptr %4, i64 %i.aht ; 2 uses
  store ptr %.6.i125.i, ptr %i.ahu, align 16
  %i.ahv = add nsw i32 %.0167215.i.i, 1
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  store ptr %.0181213.i.i, ptr %i.ahw, align 8
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %i.ahx = icmp ugt i64 %i.ahj, 47
  br i1 %i.ahx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ahy = sext i32 %.0167215.i.i to i64
  %i.ahz = getelementptr inbounds [16 x i8], ptr %4, i64 %i.ahy ; 2 uses
  store ptr %.0179214.i.i, ptr %i.ahz, align 16
  %i.aia = add nsw i32 %.0167215.i.i, 1
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store ptr %.6176.i.i, ptr %i.aib, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da, %bb.cy, %bb.cw
  %.pre-phi247.i.i = phi i64 [ %i.ahg, %bb.db ], [ %i.ahj, %bb.cw ], [ %i.ahj, %bb.dc ], [ %i.ahg, %bb.da ], [ %.pre246.i.i, %bb.cy ] ; 2 uses
  %.1182.i.i = phi ptr [ %.6176.i.i, %bb.db ], [ %.0181213.i.i, %bb.cw ], [ %.0181213.i.i, %bb.dc ], [ %.6176.i.i, %bb.da ], [ %i.ahs, %bb.cy ] ; 2 uses
  %.1180.i.i = phi ptr [ %.0179214.i.i, %bb.db ], [ %.6.i125.i, %bb.cw ], [ %.6.i125.i, %bb.dc ], [ %.0179214.i.i, %bb.da ], [ %i.ahq, %bb.cy ] ; 2 uses
  %.1.i126.i = phi i32 [ %.0167215.i.i, %bb.db ], [ %.0167215.i.i, %bb.cw ], [ %i.aia, %bb.dc ], [ %i.ahv, %bb.da ], [ %i.ahn, %bb.cy ]
  %i.aic = lshr i64 %.pre-phi247.i.i, 1
  %i.aid = and i64 %i.aic, 9223372036854775804
  %i.aie = getelementptr inbounds nuw i8, ptr %.1180.i.i, i64 %i.aid ; 2 uses
  %.not.i127.i = icmp ult ptr %i.aie, %.1182.i.i
  br i1 %.not.i127.i, label %.lr.ph.i120.i, label %.lr.ph221.preheader.i.i

.lr.ph221.preheader.i.i:                          ; preds = %bb.dd, %bb.cx, %bb.bu, %bb.bt
  %i.aif = tail call i64 @llvm.umin.i64(i64 range(i64 2, 0) %1, i64 12)
  %i.aig = shl nuw nsw i64 %i.aif, 2
  %i.aih = getelementptr i8, ptr %0, i64 %i.aig
  %.8178217.i.i = getelementptr i8, ptr %i.aih, i64 -4
  br label %.lr.ph221.i.i

.lr.ph221.i.i:                                    ; preds = %.lr.ph221.i.i, %.lr.ph221.preheader.i.i
  %.8178220.i.i = phi ptr [ %.8178.i.i, %.lr.ph221.i.i ], [ %.8178217.i.i, %.lr.ph221.preheader.i.i ] ; 3 uses
  %.8219.i.i = phi ptr [ %spec.select.i116.i, %.lr.ph221.i.i ], [ %0, %.lr.ph221.preheader.i.i ] ; 2 uses
  %i.aii = tail call i32 %3(ptr noundef %.8219.i.i, ptr noundef %.8178220.i.i) #4, !inline_history !270
  %i.aij = icmp sgt i32 %i.aii, 0
  %spec.select.i116.i = select i1 %i.aij, ptr %.8178220.i.i, ptr %.8219.i.i ; 4 uses
  %.8178.i.i = getelementptr i8, ptr %.8178220.i.i, i64 -4 ; 2 uses
  %.not194.i.i = icmp eq ptr %.8178.i.i, %0
  br i1 %.not194.i.i, label %._crit_edge.i117.i, label %.lr.ph221.i.i, !llvm.loop !145

._crit_edge.i117.i:                               ; preds = %.lr.ph221.i.i
  %.not195.i.i = icmp eq ptr %spec.select.i116.i, %0
  br i1 %.not195.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %._crit_edge.i117.i
  %i.aik = load i32, ptr %spec.select.i116.i, align 4
  %i.ail = load i32, ptr %0, align 4
  store i32 %i.ail, ptr %spec.select.i116.i, align 4
  store i32 %i.aik, ptr %0, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge.i117.i
  %i.aim = getelementptr inbounds nuw i8, ptr %0, i64 %i.adn
  %.not197236.i.i = icmp samesign eq i64 %i.adn, 4
  br i1 %.not197236.i.i, label %qsort_r_words.exit.i, label %.lr.ph240.preheader.i.i

.lr.ph240.preheader.i.i:                          ; preds = %bb.df
  %.10.ptr235.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph240.i.i

.lr.ph240.i.i:                                    ; preds = %.critedge.thread.i119.i, %.lr.ph240.preheader.i.i
  %.10.ptr238.i.i = phi ptr [ %.10.ptr.i.i, %.critedge.thread.i119.i ], [ %.10.ptr235.i.i, %.lr.ph240.preheader.i.i ] ; 3 uses
  %.pn196237.i.i = phi ptr [ %.10.ptr238.i.i, %.critedge.thread.i119.i ], [ %0, %.lr.ph240.preheader.i.i ] ; 5 uses
  %i.ain = load i32, ptr %.10.ptr238.i.i, align 4
  store i32 %i.ain, ptr %i.adm, align 4
  %.not198223.i.i = icmp ult ptr %.pn196237.i.i, %0
  br i1 %.not198223.i.i, label %.critedge.thread.i119.i, label %.lr.ph229.i.preheader.i

.lr.ph229.i.preheader.i:                          ; preds = %.lr.ph240.i.i
  %i.aio = tail call i32 %3(ptr noundef %.pn196237.i.i, ptr noundef nonnull %i.adm) #4, !inline_history !270
  %i.aip = icmp sgt i32 %i.aio, 0
  br i1 %i.aip, label %.lr.ph.i.preheader, label %.critedge.thread.i119.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph229.i.preheader.i
  %.0.ptr222.i.i = getelementptr inbounds nuw i8, ptr %.pn196237.i.i, i64 4
  br label %.lr.ph.i

.lr.ph229.i.i:                                    ; preds = %.lr.ph.i
  %i.aiq = tail call i32 %3(ptr noundef nonnull %.0166.ptr.i.i, ptr noundef nonnull %i.adm) #4, !inline_history !270
  %i.air = icmp sgt i32 %i.aiq, 0
  br i1 %i.air, label %.lr.ph.i, label %bb.dg, !llvm.loop !146

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph229.i.i
  %.0166.idx224.i143.i = phi i64 [ %.0166.add.i.i, %.lr.ph229.i.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.0.ptr227.i142.i = phi ptr [ %.0166.ptr226.i144.i, %.lr.ph229.i.i ], [ %.0.ptr222.i.i, %.lr.ph.i.preheader ]
  %.0166.ptr226.i144.i = getelementptr inbounds i8, ptr %.pn196237.i.i, i64 %.0166.idx224.i143.i ; 3 uses
  %i.ais = load i32, ptr %.0166.ptr226.i144.i, align 4
  store i32 %i.ais, ptr %.0.ptr227.i142.i, align 4
  %.0166.add.i.i = add nsw i64 %.0166.idx224.i143.i, -4 ; 2 uses
  %.0166.ptr.i.i = getelementptr inbounds i8, ptr %.pn196237.i.i, i64 %.0166.add.i.i ; 2 uses
  %.not198.i.i = icmp ult ptr %.0166.ptr.i.i, %0
  br i1 %.not198.i.i, label %..critedge.i118_crit_edge.i, label %.lr.ph229.i.i, !llvm.loop !146

..critedge.i118_crit_edge.i:                      ; preds = %.lr.ph.i
  br label %bb.dg, !llvm.loop !146

bb.dg:                                            ; preds = %.lr.ph229.i.i, %..critedge.i118_crit_edge.i
  %i.ait = load i32, ptr %i.adm, align 4
  store i32 %i.ait, ptr %.0166.ptr226.i144.i, align 4
  br label %.critedge.thread.i119.i

.critedge.thread.i119.i:                          ; preds = %bb.dg, %.lr.ph229.i.preheader.i, %.lr.ph240.i.i
  %.10.ptr.i.i = getelementptr inbounds nuw i8, ptr %.10.ptr238.i.i, i64 4 ; 2 uses
  %.not197.i.i = icmp eq ptr %.10.ptr.i.i, %i.aim
  br i1 %.not197.i.i, label %qsort_r_words.exit.i, label %.lr.ph240.i.i, !llvm.loop !147

qsort_r_words.exit.i:                             ; preds = %.critedge.thread.i119.i, %bb.df
  tail call void @SDL_free_REAL(ptr noundef %i.adm) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %SDL_qsort_r_REAL.exit

SDL_qsort_r_REAL.exit:                            ; preds = %bb.a, %qsort_r_nonaligned.exit.i, %qsort_r_aligned.exit.i, %qsort_r_words.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_bsearch_r_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not21 = icmp eq i64 %2, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.01723 = phi ptr [ %.1, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.01822 = phi i64 [ %.119, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.01822, 1                      ; 3 uses
  %i.b = mul i64 %i.a, %3
  %i.c = getelementptr inbounds nuw i8, ptr %.01723, i64 %i.b ; 3 uses
  %i.d = tail call i32 %4(ptr noundef %5, ptr noundef %0, ptr noundef %i.c) #4 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i64 %.01822, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %3
  %i.h = xor i64 %i.f, 1
  %i.i = sub nsw i64 %i.a, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = icmp eq i32 %i.d, 0
  br i1 %i.j, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.119 = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.g, %bb.b ], [ %.01723, %bb.c ]
  %.not = icmp eq i64 %.119, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !271

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @SDL_bsearch_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not21.i = icmp eq i64 %2, 0
  br i1 %.not21.i, label %SDL_bsearch_r_REAL.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.01723.i = phi ptr [ %.1.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %.01822.i = phi i64 [ %.119.i, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.a = lshr i64 %.01822.i, 1                    ; 3 uses
  %i.b = mul i64 %i.a, %3
  %i.c = getelementptr inbounds nuw i8, ptr %.01723.i, i64 %i.b ; 3 uses
  %i.d = tail call i32 %4(ptr noundef %0, ptr noundef %i.c) #4, !inline_history !272 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = and i64 %.01822.i, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %3
  %i.h = xor i64 %i.f, 1
  %i.i = sub nsw i64 %i.a, %i.h
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = icmp eq i32 %i.d, 0
  br i1 %i.j, label %SDL_bsearch_r_REAL.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.119.i = phi i64 [ %i.i, %bb.b ], [ %i.a, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %i.g, %bb.b ], [ %.01723.i, %bb.c ]
  %.not.i = icmp eq i64 %.119.i, 0
  br i1 %.not.i, label %SDL_bsearch_r_REAL.exit, label %.lr.ph.i, !llvm.loop !271

SDL_bsearch_r_REAL.exit:                          ; preds = %bb.c, %bb.d, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ], [ null, %bb.d ]
  ret ptr %.0.i
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pivot_big(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = udiv i64 %i.c, %3
  %i.e = lshr i64 %i.d, 3
  %i.f = mul i64 %i.e, %3                         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 4 uses
  %i.h = shl i64 %i.f, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 4 uses
  %i.j = tail call i32 %4(ptr noundef %5, ptr noundef %0, ptr noundef %i.g) #4
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call i32 %4(ptr noundef %5, ptr noundef %i.g, ptr noundef %i.i) #4
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 %4(ptr noundef %5, ptr noundef %0, ptr noundef %i.i) #4
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %0, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %i.p = tail call i32 %4(ptr noundef %5, ptr noundef %.sink, ptr noundef %i.i) #4
  %i.q = icmp slt i32 %i.p, 0
  %i.r = select i1 %i.q, ptr %i.i, ptr %.sink
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %i.s = phi ptr [ %i.g, %bb.b ], [ %0, %bb.c ], [ %i.r, %.sink.split ] ; 4 uses
  %i.t = sub i64 0, %i.f                          ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 4 uses
  %i.w = tail call i32 %4(ptr noundef %5, ptr noundef %i.u, ptr noundef %1) #4
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call i32 %4(ptr noundef %5, ptr noundef %1, ptr noundef %i.v) #4
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.sink.split124

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call i32 %4(ptr noundef %5, ptr noundef %i.u, ptr noundef %i.v) #4
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.sink.split124

.sink.split124:                                   ; preds = %bb.f, %bb.e
  %.sink128 = phi ptr [ %i.u, %bb.e ], [ %1, %bb.f ] ; 2 uses
  %i.ac = tail call i32 %4(ptr noundef %5, ptr noundef %.sink128, ptr noundef %i.v) #4
  %i.ad = icmp slt i32 %i.ac, 0
  %i.ae = select i1 %i.ad, ptr %i.v, ptr %.sink128
  br label %bb.g

bb.g:                                             ; preds = %.sink.split124, %bb.f, %bb.e
  %i.af = phi ptr [ %1, %bb.e ], [ %i.u, %bb.f ], [ %i.ae, %.sink.split124 ] ; 4 uses
  %i.ag = sub i64 0, %i.h
  %i.ah = getelementptr inbounds i8, ptr %2, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.t ; 4 uses
  %i.aj = tail call i32 %4(ptr noundef %5, ptr noundef %i.ah, ptr noundef %i.ai) #4
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 %4(ptr noundef %5, ptr noundef %i.ai, ptr noundef %2) #4
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.j, label %.sink.split129

bb.i:                                             ; preds = %bb.g
  %i.an = tail call i32 %4(ptr noundef %5, ptr noundef %i.ah, ptr noundef %2) #4
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %.sink.split129

.sink.split129:                                   ; preds = %bb.i, %bb.h
  %.sink133 = phi ptr [ %i.ah, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ap = tail call i32 %4(ptr noundef %5, ptr noundef %.sink133, ptr noundef %2) #4
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = select i1 %i.aq, ptr %2, ptr %.sink133
  br label %bb.j

bb.j:                                             ; preds = %.sink.split129, %bb.i, %bb.h
  %i.as = phi ptr [ %i.ai, %bb.h ], [ %i.ah, %bb.i ], [ %i.ar, %.sink.split129 ] ; 4 uses
  %i.at = tail call i32 %4(ptr noundef %5, ptr noundef %i.s, ptr noundef %i.af) #4
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = tail call i32 %4(ptr noundef %5, ptr noundef %i.af, ptr noundef %i.as) #4
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.sink.split134

bb.l:                                             ; preds = %bb.j
  %i.ax = tail call i32 %4(ptr noundef %5, ptr noundef %i.s, ptr noundef %i.as) #4
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %.sink.split134

.sink.split134:                                   ; preds = %bb.l, %bb.k
  %.sink138 = phi ptr [ %i.s, %bb.k ], [ %i.af, %bb.l ] ; 2 uses
end_hunk_0
