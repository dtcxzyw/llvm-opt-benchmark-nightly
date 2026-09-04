Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 52
begin_hunk_0_@tinfl_decompress:bb.a
  %i.adq = xor i32 %.1894, -1
  %i.adr = zext nneg i32 %i.adq to i64
  %i.ads = add i32 %.1891, 1                      ; 2 uses
  %i.adt = zext nneg i32 %.1891 to i64
  %i.adu = lshr i64 %.781527, %i.adt
  %i.adv = and i64 %i.adu, 1
  %i.adw = getelementptr [2 x i8], ptr %i.adn, i64 %i.adv
  %i.adx = getelementptr [2 x i8], ptr %i.adw, i64 %i.adr
  %i.ady = load i16, ptr %i.adx, align 2, !tbaa !78 ; 2 uses
  %i.adz = sext i16 %i.ady to i32                 ; 2 uses
  %i.aea = icmp slt i16 %i.ady, 0
  br i1 %i.aea, label %bb.fk, label %.loopexit1917, !llvm.loop !229

.loopexit1917:                                    ; preds = %bb.fk, %bb.fj
  %.2895 = phi i32 [ %i.adp, %bb.fj ], [ %i.adz, %bb.fk ] ; 2 uses
  %.2892 = phi i32 [ %i.ado, %bb.fj ], [ %i.ads, %bb.fk ] ; 2 uses
  %i.aeb = zext nneg i32 %.2892 to i64
  %i.aec = lshr i64 %.781527, %i.aeb              ; 3 uses
  %i.aed = sub i32 %.78, %.2892                   ; 4 uses
  %i.aee = zext nneg i32 %.2895 to i64            ; 2 uses
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_base, i64 %i.aee
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !18 ; 3 uses
  %i.aeh = add nsw i32 %.2895, -30
  %.not1815 = icmp ult i32 %i.aeh, -26
  br i1 %.not1815, label %bb.fr, label %bb.fl

bb.fl:                                            ; preds = %.loopexit1917
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr @tinfl_decompress.s_dist_extra, i64 %i.aee
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !18 ; 3 uses
  %i.aek = icmp ult i32 %i.aed, %i.aej
  br i1 %i.aek, label %bb.fm, label %bb.fq

bb.fm:                                            ; preds = %bb.fl, %bb.fp
  %.761626 = phi i32 [ %i.aej, %bb.fl ], [ %.781628, %bb.fp ] ; 2 uses
  %.791528 = phi i64 [ %i.aec, %bb.fl ], [ %i.aer, %bb.fp ] ; 2 uses
  %.771427 = phi ptr [ %.761426, %bb.fl ], [ %.791429, %bb.fp ] ; 3 uses
  %.721322 = phi ptr [ %.711321, %bb.fl ], [ %.741324, %bb.fp ] ; 2 uses
  %.711230 = phi i64 [ %.701229, %bb.fl ], [ %.731232, %bb.fp ] ; 2 uses
  %.761130 = phi i32 [ %.751129, %bb.fl ], [ %.781132, %bb.fp ] ; 2 uses
  %.741023 = phi i32 [ %i.aeg, %bb.fl ], [ %.761025, %bb.fp ] ; 2 uses
  %.79 = phi i32 [ %i.aed, %bb.fl ], [ %i.aes, %bb.fp ] ; 2 uses
  %.not1816 = icmp ult ptr %.771427, %i.d
  br i1 %.not1816, label %.sink.split2208, label %bb.fn

bb.fn:                                            ; preds = %bb.fo, %bb.fm
  %.771627 = phi i32 [ %.761626, %bb.fm ], [ %i.z, %bb.fo ] ; 2 uses
  %.801529 = phi i64 [ %.791528, %bb.fm ], [ %i.t, %bb.fo ] ; 2 uses
  %.781428 = phi ptr [ %.771427, %bb.fm ], [ %1, %bb.fo ] ; 2 uses
  %.731323 = phi ptr [ %.721322, %bb.fm ], [ %4, %bb.fo ] ; 2 uses
  %.721231 = phi i64 [ %.711230, %bb.fm ], [ %i.ab, %bb.fo ] ; 2 uses
  %.771131 = phi i32 [ %.761130, %bb.fm ], [ %i.x, %bb.fo ] ; 2 uses
  %.751024 = phi i32 [ %.741023, %bb.fm ], [ %i.v, %bb.fo ] ; 2 uses
  %.80 = phi i32 [ %.79, %bb.fm ], [ %i.r, %bb.fo ] ; 2 uses
  %i.ael = and i32 %6, 2
  %.not1817 = icmp eq i32 %i.ael, 0
  br i1 %.not1817, label %bb.fp, label %.sink.split2211

bb.fo:                                            ; preds = %bb.c
  %.not1770 = icmp eq i64 %i.c, 0
  br i1 %.not1770, label %bb.fn, label %.sink.split2208

.sink.split2208:                                  ; preds = %bb.fm, %bb.fo
  %.sink2210 = phi ptr [ %1, %bb.fo ], [ %.771427, %bb.fm ] ; 2 uses
  %.781628.ph = phi i32 [ %i.z, %bb.fo ], [ %.761626, %bb.fm ]
  %.811530.ph = phi i64 [ %i.t, %bb.fo ], [ %.791528, %bb.fm ]
  %.741324.ph = phi ptr [ %4, %bb.fo ], [ %.721322, %bb.fm ]
  %.731232.ph = phi i64 [ %i.ab, %bb.fo ], [ %.711230, %bb.fm ]
  %.781132.ph = phi i32 [ %i.x, %bb.fo ], [ %.761130, %bb.fm ]
  %.761025.ph = phi i32 [ %i.v, %bb.fo ], [ %.741023, %bb.fm ]
  %.81.ph = phi i32 [ %i.r, %bb.fo ], [ %.79, %bb.fm ]
  %i.aem = getelementptr inbounds nuw i8, ptr %.sink2210, i64 1
  %i.aen = load i8, ptr %.sink2210, align 1, !tbaa !19
  %i.aeo = zext i8 %i.aen to i64
  br label %bb.fp

bb.fp:                                            ; preds = %.sink.split2208, %bb.fn
  %.781628 = phi i32 [ %.771627, %bb.fn ], [ %.781628.ph, %.sink.split2208 ] ; 3 uses
  %.811530 = phi i64 [ %.801529, %bb.fn ], [ %.811530.ph, %.sink.split2208 ]
  %.791429 = phi ptr [ %.781428, %bb.fn ], [ %i.aem, %.sink.split2208 ] ; 2 uses
  %.741324 = phi ptr [ %.731323, %bb.fn ], [ %.741324.ph, %.sink.split2208 ] ; 2 uses
  %.731232 = phi i64 [ %.721231, %bb.fn ], [ %.731232.ph, %.sink.split2208 ]
  %.781132 = phi i32 [ %.771131, %bb.fn ], [ %.781132.ph, %.sink.split2208 ] ; 2 uses
  %.761025 = phi i32 [ %.751024, %bb.fn ], [ %.761025.ph, %.sink.split2208 ] ; 2 uses
  %.81 = phi i32 [ %.80, %bb.fn ], [ %.81.ph, %.sink.split2208 ] ; 2 uses
  %.0887.shrunk = phi i64 [ 0, %bb.fn ], [ %i.aeo, %.sink.split2208 ]
  %i.aep = zext nneg i32 %.81 to i64
  %i.aeq = shl i64 %.0887.shrunk, %i.aep
  %i.aer = or i64 %i.aeq, %.811530                ; 2 uses
  %i.aes = add i32 %.81, 8                        ; 3 uses
  %i.aet = icmp ult i32 %i.aes, %.781628
  br i1 %i.aet, label %bb.fm, label %bb.fq, !llvm.loop !230

bb.fq:                                            ; preds = %bb.fp, %bb.fl
  %.791629 = phi i32 [ %.781628, %bb.fp ], [ %i.aej, %bb.fl ] ; 4 uses
  %.821531 = phi i64 [ %i.aer, %bb.fp ], [ %i.aec, %bb.fl ] ; 2 uses
  %.801430 = phi ptr [ %.791429, %bb.fp ], [ %.761426, %bb.fl ]
  %.751325 = phi ptr [ %.741324, %bb.fp ], [ %.711321, %bb.fl ]
  %.791133 = phi i32 [ %.781132, %bb.fp ], [ %.751129, %bb.fl ]
  %.771026 = phi i32 [ %.761025, %bb.fp ], [ %i.aeg, %bb.fl ]
  %.82 = phi i32 [ %i.aes, %bb.fp ], [ %i.aed, %bb.fl ]
  %notmask1818 = shl nsw i32 -1, %.791629
  %i.aeu = xor i32 %notmask1818, -1
  %i.aev = trunc i64 %.821531 to i32
  %i.aew = and i32 %i.aev, %i.aeu
  %i.aex = zext nneg i32 %.791629 to i64
  %i.aey = lshr i64 %.821531, %i.aex
  %i.aez = sub i32 %.82, %.791629
  %i.afa = add i32 %.771026, %i.aew
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.loopexit1917
  %.801630 = phi i32 [ %.791629, %bb.fq ], [ 0, %.loopexit1917 ] ; 6 uses
  %.831532 = phi i64 [ %i.aey, %bb.fq ], [ %i.aec, %.loopexit1917 ] ; 6 uses
  %.811431 = phi ptr [ %.801430, %bb.fq ], [ %.761426, %.loopexit1917 ] ; 6 uses
  %.761326 = phi ptr [ %.751325, %bb.fq ], [ %.711321, %.loopexit1917 ] ; 13 uses
  %.801134 = phi i32 [ %.791133, %bb.fq ], [ %.751129, %.loopexit1917 ] ; 8 uses
  %.781027 = phi i32 [ %i.afa, %bb.fq ], [ %i.aeg, %.loopexit1917 ] ; 8 uses
  %.83 = phi i32 [ %i.aez, %bb.fq ], [ %i.aed, %.loopexit1917 ] ; 6 uses
  %i.afb = ptrtoint ptr %.761326 to i64
  %i.afc = sub i64 %i.afb, %i.i                   ; 8 uses
  %i.afd = zext i32 %.781027 to i64               ; 2 uses
  %i.afe = icmp uge i64 %i.afc, %i.afd
  %brmerge = or i1 %.not, %i.afe
  br i1 %brmerge, label %bb.fs, label %.sink.split2211

bb.fs:                                            ; preds = %bb.fr
  %i.aff = sub i64 %i.afc, %i.afd
  %i.afg = and i64 %i.aff, %i.m                   ; 6 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %3, i64 %i.afg ; 10 uses
  %i.afi = icmp ugt ptr %.761326, %i.afh
  %i.afj = select i1 %i.afi, ptr %.761326, ptr %i.afh
  %i.afk = zext i32 %.801134 to i64
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  %i.afm = icmp ugt ptr %i.afl, %i.f
  br i1 %i.afm, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs, %bb.fw
  %.821632 = phi i32 [ %.801630, %bb.fs ], [ %.831633, %bb.fw ] ; 2 uses
  %.851534 = phi i64 [ %.831532, %bb.fs ], [ %.861535, %bb.fw ] ; 2 uses
  %.831433 = phi ptr [ %.811431, %bb.fs ], [ %.841434, %bb.fw ] ; 2 uses
  %.781328 = phi ptr [ %.761326, %bb.fs ], [ %i.afu, %bb.fw ] ; 2 uses
  %.751234 = phi i64 [ %i.afc, %bb.fs ], [ %i.afo, %bb.fw ] ; 2 uses
  %.821136 = phi i32 [ %.801134, %bb.fs ], [ %.831137, %bb.fw ] ; 2 uses
  %.801029 = phi i32 [ %.781027, %bb.fs ], [ %.811030, %bb.fw ] ; 2 uses
  %.85 = phi i32 [ %.83, %bb.fs ], [ %.86, %bb.fw ] ; 2 uses
  %i.afn = add i32 %.821136, -1
  %.not1821 = icmp eq i32 %.821136, 0
  br i1 %.not1821, label %.preheader2305, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fv
  %.831633 = phi i32 [ %.821632, %bb.ft ], [ %i.z, %bb.fv ] ; 2 uses
  %.861535 = phi i64 [ %.851534, %bb.ft ], [ %i.t, %bb.fv ] ; 2 uses
  %.841434 = phi ptr [ %.831433, %bb.ft ], [ %1, %bb.fv ] ; 2 uses
  %.791329 = phi ptr [ %.781328, %bb.ft ], [ %4, %bb.fv ] ; 4 uses
  %.761235 = phi i64 [ %.751234, %bb.ft ], [ %i.ab, %bb.fv ] ; 3 uses
  %.831137 = phi i32 [ %i.afn, %bb.ft ], [ %i.x, %bb.fv ] ; 2 uses
  %.811030 = phi i32 [ %.801029, %bb.ft ], [ %i.v, %bb.fv ] ; 3 uses
  %.86 = phi i32 [ %.85, %bb.ft ], [ %i.r, %bb.fv ] ; 2 uses
  %.not1822 = icmp ult ptr %.791329, %i.f
  br i1 %.not1822, label %bb.fw, label %.sink.split2211

bb.fv:                                            ; preds = %bb.c
  br label %bb.fu, !llvm.loop !231

bb.fw:                                            ; preds = %bb.fu
  %i.afo = add i64 %.761235, 1
  %i.afp = zext i32 %.811030 to i64
  %i.afq = sub i64 %.761235, %i.afp
  %i.afr = and i64 %i.afq, %i.m
  %i.afs = getelementptr inbounds nuw i8, ptr %3, i64 %i.afr
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !19
  %i.afu = getelementptr inbounds nuw i8, ptr %.791329, i64 1
  store i8 %i.aft, ptr %.791329, align 1, !tbaa !19
  br label %bb.ft, !llvm.loop !232

bb.fx:                                            ; preds = %bb.fs
  %i.afv = icmp ult i32 %.801134, 9
  %.not1819 = icmp ugt i32 %.801134, %.781027
  %or.cond1870 = or i1 %i.afv, %.not1819
  br i1 %or.cond1870, label %.thread1896.preheader, label %bb.fy

.thread1896.preheader:                            ; preds = %.loopexit2277, %bb.fx
  %.841334.ph = phi ptr [ %.lcssa2235, %.loopexit2277 ], [ %.761326, %bb.fx ]
  %.851139.ph = phi i32 [ %i.ahf, %.loopexit2277 ], [ %.801134, %bb.fx ]
  %.2916.ph = phi ptr [ %.lcssa2234, %.loopexit2277 ], [ %i.afh, %bb.fx ]
  br label %.thread1896

bb.fy:                                            ; preds = %bb.fx
  %i.afw = and i32 %.801134, -8
  %i.afx = zext i32 %i.afw to i64                 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afh, i64 %i.afx
  %i.afz = add i64 %i.afg, %i.i                   ; 2 uses
  %i.aga = add i64 %i.afz, %i.afx
  %i.agb = add i64 %i.afz, 8
  %i.agc = tail call i64 @llvm.umax.i64(i64 %i.aga, i64 %i.agb)
  %i.agd = xor i64 %i.afg, -1
  %i.age = add i64 %i.agc, %i.agd
  %i.agf = sub i64 %i.age, %i.i                   ; 2 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = add nuw nsw i64 %i.agg, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.agf, 232
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.fy
  %i.agi = add i64 %i.afg, %i.i                   ; 2 uses
  %i.agj = add i64 %i.agi, %i.afx
  %i.agk = add i64 %i.agi, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.agj, i64 %i.agk)
  %i.agl = xor i64 %i.afg, -1
  %i.agm = add i64 %umax, %i.agl
  %i.agn = sub i64 %i.agm, %i.i
  %i.ago = and i64 %i.agn, -8                     ; 2 uses
  %i.agp = getelementptr i8, ptr %.761326, i64 %i.ago
  %scevgep2246 = getelementptr i8, ptr %i.agp, i64 8
  %i.agq = getelementptr i8, ptr %3, i64 %i.afg
  %i.agr = getelementptr i8, ptr %i.agq, i64 %i.ago
  %scevgep2247 = getelementptr i8, ptr %i.agr, i64 8
  %bound0 = icmp ult ptr %.761326, %scevgep2247
  %bound1 = icmp ult ptr %i.afh, %scevgep2246
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.agh, 4611686018427387900    ; 3 uses
  %i.ags = shl i64 %n.vec, 3                      ; 2 uses
  %i.agt = getelementptr i8, ptr %.761326, i64 %i.ags ; 3 uses
  %i.agu = getelementptr i8, ptr %i.afh, i64 %i.ags ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agv = shl i64 %index, 3                      ; 3 uses
  %i.agw = or disjoint i64 %i.agv, 16             ; 2 uses
  %next.gep = getelementptr i8, ptr %.761326, i64 %i.agv
  %next.gep2248 = getelementptr i8, ptr %.761326, i64 %i.agw
  %next.gep2249 = getelementptr i8, ptr %i.afh, i64 %i.agv
  %next.gep2250 = getelementptr i8, ptr %i.afh, i64 %i.agw
  %wide.vec = load <4 x i32>, ptr %next.gep2249, align 4, !tbaa !18, !alias.scope !258
  %wide.vec2252 = load <4 x i32>, ptr %next.gep2250, align 4, !tbaa !18, !alias.scope !258
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !18, !alias.scope !259, !noalias !258
  store <4 x i32> %wide.vec2252, ptr %next.gep2248, align 4, !tbaa !18, !alias.scope !259, !noalias !258
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agx = icmp eq i64 %index.next, %n.vec
  br i1 %i.agx, label %middle.block, label %vector.body, !llvm.loop !236

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.agt, i64 -8
  %ind.escape2256 = getelementptr i8, ptr %i.agu, i64 -8
  %cmp.n = icmp eq i64 %i.agh, %n.vec
  br i1 %cmp.n, label %.loopexit2277, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.fy, %middle.block
  %.801330.ph = phi ptr [ %.761326, %vector.memcheck ], [ %.761326, %bb.fy ], [ %i.agt, %middle.block ]
  %.0914.ph = phi ptr [ %i.afh, %vector.memcheck ], [ %i.afh, %bb.fy ], [ %i.agu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.801330 = phi ptr [ %i.ahc, %scalar.ph ], [ %.801330.ph, %scalar.ph.preheader ] ; 4 uses
  %.0914 = phi ptr [ %i.ahd, %scalar.ph ], [ %.0914.ph, %scalar.ph.preheader ] ; 4 uses
  %i.agy = load i32, ptr %.0914, align 4, !tbaa !18
  store i32 %i.agy, ptr %.801330, align 4, !tbaa !18
  %i.agz = getelementptr inbounds nuw i8, ptr %.0914, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !18
  %i.ahb = getelementptr inbounds nuw i8, ptr %.801330, i64 4
  store i32 %i.aha, ptr %i.ahb, align 4, !tbaa !18
  %i.ahc = getelementptr inbounds nuw i8, ptr %.801330, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.0914, i64 8 ; 3 uses
  %i.ahe = icmp ult ptr %i.ahd, %i.afy
  br i1 %i.ahe, label %scalar.ph, label %.loopexit2277, !llvm.loop !237

.loopexit2277:                                    ; preds = %scalar.ph, %middle.block
  %.801330.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.801330, %scalar.ph ]
  %.0914.lcssa = phi ptr [ %ind.escape2256, %middle.block ], [ %.0914, %scalar.ph ]
  %.lcssa2235 = phi ptr [ %i.agt, %middle.block ], [ %i.ahc, %scalar.ph ] ; 4 uses
  %.lcssa2234 = phi ptr [ %i.agu, %middle.block ], [ %i.ahd, %scalar.ph ] ; 2 uses
  %i.ahf = and i32 %.801134, 7                    ; 7 uses
  %i.ahg = icmp samesign ult i32 %i.ahf, 3
  br i1 %i.ahg, label %bb.fz, label %.thread1896.preheader

bb.fz:                                            ; preds = %.loopexit2277
  %.not1820 = icmp eq i32 %i.ahf, 0
  br i1 %.not1820, label %.preheader2305, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahh = load i8, ptr %.lcssa2234, align 1, !tbaa !19
  store i8 %i.ahh, ptr %.lcssa2235, align 1, !tbaa !19
  %i.ahi = icmp eq i32 %i.ahf, 2
  br i1 %i.ahi, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.ahj = getelementptr inbounds nuw i8, ptr %.0914.lcssa, i64 9
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !19
  %i.ahl = getelementptr inbounds nuw i8, ptr %.801330.lcssa, i64 9
  store i8 %i.ahk, ptr %i.ahl, align 1, !tbaa !19
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.ahm = zext nneg i32 %i.ahf to i64
  %i.ahn = getelementptr inbounds nuw i8, ptr %.lcssa2235, i64 %i.ahm
  br label %.preheader2305

.thread1896:                                      ; preds = %.thread1896.preheader, %.thread1896
  %.841334 = phi ptr [ %i.ahv, %.thread1896 ], [ %.841334.ph, %.thread1896.preheader ] ; 5 uses
  %.851139 = phi i32 [ %i.ahx, %.thread1896 ], [ %.851139.ph, %.thread1896.preheader ]
  %.2916 = phi ptr [ %i.ahw, %.thread1896 ], [ %.2916.ph, %.thread1896.preheader ] ; 5 uses
  %i.aho = load i8, ptr %.2916, align 1, !tbaa !19
  store i8 %i.aho, ptr %.841334, align 1, !tbaa !19
  %i.ahp = getelementptr inbounds nuw i8, ptr %.2916, i64 1
  %i.ahq = load i8, ptr %i.ahp, align 1, !tbaa !19
  %i.ahr = getelementptr inbounds nuw i8, ptr %.841334, i64 1
  store i8 %i.ahq, ptr %i.ahr, align 1, !tbaa !19
  %i.ahs = getelementptr inbounds nuw i8, ptr %.2916, i64 2
  %i.aht = load i8, ptr %i.ahs, align 1, !tbaa !19
  %i.ahu = getelementptr inbounds nuw i8, ptr %.841334, i64 2
  store i8 %i.aht, ptr %i.ahu, align 1, !tbaa !19
  %i.ahv = getelementptr inbounds nuw i8, ptr %.841334, i64 3 ; 4 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.2916, i64 3 ; 2 uses
  %i.ahx = add i32 %.851139, -3                   ; 7 uses
  %i.ahy = icmp sgt i32 %i.ahx, 2
  br i1 %i.ahy, label %.thread1896, label %bb.gd, !llvm.loop !238

bb.gd:                                            ; preds = %.thread1896
  %i.ahz = icmp sgt i32 %i.ahx, 0
  br i1 %i.ahz, label %bb.ge, label %.preheader2305

bb.ge:                                            ; preds = %bb.gd
  %i.aia = load i8, ptr %i.ahw, align 1, !tbaa !19
  store i8 %i.aia, ptr %i.ahv, align 1, !tbaa !19
  %i.aib = icmp eq i32 %i.ahx, 2
  br i1 %i.aib, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aic = getelementptr inbounds nuw i8, ptr %.2916, i64 4
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !19
  %i.aie = getelementptr inbounds nuw i8, ptr %.841334, i64 4
  store i8 %i.aid, ptr %i.aie, align 1, !tbaa !19
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.aif = zext nneg i32 %i.ahx to i64
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahv, i64 %i.aif
  br label %.preheader2305

bb.gh:                                            ; preds = %bb.bb, %.thread1890
  %.841634 = phi i32 [ %.291579, %bb.bb ], [ %.671617, %.thread1890 ] ; 3 uses
  %.871536 = phi i64 [ %.291478, %bb.bb ], [ %.691518, %.thread1890 ] ; 3 uses
  %.851435 = phi ptr [ %.281378, %bb.bb ], [ %.671417, %.thread1890 ] ; 3 uses
  %.861336 = phi ptr [ %.231273, %bb.bb ], [ %.621312, %.thread1890 ] ; 3 uses
  %.771236 = phi i64 [ %.231182, %bb.bb ], [ %.611220, %.thread1890 ] ; 3 uses
  %.861140 = phi i32 [ 0, %bb.bb ], [ 256, %.thread1890 ] ; 2 uses
  %.821031 = phi i32 [ %.28977, %bb.bb ], [ %.651014, %.thread1890 ] ; 3 uses
  %.87 = phi i32 [ %.29, %bb.bb ], [ %.69, %.thread1890 ] ; 3 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !256
  %i.aij = and i32 %i.aii, 1
  %.not1838 = icmp eq i32 %i.aij, 0
  br i1 %.not1838, label %bb.p, label %bb.gi, !llvm.loop !239

bb.gi:                                            ; preds = %bb.gh
  %i.aik = and i32 %6, 1
  %.not1839 = icmp eq i32 %i.aik, 0
  br i1 %.not1839, label %.sink.split2211, label %bb.gn

bb.gj:                                            ; preds = %bb.gk
  %i.ail = and i32 %6, 2
  %.not1769 = icmp eq i32 %i.ail, 0
  br i1 %.not1769, label %bb.gm, label %.sink.split2211

bb.gk:                                            ; preds = %bb.c
  %.not1768 = icmp eq i64 %i.c, 0
  br i1 %.not1768, label %bb.gj, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aim = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ain = load i8, ptr %1, align 1, !tbaa !19
  %i.aio = zext i8 %i.ain to i64
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gj, %bb.gl
  %.881438 = phi ptr [ %i.aim, %bb.gl ], [ %1, %bb.gj ]
  %.0886 = phi i64 [ %i.aio, %bb.gl ], [ 0, %bb.gj ]
  %i.aip = zext nneg i32 %i.r to i64
  %i.aiq = shl i64 %.0886, %i.aip
  %i.air = or i64 %i.aiq, %i.t
  %i.ais = add i32 %i.r, 8
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gi, %bb.gm
  %.881638 = phi i32 [ %i.z, %bb.gm ], [ %.841634, %bb.gi ]
  %.911540 = phi i64 [ %i.air, %bb.gm ], [ %.871536, %bb.gi ]
  %.891439 = phi ptr [ %.881438, %bb.gm ], [ %.851435, %bb.gi ]
  %.901340 = phi ptr [ %4, %bb.gm ], [ %.861336, %bb.gi ]
  %.811240 = phi i64 [ %i.ab, %bb.gm ], [ %.771236, %bb.gi ]
  %.861035 = phi i32 [ %i.v, %bb.gm ], [ %.821031, %bb.gi ]
  %.91 = phi i32 [ %i.ais, %bb.gm ], [ %.87, %bb.gi ] ; 2 uses
  %i.ait = and i32 %.91, 7
  %i.aiu = zext nneg i32 %i.ait to i64
  %i.aiv = lshr i64 %.911540, %i.aiu
  %i.aiw = and i32 %.91, -8
  br label %bb.go

end_hunk_0
begin_hunk_1_@tdefl_compress_block:bb.a
  %.pre410.i = load i32, ptr %i.aas, align 8, !tbaa !84
  %.pre411.i = load i32, ptr %i.aap, align 4, !tbaa !83
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aey = phi i32 [ %.pre411.i, %bb.ec ], [ %i.aer, %bb.eb ]
  %i.aez = phi i32 [ %.pre410.i, %bb.ec ], [ %i.aes, %bb.eb ]
  %i.afa = lshr i32 %i.aez, 8                     ; 3 uses
  store i32 %i.afa, ptr %i.aas, align 8, !tbaa !84
  %i.afb = add i32 %i.aey, -8                     ; 4 uses
  store i32 %i.afb, ptr %i.aap, align 4, !tbaa !83
  %i.afc = icmp ugt i32 %i.afb, 7
  br i1 %i.afc, label %bb.eb, label %.preheader318.i, !llvm.loop !350

.preheader.i:                                     ; preds = %._crit_edge361.i
  %.not383.i = icmp eq i32 %.19.i, 0
  br i1 %.not383.i, label %tdefl_start_dynamic_block.exit, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %.preheader.i
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 36106
  br label %bb.eh

bb.ee:                                            ; preds = %._crit_edge361.i, %.preheader318.i
  %i.afe = phi i32 [ %i.aem, %.preheader318.i ], [ %i.agk, %._crit_edge361.i ]
  %i.aff = phi i32 [ %i.aen, %.preheader318.i ], [ %i.agl, %._crit_edge361.i ] ; 3 uses
  %indvars.iv400.i = phi i64 [ 0, %.preheader318.i ], [ %indvars.iv.next401.i, %._crit_edge361.i ] ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr @s_tdefl_packed_code_size_syms_swizzle, i64 %indvars.iv400.i
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !19
  %i.afi = zext i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !19
  %i.afl = zext i8 %i.afk to i32
  %i.afm = shl nuw nsw i32 %i.afl, %i.aff
  %i.afn = or i32 %i.afm, %i.afe                  ; 4 uses
  store i32 %i.afn, ptr %i.aas, align 8, !tbaa !84
  %i.afo = add nuw nsw i32 %i.aff, 3              ; 4 uses
  store i32 %i.afo, ptr %i.aap, align 4, !tbaa !83
  %i.afp = icmp samesign ugt i32 %i.aff, 4
  br i1 %i.afp, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.ee
  %i.afq = load ptr, ptr %i.aeo, align 8, !tbaa !42
  %i.afr = load ptr, ptr %i.aep, align 8, !tbaa !43
  %i.afs = icmp ult ptr %i.afq, %i.afr
  br i1 %i.afs, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.aft = phi i32 [ %i.afw, %.lr.ph360.split.us.i ], [ %i.afo, %.lr.ph360.i ]
  %i.afu = phi i32 [ %i.afv, %.lr.ph360.split.us.i ], [ %i.afn, %.lr.ph360.i ]
  %i.afv = lshr i32 %i.afu, 8                     ; 3 uses
  %i.afw = add i32 %i.aft, -8                     ; 4 uses
  %i.afx = icmp ugt i32 %i.afw, 7
  br i1 %i.afx, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i, !llvm.loop !351

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.afv, ptr %i.aas, align 8, !tbaa !84
  store i32 %i.afw, ptr %i.aap, align 4, !tbaa !83
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.eg
  %i.afy = phi i32 [ %i.agi, %bb.eg ], [ %i.afo, %.lr.ph360.i ]
  %i.afz = phi i32 [ %i.agh, %bb.eg ], [ %i.afn, %.lr.ph360.i ] ; 2 uses
  %i.aga = load ptr, ptr %i.aeo, align 8, !tbaa !42 ; 3 uses
  %i.agb = load ptr, ptr %i.aep, align 8, !tbaa !43
  %i.agc = icmp ult ptr %i.aga, %i.agb
  br i1 %i.agc, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph360.split.i
  %i.agd = trunc i32 %i.afz to i8
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 1
  store ptr %i.age, ptr %i.aeo, align 8, !tbaa !42
  store i8 %i.agd, ptr %i.aga, align 1, !tbaa !19
  %.pre412.i = load i32, ptr %i.aas, align 8, !tbaa !84
  %.pre413.i = load i32, ptr %i.aap, align 4, !tbaa !83
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph360.split.i
  %i.agf = phi i32 [ %.pre413.i, %bb.ef ], [ %i.afy, %.lr.ph360.split.i ]
  %i.agg = phi i32 [ %.pre412.i, %bb.ef ], [ %i.afz, %.lr.ph360.split.i ]
  %i.agh = lshr i32 %i.agg, 8                     ; 3 uses
  store i32 %i.agh, ptr %i.aas, align 8, !tbaa !84
  %i.agi = add i32 %i.agf, -8                     ; 4 uses
  store i32 %i.agi, ptr %i.aap, align 4, !tbaa !83
  %i.agj = icmp ugt i32 %i.agi, 7
  br i1 %i.agj, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !352

._crit_edge361.i:                                 ; preds = %bb.eg, %._crit_edge361.split.us.i, %bb.ee
  %i.agk = phi i32 [ %i.afn, %bb.ee ], [ %i.afv, %._crit_edge361.split.us.i ], [ %i.agh, %bb.eg ] ; 3 uses
  %i.agl = phi i32 [ %i.afo, %bb.ee ], [ %i.afw, %._crit_edge361.split.us.i ], [ %i.agi, %bb.eg ] ; 3 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.preheader.i, label %bb.ee, !llvm.loop !353

bb.eh:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.agm = phi i32 [ %i.agk, %.lr.ph380.i ], [ %i.aju, %.loopexit.i ]
  %i.agn = phi i32 [ %i.agl, %.lr.ph380.i ], [ %i.ajv, %.loopexit.i ] ; 3 uses
  %.0261379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1.i, %.loopexit.i ] ; 3 uses
  %i.ago = add nuw i32 %.0261379.i, 1             ; 2 uses
  %i.agp = zext i32 %.0261379.i to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !19 ; 2 uses
  %i.ags = zext i8 %i.agr to i64                  ; 3 uses
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.afd, i64 %i.ags
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !78
  %i.agv = zext i16 %i.agu to i32
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.ags
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !19
  %i.agy = zext i8 %i.agx to i32                  ; 2 uses
  %i.agz = shl nuw nsw i32 %i.agv, %i.agn
  %i.aha = or i32 %i.agz, %i.agm                  ; 4 uses
  store i32 %i.aha, ptr %i.aas, align 8, !tbaa !84
  %i.ahb = add nuw nsw i32 %i.agn, %i.agy         ; 6 uses
  store i32 %i.ahb, ptr %i.aap, align 4, !tbaa !83
  %i.ahc = icmp samesign ugt i32 %i.ahb, 7
  br i1 %i.ahc, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.eh
  %i.ahd = load ptr, ptr %i.aeo, align 8, !tbaa !42
  %i.ahe = load ptr, ptr %i.aep, align 8, !tbaa !43
  %i.ahf = icmp ult ptr %i.ahd, %i.ahe
  br i1 %i.ahf, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.ahg = add i32 %i.agn, -8
  %i.ahh = add i32 %i.ahg, %i.agy                 ; 2 uses
  %i.ahi = lshr i32 %i.ahh, 3
  %i.ahj = add nuw nsw i32 %i.ahi, 1
  %xtraiter293 = and i32 %i.ahj, 7                ; 2 uses
  %lcmp.mod294.not = icmp eq i32 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ahk = phi i32 [ %i.ahn, %.lr.ph366.split.us.i.prol ], [ %i.ahb, %.lr.ph366.split.us.i.preheader ]
  %i.ahl = phi i32 [ %i.ahm, %.lr.ph366.split.us.i.prol ], [ %i.aha, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.ahm = lshr i32 %i.ahl, 8                     ; 2 uses
  %i.ahn = add i32 %i.ahk, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter293
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !354

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.ahb, %.lr.ph366.split.us.i.preheader ], [ %i.ahn, %.lr.ph366.split.us.i.prol ]
  %.lcssa246.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahm, %.lr.ph366.split.us.i.prol ]
  %.lcssa245.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahn, %.lr.ph366.split.us.i.prol ]
  %i.aho = icmp ult i32 %i.ahh, 56
  br i1 %i.aho, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.ahp = phi i32 [ %i.ahq, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.ahq = add i32 %i.ahp, -64                    ; 3 uses
  %i.ahr = icmp ugt i32 %i.ahq, 7
  br i1 %i.ahr, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i, !llvm.loop !355

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa246 = phi i32 [ %.lcssa246.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa245 = phi i32 [ %.lcssa245.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.ahq, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa246, ptr %i.aas, align 8, !tbaa !84
  store i32 %.lcssa245, ptr %i.aap, align 4, !tbaa !83
  br label %._crit_edge367.i

.lr.ph366.split.i:                                ; preds = %.lr.ph366.i, %bb.ej
  %i.ahs = phi i32 [ %i.aic, %bb.ej ], [ %i.ahb, %.lr.ph366.i ]
  %i.aht = phi i32 [ %i.aib, %bb.ej ], [ %i.aha, %.lr.ph366.i ] ; 2 uses
  %i.ahu = load ptr, ptr %i.aeo, align 8, !tbaa !42 ; 3 uses
  %i.ahv = load ptr, ptr %i.aep, align 8, !tbaa !43
  %i.ahw = icmp ult ptr %i.ahu, %i.ahv
  br i1 %i.ahw, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph366.split.i
  %i.ahx = trunc i32 %i.aht to i8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahu, i64 1
  store ptr %i.ahy, ptr %i.aeo, align 8, !tbaa !42
  store i8 %i.ahx, ptr %i.ahu, align 1, !tbaa !19
  %.pre414.i = load i32, ptr %i.aas, align 8, !tbaa !84
  %.pre415.i = load i32, ptr %i.aap, align 4, !tbaa !83
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph366.split.i
  %i.ahz = phi i32 [ %.pre415.i, %bb.ei ], [ %i.ahs, %.lr.ph366.split.i ]
  %i.aia = phi i32 [ %.pre414.i, %bb.ei ], [ %i.aht, %.lr.ph366.split.i ]
  %i.aib = lshr i32 %i.aia, 8                     ; 3 uses
  store i32 %i.aib, ptr %i.aas, align 8, !tbaa !84
  %i.aic = add i32 %i.ahz, -8                     ; 4 uses
  store i32 %i.aic, ptr %i.aap, align 4, !tbaa !83
  %i.aid = icmp ugt i32 %i.aic, 7
  br i1 %i.aid, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !356

._crit_edge367.i:                                 ; preds = %bb.ej, %._crit_edge367.split.us.i, %bb.eh
  %i.aie = phi i32 [ %i.aha, %bb.eh ], [ %.lcssa246, %._crit_edge367.split.us.i ], [ %i.aib, %bb.ej ] ; 2 uses
  %i.aif = phi i32 [ %i.ahb, %bb.eh ], [ %.lcssa245, %._crit_edge367.split.us.i ], [ %i.aic, %bb.ej ] ; 4 uses
  %i.aig = icmp ugt i8 %i.agr, 15
  br i1 %i.aig, label %bb.ek, label %.loopexit.i

bb.ek:                                            ; preds = %._crit_edge367.i
  %i.aih = add i32 %.0261379.i, 2                 ; 3 uses
  %i.aii = zext i32 %i.ago to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !19
  %i.ail = zext i8 %i.aik to i32
  %2 = getelementptr i8, ptr @.str.12, i64 %i.ags
  %i.aim = getelementptr i8, ptr %2, i64 -16
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !19
  %i.aio = sext i8 %i.ain to i32                  ; 2 uses
  %i.aip = shl nuw nsw i32 %i.ail, %i.aif
  %i.aiq = or i32 %i.aip, %i.aie                  ; 4 uses
  store i32 %i.aiq, ptr %i.aas, align 8, !tbaa !84
  %i.air = add nsw i32 %i.aif, %i.aio             ; 6 uses
  store i32 %i.air, ptr %i.aap, align 4, !tbaa !83
  %i.ais = icmp ugt i32 %i.air, 7
  br i1 %i.ais, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ek
  %i.ait = load ptr, ptr %i.aeo, align 8, !tbaa !42
  %i.aiu = load ptr, ptr %i.aep, align 8, !tbaa !43
  %i.aiv = icmp ult ptr %i.ait, %i.aiu
  br i1 %i.aiv, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aiw = add i32 %i.aif, -8
  %i.aix = add i32 %i.aiw, %i.aio                 ; 2 uses
  %i.aiy = lshr i32 %i.aix, 3
  %i.aiz = add nuw nsw i32 %i.aiy, 1
  %xtraiter296 = and i32 %i.aiz, 7                ; 2 uses
  %lcmp.mod297.not = icmp eq i32 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.aja = phi i32 [ %i.ajd, %.lr.ph374.split.us.i.prol ], [ %i.air, %.lr.ph374.split.us.i.preheader ]
  %i.ajb = phi i32 [ %i.ajc, %.lr.ph374.split.us.i.prol ], [ %i.aiq, %.lr.ph374.split.us.i.preheader ]
  %prol.iter298 = phi i32 [ %prol.iter298.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.ajc = lshr i32 %i.ajb, 8                     ; 2 uses
  %i.ajd = add i32 %i.aja, -8                     ; 3 uses
  %prol.iter298.next = add i32 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i32 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !357

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr299 = phi i32 [ %i.air, %.lr.ph374.split.us.i.preheader ], [ %i.ajd, %.lr.ph374.split.us.i.prol ]
  %.lcssa250.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.ajc, %.lr.ph374.split.us.i.prol ]
  %.lcssa249.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.ajd, %.lr.ph374.split.us.i.prol ]
  %i.aje = icmp ult i32 %i.aix, 56
  br i1 %i.aje, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.ajf = phi i32 [ %i.ajg, %.lr.ph374.split.us.i ], [ %.unr299, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ajg = add i32 %i.ajf, -64                    ; 3 uses
  %i.ajh = icmp ugt i32 %i.ajg, 7
  br i1 %i.ajh, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !358

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa250 = phi i32 [ %.lcssa250.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa249 = phi i32 [ %.lcssa249.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ajg, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa250, ptr %i.aas, align 8, !tbaa !84
  store i32 %.lcssa249, ptr %i.aap, align 4, !tbaa !83
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.em
  %i.aji = phi i32 [ %i.ajs, %bb.em ], [ %i.air, %.lr.ph374.i ]
  %i.ajj = phi i32 [ %i.ajr, %bb.em ], [ %i.aiq, %.lr.ph374.i ] ; 2 uses
  %i.ajk = load ptr, ptr %i.aeo, align 8, !tbaa !42 ; 3 uses
  %i.ajl = load ptr, ptr %i.aep, align 8, !tbaa !43
  %i.ajm = icmp ult ptr %i.ajk, %i.ajl
  br i1 %i.ajm, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph374.split.i
  %i.ajn = trunc i32 %i.ajj to i8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajk, i64 1
  store ptr %i.ajo, ptr %i.aeo, align 8, !tbaa !42
  store i8 %i.ajn, ptr %i.ajk, align 1, !tbaa !19
  %.pre416.i = load i32, ptr %i.aas, align 8, !tbaa !84
  %.pre417.i = load i32, ptr %i.aap, align 4, !tbaa !83
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph374.split.i
  %i.ajp = phi i32 [ %.pre417.i, %bb.el ], [ %i.aji, %.lr.ph374.split.i ]
  %i.ajq = phi i32 [ %.pre416.i, %bb.el ], [ %i.ajj, %.lr.ph374.split.i ]
  %i.ajr = lshr i32 %i.ajq, 8                     ; 3 uses
  store i32 %i.ajr, ptr %i.aas, align 8, !tbaa !84
  %i.ajs = add i32 %i.ajp, -8                     ; 4 uses
  store i32 %i.ajs, ptr %i.aap, align 4, !tbaa !83
  %i.ajt = icmp ugt i32 %i.ajs, 7
  br i1 %i.ajt, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !359

.loopexit.i:                                      ; preds = %bb.em, %..loopexit_crit_edge.split.us.i, %bb.ek, %._crit_edge367.i
  %i.aju = phi i32 [ %i.aie, %._crit_edge367.i ], [ %.lcssa250, %..loopexit_crit_edge.split.us.i ], [ %i.aiq, %bb.ek ], [ %i.ajr, %bb.em ] ; 2 uses
  %i.ajv = phi i32 [ %i.aif, %._crit_edge367.i ], [ %.lcssa249, %..loopexit_crit_edge.split.us.i ], [ %i.air, %bb.ek ], [ %i.ajs, %bb.em ] ; 2 uses
  %.1.i = phi i32 [ %i.ago, %._crit_edge367.i ], [ %i.aih, %..loopexit_crit_edge.split.us.i ], [ %i.aih, %bb.ek ], [ %i.aih, %bb.em ] ; 2 uses
  %i.ajw = icmp ult i32 %.1.i, %.19.i
  br i1 %i.ajw, label %bb.eh, label %tdefl_start_dynamic_block.exit, !llvm.loop !360

tdefl_start_dynamic_block.exit:                   ; preds = %.loopexit.i, %.preheader.i
  %i.ajx = phi i32 [ %i.agl, %.preheader.i ], [ %i.ajv, %.loopexit.i ]
  %i.ajy = phi i32 [ %i.agk, %.preheader.i ], [ %i.aju, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %tdefl_start_static_block.exit

tdefl_start_static_block.exit:                    ; preds = %bb.p, %tdefl_optimize_huffman_table.exit47.i, %tdefl_start_dynamic_block.exit
  %i.ajz = phi i32 [ %i.ajx, %tdefl_start_dynamic_block.exit ], [ %i.pq, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.aka = phi i32 [ %i.ajy, %tdefl_start_dynamic_block.exit ], [ %i.pp, %tdefl_optimize_huffman_table.exit47.i ], [ %i.qd, %bb.p ]
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !42 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !39 ; 4 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.akg = zext i32 %i.aka to i64                 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.akj = icmp ult ptr %i.aki, %i.ake
  br i1 %i.akj, label %.lr.ph.i8, label %._crit_edge.i4

.lr.ph.i8:                                        ; preds = %tdefl_start_static_block.exit
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 4 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 4 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 36970
  %i.ako = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !43
  br label %bb.en

bb.en:                                            ; preds = %bb.ev, %.lr.ph.i8
  %.0133166.i = phi i32 [ 1, %.lr.ph.i8 ], [ %i.apm, %bb.ev ] ; 2 uses
  %.0134165.i = phi ptr [ %i.aki, %.lr.ph.i8 ], [ %.3137.i, %bb.ev ] ; 3 uses
  %.0138164.i = phi ptr [ %i.akc, %.lr.ph.i8 ], [ %i.aph, %bb.ev ] ; 3 uses
  %.0139163.i = phi i64 [ %i.akg, %.lr.ph.i8 ], [ %i.apk, %bb.ev ] ; 2 uses
  %.0143162.i = phi i32 [ %i.ajz, %.lr.ph.i8 ], [ %i.apl, %bb.ev ] ; 4 uses
  %i.akq = icmp eq i32 %.0133166.i, 1
  br i1 %i.akq, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.akr = getelementptr inbounds nuw i8, ptr %.0134165.i, i64 1
  %i.aks = load i8, ptr %.0134165.i, align 1, !tbaa !19
  %i.akt = zext i8 %i.aks to i32
  %i.aku = or disjoint i32 %i.akt, 256
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.1135.i = phi ptr [ %i.akr, %bb.eo ], [ %.0134165.i, %bb.en ] ; 7 uses
  %.1.i9 = phi i32 [ %i.aku, %bb.eo ], [ %.0133166.i, %bb.en ] ; 7 uses
  %i.akv = and i32 %.1.i9, 1
  %.not155.i = icmp eq i32 %i.akv, 0
  br i1 %.not155.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.akw = load i8, ptr %.1135.i, align 1, !tbaa !19 ; 2 uses
  %i.akx = zext i8 %i.akw to i32
  %i.aky = getelementptr inbounds nuw i8, ptr %.1135.i, i64 1
  %i.akz = load i16, ptr %i.aky, align 2, !tbaa !78 ; 2 uses
  %i.ala = zext i16 %i.akz to i32                 ; 3 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.1135.i, i64 3
  %i.alc = zext i8 %i.akw to i64                  ; 2 uses
  %i.ald = getelementptr inbounds nuw [2 x i8], ptr @s_tdefl_len_sym, i64 %i.alc
  %i.ale = load i16, ptr %i.ald, align 2, !tbaa !78
  %i.alf = zext i16 %i.ale to i64                 ; 2 uses
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.akk, i64 %i.alf
  %i.alh = load i16, ptr %i.alg, align 2, !tbaa !78
  %i.ali = zext i16 %i.alh to i64
  %i.alj = zext nneg i32 %.0143162.i to i64
  %i.alk = shl i64 %i.ali, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.akl, i64 %i.alf
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !19
  %i.aln = zext i8 %i.alm to i32
  %i.alo = add i32 %.0143162.i, %i.aln            ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr @s_tdefl_len_extra, i64 %i.alc
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !19 ; 2 uses
  %i.alr = zext i8 %i.alq to i64
  %i.als = getelementptr inbounds nuw [4 x i8], ptr @mz_bitmasks, i64 %i.alr
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !18
  %i.alu = and i32 %i.alt, %i.akx
  %i.alv = zext nneg i32 %i.alu to i64
  %i.alw = zext nneg i32 %i.alo to i64
  %i.alx = shl i64 %i.alv, %i.alw
  %i.aly = zext i8 %i.alq to i32
  %i.alz = add i32 %i.alo, %i.aly                 ; 2 uses
  %i.ama = and i32 %i.ala, 511
  %i.amb = zext nneg i32 %i.ama to i64            ; 2 uses
  %i.amc = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_sym, i64 %i.amb
  %i.amd = load i8, ptr %i.amc, align 1, !tbaa !19
  %i.ame = getelementptr inbounds nuw i8, ptr @s_tdefl_small_dist_extra, i64 %i.amb
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !19
  %i.amg = lshr i32 %i.ala, 8
  %i.amh = zext nneg i32 %i.amg to i64            ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_sym, i64 %i.amh
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !19
  %i.amk = getelementptr inbounds nuw i8, ptr @s_tdefl_large_dist_extra, i64 %i.amh
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !19
  %i.amm = icmp ult i16 %i.akz, 512               ; 2 uses
  %.v.i = select i1 %i.amm, i8 %i.amd, i8 %i.amj
  %.v156.i = select i1 %i.amm, i8 %i.amf, i8 %i.aml ; 2 uses
  %i.amn = zext i8 %.v156.i to i32
  %i.amo = zext i8 %.v.i to i64                   ; 2 uses
  %i.amp = getelementptr inbounds nuw [2 x i8], ptr %i.akm, i64 %i.amo
  %i.amq = load i16, ptr %i.amp, align 2, !tbaa !78
  %i.amr = zext i16 %i.amq to i64
  %i.ams = zext nneg i32 %i.alz to i64
  %i.amt = shl i64 %i.amr, %i.ams
  %i.amu = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.amo
  %i.amv = load i8, ptr %i.amu, align 1, !tbaa !19
  %i.amw = zext i8 %i.amv to i32
  %i.amx = add i32 %i.alz, %i.amw                 ; 2 uses
  %i.amy = zext i8 %.v156.i to i64
end_hunk_1
