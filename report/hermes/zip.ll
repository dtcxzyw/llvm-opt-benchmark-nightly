inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 52
begin_hunk_0_@tinfl_decompress:bb.a
  br label %.loopexit1918

bb.fl:                                            ; preds = %.preheader1917, %bb.fl
  %.1897 = phi i32 [ %i.adz, %bb.fl ], [ %i.adl, %.preheader1917 ]
  %.1894 = phi i32 [ %i.ads, %bb.fl ], [ 10, %.preheader1917 ] ; 2 uses
  %i.adq = xor i32 %.1897, -1
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = add i32 %.1894, 1                      ; 2 uses
  %i.adt = zext nneg i32 %.1894 to i64
  %i.adu = lshr i64 %.781320, %i.adt
  %i.adv = and i64 %i.adu, 1
  %i.adw = getelementptr [2 x i8], ptr %i.adn, i64 %i.adv
  %i.adx = getelementptr [2 x i8], ptr %i.adw, i64 %i.adr
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !108 ; 2 uses
  %i.adz = sext i16 %i.ady to i32                 ; 2 uses
  %i.aea = icmp slt i16 %i.ady, 0
  br i1 %i.aea, label %bb.fl, label %.loopexit1918, !llvm.loop !129

.loopexit1918:                                    ; preds = %bb.fl, %bb.fk
  %.2898 = phi i32 [ %i.adp, %bb.fk ], [ %i.adz, %bb.fl ] ; 2 uses
  %.2895 = phi i32 [ %i.ado, %bb.fk ], [ %i.ads, %bb.fl ] ; 2 uses
  %i.aeb = zext nneg i32 %.2895 to i64
  %i.aec = lshr i64 %.781320, %i.aeb              ; 3 uses
  %i.aed = sub i32 %.78, %.2895                   ; 4 uses
  %i.aee = zext nneg i32 %.2898 to i64            ; 2 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_base, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !3 ; 3 uses
  %i.aeh = add nsw i32 %.2898, -30
  %.not1815 = icmp ult i32 %i.aeh, -26
  br i1 %.not1815, label %bb.fs, label %bb.fm

bb.fm:                                            ; preds = %.loopexit1918
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_extra, i64 %i.aee
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !3 ; 3 uses
  %i.aek = icmp ult i32 %i.aed, %i.aej
  br i1 %i.aek, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %bb.fm, %bb.fq
  %.721620 = phi ptr [ %.711619, %bb.fm ], [ %.741622, %bb.fq ] ; 2 uses
  %.711528 = phi i64 [ %.701527, %bb.fm ], [ %.731530, %bb.fq ] ; 2 uses
  %.771429 = phi ptr [ %.761428, %bb.fm ], [ %.791431, %bb.fq ] ; 3 uses
  %.791321 = phi i64 [ %i.aec, %bb.fm ], [ %i.aer, %bb.fq ] ; 2 uses
  %.761211 = phi i32 [ %i.aej, %bb.fm ], [ %.781213, %bb.fq ] ; 2 uses
  %.761101 = phi i32 [ %.751100, %bb.fm ], [ %.781103, %bb.fq ] ; 2 uses
  %.741003 = phi i32 [ %i.aeg, %bb.fm ], [ %.761005, %bb.fq ] ; 2 uses
  %.79 = phi i32 [ %i.aed, %bb.fm ], [ %i.aes, %bb.fq ] ; 2 uses
  %.not1816 = icmp ult ptr %.771429, %i.d
  br i1 %.not1816, label %.sink.split2209, label %bb.fo

bb.fo:                                            ; preds = %bb.fp, %bb.fn
  %.731621 = phi ptr [ %.721620, %bb.fn ], [ %4, %bb.fp ] ; 2 uses
  %.721529 = phi i64 [ %.711528, %bb.fn ], [ %i.ab, %bb.fp ] ; 2 uses
  %.781430 = phi ptr [ %.771429, %bb.fn ], [ %1, %bb.fp ] ; 2 uses
  %.801322 = phi i64 [ %.791321, %bb.fn ], [ %i.t, %bb.fp ] ; 2 uses
  %.771212 = phi i32 [ %.761211, %bb.fn ], [ %i.z, %bb.fp ] ; 2 uses
  %.771102 = phi i32 [ %.761101, %bb.fn ], [ %i.x, %bb.fp ] ; 2 uses
  %.751004 = phi i32 [ %.741003, %bb.fn ], [ %i.v, %bb.fp ] ; 2 uses
  %.80 = phi i32 [ %.79, %bb.fn ], [ %i.r, %bb.fp ] ; 2 uses
  %i.ael = and i32 %6, 2
  %.not1817 = icmp eq i32 %i.ael, 0
  br i1 %.not1817, label %bb.fq, label %.sink.split2212

bb.fp:                                            ; preds = %bb.c
  %.not1770 = icmp eq i64 %i.c, 0
  br i1 %.not1770, label %bb.fo, label %.sink.split2209

.sink.split2209:                                  ; preds = %bb.fn, %bb.fp
  %.sink2211 = phi ptr [ %1, %bb.fp ], [ %.771429, %bb.fn ] ; 2 uses
  %.741622.ph = phi ptr [ %4, %bb.fp ], [ %.721620, %bb.fn ]
  %.731530.ph = phi i64 [ %i.ab, %bb.fp ], [ %.711528, %bb.fn ]
  %.811323.ph = phi i64 [ %i.t, %bb.fp ], [ %.791321, %bb.fn ]
  %.781213.ph = phi i32 [ %i.z, %bb.fp ], [ %.761211, %bb.fn ]
  %.781103.ph = phi i32 [ %i.x, %bb.fp ], [ %.761101, %bb.fn ]
  %.761005.ph = phi i32 [ %i.v, %bb.fp ], [ %.741003, %bb.fn ]
  %.81.ph = phi i32 [ %i.r, %bb.fp ], [ %.79, %bb.fn ]
  %i.aem = getelementptr inbounds nuw i8, ptr %.sink2211, i64 1
  %i.aen = load i8, ptr %.sink2211, align 1, !tbaa !7
  %i.aeo = zext i8 %i.aen to i64
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split2209, %bb.fo
  %.741622 = phi ptr [ %.731621, %bb.fo ], [ %.741622.ph, %.sink.split2209 ] ; 2 uses
  %.731530 = phi i64 [ %.721529, %bb.fo ], [ %.731530.ph, %.sink.split2209 ]
  %.791431 = phi ptr [ %.781430, %bb.fo ], [ %i.aem, %.sink.split2209 ] ; 2 uses
  %.811323 = phi i64 [ %.801322, %bb.fo ], [ %.811323.ph, %.sink.split2209 ]
  %.781213 = phi i32 [ %.771212, %bb.fo ], [ %.781213.ph, %.sink.split2209 ] ; 3 uses
  %.781103 = phi i32 [ %.771102, %bb.fo ], [ %.781103.ph, %.sink.split2209 ] ; 2 uses
  %.761005 = phi i32 [ %.751004, %bb.fo ], [ %.761005.ph, %.sink.split2209 ] ; 2 uses
  %.81 = phi i32 [ %.80, %bb.fo ], [ %.81.ph, %.sink.split2209 ] ; 2 uses
  %.0888.shrunk = phi i64 [ 0, %bb.fo ], [ %i.aeo, %.sink.split2209 ]
  %i.aep = zext nneg i32 %.81 to i64
  %i.aeq = shl i64 %.0888.shrunk, %i.aep
  %i.aer = or i64 %i.aeq, %.811323                ; 2 uses
  %i.aes = add i32 %.81, 8                        ; 3 uses
  %i.aet = icmp ult i32 %i.aes, %.781213
  br i1 %i.aet, label %bb.fn, label %bb.fr, !llvm.loop !130

bb.fr:                                            ; preds = %bb.fq, %bb.fm
  %.751623 = phi ptr [ %.741622, %bb.fq ], [ %.711619, %bb.fm ]
  %.801432 = phi ptr [ %.791431, %bb.fq ], [ %.761428, %bb.fm ]
  %.821324 = phi i64 [ %i.aer, %bb.fq ], [ %i.aec, %bb.fm ] ; 2 uses
  %.791214 = phi i32 [ %.781213, %bb.fq ], [ %i.aej, %bb.fm ] ; 4 uses
  %.791104 = phi i32 [ %.781103, %bb.fq ], [ %.751100, %bb.fm ]
  %.771006 = phi i32 [ %.761005, %bb.fq ], [ %i.aeg, %bb.fm ]
  %.82 = phi i32 [ %i.aes, %bb.fq ], [ %i.aed, %bb.fm ]
  %notmask1818 = shl nsw i32 -1, %.791214
  %i.aeu = xor i32 %notmask1818, -1
  %i.aev = trunc i64 %.821324 to i32
  %i.aew = and i32 %i.aeu, %i.aev
  %i.aex = zext nneg i32 %.791214 to i64
  %i.aey = lshr i64 %.821324, %i.aex
  %i.aez = sub i32 %.82, %.791214
  %i.afa = add i32 %.771006, %i.aew
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %.loopexit1918
  %.761624 = phi ptr [ %.751623, %bb.fr ], [ %.711619, %.loopexit1918 ] ; 13 uses
  %.811433 = phi ptr [ %.801432, %bb.fr ], [ %.761428, %.loopexit1918 ] ; 6 uses
  %.831325 = phi i64 [ %i.aey, %bb.fr ], [ %i.aec, %.loopexit1918 ] ; 6 uses
  %.801215 = phi i32 [ %.791214, %bb.fr ], [ 0, %.loopexit1918 ] ; 6 uses
  %.801105 = phi i32 [ %.791104, %bb.fr ], [ %.751100, %.loopexit1918 ] ; 8 uses
  %.781007 = phi i32 [ %i.afa, %bb.fr ], [ %i.aeg, %.loopexit1918 ] ; 8 uses
  %.83 = phi i32 [ %i.aez, %bb.fr ], [ %i.aed, %.loopexit1918 ] ; 6 uses
  %i.afb = ptrtoint ptr %.761624 to i64
  %i.afc = sub i64 %i.afb, %i.i                   ; 8 uses
  %i.afd = zext i32 %.781007 to i64               ; 2 uses
  %i.afe = icmp uge i64 %i.afc, %i.afd
  %brmerge = or i1 %.not, %i.afe
  br i1 %brmerge, label %bb.ft, label %.sink.split2212

bb.ft:                                            ; preds = %bb.fs
  %i.aff = sub i64 %i.afc, %i.afd
  %i.afg = and i64 %i.aff, %i.m                   ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %3, i64 %i.afg ; 10 uses
  %i.afi = icmp ugt ptr %.761624, %i.afh
  %i.afj = select i1 %i.afi, ptr %.761624, ptr %i.afh
  %i.afk = zext i32 %.801105 to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  %i.afm = icmp ugt ptr %i.afl, %i.f
  br i1 %i.afm, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %bb.ft, %bb.fx
  %.781626 = phi ptr [ %.761624, %bb.ft ], [ %i.afu, %bb.fx ] ; 2 uses
  %.751532 = phi i64 [ %i.afc, %bb.ft ], [ %i.afo, %bb.fx ] ; 2 uses
  %.831435 = phi ptr [ %.811433, %bb.ft ], [ %.841436, %bb.fx ] ; 2 uses
  %.851327 = phi i64 [ %.831325, %bb.ft ], [ %.861328, %bb.fx ] ; 2 uses
  %.821217 = phi i32 [ %.801215, %bb.ft ], [ %.831218, %bb.fx ] ; 2 uses
  %.821107 = phi i32 [ %.801105, %bb.ft ], [ %.831108, %bb.fx ] ; 2 uses
  %.801009 = phi i32 [ %.781007, %bb.ft ], [ %.811010, %bb.fx ] ; 2 uses
  %.85 = phi i32 [ %.83, %bb.ft ], [ %.86, %bb.fx ] ; 2 uses
  %i.afn = add i32 %.821107, -1
  %.not1821 = icmp eq i32 %.821107, 0
  br i1 %.not1821, label %.preheader2310, label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fw
  %.791627 = phi ptr [ %.781626, %bb.fu ], [ %4, %bb.fw ] ; 4 uses
  %.761533 = phi i64 [ %.751532, %bb.fu ], [ %i.ab, %bb.fw ] ; 3 uses
  %.841436 = phi ptr [ %.831435, %bb.fu ], [ %1, %bb.fw ] ; 2 uses
  %.861328 = phi i64 [ %.851327, %bb.fu ], [ %i.t, %bb.fw ] ; 2 uses
  %.831218 = phi i32 [ %.821217, %bb.fu ], [ %i.z, %bb.fw ] ; 2 uses
  %.831108 = phi i32 [ %i.afn, %bb.fu ], [ %i.x, %bb.fw ] ; 2 uses
  %.811010 = phi i32 [ %.801009, %bb.fu ], [ %i.v, %bb.fw ] ; 3 uses
  %.86 = phi i32 [ %.85, %bb.fu ], [ %i.r, %bb.fw ] ; 2 uses
  %.not1822 = icmp ult ptr %.791627, %i.f
  br i1 %.not1822, label %bb.fx, label %.sink.split2212

bb.fw:                                            ; preds = %bb.c
  br label %bb.fv, !llvm.loop !131

bb.fx:                                            ; preds = %bb.fv
  %i.afo = add i64 %.761533, 1
  %i.afp = zext i32 %.811010 to i64
  %i.afq = sub i64 %.761533, %i.afp
  %i.afr = and i64 %i.afq, %i.m
  %i.afs = getelementptr inbounds nuw i8, ptr %3, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !7
  %i.afu = getelementptr inbounds nuw i8, ptr %.791627, i64 1
  store i8 %i.aft, ptr %.791627, align 1, !tbaa !7
  br label %bb.fu, !llvm.loop !132

bb.fy:                                            ; preds = %bb.ft
  %i.afv = icmp ult i32 %.801105, 9
  %.not1819 = icmp ugt i32 %.801105, %.781007
  %or.cond1870 = or i1 %i.afv, %.not1819
  br i1 %or.cond1870, label %.thread1897.preheader, label %bb.fz

.thread1897.preheader:                            ; preds = %.loopexit2282, %bb.fy
  %.841632.ph = phi ptr [ %.lcssa2236, %.loopexit2282 ], [ %.761624, %bb.fy ]
  %.851110.ph = phi i32 [ %i.ahb, %.loopexit2282 ], [ %.801105, %bb.fy ]
  %.2920.ph = phi ptr [ %.lcssa2235, %.loopexit2282 ], [ %i.afh, %bb.fy ]
  br label %.thread1897

bb.fz:                                            ; preds = %bb.fy
  %i.afw = and i32 %.801105, -8
  %i.afx = zext i32 %i.afw to i64                 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afx
  %i.afz = add i64 %i.afg, %i.i                   ; 2 uses
  %i.aga = add i64 %i.afz, %i.afx
  %i.agb = add i64 %i.afz, 8
  %umax2249 = tail call i64 @llvm.umax.i64(i64 %i.aga, i64 %i.agb)
  %7 = xor i64 %i.afg, -1
  %8 = add i64 %umax2249, %7
  %9 = sub i64 %8, %i.i                           ; 2 uses
  %i.agc = lshr i64 %9, 3
  %i.agd = add nuw nsw i64 %i.agc, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %9, 232
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.fz
  %i.age = add i64 %i.afg, %i.i                   ; 2 uses
  %i.agf = add i64 %i.age, %i.afx
  %i.agg = add i64 %i.age, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.agf, i64 %i.agg)
  %i.agh = xor i64 %i.afg, -1
  %i.agi = add i64 %umax, %i.agh
  %i.agj = sub i64 %i.agi, %i.i
  %i.agk = and i64 %i.agj, -8                     ; 2 uses
  %i.agl = getelementptr i8, ptr %.761624, i64 %i.agk
  %scevgep2247 = getelementptr i8, ptr %i.agl, i64 8
  %i.agm = getelementptr i8, ptr %3, i64 %i.afg
  %i.agn = getelementptr i8, ptr %i.agm, i64 %i.agk
  %scevgep2248 = getelementptr i8, ptr %i.agn, i64 8
  %bound0 = icmp ult ptr %.761624, %scevgep2248
  %bound1 = icmp ult ptr %i.afh, %scevgep2247
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.agd, 4611686018427387900    ; 3 uses
  %i.ago = shl i64 %n.vec, 3                      ; 2 uses
  %i.agp = getelementptr i8, ptr %.761624, i64 %i.ago ; 3 uses
  %i.agq = getelementptr i8, ptr %i.afh, i64 %i.ago ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agr = shl i64 %index, 3                      ; 3 uses
  %i.ags = or disjoint i64 %i.agr, 16             ; 2 uses
  %next.gep = getelementptr i8, ptr %.761624, i64 %i.agr
  %next.gep2250.a = getelementptr i8, ptr %.761624, i64 %i.ags
  %next.gep2251.a = getelementptr i8, ptr %i.afh, i64 %i.agr
  %next.gep2252 = getelementptr i8, ptr %i.afh, i64 %i.ags
  %wide.vec = load <4 x i32>, ptr %next.gep2251.a, align 4, !tbaa !3, !alias.scope !133
  %wide.vec2254 = load <4 x i32>, ptr %next.gep2252, align 4, !tbaa !3, !alias.scope !133
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !3, !alias.scope !136, !noalias !133
  store <4 x i32> %wide.vec2254, ptr %next.gep2250.a, align 4, !tbaa !3, !alias.scope !136, !noalias !133
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agt = icmp eq i64 %index.next, %n.vec
  br i1 %i.agt, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.agp, i64 -8
  %ind.escape2258 = getelementptr i8, ptr %i.agq, i64 -8
  %cmp.n = icmp eq i64 %i.agd, %n.vec
  br i1 %cmp.n, label %.loopexit2282, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.fz, %middle.block
  %.801628.ph = phi ptr [ %.761624, %vector.memcheck ], [ %.761624, %bb.fz ], [ %i.agp, %middle.block ]
  %.0918.ph = phi ptr [ %i.afh, %vector.memcheck ], [ %i.afh, %bb.fz ], [ %i.agq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.801628 = phi ptr [ %i.agy, %scalar.ph ], [ %.801628.ph, %scalar.ph.preheader ] ; 4 uses
  %.0918 = phi ptr [ %i.agz, %scalar.ph ], [ %.0918.ph, %scalar.ph.preheader ] ; 4 uses
  %i.agu = load i32, ptr %.0918, align 4, !tbaa !3
  store i32 %i.agu, ptr %.801628, align 4, !tbaa !3
  %i.agv = getelementptr inbounds nuw i8, ptr %.0918, i64 4
  %i.agw = load i32, ptr %i.agv, align 4, !tbaa !3
  %i.agx = getelementptr inbounds nuw i8, ptr %.801628, i64 4
  store i32 %i.agw, ptr %i.agx, align 4, !tbaa !3
  %i.agy = getelementptr inbounds nuw i8, ptr %.801628, i64 8 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.0918, i64 8 ; 3 uses
  %i.aha = icmp ult ptr %i.agz, %i.afy
  br i1 %i.aha, label %scalar.ph, label %.loopexit2282, !llvm.loop !140

.loopexit2282:                                    ; preds = %scalar.ph, %middle.block
  %.801628.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.801628, %scalar.ph ]
  %.0918.lcssa = phi ptr [ %ind.escape2258, %middle.block ], [ %.0918, %scalar.ph ]
  %.lcssa2236 = phi ptr [ %i.agp, %middle.block ], [ %i.agy, %scalar.ph ] ; 4 uses
  %.lcssa2235 = phi ptr [ %i.agq, %middle.block ], [ %i.agz, %scalar.ph ] ; 2 uses
  %i.ahb = and i32 %.801105, 7                    ; 7 uses
  %i.ahc = icmp samesign ult i32 %i.ahb, 3
  br i1 %i.ahc, label %bb.ga, label %.thread1897.preheader

bb.ga:                                            ; preds = %.loopexit2282
  %.not1820 = icmp eq i32 %i.ahb, 0
  br i1 %.not1820, label %.preheader2310, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ahd = load i8, ptr %.lcssa2235, align 1, !tbaa !7
  store i8 %i.ahd, ptr %.lcssa2236, align 1, !tbaa !7
  %i.ahe = icmp eq i32 %i.ahb, 2
  br i1 %i.ahe, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.ahf = getelementptr inbounds nuw i8, ptr %.0918.lcssa, i64 9
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !7
  %i.ahh = getelementptr inbounds nuw i8, ptr %.801628.lcssa, i64 9
  store i8 %i.ahg, ptr %i.ahh, align 1, !tbaa !7
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.ahi = zext nneg i32 %i.ahb to i64
  %i.ahj = getelementptr inbounds nuw i8, ptr %.lcssa2236, i64 %i.ahi
  br label %.preheader2310

.thread1897:                                      ; preds = %.thread1897.preheader, %.thread1897
  %.841632 = phi ptr [ %i.ahr, %.thread1897 ], [ %.841632.ph, %.thread1897.preheader ] ; 5 uses
  %.851110 = phi i32 [ %i.aht, %.thread1897 ], [ %.851110.ph, %.thread1897.preheader ]
  %.2920 = phi ptr [ %i.ahs, %.thread1897 ], [ %.2920.ph, %.thread1897.preheader ] ; 5 uses
  %i.ahk = load i8, ptr %.2920, align 1, !tbaa !7
  store i8 %i.ahk, ptr %.841632, align 1, !tbaa !7
  %i.ahl = getelementptr inbounds nuw i8, ptr %.2920, i64 1
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !7
  %i.ahn = getelementptr inbounds nuw i8, ptr %.841632, i64 1
  store i8 %i.ahm, ptr %i.ahn, align 1, !tbaa !7
  %i.aho = getelementptr inbounds nuw i8, ptr %.2920, i64 2
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !7
  %i.ahq = getelementptr inbounds nuw i8, ptr %.841632, i64 2
  store i8 %i.ahp, ptr %i.ahq, align 1, !tbaa !7
  %i.ahr = getelementptr inbounds nuw i8, ptr %.841632, i64 3 ; 4 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.2920, i64 3 ; 2 uses
  %i.aht = add i32 %.851110, -3                   ; 7 uses
  %i.ahu = icmp sgt i32 %i.aht, 2
  br i1 %i.ahu, label %.thread1897, label %bb.ge, !llvm.loop !141

bb.ge:                                            ; preds = %.thread1897
  %i.ahv = icmp sgt i32 %i.aht, 0
  br i1 %i.ahv, label %bb.gf, label %.preheader2310

bb.gf:                                            ; preds = %bb.ge
  %i.ahw = load i8, ptr %i.ahs, align 1, !tbaa !7
  store i8 %i.ahw, ptr %i.ahr, align 1, !tbaa !7
  %i.ahx = icmp eq i32 %i.aht, 2
  br i1 %i.ahx, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ahy = getelementptr inbounds nuw i8, ptr %.2920, i64 4
  %i.ahz = load i8, ptr %i.ahy, align 1, !tbaa !7
  %i.aia = getelementptr inbounds nuw i8, ptr %.841632, i64 4
  store i8 %i.ahz, ptr %i.aia, align 1, !tbaa !7
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aib = zext nneg i32 %i.aht to i64
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.aib
  br label %.preheader2310

bb.gi:                                            ; preds = %bb.bc, %.thread1891
  %.861634 = phi ptr [ %.231571, %bb.bc ], [ %.621610, %.thread1891 ] ; 3 uses
  %.771534 = phi i64 [ %.231480, %bb.bc ], [ %.611518, %.thread1891 ] ; 3 uses
  %.851437 = phi ptr [ %.281380, %bb.bc ], [ %.671419, %.thread1891 ] ; 3 uses
  %.871329 = phi i64 [ %.291271, %bb.bc ], [ %.691311, %.thread1891 ] ; 3 uses
  %.841219 = phi i32 [ %.291164, %bb.bc ], [ %.671202, %.thread1891 ] ; 3 uses
  %.861111 = phi i32 [ 0, %bb.bc ], [ 256, %.thread1891 ] ; 2 uses
  %.821011 = phi i32 [ %.28957, %bb.bc ], [ %.65994, %.thread1891 ] ; 3 uses
  %.87 = phi i32 [ %.29, %bb.bc ], [ %.69, %.thread1891 ] ; 3 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !91
  %i.aif = and i32 %i.aie, 1
  %.not1838 = icmp eq i32 %i.aif, 0
  br i1 %.not1838, label %bb.q, label %bb.gj, !llvm.loop !142

bb.gj:                                            ; preds = %bb.gi
  %i.aig = and i32 %6, 1
  %.not1839 = icmp eq i32 %i.aig, 0
  br i1 %.not1839, label %.sink.split2212, label %bb.go

bb.gk:                                            ; preds = %bb.gl
  %i.aih = and i32 %6, 2
  %.not1769 = icmp eq i32 %i.aih, 0
  br i1 %.not1769, label %bb.gn, label %.sink.split2212

bb.gl:                                            ; preds = %bb.c
  %.not1768 = icmp eq i64 %i.c, 0
  br i1 %.not1768, label %bb.gk, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aii = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aij = load i8, ptr %1, align 1, !tbaa !7
  %i.aik = zext i8 %i.aij to i64
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gk, %bb.gm
  %.881440 = phi ptr [ %i.aii, %bb.gm ], [ %1, %bb.gk ]
  %.0886 = phi i64 [ %i.aik, %bb.gm ], [ 0, %bb.gk ]
  %i.ail = zext nneg i32 %i.r to i64
  %i.aim = shl i64 %.0886, %i.ail
  %i.ain = or i64 %i.aim, %i.t
  %i.aio = add i32 %i.r, 8
  br label %bb.go

bb.go:                                            ; preds = %bb.gj, %bb.gn
  %.901638 = phi ptr [ %4, %bb.gn ], [ %.861634, %bb.gj ]
  %.811538 = phi i64 [ %i.ab, %bb.gn ], [ %.771534, %bb.gj ]
  %.891441 = phi ptr [ %.881440, %bb.gn ], [ %.851437, %bb.gj ]
  %.911333 = phi i64 [ %i.ain, %bb.gn ], [ %.871329, %bb.gj ]
  %.881223 = phi i32 [ %i.z, %bb.gn ], [ %.841219, %bb.gj ]
  %.861015 = phi i32 [ %i.v, %bb.gn ], [ %.821011, %bb.gj ]
  %.91 = phi i32 [ %i.aio, %bb.gn ], [ %.87, %bb.gj ] ; 2 uses
  %i.aip = and i32 %.91, 7
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = lshr i64 %.911333, %i.aiq
end_hunk_0
