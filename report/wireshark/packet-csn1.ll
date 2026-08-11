inline.NumInlined: 40
inline.NumDeleted: 1
begin_hunk_0_@csnStreamDissector:bb.a
.thread1826:                                      ; preds = %bb.fq, %bb.fo
  %.311427.lcssa = phi i32 [ %i.vo, %bb.fo ], [ %i.adl, %bb.fq ]
  %.271383.lcssa = phi i32 [ %i.vn, %bb.fo ], [ %i.adk, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %.thread1842

bb.fr:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #7
  br label %.thread

bb.fs:                                            ; preds = %._crit_edge2209
  %i.adm = getelementptr i8, ptr %i.vy, i64 2
  %i.adn = load i16, ptr %i.adm, align 2
  %i.ado = and i16 %i.adn, 255                    ; 2 uses
  %.not1633 = icmp eq i16 %i.ado, 0
  br i1 %.not1633, label %.thread1842, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adp = zext nneg i16 %i.ado to i32            ; 3 uses
  %i.adq = getelementptr i8, ptr %i.vy, i64 56
  %i.adr = load ptr, ptr %i.adq, align 8
  %i.ads = load i32, ptr %i.adr, align 4
  %i.adt = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.ads, ptr noundef %3, i32 noundef %i.vo, i32 noundef %i.adp, i32 noundef 0) ; 0 uses
  %i.adu = sub i32 %i.vn, %i.adp                  ; 2 uses
  %i.adv = add i32 %i.vo, %i.adp                  ; 2 uses
  %i.adw = icmp slt i32 %i.adu, 0
  br i1 %i.adw, label %bb.fu, label %.thread1842

bb.fu:                                            ; preds = %bb.ft
  %i.adx = load ptr, ptr %i.p, align 8
  call fastcc void @ProcessError(ptr noundef %0, ptr noundef %i.adx, ptr noundef %3, i32 noundef %i.adv, ptr noundef nonnull @ei_csn1_more_bits_to_unpack, ptr noundef %i.vy)
  br label %.thread

bb.fv:                                            ; preds = %._crit_edge2209
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.ady = getelementptr i8, ptr %i.vy, i64 24
  %i.adz = load i8, ptr %i.ady, align 8, !range !6, !noundef !7
  %i.aea = trunc nuw i8 %i.adz to i1
  %i.aeb = icmp eq i32 %i.vn, 0
  %or.cond34 = select i1 %i.aea, i1 %i.aeb, i1 false
  %i.aec = getelementptr i8, ptr %i.vy, i64 32
  %i.aed = load ptr, ptr %i.aec, align 8          ; 2 uses
  br i1 %or.cond34, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.aee = load i32, ptr @hf_null_data, align 4
  %i.aef = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_none_format(ptr noundef %0, i32 noundef %i.aee, ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.aed) ; 0 uses
  br label %.thread1835

bb.fx:                                            ; preds = %bb.fv
  %i.aeg = ashr i32 %i.vo, 3                      ; 2 uses
  %i.aeh = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %3, i32 noundef %i.aeg, i32 noundef 1, i32 noundef %5, ptr noundef nonnull %i.i, ptr noundef %i.aed)
  %i.aei = load ptr, ptr %i.p, align 8            ; 2 uses
  store i32 %i.vn, ptr %12, align 8
  store i32 %i.vo, ptr %i.u, align 4
  store ptr %i.aei, ptr %i.v, align 8
  call void @increment_dissection_depth(ptr noundef %i.aei)
  %i.aej = getelementptr i8, ptr %i.vy, i64 8
  %i.aek = load ptr, ptr %i.aej, align 8
  %i.ael = getelementptr i8, ptr %i.vy, i64 16
  %i.aem = load i64, ptr %i.ael, align 8
  %i.aen = getelementptr i8, ptr %4, i64 %i.aem
  %i.aeo = call signext i16 @csnStreamDissector(ptr noundef %i.aeh, ptr noundef nonnull %12, ptr noundef %i.aek, ptr noundef %3, ptr noundef %i.aen, i32 noundef %5) ; 2 uses
  %i.aep = load ptr, ptr %i.p, align 8
  call void @decrement_dissection_depth(ptr noundef %i.aep)
  %i.aeq = icmp sgt i16 %i.aeo, -1
  br i1 %i.aeq, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.aer = load ptr, ptr %i.i, align 8
  %i.aes = load i32, ptr %i.u, align 4
  %i.aet = add i32 %i.aes, -1
  %i.aeu = ashr i32 %i.aet, 3
  %reass.sub2258 = sub nsw i32 %i.aeu, %i.aeg
  %i.aev = add nsw i32 %reass.sub2258, 1
  call void @proto_item_set_len(ptr noundef %i.aer, i32 noundef %i.aev)
  %i.aew = load i32, ptr %12, align 8
  %i.aex = load i32, ptr %i.u, align 4
  br label %.thread1835

.thread1835:                                      ; preds = %bb.fw, %bb.fy
  %.361432 = phi i32 [ %i.vo, %bb.fw ], [ %i.aex, %bb.fy ]
  %.321388 = phi i32 [ 0, %bb.fw ], [ %i.aew, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %.thread1842

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #7
  br label %.thread

bb.ga:                                            ; preds = %._crit_edge2209
  %i.aey = load ptr, ptr %i.p, align 8
  %i.aez = ashr i32 %i.vo, 3
  %i.afa = call ptr @expert_get_summary(ptr noundef nonnull @ei_csn1_script_error)
  %.not10.i1687 = icmp eq ptr %i.vy, null
  br i1 %.not10.i1687, label %ProcessError.exit1688, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.afb = getelementptr i8, ptr %i.vy, i64 32
  %i.afc = load ptr, ptr %i.afb, align 8
  br label %ProcessError.exit1688

ProcessError.exit1688:                            ; preds = %bb.ga, %bb.gb
  %i.afd = phi ptr [ %i.afc, %bb.gb ], [ @.str.34, %bb.ga ]
  %i.afe = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %i.aey, ptr noundef nonnull @ei_csn1_script_error, ptr noundef %3, i32 noundef %i.aez, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.afa, ptr noundef %i.afd) ; 0 uses
  br label %.thread

bb.gc:                                            ; preds = %bb.d, %bb.d
  %i.aff = getelementptr i8, ptr %.01324, i64 16
  %i.afg = load i64, ptr %i.aff, align 8
  %i.afh = getelementptr i8, ptr %4, i64 %i.afg
  %i.afi = icmp eq i16 %i.ao, 23
  br i1 %i.afi, label %tvb_get_masked_bits8.exit1690, label %bb.gd

tvb_get_masked_bits8.exit1690:                    ; preds = %bb.gc
  %i.afj = ashr i32 %.01396, 3                    ; 2 uses
  %i.afk = and i32 %.01396, 7
  %i.afl = xor i32 %i.afk, 7
  %i.afm = call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.afj)
  %i.afn = xor i8 %i.afm, 43
  %i.afo = zext i8 %i.afn to i32
  %i.afp = lshr i32 %i.afo, %i.afl                ; 2 uses
  %i.afq = trunc nuw i32 %i.afp to i8
  %i.afr = and i8 %i.afq, 1
  %i.afs = getelementptr i8, ptr %.01324, i64 56
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = load i32, ptr %i.aft, align 4
  %i.afv = and i32 %i.afp, 1
  %i.afw = call ptr @proto_tree_add_uint(ptr noundef %0, i32 noundef %i.afu, ptr noundef %3, i32 noundef %i.afj, i32 noundef 1, i32 noundef %i.afv) ; 0 uses
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.afx = call zeroext i8 @tvb_get_bits8(ptr noundef %3, i32 noundef %.01396, i32 noundef 1)
  %i.afy = getelementptr i8, ptr %.01324, i64 56
  %i.afz = load ptr, ptr %i.afy, align 8
  %i.aga = load i32, ptr %i.afz, align 4
  %i.agb = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.aga, ptr noundef %3, i32 noundef %.01396, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %tvb_get_masked_bits8.exit1690
  %.01558 = phi i8 [ %i.afr, %tvb_get_masked_bits8.exit1690 ], [ %i.afx, %bb.gd ] ; 2 uses
  store i8 %.01558, ptr %i.afh, align 1
  %i.agc = add nsw i32 %.01356, -1                ; 3 uses
  %i.agd = add i32 %.01396, 1                     ; 2 uses
  %i.age = getelementptr i8, ptr %.01324, i64 80
  %.not1632.not = icmp eq i8 %.01558, 0
  br i1 %.not1632.not, label %.thread1849, label %.thread1842

.thread1849:                                      ; preds = %bb.ge
  store i32 %i.agc, ptr %1, align 8
  store i32 %i.agd, ptr %i.m, align 4
  %i.agf = trunc i32 %i.agc to i16
  br label %.thread

bb.gf:                                            ; preds = %bb.d
  %i.agg = getelementptr i8, ptr %.01324, i64 16
  %i.agh = load i64, ptr %i.agg, align 8
  %i.agi = getelementptr i8, ptr %4, i64 %i.agh   ; 5 uses
  %i.agj = getelementptr i8, ptr %.01324, i64 24
  %i.agk = load i8, ptr %i.agj, align 8, !range !6, !noundef !7
  %i.agl = trunc nuw i8 %i.agk to i1
  %i.agm = icmp eq i32 %.01356, 0
  %or.cond36 = and i1 %i.agm, %i.agl
  br i1 %or.cond36, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.agn = getelementptr i8, ptr %.01324, i64 2
  %i.ago = load i16, ptr %i.agn, align 2
  %i.agp = sext i16 %i.ago to i64
  %i.agq = getelementptr [80 x i8], ptr %.01324, i64 %i.agp
  store i8 0, ptr %i.agi, align 1
  br label %bb.gk

bb.gh:                                            ; preds = %bb.gf
  %i.agr = getelementptr i8, ptr %.01324, i64 56
  %i.ags = load ptr, ptr %i.agr, align 8
  %i.agt = load i32, ptr %i.ags, align 4
  %i.agu = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.agt, ptr noundef %3, i32 noundef %.01396, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agv = call zeroext i8 @tvb_get_bits8(ptr noundef %3, i32 noundef %.01396, i32 noundef 1)
  %.not1627 = icmp eq i8 %i.agv, 0
  br i1 %.not1627, label %.thread1853, label %bb.gi

.thread1853:                                      ; preds = %bb.gh
  store i8 0, ptr %i.agi, align 1
  %i.agw = add nsw i32 %.01356, -1
  %i.agx = add i32 %.01396, 1
  br label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.agy = icmp eq i32 %.01356, 1
  br i1 %i.agy, label %.preheader1932, label %.thread1851

.preheader1932:                                   ; preds = %bb.gi
  %i.agz = getelementptr i8, ptr %.01324, i64 2
  %i.aha = load i16, ptr %i.agz, align 2          ; 2 uses
  %i.ahb = icmp sgt i16 %i.aha, 0
  br i1 %i.ahb, label %.lr.ph2200, label %._crit_edge2201.thread

._crit_edge2201.thread:                           ; preds = %.preheader1932
  store i8 0, ptr %i.agi, align 1
  %i.ahc = add i32 %.01396, 1
  br label %bb.gj

.thread1851:                                      ; preds = %bb.gi
  store i8 1, ptr %i.agi, align 1
  %i.ahd = add nsw i32 %.01356, -1
  %i.ahe = add i32 %.01396, 1
  br label %bb.gk

.lr.ph2200:                                       ; preds = %.preheader1932, %.lr.ph2200
  %.015532199 = phi i8 [ %i.ahi, %.lr.ph2200 ], [ 0, %.preheader1932 ]
  %.01324.pn16302198 = phi ptr [ %.01554, %.lr.ph2200 ], [ %.01324, %.preheader1932 ] ; 2 uses
  %.015552197 = phi i8 [ %spec.select, %.lr.ph2200 ], [ 1, %.preheader1932 ]
  %.01554 = getelementptr i8, ptr %.01324.pn16302198, i64 80
  %i.ahf = getelementptr i8, ptr %.01324.pn16302198, i64 104
  %i.ahg = load i8, ptr %i.ahf, align 8, !range !6, !noundef !7
  %i.ahh = trunc nuw i8 %i.ahg to i1
  %spec.select = select i1 %i.ahh, i8 %.015552197, i8 0 ; 3 uses
  %i.ahi = add i8 %.015532199, 1                  ; 2 uses
  %15 = zext i8 %i.ahi to i16
  %16 = icmp ugt i16 %i.aha, %15
  br i1 %16, label %.lr.ph2200, label %._crit_edge2201, !llvm.loop !15

._crit_edge2201:                                  ; preds = %.lr.ph2200
  %i.ahj = icmp eq i8 %spec.select, 0
  %i.ahk = xor i8 %spec.select, 1
  store i8 %i.ahk, ptr %i.agi, align 1
  %i.ahl = add i32 %.01396, 1                     ; 2 uses
  br i1 %i.ahj, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %._crit_edge2201.thread, %.thread1853, %._crit_edge2201
  %i.ahm = phi i32 [ %i.agx, %.thread1853 ], [ %i.ahl, %._crit_edge2201 ], [ %i.ahc, %._crit_edge2201.thread ]
  %i.ahn = phi i32 [ %i.agw, %.thread1853 ], [ 0, %._crit_edge2201 ], [ 0, %._crit_edge2201.thread ]
  %i.aho = getelementptr i8, ptr %.01324, i64 2
  %i.ahp = load i16, ptr %i.aho, align 2
  %i.ahq = sext i16 %i.ahp to i64
  %i.ahr = getelementptr [80 x i8], ptr %.01324, i64 %i.ahq
  br label %bb.gk

bb.gk:                                            ; preds = %.thread1851, %._crit_edge2201, %bb.gj, %bb.gg
  %.401436 = phi i32 [ %.01396, %bb.gg ], [ %i.ahm, %bb.gj ], [ %i.ahl, %._crit_edge2201 ], [ %i.ahe, %.thread1851 ]
  %.361392 = phi i32 [ 0, %bb.gg ], [ %i.ahn, %bb.gj ], [ 0, %._crit_edge2201 ], [ %i.ahd, %.thread1851 ]
  %.pn1631 = phi ptr [ %i.agq, %bb.gg ], [ %i.ahr, %bb.gj ], [ %.01324, %._crit_edge2201 ], [ %.01324, %.thread1851 ]
  %.201344 = getelementptr i8, ptr %.pn1631, i64 80
  br label %.thread1842

bb.gl:                                            ; preds = %bb.d
  %i.ahs = getelementptr i8, ptr %.01324, i64 16
  %i.aht = load i64, ptr %i.ahs, align 8
  %i.ahu = getelementptr i8, ptr %4, i64 %i.aht   ; 5 uses
  %i.ahv = getelementptr i8, ptr %.01324, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8
  %i.ahx = icmp ne ptr %i.ahw, null
  %i.ahy = icmp eq i32 %.01356, 0
  %or.cond38 = and i1 %i.ahy, %i.ahx
  br i1 %or.cond38, label %bb.gm, label %tvb_get_masked_bits8.exit1692

bb.gm:                                            ; preds = %bb.gl
  %i.ahz = getelementptr i8, ptr %.01324, i64 2
  %i.aia = load i16, ptr %i.ahz, align 2
  %i.aib = sext i16 %i.aia to i64
  %i.aic = getelementptr [80 x i8], ptr %.01324, i64 %i.aib
  store i8 0, ptr %i.ahu, align 1
  br label %bb.gp

tvb_get_masked_bits8.exit1692:                    ; preds = %bb.gl
  %i.aid = getelementptr i8, ptr %.01324, i64 56
  %i.aie = load ptr, ptr %i.aid, align 8
  %i.aif = load i32, ptr %i.aie, align 4
  %i.aig = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.aif, ptr noundef %3, i32 noundef %.01396, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aih = ashr i32 %.01396, 3
  %i.aii = and i32 %.01396, 7
  %i.aij = call zeroext i8 @tvb_get_uint8(ptr noundef %3, i32 noundef %i.aih)
  %i.aik = xor i8 %i.aij, 43
  %i.ail = zext i8 %i.aik to i32
  %i.aim = lshr exact i32 128, %i.aii
  %i.ain = and i32 %i.aim, %i.ail
  %.not1624 = icmp eq i32 %i.ain, 0
  br i1 %.not1624, label %.thread1857, label %bb.gn

.thread1857:                                      ; preds = %tvb_get_masked_bits8.exit1692
  store i8 0, ptr %i.ahu, align 1
  %i.aio = add nsw i32 %.01356, -1
  %i.aip = add i32 %.01396, 1
  br label %bb.go

bb.gn:                                            ; preds = %tvb_get_masked_bits8.exit1692
  %i.aiq = icmp eq i32 %.01356, 1
  br i1 %i.aiq, label %.preheader1933, label %.thread1855

.preheader1933:                                   ; preds = %bb.gn
  %i.air = getelementptr i8, ptr %.01324, i64 2
  %i.ais = load i16, ptr %i.air, align 2          ; 2 uses
  %i.ait = icmp sgt i16 %i.ais, 0
  br i1 %i.ait, label %.lr.ph2194, label %._crit_edge2195.thread

._crit_edge2195.thread:                           ; preds = %.preheader1933
  store i8 0, ptr %i.ahu, align 1
  %i.aiu = add i32 %.01396, 1
  br label %bb.go

.thread1855:                                      ; preds = %bb.gn
  store i8 1, ptr %i.ahu, align 1
  %i.aiv = add nsw i32 %.01356, -1
  %i.aiw = add i32 %.01396, 1
  br label %bb.gp

.lr.ph2194:                                       ; preds = %.preheader1933, %.lr.ph2194
  %.015482193 = phi i8 [ %i.aja, %.lr.ph2194 ], [ 0, %.preheader1933 ]
  %.01324.pn2192 = phi ptr [ %.01549, %.lr.ph2194 ], [ %.01324, %.preheader1933 ] ; 2 uses
  %.015502191 = phi i8 [ %spec.select1660, %.lr.ph2194 ], [ 1, %.preheader1933 ]
  %.01549 = getelementptr i8, ptr %.01324.pn2192, i64 80
  %i.aix = getelementptr i8, ptr %.01324.pn2192, i64 104
  %i.aiy = load i8, ptr %i.aix, align 8, !range !6, !noundef !7
  %i.aiz = trunc nuw i8 %i.aiy to i1
  %spec.select1660 = select i1 %i.aiz, i8 %.015502191, i8 0 ; 3 uses
  %i.aja = add i8 %.015482193, 1                  ; 2 uses
  %17 = zext i8 %i.aja to i16
  %18 = icmp ugt i16 %i.ais, %17
  br i1 %18, label %.lr.ph2194, label %._crit_edge2195, !llvm.loop !16

._crit_edge2195:                                  ; preds = %.lr.ph2194
  %i.ajb = icmp eq i8 %spec.select1660, 0
  %i.ajc = xor i8 %spec.select1660, 1
  store i8 %i.ajc, ptr %i.ahu, align 1
  %i.ajd = add i32 %.01396, 1                     ; 2 uses
  br i1 %i.ajb, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %._crit_edge2195.thread, %.thread1857, %._crit_edge2195
  %i.aje = phi i32 [ %i.aip, %.thread1857 ], [ %i.ajd, %._crit_edge2195 ], [ %i.aiu, %._crit_edge2195.thread ]
  %i.ajf = phi i32 [ %i.aio, %.thread1857 ], [ 0, %._crit_edge2195 ], [ 0, %._crit_edge2195.thread ]
  %i.ajg = getelementptr i8, ptr %.01324, i64 2
  %i.ajh = load i16, ptr %i.ajg, align 2
  %i.aji = sext i16 %i.ajh to i64
  %i.ajj = getelementptr [80 x i8], ptr %.01324, i64 %i.aji
  br label %bb.gp

bb.gp:                                            ; preds = %.thread1855, %._crit_edge2195, %bb.go, %bb.gm
  %.411437 = phi i32 [ %.01396, %bb.gm ], [ %i.aje, %bb.go ], [ %i.ajd, %._crit_edge2195 ], [ %i.aiw, %.thread1855 ]
  %.371393 = phi i32 [ 0, %bb.gm ], [ %i.ajf, %bb.go ], [ 0, %._crit_edge2195 ], [ %i.aiv, %.thread1855 ]
  %.pn = phi ptr [ %i.aic, %bb.gm ], [ %i.ajj, %bb.go ], [ %.01324, %._crit_edge2195 ], [ %.01324, %.thread1855 ]
  %.221346 = getelementptr i8, ptr %.pn, i64 80
  br label %.thread1842

bb.gq:                                            ; preds = %bb.d
  %i.ajk = trunc i32 %.01356 to i8
  %i.ajl = getelementptr i8, ptr %.01324, i64 8
  %i.ajm = load i32, ptr %i.ajl, align 8
  %sext1622 = shl i32 %i.ajm, 16
  %i.ajn = ashr exact i32 %sext1622, 16
  %i.ajo = sext i32 %i.ajn to i64
  %i.ajp = getelementptr i8, ptr %4, i64 %i.ajo
  store i8 %i.ajk, ptr %i.ajp, align 1
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.d
  %i.ajq = getelementptr i8, ptr %.01324, i64 8
  %i.ajr = load i32, ptr %i.ajq, align 8
  %sext1623 = shl i32 %i.ajr, 16
  %i.ajs = ashr exact i32 %sext1623, 16
  %i.ajt = sext i32 %i.ajs to i64
  %i.aju = getelementptr i8, ptr %4, i64 %i.ajt
  %i.ajv = load i8, ptr %i.aju, align 1
  %i.ajw = getelementptr i8, ptr %.01324, i64 2
  %i.ajx = load i16, ptr %i.ajw, align 2
  %i.ajy = zext i8 %i.ajv to i16
  %i.ajz = add i16 %i.ajx, %i.ajy
  %i.aka = getelementptr i8, ptr %.01324, i64 56
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gt, %bb.gr
  %.01547 = phi i16 [ %i.ajz, %bb.gr ], [ %i.akg, %bb.gt ] ; 2 uses
  %.421438 = phi i32 [ %.01396, %bb.gr ], [ %i.akf, %bb.gt ] ; 3 uses
  %.381394 = phi i32 [ %.01356, %bb.gr ], [ %i.akh, %bb.gt ] ; 3 uses
  %i.akb = icmp slt i16 %.01547, 1
  br i1 %i.akb, label %.thread1859, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.akc = load ptr, ptr %i.aka, align 8
  %i.akd = load i32, ptr %i.akc, align 4
  %i.ake = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.akd, ptr noundef %3, i32 noundef %.421438, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akf = add i32 %.421438, 1                    ; 2 uses
  %i.akg = add nsw i16 %.01547, -1
  %i.akh = add nsw i32 %.381394, -1
  %i.aki = icmp slt i32 %.381394, 1
  br i1 %i.aki, label %bb.gu, label %bb.gs, !llvm.loop !17

bb.gu:                                            ; preds = %bb.gt
  %i.akj = load ptr, ptr %i.p, align 8
  %i.akk = ashr i32 %i.akf, 3
  %i.akl = call ptr @expert_get_summary(ptr noundef nonnull @ei_csn1_more_bits_to_unpack)
  %.not10.i1693 = icmp eq ptr %.01324, null
  br i1 %.not10.i1693, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akm = getelementptr i8, ptr %.01324, i64 32
  %i.akn = load ptr, ptr %i.akm, align 8
  br label %bb.gw

.thread1859:                                      ; preds = %bb.gs
  %i.ako = getelementptr i8, ptr %.01324, i64 80
  br label %.thread1842

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.akp = phi ptr [ %i.akn, %bb.gv ], [ @.str.34, %bb.gu ]
  %i.akq = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %i.akj, ptr noundef nonnull @ei_csn1_more_bits_to_unpack, ptr noundef %3, i32 noundef %i.akk, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.akl, ptr noundef %i.akp) ; 0 uses
  br label %.thread

bb.gx:                                            ; preds = %bb.d
  %i.akr = trunc i32 %.01356 to i8
  %i.aks = getelementptr i8, ptr %.01324, i64 8
  %i.akt = load i32, ptr %i.aks, align 8
  %sext1620 = shl i32 %i.akt, 16
  %i.aku = ashr exact i32 %sext1620, 16
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr i8, ptr %4, i64 %i.akv
  store i8 %i.akr, ptr %i.akw, align 1
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.d
  %i.akx = getelementptr i8, ptr %.01324, i64 8
  %i.aky = load i32, ptr %i.akx, align 8
  %sext1621 = shl i32 %i.aky, 16
  %i.akz = ashr exact i32 %sext1621, 16
  %i.ala = sext i32 %i.akz to i64
  %i.alb = getelementptr i8, ptr %4, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1
  %i.ald = getelementptr i8, ptr %.01324, i64 2
  %i.ale = load i16, ptr %i.ald, align 2
  %i.alf = zext i8 %i.alc to i16
  %i.alg = add i16 %i.ale, %i.alf                 ; 5 uses
  %i.alh = sext i16 %i.alg to i32                 ; 6 uses
  %i.ali = icmp sgt i16 %i.alg, 0
  br i1 %i.ali, label %bb.gz, label %.thread1864

bb.gz:                                            ; preds = %bb.gy
  %i.alj = icmp samesign ult i16 %i.alg, 33
  br i1 %i.alj, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.alk = getelementptr i8, ptr %.01324, i64 56
  %i.all = load ptr, ptr %i.alk, align 8
  %i.alm = load i32, ptr %i.all, align 4
  %i.aln = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.alm, ptr noundef %3, i32 noundef %.01396, i32 noundef %i.alh, i32 noundef 0) ; 0 uses
  br label %bb.he

bb.hb:                                            ; preds = %bb.gz
  %i.alo = icmp samesign ult i16 %i.alg, 65
  %i.alp = getelementptr i8, ptr %.01324, i64 56
  %i.alq = load ptr, ptr %i.alp, align 8
  %i.alr = load i32, ptr %i.alq, align 4          ; 2 uses
  br i1 %i.alo, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.als = call ptr @proto_tree_add_bits_item(ptr noundef %0, i32 noundef %i.alr, ptr noundef %3, i32 noundef %.01396, i32 noundef %i.alh, i32 noundef 0) ; 0 uses
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %i.alt = ashr i32 %.01396, 3                    ; 2 uses
  %i.alu = add i32 %.01396, -1
  %i.alv = add i32 %i.alu, %i.alh
  %i.alw = ashr i32 %i.alv, 3
  %reass.sub2256 = sub nsw i32 %i.alw, %i.alt
  %i.alx = add nsw i32 %reass.sub2256, 1
  %i.aly = zext nneg i16 %i.alg to i64
  %i.alz = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %0, i32 noundef %i.alr, ptr noundef %3, i32 noundef %i.alt, i32 noundef %i.alx, i64 noundef %i.aly, ptr noundef nonnull @.str.7, i32 noundef %i.alh) ; 0 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.hc, %bb.hd, %bb.ha
  %i.ama = add i32 %.01396, %i.alh                ; 2 uses
  %i.amb = sub nsw i32 %.01356, %i.alh            ; 2 uses
  %i.amc = icmp slt i32 %i.amb, 0
  br i1 %i.amc, label %bb.hf, label %.thread1864

bb.hf:                                            ; preds = %bb.he
  %i.amd = load ptr, ptr %i.p, align 8
  %i.ame = ashr i32 %i.ama, 3
  %i.amf = call ptr @expert_get_summary(ptr noundef nonnull @ei_csn1_more_bits_to_unpack)
  %.not10.i1695 = icmp eq ptr %.01324, null
  br i1 %.not10.i1695, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.amg = getelementptr i8, ptr %.01324, i64 32
  %i.amh = load ptr, ptr %i.amg, align 8
  br label %bb.hh

.thread1864:                                      ; preds = %bb.gy, %bb.he
  %.441440 = phi i32 [ %i.ama, %bb.he ], [ %.01396, %bb.gy ]
  %.40 = phi i32 [ %i.amb, %bb.he ], [ %.01356, %bb.gy ]
  %i.ami = getelementptr i8, ptr %.01324, i64 80
  br label %.thread1842

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.amj = phi ptr [ %i.amh, %bb.hg ], [ @.str.34, %bb.hf ]
  %i.amk = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %i.amd, ptr noundef nonnull @ei_csn1_more_bits_to_unpack, ptr noundef %3, i32 noundef %i.ame, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.amf, ptr noundef %i.amj) ; 0 uses
  br label %.thread

bb.hi:                                            ; preds = %bb.d
  %.not1619 = icmp eq i32 %.01356, 0
  br i1 %.not1619, label %.thread1870, label %.lr.ph2187

.lr.ph2187:                                       ; preds = %bb.hi
  %i.aml = ashr i32 %.01396, 3
  %i.amm = call ptr @proto_tree_add_subtree(ptr noundef %0, ptr noundef %3, i32 noundef %i.aml, i32 noundef -1, i32 noundef %5, ptr noundef null, ptr noundef nonnull @.str.8)
  %i.amn = getelementptr i8, ptr %.01324, i64 56
  br label %bb.hj

bb.hj:                                            ; preds = %.lr.ph2187, %bb.hj
  %.422185 = phi i32 [ %.01356, %.lr.ph2187 ], [ %i.amw, %bb.hj ] ; 3 uses
  %.4614422184 = phi i32 [ %.01396, %.lr.ph2187 ], [ %i.amv, %bb.hj ] ; 3 uses
  %i.amo = srem i32 %.4614422184, 8               ; 2 uses
  %i.amp = add i32 %.422185, %i.amo
  %i.amq = icmp sgt i32 %i.amp, 32
  %i.amr = sub nsw i32 32, %i.amo
  %.01543 = select i1 %i.amq, i32 %i.amr, i32 %.422185 ; 3 uses
  %i.ams = load ptr, ptr %i.amn, align 8
  %i.amt = load i32, ptr %i.ams, align 4
  %i.amu = call ptr @proto_tree_add_bits_item(ptr noundef %i.amm, i32 noundef %i.amt, ptr noundef %3, i32 noundef %.4614422184, i32 noundef %.01543, i32 noundef 0) ; 0 uses
  %i.amv = add i32 %.01543, %.4614422184          ; 3 uses
  %i.amw = sub nsw i32 %.422185, %.01543          ; 3 uses
end_hunk_0
