Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_match?download=true
begin_hunk_0_@match:bb.a
  store i32 %i.amz, ptr %i.amx, align 8, !tbaa !77
  %i.ana = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !77
  %.not9507 = icmp ult i32 %i.amy, %i.anb
  br i1 %.not9507, label %bb.gq, label %.backedge.backedge

bb.gq:                                            ; preds = %bb.gp
  %i.anc = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !122 ; 7 uses
  %i.ane = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.sgy, i64 24
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !137 ; 3 uses
  %i.anh = sub i64 0, %i.ang
  %i.ani = getelementptr inbounds i8, ptr %i.ane, i64 %i.anh
  %.not9508 = icmp ugt ptr %i.and, %i.ani
  br i1 %.not9508, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.anj = getelementptr inbounds nuw i8, ptr %i.sgy, i64 16
  %i.ank = load ptr, ptr %i.anj, align 8, !tbaa !134
  %bcmp9509 = tail call i32 @bcmp(ptr %i.and, ptr %i.ank, i64 %i.ang)
  %i.anl = icmp eq i32 %bcmp9509, 0
  br i1 %i.anl, label %.loopexit10590.sink.split, label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.anm = getelementptr inbounds nuw i8, ptr %i.sgy, i64 40
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !139 ; 4 uses
  %.not9510 = icmp eq i64 %i.ann, 0
  %i.ano = sub i64 0, %i.ann
  %i.anp = getelementptr inbounds i8, ptr %i.ane, i64 %i.ano
  %.not9511 = icmp ugt ptr %i.and, %i.anp
  %or.cond10187 = select i1 %.not9510, i1 true, i1 %.not9511
  br i1 %or.cond10187, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.anq = getelementptr inbounds nuw i8, ptr %i.sgy, i64 74
  %bcmp9512 = tail call i32 @bcmp(ptr %i.and, ptr nonnull %i.anq, i64 %i.ann)
  %i.anr = icmp eq i32 %bcmp9512, 0
  br i1 %i.anr, label %.loopexit10590.sink.split, label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.not9513 = icmp ult ptr %i.and, %i.ane
  br i1 %.not9513, label %.backedge.backedge, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ans = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9514 = icmp eq i16 %i.ans, 0
  br i1 %.not9514, label %.backedge.backedge, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ant = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.anu = icmp ugt ptr %i.and, %i.ant
  br i1 %i.anu, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.anv = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9515 = icmp eq i32 %i.anv, 0
  br i1 %.not9515, label %.backedge.backedge, label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10294 = icmp eq i16 %i.ans, 1
  br i1 %.not10294, label %.backedge.backedge, label %.thread9657

bb.gz:                                            ; preds = %bb.go
  %i.anw = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !122 ; 4 uses
  store ptr %i.anx, ptr %i.ahz, align 8, !tbaa !134
  %i.any = icmp ult i32 %i.alz, %i.amr
  br i1 %i.any, label %.lr.ph12412, label %.loopexit10358

.lr.ph12412:                                      ; preds = %bb.gz
  %i.anz = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 3 uses
  %i.aoa = load i64, ptr %i.ahy, align 8, !tbaa !137 ; 3 uses
  %i.aob = sub i64 0, %i.aoa
  %i.aoc = getelementptr inbounds i8, ptr %i.anz, i64 %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %.47548, i64 74
  %.not9334 = icmp eq i64 %i.aly, 0
  %i.aoe = sub nsw i64 0, %i.aly
  %i.aof = getelementptr inbounds i8, ptr %i.anz, i64 %i.aoe
  br label %bb.ha

bb.ha:                                            ; preds = %.lr.ph12412, %bb.hj
  %storemerge934112414 = phi ptr [ %i.anx, %.lr.ph12412 ], [ %storemerge9341, %bb.hj ] ; 11 uses
  %.2811312410 = phi i32 [ %i.alz, %.lr.ph12412 ], [ %i.aon, %bb.hj ]
  %.not9333 = icmp ugt ptr %storemerge934112414, %i.aoc
  br i1 %.not9333, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aog = load ptr, ptr %i.aia, align 8, !tbaa !134
  %bcmp = tail call i32 @bcmp(ptr %storemerge934112414, ptr %i.aog, i64 %i.aoa)
  %i.aoh = icmp eq i32 %bcmp, 0
  br i1 %i.aoh, label %bb.hj, label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.not9335 = icmp ugt ptr %storemerge934112414, %i.aof
  %or.cond10189 = select i1 %.not9334, i1 true, i1 %.not9335
  br i1 %or.cond10189, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %bcmp9336 = tail call i32 @bcmp(ptr %storemerge934112414, ptr nonnull %i.aod, i64 %i.aly)
  %i.aoi = icmp eq i32 %bcmp9336, 0
  br i1 %i.aoi, label %bb.hj, label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.not9337 = icmp ult ptr %storemerge934112414, %i.anz
  br i1 %.not9337, label %.loopexit10358, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aoj = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9338 = icmp eq i16 %i.aoj, 0
  br i1 %.not9338, label %.loopexit10358, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aok = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.aol = icmp ugt ptr %storemerge934112414, %i.aok
  br i1 %i.aol, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aom = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9339 = icmp eq i32 %i.aom, 0
  br i1 %.not9339, label %.loopexit10358, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10266 = icmp eq i16 %i.aoj, 1
  br i1 %.not10266, label %.loopexit10358, label %.thread9657

bb.hj:                                            ; preds = %bb.hd, %bb.hb
  %.pn10265 = phi i64 [ %i.aoa, %bb.hb ], [ %i.aly, %bb.hd ]
  %storemerge9341 = getelementptr inbounds nuw i8, ptr %storemerge934112414, i64 %.pn10265 ; 3 uses
  store ptr %storemerge9341, ptr %i.anw, align 8, !tbaa !122
  %i.aon = add i32 %.2811312410, 1                ; 2 uses
  %exitcond14090.not = icmp eq i32 %i.aon, %i.amr
  br i1 %exitcond14090.not, label %.loopexit10358, label %bb.ha, !llvm.loop !141

.loopexit10358:                                   ; preds = %bb.hj, %bb.gz, %bb.he, %bb.hi, %bb.hh, %bb.hf
  %i.aoo = phi ptr [ %storemerge934112414, %bb.hf ], [ %i.anx, %bb.gz ], [ %storemerge934112414, %bb.he ], [ %storemerge934112414, %bb.hi ], [ %storemerge934112414, %bb.hh ], [ %storemerge9341, %bb.hj ]
  %.not9340 = icmp eq i32 %.37966, 2
  br i1 %.not9340, label %.preheader10580.backedge, label %.loopexit10317

.loopexit10317.loopexit:                          ; preds = %bb.hm
  %.phi.trans.insert14162 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14163 = load ptr, ptr %.phi.trans.insert14162, align 8, !tbaa !134
  br label %.loopexit10317

.loopexit10317:                                   ; preds = %.loopexit10317.loopexit, %.loopexit10358
  %i.aop = phi ptr [ %i.anx, %.loopexit10358 ], [ %.pre14163, %.loopexit10317.loopexit ]
  %i.aoq = phi ptr [ %i.aoo, %.loopexit10358 ], [ %storemerge9503, %.loopexit10317.loopexit ]
  %.57968 = phi i32 [ %.37966, %.loopexit10358 ], [ %.658028.ph.ph, %.loopexit10317.loopexit ] ; 2 uses
  %.47701 = phi ptr [ %.27699, %.loopexit10358 ], [ %.607757.ph.ph, %.loopexit10317.loopexit ] ; 2 uses
  %.47641 = phi ptr [ %.27639, %.loopexit10358 ], [ %.597696.ph.ph, %.loopexit10317.loopexit ] ; 2 uses
  %.57611 = phi ptr [ %.37609, %.loopexit10358 ], [ %.257631.ph.ph, %.loopexit10317.loopexit ]
  %.67550 = phi ptr [ %.47548, %.loopexit10358 ], [ %i.sgy, %.loopexit10317.loopexit ] ; 3 uses
  %.not9504 = icmp ugt ptr %i.aoq, %i.aop
  br i1 %.not9504, label %bb.hk, label %.preheader10580.backedge

bb.hk:                                            ; preds = %.loopexit10317
  %i.aor = load ptr, ptr %.67550, align 8, !tbaa !130
  br label %.loopexit10589

bb.hl:                                            ; preds = %bb.cxs
  %i.aos = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !122
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hm, %bb.hl
  %.pn9505 = phi ptr [ %i.aot, %bb.hl ], [ %storemerge9503, %bb.hm ]
  %storemerge9503 = getelementptr inbounds i8, ptr %.pn9505, i64 -1 ; 4 uses
  store ptr %storemerge9503, ptr %i.aos, align 8, !tbaa !122
  %i.aou = load i8, ptr %storemerge9503, align 1, !tbaa !35
  %i.aov = icmp slt i8 %i.aou, -64
  br i1 %i.aov, label %bb.hm, label %.loopexit10317.loopexit, !llvm.loop !142

bb.hn:                                            ; preds = %bb.fp
  %i.aow = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1 ; 2 uses
  store ptr %i.aow, ptr %.47548, align 8, !tbaa !130
  br label %bb.hp

bb.ho:                                            ; preds = %bb.fo
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1 ; 2 uses
  store ptr %i.aox, ptr %.47548, align 8, !tbaa !130
  %i.aoy = load i8, ptr %i.ahx, align 1, !tbaa !35
  %i.aoz = zext i8 %i.aoy to i32
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.sink16511 = phi i32 [ %i.aoz, %bb.ho ], [ %i.aic, %bb.hn ] ; 9 uses
  %i.apa = phi ptr [ %i.aox, %bb.ho ], [ %i.aow, %bb.hn ] ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %.47548, i64 64
  store i32 %.sink16511, ptr %i.apb, align 8, !tbaa !77
  %i.apc = icmp samesign ugt i8 %i.dq, 45
  br i1 %i.apc, label %bb.hq, label %.preheader10361

.preheader10361:                                  ; preds = %bb.hp
  %.not930912379 = icmp eq i32 %i.ahw, 0
  br i1 %.not930912379, label %._crit_edge12382, label %.lr.ph12381

.lr.ph12381:                                      ; preds = %.preheader10361
  %i.apd = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.ape = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12384 = load ptr, ptr %i.apd, align 8, !tbaa !122 ; 3 uses
  %.not931518042 = icmp ult ptr %.promoted12384, %i.ape
  br i1 %.not931518042, label %.lr.ph18044, label %._crit_edge18045

bb.hq:                                            ; preds = %bb.hp
  %i.apf = icmp samesign ugt i32 %.sink16511, 127
  %or.cond16513 = select i1 %or.cond.not, i1 %i.apf, i1 false
  br i1 %or.cond16513, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.apg = load i16, ptr getelementptr inbounds nuw (i8, ptr @_pcre2_ucd_stage1_8, i64 2), align 2, !tbaa !88
  %i.aph = zext i16 %i.apg to i32
  %i.api = shl nuw nsw i32 %i.aph, 7
  %i.apj = and i32 %.sink16511, 127
  %i.apk = or disjoint i32 %i.api, %i.apj
  %i.apl = zext nneg i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.apl
  %i.apn = load i16, ptr %i.apm, align 2, !tbaa !88
  %i.apo = zext i16 %i.apn to i64
  %i.app = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !89
  %i.aps = add nsw i32 %i.apr, %.sink16511
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  %i.apt = load ptr, ptr %i.az, align 8, !tbaa !85
  %i.apu = zext nneg i32 %.sink16511 to i64
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apt, i64 %i.apu
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !35
  %i.apx = zext i8 %i.apw to i32
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.sink16514 = phi i32 [ %i.apx, %bb.hs ], [ %i.aps, %bb.hr ] ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.47548, i64 68
  store i32 %.sink16514, ptr %i.apy, align 4, !tbaa !77
  %.not931912390 = icmp eq i32 %i.ahw, 0
  br i1 %.not931912390, label %._crit_edge12394, label %.lr.ph12393

.lr.ph12393:                                      ; preds = %bb.ht
  %i.apz = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.aqa = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12396 = load ptr, ptr %i.apz, align 8, !tbaa !122 ; 3 uses
  %.not932618047 = icmp ult ptr %.promoted12396, %i.aqa
  br i1 %.not932618047, label %.lr.ph18049, label %._crit_edge18050

bb.hu:                                            ; preds = %bb.hy
  %.not9326 = icmp ult ptr %i.aqh, %i.aqa
  br i1 %.not9326, label %.lr.ph18049, label %._crit_edge18050, !llvm.loop !143

._crit_edge18050:                                 ; preds = %bb.hu, %.lr.ph12393
  %.lcssa16935 = phi ptr [ %.promoted12396, %.lr.ph12393 ], [ %i.aqh, %bb.hu ]
  %i.aqb = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9329 = icmp eq i16 %i.aqb, 0
  br i1 %.not9329, label %.preheader10324.preheader, label %bb.hv

bb.hv:                                            ; preds = %._crit_edge18050
  %i.aqc = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.aqd = icmp ugt ptr %.lcssa16935, %i.aqc
  br i1 %i.aqd, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aqe = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9330 = icmp eq i32 %i.aqe, 0
  br i1 %.not9330, label %.preheader10324.preheader, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10261 = icmp eq i16 %i.aqb, 1
  br i1 %.not10261, label %.preheader10324.preheader, label %.thread9657

.lr.ph18049:                                      ; preds = %.lr.ph12393, %bb.hu
  %.381141239118048 = phi i32 [ %i.aqi, %bb.hu ], [ 1, %.lr.ph12393 ]
  %6 = phi ptr [ %i.aqh, %bb.hu ], [ %.promoted12396, %.lr.ph12393 ] ; 2 uses
  %i.aqf = load i8, ptr %6, align 1, !tbaa !35
  %i.aqg = zext i8 %i.aqf to i32                  ; 2 uses
  %.not9327 = icmp eq i32 %.sink16511, %i.aqg
  %.not9328 = icmp eq i32 %.sink16514, %i.aqg
  %or.cond16516 = select i1 %.not9327, i1 true, i1 %.not9328
  br i1 %or.cond16516, label %bb.hy, label %.preheader10324.preheader

bb.hy:                                            ; preds = %.lr.ph18049
  %i.aqh = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 4 uses
  store ptr %i.aqh, ptr %i.apz, align 8, !tbaa !122
  %i.aqi = add i32 %.381141239118048, 1           ; 2 uses
  %.not9319 = icmp ugt i32 %i.aqi, %i.ahw
  br i1 %.not9319, label %._crit_edge12394, label %bb.hu, !llvm.loop !143

._crit_edge12394:                                 ; preds = %bb.hy, %bb.ht
  %i.aqj = icmp eq i32 %i.ahw, %i.ahv
  br i1 %i.aqj, label %.preheader10580.backedge, label %bb.hz

bb.hz:                                            ; preds = %._crit_edge12394
  %i.aqk = icmp eq i32 %.37966, 0
  br i1 %i.aqk, label %.loopexit10589, label %bb.ij

bb.ia:                                            ; preds = %bb.cxb
  %i.aql = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !77 ; 2 uses
  %i.aqn = add i32 %i.aqm, 1
  store i32 %i.aqn, ptr %i.aql, align 8, !tbaa !77
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !77
  %.not9570 = icmp ult i32 %i.aqm, %i.aqp
  br i1 %.not9570, label %bb.ib, label %.backedge.backedge

bb.ib:                                            ; preds = %bb.ia
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !122 ; 4 uses
  %i.aqs = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not9571 = icmp ult ptr %i.aqr, %i.aqs
  br i1 %.not9571, label %bb.ig, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aqt = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9574 = icmp eq i16 %i.aqt, 0
  br i1 %.not9574, label %.backedge.backedge, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aqu = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.aqv = icmp ugt ptr %i.aqr, %i.aqu
  br i1 %i.aqv, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aqw = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9575 = icmp eq i32 %i.aqw, 0
  br i1 %.not9575, label %.backedge.backedge, label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10302 = icmp eq i16 %i.aqt, 1
  br i1 %.not10302, label %.backedge.backedge, label %.thread9657

bb.ig:                                            ; preds = %bb.ib
  %i.aqx = load i8, ptr %i.aqr, align 1, !tbaa !35
  %i.aqy = zext i8 %i.aqx to i32                  ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.sgy, i64 64
  %i.ara = load i32, ptr %i.aqz, align 8, !tbaa !77
  %.not9572 = icmp eq i32 %i.ara, %i.aqy
  br i1 %.not9572, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.arb = getelementptr inbounds nuw i8, ptr %i.sgy, i64 68
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !77
  %.not9573 = icmp eq i32 %i.arc, %i.aqy
  br i1 %.not9573, label %bb.ii, label %.backedge.backedge

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.ard = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqr, i64 1
  store ptr %i.are, ptr %i.ard, align 8, !tbaa !122
  %.pre14179 = load ptr, ptr %i.sgy, align 8, !tbaa !130
  br label %.loopexit10589

bb.ij:                                            ; preds = %bb.hz
  %i.arf = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !122 ; 4 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %.47548, i64 8
  store ptr %i.arg, ptr %i.arh, align 8, !tbaa !134
  %i.ari = icmp ult i32 %i.ahw, %i.ahv
  br i1 %i.ari, label %.lr.ph12399, label %.thread9698

.lr.ph12399:                                      ; preds = %bb.ij
  %i.arj = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %bb.ik

bb.ik:                                            ; preds = %.lr.ph12399, %bb.iq
  %i.ark = phi ptr [ %i.arg, %.lr.ph12399 ], [ %i.arr, %bb.iq ] ; 8 uses
  %.4811512397 = phi i32 [ %i.ahw, %.lr.ph12399 ], [ %i.ars, %bb.iq ]
  %.not9320 = icmp ult ptr %i.ark, %i.arj
  br i1 %.not9320, label %bb.ip, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.arl = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9323 = icmp eq i16 %i.arl, 0
  br i1 %.not9323, label %.thread9698, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.arm = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.arn = icmp ugt ptr %i.ark, %i.arm
  br i1 %i.arn, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aro = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9324 = icmp eq i32 %i.aro, 0
  br i1 %.not9324, label %.thread9698, label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10262 = icmp eq i16 %i.arl, 1
  br i1 %.not10262, label %.thread9698, label %.thread9657

bb.ip:                                            ; preds = %bb.ik
  %i.arp = load i8, ptr %i.ark, align 1, !tbaa !35
  %i.arq = zext i8 %i.arp to i32                  ; 2 uses
  %.not9321 = icmp eq i32 %.sink16511, %i.arq
  %.not9322 = icmp eq i32 %.sink16514, %i.arq
  %or.cond16517 = select i1 %.not9321, i1 true, i1 %.not9322
  br i1 %or.cond16517, label %bb.iq, label %.thread9698

bb.iq:                                            ; preds = %bb.ip
  %i.arr = getelementptr inbounds nuw i8, ptr %i.ark, i64 1 ; 3 uses
  store ptr %i.arr, ptr %i.arf, align 8, !tbaa !122
  %i.ars = add nuw i32 %.4811512397, 1            ; 2 uses
  %exitcond14089.not = icmp eq i32 %i.ars, %i.ahv
  br i1 %exitcond14089.not, label %.thread9698, label %bb.ik, !llvm.loop !144

.thread9698:                                      ; preds = %bb.iq, %bb.ip, %bb.ij, %bb.il, %bb.in, %bb.io
  %i.art = phi ptr [ %i.ark, %bb.io ], [ %i.arg, %bb.ij ], [ %i.ark, %bb.il ], [ %i.ark, %bb.in ], [ %i.arr, %bb.iq ], [ %i.ark, %bb.ip ]
  %.not9325 = icmp eq i32 %.37966, 2
  br i1 %.not9325, label %.preheader10580.backedge, label %.loopexit10348

.loopexit10348.loopexit:                          ; preds = %bb.cxc
  %i.aru = getelementptr inbounds i8, ptr %i.shu, i64 -1
  %.phi.trans.insert14177 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14178 = load ptr, ptr %.phi.trans.insert14177, align 8, !tbaa !134
  br label %.loopexit10348

.loopexit10348:                                   ; preds = %.loopexit10348.loopexit, %.thread9698
  %i.arv = phi ptr [ %i.arg, %.thread9698 ], [ %.pre14178, %.loopexit10348.loopexit ]
  %i.arw = phi ptr [ %i.art, %.thread9698 ], [ %i.aru, %.loopexit10348.loopexit ]
  %.77970 = phi i32 [ %.37966, %.thread9698 ], [ %.658028.ph.ph, %.loopexit10348.loopexit ] ; 2 uses
  %.67703 = phi ptr [ %.27699, %.thread9698 ], [ %.607757.ph.ph, %.loopexit10348.loopexit ] ; 2 uses
  %.67643 = phi ptr [ %.27639, %.thread9698 ], [ %.597696.ph.ph, %.loopexit10348.loopexit ] ; 2 uses
  %.67612 = phi ptr [ %.37609, %.thread9698 ], [ %.257631.ph.ph, %.loopexit10348.loopexit ]
  %.87552 = phi ptr [ %.47548, %.thread9698 ], [ %i.sgy, %.loopexit10348.loopexit ] ; 3 uses
  %i.arx = icmp eq ptr %i.arw, %i.arv
  br i1 %i.arx, label %.preheader10580.backedge, label %bb.ir

bb.ir:                                            ; preds = %.loopexit10348
  %i.ary = load ptr, ptr %.87552, align 8, !tbaa !130
  br label %.loopexit10589

bb.is:                                            ; preds = %.lr.ph18044
  %i.arz = add i32 %.581161238018043, 1           ; 2 uses
  %.not9309 = icmp ugt i32 %i.arz, %i.ahw
  br i1 %.not9309, label %._crit_edge12382, label %bb.it, !llvm.loop !145

bb.it:                                            ; preds = %bb.is
  %.not9315 = icmp ult ptr %i.ase, %i.ape
  br i1 %.not9315, label %.lr.ph18044, label %._crit_edge18045, !llvm.loop !145

._crit_edge18045:                                 ; preds = %bb.it, %.lr.ph12381
  %.lcssa16930 = phi ptr [ %.promoted12384, %.lr.ph12381 ], [ %i.ase, %bb.it ]
  %i.asa = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9317 = icmp eq i16 %i.asa, 0
  br i1 %.not9317, label %.preheader10324.preheader, label %bb.iu

bb.iu:                                            ; preds = %._crit_edge18045
  %i.asb = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.asc = icmp ugt ptr %.lcssa16930, %i.asb
  br i1 %i.asc, label %bb.iw, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.asd = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9318 = icmp eq i32 %i.asd, 0
  br i1 %.not9318, label %.preheader10324.preheader, label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10259 = icmp eq i16 %i.asa, 1
  br i1 %.not10259, label %.preheader10324.preheader, label %.thread9657

.lr.ph18044:                                      ; preds = %.lr.ph12381, %bb.it
  %.581161238018043 = phi i32 [ %i.arz, %bb.it ], [ 1, %.lr.ph12381 ]
  %7 = phi ptr [ %i.ase, %bb.it ], [ %.promoted12384, %.lr.ph12381 ] ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 4 uses
  store ptr %i.ase, ptr %i.apd, align 8, !tbaa !122
  %i.asf = load i8, ptr %7, align 1, !tbaa !35
  %i.asg = zext i8 %i.asf to i32
  %.not9316 = icmp eq i32 %.sink16511, %i.asg
  br i1 %.not9316, label %bb.is, label %.preheader10324.preheader

._crit_edge12382:                                 ; preds = %bb.is, %.preheader10361
  %i.ash = icmp eq i32 %i.ahw, %i.ahv
  br i1 %i.ash, label %.preheader10580.backedge, label %bb.ix

bb.ix:                                            ; preds = %._crit_edge12382
  %i.asi = icmp eq i32 %.37966, 0
  br i1 %i.asi, label %.loopexit10589, label %bb.jf

.loopexit10347.loopexit:                          ; preds = %bb.je
  %.pre14176 = load ptr, ptr %i.sgy, align 8, !tbaa !130
  br label %.loopexit10589

bb.iy:                                            ; preds = %bb.cxd
  %i.asj = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 8, !tbaa !77 ; 2 uses
  %i.asl = add i32 %i.ask, 1
  store i32 %i.asl, ptr %i.asj, align 8, !tbaa !77
  %i.asm = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !77
  %.not9563 = icmp ult i32 %i.ask, %i.asn
  br i1 %.not9563, label %bb.iz, label %.backedge.backedge

bb.iz:                                            ; preds = %bb.iy
  %i.aso = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !122 ; 4 uses
  %i.asq = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not9564 = icmp ult ptr %i.asp, %i.asq
  br i1 %.not9564, label %bb.je, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.asr = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9566 = icmp eq i16 %i.asr, 0
  br i1 %.not9566, label %.backedge.backedge, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.ass = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ast = icmp ugt ptr %i.asp, %i.ass
  br i1 %i.ast, label %bb.jd, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.asu = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9567 = icmp eq i32 %i.asu, 0
  br i1 %.not9567, label %.backedge.backedge, label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10301 = icmp eq i16 %i.asr, 1
  br i1 %.not10301, label %.backedge.backedge, label %.thread9657

bb.je:                                            ; preds = %bb.iz
  %i.asv = getelementptr inbounds nuw i8, ptr %i.sgy, i64 64
  %i.asw = load i32, ptr %i.asv, align 8, !tbaa !77
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asp, i64 1
  store ptr %i.asx, ptr %i.aso, align 8, !tbaa !122
  %i.asy = load i8, ptr %i.asp, align 1, !tbaa !35
  %i.asz = zext i8 %i.asy to i32
  %.not9565 = icmp eq i32 %i.asw, %i.asz
  br i1 %.not9565, label %.loopexit10347.loopexit, label %.backedge.backedge

bb.jf:                                            ; preds = %bb.ix
  %i.ata = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !122 ; 4 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %.47548, i64 8
  store ptr %i.atb, ptr %i.atc, align 8, !tbaa !134
  %i.atd = icmp ult i32 %i.ahw, %i.ahv
  br i1 %i.atd, label %.lr.ph12387, label %.loopexit10360

.lr.ph12387:                                      ; preds = %bb.jf
  %i.ate = load ptr, ptr %i.ag, align 8, !tbaa !59
  br label %bb.jg

bb.jg:                                            ; preds = %.lr.ph12387, %bb.jm
  %i.atf = phi ptr [ %i.atb, %.lr.ph12387 ], [ %i.atm, %bb.jm ] ; 8 uses
  %.6811712385 = phi i32 [ %i.ahw, %.lr.ph12387 ], [ %i.atn, %bb.jm ]
  %.not9310 = icmp ult ptr %i.atf, %i.ate
  br i1 %.not9310, label %bb.jl, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.atg = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9312 = icmp eq i16 %i.atg, 0
  br i1 %.not9312, label %.loopexit10360, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.ath = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ati = icmp ugt ptr %i.atf, %i.ath
  br i1 %i.ati, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.atj = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9313 = icmp eq i32 %i.atj, 0
  br i1 %.not9313, label %.loopexit10360, label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10260 = icmp eq i16 %i.atg, 1
  br i1 %.not10260, label %.loopexit10360, label %.thread9657

bb.jl:                                            ; preds = %bb.jg
  %i.atk = load i8, ptr %i.atf, align 1, !tbaa !35
  %i.atl = zext i8 %i.atk to i32
  %.not9311 = icmp eq i32 %.sink16511, %i.atl
  br i1 %.not9311, label %bb.jm, label %.loopexit10360

bb.jm:                                            ; preds = %bb.jl
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atf, i64 1 ; 3 uses
  store ptr %i.atm, ptr %i.ata, align 8, !tbaa !122
  %i.atn = add nuw i32 %.6811712385, 1            ; 2 uses
  %exitcond14088.not = icmp eq i32 %i.atn, %i.ahv
  br i1 %exitcond14088.not, label %.loopexit10360, label %bb.jg, !llvm.loop !146

.loopexit10360:                                   ; preds = %bb.jm, %bb.jl, %bb.jf, %bb.jh, %bb.jj, %bb.jk
  %i.ato = phi ptr [ %i.atf, %bb.jk ], [ %i.atb, %bb.jf ], [ %i.atf, %bb.jh ], [ %i.atf, %bb.jj ], [ %i.atm, %bb.jm ], [ %i.atf, %bb.jl ]
  %.not9314 = icmp eq i32 %.37966, 2
  br i1 %.not9314, label %.preheader10580.backedge, label %.loopexit10346

.loopexit10346.loopexit:                          ; preds = %bb.cxe
  %i.atp = getelementptr inbounds i8, ptr %i.shx, i64 -1
  %.phi.trans.insert14174 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14175 = load ptr, ptr %.phi.trans.insert14174, align 8, !tbaa !134
  br label %.loopexit10346

.loopexit10346:                                   ; preds = %.loopexit10346.loopexit, %.loopexit10360
  %i.atq = phi ptr [ %i.atb, %.loopexit10360 ], [ %.pre14175, %.loopexit10346.loopexit ]
  %i.atr = phi ptr [ %i.ato, %.loopexit10360 ], [ %i.atp, %.loopexit10346.loopexit ]
  %.97972 = phi i32 [ %.37966, %.loopexit10360 ], [ %.658028.ph.ph, %.loopexit10346.loopexit ] ; 2 uses
  %.87705 = phi ptr [ %.27699, %.loopexit10360 ], [ %.607757.ph.ph, %.loopexit10346.loopexit ] ; 2 uses
  %.87645 = phi ptr [ %.27639, %.loopexit10360 ], [ %.597696.ph.ph, %.loopexit10346.loopexit ] ; 2 uses
  %.77613 = phi ptr [ %.37609, %.loopexit10360 ], [ %.257631.ph.ph, %.loopexit10346.loopexit ]
  %.107554 = phi ptr [ %.47548, %.loopexit10360 ], [ %i.sgy, %.loopexit10346.loopexit ] ; 3 uses
  %.not9561 = icmp ugt ptr %i.atr, %i.atq
  br i1 %.not9561, label %bb.jn, label %.preheader10580.backedge

bb.jn:                                            ; preds = %.loopexit10346
  %i.ats = load ptr, ptr %.107554, align 8, !tbaa !130
  br label %.loopexit10589

bb.jo:                                            ; preds = %.preheader10580, %.preheader10580
  %i.att = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.atu = load i8, ptr %i.att, align 1, !tbaa !35
  %i.atv = zext i8 %i.atu to i32
  %i.atw = shl nuw nsw i32 %i.atv, 8
  %i.atx = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.aty = load i8, ptr %i.atx, align 1, !tbaa !35
  %i.atz = zext i8 %i.aty to i32
  %i.aua = or disjoint i32 %i.atw, %i.atz         ; 4 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  %i.auc = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 %i.aua, ptr %i.auc, align 4, !tbaa !77
  store i32 %i.aua, ptr %i.aub, align 8, !tbaa !77
  %i.aud = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  br label %bb.jw

bb.jp:                                            ; preds = %.preheader10580, %.preheader10580
  %i.aue = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  store i32 0, ptr %i.aue, align 8, !tbaa !77
  %i.auf = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !35
  %i.auh = zext i8 %i.aug to i32
  %i.aui = shl nuw nsw i32 %i.auh, 8
  %i.auj = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !35
  %i.aul = zext i8 %i.auk to i32
  %i.aum = or disjoint i32 %i.aui, %i.aul         ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 %i.aum, ptr %i.aun, align 4, !tbaa !77
  %i.auo = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  br label %bb.jw

bb.jq:                                            ; preds = %.preheader10580, %.preheader10580
  %i.aup = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  store i32 0, ptr %i.aup, align 8, !tbaa !77
  %i.auq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !35
  %i.aus = zext i8 %i.aur to i32
  %i.aut = shl nuw nsw i32 %i.aus, 8
  %i.auu = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !35
  %i.auw = zext i8 %i.auv to i32
  %i.aux = or disjoint i32 %i.aut, %i.auw         ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 %i.aux, ptr %i.auy, align 4, !tbaa !77
  %i.auz = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  br label %bb.jw

bb.jr:                                            ; preds = %.preheader10580, %.preheader10580
  %i.ava = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  store i32 0, ptr %i.ava, align 8, !tbaa !77
  %i.avb = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 -1, ptr %i.avb, align 4, !tbaa !77
  %i.avc = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  br label %bb.jw

bb.js:                                            ; preds = %.preheader10580, %.preheader10580
  %i.avd = getelementptr inbounds nuw i8, ptr %.47548, i64 56
end_hunk_0
begin_hunk_1_@match:bb.a
  %i.avw = zext i8 %i.avv to i64
  %i.avx = icmp samesign ugt i8 %i.dq, 71
  %.neg9274 = select i1 %i.avx, i64 4294967224, i64 4294967237
  %i.avy = add nuw nsw i64 %.neg9274, %i.avw
  %i.avz = and i64 %i.avy, 4294967295             ; 3 uses
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr @rep_min, i64 %i.avz
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !77 ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  store i32 %i.awb, ptr %i.awc, align 8, !tbaa !77
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr @rep_max, i64 %i.avz
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !77 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 %i.awe, ptr %i.awf, align 4, !tbaa !77
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr @rep_typ, i64 %i.avz
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !77
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo
  %i.awi = phi i32 [ %i.aua, %bb.jo ], [ %i.aum, %bb.jp ], [ %i.aux, %bb.jq ], [ -1, %bb.jr ], [ -1, %bb.js ], [ 1, %bb.jt ], [ %i.avr, %bb.ju ], [ %i.awe, %bb.jv ] ; 8 uses
  %i.awj = phi i32 [ %i.aua, %bb.jo ], [ 0, %bb.jp ], [ 0, %bb.jq ], [ 0, %bb.jr ], [ 1, %bb.js ], [ 0, %bb.jt ], [ 0, %bb.ju ], [ %i.awb, %bb.jv ] ; 14 uses
  %i.awk = phi ptr [ %i.aud, %bb.jo ], [ %i.auo, %bb.jp ], [ %i.auz, %bb.jq ], [ %i.avc, %bb.jr ], [ %i.avf, %bb.js ], [ %i.avi, %bb.jt ], [ %i.avt, %bb.ju ], [ %i.avu, %bb.jv ] ; 13 uses
  %.107973 = phi i32 [ %.27965, %bb.jo ], [ 1, %bb.jp ], [ 0, %bb.jq ], [ 2, %bb.jr ], [ 2, %bb.js ], [ 2, %bb.jt ], [ 2, %bb.ju ], [ %i.awh, %bb.jv ] ; 28 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 1 ; 4 uses
  store ptr %i.awl, ptr %.47548, align 8, !tbaa !130
  %i.awm = load i8, ptr %i.awk, align 1, !tbaa !35 ; 2 uses
  %i.awn = zext i8 %i.awm to i32                  ; 11 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %.47548, i64 64 ; 6 uses
  store i32 %i.awn, ptr %i.awo, align 8, !tbaa !77
  %i.awp = icmp ugt i8 %i.awm, -65
  %or.cond = select i1 %i.i, i1 %i.awp, i1 false
  br i1 %or.cond, label %bb.jx, label %bb.kg

bb.jx:                                            ; preds = %bb.jw
  %i.awq = and i32 %i.awn, 32
  %i.awr = icmp eq i32 %i.awq, 0
  br i1 %i.awr, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  %i.aws = shl nuw nsw i32 %i.awn, 6
  %i.awt = and i32 %i.aws, 1984
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 2 ; 2 uses
  store ptr %i.awu, ptr %.47548, align 8, !tbaa !130
  %i.awv = load i8, ptr %i.awl, align 1, !tbaa !35
  %i.aww = and i8 %i.awv, 63
  %i.awx = zext nneg i8 %i.aww to i32
  %i.awy = or disjoint i32 %i.awt, %i.awx         ; 2 uses
  store i32 %i.awy, ptr %i.awo, align 8, !tbaa !77
  br label %bb.kg

bb.jz:                                            ; preds = %bb.jx
  %i.awz = and i32 %i.awn, 16
  %i.axa = icmp eq i32 %i.awz, 0
  %i.axb = load i8, ptr %i.awl, align 1, !tbaa !35
  %i.axc = and i8 %i.axb, 63
  %i.axd = zext nneg i8 %i.axc to i32             ; 4 uses
  br i1 %i.axa, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.axe = shl nuw nsw i32 %i.awn, 12
  %i.axf = and i32 %i.axe, 61440
  %i.axg = shl nuw nsw i32 %i.axd, 6
  %i.axh = or disjoint i32 %i.axg, %i.axf
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awk, i64 2
  %i.axj = load i8, ptr %i.axi, align 1, !tbaa !35
  %i.axk = and i8 %i.axj, 63
  %i.axl = zext nneg i8 %i.axk to i32
  %i.axm = or disjoint i32 %i.axh, %i.axl         ; 2 uses
  store i32 %i.axm, ptr %i.awo, align 8, !tbaa !77
  %i.axn = getelementptr inbounds nuw i8, ptr %i.awk, i64 3 ; 2 uses
  store ptr %i.axn, ptr %.47548, align 8, !tbaa !130
  br label %bb.kg

bb.kb:                                            ; preds = %bb.jz
  %i.axo = and i32 %i.awn, 8
  %i.axp = icmp eq i32 %i.axo, 0
  br i1 %i.axp, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.axq = shl nuw nsw i32 %i.awn, 18
  %i.axr = and i32 %i.axq, 1835008
  %i.axs = shl nuw nsw i32 %i.axd, 12
  %i.axt = or disjoint i32 %i.axs, %i.axr
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awk, i64 2
  %i.axv = load i8, ptr %i.axu, align 1, !tbaa !35
  %i.axw = and i8 %i.axv, 63
  %i.axx = zext nneg i8 %i.axw to i32
  %i.axy = shl nuw nsw i32 %i.axx, 6
  %i.axz = or disjoint i32 %i.axt, %i.axy
  %i.aya = getelementptr inbounds nuw i8, ptr %i.awk, i64 3
  %i.ayb = load i8, ptr %i.aya, align 1, !tbaa !35
  %i.ayc = and i8 %i.ayb, 63
  %i.ayd = zext nneg i8 %i.ayc to i32
  %i.aye = or disjoint i32 %i.axz, %i.ayd         ; 2 uses
  store i32 %i.aye, ptr %i.awo, align 8, !tbaa !77
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.awk, i64 4 ; 2 uses
  store ptr %i.ayf, ptr %.47548, align 8, !tbaa !130
  br label %bb.kg

bb.kd:                                            ; preds = %bb.kb
  %i.ayg = and i32 %i.awn, 4
  %i.ayh = icmp eq i32 %i.ayg, 0
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.awk, i64 2
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !35
  %i.ayk = and i8 %i.ayj, 63
  %i.ayl = zext nneg i8 %i.ayk to i32             ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %i.awk, i64 3
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !35
  %i.ayo = and i8 %i.ayn, 63
  %i.ayp = zext nneg i8 %i.ayo to i32             ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !35
  %i.ays = and i8 %i.ayr, 63
  %i.ayt = zext nneg i8 %i.ays to i32             ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.awk, i64 5 ; 3 uses
  br i1 %i.ayh, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.ayv = shl nuw i32 %i.awn, 24
  %i.ayw = and i32 %i.ayv, 50331648
  %i.ayx = shl nuw nsw i32 %i.axd, 18
  %i.ayy = or disjoint i32 %i.ayx, %i.ayw
  %i.ayz = shl nuw nsw i32 %i.ayl, 12
  %i.aza = or disjoint i32 %i.ayy, %i.ayz
  %i.azb = shl nuw nsw i32 %i.ayp, 6
  %i.azc = or disjoint i32 %i.aza, %i.azb
  %i.azd = or disjoint i32 %i.azc, %i.ayt         ; 2 uses
  store i32 %i.azd, ptr %i.awo, align 8, !tbaa !77
  store ptr %i.ayu, ptr %.47548, align 8, !tbaa !130
  br label %bb.kg

bb.kf:                                            ; preds = %bb.kd
  %i.aze = shl i32 %i.awn, 30
  %i.azf = and i32 %i.aze, 1073741824
  %i.azg = shl nuw nsw i32 %i.axd, 24
  %i.azh = or disjoint i32 %i.azg, %i.azf
  %i.azi = shl nuw nsw i32 %i.ayl, 18
  %i.azj = or disjoint i32 %i.azh, %i.azi
  %i.azk = shl nuw nsw i32 %i.ayp, 12
  %i.azl = or disjoint i32 %i.azj, %i.azk
  %i.azm = shl nuw nsw i32 %i.ayt, 6
  %i.azn = or disjoint i32 %i.azl, %i.azm
  %i.azo = load i8, ptr %i.ayu, align 1, !tbaa !35
  %i.azp = and i8 %i.azo, 63
  %i.azq = zext nneg i8 %i.azp to i32
  %i.azr = or disjoint i32 %i.azn, %i.azq         ; 2 uses
  store i32 %i.azr, ptr %i.awo, align 8, !tbaa !77
  %i.azs = getelementptr inbounds nuw i8, ptr %i.awk, i64 6 ; 2 uses
  store ptr %i.azs, ptr %.47548, align 8, !tbaa !130
  br label %bb.kg

bb.kg:                                            ; preds = %bb.jy, %bb.kc, %bb.kf, %bb.ke, %bb.ka, %bb.jw
  %i.azt = phi ptr [ %i.awu, %bb.jy ], [ %i.ayf, %bb.kc ], [ %i.azs, %bb.kf ], [ %i.ayu, %bb.ke ], [ %i.axn, %bb.ka ], [ %i.awl, %bb.jw ] ; 2 uses
  %i.azu = phi i32 [ %i.awy, %bb.jy ], [ %i.aye, %bb.kc ], [ %i.azr, %bb.kf ], [ %i.azd, %bb.ke ], [ %i.axm, %bb.ka ], [ %i.awn, %bb.jw ] ; 13 uses
  %i.azv = icmp samesign ugt i8 %i.dq, 71
  br i1 %i.azv, label %bb.kh, label %bb.no

bb.kh:                                            ; preds = %bb.kg
  %i.azw = icmp samesign ugt i32 %i.azu, 127
  %or.cond16518 = select i1 %or.cond12.not, i1 %i.azw, i1 false
  br i1 %or.cond16518, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.azx = lshr i32 %i.azu, 7
  %i.azy = zext nneg i32 %i.azx to i64
  %i.azz = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.azy
  %i.baa = load i16, ptr %i.azz, align 2, !tbaa !88
  %i.bab = zext i16 %i.baa to i32
  %i.bac = shl nuw nsw i32 %i.bab, 7
  %i.bad = and i32 %i.azu, 127
  %i.bae = or disjoint i32 %i.bac, %i.bad
  %i.baf = zext nneg i32 %i.bae to i64
  %i.bag = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.baf
  %i.bah = load i16, ptr %i.bag, align 2, !tbaa !88
  %i.bai = zext i16 %i.bah to i64
  %i.baj = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.bai
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 4
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !89
  %i.bam = add nsw i32 %i.bal, %i.azu
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh
  %i.ban = load ptr, ptr %i.az, align 8, !tbaa !85
  %i.bao = zext nneg i32 %i.azu to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %i.ban, i64 %i.bao
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !35
  %i.bar = zext i8 %i.baq to i32
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %bb.ki
  %.sink16519 = phi i32 [ %i.bar, %bb.kj ], [ %i.bam, %bb.ki ] ; 5 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %.47548, i64 68
  store i32 %.sink16519, ptr %i.bas, align 4, !tbaa !77
  %.not929612365 = icmp eq i32 %i.awj, 0          ; 2 uses
  br i1 %i.i, label %.preheader10366, label %.preheader10368

.preheader10368:                                  ; preds = %bb.kk
  br i1 %.not929612365, label %.thread9708, label %.lr.ph12363

.lr.ph12363:                                      ; preds = %.preheader10368
  %i.bat = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.bau = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12364 = load ptr, ptr %i.bat, align 8, !tbaa !122 ; 3 uses
  %.not929318037 = icmp ult ptr %.promoted12364, %i.bau
  br i1 %.not929318037, label %.lr.ph18039, label %._crit_edge18040

.preheader10366:                                  ; preds = %bb.kk
  br i1 %.not929612365, label %.thread9708, label %.lr.ph12367

.lr.ph12367:                                      ; preds = %.preheader10366
  %i.bav = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 7 uses
  %i.baw = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.promoted12368 = load ptr, ptr %i.bav, align 8, !tbaa !122
  br label %bb.km

bb.kl:                                            ; preds = %bb.lb
  %i.bax = add i32 %.7811812366, 1                ; 2 uses
  %.not9296 = icmp ugt i32 %i.bax, %i.awj
  br i1 %.not9296, label %.thread9708, label %bb.km, !llvm.loop !147

bb.km:                                            ; preds = %.lr.ph12367, %bb.kl
  %i.bay = phi ptr [ %.promoted12368, %.lr.ph12367 ], [ %i.bel, %bb.kl ] ; 16 uses
  %.7811812366 = phi i32 [ 1, %.lr.ph12367 ], [ %i.bax, %bb.kl ]
  %.not9297 = icmp ult ptr %i.bay, %i.baw
  br i1 %.not9297, label %bb.kr, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.baz = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9298 = icmp eq i16 %i.baz, 0
  br i1 %.not9298, label %.preheader10324.preheader, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bba = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.bbb = icmp ugt ptr %i.bay, %i.bba
  br i1 %i.bbb, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bbc = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9299 = icmp eq i32 %i.bbc, 0
  br i1 %.not9299, label %.preheader10324.preheader, label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10256 = icmp eq i16 %i.baz, 1
  br i1 %.not10256, label %.preheader10324.preheader, label %.thread9657

bb.kr:                                            ; preds = %bb.km
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bay, i64 1 ; 4 uses
  store ptr %i.bbd, ptr %i.bav, align 8, !tbaa !122
  %i.bbe = load i8, ptr %i.bay, align 1, !tbaa !35 ; 2 uses
  %i.bbf = zext i8 %i.bbe to i32                  ; 10 uses
  %i.bbg = icmp ugt i8 %i.bbe, -65
  br i1 %i.bbg, label %bb.ks, label %bb.lb

bb.ks:                                            ; preds = %bb.kr
  %i.bbh = and i32 %i.bbf, 32
  %i.bbi = icmp eq i32 %i.bbh, 0
  br i1 %i.bbi, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bbj = shl nuw nsw i32 %i.bbf, 6
  %i.bbk = and i32 %i.bbj, 1984
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bay, i64 2 ; 2 uses
  store ptr %i.bbl, ptr %i.bav, align 8, !tbaa !122
  %i.bbm = load i8, ptr %i.bbd, align 1, !tbaa !35
  %i.bbn = and i8 %i.bbm, 63
  %i.bbo = zext nneg i8 %i.bbn to i32
  %i.bbp = or disjoint i32 %i.bbk, %i.bbo
  br label %bb.lb

bb.ku:                                            ; preds = %bb.ks
  %i.bbq = and i32 %i.bbf, 16
  %i.bbr = icmp eq i32 %i.bbq, 0
  %i.bbs = load i8, ptr %i.bbd, align 1, !tbaa !35
  %i.bbt = and i8 %i.bbs, 63
  %i.bbu = zext nneg i8 %i.bbt to i32             ; 4 uses
  br i1 %i.bbr, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.bbv = shl nuw nsw i32 %i.bbf, 12
  %i.bbw = and i32 %i.bbv, 61440
  %i.bbx = shl nuw nsw i32 %i.bbu, 6
  %i.bby = or disjoint i32 %i.bbx, %i.bbw
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bay, i64 2
  %i.bca = load i8, ptr %i.bbz, align 1, !tbaa !35
  %i.bcb = and i8 %i.bca, 63
  %i.bcc = zext nneg i8 %i.bcb to i32
  %i.bcd = or disjoint i32 %i.bby, %i.bcc
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bay, i64 3 ; 2 uses
  store ptr %i.bce, ptr %i.bav, align 8, !tbaa !122
  br label %bb.lb

bb.kw:                                            ; preds = %bb.ku
  %i.bcf = and i32 %i.bbf, 8
  %i.bcg = icmp eq i32 %i.bcf, 0
  br i1 %i.bcg, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.bch = shl nuw nsw i32 %i.bbf, 18
  %i.bci = and i32 %i.bch, 1835008
  %i.bcj = shl nuw nsw i32 %i.bbu, 12
  %i.bck = or disjoint i32 %i.bcj, %i.bci
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bay, i64 2
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !35
  %i.bcn = and i8 %i.bcm, 63
  %i.bco = zext nneg i8 %i.bcn to i32
  %i.bcp = shl nuw nsw i32 %i.bco, 6
  %i.bcq = or disjoint i32 %i.bck, %i.bcp
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bay, i64 3
  %i.bcs = load i8, ptr %i.bcr, align 1, !tbaa !35
  %i.bct = and i8 %i.bcs, 63
  %i.bcu = zext nneg i8 %i.bct to i32
  %i.bcv = or disjoint i32 %i.bcq, %i.bcu
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bay, i64 4 ; 2 uses
  store ptr %i.bcw, ptr %i.bav, align 8, !tbaa !122
  br label %bb.lb

bb.ky:                                            ; preds = %bb.kw
  %i.bcx = and i32 %i.bbf, 4
  %i.bcy = icmp eq i32 %i.bcx, 0
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bay, i64 2
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !35
  %i.bdb = and i8 %i.bda, 63
  %i.bdc = zext nneg i8 %i.bdb to i32             ; 2 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bay, i64 3
  %i.bde = load i8, ptr %i.bdd, align 1, !tbaa !35
  %i.bdf = and i8 %i.bde, 63
  %i.bdg = zext nneg i8 %i.bdf to i32             ; 2 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bay, i64 4
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !35
  %i.bdj = and i8 %i.bdi, 63
  %i.bdk = zext nneg i8 %i.bdj to i32             ; 2 uses
  br i1 %i.bcy, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.bdl = shl nuw i32 %i.bbf, 24
  %i.bdm = and i32 %i.bdl, 50331648
  %i.bdn = shl nuw nsw i32 %i.bbu, 18
  %i.bdo = or disjoint i32 %i.bdn, %i.bdm
  %i.bdp = shl nuw nsw i32 %i.bdc, 12
  %i.bdq = or disjoint i32 %i.bdo, %i.bdp
  %i.bdr = shl nuw nsw i32 %i.bdg, 6
  %i.bds = or disjoint i32 %i.bdq, %i.bdr
  %i.bdt = or disjoint i32 %i.bds, %i.bdk
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bay, i64 5 ; 2 uses
  store ptr %i.bdu, ptr %i.bav, align 8, !tbaa !122
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky
  %i.bdv = shl i32 %i.bbf, 30
  %i.bdw = and i32 %i.bdv, 1073741824
  %i.bdx = shl nuw nsw i32 %i.bbu, 24
  %i.bdy = or disjoint i32 %i.bdx, %i.bdw
  %i.bdz = shl nuw nsw i32 %i.bdc, 18
  %i.bea = or disjoint i32 %i.bdy, %i.bdz
  %i.beb = shl nuw nsw i32 %i.bdg, 12
  %i.bec = or disjoint i32 %i.bea, %i.beb
  %i.bed = shl nuw nsw i32 %i.bdk, 6
  %i.bee = or disjoint i32 %i.bec, %i.bed
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bay, i64 5
  %i.beg = load i8, ptr %i.bef, align 1, !tbaa !35
  %i.beh = and i8 %i.beg, 63
  %i.bei = zext nneg i8 %i.beh to i32
  %i.bej = or disjoint i32 %i.bee, %i.bei
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bay, i64 6 ; 2 uses
  store ptr %i.bek, ptr %i.bav, align 8, !tbaa !122
  br label %bb.lb

bb.lb:                                            ; preds = %bb.kt, %bb.kx, %bb.la, %bb.kz, %bb.kv, %bb.kr
  %i.bel = phi ptr [ %i.bbl, %bb.kt ], [ %i.bce, %bb.kv ], [ %i.bcw, %bb.kx ], [ %i.bdu, %bb.kz ], [ %i.bek, %bb.la ], [ %i.bbd, %bb.kr ]
  %.07770 = phi i32 [ %i.bbp, %bb.kt ], [ %i.bcd, %bb.kv ], [ %i.bcv, %bb.kx ], [ %i.bdt, %bb.kz ], [ %i.bej, %bb.la ], [ %i.bbf, %bb.kr ] ; 2 uses
  %i.bem = icmp eq i32 %i.azu, %.07770
  %i.ben = icmp eq i32 %.sink16519, %.07770
  %or.cond16521 = select i1 %i.bem, i1 true, i1 %i.ben
  br i1 %or.cond16521, label %.preheader10324.preheader, label %bb.kl

bb.lc:                                            ; preds = %bb.lg
  %.not9293 = icmp ult ptr %i.bew, %i.bau
  br i1 %.not9293, label %.lr.ph18039, label %._crit_edge18040, !llvm.loop !148

._crit_edge18040:                                 ; preds = %bb.lc, %.lr.ph12363
  %.lcssa16920 = phi ptr [ %.promoted12364, %.lr.ph12363 ], [ %i.bew, %bb.lc ]
  %i.beo = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9294 = icmp eq i16 %i.beo, 0
  br i1 %.not9294, label %.preheader10324.preheader, label %bb.ld

bb.ld:                                            ; preds = %._crit_edge18040
  %i.bep = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.beq = icmp ugt ptr %.lcssa16920, %i.bep
  br i1 %i.beq, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ber = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9295 = icmp eq i32 %i.ber, 0
  br i1 %.not9295, label %.preheader10324.preheader, label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10255 = icmp eq i16 %i.beo, 1
  br i1 %.not10255, label %.preheader10324.preheader, label %.thread9657

.lr.ph18039:                                      ; preds = %.lr.ph12363, %bb.lc
  %.881191236218038 = phi i32 [ %i.bex, %bb.lc ], [ 1, %.lr.ph12363 ]
  %8 = phi ptr [ %i.bew, %bb.lc ], [ %.promoted12364, %.lr.ph12363 ] ; 2 uses
  %i.bes = load i8, ptr %8, align 1, !tbaa !35
  %i.bet = zext i8 %i.bes to i32                  ; 2 uses
  %i.beu = icmp eq i32 %i.azu, %i.bet
  %i.bev = icmp eq i32 %.sink16519, %i.bet
  %or.cond16522 = select i1 %i.beu, i1 true, i1 %i.bev
  br i1 %or.cond16522, label %.preheader10324.preheader, label %bb.lg

bb.lg:                                            ; preds = %.lr.ph18039
  %i.bew = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 4 uses
  store ptr %i.bew, ptr %i.bat, align 8, !tbaa !122
  %i.bex = add i32 %.881191236218038, 1           ; 2 uses
  %.not9292 = icmp ugt i32 %i.bex, %i.awj
  br i1 %.not9292, label %.thread9708, label %bb.lc, !llvm.loop !148

.thread9708:                                      ; preds = %bb.lg, %bb.kl, %.preheader10368, %.preheader10366
  %i.bey = icmp eq i32 %i.awj, %i.awi
  br i1 %i.bey, label %.preheader10580.backedge, label %bb.lh

bb.lh:                                            ; preds = %.thread9708
  %i.bez = icmp eq i32 %.107973, 0
  br i1 %i.bez, label %.loopexit10589, label %bb.mj

.loopexit10341.loopexit:                          ; preds = %bb.lz
  %.pre14161 = load ptr, ptr %i.sgy, align 8, !tbaa !130
  br label %.loopexit10589

bb.li:                                            ; preds = %bb.cxt
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.bfb = load i32, ptr %i.bfa, align 8, !tbaa !77 ; 2 uses
  %i.bfc = add i32 %i.bfb, 1
  store i32 %i.bfc, ptr %i.bfa, align 8, !tbaa !77
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !77
  %.not9498 = icmp ult i32 %i.bfb, %i.bfe
  br i1 %.not9498, label %bb.lj, label %.backedge.backedge

bb.lj:                                            ; preds = %bb.li
  %i.bff = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 7 uses
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !122 ; 16 uses
  %i.bfh = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not9499 = icmp ult ptr %i.bfg, %i.bfh
  br i1 %.not9499, label %bb.lo, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bfi = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9500 = icmp eq i16 %i.bfi, 0
  br i1 %.not9500, label %.backedge.backedge, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bfj = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.bfk = icmp ugt ptr %i.bfg, %i.bfj
  br i1 %i.bfk, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bfl = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9501 = icmp eq i32 %i.bfl, 0
  br i1 %.not9501, label %.backedge.backedge, label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10293 = icmp eq i16 %i.bfi, 1
  br i1 %.not10293, label %.backedge.backedge, label %.thread9657

bb.lo:                                            ; preds = %bb.lj
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfg, i64 1 ; 3 uses
  store ptr %i.bfm, ptr %i.bff, align 8, !tbaa !122
  %i.bfn = load i8, ptr %i.bfg, align 1, !tbaa !35 ; 2 uses
  %i.bfo = zext i8 %i.bfn to i32                  ; 10 uses
  %i.bfp = icmp ugt i8 %i.bfn, -65
  br i1 %i.bfp, label %bb.lp, label %bb.ly

bb.lp:                                            ; preds = %bb.lo
  %i.bfq = and i32 %i.bfo, 32
  %i.bfr = icmp eq i32 %i.bfq, 0
  br i1 %i.bfr, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.bfs = shl nuw nsw i32 %i.bfo, 6
  %i.bft = and i32 %i.bfs, 1984
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bfg, i64 2
  store ptr %i.bfu, ptr %i.bff, align 8, !tbaa !122
  %i.bfv = load i8, ptr %i.bfm, align 1, !tbaa !35
  %i.bfw = and i8 %i.bfv, 63
  %i.bfx = zext nneg i8 %i.bfw to i32
  %i.bfy = or disjoint i32 %i.bft, %i.bfx
  br label %bb.ly

bb.lr:                                            ; preds = %bb.lp
  %i.bfz = and i32 %i.bfo, 16
  %i.bga = icmp eq i32 %i.bfz, 0
  %i.bgb = load i8, ptr %i.bfm, align 1, !tbaa !35
  %i.bgc = and i8 %i.bgb, 63
  %i.bgd = zext nneg i8 %i.bgc to i32             ; 4 uses
  br i1 %i.bga, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.bge = shl nuw nsw i32 %i.bfo, 12
  %i.bgf = and i32 %i.bge, 61440
  %i.bgg = shl nuw nsw i32 %i.bgd, 6
  %i.bgh = or disjoint i32 %i.bgg, %i.bgf
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.bfg, i64 2
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !35
  %i.bgk = and i8 %i.bgj, 63
  %i.bgl = zext nneg i8 %i.bgk to i32
  %i.bgm = or disjoint i32 %i.bgh, %i.bgl
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bfg, i64 3
  store ptr %i.bgn, ptr %i.bff, align 8, !tbaa !122
  br label %bb.ly

bb.lt:                                            ; preds = %bb.lr
  %i.bgo = and i32 %i.bfo, 8
  %i.bgp = icmp eq i32 %i.bgo, 0
  br i1 %i.bgp, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %bb.lt
  %i.bgq = shl nuw nsw i32 %i.bfo, 18
  %i.bgr = and i32 %i.bgq, 1835008
  %i.bgs = shl nuw nsw i32 %i.bgd, 12
  %i.bgt = or disjoint i32 %i.bgs, %i.bgr
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bfg, i64 2
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !35
  %i.bgw = and i8 %i.bgv, 63
  %i.bgx = zext nneg i8 %i.bgw to i32
  %i.bgy = shl nuw nsw i32 %i.bgx, 6
  %i.bgz = or disjoint i32 %i.bgt, %i.bgy
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bfg, i64 3
  %i.bhb = load i8, ptr %i.bha, align 1, !tbaa !35
  %i.bhc = and i8 %i.bhb, 63
  %i.bhd = zext nneg i8 %i.bhc to i32
  %i.bhe = or disjoint i32 %i.bgz, %i.bhd
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bfg, i64 4
  store ptr %i.bhf, ptr %i.bff, align 8, !tbaa !122
  br label %bb.ly

bb.lv:                                            ; preds = %bb.lt
  %i.bhg = and i32 %i.bfo, 4
  %i.bhh = icmp eq i32 %i.bhg, 0
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bfg, i64 2
  %i.bhj = load i8, ptr %i.bhi, align 1, !tbaa !35
  %i.bhk = and i8 %i.bhj, 63
  %i.bhl = zext nneg i8 %i.bhk to i32             ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bfg, i64 3
  %i.bhn = load i8, ptr %i.bhm, align 1, !tbaa !35
  %i.bho = and i8 %i.bhn, 63
  %i.bhp = zext nneg i8 %i.bho to i32             ; 2 uses
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.bfg, i64 4
  %i.bhr = load i8, ptr %i.bhq, align 1, !tbaa !35
  %i.bhs = and i8 %i.bhr, 63
  %i.bht = zext nneg i8 %i.bhs to i32             ; 2 uses
  br i1 %i.bhh, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.bhu = shl nuw i32 %i.bfo, 24
  %i.bhv = and i32 %i.bhu, 50331648
  %i.bhw = shl nuw nsw i32 %i.bgd, 18
  %i.bhx = or disjoint i32 %i.bhw, %i.bhv
  %i.bhy = shl nuw nsw i32 %i.bhl, 12
  %i.bhz = or disjoint i32 %i.bhx, %i.bhy
  %i.bia = shl nuw nsw i32 %i.bhp, 6
  %i.bib = or disjoint i32 %i.bhz, %i.bia
  %i.bic = or disjoint i32 %i.bib, %i.bht
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bfg, i64 5
  store ptr %i.bid, ptr %i.bff, align 8, !tbaa !122
  br label %bb.ly

bb.lx:                                            ; preds = %bb.lv
  %i.bie = shl i32 %i.bfo, 30
  %i.bif = and i32 %i.bie, 1073741824
  %i.big = shl nuw nsw i32 %i.bgd, 24
  %i.bih = or disjoint i32 %i.big, %i.bif
  %i.bii = shl nuw nsw i32 %i.bhl, 18
  %i.bij = or disjoint i32 %i.bih, %i.bii
  %i.bik = shl nuw nsw i32 %i.bhp, 12
  %i.bil = or disjoint i32 %i.bij, %i.bik
  %i.bim = shl nuw nsw i32 %i.bht, 6
  %i.bin = or disjoint i32 %i.bil, %i.bim
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bfg, i64 5
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !35
  %i.biq = and i8 %i.bip, 63
  %i.bir = zext nneg i8 %i.biq to i32
  %i.bis = or disjoint i32 %i.bin, %i.bir
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bfg, i64 6
  store ptr %i.bit, ptr %i.bff, align 8, !tbaa !122
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lq, %bb.lu, %bb.lx, %bb.lw, %bb.ls, %bb.lo
  %.07769 = phi i32 [ %i.bfy, %bb.lq ], [ %i.bgm, %bb.ls ], [ %i.bhe, %bb.lu ], [ %i.bic, %bb.lw ], [ %i.bis, %bb.lx ], [ %i.bfo, %bb.lo ] ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %i.sgy, i64 64
  %i.biv = load i32, ptr %i.biu, align 8, !tbaa !77
  %i.biw = icmp eq i32 %i.biv, %.07769
  br i1 %i.biw, label %.backedge.backedge, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.bix = getelementptr inbounds nuw i8, ptr %i.sgy, i64 68
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !77
  %i.biz = icmp eq i32 %i.biy, %.07769
  br i1 %i.biz, label %.backedge.backedge, label %.loopexit10341.loopexit

bb.ma:                                            ; preds = %bb.cxf
  %i.bja = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.bjb = load i32, ptr %i.bja, align 8, !tbaa !77 ; 2 uses
  %i.bjc = add i32 %i.bjb, 1
  store i32 %i.bjc, ptr %i.bja, align 8, !tbaa !77
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !77
  %.not9556 = icmp ult i32 %i.bjb, %i.bje
  br i1 %.not9556, label %bb.mb, label %.backedge.backedge

bb.mb:                                            ; preds = %bb.ma
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !122 ; 4 uses
  %i.bjh = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not9557 = icmp ult ptr %i.bjg, %i.bjh
end_hunk_1
begin_hunk_2_@match:bb.a
  %i.blf = icmp eq i32 %i.ble, 0
  br i1 %i.blf, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %bb.mu
  %i.blg = shl nuw nsw i32 %i.bki, 18
  %i.blh = and i32 %i.blg, 1835008
  %i.bli = shl nuw nsw i32 %i.bkp, 12
  %i.blj = or disjoint i32 %i.bli, %i.blh
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bkc, i64 2
  %i.bll = load i8, ptr %i.blk, align 1, !tbaa !35
  %i.blm = and i8 %i.bll, 63
  %i.bln = zext nneg i8 %i.blm to i32
  %i.blo = shl nuw nsw i32 %i.bln, 6
  %i.blp = or disjoint i32 %i.blj, %i.blo
  %i.blq = getelementptr inbounds nuw i8, ptr %i.bkc, i64 3
  %i.blr = load i8, ptr %i.blq, align 1, !tbaa !35
  %i.bls = and i8 %i.blr, 63
  %i.blt = zext nneg i8 %i.bls to i32
  %i.blu = or disjoint i32 %i.blp, %i.blt
  br label %bb.mz

bb.mw:                                            ; preds = %bb.mu
  %i.blv = and i32 %i.bki, 4
  %i.blw = icmp eq i32 %i.blv, 0
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bkc, i64 2
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !35
  %i.blz = and i8 %i.bly, 63
  %i.bma = zext nneg i8 %i.blz to i32             ; 2 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bkc, i64 3
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !35
  %i.bmd = and i8 %i.bmc, 63
  %i.bme = zext nneg i8 %i.bmd to i32             ; 2 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bkc, i64 4
  %i.bmg = load i8, ptr %i.bmf, align 1, !tbaa !35
  %i.bmh = and i8 %i.bmg, 63
  %i.bmi = zext nneg i8 %i.bmh to i32             ; 2 uses
  br i1 %i.blw, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.bmj = shl nuw i32 %i.bki, 24
  %i.bmk = and i32 %i.bmj, 50331648
  %i.bml = shl nuw nsw i32 %i.bkp, 18
  %i.bmm = or disjoint i32 %i.bml, %i.bmk
  %i.bmn = shl nuw nsw i32 %i.bma, 12
  %i.bmo = or disjoint i32 %i.bmm, %i.bmn
  %i.bmp = shl nuw nsw i32 %i.bme, 6
  %i.bmq = or disjoint i32 %i.bmo, %i.bmp
  %i.bmr = or disjoint i32 %i.bmq, %i.bmi
  br label %bb.mz

bb.my:                                            ; preds = %bb.mw
  %i.bms = shl i32 %i.bki, 30
  %i.bmt = and i32 %i.bms, 1073741824
  %i.bmu = shl nuw nsw i32 %i.bkp, 24
  %i.bmv = or disjoint i32 %i.bmu, %i.bmt
  %i.bmw = shl nuw nsw i32 %i.bma, 18
  %i.bmx = or disjoint i32 %i.bmv, %i.bmw
  %i.bmy = shl nuw nsw i32 %i.bme, 12
  %i.bmz = or disjoint i32 %i.bmx, %i.bmy
  %i.bna = shl nuw nsw i32 %i.bmi, 6
  %i.bnb = or disjoint i32 %i.bmz, %i.bna
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bkc, i64 5
  %i.bnd = load i8, ptr %i.bnc, align 1, !tbaa !35
  %i.bne = and i8 %i.bnd, 63
  %i.bnf = zext nneg i8 %i.bne to i32
  %i.bng = or disjoint i32 %i.bnb, %i.bnf
  br label %bb.mz

bb.mz:                                            ; preds = %bb.mr, %bb.mv, %bb.my, %bb.mx, %bb.mt, %bb.mp
  %.07768 = phi i32 [ %i.bks, %bb.mr ], [ %i.bld, %bb.mt ], [ %i.blu, %bb.mv ], [ %i.bmr, %bb.mx ], [ %i.bng, %bb.my ], [ %i.bki, %bb.mp ] ; 2 uses
  %.07767 = phi i64 [ 2, %bb.mr ], [ 3, %bb.mt ], [ 4, %bb.mv ], [ 5, %bb.mx ], [ 6, %bb.my ], [ 1, %bb.mp ]
  %i.bnh = icmp eq i32 %i.azu, %.07768
  %i.bni = icmp eq i32 %.sink16519, %.07768
  %or.cond16523 = select i1 %i.bnh, i1 true, i1 %i.bni
  br i1 %or.cond16523, label %.thread9713, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bkc, i64 %.07767 ; 3 uses
  store ptr %i.bnj, ptr %i.bjw, align 8, !tbaa !122
  %i.bnk = add nuw i32 %.9812012374, 1            ; 2 uses
  %exitcond14087.not = icmp eq i32 %i.bnk, %i.awi
  br i1 %exitcond14087.not, label %.thread9713, label %bb.mk, !llvm.loop !149

.thread9713:                                      ; preds = %bb.na, %bb.mz, %.preheader10363, %bb.ml, %bb.mn, %bb.mo
  %i.bnl = phi ptr [ %i.bkc, %bb.mo ], [ %i.bjx, %.preheader10363 ], [ %i.bkc, %bb.ml ], [ %i.bkc, %bb.mn ], [ %i.bnj, %bb.na ], [ %i.bkc, %bb.mz ]
  %.not9307 = icmp eq i32 %.107973, 2
  br i1 %.not9307, label %.preheader10580.backedge, label %.loopexit10318

.loopexit10318.loopexit:                          ; preds = %bb.nd
  %.phi.trans.insert14159 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14160 = load ptr, ptr %.phi.trans.insert14159, align 8, !tbaa !134
  br label %.loopexit10318

.loopexit10318:                                   ; preds = %.loopexit10318.loopexit, %.thread9713
  %i.bnm = phi ptr [ %i.bjx, %.thread9713 ], [ %.pre14160, %.loopexit10318.loopexit ]
  %i.bnn = phi ptr [ %i.bnl, %.thread9713 ], [ %storemerge9494, %.loopexit10318.loopexit ]
  %.137976 = phi i32 [ %.107973, %.thread9713 ], [ %.658028.ph.ph, %.loopexit10318.loopexit ] ; 2 uses
  %.117708 = phi ptr [ %.27699, %.thread9713 ], [ %.607757.ph.ph, %.loopexit10318.loopexit ] ; 2 uses
  %.117648 = phi ptr [ %.27639, %.thread9713 ], [ %.597696.ph.ph, %.loopexit10318.loopexit ] ; 2 uses
  %.87614 = phi ptr [ %.37609, %.thread9713 ], [ %.257631.ph.ph, %.loopexit10318.loopexit ]
  %.137557 = phi ptr [ %.47548, %.thread9713 ], [ %i.sgy, %.loopexit10318.loopexit ] ; 3 uses
  %.not9495 = icmp ugt ptr %i.bnn, %i.bnm
  br i1 %.not9495, label %bb.nb, label %.preheader10580.backedge

bb.nb:                                            ; preds = %.loopexit10318
  %i.bno = load ptr, ptr %.137557, align 8, !tbaa !130
  br label %.loopexit10589

bb.nc:                                            ; preds = %bb.cxu
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !122
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nd, %bb.nc
  %.pn9496 = phi ptr [ %i.bnq, %bb.nc ], [ %storemerge9494, %bb.nd ]
  %storemerge9494 = getelementptr inbounds i8, ptr %.pn9496, i64 -1 ; 4 uses
  store ptr %storemerge9494, ptr %i.bnp, align 8, !tbaa !122
  %i.bnr = load i8, ptr %storemerge9494, align 1, !tbaa !35
  %i.bns = icmp slt i8 %i.bnr, -64
  br i1 %i.bns, label %bb.nd, label %.loopexit10318.loopexit, !llvm.loop !150

bb.ne:                                            ; preds = %.lr.ph12370, %bb.nk
  %i.bnt = phi ptr [ %i.bjx, %.lr.ph12370 ], [ %i.boc, %bb.nk ] ; 8 uses
  %.10812112369 = phi i32 [ %i.awj, %.lr.ph12370 ], [ %i.bod, %bb.nk ]
  %.not9300 = icmp ult ptr %i.bnt, %i.bka
  br i1 %.not9300, label %bb.nj, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bnu = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9301 = icmp eq i16 %i.bnu, 0
  br i1 %.not9301, label %.loopexit10365, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bnv = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.bnw = icmp ugt ptr %i.bnt, %i.bnv
  br i1 %i.bnw, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bnx = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9302 = icmp eq i32 %i.bnx, 0
  br i1 %.not9302, label %.loopexit10365, label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10257 = icmp eq i16 %i.bnu, 1
  br i1 %.not10257, label %.loopexit10365, label %.thread9657

bb.nj:                                            ; preds = %bb.ne
  %i.bny = load i8, ptr %i.bnt, align 1, !tbaa !35
  %i.bnz = zext i8 %i.bny to i32                  ; 2 uses
  %i.boa = icmp eq i32 %i.azu, %i.bnz
  %i.bob = icmp eq i32 %.sink16519, %i.bnz
  %or.cond16524 = select i1 %i.boa, i1 true, i1 %i.bob
  br i1 %or.cond16524, label %.loopexit10365, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bnt, i64 1 ; 3 uses
  store ptr %i.boc, ptr %i.bjw, align 8, !tbaa !122
  %i.bod = add nuw i32 %.10812112369, 1           ; 2 uses
  %exitcond14086.not = icmp eq i32 %i.bod, %i.awi
  br i1 %exitcond14086.not, label %.loopexit10365, label %bb.ne, !llvm.loop !151

.loopexit10365:                                   ; preds = %bb.nk, %bb.nj, %.preheader10364, %bb.nf, %bb.nh, %bb.ni
  %i.boe = phi ptr [ %i.bnt, %bb.ni ], [ %i.bjx, %.preheader10364 ], [ %i.bnt, %bb.nf ], [ %i.bnt, %bb.nh ], [ %i.boc, %bb.nk ], [ %i.bnt, %bb.nj ]
  %.not9303 = icmp eq i32 %.107973, 2
  br i1 %.not9303, label %.preheader10580.backedge, label %bb.nl

bb.nl:                                            ; preds = %.loopexit10365, %bb.nn
  %i.bof = phi ptr [ %.pre14172, %bb.nn ], [ %i.bjx, %.loopexit10365 ]
  %i.bog = phi ptr [ %i.bol, %bb.nn ], [ %i.boe, %.loopexit10365 ]
  %.147977 = phi i32 [ %.658028.ph.ph, %bb.nn ], [ %.107973, %.loopexit10365 ] ; 2 uses
  %.127709 = phi ptr [ %.607757.ph.ph, %bb.nn ], [ %.27699, %.loopexit10365 ] ; 2 uses
  %.127649 = phi ptr [ %.597696.ph.ph, %bb.nn ], [ %.27639, %.loopexit10365 ] ; 2 uses
  %.97615 = phi ptr [ %.257631.ph.ph, %bb.nn ], [ %.37609, %.loopexit10365 ]
  %.147558 = phi ptr [ %i.sgy, %bb.nn ], [ %.47548, %.loopexit10365 ] ; 3 uses
  %i.boh = icmp eq ptr %i.bog, %i.bof
  br i1 %i.boh, label %.preheader10580.backedge, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.boi = load ptr, ptr %.147558, align 8, !tbaa !130
  br label %.loopexit10589

bb.nn:                                            ; preds = %bb.cxg
  %i.boj = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !122
  %i.bol = getelementptr inbounds i8, ptr %i.bok, i64 -1 ; 2 uses
  store ptr %i.bol, ptr %i.boj, align 8, !tbaa !122
  %.phi.trans.insert14171 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14172 = load ptr, ptr %.phi.trans.insert14171, align 8, !tbaa !134
  br label %bb.nl

bb.no:                                            ; preds = %bb.kg
  %.not927912349 = icmp eq i32 %i.awj, 0          ; 2 uses
  br i1 %i.i, label %.preheader10373, label %.preheader10375

.preheader10375:                                  ; preds = %bb.no
  br i1 %.not927912349, label %.thread9723, label %.lr.ph12347

.lr.ph12347:                                      ; preds = %.preheader10375
  %i.bom = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.bon = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12348 = load ptr, ptr %i.bom, align 8, !tbaa !122 ; 3 uses
  %.not927618032 = icmp ult ptr %.promoted12348, %i.bon
  br i1 %.not927618032, label %.lr.ph18034, label %._crit_edge18035

.preheader10373:                                  ; preds = %bb.no
  br i1 %.not927912349, label %.thread9723, label %.lr.ph12351

.lr.ph12351:                                      ; preds = %.preheader10373
  %i.boo = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 7 uses
  %i.bop = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.promoted12352 = load ptr, ptr %i.boo, align 8, !tbaa !122
  br label %bb.nq

bb.np:                                            ; preds = %bb.of
  %i.boq = add i32 %.11812212350, 1               ; 2 uses
  %.not9279 = icmp ugt i32 %i.boq, %i.awj
  br i1 %.not9279, label %.thread9723, label %bb.nq, !llvm.loop !152

bb.nq:                                            ; preds = %.lr.ph12351, %bb.np
  %i.bor = phi ptr [ %.promoted12352, %.lr.ph12351 ], [ %i.bse, %bb.np ] ; 16 uses
  %.11812212350 = phi i32 [ 1, %.lr.ph12351 ], [ %i.boq, %bb.np ]
  %.not9280 = icmp ult ptr %i.bor, %i.bop
  br i1 %.not9280, label %bb.nv, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bos = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9281 = icmp eq i16 %i.bos, 0
  br i1 %.not9281, label %.preheader10324.preheader, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bot = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.bou = icmp ugt ptr %i.bor, %i.bot
  br i1 %i.bou, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bov = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9282 = icmp eq i32 %i.bov, 0
  br i1 %.not9282, label %.preheader10324.preheader, label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10252 = icmp eq i16 %i.bos, 1
  br i1 %.not10252, label %.preheader10324.preheader, label %.thread9657

bb.nv:                                            ; preds = %bb.nq
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bor, i64 1 ; 4 uses
  store ptr %i.bow, ptr %i.boo, align 8, !tbaa !122
  %i.box = load i8, ptr %i.bor, align 1, !tbaa !35 ; 2 uses
  %i.boy = zext i8 %i.box to i32                  ; 10 uses
  %i.boz = icmp ugt i8 %i.box, -65
  br i1 %i.boz, label %bb.nw, label %bb.of

bb.nw:                                            ; preds = %bb.nv
  %i.bpa = and i32 %i.boy, 32
  %i.bpb = icmp eq i32 %i.bpa, 0
  br i1 %i.bpb, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %bb.nw
  %i.bpc = shl nuw nsw i32 %i.boy, 6
  %i.bpd = and i32 %i.bpc, 1984
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bor, i64 2 ; 2 uses
  store ptr %i.bpe, ptr %i.boo, align 8, !tbaa !122
  %i.bpf = load i8, ptr %i.bow, align 1, !tbaa !35
  %i.bpg = and i8 %i.bpf, 63
  %i.bph = zext nneg i8 %i.bpg to i32
  %i.bpi = or disjoint i32 %i.bpd, %i.bph
  br label %bb.of

bb.ny:                                            ; preds = %bb.nw
  %i.bpj = and i32 %i.boy, 16
  %i.bpk = icmp eq i32 %i.bpj, 0
  %i.bpl = load i8, ptr %i.bow, align 1, !tbaa !35
  %i.bpm = and i8 %i.bpl, 63
  %i.bpn = zext nneg i8 %i.bpm to i32             ; 4 uses
  br i1 %i.bpk, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.bpo = shl nuw nsw i32 %i.boy, 12
  %i.bpp = and i32 %i.bpo, 61440
  %i.bpq = shl nuw nsw i32 %i.bpn, 6
  %i.bpr = or disjoint i32 %i.bpq, %i.bpp
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bor, i64 2
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !35
  %i.bpu = and i8 %i.bpt, 63
  %i.bpv = zext nneg i8 %i.bpu to i32
  %i.bpw = or disjoint i32 %i.bpr, %i.bpv
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bor, i64 3 ; 2 uses
  store ptr %i.bpx, ptr %i.boo, align 8, !tbaa !122
  br label %bb.of

bb.oa:                                            ; preds = %bb.ny
  %i.bpy = and i32 %i.boy, 8
  %i.bpz = icmp eq i32 %i.bpy, 0
  br i1 %i.bpz, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  %i.bqa = shl nuw nsw i32 %i.boy, 18
  %i.bqb = and i32 %i.bqa, 1835008
  %i.bqc = shl nuw nsw i32 %i.bpn, 12
  %i.bqd = or disjoint i32 %i.bqc, %i.bqb
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bor, i64 2
  %i.bqf = load i8, ptr %i.bqe, align 1, !tbaa !35
  %i.bqg = and i8 %i.bqf, 63
  %i.bqh = zext nneg i8 %i.bqg to i32
  %i.bqi = shl nuw nsw i32 %i.bqh, 6
  %i.bqj = or disjoint i32 %i.bqd, %i.bqi
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bor, i64 3
  %i.bql = load i8, ptr %i.bqk, align 1, !tbaa !35
  %i.bqm = and i8 %i.bql, 63
  %i.bqn = zext nneg i8 %i.bqm to i32
  %i.bqo = or disjoint i32 %i.bqj, %i.bqn
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bor, i64 4 ; 2 uses
  store ptr %i.bqp, ptr %i.boo, align 8, !tbaa !122
  br label %bb.of

bb.oc:                                            ; preds = %bb.oa
  %i.bqq = and i32 %i.boy, 4
  %i.bqr = icmp eq i32 %i.bqq, 0
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bor, i64 2
  %i.bqt = load i8, ptr %i.bqs, align 1, !tbaa !35
  %i.bqu = and i8 %i.bqt, 63
  %i.bqv = zext nneg i8 %i.bqu to i32             ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bor, i64 3
  %i.bqx = load i8, ptr %i.bqw, align 1, !tbaa !35
  %i.bqy = and i8 %i.bqx, 63
  %i.bqz = zext nneg i8 %i.bqy to i32             ; 2 uses
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bor, i64 4
  %i.brb = load i8, ptr %i.bra, align 1, !tbaa !35
  %i.brc = and i8 %i.brb, 63
  %i.brd = zext nneg i8 %i.brc to i32             ; 2 uses
  br i1 %i.bqr, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc
  %i.bre = shl nuw i32 %i.boy, 24
  %i.brf = and i32 %i.bre, 50331648
  %i.brg = shl nuw nsw i32 %i.bpn, 18
  %i.brh = or disjoint i32 %i.brg, %i.brf
  %i.bri = shl nuw nsw i32 %i.bqv, 12
  %i.brj = or disjoint i32 %i.brh, %i.bri
  %i.brk = shl nuw nsw i32 %i.bqz, 6
  %i.brl = or disjoint i32 %i.brj, %i.brk
  %i.brm = or disjoint i32 %i.brl, %i.brd
  %i.brn = getelementptr inbounds nuw i8, ptr %i.bor, i64 5 ; 2 uses
  store ptr %i.brn, ptr %i.boo, align 8, !tbaa !122
  br label %bb.of

bb.oe:                                            ; preds = %bb.oc
  %i.bro = shl i32 %i.boy, 30
  %i.brp = and i32 %i.bro, 1073741824
  %i.brq = shl nuw nsw i32 %i.bpn, 24
  %i.brr = or disjoint i32 %i.brq, %i.brp
  %i.brs = shl nuw nsw i32 %i.bqv, 18
  %i.brt = or disjoint i32 %i.brr, %i.brs
  %i.bru = shl nuw nsw i32 %i.bqz, 12
  %i.brv = or disjoint i32 %i.brt, %i.bru
  %i.brw = shl nuw nsw i32 %i.brd, 6
  %i.brx = or disjoint i32 %i.brv, %i.brw
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bor, i64 5
  %i.brz = load i8, ptr %i.bry, align 1, !tbaa !35
  %i.bsa = and i8 %i.brz, 63
  %i.bsb = zext nneg i8 %i.bsa to i32
  %i.bsc = or disjoint i32 %i.brx, %i.bsb
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bor, i64 6 ; 2 uses
  store ptr %i.bsd, ptr %i.boo, align 8, !tbaa !122
  br label %bb.of

bb.of:                                            ; preds = %bb.nx, %bb.ob, %bb.oe, %bb.od, %bb.nz, %bb.nv
  %i.bse = phi ptr [ %i.bpe, %bb.nx ], [ %i.bpx, %bb.nz ], [ %i.bqp, %bb.ob ], [ %i.brn, %bb.od ], [ %i.bsd, %bb.oe ], [ %i.bow, %bb.nv ]
  %.07766 = phi i32 [ %i.bpi, %bb.nx ], [ %i.bpw, %bb.nz ], [ %i.bqo, %bb.ob ], [ %i.brm, %bb.od ], [ %i.bsc, %bb.oe ], [ %i.boy, %bb.nv ]
  %i.bsf = icmp eq i32 %i.azu, %.07766
  br i1 %i.bsf, label %.preheader10324.preheader, label %bb.np

bb.og:                                            ; preds = %.lr.ph18034
  %i.bsg = add i32 %.1281231234618033, 1          ; 2 uses
  %.not9275 = icmp ugt i32 %i.bsg, %i.awj
  br i1 %.not9275, label %.thread9723, label %bb.oh, !llvm.loop !153

bb.oh:                                            ; preds = %bb.og
  %.not9276 = icmp ult ptr %i.bsl, %i.bon
  br i1 %.not9276, label %.lr.ph18034, label %._crit_edge18035, !llvm.loop !153

._crit_edge18035:                                 ; preds = %bb.oh, %.lr.ph12347
  %.lcssa16910 = phi ptr [ %.promoted12348, %.lr.ph12347 ], [ %i.bsl, %bb.oh ]
  %i.bsh = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9277 = icmp eq i16 %i.bsh, 0
  br i1 %.not9277, label %.preheader10324.preheader, label %bb.oi

bb.oi:                                            ; preds = %._crit_edge18035
  %i.bsi = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.bsj = icmp ugt ptr %.lcssa16910, %i.bsi
  br i1 %i.bsj, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bsk = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9278 = icmp eq i32 %i.bsk, 0
  br i1 %.not9278, label %.preheader10324.preheader, label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10251 = icmp eq i16 %i.bsh, 1
  br i1 %.not10251, label %.preheader10324.preheader, label %.thread9657

.lr.ph18034:                                      ; preds = %.lr.ph12347, %bb.oh
  %.1281231234618033 = phi i32 [ %i.bsg, %bb.oh ], [ 1, %.lr.ph12347 ]
  %9 = phi ptr [ %i.bsl, %bb.oh ], [ %.promoted12348, %.lr.ph12347 ] ; 2 uses
  %i.bsl = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 4 uses
  store ptr %i.bsl, ptr %i.bom, align 8, !tbaa !122
  %i.bsm = load i8, ptr %9, align 1, !tbaa !35
  %i.bsn = zext i8 %i.bsm to i32
  %i.bso = icmp eq i32 %i.azu, %i.bsn
  br i1 %i.bso, label %.preheader10324.preheader, label %bb.og

.thread9723:                                      ; preds = %bb.og, %bb.np, %.preheader10375, %.preheader10373
  %i.bsp = icmp eq i32 %i.awj, %i.awi
  br i1 %i.bsp, label %.preheader10580.backedge, label %bb.ol

bb.ol:                                            ; preds = %.thread9723
  %i.bsq = icmp eq i32 %.107973, 0
  br i1 %i.bsq, label %.loopexit10589, label %bb.pk

.loopexit10340.loopexit:                          ; preds = %bb.pc
  %.pre14158 = load ptr, ptr %i.sgy, align 8, !tbaa !130
  br label %.loopexit10589

bb.om:                                            ; preds = %bb.cxv
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.bss = load i32, ptr %i.bsr, align 8, !tbaa !77 ; 2 uses
  %i.bst = add i32 %i.bss, 1
  store i32 %i.bst, ptr %i.bsr, align 8, !tbaa !77
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.bsv = load i32, ptr %i.bsu, align 4, !tbaa !77
  %.not9489 = icmp ult i32 %i.bss, %i.bsv
  br i1 %.not9489, label %bb.on, label %.backedge.backedge

bb.on:                                            ; preds = %bb.om
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 7 uses
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !122 ; 16 uses
  %i.bsy = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not9490 = icmp ult ptr %i.bsx, %i.bsy
  br i1 %.not9490, label %bb.os, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bsz = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9491 = icmp eq i16 %i.bsz, 0
  br i1 %.not9491, label %.backedge.backedge, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.bta = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.btb = icmp ugt ptr %i.bsx, %i.bta
  br i1 %i.btb, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.btc = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9492 = icmp eq i32 %i.btc, 0
  br i1 %.not9492, label %.backedge.backedge, label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.op
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10292 = icmp eq i16 %i.bsz, 1
  br i1 %.not10292, label %.backedge.backedge, label %.thread9657

bb.os:                                            ; preds = %bb.on
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsx, i64 1 ; 3 uses
  store ptr %i.btd, ptr %i.bsw, align 8, !tbaa !122
  %i.bte = load i8, ptr %i.bsx, align 1, !tbaa !35 ; 2 uses
  %i.btf = zext i8 %i.bte to i32                  ; 10 uses
  %i.btg = icmp ugt i8 %i.bte, -65
  br i1 %i.btg, label %bb.ot, label %bb.pc

bb.ot:                                            ; preds = %bb.os
  %i.bth = and i32 %i.btf, 32
  %i.bti = icmp eq i32 %i.bth, 0
  br i1 %i.bti, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.btj = shl nuw nsw i32 %i.btf, 6
  %i.btk = and i32 %i.btj, 1984
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  store ptr %i.btl, ptr %i.bsw, align 8, !tbaa !122
  %i.btm = load i8, ptr %i.btd, align 1, !tbaa !35
  %i.btn = and i8 %i.btm, 63
  %i.bto = zext nneg i8 %i.btn to i32
  %i.btp = or disjoint i32 %i.btk, %i.bto
  br label %bb.pc

bb.ov:                                            ; preds = %bb.ot
  %i.btq = and i32 %i.btf, 16
  %i.btr = icmp eq i32 %i.btq, 0
  %i.bts = load i8, ptr %i.btd, align 1, !tbaa !35
  %i.btt = and i8 %i.bts, 63
  %i.btu = zext nneg i8 %i.btt to i32             ; 4 uses
  br i1 %i.btr, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.btv = shl nuw nsw i32 %i.btf, 12
  %i.btw = and i32 %i.btv, 61440
  %i.btx = shl nuw nsw i32 %i.btu, 6
  %i.bty = or disjoint i32 %i.btx, %i.btw
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bua = load i8, ptr %i.btz, align 1, !tbaa !35
  %i.bub = and i8 %i.bua, 63
  %i.buc = zext nneg i8 %i.bub to i32
  %i.bud = or disjoint i32 %i.bty, %i.buc
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bsx, i64 3
  store ptr %i.bue, ptr %i.bsw, align 8, !tbaa !122
  br label %bb.pc

bb.ox:                                            ; preds = %bb.ov
  %i.buf = and i32 %i.btf, 8
  %i.bug = icmp eq i32 %i.buf, 0
  br i1 %i.bug, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  %i.buh = shl nuw nsw i32 %i.btf, 18
  %i.bui = and i32 %i.buh, 1835008
  %i.buj = shl nuw nsw i32 %i.btu, 12
  %i.buk = or disjoint i32 %i.buj, %i.bui
  %i.bul = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bum = load i8, ptr %i.bul, align 1, !tbaa !35
  %i.bun = and i8 %i.bum, 63
  %i.buo = zext nneg i8 %i.bun to i32
  %i.bup = shl nuw nsw i32 %i.buo, 6
  %i.buq = or disjoint i32 %i.buk, %i.bup
  %i.bur = getelementptr inbounds nuw i8, ptr %i.bsx, i64 3
  %i.bus = load i8, ptr %i.bur, align 1, !tbaa !35
  %i.but = and i8 %i.bus, 63
  %i.buu = zext nneg i8 %i.but to i32
  %i.buv = or disjoint i32 %i.buq, %i.buu
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bsx, i64 4
  store ptr %i.buw, ptr %i.bsw, align 8, !tbaa !122
  br label %bb.pc

bb.oz:                                            ; preds = %bb.ox
  %i.bux = and i32 %i.btf, 4
  %i.buy = icmp eq i32 %i.bux, 0
  %i.buz = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bva = load i8, ptr %i.buz, align 1, !tbaa !35
  %i.bvb = and i8 %i.bva, 63
  %i.bvc = zext nneg i8 %i.bvb to i32             ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bsx, i64 3
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !35
  %i.bvf = and i8 %i.bve, 63
  %i.bvg = zext nneg i8 %i.bvf to i32             ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bsx, i64 4
  %i.bvi = load i8, ptr %i.bvh, align 1, !tbaa !35
  %i.bvj = and i8 %i.bvi, 63
  %i.bvk = zext nneg i8 %i.bvj to i32             ; 2 uses
  br i1 %i.buy, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.bvl = shl nuw i32 %i.btf, 24
  %i.bvm = and i32 %i.bvl, 50331648
  %i.bvn = shl nuw nsw i32 %i.btu, 18
  %i.bvo = or disjoint i32 %i.bvn, %i.bvm
  %i.bvp = shl nuw nsw i32 %i.bvc, 12
  %i.bvq = or disjoint i32 %i.bvo, %i.bvp
  %i.bvr = shl nuw nsw i32 %i.bvg, 6
  %i.bvs = or disjoint i32 %i.bvq, %i.bvr
  %i.bvt = or disjoint i32 %i.bvs, %i.bvk
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bsx, i64 5
  store ptr %i.bvu, ptr %i.bsw, align 8, !tbaa !122
  br label %bb.pc

bb.pb:                                            ; preds = %bb.oz
  %i.bvv = shl i32 %i.btf, 30
  %i.bvw = and i32 %i.bvv, 1073741824
  %i.bvx = shl nuw nsw i32 %i.btu, 24
  %i.bvy = or disjoint i32 %i.bvx, %i.bvw
  %i.bvz = shl nuw nsw i32 %i.bvc, 18
  %i.bwa = or disjoint i32 %i.bvy, %i.bvz
  %i.bwb = shl nuw nsw i32 %i.bvg, 12
  %i.bwc = or disjoint i32 %i.bwa, %i.bwb
  %i.bwd = shl nuw nsw i32 %i.bvk, 6
  %i.bwe = or disjoint i32 %i.bwc, %i.bwd
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bsx, i64 5
  %i.bwg = load i8, ptr %i.bwf, align 1, !tbaa !35
  %i.bwh = and i8 %i.bwg, 63
  %i.bwi = zext nneg i8 %i.bwh to i32
  %i.bwj = or disjoint i32 %i.bwe, %i.bwi
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bsx, i64 6
  store ptr %i.bwk, ptr %i.bsw, align 8, !tbaa !122
  br label %bb.pc

bb.pc:                                            ; preds = %bb.ou, %bb.oy, %bb.pb, %bb.pa, %bb.ow, %bb.os
  %.07765 = phi i32 [ %i.btp, %bb.ou ], [ %i.bud, %bb.ow ], [ %i.buv, %bb.oy ], [ %i.bvt, %bb.pa ], [ %i.bwj, %bb.pb ], [ %i.btf, %bb.os ]
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.sgy, i64 64
  %i.bwm = load i32, ptr %i.bwl, align 8, !tbaa !77
  %i.bwn = icmp eq i32 %i.bwm, %.07765
  br i1 %i.bwn, label %.backedge.backedge, label %.loopexit10340.loopexit

.loopexit10345.loopexit:                          ; preds = %bb.pj
  %.pre14170 = load ptr, ptr %i.sgy, align 8, !tbaa !130
  br label %.loopexit10589

bb.pd:                                            ; preds = %bb.cxh
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.bwp = load i32, ptr %i.bwo, align 8, !tbaa !77 ; 2 uses
  %i.bwq = add i32 %i.bwp, 1
  store i32 %i.bwq, ptr %i.bwo, align 8, !tbaa !77
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.bws = load i32, ptr %i.bwr, align 4, !tbaa !77
  %.not9550 = icmp ult i32 %i.bwp, %i.bws
  br i1 %.not9550, label %bb.pe, label %.backedge.backedge

bb.pe:                                            ; preds = %bb.pd
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
end_hunk_2
begin_hunk_3_@match:bb.a

.loopexit10319.loopexit:                          ; preds = %bb.qe
  %.phi.trans.insert14156 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14157 = load ptr, ptr %.phi.trans.insert14156, align 8, !tbaa !134
  br label %.loopexit10319

.loopexit10319:                                   ; preds = %.loopexit10319.loopexit, %.thread9728
  %i.cav = phi ptr [ %i.bxh, %.thread9728 ], [ %.pre14157, %.loopexit10319.loopexit ]
  %i.caw = phi ptr [ %i.cau, %.thread9728 ], [ %storemerge9485, %.loopexit10319.loopexit ]
  %.177980 = phi i32 [ %.107973, %.thread9728 ], [ %.658028.ph.ph, %.loopexit10319.loopexit ] ; 2 uses
  %.157712 = phi ptr [ %.27699, %.thread9728 ], [ %.607757.ph.ph, %.loopexit10319.loopexit ] ; 2 uses
  %.157652 = phi ptr [ %.27639, %.thread9728 ], [ %.597696.ph.ph, %.loopexit10319.loopexit ] ; 2 uses
  %.107616 = phi ptr [ %.37609, %.thread9728 ], [ %.257631.ph.ph, %.loopexit10319.loopexit ]
  %.177561 = phi ptr [ %.47548, %.thread9728 ], [ %i.sgy, %.loopexit10319.loopexit ] ; 3 uses
  %.not9486 = icmp ugt ptr %i.caw, %i.cav
  br i1 %.not9486, label %bb.qc, label %.preheader10580.backedge

bb.qc:                                            ; preds = %.loopexit10319
  %i.cax = load ptr, ptr %.177561, align 8, !tbaa !130
  br label %.loopexit10589

bb.qd:                                            ; preds = %bb.cxw
  %i.cay = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
  %i.caz = load ptr, ptr %i.cay, align 8, !tbaa !122
  br label %bb.qe

bb.qe:                                            ; preds = %bb.qe, %bb.qd
  %.pn9487 = phi ptr [ %i.caz, %bb.qd ], [ %storemerge9485, %bb.qe ]
  %storemerge9485 = getelementptr inbounds i8, ptr %.pn9487, i64 -1 ; 4 uses
  store ptr %storemerge9485, ptr %i.cay, align 8, !tbaa !122
  %i.cba = load i8, ptr %storemerge9485, align 1, !tbaa !35
  %i.cbb = icmp slt i8 %i.cba, -64
  br i1 %i.cbb, label %bb.qe, label %.loopexit10319.loopexit, !llvm.loop !155

bb.qf:                                            ; preds = %.lr.ph12354, %bb.ql
  %i.cbc = phi ptr [ %i.bxh, %.lr.ph12354 ], [ %i.cbk, %bb.ql ] ; 8 uses
  %.14812512353 = phi i32 [ %i.awj, %.lr.ph12354 ], [ %i.cbl, %bb.ql ]
  %.not9283 = icmp ult ptr %i.cbc, %i.bxk
  br i1 %.not9283, label %bb.qk, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.cbd = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9284 = icmp eq i16 %i.cbd, 0
  br i1 %.not9284, label %.loopexit10372, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.cbe = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.cbf = icmp ugt ptr %i.cbc, %i.cbe
  br i1 %i.cbf, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.cbg = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9285 = icmp eq i32 %i.cbg, 0
  br i1 %.not9285, label %.loopexit10372, label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10253 = icmp eq i16 %i.cbd, 1
  br i1 %.not10253, label %.loopexit10372, label %.thread9657

bb.qk:                                            ; preds = %bb.qf
  %i.cbh = load i8, ptr %i.cbc, align 1, !tbaa !35
  %i.cbi = zext i8 %i.cbh to i32
  %i.cbj = icmp eq i32 %i.azu, %i.cbi
  br i1 %i.cbj, label %.loopexit10372, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbc, i64 1 ; 3 uses
  store ptr %i.cbk, ptr %i.bxg, align 8, !tbaa !122
  %i.cbl = add nuw i32 %.14812512353, 1           ; 2 uses
  %exitcond14084.not = icmp eq i32 %i.cbl, %i.awi
  br i1 %exitcond14084.not, label %.loopexit10372, label %bb.qf, !llvm.loop !156

.loopexit10372:                                   ; preds = %bb.ql, %bb.qk, %.preheader10371, %bb.qg, %bb.qi, %bb.qj
  %i.cbm = phi ptr [ %i.cbc, %bb.qj ], [ %i.bxh, %.preheader10371 ], [ %i.cbc, %bb.qg ], [ %i.cbc, %bb.qi ], [ %i.cbk, %bb.ql ], [ %i.cbc, %bb.qk ]
  %.not9286 = icmp eq i32 %.107973, 2
  br i1 %.not9286, label %.preheader10580.backedge, label %bb.qm

bb.qm:                                            ; preds = %.loopexit10372, %bb.qo
  %i.cbn = phi ptr [ %.pre14169, %bb.qo ], [ %i.bxh, %.loopexit10372 ]
  %i.cbo = phi ptr [ %i.cbt, %bb.qo ], [ %i.cbm, %.loopexit10372 ]
  %.187981 = phi i32 [ %.658028.ph.ph, %bb.qo ], [ %.107973, %.loopexit10372 ] ; 2 uses
  %.167713 = phi ptr [ %.607757.ph.ph, %bb.qo ], [ %.27699, %.loopexit10372 ] ; 2 uses
  %.167653 = phi ptr [ %.597696.ph.ph, %bb.qo ], [ %.27639, %.loopexit10372 ] ; 2 uses
  %.117617 = phi ptr [ %.257631.ph.ph, %bb.qo ], [ %.37609, %.loopexit10372 ]
  %.187562 = phi ptr [ %i.sgy, %bb.qo ], [ %.47548, %.loopexit10372 ] ; 3 uses
  %i.cbp = icmp eq ptr %i.cbo, %i.cbn
  br i1 %i.cbp, label %.preheader10580.backedge, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.cbq = load ptr, ptr %.187562, align 8, !tbaa !130
  br label %.loopexit10589

bb.qo:                                            ; preds = %bb.cxi
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 2 uses
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !122
  %i.cbt = getelementptr inbounds i8, ptr %i.cbs, i64 -1 ; 2 uses
  store ptr %i.cbt, ptr %i.cbr, align 8, !tbaa !122
  %.phi.trans.insert14168 = getelementptr inbounds nuw i8, ptr %i.sgy, i64 8
  %.pre14169 = load ptr, ptr %.phi.trans.insert14168, align 8, !tbaa !134
  br label %bb.qm

bb.qp:                                            ; preds = %.preheader10580, %.preheader10580
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 5 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %.47548, i64 8
  %i.cbw = getelementptr inbounds nuw i8, ptr %.47548, i64 16
  store ptr %i.cbu, ptr %i.cbw, align 8, !tbaa !134
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.dp, i64 33 ; 6 uses
  store ptr %i.cbx, ptr %.47548, align 8, !tbaa !130
  %i.cby = load i8, ptr %i.cbx, align 1, !tbaa !35
  switch i8 %i.cby, label %.thread15038 [
    i8 98, label %bb.qq
    i8 99, label %bb.qq
    i8 100, label %bb.qq
    i8 101, label %bb.qq
    i8 102, label %bb.qq
    i8 103, label %bb.qq
    i8 106, label %bb.qq
    i8 107, label %bb.qq
    i8 108, label %bb.qq
    i8 104, label %bb.qr
    i8 105, label %bb.qr
    i8 109, label %bb.qr
  ]

bb.qq:                                            ; preds = %bb.qp, %bb.qp, %bb.qp, %bb.qp, %bb.qp, %bb.qp, %bb.qp, %bb.qp, %bb.qp
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.dp, i64 34 ; 2 uses
  store ptr %i.cbz, ptr %.47548, align 8, !tbaa !130
  %i.cca = load i8, ptr %i.cbx, align 1, !tbaa !35
  %i.ccb = zext i8 %i.cca to i64
  %i.ccc = add nuw nsw i64 %i.ccb, 4294967198
  %i.ccd = and i64 %i.ccc, 4294967295             ; 3 uses
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr @rep_min, i64 %i.ccd
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !77 ; 2 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  store i32 %i.ccf, ptr %i.ccg, align 8, !tbaa !77
  %i.cch = getelementptr inbounds nuw [4 x i8], ptr @rep_max, i64 %i.ccd
  %i.cci = load i32, ptr %i.cch, align 4, !tbaa !77 ; 2 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 %i.cci, ptr %i.ccj, align 4, !tbaa !77
  %i.cck = getelementptr inbounds nuw [4 x i8], ptr @rep_typ, i64 %i.ccd
  %i.ccl = load i32, ptr %i.cck, align 4, !tbaa !77
  br label %bb.qs

bb.qr:                                            ; preds = %bb.qp, %bb.qp, %bb.qp
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.dp, i64 34
  %i.ccn = load i8, ptr %i.ccm, align 1, !tbaa !35
  %i.cco = zext i8 %i.ccn to i32
  %i.ccp = shl nuw nsw i32 %i.cco, 8
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.dp, i64 35
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !35
  %i.ccs = zext i8 %i.ccr to i32
  %i.cct = or disjoint i32 %i.ccp, %i.ccs         ; 2 uses
  %i.ccu = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  store i32 %i.cct, ptr %i.ccu, align 8, !tbaa !77
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  %i.ccw = load i8, ptr %i.ccv, align 1, !tbaa !35
  %i.ccx = zext i8 %i.ccw to i32
  %i.ccy = shl nuw nsw i32 %i.ccx, 8
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.dp, i64 37
  %i.cda = load i8, ptr %i.ccz, align 1, !tbaa !35
  %i.cdb = zext i8 %i.cda to i32
  %i.cdc = or disjoint i32 %i.ccy, %i.cdb         ; 2 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  %i.cde = icmp eq i32 %i.cdc, 0
  %spec.select = select i1 %i.cde, i32 -1, i32 %i.cdc ; 2 uses
  store i32 %spec.select, ptr %i.cdd, align 4, !tbaa !77
  %i.cdf = load i8, ptr %i.cbx, align 1, !tbaa !35
  %i.cdg = zext i8 %i.cdf to i64
  %i.cdh = getelementptr [4 x i8], ptr @rep_typ, i64 %i.cdg
  %i.cdi = getelementptr i8, ptr %i.cdh, i64 -392
  %i.cdj = load i32, ptr %i.cdi, align 4, !tbaa !77
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.dp, i64 38 ; 2 uses
  store ptr %i.cdk, ptr %.47548, align 8, !tbaa !130
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq
  %i.cdl = phi ptr [ %i.cdk, %bb.qr ], [ %i.cbz, %bb.qq ] ; 4 uses
  %i.cdm = phi i32 [ %spec.select, %bb.qr ], [ %i.cci, %bb.qq ] ; 4 uses
  %i.cdn = phi i32 [ %i.cct, %bb.qr ], [ %i.ccf, %bb.qq ] ; 3 uses
  %.197982 = phi i32 [ %i.cdj, %bb.qr ], [ %i.ccl, %bb.qq ] ; 4 uses
  %.not926412333 = icmp eq i32 %i.cdn, 0          ; 2 uses
  br i1 %i.i, label %.preheader10381, label %.preheader10384

.thread15038:                                     ; preds = %bb.qp
  %i.cdo = getelementptr inbounds nuw i8, ptr %.47548, i64 56
  %i.cdp = getelementptr inbounds nuw i8, ptr %.47548, i64 60
  store i32 1, ptr %i.cdp, align 4, !tbaa !77
  store i32 1, ptr %i.cdo, align 8, !tbaa !77
  br i1 %i.i, label %.lr.ph12335, label %.lr.ph12331

.preheader10384:                                  ; preds = %bb.qs
  br i1 %.not926412333, label %.loopexit10382, label %.lr.ph12331

.lr.ph12331:                                      ; preds = %.thread15038, %.preheader10384
  %i.cdq = phi ptr [ %i.cdl, %.preheader10384 ], [ %i.cbx, %.thread15038 ]
  %i.cdr = phi i32 [ %i.cdm, %.preheader10384 ], [ 1, %.thread15038 ]
  %i.cds = phi i32 [ %i.cdn, %.preheader10384 ], [ 1, %.thread15038 ] ; 2 uses
  %.1979821504115045 = phi i32 [ %.197982, %.preheader10384 ], [ %.27965, %.thread15038 ] ; 5 uses
  %i.cdt = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.cdu = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12332 = load ptr, ptr %i.cdt, align 8, !tbaa !122 ; 3 uses
  %.not926118027 = icmp ult ptr %.promoted12332, %i.cdu
  br i1 %.not926118027, label %.lr.ph18029, label %._crit_edge18030

.preheader10381:                                  ; preds = %bb.qs
  br i1 %.not926412333, label %.loopexit10382, label %.lr.ph12335

.lr.ph12335:                                      ; preds = %.thread15038, %.preheader10381
  %i.cdv = phi ptr [ %i.cdl, %.preheader10381 ], [ %i.cbx, %.thread15038 ]
  %i.cdw = phi i32 [ %i.cdm, %.preheader10381 ], [ 1, %.thread15038 ]
  %i.cdx = phi i32 [ %i.cdn, %.preheader10381 ], [ 1, %.thread15038 ] ; 2 uses
  %.1979821504215048 = phi i32 [ %.197982, %.preheader10381 ], [ %.27965, %.thread15038 ] ; 5 uses
  %i.cdy = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 7 uses
  %i.cdz = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.cea = icmp eq i8 %i.dq, 110
  %.promoted12336 = load ptr, ptr %i.cdy, align 8, !tbaa !122
  br label %bb.qt

bb.qt:                                            ; preds = %.lr.ph12335, %bb.rk
  %i.ceb = phi ptr [ %.promoted12336, %.lr.ph12335 ], [ %i.cia, %bb.rk ] ; 16 uses
  %.15812612334 = phi i32 [ 1, %.lr.ph12335 ], [ %i.cib, %bb.rk ]
  %.not9271 = icmp ult ptr %i.ceb, %i.cdz
  br i1 %.not9271, label %bb.qy, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.cec = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9272 = icmp eq i16 %i.cec, 0
  br i1 %.not9272, label %.preheader10324.preheader, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.ced = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.cee = icmp ugt ptr %i.ceb, %i.ced
  br i1 %i.cee, label %bb.qx, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.cef = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9273 = icmp eq i32 %i.cef, 0
  br i1 %.not9273, label %.preheader10324.preheader, label %bb.qx

bb.qx:                                            ; preds = %bb.qw, %bb.qv
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10248 = icmp eq i16 %i.cec, 1
  br i1 %.not10248, label %.preheader10324.preheader, label %.thread9657

bb.qy:                                            ; preds = %bb.qt
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.ceb, i64 1 ; 4 uses
  store ptr %i.ceg, ptr %i.cdy, align 8, !tbaa !122
  %i.ceh = load i8, ptr %i.ceb, align 1, !tbaa !35 ; 2 uses
  %i.cei = zext i8 %i.ceh to i32                  ; 10 uses
  %i.cej = icmp ugt i8 %i.ceh, -65
  br i1 %i.cej, label %bb.qz, label %.thread9734

bb.qz:                                            ; preds = %bb.qy
  %i.cek = and i32 %i.cei, 32
  %i.cel = icmp eq i32 %i.cek, 0
  br i1 %i.cel, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.cem = shl nuw nsw i32 %i.cei, 6
  %i.cen = and i32 %i.cem, 1984
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.ceb, i64 2 ; 2 uses
  store ptr %i.ceo, ptr %i.cdy, align 8, !tbaa !122
  %i.cep = load i8, ptr %i.ceg, align 1, !tbaa !35
  %i.ceq = and i8 %i.cep, 63
  %i.cer = zext nneg i8 %i.ceq to i32
  %i.ces = or disjoint i32 %i.cen, %i.cer
  br label %bb.ri

bb.rb:                                            ; preds = %bb.qz
  %i.cet = and i32 %i.cei, 16
  %i.ceu = icmp eq i32 %i.cet, 0
  %i.cev = load i8, ptr %i.ceg, align 1, !tbaa !35
  %i.cew = and i8 %i.cev, 63
  %i.cex = zext nneg i8 %i.cew to i32             ; 4 uses
  br i1 %i.ceu, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  %i.cey = shl nuw nsw i32 %i.cei, 12
  %i.cez = and i32 %i.cey, 61440
  %i.cfa = shl nuw nsw i32 %i.cex, 6
  %i.cfb = or disjoint i32 %i.cfa, %i.cez
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.ceb, i64 2
  %i.cfd = load i8, ptr %i.cfc, align 1, !tbaa !35
  %i.cfe = and i8 %i.cfd, 63
  %i.cff = zext nneg i8 %i.cfe to i32
  %i.cfg = or disjoint i32 %i.cfb, %i.cff
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.ceb, i64 3 ; 2 uses
  store ptr %i.cfh, ptr %i.cdy, align 8, !tbaa !122
  br label %bb.ri

bb.rd:                                            ; preds = %bb.rb
  %i.cfi = and i32 %i.cei, 8
  %i.cfj = icmp eq i32 %i.cfi, 0
  br i1 %i.cfj, label %bb.re, label %bb.rf

bb.re:                                            ; preds = %bb.rd
  %i.cfk = shl nuw nsw i32 %i.cei, 18
  %i.cfl = and i32 %i.cfk, 1835008
  %i.cfm = shl nuw nsw i32 %i.cex, 12
  %i.cfn = or disjoint i32 %i.cfm, %i.cfl
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.ceb, i64 2
  %i.cfp = load i8, ptr %i.cfo, align 1, !tbaa !35
  %i.cfq = and i8 %i.cfp, 63
  %i.cfr = zext nneg i8 %i.cfq to i32
  %i.cfs = shl nuw nsw i32 %i.cfr, 6
  %i.cft = or disjoint i32 %i.cfn, %i.cfs
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.ceb, i64 3
  %i.cfv = load i8, ptr %i.cfu, align 1, !tbaa !35
  %i.cfw = and i8 %i.cfv, 63
  %i.cfx = zext nneg i8 %i.cfw to i32
  %i.cfy = or disjoint i32 %i.cft, %i.cfx
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.ceb, i64 4 ; 2 uses
  store ptr %i.cfz, ptr %i.cdy, align 8, !tbaa !122
  br label %bb.ri

bb.rf:                                            ; preds = %bb.rd
  %i.cga = and i32 %i.cei, 4
  %i.cgb = icmp eq i32 %i.cga, 0
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.ceb, i64 2
  %i.cgd = load i8, ptr %i.cgc, align 1, !tbaa !35
  %i.cge = and i8 %i.cgd, 63
  %i.cgf = zext nneg i8 %i.cge to i32             ; 2 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.ceb, i64 3
  %i.cgh = load i8, ptr %i.cgg, align 1, !tbaa !35
  %i.cgi = and i8 %i.cgh, 63
  %i.cgj = zext nneg i8 %i.cgi to i32             ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.ceb, i64 4
  %i.cgl = load i8, ptr %i.cgk, align 1, !tbaa !35
  %i.cgm = and i8 %i.cgl, 63
  %i.cgn = zext nneg i8 %i.cgm to i32             ; 2 uses
  br i1 %i.cgb, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  %i.cgo = shl nuw i32 %i.cei, 24
  %i.cgp = and i32 %i.cgo, 50331648
  %i.cgq = shl nuw nsw i32 %i.cex, 18
  %i.cgr = or disjoint i32 %i.cgq, %i.cgp
  %i.cgs = shl nuw nsw i32 %i.cgf, 12
  %i.cgt = or disjoint i32 %i.cgr, %i.cgs
  %i.cgu = shl nuw nsw i32 %i.cgj, 6
  %i.cgv = or disjoint i32 %i.cgt, %i.cgu
  %i.cgw = or disjoint i32 %i.cgv, %i.cgn
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.ceb, i64 5 ; 2 uses
  store ptr %i.cgx, ptr %i.cdy, align 8, !tbaa !122
  br label %bb.ri

bb.rh:                                            ; preds = %bb.rf
  %i.cgy = shl i32 %i.cei, 30
  %i.cgz = and i32 %i.cgy, 1073741824
  %i.cha = shl nuw nsw i32 %i.cex, 24
  %i.chb = or disjoint i32 %i.cha, %i.cgz
  %i.chc = shl nuw nsw i32 %i.cgf, 18
  %i.chd = or disjoint i32 %i.chb, %i.chc
  %i.che = shl nuw nsw i32 %i.cgj, 12
  %i.chf = or disjoint i32 %i.chd, %i.che
  %i.chg = shl nuw nsw i32 %i.cgn, 6
  %i.chh = or disjoint i32 %i.chf, %i.chg
  %i.chi = getelementptr inbounds nuw i8, ptr %i.ceb, i64 5
  %i.chj = load i8, ptr %i.chi, align 1, !tbaa !35
  %i.chk = and i8 %i.chj, 63
  %i.chl = zext nneg i8 %i.chk to i32
  %i.chm = or disjoint i32 %i.chh, %i.chl
  %i.chn = getelementptr inbounds nuw i8, ptr %i.ceb, i64 6 ; 2 uses
  store ptr %i.chn, ptr %i.cdy, align 8, !tbaa !122
  br label %bb.ri

bb.ri:                                            ; preds = %bb.ra, %bb.re, %bb.rh, %bb.rg, %bb.rc
  %i.cho = phi ptr [ %i.ceo, %bb.ra ], [ %i.cfh, %bb.rc ], [ %i.cfz, %bb.re ], [ %i.cgx, %bb.rg ], [ %i.chn, %bb.rh ] ; 2 uses
  %.38033 = phi i32 [ %i.ces, %bb.ra ], [ %i.cfg, %bb.rc ], [ %i.cfy, %bb.re ], [ %i.cgw, %bb.rg ], [ %i.chm, %bb.rh ] ; 2 uses
  %i.chp = icmp samesign ugt i32 %.38033, 255
  br i1 %i.chp, label %bb.rj, label %.thread9734

bb.rj:                                            ; preds = %bb.ri
  br i1 %i.cea, label %.preheader10324.preheader.loopexit18076, label %bb.rk

.thread9734:                                      ; preds = %bb.qy, %bb.ri
  %i.chq = phi ptr [ %i.cho, %bb.ri ], [ %i.ceg, %bb.qy ]
  %.380339736 = phi i32 [ %.38033, %bb.ri ], [ %i.cei, %bb.qy ] ; 2 uses
  %i.chr = lshr i32 %.380339736, 3
  %i.chs = zext nneg i32 %i.chr to i64
  %i.cht = getelementptr inbounds nuw i8, ptr %i.cbu, i64 %i.chs
  %i.chu = load i8, ptr %i.cht, align 1, !tbaa !35
  %i.chv = zext i8 %i.chu to i32
  %i.chw = and i32 %.380339736, 7
  %i.chx = shl nuw nsw i32 1, %i.chw
  %i.chy = and i32 %i.chx, %i.chv
  %i.chz = icmp eq i32 %i.chy, 0
  br i1 %i.chz, label %.preheader10324.preheader.loopexit18076, label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %.thread9734
  %i.cia = phi ptr [ %i.cho, %bb.rj ], [ %i.chq, %.thread9734 ]
  %i.cib = add i32 %.15812612334, 1               ; 2 uses
  %.not9264 = icmp ugt i32 %i.cib, %i.cdx
  br i1 %.not9264, label %.loopexit10382, label %bb.qt, !llvm.loop !157

bb.rl:                                            ; preds = %.lr.ph18029
  %i.cic = add i32 %.1681271233018028, 1          ; 2 uses
  %.not9260 = icmp ugt i32 %i.cic, %i.cds
  br i1 %.not9260, label %.loopexit10382, label %bb.rm, !llvm.loop !158

bb.rm:                                            ; preds = %bb.rl
  %.not9261 = icmp ult ptr %i.cih, %i.cdu
  br i1 %.not9261, label %.lr.ph18029, label %._crit_edge18030, !llvm.loop !158

._crit_edge18030:                                 ; preds = %bb.rm, %.lr.ph12331
  %.lcssa16900 = phi ptr [ %.promoted12332, %.lr.ph12331 ], [ %i.cih, %bb.rm ]
  %i.cid = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9262 = icmp eq i16 %i.cid, 0
  br i1 %.not9262, label %.preheader10324.preheader, label %bb.rn

bb.rn:                                            ; preds = %._crit_edge18030
  %i.cie = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.cif = icmp ugt ptr %.lcssa16900, %i.cie
  br i1 %i.cif, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.cig = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9263 = icmp eq i32 %i.cig, 0
  br i1 %.not9263, label %.preheader10324.preheader, label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10247 = icmp eq i16 %i.cid, 1
  br i1 %.not10247, label %.preheader10324.preheader, label %.thread9657

.lr.ph18029:                                      ; preds = %.lr.ph12331, %bb.rm
  %.1681271233018028 = phi i32 [ %i.cic, %bb.rm ], [ 1, %.lr.ph12331 ]
  %10 = phi ptr [ %i.cih, %bb.rm ], [ %.promoted12332, %.lr.ph12331 ] ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 4 uses
  store ptr %i.cih, ptr %i.cdt, align 8, !tbaa !122
  %i.cii = load i8, ptr %10, align 1, !tbaa !35
  %i.cij = zext i8 %i.cii to i32                  ; 2 uses
  %i.cik = lshr i32 %i.cij, 3
  %i.cil = zext nneg i32 %i.cik to i64
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cbu, i64 %i.cil
  %i.cin = load i8, ptr %i.cim, align 1, !tbaa !35
  %i.cio = zext i8 %i.cin to i32
  %i.cip = and i32 %i.cij, 7
  %i.ciq = shl nuw nsw i32 1, %i.cip
  %i.cir = and i32 %i.ciq, %i.cio
  %i.cis = icmp eq i32 %i.cir, 0
  br i1 %i.cis, label %.preheader10324.preheader, label %bb.rl

.loopexit10382:                                   ; preds = %bb.rl, %bb.rk, %.preheader10384, %.preheader10381
  %.19798215040 = phi i32 [ %.1979821504215048, %bb.rk ], [ %.197982, %.preheader10381 ], [ %.197982, %.preheader10384 ], [ %.1979821504115045, %bb.rl ] ; 6 uses
  %i.cit = phi i32 [ %i.cdx, %bb.rk ], [ 0, %.preheader10381 ], [ 0, %.preheader10384 ], [ %i.cds, %bb.rl ] ; 4 uses
  %i.ciu = phi i32 [ %i.cdw, %bb.rk ], [ %i.cdm, %.preheader10381 ], [ %i.cdm, %.preheader10384 ], [ %i.cdr, %bb.rl ] ; 4 uses
  %i.civ = phi ptr [ %i.cdv, %bb.rk ], [ %i.cdl, %.preheader10381 ], [ %i.cdl, %.preheader10384 ], [ %i.cdq, %bb.rl ]
  %i.ciw = icmp eq i32 %i.cit, %i.ciu
  br i1 %i.ciw, label %.preheader10580.backedge, label %bb.rq

bb.rq:                                            ; preds = %.loopexit10382
  %i.cix = icmp eq i32 %.19798215040, 0
  br i1 %i.cix, label %.loopexit10589, label %bb.sq

.loopexit10342.loopexit:                          ; preds = %.thread9737, %bb.si
  %.pre14164 = load ptr, ptr %i.sgy, align 8, !tbaa !130
  br label %.loopexit10589

bb.rr:                                            ; preds = %bb.cxp
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.sgy, i64 56 ; 2 uses
  %i.ciz = load i32, ptr %i.ciy, align 8, !tbaa !77 ; 2 uses
  %i.cja = add i32 %i.ciz, 1
  store i32 %i.cja, ptr %i.ciy, align 8, !tbaa !77
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.sgy, i64 60
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !77
  %.not9519 = icmp ult i32 %i.ciz, %i.cjc
  br i1 %.not9519, label %bb.rs, label %.backedge.backedge

bb.rs:                                            ; preds = %bb.rr
  %i.cjd = getelementptr inbounds nuw i8, ptr %i.sgy, i64 80 ; 7 uses
  %i.cje = load ptr, ptr %i.cjd, align 8, !tbaa !122 ; 16 uses
  %i.cjf = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not9520 = icmp ult ptr %i.cje, %i.cjf
  br i1 %.not9520, label %bb.rx, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.cjg = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not9521 = icmp eq i16 %i.cjg, 0
  br i1 %.not9521, label %.backedge.backedge, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.cjh = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.cji = icmp ugt ptr %i.cje, %i.cjh
  br i1 %i.cji, label %bb.rw, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.cjj = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not9522 = icmp eq i32 %i.cjj, 0
  br i1 %.not9522, label %.backedge.backedge, label %bb.rw

bb.rw:                                            ; preds = %bb.rv, %bb.ru
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not10295 = icmp eq i16 %i.cjg, 1
  br i1 %.not10295, label %.backedge.backedge, label %.thread9657

bb.rx:                                            ; preds = %bb.rs
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cje, i64 1 ; 3 uses
  store ptr %i.cjk, ptr %i.cjd, align 8, !tbaa !122
  %i.cjl = load i8, ptr %i.cje, align 1, !tbaa !35 ; 2 uses
  %i.cjm = zext i8 %i.cjl to i32                  ; 10 uses
  %i.cjn = icmp ugt i8 %i.cjl, -65
  br i1 %i.cjn, label %bb.ry, label %.thread9737

bb.ry:                                            ; preds = %bb.rx
  %i.cjo = and i32 %i.cjm, 32
  %i.cjp = icmp eq i32 %i.cjo, 0
  br i1 %i.cjp, label %bb.rz, label %bb.sa

bb.rz:                                            ; preds = %bb.ry
  %i.cjq = shl nuw nsw i32 %i.cjm, 6
  %i.cjr = and i32 %i.cjq, 1984
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cje, i64 2
  store ptr %i.cjs, ptr %i.cjd, align 8, !tbaa !122
  %i.cjt = load i8, ptr %i.cjk, align 1, !tbaa !35
  %i.cju = and i8 %i.cjt, 63
  %i.cjv = zext nneg i8 %i.cju to i32
  %i.cjw = or disjoint i32 %i.cjr, %i.cjv
  br label %bb.sh

bb.sa:                                            ; preds = %bb.ry
  %i.cjx = and i32 %i.cjm, 16
  %i.cjy = icmp eq i32 %i.cjx, 0
  %i.cjz = load i8, ptr %i.cjk, align 1, !tbaa !35
  %i.cka = and i8 %i.cjz, 63
  %i.ckb = zext nneg i8 %i.cka to i32             ; 4 uses
  br i1 %i.cjy, label %bb.sb, label %bb.sc

bb.sb:                                            ; preds = %bb.sa
  %i.ckc = shl nuw nsw i32 %i.cjm, 12
  %i.ckd = and i32 %i.ckc, 61440
  %i.cke = shl nuw nsw i32 %i.ckb, 6
  %i.ckf = or disjoint i32 %i.cke, %i.ckd
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cje, i64 2
  %i.ckh = load i8, ptr %i.ckg, align 1, !tbaa !35
  %i.cki = and i8 %i.ckh, 63
  %i.ckj = zext nneg i8 %i.cki to i32
  %i.ckk = or disjoint i32 %i.ckf, %i.ckj
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.cje, i64 3
  store ptr %i.ckl, ptr %i.cjd, align 8, !tbaa !122
  br label %bb.sh

bb.sc:                                            ; preds = %bb.sa
  %i.ckm = and i32 %i.cjm, 8
  %i.ckn = icmp eq i32 %i.ckm, 0
  br i1 %i.ckn, label %bb.sd, label %bb.se

bb.sd:                                            ; preds = %bb.sc
  %i.cko = shl nuw nsw i32 %i.cjm, 18
  %i.ckp = and i32 %i.cko, 1835008
  %i.ckq = shl nuw nsw i32 %i.ckb, 12
  %i.ckr = or disjoint i32 %i.ckq, %i.ckp
  %i.cks = getelementptr inbounds nuw i8, ptr %i.cje, i64 2
  %i.ckt = load i8, ptr %i.cks, align 1, !tbaa !35
  %i.cku = and i8 %i.ckt, 63
  %i.ckv = zext nneg i8 %i.cku to i32
  %i.ckw = shl nuw nsw i32 %i.ckv, 6
  %i.ckx = or disjoint i32 %i.ckr, %i.ckw
  %i.cky = getelementptr inbounds nuw i8, ptr %i.cje, i64 3
  %i.ckz = load i8, ptr %i.cky, align 1, !tbaa !35
  %i.cla = and i8 %i.ckz, 63
  %i.clb = zext nneg i8 %i.cla to i32
  %i.clc = or disjoint i32 %i.ckx, %i.clb
  %i.cld = getelementptr inbounds nuw i8, ptr %i.cje, i64 4
  store ptr %i.cld, ptr %i.cjd, align 8, !tbaa !122
  br label %bb.sh

bb.se:                                            ; preds = %bb.sc
  %i.cle = and i32 %i.cjm, 4
  %i.clf = icmp eq i32 %i.cle, 0
  %i.clg = getelementptr inbounds nuw i8, ptr %i.cje, i64 2
  %i.clh = load i8, ptr %i.clg, align 1, !tbaa !35
  %i.cli = and i8 %i.clh, 63
  %i.clj = zext nneg i8 %i.cli to i32             ; 2 uses
  %i.clk = getelementptr inbounds nuw i8, ptr %i.cje, i64 3
  %i.cll = load i8, ptr %i.clk, align 1, !tbaa !35
  %i.clm = and i8 %i.cll, 63
  %i.cln = zext nneg i8 %i.clm to i32             ; 2 uses
  %i.clo = getelementptr inbounds nuw i8, ptr %i.cje, i64 4
  %i.clp = load i8, ptr %i.clo, align 1, !tbaa !35
  %i.clq = and i8 %i.clp, 63
  %i.clr = zext nneg i8 %i.clq to i32             ; 2 uses
  br i1 %i.clf, label %bb.sf, label %bb.sg

bb.sf:                                            ; preds = %bb.se
  %i.cls = shl nuw i32 %i.cjm, 24
  %i.clt = and i32 %i.cls, 50331648
  %i.clu = shl nuw nsw i32 %i.ckb, 18
  %i.clv = or disjoint i32 %i.clu, %i.clt
  %i.clw = shl nuw nsw i32 %i.clj, 12
  %i.clx = or disjoint i32 %i.clv, %i.clw
  %i.cly = shl nuw nsw i32 %i.cln, 6
  %i.clz = or disjoint i32 %i.clx, %i.cly
  %i.cma = or disjoint i32 %i.clz, %i.clr
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cje, i64 5
  store ptr %i.cmb, ptr %i.cjd, align 8, !tbaa !122
  br label %bb.sh

bb.sg:                                            ; preds = %bb.se
  %i.cmc = shl i32 %i.cjm, 30
  %i.cmd = and i32 %i.cmc, 1073741824
  %i.cme = shl nuw nsw i32 %i.ckb, 24
  %i.cmf = or disjoint i32 %i.cme, %i.cmd
  %i.cmg = shl nuw nsw i32 %i.clj, 18
  %i.cmh = or disjoint i32 %i.cmf, %i.cmg
  %i.cmi = shl nuw nsw i32 %i.cln, 12
  %i.cmj = or disjoint i32 %i.cmh, %i.cmi
  %i.cmk = shl nuw nsw i32 %i.clr, 6
  %i.cml = or disjoint i32 %i.cmj, %i.cmk
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cje, i64 5
  %i.cmn = load i8, ptr %i.cmm, align 1, !tbaa !35
  %i.cmo = and i8 %i.cmn, 63
  %i.cmp = zext nneg i8 %i.cmo to i32
  %i.cmq = or disjoint i32 %i.cml, %i.cmp
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cje, i64 6
  store ptr %i.cmr, ptr %i.cjd, align 8, !tbaa !122
  br label %bb.sh

bb.sh:                                            ; preds = %bb.rz, %bb.sd, %bb.sg, %bb.sf, %bb.sb
  %.48034 = phi i32 [ %i.cjw, %bb.rz ], [ %i.ckk, %bb.sb ], [ %i.clc, %bb.sd ], [ %i.cma, %bb.sf ], [ %i.cmq, %bb.sg ] ; 2 uses
  %i.cms = icmp samesign ugt i32 %.48034, 255
  br i1 %i.cms, label %bb.si, label %.thread9737

bb.si:                                            ; preds = %bb.sh
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.sgy, i64 73
  %i.cmu = load i8, ptr %i.cmt, align 1, !tbaa !133
  %i.cmv = icmp eq i8 %i.cmu, 110
  br i1 %i.cmv, label %.backedge.backedge, label %.loopexit10342.loopexit

end_hunk_3
begin_hunk_4_@match:bb.a
bb.avu:                                           ; preds = %.lr.ph12058, %._crit_edge17981
  %i.ita = phi ptr [ %.pre14126, %.lr.ph12058 ], [ %storemerge8936.lcssa, %._crit_edge17981 ] ; 4 uses
  %.46815712057 = phi i32 [ 1, %.lr.ph12058 ], [ %i.itq, %._crit_edge17981 ]
  %.not8934 = icmp ult ptr %i.ita, %i.hsk
  br i1 %.not8934, label %bb.avz, label %bb.avv

bb.avv:                                           ; preds = %bb.avu
  %i.itb = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8938 = icmp eq i16 %i.itb, 0
  br i1 %.not8938, label %.preheader10324.preheader, label %bb.avw

bb.avw:                                           ; preds = %bb.avv
  %i.itc = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.itd = icmp ugt ptr %i.ita, %i.itc
  br i1 %i.itd, label %bb.avy, label %bb.avx

bb.avx:                                           ; preds = %bb.avw
  %i.ite = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8939 = icmp eq i32 %i.ite, 0
  br i1 %.not8939, label %.preheader10324.preheader, label %bb.avy

bb.avy:                                           ; preds = %bb.avx, %bb.avw
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not15003 = icmp eq i16 %i.itb, 1
  br i1 %.not15003, label %.preheader10324.preheader, label %.thread9657

bb.avz:                                           ; preds = %bb.avu
  %i.itf = load i8, ptr %i.ita, align 1, !tbaa !35 ; 2 uses
  %i.itg = icmp sgt i8 %i.itf, -1
  br i1 %i.itg, label %bb.awa, label %bb.awb

bb.awa:                                           ; preds = %bb.avz
  %i.ith = load ptr, ptr %i.af, align 8, !tbaa !86
  %i.iti = zext nneg i8 %i.itf to i64
  %i.itj = getelementptr inbounds nuw i8, ptr %i.ith, i64 %i.iti
  %i.itk = load i8, ptr %i.itj, align 1, !tbaa !35
  %i.itl = and i8 %i.itk, 16
  %.not8935 = icmp eq i8 %i.itl, 0
  br i1 %.not8935, label %bb.awb, label %.preheader10324.preheader

bb.awb:                                           ; preds = %bb.awa, %bb.avz
  %storemerge893617977 = getelementptr inbounds nuw i8, ptr %i.ita, i64 1 ; 4 uses
  store ptr %storemerge893617977, ptr %i.hsj, align 8, !tbaa !122
  %i.itm = icmp ult ptr %storemerge893617977, %i.hsk
  br i1 %i.itm, label %.lr.ph17980, label %._crit_edge17981

bb.awc:                                           ; preds = %.lr.ph17980
  %storemerge8936 = getelementptr inbounds nuw i8, ptr %storemerge893617978, i64 1 ; 4 uses
  store ptr %storemerge8936, ptr %i.hsj, align 8, !tbaa !122
  %i.itn = icmp ult ptr %storemerge8936, %i.hsk
  br i1 %i.itn, label %.lr.ph17980, label %._crit_edge17981, !llvm.loop !198

.lr.ph17980:                                      ; preds = %bb.awb, %bb.awc
  %storemerge893617978 = phi ptr [ %storemerge8936, %bb.awc ], [ %storemerge893617977, %bb.awb ] ; 3 uses
  %i.ito = load i8, ptr %storemerge893617978, align 1, !tbaa !35
  %i.itp = icmp slt i8 %i.ito, -64
  br i1 %i.itp, label %bb.awc, label %._crit_edge17983, !llvm.loop !198

._crit_edge17983:                                 ; preds = %.lr.ph17980
  br label %._crit_edge17981, !llvm.loop !198

._crit_edge17981:                                 ; preds = %bb.awc, %._crit_edge17983, %bb.awb
  %storemerge8936.lcssa = phi ptr [ %storemerge893617977, %bb.awb ], [ %storemerge893617978, %._crit_edge17983 ], [ %storemerge8936, %bb.awc ]
  %i.itq = add i32 %.46815712057, 1               ; 2 uses
  %.not8933 = icmp ugt i32 %i.itq, %i.hod
  br i1 %.not8933, label %.thread9838, label %bb.avu, !llvm.loop !199

bb.awd:                                           ; preds = %bb.awi
  %.not8930 = icmp ult ptr %i.iue, %i.hsi
  br i1 %.not8930, label %.lr.ph17974, label %._crit_edge17975, !llvm.loop !200

._crit_edge17975:                                 ; preds = %bb.awd, %.lr.ph12055
  %.lcssa16736 = phi ptr [ %.pre14125, %.lr.ph12055 ], [ %i.iue, %bb.awd ]
  %i.itr = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8931 = icmp eq i16 %i.itr, 0
  br i1 %.not8931, label %.preheader10324.preheader, label %bb.awe

bb.awe:                                           ; preds = %._crit_edge17975
  %i.its = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.itt = icmp ugt ptr %.lcssa16736, %i.its
  br i1 %i.itt, label %bb.awg, label %bb.awf

bb.awf:                                           ; preds = %bb.awe
  %i.itu = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8932 = icmp eq i32 %i.itu, 0
  br i1 %.not8932, label %.preheader10324.preheader, label %bb.awg

bb.awg:                                           ; preds = %bb.awf, %bb.awe
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not15002 = icmp eq i16 %i.itr, 1
  br i1 %.not15002, label %.preheader10324.preheader, label %.thread9657

.lr.ph17974:                                      ; preds = %.lr.ph12055, %bb.awd
  %.4781581205417973 = phi i32 [ %i.iuf, %bb.awd ], [ 1, %.lr.ph12055 ]
  %i.itv = phi ptr [ %i.iue, %bb.awd ], [ %.pre14125, %.lr.ph12055 ] ; 2 uses
  %i.itw = load i8, ptr %i.itv, align 1, !tbaa !35 ; 2 uses
  %i.itx = icmp slt i8 %i.itw, 0
  br i1 %i.itx, label %.preheader10324.preheader.loopexit18166, label %bb.awh

bb.awh:                                           ; preds = %.lr.ph17974
  %i.ity = load ptr, ptr %i.af, align 8, !tbaa !86
  %i.itz = zext nneg i8 %i.itw to i64
  %i.iua = getelementptr inbounds nuw i8, ptr %i.ity, i64 %i.itz
  %i.iub = load i8, ptr %i.iua, align 1, !tbaa !35
  %i.iuc = and i8 %i.iub, 16
  %i.iud = icmp eq i8 %i.iuc, 0
  br i1 %i.iud, label %.preheader10324.preheader.loopexit18166, label %bb.awi

bb.awi:                                           ; preds = %bb.awh
  %i.iue = getelementptr inbounds nuw i8, ptr %i.itv, i64 1 ; 4 uses
  store ptr %i.iue, ptr %i.hsh, align 8, !tbaa !122
  %i.iuf = add i32 %.4781581205417973, 1          ; 2 uses
  %.not8929 = icmp ugt i32 %i.iuf, %i.hod
  br i1 %.not8929, label %.thread9838, label %bb.awd, !llvm.loop !200

bb.awj:                                           ; preds = %bb.apv
  switch i8 %i.hoe, label %.thread9657 [
    i8 12, label %.lr.ph12052
    i8 13, label %bb.axc
    i8 17, label %.lr.ph12049
    i8 18, label %.lr.ph12045
    i8 19, label %.lr.ph12041
    i8 20, label %.lr.ph12037
    i8 21, label %.lr.ph12033
    i8 6, label %.lr.ph12030
    i8 7, label %.lr.ph12027
    i8 8, label %.lr.ph12024
    i8 9, label %.lr.ph12021
    i8 10, label %.lr.ph12018
    i8 11, label %.lr.ph12015
  ]

.lr.ph12015:                                      ; preds = %bb.awj
  %i.iug = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iuh = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14116 = load ptr, ptr %i.iug, align 8, !tbaa !122 ; 3 uses
  %.not887217923 = icmp ult ptr %.pre14116, %i.iuh
  br i1 %.not887217923, label %.lr.ph17925.preheader, label %._crit_edge17926

.lr.ph17925.preheader:                            ; preds = %.lr.ph12015
  %i.iui = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %.lr.ph17925

.lr.ph12018:                                      ; preds = %bb.awj
  %i.iuj = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iuk = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14117 = load ptr, ptr %i.iuj, align 8, !tbaa !122 ; 3 uses
  %.not887617927 = icmp ult ptr %.pre14117, %i.iuk
  br i1 %.not887617927, label %.lr.ph17929.preheader, label %._crit_edge17930

.lr.ph17929.preheader:                            ; preds = %.lr.ph12018
  %i.iul = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %.lr.ph17929

.lr.ph12021:                                      ; preds = %bb.awj
  %i.ium = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iun = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14118 = load ptr, ptr %i.ium, align 8, !tbaa !122 ; 3 uses
  %.not888117932 = icmp ult ptr %.pre14118, %i.iun
  br i1 %.not888117932, label %.lr.ph17934.preheader, label %._crit_edge17935

.lr.ph17934.preheader:                            ; preds = %.lr.ph12021
  %i.iuo = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %.lr.ph17934

.lr.ph12024:                                      ; preds = %bb.awj
  %i.iup = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iuq = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14119 = load ptr, ptr %i.iup, align 8, !tbaa !122 ; 3 uses
  %.not888517937 = icmp ult ptr %.pre14119, %i.iuq
  br i1 %.not888517937, label %.lr.ph17939.preheader, label %._crit_edge17940

.lr.ph17939.preheader:                            ; preds = %.lr.ph12024
  %i.iur = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %.lr.ph17939

.lr.ph12027:                                      ; preds = %bb.awj
  %i.ius = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iut = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14120 = load ptr, ptr %i.ius, align 8, !tbaa !122 ; 3 uses
  %.not889017942 = icmp ult ptr %.pre14120, %i.iut
  br i1 %.not889017942, label %.lr.ph17944.preheader, label %._crit_edge17945

.lr.ph17944.preheader:                            ; preds = %.lr.ph12027
  %i.iuu = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %.lr.ph17944

.lr.ph12030:                                      ; preds = %bb.awj
  %i.iuv = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iuw = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14121 = load ptr, ptr %i.iuv, align 8, !tbaa !122 ; 3 uses
  %.not889417947 = icmp ult ptr %.pre14121, %i.iuw
  br i1 %.not889417947, label %.lr.ph17949.preheader, label %._crit_edge17950

.lr.ph17949.preheader:                            ; preds = %.lr.ph12030
  %i.iux = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %.lr.ph17949

.lr.ph12033:                                      ; preds = %bb.awj
  %i.iuy = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iuz = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12034 = load ptr, ptr %i.iuy, align 8, !tbaa !122 ; 3 uses
  %.not889917952 = icmp ult ptr %.promoted12034, %i.iuz
  br i1 %.not889917952, label %.lr.ph17954, label %._crit_edge17955

.lr.ph12037:                                      ; preds = %bb.awj
  %i.iva = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.ivb = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12038 = load ptr, ptr %i.iva, align 8, !tbaa !122 ; 3 uses
  %.not890317957 = icmp ult ptr %.promoted12038, %i.ivb
  br i1 %.not890317957, label %.lr.ph17959, label %._crit_edge17960

.lr.ph12041:                                      ; preds = %bb.awj
  %i.ivc = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.ivd = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12042 = load ptr, ptr %i.ivc, align 8, !tbaa !122 ; 3 uses
  %.not890717962 = icmp ult ptr %.promoted12042, %i.ivd
  br i1 %.not890717962, label %.lr.ph17964, label %._crit_edge17965

.lr.ph12045:                                      ; preds = %bb.awj
  %i.ive = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.ivf = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.promoted12046 = load ptr, ptr %i.ive, align 8, !tbaa !122 ; 3 uses
  %.not891117967 = icmp ult ptr %.promoted12046, %i.ivf
  br i1 %.not891117967, label %.lr.ph17969, label %._crit_edge17970

.lr.ph12049:                                      ; preds = %bb.awj
  %i.ivg = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 3 uses
  %i.ivh = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.pre14122 = load ptr, ptr %i.ivg, align 8, !tbaa !122
  br label %bb.axi

.lr.ph12052:                                      ; preds = %bb.awj
  %i.ivi = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 3 uses
  %.pre14123 = load ptr, ptr %i.ivi, align 8, !tbaa !122
  br label %bb.awk

bb.awk:                                           ; preds = %.lr.ph12052, %bb.axb
  %i.ivj = phi ptr [ %.pre14123, %.lr.ph12052 ], [ %i.iwn, %bb.axb ] ; 9 uses
  %.48815912051 = phi i32 [ 1, %.lr.ph12052 ], [ %i.iwo, %bb.axb ]
  %i.ivk = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 3 uses
  %.not8921 = icmp ult ptr %i.ivj, %i.ivk
  br i1 %.not8921, label %bb.awp, label %bb.awl

bb.awl:                                           ; preds = %bb.awk
  %i.ivl = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8927 = icmp eq i16 %i.ivl, 0
  br i1 %.not8927, label %.preheader10324.preheader, label %bb.awm

bb.awm:                                           ; preds = %bb.awl
  %i.ivm = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ivn = icmp ugt ptr %i.ivj, %i.ivm
  br i1 %i.ivn, label %bb.awo, label %bb.awn

bb.awn:                                           ; preds = %bb.awm
  %i.ivo = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8928 = icmp eq i32 %i.ivo, 0
  br i1 %.not8928, label %.preheader10324.preheader, label %bb.awo

bb.awo:                                           ; preds = %bb.awn, %bb.awm
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not15000 = icmp eq i16 %i.ivl, 1
  br i1 %.not15000, label %.preheader10324.preheader, label %.thread9657

bb.awp:                                           ; preds = %bb.awk
  %i.ivp = load i32, ptr %i.ao, align 4, !tbaa !73 ; 2 uses
  %.not8922 = icmp eq i32 %i.ivp, 0
  br i1 %.not8922, label %bb.awr, label %bb.awq

bb.awq:                                           ; preds = %bb.awp
  %i.ivq = tail call i32 @_pcre2_is_newline_8(ptr noundef %i.ivj, i32 noundef %i.ivp, ptr noundef nonnull %i.ivk, ptr noundef nonnull %i.ap, i32 noundef %.lobit) #8
  %.not8924 = icmp eq i32 %i.ivq, 0
  br i1 %.not8924, label %._crit_edge14216, label %.preheader10324.preheader.loopexit18168

._crit_edge14216:                                 ; preds = %bb.awq
  %.pre14124.pre = load ptr, ptr %i.ivi, align 8, !tbaa !122
  br label %bb.awv

bb.awr:                                           ; preds = %bb.awp
  %i.ivr = load i32, ptr %i.ap, align 8, !tbaa !75 ; 2 uses
  %i.ivs = zext i32 %i.ivr to i64
  %i.ivt = sub nsw i64 0, %i.ivs
  %i.ivu = getelementptr inbounds i8, ptr %i.ivk, i64 %i.ivt
  %.not8923 = icmp ugt ptr %i.ivj, %i.ivu
  br i1 %.not8923, label %bb.awv, label %bb.aws

bb.aws:                                           ; preds = %bb.awr
  %i.ivv = load i8, ptr %i.ivj, align 1, !tbaa !35
  %i.ivw = load i8, ptr %i.aq, align 4, !tbaa !35
  %i.ivx = icmp eq i8 %i.ivv, %i.ivw
  br i1 %i.ivx, label %bb.awt, label %bb.awv

bb.awt:                                           ; preds = %bb.aws
  %i.ivy = icmp eq i32 %i.ivr, 1
  br i1 %i.ivy, label %.preheader10324.preheader.loopexit18168, label %bb.awu

bb.awu:                                           ; preds = %bb.awt
  %i.ivz = getelementptr inbounds nuw i8, ptr %i.ivj, i64 1
  %i.iwa = load i8, ptr %i.ivz, align 1, !tbaa !35
  %i.iwb = load i8, ptr %i.ar, align 1, !tbaa !35
  %i.iwc = icmp eq i8 %i.iwa, %i.iwb
  br i1 %i.iwc, label %.preheader10324.preheader.loopexit18168, label %bb.awv

bb.awv:                                           ; preds = %._crit_edge14216, %bb.awu, %bb.aws, %bb.awr
  %.pre14124 = phi ptr [ %.pre14124.pre, %._crit_edge14216 ], [ %i.ivj, %bb.awu ], [ %i.ivj, %bb.aws ], [ %i.ivj, %bb.awr ] ; 3 uses
  %i.iwd = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8925 = icmp eq i16 %i.iwd, 0
  br i1 %.not8925, label %bb.axb, label %bb.aww

bb.aww:                                           ; preds = %bb.awv
  %i.iwe = getelementptr inbounds nuw i8, ptr %.pre14124, i64 1
  %i.iwf = load ptr, ptr %i.ag, align 8, !tbaa !59
  %.not8926 = icmp ult ptr %i.iwe, %i.iwf
  br i1 %.not8926, label %bb.axb, label %bb.awx

bb.awx:                                           ; preds = %bb.aww
  %i.iwg = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.iwh = icmp eq i32 %i.iwg, 0
  br i1 %i.iwh, label %bb.awy, label %bb.axb

bb.awy:                                           ; preds = %bb.awx
  %i.iwi = load i32, ptr %i.ap, align 8, !tbaa !75
  %i.iwj = icmp eq i32 %i.iwi, 2
  br i1 %i.iwj, label %bb.awz, label %bb.axb

bb.awz:                                           ; preds = %bb.awy
  %i.iwk = load i8, ptr %.pre14124, align 1, !tbaa !35
  %i.iwl = load i8, ptr %i.aq, align 4, !tbaa !35
  %i.iwm = icmp eq i8 %i.iwk, %i.iwl
  br i1 %i.iwm, label %bb.axa, label %bb.axb

bb.axa:                                           ; preds = %bb.awz
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not15001 = icmp eq i16 %i.iwd, 1
  br i1 %.not15001, label %bb.axb, label %.thread9657

bb.axb:                                           ; preds = %bb.axa, %bb.awz, %bb.awy, %bb.awx, %bb.aww, %bb.awv
  %i.iwn = getelementptr inbounds nuw i8, ptr %.pre14124, i64 1 ; 2 uses
  store ptr %i.iwn, ptr %i.ivi, align 8, !tbaa !122
  %i.iwo = add i32 %.48815912051, 1               ; 2 uses
  %i.iwp = load i32, ptr %i.hof, align 8, !tbaa !77
  %.not8920 = icmp ugt i32 %i.iwo, %i.iwp
  br i1 %.not8920, label %.thread9838, label %bb.awk, !llvm.loop !201

bb.axc:                                           ; preds = %bb.awj
  %i.iwq = getelementptr inbounds nuw i8, ptr %.47548, i64 80 ; 2 uses
  %i.iwr = load ptr, ptr %i.iwq, align 8, !tbaa !122 ; 3 uses
  %i.iws = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.iwt = zext i32 %i.hod to i64                 ; 2 uses
  %i.iwu = sub nsw i64 0, %i.iwt
  %i.iwv = getelementptr inbounds i8, ptr %i.iws, i64 %i.iwu
  %i.iww = icmp ugt ptr %i.iwr, %i.iwv
  br i1 %i.iww, label %bb.axd, label %bb.axh

bb.axd:                                           ; preds = %bb.axc
  %i.iwx = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8918 = icmp eq i16 %i.iwx, 0
  br i1 %.not8918, label %.preheader10324.preheader, label %bb.axe

bb.axe:                                           ; preds = %bb.axd
  %i.iwy = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.iwz = icmp ugt ptr %i.iwr, %i.iwy
  br i1 %i.iwz, label %bb.axg, label %bb.axf

bb.axf:                                           ; preds = %bb.axe
  %i.ixa = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8919 = icmp eq i32 %i.ixa, 0
  br i1 %.not8919, label %.preheader10324.preheader, label %bb.axg

bb.axg:                                           ; preds = %bb.axf, %bb.axe
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14999 = icmp eq i16 %i.iwx, 1
  br i1 %.not14999, label %.preheader10324.preheader, label %.thread9657

bb.axh:                                           ; preds = %bb.axc
  %i.ixb = getelementptr inbounds nuw i8, ptr %i.iwr, i64 %i.iwt
  store ptr %i.ixb, ptr %i.iwq, align 8, !tbaa !122
  br label %.thread9838

bb.axi:                                           ; preds = %.lr.ph12049, %bb.axs
  %i.ixc = phi ptr [ %.pre14122, %.lr.ph12049 ], [ %i.ixp, %bb.axs ] ; 5 uses
  %.49816012048 = phi i32 [ 1, %.lr.ph12049 ], [ %i.ixq, %bb.axs ]
  %.not8915 = icmp ult ptr %i.ixc, %i.ivh
  br i1 %.not8915, label %bb.axn, label %bb.axj

bb.axj:                                           ; preds = %bb.axi
  %i.ixd = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8916 = icmp eq i16 %i.ixd, 0
  br i1 %.not8916, label %.preheader10324.preheader, label %bb.axk

bb.axk:                                           ; preds = %bb.axj
  %i.ixe = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ixf = icmp ugt ptr %i.ixc, %i.ixe
  br i1 %i.ixf, label %bb.axm, label %bb.axl

bb.axl:                                           ; preds = %bb.axk
  %i.ixg = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8917 = icmp eq i32 %i.ixg, 0
  br i1 %.not8917, label %.preheader10324.preheader, label %bb.axm

bb.axm:                                           ; preds = %bb.axl, %bb.axk
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14998 = icmp eq i16 %i.ixd, 1
  br i1 %.not14998, label %.preheader10324.preheader, label %.thread9657

bb.axn:                                           ; preds = %bb.axi
  %i.ixh = getelementptr inbounds nuw i8, ptr %i.ixc, i64 1 ; 7 uses
  store ptr %i.ixh, ptr %i.ivg, align 8, !tbaa !122
  %i.ixi = load i8, ptr %i.ixc, align 1, !tbaa !35
  switch i8 %i.ixi, label %.preheader10324.preheader.loopexit18171 [
    i8 13, label %bb.axo
    i8 10, label %bb.axs
    i8 11, label %bb.axr
    i8 12, label %bb.axr
    i8 -123, label %bb.axr
  ]

bb.axo:                                           ; preds = %bb.axn
  %i.ixj = icmp ult ptr %i.ixh, %i.ivh
  br i1 %i.ixj, label %bb.axp, label %bb.axs

bb.axp:                                           ; preds = %bb.axo
  %i.ixk = load i8, ptr %i.ixh, align 1, !tbaa !35
  %i.ixl = icmp eq i8 %i.ixk, 10
  br i1 %i.ixl, label %bb.axq, label %bb.axs

bb.axq:                                           ; preds = %bb.axp
  %i.ixm = getelementptr inbounds nuw i8, ptr %i.ixc, i64 2 ; 2 uses
  store ptr %i.ixm, ptr %i.ivg, align 8, !tbaa !122
  br label %bb.axs

bb.axr:                                           ; preds = %bb.axn, %bb.axn, %bb.axn
  %i.ixn = load i16, ptr %i.ax, align 2, !tbaa !72
  %i.ixo = icmp eq i16 %i.ixn, 2
  br i1 %i.ixo, label %.preheader10324.preheader.loopexit18171, label %bb.axs

bb.axs:                                           ; preds = %bb.axn, %bb.axq, %bb.axp, %bb.axo, %bb.axr
  %i.ixp = phi ptr [ %i.ixh, %bb.axn ], [ %i.ixm, %bb.axq ], [ %i.ixh, %bb.axp ], [ %i.ixh, %bb.axo ], [ %i.ixh, %bb.axr ]
  %i.ixq = add i32 %.49816012048, 1               ; 2 uses
  %.not8914 = icmp ugt i32 %i.ixq, %i.hod
  br i1 %.not8914, label %.thread9838, label %bb.axi, !llvm.loop !202

bb.axt:                                           ; preds = %bb.axx
  %.not8911 = icmp ult ptr %i.ixv, %i.ivf
  br i1 %.not8911, label %.lr.ph17969, label %._crit_edge17970, !llvm.loop !203

._crit_edge17970:                                 ; preds = %bb.axt, %.lr.ph12045
  %.lcssa16726 = phi ptr [ %.promoted12046, %.lr.ph12045 ], [ %i.ixv, %bb.axt ]
  %i.ixr = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8912 = icmp eq i16 %i.ixr, 0
  br i1 %.not8912, label %.preheader10324.preheader, label %bb.axu

bb.axu:                                           ; preds = %._crit_edge17970
  %i.ixs = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.ixt = icmp ugt ptr %.lcssa16726, %i.ixs
  br i1 %i.ixt, label %bb.axw, label %bb.axv

bb.axv:                                           ; preds = %bb.axu
  %i.ixu = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8913 = icmp eq i32 %i.ixu, 0
  br i1 %.not8913, label %.preheader10324.preheader, label %bb.axw

bb.axw:                                           ; preds = %bb.axv, %bb.axu
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14997 = icmp eq i16 %i.ixr, 1
  br i1 %.not14997, label %.preheader10324.preheader, label %.thread9657

.lr.ph17969:                                      ; preds = %.lr.ph12045, %bb.axt
  %.5081611204417968 = phi i32 [ %i.ixx, %bb.axt ], [ 1, %.lr.ph12045 ]
  %11 = phi ptr [ %i.ixv, %bb.axt ], [ %.promoted12046, %.lr.ph12045 ] ; 2 uses
  %i.ixv = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  store ptr %i.ixv, ptr %i.ive, align 8, !tbaa !122
  %i.ixw = load i8, ptr %11, align 1, !tbaa !35
  switch i8 %i.ixw, label %bb.axx [
    i8 9, label %.preheader10324.preheader.loopexit18173
    i8 32, label %.preheader10324.preheader.loopexit18173
    i8 -96, label %.preheader10324.preheader.loopexit18173
  ]

bb.axx:                                           ; preds = %.lr.ph17969
  %i.ixx = add i32 %.5081611204417968, 1          ; 2 uses
  %.not8910 = icmp ugt i32 %i.ixx, %i.hod
  br i1 %.not8910, label %.thread9838, label %bb.axt, !llvm.loop !203

bb.axy:                                           ; preds = %bb.ayc
  %.not8907 = icmp ult ptr %i.iyc, %i.ivd
  br i1 %.not8907, label %.lr.ph17964, label %._crit_edge17965, !llvm.loop !204

._crit_edge17965:                                 ; preds = %bb.axy, %.lr.ph12041
  %.lcssa16723 = phi ptr [ %.promoted12042, %.lr.ph12041 ], [ %i.iyc, %bb.axy ]
  %i.ixy = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8908 = icmp eq i16 %i.ixy, 0
  br i1 %.not8908, label %.preheader10324.preheader, label %bb.axz

bb.axz:                                           ; preds = %._crit_edge17965
  %i.ixz = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.iya = icmp ugt ptr %.lcssa16723, %i.ixz
  br i1 %i.iya, label %bb.ayb, label %bb.aya

bb.aya:                                           ; preds = %bb.axz
  %i.iyb = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8909 = icmp eq i32 %i.iyb, 0
  br i1 %.not8909, label %.preheader10324.preheader, label %bb.ayb

bb.ayb:                                           ; preds = %bb.aya, %bb.axz
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14996 = icmp eq i16 %i.ixy, 1
  br i1 %.not14996, label %.preheader10324.preheader, label %.thread9657

.lr.ph17964:                                      ; preds = %.lr.ph12041, %bb.axy
  %.5181621204017963 = phi i32 [ %i.iye, %bb.axy ], [ 1, %.lr.ph12041 ]
  %12 = phi ptr [ %i.iyc, %bb.axy ], [ %.promoted12042, %.lr.ph12041 ] ; 2 uses
  %i.iyc = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 4 uses
  store ptr %i.iyc, ptr %i.ivc, align 8, !tbaa !122
  %i.iyd = load i8, ptr %12, align 1, !tbaa !35
  switch i8 %i.iyd, label %.preheader10324.preheader [
    i8 9, label %bb.ayc
    i8 32, label %bb.ayc
    i8 -96, label %bb.ayc
  ]

bb.ayc:                                           ; preds = %.lr.ph17964, %.lr.ph17964, %.lr.ph17964
  %i.iye = add i32 %.5181621204017963, 1          ; 2 uses
  %.not8906 = icmp ugt i32 %i.iye, %i.hod
  br i1 %.not8906, label %.thread9838, label %bb.axy, !llvm.loop !204

bb.ayd:                                           ; preds = %bb.ayh
  %.not8903 = icmp ult ptr %i.iyj, %i.ivb
  br i1 %.not8903, label %.lr.ph17959, label %._crit_edge17960, !llvm.loop !205

._crit_edge17960:                                 ; preds = %bb.ayd, %.lr.ph12037
  %.lcssa16720 = phi ptr [ %.promoted12038, %.lr.ph12037 ], [ %i.iyj, %bb.ayd ]
  %i.iyf = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8904 = icmp eq i16 %i.iyf, 0
  br i1 %.not8904, label %.preheader10324.preheader, label %bb.aye

bb.aye:                                           ; preds = %._crit_edge17960
  %i.iyg = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.iyh = icmp ugt ptr %.lcssa16720, %i.iyg
  br i1 %i.iyh, label %bb.ayg, label %bb.ayf

bb.ayf:                                           ; preds = %bb.aye
  %i.iyi = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8905 = icmp eq i32 %i.iyi, 0
  br i1 %.not8905, label %.preheader10324.preheader, label %bb.ayg

bb.ayg:                                           ; preds = %bb.ayf, %bb.aye
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14995 = icmp eq i16 %i.iyf, 1
  br i1 %.not14995, label %.preheader10324.preheader, label %.thread9657

.lr.ph17959:                                      ; preds = %.lr.ph12037, %bb.ayd
  %.5281631203617958 = phi i32 [ %i.iyl, %bb.ayd ], [ 1, %.lr.ph12037 ]
  %13 = phi ptr [ %i.iyj, %bb.ayd ], [ %.promoted12038, %.lr.ph12037 ] ; 2 uses
  %i.iyj = getelementptr inbounds nuw i8, ptr %13, i64 1 ; 4 uses
  store ptr %i.iyj, ptr %i.iva, align 8, !tbaa !122
  %i.iyk = load i8, ptr %13, align 1, !tbaa !35
  switch i8 %i.iyk, label %bb.ayh [
    i8 10, label %.preheader10324.preheader.loopexit18177
    i8 11, label %.preheader10324.preheader.loopexit18177
    i8 12, label %.preheader10324.preheader.loopexit18177
    i8 13, label %.preheader10324.preheader.loopexit18177
    i8 -123, label %.preheader10324.preheader.loopexit18177
  ]

bb.ayh:                                           ; preds = %.lr.ph17959
  %i.iyl = add i32 %.5281631203617958, 1          ; 2 uses
  %.not8902 = icmp ugt i32 %i.iyl, %i.hod
  br i1 %.not8902, label %.thread9838, label %bb.ayd, !llvm.loop !205

bb.ayi:                                           ; preds = %bb.aym
  %.not8899 = icmp ult ptr %i.iyq, %i.iuz
  br i1 %.not8899, label %.lr.ph17954, label %._crit_edge17955, !llvm.loop !206

._crit_edge17955:                                 ; preds = %bb.ayi, %.lr.ph12033
  %.lcssa16717 = phi ptr [ %.promoted12034, %.lr.ph12033 ], [ %i.iyq, %bb.ayi ]
  %i.iym = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8900 = icmp eq i16 %i.iym, 0
  br i1 %.not8900, label %.preheader10324.preheader, label %bb.ayj

bb.ayj:                                           ; preds = %._crit_edge17955
  %i.iyn = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.iyo = icmp ugt ptr %.lcssa16717, %i.iyn
  br i1 %i.iyo, label %bb.ayl, label %bb.ayk

bb.ayk:                                           ; preds = %bb.ayj
  %i.iyp = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8901 = icmp eq i32 %i.iyp, 0
  br i1 %.not8901, label %.preheader10324.preheader, label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk, %bb.ayj
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14994 = icmp eq i16 %i.iym, 1
  br i1 %.not14994, label %.preheader10324.preheader, label %.thread9657

.lr.ph17954:                                      ; preds = %.lr.ph12033, %bb.ayi
  %.5381641203217953 = phi i32 [ %i.iys, %bb.ayi ], [ 1, %.lr.ph12033 ]
  %14 = phi ptr [ %i.iyq, %bb.ayi ], [ %.promoted12034, %.lr.ph12033 ] ; 2 uses
  %i.iyq = getelementptr inbounds nuw i8, ptr %14, i64 1 ; 4 uses
  store ptr %i.iyq, ptr %i.iuy, align 8, !tbaa !122
  %i.iyr = load i8, ptr %14, align 1, !tbaa !35
  switch i8 %i.iyr, label %.preheader10324.preheader [
    i8 10, label %bb.aym
    i8 11, label %bb.aym
    i8 12, label %bb.aym
    i8 13, label %bb.aym
    i8 -123, label %bb.aym
  ]

bb.aym:                                           ; preds = %.lr.ph17954, %.lr.ph17954, %.lr.ph17954, %.lr.ph17954, %.lr.ph17954
  %i.iys = add i32 %.5381641203217953, 1          ; 2 uses
  %.not8898 = icmp ugt i32 %i.iys, %i.hod
  br i1 %.not8898, label %.thread9838, label %bb.ayi, !llvm.loop !206

bb.ayn:                                           ; preds = %bb.ayr
  %.not8894 = icmp ult ptr %i.izd, %i.iuw
  br i1 %.not8894, label %.lr.ph17949, label %._crit_edge17950, !llvm.loop !207

._crit_edge17950:                                 ; preds = %bb.ayn, %.lr.ph12030
  %.lcssa16714 = phi ptr [ %.pre14121, %.lr.ph12030 ], [ %i.izd, %bb.ayn ]
  %i.iyt = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8896 = icmp eq i16 %i.iyt, 0
  br i1 %.not8896, label %.preheader10324.preheader, label %bb.ayo

bb.ayo:                                           ; preds = %._crit_edge17950
  %i.iyu = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.iyv = icmp ugt ptr %.lcssa16714, %i.iyu
  br i1 %i.iyv, label %bb.ayq, label %bb.ayp

bb.ayp:                                           ; preds = %bb.ayo
  %i.iyw = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8897 = icmp eq i32 %i.iyw, 0
  br i1 %.not8897, label %.preheader10324.preheader, label %bb.ayq

bb.ayq:                                           ; preds = %bb.ayp, %bb.ayo
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14993 = icmp eq i16 %i.iyt, 1
  br i1 %.not14993, label %.preheader10324.preheader, label %.thread9657

.lr.ph17949:                                      ; preds = %.lr.ph17949.preheader, %bb.ayn
  %.5481651202917948 = phi i32 [ %i.ize, %bb.ayn ], [ 1, %.lr.ph17949.preheader ]
  %i.iyx = phi ptr [ %i.izd, %bb.ayn ], [ %.pre14121, %.lr.ph17949.preheader ] ; 2 uses
  %i.iyy = load i8, ptr %i.iyx, align 1, !tbaa !35
  %i.iyz = zext i8 %i.iyy to i64
  %i.iza = getelementptr inbounds nuw i8, ptr %i.iux, i64 %i.iyz
  %i.izb = load i8, ptr %i.iza, align 1, !tbaa !35
  %i.izc = and i8 %i.izb, 8
  %.not8895 = icmp eq i8 %i.izc, 0
  br i1 %.not8895, label %bb.ayr, label %.preheader10324.preheader

bb.ayr:                                           ; preds = %.lr.ph17949
  %i.izd = getelementptr inbounds nuw i8, ptr %i.iyx, i64 1 ; 4 uses
  store ptr %i.izd, ptr %i.iuv, align 8, !tbaa !122
  %i.ize = add i32 %.5481651202917948, 1          ; 2 uses
  %.not8893 = icmp ugt i32 %i.ize, %i.hod
  br i1 %.not8893, label %.thread9838, label %bb.ayn, !llvm.loop !207

bb.ays:                                           ; preds = %bb.ayw
  %.not8890 = icmp ult ptr %i.izq, %i.iut
  br i1 %.not8890, label %.lr.ph17944, label %._crit_edge17945, !llvm.loop !208

._crit_edge17945:                                 ; preds = %bb.ays, %.lr.ph12027
  %.lcssa16711 = phi ptr [ %.pre14120, %.lr.ph12027 ], [ %i.izq, %bb.ays ]
  %i.izf = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8891 = icmp eq i16 %i.izf, 0
  br i1 %.not8891, label %.preheader10324.preheader, label %bb.ayt

bb.ayt:                                           ; preds = %._crit_edge17945
  %i.izg = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.izh = icmp ugt ptr %.lcssa16711, %i.izg
  br i1 %i.izh, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.izi = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8892 = icmp eq i32 %i.izi, 0
  br i1 %.not8892, label %.preheader10324.preheader, label %bb.ayv

bb.ayv:                                           ; preds = %bb.ayu, %bb.ayt
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14992 = icmp eq i16 %i.izf, 1
  br i1 %.not14992, label %.preheader10324.preheader, label %.thread9657

.lr.ph17944:                                      ; preds = %.lr.ph17944.preheader, %bb.ays
  %.5581661202617943 = phi i32 [ %i.izr, %bb.ays ], [ 1, %.lr.ph17944.preheader ]
  %i.izj = phi ptr [ %i.izq, %bb.ays ], [ %.pre14120, %.lr.ph17944.preheader ] ; 2 uses
  %i.izk = load i8, ptr %i.izj, align 1, !tbaa !35
  %i.izl = zext i8 %i.izk to i64
  %i.izm = getelementptr inbounds nuw i8, ptr %i.iuu, i64 %i.izl
  %i.izn = load i8, ptr %i.izm, align 1, !tbaa !35
  %i.izo = and i8 %i.izn, 8
  %i.izp = icmp eq i8 %i.izo, 0
  br i1 %i.izp, label %.preheader10324.preheader, label %bb.ayw

bb.ayw:                                           ; preds = %.lr.ph17944
  %i.izq = getelementptr inbounds nuw i8, ptr %i.izj, i64 1 ; 4 uses
  store ptr %i.izq, ptr %i.ius, align 8, !tbaa !122
  %i.izr = add i32 %.5581661202617943, 1          ; 2 uses
  %.not8889 = icmp ugt i32 %i.izr, %i.hod
  br i1 %.not8889, label %.thread9838, label %bb.ays, !llvm.loop !208

bb.ayx:                                           ; preds = %bb.azb
  %.not8885 = icmp ult ptr %i.jac, %i.iuq
  br i1 %.not8885, label %.lr.ph17939, label %._crit_edge17940, !llvm.loop !209

._crit_edge17940:                                 ; preds = %bb.ayx, %.lr.ph12024
  %.lcssa16708 = phi ptr [ %.pre14119, %.lr.ph12024 ], [ %i.jac, %bb.ayx ]
  %i.izs = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8887 = icmp eq i16 %i.izs, 0
  br i1 %.not8887, label %.preheader10324.preheader, label %bb.ayy

bb.ayy:                                           ; preds = %._crit_edge17940
  %i.izt = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.izu = icmp ugt ptr %.lcssa16708, %i.izt
  br i1 %i.izu, label %bb.aza, label %bb.ayz

bb.ayz:                                           ; preds = %bb.ayy
  %i.izv = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8888 = icmp eq i32 %i.izv, 0
  br i1 %.not8888, label %.preheader10324.preheader, label %bb.aza

bb.aza:                                           ; preds = %bb.ayz, %bb.ayy
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14991 = icmp eq i16 %i.izs, 1
  br i1 %.not14991, label %.preheader10324.preheader, label %.thread9657

.lr.ph17939:                                      ; preds = %.lr.ph17939.preheader, %bb.ayx
  %.5681671202317938 = phi i32 [ %i.jad, %bb.ayx ], [ 1, %.lr.ph17939.preheader ]
  %i.izw = phi ptr [ %i.jac, %bb.ayx ], [ %.pre14119, %.lr.ph17939.preheader ] ; 2 uses
  %i.izx = load i8, ptr %i.izw, align 1, !tbaa !35
  %i.izy = zext i8 %i.izx to i64
  %i.izz = getelementptr inbounds nuw i8, ptr %i.iur, i64 %i.izy
  %i.jaa = load i8, ptr %i.izz, align 1, !tbaa !35
  %i.jab = and i8 %i.jaa, 1
  %.not8886 = icmp eq i8 %i.jab, 0
  br i1 %.not8886, label %bb.azb, label %.preheader10324.preheader

bb.azb:                                           ; preds = %.lr.ph17939
  %i.jac = getelementptr inbounds nuw i8, ptr %i.izw, i64 1 ; 4 uses
  store ptr %i.jac, ptr %i.iup, align 8, !tbaa !122
  %i.jad = add i32 %.5681671202317938, 1          ; 2 uses
  %.not8884 = icmp ugt i32 %i.jad, %i.hod
  br i1 %.not8884, label %.thread9838, label %bb.ayx, !llvm.loop !209

bb.azc:                                           ; preds = %bb.azg
  %.not8881 = icmp ult ptr %i.jap, %i.iun
  br i1 %.not8881, label %.lr.ph17934, label %._crit_edge17935, !llvm.loop !210

._crit_edge17935:                                 ; preds = %bb.azc, %.lr.ph12021
  %.lcssa16705 = phi ptr [ %.pre14118, %.lr.ph12021 ], [ %i.jap, %bb.azc ]
  %i.jae = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8882 = icmp eq i16 %i.jae, 0
  br i1 %.not8882, label %.preheader10324.preheader, label %bb.azd

bb.azd:                                           ; preds = %._crit_edge17935
  %i.jaf = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.jag = icmp ugt ptr %.lcssa16705, %i.jaf
  br i1 %i.jag, label %bb.azf, label %bb.aze

bb.aze:                                           ; preds = %bb.azd
  %i.jah = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8883 = icmp eq i32 %i.jah, 0
  br i1 %.not8883, label %.preheader10324.preheader, label %bb.azf

bb.azf:                                           ; preds = %bb.aze, %bb.azd
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14990 = icmp eq i16 %i.jae, 1
  br i1 %.not14990, label %.preheader10324.preheader, label %.thread9657

.lr.ph17934:                                      ; preds = %.lr.ph17934.preheader, %bb.azc
  %.5781681202017933 = phi i32 [ %i.jaq, %bb.azc ], [ 1, %.lr.ph17934.preheader ]
  %i.jai = phi ptr [ %i.jap, %bb.azc ], [ %.pre14118, %.lr.ph17934.preheader ] ; 2 uses
  %i.jaj = load i8, ptr %i.jai, align 1, !tbaa !35
  %i.jak = zext i8 %i.jaj to i64
  %i.jal = getelementptr inbounds nuw i8, ptr %i.iuo, i64 %i.jak
  %i.jam = load i8, ptr %i.jal, align 1, !tbaa !35
  %i.jan = and i8 %i.jam, 1
  %i.jao = icmp eq i8 %i.jan, 0
  br i1 %i.jao, label %.preheader10324.preheader, label %bb.azg

bb.azg:                                           ; preds = %.lr.ph17934
  %i.jap = getelementptr inbounds nuw i8, ptr %i.jai, i64 1 ; 4 uses
  store ptr %i.jap, ptr %i.ium, align 8, !tbaa !122
  %i.jaq = add i32 %.5781681202017933, 1          ; 2 uses
  %.not8880 = icmp ugt i32 %i.jaq, %i.hod
  br i1 %.not8880, label %.thread9838, label %bb.azc, !llvm.loop !210

bb.azh:                                           ; preds = %bb.azl
  %.not8876 = icmp ult ptr %i.jbb, %i.iuk
  br i1 %.not8876, label %.lr.ph17929, label %._crit_edge17930, !llvm.loop !211

._crit_edge17930:                                 ; preds = %bb.azh, %.lr.ph12018
  %.lcssa16702 = phi ptr [ %.pre14117, %.lr.ph12018 ], [ %i.jbb, %bb.azh ]
  %i.jar = load i16, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %.not8878 = icmp eq i16 %i.jar, 0
  br i1 %.not8878, label %.preheader10324.preheader, label %bb.azi

bb.azi:                                           ; preds = %._crit_edge17930
  %i.jas = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.jat = icmp ugt ptr %.lcssa16702, %i.jas
  br i1 %i.jat, label %bb.azk, label %bb.azj

bb.azj:                                           ; preds = %bb.azi
  %i.jau = load i32, ptr %i.ai, align 8, !tbaa !62
  %.not8879 = icmp eq i32 %i.jau, 0
  br i1 %.not8879, label %.preheader10324.preheader, label %bb.azk

bb.azk:                                           ; preds = %bb.azj, %bb.azi
  store i32 1, ptr %i.aj, align 8, !tbaa !92
  %.not14989 = icmp eq i16 %i.jar, 1
  br i1 %.not14989, label %.preheader10324.preheader, label %.thread9657

.lr.ph17929:                                      ; preds = %.lr.ph17929.preheader, %bb.azh
  %.5881691201717928 = phi i32 [ %i.jbc, %bb.azh ], [ 1, %.lr.ph17929.preheader ]
end_hunk_4
