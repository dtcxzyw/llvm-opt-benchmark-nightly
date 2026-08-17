inline.NumInlined: 10959
inline.NumDeleted: 613
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@JS_GetOwnPropertyNamesInternal:bb.a

bb.gz:                                            ; preds = %bb.gy
  %i.afl = call fastcc zeroext i1 @is_num_string(ptr noundef %i.q, ptr noundef nonnull %i.afi)
  %i.afm = load i32, ptr %i.q, align 4            ; 2 uses
  %i.afn = icmp ne i32 %i.afm, -1
  %or.cond.i13.i303 = select i1 %i.afl, i1 %i.afn, i1 false
  br i1 %or.cond.i13.i303, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %storemerge.i10.i300 = phi i32 [ 0, %bb.ha ], [ %i.afm, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #49
  br label %num_keys_cmp.exit305

num_keys_cmp.exit305:                             ; preds = %bb.gx, %bb.hb
  %.016.i301 = phi i32 [ %i.afc, %bb.gx ], [ %storemerge.i10.i300, %bb.hb ] ; 2 uses
  %.not414 = icmp ult i32 %.017.i298, %.016.i301
  br i1 %.not414, label %.critedge.i, label %bb.hc

bb.hc:                                            ; preds = %num_keys_cmp.exit305
  %i.afo = icmp eq i32 %.017.i298, %.016.i301
  br i1 %i.afo, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void @exchange_one_int64(ptr noundef %.1189226.i, ptr noundef nonnull %.1183227.i, i64 noundef 8) #49, !inline_history !544
  %i.afp = add i64 %.1176229.i, 1
  %i.afq = getelementptr inbounds nuw i8, ptr %.1189226.i, i64 8
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.2190.i = phi ptr [ %i.afq, %bb.hd ], [ %.1189226.i, %bb.hc ] ; 2 uses
  %.2177.i = phi i64 [ %i.afp, %bb.hd ], [ %.1176229.i, %bb.hc ] ; 2 uses
  %i.afr = add i64 %.1179228.i, 1                 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.1183227.i, i64 8 ; 3 uses
  %i.aft = icmp ult ptr %i.afs, %.0191.i
  br i1 %i.aft, label %.lr.ph.i, label %.critedge.i, !llvm.loop !545

.critedge.i:                                      ; preds = %bb.he, %num_keys_cmp.exit305, %bb.gr
  %.1189.lcssa.i = phi ptr [ %.0188.i, %bb.gr ], [ %.2190.i, %bb.he ], [ %.1189226.i, %num_keys_cmp.exit305 ] ; 2 uses
  %.1183.lcssa.i = phi ptr [ %.0182.i, %bb.gr ], [ %i.afs, %bb.he ], [ %.1183227.i, %num_keys_cmp.exit305 ] ; 7 uses
  %.1179.lcssa.i = phi i64 [ %.0178.i, %bb.gr ], [ %i.afr, %bb.he ], [ %.1179228.i, %num_keys_cmp.exit305 ] ; 3 uses
  %.1176.lcssa.i = phi i64 [ %.0175.i, %bb.gr ], [ %.2177.i, %bb.he ], [ %.1176229.i, %num_keys_cmp.exit305 ] ; 2 uses
  %i.afu = getelementptr inbounds i8, ptr %.0191.i, i64 -8 ; 2 uses
  %i.afv = icmp ult ptr %.1183.lcssa.i, %i.afu
  br i1 %i.afv, label %.lr.ph240.i, label %.critedge3.i

.lr.ph240.i:                                      ; preds = %.critedge.i, %bb.hr
  %i.afw = phi ptr [ %i.ahd, %bb.hr ], [ %i.afu, %.critedge.i ] ; 5 uses
  %.1173239.i = phi i64 [ %.2174.i, %bb.hr ], [ %.0172.i, %.critedge.i ] ; 3 uses
  %.1186238.i = phi ptr [ %.2187.i, %bb.hr ], [ %.0185.i, %.critedge.i ] ; 3 uses
  %i.afx = load i32, ptr %i.aej, align 4, !tbaa !522 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 4
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !522 ; 3 uses
  %i.aga = icmp slt i32 %i.afx, 0
  br i1 %i.aga, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %.lr.ph240.i
  %i.agb = and i32 %i.afx, 2147483647
  br label %JS_AtomIsArrayIndex.exit.i286

bb.hg:                                            ; preds = %.lr.ph240.i
  %i.agc = load ptr, ptr %i.hr, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #49
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 1104
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !154
  %i.agf = zext nneg i32 %i.afx to i64
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %i.agf
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !155 ; 2 uses
  %i.agi = load i64, ptr %i.agh, align 8
  %.mask.i.i284 = and i64 %i.agi, -4611686018427387904
  %i.agj = icmp eq i64 %.mask.i.i284, 4611686018427387904
  br i1 %i.agj, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.agk = call fastcc zeroext i1 @is_num_string(ptr noundef %i.t, ptr noundef nonnull %i.agh)
  %i.agl = load i32, ptr %i.t, align 4            ; 2 uses
  %i.agm = icmp ne i32 %i.agl, -1
  %or.cond.i.i293 = select i1 %i.agk, i1 %i.agm, i1 false
  br i1 %or.cond.i.i293, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %storemerge.i.i285 = phi i32 [ 0, %bb.hi ], [ %i.agl, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #49
  br label %JS_AtomIsArrayIndex.exit.i286

JS_AtomIsArrayIndex.exit.i286:                    ; preds = %bb.hj, %bb.hf
  %.017.i287 = phi i32 [ %i.agb, %bb.hf ], [ %storemerge.i.i285, %bb.hj ] ; 2 uses
  %i.agn = icmp slt i32 %i.afz, 0
  br i1 %i.agn, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %JS_AtomIsArrayIndex.exit.i286
  %i.ago = and i32 %i.afz, 2147483647
  br label %num_keys_cmp.exit294

bb.hl:                                            ; preds = %JS_AtomIsArrayIndex.exit.i286
  %i.agp = load ptr, ptr %i.hr, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #49
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 1104
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !154
  %i.ags = zext nneg i32 %i.afz to i64
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.ags
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !155 ; 2 uses
  %i.agv = load i64, ptr %i.agu, align 8
  %.mask.i9.i288 = and i64 %i.agv, -4611686018427387904
  %i.agw = icmp eq i64 %.mask.i9.i288, 4611686018427387904
  br i1 %i.agw, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.agx = call fastcc zeroext i1 @is_num_string(ptr noundef %i.s, ptr noundef nonnull %i.agu)
  %i.agy = load i32, ptr %i.s, align 4            ; 2 uses
  %i.agz = icmp ne i32 %i.agy, -1
  %or.cond.i13.i292 = select i1 %i.agx, i1 %i.agz, i1 false
  br i1 %or.cond.i13.i292, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %storemerge.i10.i289 = phi i32 [ 0, %bb.hn ], [ %i.agy, %bb.hm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #49
  br label %num_keys_cmp.exit294

num_keys_cmp.exit294:                             ; preds = %bb.hk, %bb.ho
  %.016.i290 = phi i32 [ %i.ago, %bb.hk ], [ %storemerge.i10.i289, %bb.ho ] ; 2 uses
  %.not415 = icmp ugt i32 %.017.i287, %.016.i290
  br i1 %.not415, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %num_keys_cmp.exit294
  %i.aha = icmp eq i32 %.017.i287, %.016.i290
  br i1 %i.aha, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.ahb = add i64 %.1173239.i, -1
  %i.ahc = getelementptr inbounds i8, ptr %.1186238.i, i64 -8 ; 2 uses
  call void @exchange_one_int64(ptr noundef nonnull %i.ahc, ptr noundef nonnull %i.afw, i64 noundef 8) #49, !inline_history !544
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.2187.i = phi ptr [ %i.ahc, %bb.hq ], [ %.1186238.i, %bb.hp ] ; 2 uses
  %.2174.i = phi i64 [ %i.ahb, %bb.hq ], [ %.1173239.i, %bb.hp ] ; 2 uses
  %i.ahd = getelementptr inbounds i8, ptr %i.afw, i64 -8 ; 2 uses
  %i.ahe = icmp ult ptr %.1183.lcssa.i, %i.ahd
  br i1 %i.ahe, label %.lr.ph240.i, label %.critedge3.i, !llvm.loop !546

bb.hs:                                            ; preds = %num_keys_cmp.exit294
  call void @exchange_one_int64(ptr noundef %.1183.lcssa.i, ptr noundef nonnull %i.afw, i64 noundef 8) #49, !inline_history !544
  %i.ahf = add i64 %.1179.lcssa.i, 1
  %i.ahg = getelementptr inbounds nuw i8, ptr %.1183.lcssa.i, i64 8
  br label %bb.gr

.critedge3.i:                                     ; preds = %.critedge.i, %bb.hr
  %.1186.lcssa.i = phi ptr [ %.2187.i, %bb.hr ], [ %.0185.i, %.critedge.i ]
  %.1173.lcssa.i = phi i64 [ %.2174.i, %bb.hr ], [ %.0172.i, %.critedge.i ]
  %i.ahh = ptrtoint ptr %.1189.lcssa.i to i64     ; 2 uses
  %i.ahi = ptrtoint ptr %.0180253.i1012 to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  %i.ahk = ptrtoint ptr %.1183.lcssa.i to i64     ; 2 uses
  %i.ahl = sub i64 %i.ahk, %i.ahh
  %i.ahm = sub i64 %.1179.lcssa.i, %.1176.lcssa.i ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ahj, i64 %i.ahl) ; 2 uses
  %i.ahn = sub i64 0, %spec.select.i
  %i.aho = getelementptr inbounds i8, ptr %.1183.lcssa.i, i64 %i.ahn
  call void @exchange_int64s(ptr noundef nonnull %.0180253.i1012, ptr noundef %i.aho, i64 noundef %spec.select.i) #49, !inline_history !544
  %i.ahp = ptrtoint ptr %i.aei to i64
  %i.ahq = ptrtoint ptr %.1186.lcssa.i to i64     ; 2 uses
  %i.ahr = sub i64 %i.ahp, %i.ahq
  %i.ahs = sub i64 %i.ahq, %i.ahk                 ; 2 uses
  %i.aht = sub i64 0, %i.ahs
  %i.ahu = getelementptr inbounds i8, ptr %i.aei, i64 %i.aht ; 2 uses
  %i.ahv = sub i64 %.1173.lcssa.i, %.1179.lcssa.i ; 3 uses
  %.1171.i = call i64 @llvm.umin.i64(i64 %i.ahr, i64 %i.ahs) ; 2 uses
  %i.ahw = sub i64 0, %.1171.i
  %i.ahx = getelementptr inbounds i8, ptr %i.aei, i64 %i.ahw
  call void @exchange_int64s(ptr noundef %.1183.lcssa.i, ptr noundef nonnull %i.ahx, i64 noundef %.1171.i) #49, !inline_history !544
  %i.ahy = icmp ugt i64 %i.ahm, %i.ahv
  br i1 %i.ahy, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.critedge3.i
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %.critedge3.i
  %.sink285.i = phi ptr [ %i.ahu, %bb.ht ], [ %.0180253.i1012, %.critedge3.i ]
  %.sink.i = phi i64 [ %i.ahv, %bb.ht ], [ %i.ahm, %.critedge3.i ]
  %.1181.i = phi ptr [ %.0180253.i1012, %bb.ht ], [ %i.ahu, %.critedge3.i ] ; 3 uses
  %.1.i277 = phi i64 [ %i.ahm, %bb.ht ], [ %i.ahv, %.critedge3.i ] ; 4 uses
  store ptr %.sink285.i, ptr %.1167255.i1011, align 8, !tbaa !533
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1167255.i1011, i64 8
  store i64 %.sink.i, ptr %i.ahz, align 8, !tbaa !535
  %i.aia = getelementptr inbounds nuw i8, ptr %.1167255.i1011, i64 16
  store i32 %i.zf, ptr %i.aia, align 8, !tbaa !536
  %.2168.i = getelementptr inbounds nuw i8, ptr %.1167255.i1011, i64 24 ; 3 uses
  %i.aib = icmp ugt i64 %.1.i277, 6
  br i1 %i.aib, label %.lr.ph257.i, label %heapsortx.exit.i, !llvm.loop !538

heapsortx.exit.i:                                 ; preds = %bb.hu, %bb.de
  %.0180225.i = phi ptr [ %i.td, %bb.de ], [ %.1181.i, %bb.hu ] ; 3 uses
  %.1167223.i = phi ptr [ %i.tc, %bb.de ], [ %.2168.i, %bb.hu ] ; 2 uses
  %.2.i = phi i64 [ %i.tf, %bb.de ], [ %.1.i277, %bb.hu ] ; 2 uses
  %i.aic = shl nuw nsw i64 %.2.i, 3
  %i.aid = getelementptr inbounds nuw i8, ptr %.0180225.i, i64 %i.aic
  %i.aie = icmp samesign ugt i64 %.2.i, 1
  br i1 %i.aie, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %heapsortx.exit.i
  %.2184264.i = getelementptr inbounds nuw i8, ptr %.0180225.i, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge5.i, %.preheader.preheader.i
  %.2184265.i = phi ptr [ %.2184.i, %.critedge5.i ], [ %.2184264.i, %.preheader.preheader.i ] ; 2 uses
  br label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %.preheader.i, %bb.if
  %.2193261.i = phi ptr [ %i.aif, %bb.if ], [ %.2184265.i, %.preheader.i ] ; 4 uses
  %i.aif = getelementptr inbounds i8, ptr %.2193261.i, i64 -8 ; 3 uses
  %i.aig = getelementptr inbounds i8, ptr %.2193261.i, i64 -4
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !522 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %.2193261.i, i64 4
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !522 ; 3 uses
  %i.aik = icmp slt i32 %i.aih, 0
  br i1 %i.aik, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %.lr.ph262.i
  %i.ail = and i32 %i.aih, 2147483647
  br label %JS_AtomIsArrayIndex.exit.i

bb.hw:                                            ; preds = %.lr.ph262.i
  %i.aim = load ptr, ptr %i.hr, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #49
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 1104
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !154
  %i.aip = zext nneg i32 %i.aih to i64
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aio, i64 %i.aip
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !155 ; 2 uses
  %i.ais = load i64, ptr %i.air, align 8
  %.mask.i.i = and i64 %i.ais, -4611686018427387904
  %i.ait = icmp eq i64 %.mask.i.i, 4611686018427387904
  br i1 %i.ait, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.aiu = call fastcc zeroext i1 @is_num_string(ptr noundef %i.v, ptr noundef nonnull %i.air)
  %i.aiv = load i32, ptr %i.v, align 4            ; 2 uses
  %i.aiw = icmp ne i32 %i.aiv, -1
  %or.cond.i.i = select i1 %i.aiu, i1 %i.aiw, i1 false
  br i1 %or.cond.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %storemerge.i.i = phi i32 [ 0, %bb.hy ], [ %i.aiv, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #49
  br label %JS_AtomIsArrayIndex.exit.i

JS_AtomIsArrayIndex.exit.i:                       ; preds = %bb.hz, %bb.hv
  %.017.i = phi i32 [ %i.ail, %bb.hv ], [ %storemerge.i.i, %bb.hz ]
  %i.aix = icmp slt i32 %i.aij, 0
  br i1 %i.aix, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %JS_AtomIsArrayIndex.exit.i
  %i.aiy = and i32 %i.aij, 2147483647
  br label %num_keys_cmp.exit

bb.ib:                                            ; preds = %JS_AtomIsArrayIndex.exit.i
  %i.aiz = load ptr, ptr %i.hr, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #49
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1104
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !154
  %i.ajc = zext nneg i32 %i.aij to i64
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %i.ajc
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !155 ; 2 uses
  %i.ajf = load i64, ptr %i.aje, align 8
  %.mask.i9.i = and i64 %i.ajf, -4611686018427387904
  %i.ajg = icmp eq i64 %.mask.i9.i, 4611686018427387904
  br i1 %i.ajg, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ajh = call fastcc zeroext i1 @is_num_string(ptr noundef %i.u, ptr noundef nonnull %i.aje)
  %i.aji = load i32, ptr %i.u, align 4            ; 2 uses
  %i.ajj = icmp ne i32 %i.aji, -1
  %or.cond.i13.i = select i1 %i.ajh, i1 %i.ajj, i1 false
  br i1 %or.cond.i13.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %storemerge.i10.i = phi i32 [ 0, %bb.id ], [ %i.aji, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #49
  br label %num_keys_cmp.exit

num_keys_cmp.exit:                                ; preds = %bb.ia, %bb.ie
  %.016.i = phi i32 [ %i.aiy, %bb.ia ], [ %storemerge.i10.i, %bb.ie ]
  %i.ajk = icmp ugt i32 %.017.i, %.016.i
  br i1 %i.ajk, label %bb.if, label %.critedge5.i

bb.if:                                            ; preds = %num_keys_cmp.exit
  call void @exchange_one_int64(ptr noundef nonnull %.2193261.i, ptr noundef nonnull %i.aif, i64 noundef 8) #49, !inline_history !544
  %i.ajl = icmp ugt ptr %i.aif, %.0180225.i
  br i1 %i.ajl, label %.lr.ph262.i, label %.critedge5.i, !llvm.loop !547

.critedge5.i:                                     ; preds = %num_keys_cmp.exit, %bb.if
  %.2184.i = getelementptr inbounds nuw i8, ptr %.2184265.i, i64 8 ; 2 uses
  %i.ajm = icmp ult ptr %.2184.i, %i.aid
  br i1 %i.ajm, label %.preheader.i, label %.loopexit.i, !llvm.loop !548

rqsort.exit:                                      ; preds = %.loopexit.i, %exchange_func.exit215.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.ig

bb.ig:                                            ; preds = %rqsort.exit, %.loopexit
  store ptr %i.ib, ptr %1, align 8, !tbaa !518
  store i32 %i.ho, ptr %2, align 4, !tbaa !8
  br label %.critedge247

.critedge247:                                     ; preds = %js_free_prop_enum.exit, %._crit_edge512, %bb.be, %js_free_prop_enum.exit.thread405, %bb.n, %bb.ad, %bb.ig
  %.12 = phi i32 [ -1, %bb.n ], [ 0, %bb.ig ], [ -1, %js_free_prop_enum.exit.thread405 ], [ -1, %js_free_prop_enum.exit ], [ -1, %bb.ad ], [ -1, %bb.be ], [ -1, %._crit_edge512 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #49
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define i32 @JS_GetOwnProperty(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %3, 4294967295
  %.not = icmp eq i64 %i.a, 4294967295
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !492 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %2 to ptr
  %i.d = tail call fastcc i32 @JS_GetOwnPropertyInternal2(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, i32 noundef %4, ptr noundef null), !inline_history !549
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @JS_FreePropertyEnum(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %js_free_prop_enum.exit, label %.preheader3

.preheader3:                                      ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %JS_FreeAtom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %JS_FreeAtom.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !522  ; 2 uses
  %i.e = icmp slt i32 %i.d, 242
  br i1 %i.e, label %JS_FreeAtom.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !50   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !154  ; 4 uses
  %i.i = zext nneg i32 %i.d to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !155  ; 7 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !8
  %i.o = icmp sgt i32 %i.m, 1
  br i1 %i.o, label %JS_FreeAtom.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.k, align 8              ; 2 uses
  %.not.i2 = icmp ugt i64 %i.p, -4611686018427387905
  br i1 %.not.i2, label %._crit_edge9, label %bb.e

._crit_edge9:                                     ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !80   ; 2 uses
  %.pre = zext i32 %i.r to i64
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i64 %i.p, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 268435455
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1080
  %i.w = load i32, ptr %i.v, align 8, !tbaa !74
  %i.x = add nsw i32 %i.w, -1
  %i.y = and i32 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 1096
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = zext nneg i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8  ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !155 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.k
  br i1 %i.ah, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !80
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !8
  br label %bb.h

.preheader:                                       ; preds = %bb.e, %.preheader
  %.031.i = phi ptr [ %i.ao, %.preheader ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !80 ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !155 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %i.k
  br i1 %i.ap, label %bb.g, label %.preheader

bb.g:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !80
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge9, %bb.g, %bb.f
  %.pre-phi = phi i64 [ %.pre, %._crit_edge9 ], [ %i.am, %bb.g ], [ %i.ae, %bb.f ]
  %.1.i = phi i32 [ %i.r, %._crit_edge9 ], [ %i.al, %bb.g ], [ %i.ad, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 1112 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !78
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.pre-phi
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !155
  store i32 %.1.i, ptr %i.at, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !245
  %.not35.i = icmp eq ptr %i.bb, null
  br i1 %.not35.i, label %JS_FreeAtomStruct.exit, label %bb.i, !prof !195

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @reset_weak_ref(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ba), !inline_history !525
  br label %JS_FreeAtomStruct.exit

JS_FreeAtomStruct.exit:                           ; preds = %bb.h, %bb.i
  tail call void @js_free_rt(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k), !inline_history !525
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 1084 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !76
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !76
  br label %JS_FreeAtom.exit

JS_FreeAtom.exit:                                 ; preds = %bb.c, %JS_FreeAtomStruct.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !526

._crit_edge:                                      ; preds = %JS_FreeAtom.exit, %.preheader3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.bg, ptr noundef nonnull %1)
  br label %js_free_prop_enum.exit

js_free_prop_enum.exit:                           ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @js_free_prop_enum(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not10 = icmp eq i32 %2, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %JS_FreeAtom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %JS_FreeAtom.exit ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !522  ; 2 uses
  %i.e = icmp slt i32 %i.d, 242
  br i1 %i.e, label %JS_FreeAtom.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !50   ; 7 uses
end_hunk_0
begin_hunk_1_@JS_GetModuleNamespace:bb.a
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %JS_AtomToString.exit175.thread.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i8 1, ptr %i.adx, align 8, !tbaa !57
  %i.aea = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !892 ; 0 uses
  store i8 0, ptr %i.adx, align 8, !tbaa !57
  br label %JS_AtomToString.exit175.thread.i

str8.exit10.i257.i:                               ; preds = %bb.fa, %bb.ez, %bb.ey
  %.011.i.i.i.i258.i = phi i64 [ 8, %bb.ey ], [ %i.adp, %bb.ez ], [ %i.adv, %bb.fa ]
  %i.aeb = load i64, ptr %i.abb, align 8, !tbaa !10
  %i.aec = add i64 %i.aeb, %.011.i.i.i.i258.i
  store i64 %i.aec, ptr %i.abb, align 8, !tbaa !10
  %i.aed = getelementptr inbounds i8, ptr %.1.i314375.i, i64 -4
  store i32 1, ptr %i.aed, align 4, !tbaa !8
  %i.aee = and i64 %i.aav, 2147483647
  store i64 %i.aee, ptr %.1.i314375.i, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %.1.i314375.i, i64 8
  store i32 0, ptr %i.aef, align 8, !tbaa !80
  %i.aeg = getelementptr inbounds nuw i8, ptr %.1.i314375.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aeg, ptr nonnull readonly align 16 %i.h, i64 %i.aax, i1 false)
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 %i.aax
  store i8 0, ptr %i.aeh, align 1, !tbaa !35
  br label %JS_AtomToString.exit175.i

bb.fd:                                            ; preds = %JS_AtomToString.exit183.i
  %i.aei = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 1104
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !154 ; 2 uses
  %i.ael = zext nneg i32 %i.aas to i64
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.aek, i64 %i.ael
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !155 ; 2 uses
  %i.aeo = load i64, ptr %i.aen, align 8          ; 2 uses
  %.mask.i.i168.i = and i64 %i.aeo, -4611686018427387904
  %i.aep = icmp ne i64 %.mask.i.i168.i, 4611686018427387904
  %i.aeq = and i64 %i.aeo, 4294967295
  %or.cond.i.not.i169.i = icmp eq i64 %i.aeq, 2147483648
  %or.cond.i170.i = and i1 %i.aep, %or.cond.i.not.i169.i
  br i1 %or.cond.i170.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aek, i64 384
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !155
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0.i.i171.i = phi ptr [ %i.aen, %bb.fd ], [ %i.aes, %bb.fe ] ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %.0.i.i171.i, i64 -4 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !8
  %i.aev = add nsw i32 %i.aeu, 1
  store i32 %i.aev, ptr %i.aet, align 4, !tbaa !8
  br label %JS_AtomToString.exit175.i

JS_AtomToString.exit175.thread.i:                 ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #49
  br label %exported_names_cmp.exit139.i

JS_AtomToString.exit175.i:                        ; preds = %bb.ff, %str8.exit10.i257.i
  %.sroa.0.0.i259.pn.in.i = phi ptr [ %.0.i.i171.i, %bb.ff ], [ %.1.i314375.i, %str8.exit10.i257.i ] ; 4 uses
  %.sroa.0.0.i259.pn.i = ptrtoint ptr %.sroa.0.0.i259.pn.in.i to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #49
  %i.aew = and i64 %.sroa.4.0.i271.pn.i, 4294967295
  %i.aex = icmp eq i64 %i.aew, 6
  br i1 %i.aex, label %exported_names_cmp.exit139.i, label %bb.fg

bb.fg:                                            ; preds = %JS_AtomToString.exit175.i
  %i.aey = inttoptr i64 %.sroa.0.0.i270.pn.i to ptr ; 3 uses
  %i.aez = load i64, ptr %i.aey, align 8
  %i.afa = trunc i64 %i.aez to i32
  %i.afb = and i32 %i.afa, 2147483647
  %i.afc = load i64, ptr %.sroa.0.0.i259.pn.in.i, align 8
  %i.afd = trunc i64 %i.afc to i32
  %i.afe = and i32 %i.afd, 2147483647
  %i.aff = call i32 @llvm.umin.i32(i32 %i.afb, i32 %i.afe)
  %i.afg = call fastcc i32 @js_string_memcmp(ptr noundef nonnull readonly %i.aey, ptr noundef nonnull readonly %.sroa.0.0.i259.pn.in.i, i32 noundef %i.aff), !inline_history !861 ; 2 uses
  %i.afh = icmp eq i32 %i.afg, 0
  br i1 %i.afh, label %bb.fh, label %exported_names_cmp.exit139.i

bb.fh:                                            ; preds = %bb.fg
  %i.afi = load i64, ptr %i.aey, align 8
  %i.afj = trunc i64 %i.afi to i32
  %i.afk = and i32 %i.afj, 2147483647
  %i.afl = load i64, ptr %.sroa.0.0.i259.pn.in.i, align 8
  %i.afm = trunc i64 %i.afl to i32
  %i.afn = and i32 %i.afm, 2147483647
  %i.afo = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.afk, i32 %i.afn)
  br label %exported_names_cmp.exit139.i

exported_names_cmp.exit139.i:                     ; preds = %bb.fh, %bb.fg, %JS_AtomToString.exit175.i, %JS_AtomToString.exit175.thread.i
  %.sroa.4.0.i260.pn591.i = phi i64 [ -7, %JS_AtomToString.exit175.i ], [ -7, %bb.fg ], [ -7, %bb.fh ], [ 6, %JS_AtomToString.exit175.thread.i ]
  %i.afp = phi i1 [ true, %JS_AtomToString.exit175.i ], [ true, %bb.fg ], [ true, %bb.fh ], [ false, %JS_AtomToString.exit175.thread.i ]
  %.sroa.0.0.i259.pn590.i = phi i64 [ %.sroa.0.0.i259.pn.i, %JS_AtomToString.exit175.i ], [ %.sroa.0.0.i259.pn.i, %bb.fg ], [ %.sroa.0.0.i259.pn.i, %bb.fh ], [ 0, %JS_AtomToString.exit175.thread.i ] ; 2 uses
  %.0.i138.i = phi i32 [ 0, %JS_AtomToString.exit175.i ], [ %i.afg, %bb.fg ], [ %i.afo, %bb.fh ], [ 0, %JS_AtomToString.exit175.thread.i ] ; 2 uses
  %i.afq = load ptr, ptr %i.af, align 8, !tbaa !50 ; 3 uses
  br i1 %i.aar, label %bb.fi, label %JS_FreeValue.exit165.i

bb.fi:                                            ; preds = %exported_names_cmp.exit139.i
  %i.afr = inttoptr i64 %.sroa.0.0.i270.pn.i to ptr
  %i.afs = getelementptr inbounds i8, ptr %i.afr, i64 -4 ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !8 ; 2 uses
  %i.afu = add nsw i32 %i.aft, -1
  store i32 %i.afu, ptr %i.afs, align 4, !tbaa !8
  %i.afv = icmp slt i32 %i.aft, 2
  br i1 %i.afv, label %bb.fj, label %JS_FreeValue.exit165.i

bb.fj:                                            ; preds = %bb.fi
  call fastcc void @js_free_value_rt(ptr noundef %i.afq, i64 %.sroa.0.0.i270.pn.i, i64 %.sroa.4.0.i271.pn.i), !inline_history !893
  %.pre478.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %JS_FreeValue.exit165.i

JS_FreeValue.exit165.i:                           ; preds = %bb.fj, %bb.fi, %exported_names_cmp.exit139.i
  %i.afw = phi ptr [ %i.afq, %exported_names_cmp.exit139.i ], [ %i.afq, %bb.fi ], [ %.pre478.i, %bb.fj ]
  br i1 %i.afp, label %bb.fk, label %JS_FreeValue.exit164.i

bb.fk:                                            ; preds = %JS_FreeValue.exit165.i
  %i.afx = inttoptr i64 %.sroa.0.0.i259.pn590.i to ptr
  %i.afy = getelementptr inbounds i8, ptr %i.afx, i64 -4 ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !8 ; 2 uses
  %i.aga = add nsw i32 %i.afz, -1
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !8
  %i.agb = icmp slt i32 %i.afz, 2
  br i1 %i.agb, label %bb.fl, label %JS_FreeValue.exit164.i

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @js_free_value_rt(ptr noundef %i.afw, i64 %.sroa.0.0.i259.pn590.i, i64 %.sroa.4.0.i260.pn591.i), !inline_history !893
  br label %JS_FreeValue.exit164.i

JS_FreeValue.exit164.i:                           ; preds = %bb.fl, %bb.fk, %JS_FreeValue.exit165.i
  %i.agc = icmp slt i32 %.0.i138.i, 1
  br i1 %i.agc, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %JS_FreeValue.exit164.i
  %i.agd = icmp eq i32 %.0.i138.i, 0
  br i1 %i.agd, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.age = add i64 %.1173239.i.i, -1
  %i.agf = getelementptr inbounds i8, ptr %.1186238.i.i, i64 -16 ; 2 uses
  call void %.0.i312.i.i(ptr noundef nonnull %i.agf, ptr noundef nonnull %i.wk, i64 noundef 16) #49, !inline_history !889
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.2187.i.i = phi ptr [ %i.agf, %bb.fn ], [ %.1186238.i.i, %bb.fm ] ; 2 uses
  %.2174.i.i = phi i64 [ %i.age, %bb.fn ], [ %.1173239.i.i, %bb.fm ] ; 2 uses
  %i.agg = getelementptr inbounds i8, ptr %i.wk, i64 -16 ; 2 uses
  %i.agh = icmp ult ptr %.1183.lcssa.i.i, %i.agg
  br i1 %i.agh, label %.lr.ph240.i.i, label %.critedge3.i.i, !llvm.loop !546

bb.fp:                                            ; preds = %JS_FreeValue.exit164.i
  call void %.0.i312.i.i(ptr noundef %.1183.lcssa.i.i, ptr noundef nonnull %i.wk, i64 noundef 16) #49, !inline_history !889
  %i.agi = add i64 %.1179.lcssa.i.i, 1
  %i.agj = getelementptr inbounds nuw i8, ptr %.1183.lcssa.i.i, i64 16
  br label %bb.bq

.critedge3.i.i:                                   ; preds = %.critedge.i.i, %bb.fo
  %.1186.lcssa.i.i = phi ptr [ %.2187.i.i, %bb.fo ], [ %.0185.i.i, %.critedge.i.i ]
  %.1173.lcssa.i.i = phi i64 [ %.2174.i.i, %bb.fo ], [ %.0172.i.i, %.critedge.i.i ]
  %i.agk = ptrtoint ptr %.1189.lcssa.i.i to i64   ; 2 uses
  %i.agl = ptrtoint ptr %.0180253.i.i218 to i64
  %i.agm = sub i64 %i.agk, %i.agl
  %i.agn = ptrtoint ptr %.1183.lcssa.i.i to i64   ; 2 uses
  %i.ago = sub i64 %i.agn, %i.agk
  %i.agp = sub i64 %.1179.lcssa.i.i, %.1176.lcssa.i.i ; 3 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.agm, i64 %i.ago) ; 2 uses
  %i.agq = sub i64 0, %spec.select.i.i
  %i.agr = getelementptr inbounds i8, ptr %.1183.lcssa.i.i, i64 %i.agq
  call void %.0.i210.i.i(ptr noundef nonnull %.0180253.i.i218, ptr noundef %i.agr, i64 noundef %spec.select.i.i) #49, !inline_history !889
  %i.ags = ptrtoint ptr %i.mi to i64
  %i.agt = ptrtoint ptr %.1186.lcssa.i.i to i64   ; 2 uses
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = sub i64 %i.agt, %i.agn                 ; 2 uses
  %i.agw = sub i64 0, %i.agv
  %i.agx = getelementptr inbounds i8, ptr %i.mi, i64 %i.agw ; 2 uses
  %i.agy = sub i64 %.1173.lcssa.i.i, %.1179.lcssa.i.i ; 3 uses
  %.1171.i.i = call i64 @llvm.umin.i64(i64 %i.agu, i64 %i.agv) ; 2 uses
  %i.agz = sub i64 0, %.1171.i.i
  %i.aha = getelementptr inbounds i8, ptr %i.mi, i64 %i.agz
  call void %.0.i210.i.i(ptr noundef %.1183.lcssa.i.i, ptr noundef nonnull %i.aha, i64 noundef %.1171.i.i) #49, !inline_history !889
  %i.ahb = icmp ugt i64 %i.agp, %i.agy
  br i1 %i.ahb, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.critedge3.i.i
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.critedge3.i.i
  %.sink285.i.i = phi ptr [ %i.agx, %bb.fq ], [ %.0180253.i.i218, %.critedge3.i.i ]
  %.sink.i.i = phi i64 [ %i.agy, %bb.fq ], [ %i.agp, %.critedge3.i.i ]
  %.1181.i.i = phi ptr [ %.0180253.i.i218, %bb.fq ], [ %i.agx, %.critedge3.i.i ] ; 3 uses
  %.1.i.i = phi i64 [ %i.agp, %bb.fq ], [ %i.agy, %.critedge3.i.i ] ; 4 uses
  store ptr %.sink285.i.i, ptr %.1167255.i.i217, align 8, !tbaa !533
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1167255.i.i217, i64 8
  store i64 %.sink.i.i, ptr %i.ahc, align 8, !tbaa !535
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1167255.i.i217, i64 16
  store i32 %i.lm, ptr %i.ahd, align 8, !tbaa !536
  %.2168.i.i = getelementptr inbounds nuw i8, ptr %.1167255.i.i217, i64 24 ; 3 uses
  %i.ahe = icmp ugt i64 %.1.i.i, 6
  br i1 %i.ahe, label %.lr.ph257.i.i, label %heapsortx.exit.i.i, !llvm.loop !538

heapsortx.exit.i.i:                               ; preds = %bb.fr, %bb.ad
  %.0180225.i.i = phi ptr [ %i.di, %bb.ad ], [ %.1181.i.i, %bb.fr ] ; 3 uses
  %.1167223.i.i = phi ptr [ %i.dh, %bb.ad ], [ %.2168.i.i, %bb.fr ] ; 2 uses
  %.2.i.i = phi i64 [ %i.dk, %bb.ad ], [ %.1.i.i, %bb.fr ] ; 2 uses
  %i.ahf = shl nuw nsw i64 %.2.i.i, 4
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0180225.i.i, i64 %i.ahf
  %i.ahh = icmp samesign ugt i64 %.2.i.i, 1
  br i1 %i.ahh, label %.preheader.preheader.i.i, label %.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %heapsortx.exit.i.i
  %.2184264.i.i = getelementptr inbounds nuw i8, ptr %.0180225.i.i, i64 16
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge5.i.i, %.preheader.preheader.i.i
  %.2184265.i.i = phi ptr [ %.2184.i.i, %.critedge5.i.i ], [ %.2184264.i.i, %.preheader.preheader.i.i ] ; 2 uses
  br label %.lr.ph262.i.i

.lr.ph262.i.i:                                    ; preds = %bb.ho, %.preheader.i.i
  %.2193261.i.i = phi ptr [ %i.ahi, %bb.ho ], [ %.2184265.i.i, %.preheader.i.i ] ; 3 uses
  %i.ahi = getelementptr inbounds i8, ptr %.2193261.i.i, i64 -16 ; 4 uses
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !869 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #49
  %i.ahk = icmp slt i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.fs, label %bb.gk

bb.fs:                                            ; preds = %.lr.ph262.i.i
  %i.ahl = and i32 %i.ahj, 2147483647
  %i.ahm = call i64 @u32toa(ptr noundef nonnull %i.i, i32 noundef %i.ahl) #49, !inline_history !890 ; 2 uses
  %i.ahn = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext408.i = shl i64 %i.ahm, 32
  %i.aho = ashr exact i64 %sext408.i, 32          ; 7 uses
  %i.ahp = add nsw i64 %i.aho, 25                 ; 3 uses
  %i.ahq = icmp eq i64 %i.ahp, 0
  br i1 %i.ahq, label %bb.gi, label %bb.ft, !prof !9

bb.ft:                                            ; preds = %bb.fs
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahn, i64 40 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahn, i64 48 ; 3 uses
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !10
  %i.ahu = add i64 %i.aht, %i.ahp
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 56
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !14
  %i.ahx = add i64 %i.ahw, -1
  %i.ahy = icmp ugt i64 %i.ahu, %i.ahx
  br i1 %i.ahy, label %bb.gi, label %bb.fu, !prof !9

bb.fu:                                            ; preds = %bb.ft
  %i.ahz = and i64 %i.aho, -8                     ; 4 uses
  %i.aia = add nsw i64 %i.ahz, 40
  %i.aib = icmp ult i64 %i.aia, 513
  br i1 %i.aib, label %bb.fv, label %js_arena_malloc.exit311.i

bb.fv:                                            ; preds = %bb.fu
  %i.aic = icmp slt i64 %i.ahz, -23
  br i1 %i.aic, label %arena_get_size_index.exit.i307.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aid = icmp slt i64 %i.ahz, 89
  br i1 %i.aid, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aie = add nsw i64 %i.aho, 40
  %i.aif = lshr i64 %i.aie, 3
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = add nsw i32 %i.aig, -2
  br label %arena_get_size_index.exit.i307.i

bb.fy:                                            ; preds = %bb.fw
  %i.aii = icmp samesign ult i64 %i.ahz, 217
  br i1 %i.aii, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aij = add nsw i64 %i.aho, 48
  %i.aik = lshr i64 %i.aij, 4
  %i.ail = trunc nuw nsw i64 %i.aik to i32
  %i.aim = add nuw nsw i32 %i.ail, 6
  br label %arena_get_size_index.exit.i307.i

bb.ga:                                            ; preds = %bb.fy
  %i.ain = add nsw i64 %i.aho, 64
  %i.aio = lshr i64 %i.ain, 5
  %i.aip = trunc nuw nsw i64 %i.aio to i32
  %i.aiq = add nuw nsw i32 %i.aip, 14
  br label %arena_get_size_index.exit.i307.i

arena_get_size_index.exit.i307.i:                 ; preds = %bb.ga, %bb.fz, %bb.fx, %bb.fv
  %.0.i.i308.i = phi i32 [ %i.aiq, %bb.ga ], [ %i.aih, %bb.fx ], [ %i.aim, %bb.fz ], [ 0, %bb.fv ] ; 2 uses
  %i.air = zext nneg i32 %.0.i.i308.i to i64      ; 2 uses
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.air
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !38
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahn, i64 568
  %i.aiv = getelementptr inbounds nuw [16 x i8], ptr %i.aiu, i64 %i.air ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !40 ; 2 uses
  %i.aiy = icmp eq ptr %i.aix, %i.aiv
  br i1 %i.aiy, label %bb.gb, label %bb.gc, !prof !9

bb.gb:                                            ; preds = %arena_get_size_index.exit.i307.i
  %i.aiz = call fastcc ptr @arena_new(ptr noundef nonnull %i.ahn, i32 noundef %.0.i.i308.i), !inline_history !861 ; 2 uses
  %.not.i310.i = icmp eq ptr %i.aiz, null
  br i1 %.not.i310.i, label %._crit_edge.i253.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %arena_get_size_index.exit.i307.i
  %.030.i309.i = phi ptr [ %i.aiz, %bb.gb ], [ %i.aix, %arena_get_size_index.exit.i307.i ] ; 7 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.030.i309.i, i64 38 ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !38 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.030.i309.i, i64 40
  %i.ajd = zext i16 %i.ajb to i64
  %i.aje = zext i16 %i.ait to i64
  %i.ajf = mul nuw nsw i64 %i.ajd, %i.aje
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %i.ajf ; 3 uses
  %i.ajh = load i16, ptr %i.ajg, align 8, !tbaa !35
  store i16 %i.ajh, ptr %i.aja, align 2, !tbaa !38
  store i16 %i.ajb, ptr %i.ajg, align 8, !tbaa !35
  %i.aji = getelementptr inbounds nuw i8, ptr %.030.i309.i, i64 34 ; 2 uses
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !38
  %i.ajk = add i16 %i.ajj, 1                      ; 2 uses
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !38
  %i.ajl = getelementptr inbounds nuw i8, ptr %.030.i309.i, i64 36
  %i.ajm = load i16, ptr %i.ajl, align 4, !tbaa !38
  %i.ajn = icmp eq i16 %i.ajk, %i.ajm
  br i1 %i.ajn, label %bb.gd, label %js_arena_malloc.exit311.thread378.i, !prof !9

bb.gd:                                            ; preds = %bb.gc
  %i.ajo = load ptr, ptr %.030.i309.i, align 8, !tbaa !41 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.030.i309.i, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !40 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  store ptr %i.ajq, ptr %i.ajr, align 8, !tbaa !40
  store ptr %i.ajo, ptr %i.ajq, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030.i309.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit311.thread378.i

js_arena_malloc.exit311.thread378.i:              ; preds = %bb.gd, %bb.gc
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  br label %bb.ge

js_arena_malloc.exit311.i:                        ; preds = %bb.fu
  %i.ajt = getelementptr i8, ptr %i.ahn, i64 8
  %.val.i304.i = load ptr, ptr %i.ajt, align 8, !tbaa !42
  %i.aju = getelementptr i8, ptr %i.ahn, i64 64
  %.val35.i305.i = load ptr, ptr %i.aju, align 8, !tbaa !33
  %i.ajv = call fastcc ptr @arena_malloc_large(ptr %.val.i304.i, ptr %.val35.i305.i, i64 noundef %i.ahp), !inline_history !861 ; 2 uses
  %.not.i.i.i245.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i.i245.i, label %._crit_edge.i253.i, label %bb.ge

._crit_edge.i253.i:                               ; preds = %js_arena_malloc.exit311.i, %bb.gb
  %.pre.i254.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.gi

bb.ge:                                            ; preds = %js_arena_malloc.exit311.i, %js_arena_malloc.exit311.thread378.i
  %.1.i306381.i = phi ptr [ %i.ajs, %js_arena_malloc.exit311.thread378.i ], [ %i.ajv, %js_arena_malloc.exit311.i ] ; 7 uses
  %i.ajw = load i64, ptr %i.ahr, align 8, !tbaa !34
  %i.ajx = add i64 %i.ajw, 1
  store i64 %i.ajx, ptr %i.ahr, align 8, !tbaa !34
  %i.ajy = getelementptr inbounds i8, ptr %.1.i306381.i, i64 -8 ; 3 uses
  %i.ajz = load i16, ptr %i.ajy, align 8, !tbaa !35
  %i.aka = icmp eq i16 %i.ajz, -1
  br i1 %i.aka, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1064
  %i.akc = icmp eq ptr %i.ajy, %i.akb
  br i1 %i.akc, label %str8.exit10.i246.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ahn, i64 32
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !36
  %i.akf = call i64 %i.ake(ptr noundef nonnull %i.ajy) #49, !inline_history !891 ; 2 uses
  %.not15.i.i.i.i252.i = icmp eq i64 %i.akf, 0
  %i.akg = select i1 %.not15.i.i.i.i252.i, i64 8, i64 %i.akf
  br label %str8.exit10.i246.i

bb.gh:                                            ; preds = %bb.ge
  %i.akh = getelementptr inbounds i8, ptr %.1.i306381.i, i64 -6
  %i.aki = load i8, ptr %i.akh, align 2, !tbaa !35
  %i.akj = zext i8 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.akj
  %i.akl = load i16, ptr %i.akk, align 2, !tbaa !38
  %i.akm = zext i16 %i.akl to i64
  br label %str8.exit10.i246.i

bb.gi:                                            ; preds = %._crit_edge.i253.i, %bb.ft, %bb.fs
  %i.akn = phi ptr [ %.pre.i254.i, %._crit_edge.i253.i ], [ %i.ahn, %bb.ft ], [ %i.ahn, %bb.fs ]
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 1256 ; 3 uses
  %i.akp = load i8, ptr %i.ako, align 8, !tbaa !57, !range !58, !noundef !59
  %i.akq = trunc nuw i8 %i.akp to i1
  br i1 %i.akq, label %JS_AtomToString.exit163.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store i8 1, ptr %i.ako, align 8, !tbaa !57
  %i.akr = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !892 ; 0 uses
  store i8 0, ptr %i.ako, align 8, !tbaa !57
  br label %JS_AtomToString.exit163.i

str8.exit10.i246.i:                               ; preds = %bb.gh, %bb.gg, %bb.gf
  %.011.i.i.i.i247.i = phi i64 [ 8, %bb.gf ], [ %i.akg, %bb.gg ], [ %i.akm, %bb.gh ]
  %i.aks = load i64, ptr %i.ahs, align 8, !tbaa !10
  %i.akt = add i64 %i.aks, %.011.i.i.i.i247.i
  store i64 %i.akt, ptr %i.ahs, align 8, !tbaa !10
  %i.aku = getelementptr inbounds i8, ptr %.1.i306381.i, i64 -4
  store i32 1, ptr %i.aku, align 4, !tbaa !8
  %i.akv = and i64 %i.ahm, 2147483647
  store i64 %i.akv, ptr %.1.i306381.i, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %.1.i306381.i, i64 8
  store i32 0, ptr %i.akw, align 8, !tbaa !80
  %i.akx = getelementptr inbounds nuw i8, ptr %.1.i306381.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akx, ptr nonnull readonly align 16 %i.i, i64 %i.aho, i1 false)
  %i.aky = getelementptr inbounds i8, ptr %i.akx, i64 %i.aho
  store i8 0, ptr %i.aky, align 1, !tbaa !35
  %i.akz = ptrtoint ptr %.1.i306381.i to i64
  br label %JS_AtomToString.exit163.i

bb.gk:                                            ; preds = %.lr.ph262.i.i
  %i.ala = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 1104
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !154 ; 2 uses
  %i.ald = zext nneg i32 %i.ahj to i64
end_hunk_1
begin_hunk_2_@JS_GetModuleNamespace:bb.a
bb.gy:                                            ; preds = %bb.gx
  %i.anv = load ptr, ptr %.030.i.i, align 8, !tbaa !41 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !40 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  store ptr %i.anx, ptr %i.any, align 8, !tbaa !40
  store ptr %i.anv, ptr %i.anx, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.030.i.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit.thread384.i

js_arena_malloc.exit.thread384.i:                 ; preds = %bb.gy, %bb.gx
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  br label %bb.gz

js_arena_malloc.exit.i:                           ; preds = %bb.gp
  %i.aoa = getelementptr i8, ptr %i.alu, i64 8
  %.val.i300.i = load ptr, ptr %i.aoa, align 8, !tbaa !42
  %i.aob = getelementptr i8, ptr %i.alu, i64 64
  %.val35.i.i = load ptr, ptr %i.aob, align 8, !tbaa !33
  %i.aoc = call fastcc ptr @arena_malloc_large(ptr %.val.i300.i, ptr %.val35.i.i, i64 noundef %i.alw), !inline_history !861 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aoc, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.gz

._crit_edge.i.i:                                  ; preds = %js_arena_malloc.exit.i, %bb.gw
  %.pre.i244.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.hd

bb.gz:                                            ; preds = %js_arena_malloc.exit.i, %js_arena_malloc.exit.thread384.i
  %.1.i301387.i = phi ptr [ %i.anz, %js_arena_malloc.exit.thread384.i ], [ %i.aoc, %js_arena_malloc.exit.i ] ; 7 uses
  %i.aod = load i64, ptr %i.aly, align 8, !tbaa !34
  %i.aoe = add i64 %i.aod, 1
  store i64 %i.aoe, ptr %i.aly, align 8, !tbaa !34
  %i.aof = getelementptr inbounds i8, ptr %.1.i301387.i, i64 -8 ; 3 uses
  %i.aog = load i16, ptr %i.aof, align 8, !tbaa !35
  %i.aoh = icmp eq i16 %i.aog, -1
  br i1 %i.aoh, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.alu, i64 1064
  %i.aoj = icmp eq ptr %i.aof, %i.aoi
  br i1 %i.aoj, label %str8.exit10.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aok = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !36
  %i.aom = call i64 %i.aol(ptr noundef nonnull %i.aof) #49, !inline_history !891 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.aom, 0
  %i.aon = select i1 %.not15.i.i.i.i.i, i64 8, i64 %i.aom
  br label %str8.exit10.i.i

bb.hc:                                            ; preds = %bb.gz
  %i.aoo = getelementptr inbounds i8, ptr %.1.i301387.i, i64 -6
  %i.aop = load i8, ptr %i.aoo, align 2, !tbaa !35
  %i.aoq = zext i8 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.aoq
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !38
  %i.aot = zext i16 %i.aos to i64
  br label %str8.exit10.i.i

bb.hd:                                            ; preds = %._crit_edge.i.i, %bb.go, %bb.gn
  %i.aou = phi ptr [ %.pre.i244.i, %._crit_edge.i.i ], [ %i.alu, %bb.go ], [ %i.alu, %bb.gn ]
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 1256 ; 3 uses
  %i.aow = load i8, ptr %i.aov, align 8, !tbaa !57, !range !58, !noundef !59
  %i.aox = trunc nuw i8 %i.aow to i1
  br i1 %i.aox, label %JS_AtomToString.exit155.thread.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  store i8 1, ptr %i.aov, align 8, !tbaa !57
  %i.aoy = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !892 ; 0 uses
  store i8 0, ptr %i.aov, align 8, !tbaa !57
  br label %JS_AtomToString.exit155.thread.i

str8.exit10.i.i:                                  ; preds = %bb.hc, %bb.hb, %bb.ha
  %.011.i.i.i.i.i = phi i64 [ 8, %bb.ha ], [ %i.aon, %bb.hb ], [ %i.aot, %bb.hc ]
  %i.aoz = load i64, ptr %i.alz, align 8, !tbaa !10
  %i.apa = add i64 %i.aoz, %.011.i.i.i.i.i
  store i64 %i.apa, ptr %i.alz, align 8, !tbaa !10
  %i.apb = getelementptr inbounds i8, ptr %.1.i301387.i, i64 -4
  store i32 1, ptr %i.apb, align 4, !tbaa !8
  %i.apc = and i64 %i.alt, 2147483647
  store i64 %i.apc, ptr %.1.i301387.i, align 8
  %i.apd = getelementptr inbounds nuw i8, ptr %.1.i301387.i, i64 8
  store i32 0, ptr %i.apd, align 8, !tbaa !80
  %i.ape = getelementptr inbounds nuw i8, ptr %.1.i301387.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ape, ptr nonnull readonly align 16 %i.j, i64 %i.alv, i1 false)
  %i.apf = getelementptr inbounds i8, ptr %i.ape, i64 %i.alv
  store i8 0, ptr %i.apf, align 1, !tbaa !35
  br label %JS_AtomToString.exit155.i

bb.hf:                                            ; preds = %JS_AtomToString.exit163.i
  %i.apg = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 1104
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !154 ; 2 uses
  %i.apj = zext nneg i32 %i.alq to i64
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.api, i64 %i.apj
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !155 ; 2 uses
  %i.apm = load i64, ptr %i.apl, align 8          ; 2 uses
  %.mask.i.i149.i = and i64 %i.apm, -4611686018427387904
  %i.apn = icmp ne i64 %.mask.i.i149.i, 4611686018427387904
  %i.apo = and i64 %i.apm, 4294967295
  %or.cond.i.not.i150.i = icmp eq i64 %i.apo, 2147483648
  %or.cond.i151.i = and i1 %i.apn, %or.cond.i.not.i150.i
  br i1 %or.cond.i151.i, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.app = getelementptr inbounds nuw i8, ptr %i.api, i64 384
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !155
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.0.i.i152.i = phi ptr [ %i.apl, %bb.hf ], [ %i.apq, %bb.hg ] ; 2 uses
  %i.apr = getelementptr inbounds i8, ptr %.0.i.i152.i, i64 -4 ; 2 uses
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !8
  %i.apt = add nsw i32 %i.aps, 1
  store i32 %i.apt, ptr %i.apr, align 4, !tbaa !8
  br label %JS_AtomToString.exit155.i

JS_AtomToString.exit155.thread.i:                 ; preds = %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #49
  br label %exported_names_cmp.exit.i

JS_AtomToString.exit155.i:                        ; preds = %bb.hh, %str8.exit10.i.i
  %.sroa.0.0.i.pn.in.i = phi ptr [ %.0.i.i152.i, %bb.hh ], [ %.1.i301387.i, %str8.exit10.i.i ] ; 4 uses
  %.sroa.0.0.i.pn.i = ptrtoint ptr %.sroa.0.0.i.pn.in.i to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #49
  %i.apu = and i64 %.sroa.4.0.i249.pn.i, 4294967295
  %i.apv = icmp eq i64 %i.apu, 6
  br i1 %i.apv, label %exported_names_cmp.exit.i, label %bb.hi

bb.hi:                                            ; preds = %JS_AtomToString.exit155.i
  %i.apw = inttoptr i64 %.sroa.0.0.i248.pn.i to ptr ; 3 uses
  %i.apx = load i64, ptr %i.apw, align 8
  %i.apy = trunc i64 %i.apx to i32
  %i.apz = and i32 %i.apy, 2147483647
  %i.aqa = load i64, ptr %.sroa.0.0.i.pn.in.i, align 8
  %i.aqb = trunc i64 %i.aqa to i32
  %i.aqc = and i32 %i.aqb, 2147483647
  %i.aqd = call i32 @llvm.umin.i32(i32 %i.apz, i32 %i.aqc)
  %i.aqe = call fastcc i32 @js_string_memcmp(ptr noundef nonnull readonly %i.apw, ptr noundef nonnull readonly %.sroa.0.0.i.pn.in.i, i32 noundef %i.aqd), !inline_history !861 ; 2 uses
  %i.aqf = icmp eq i32 %i.aqe, 0
  br i1 %i.aqf, label %bb.hj, label %exported_names_cmp.exit.i

bb.hj:                                            ; preds = %bb.hi
  %i.aqg = load i64, ptr %i.apw, align 8
  %i.aqh = trunc i64 %i.aqg to i32
  %i.aqi = and i32 %i.aqh, 2147483647
  %i.aqj = load i64, ptr %.sroa.0.0.i.pn.in.i, align 8
  %i.aqk = trunc i64 %i.aqj to i32
  %i.aql = and i32 %i.aqk, 2147483647
  %i.aqm = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.aqi, i32 %i.aql)
  br label %exported_names_cmp.exit.i

exported_names_cmp.exit.i:                        ; preds = %bb.hj, %bb.hi, %JS_AtomToString.exit155.i, %JS_AtomToString.exit155.thread.i
  %.sroa.4.0.i.pn600.i = phi i64 [ -7, %JS_AtomToString.exit155.i ], [ -7, %bb.hi ], [ -7, %bb.hj ], [ 6, %JS_AtomToString.exit155.thread.i ]
  %i.aqn = phi i1 [ true, %JS_AtomToString.exit155.i ], [ true, %bb.hi ], [ true, %bb.hj ], [ false, %JS_AtomToString.exit155.thread.i ]
  %.sroa.0.0.i.pn599.i = phi i64 [ %.sroa.0.0.i.pn.i, %JS_AtomToString.exit155.i ], [ %.sroa.0.0.i.pn.i, %bb.hi ], [ %.sroa.0.0.i.pn.i, %bb.hj ], [ 0, %JS_AtomToString.exit155.thread.i ] ; 2 uses
  %.0.i137.i = phi i32 [ 0, %JS_AtomToString.exit155.i ], [ %i.aqe, %bb.hi ], [ %i.aqm, %bb.hj ], [ 0, %JS_AtomToString.exit155.thread.i ]
  %i.aqo = load ptr, ptr %i.af, align 8, !tbaa !50 ; 3 uses
  br i1 %i.alp, label %bb.hk, label %JS_FreeValue.exit147.i

bb.hk:                                            ; preds = %exported_names_cmp.exit.i
  %i.aqp = inttoptr i64 %.sroa.0.0.i248.pn.i to ptr
  %i.aqq = getelementptr inbounds i8, ptr %i.aqp, i64 -4 ; 2 uses
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !8 ; 2 uses
  %i.aqs = add nsw i32 %i.aqr, -1
  store i32 %i.aqs, ptr %i.aqq, align 4, !tbaa !8
  %i.aqt = icmp slt i32 %i.aqr, 2
  br i1 %i.aqt, label %bb.hl, label %JS_FreeValue.exit147.i

bb.hl:                                            ; preds = %bb.hk
  call fastcc void @js_free_value_rt(ptr noundef %i.aqo, i64 %.sroa.0.0.i248.pn.i, i64 %.sroa.4.0.i249.pn.i), !inline_history !893
  %.pre481.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %JS_FreeValue.exit147.i

JS_FreeValue.exit147.i:                           ; preds = %bb.hl, %bb.hk, %exported_names_cmp.exit.i
  %i.aqu = phi ptr [ %i.aqo, %exported_names_cmp.exit.i ], [ %i.aqo, %bb.hk ], [ %.pre481.i, %bb.hl ]
  br i1 %i.aqn, label %bb.hm, label %JS_FreeValue.exit146.i

bb.hm:                                            ; preds = %JS_FreeValue.exit147.i
  %i.aqv = inttoptr i64 %.sroa.0.0.i.pn599.i to ptr
  %i.aqw = getelementptr inbounds i8, ptr %i.aqv, i64 -4 ; 2 uses
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !8 ; 2 uses
  %i.aqy = add nsw i32 %i.aqx, -1
  store i32 %i.aqy, ptr %i.aqw, align 4, !tbaa !8
  %i.aqz = icmp slt i32 %i.aqx, 2
  br i1 %i.aqz, label %bb.hn, label %JS_FreeValue.exit146.i

bb.hn:                                            ; preds = %bb.hm
  call fastcc void @js_free_value_rt(ptr noundef %i.aqu, i64 %.sroa.0.0.i.pn599.i, i64 %.sroa.4.0.i.pn600.i), !inline_history !893
  br label %JS_FreeValue.exit146.i

JS_FreeValue.exit146.i:                           ; preds = %bb.hn, %bb.hm, %JS_FreeValue.exit147.i
  %i.ara = icmp sgt i32 %.0.i137.i, 0
  br i1 %i.ara, label %bb.ho, label %.critedge5.i.i

bb.ho:                                            ; preds = %JS_FreeValue.exit146.i
  call void %.0.i312.i.i(ptr noundef nonnull %.2193261.i.i, ptr noundef nonnull %i.ahi, i64 noundef 16) #49, !inline_history !889
  %i.arb = icmp ugt ptr %i.ahi, %.0180225.i.i
  br i1 %i.arb, label %.lr.ph262.i.i, label %.critedge5.i.i, !llvm.loop !547

.critedge5.i.i:                                   ; preds = %bb.ho, %JS_FreeValue.exit146.i
  %.2184.i.i = getelementptr inbounds nuw i8, ptr %.2184265.i.i, i64 16 ; 2 uses
  %i.arc = icmp ult ptr %.2184.i.i, %i.ahg
  br i1 %i.arc, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !548

rqsort.exit.loopexit.i:                           ; preds = %.loopexit.i.i
  %.pre482.i = load i32, ptr %i.ah, align 4, !tbaa !866
  %.pre483.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !865
  br label %rqsort.exit.i

rqsort.exit.i:                                    ; preds = %rqsort.exit.loopexit.i, %exchange_func.exit215.i.i
  %.pre483.i = phi ptr [ %.pre483.pre.i, %rqsort.exit.loopexit.i ], [ %i.al, %exchange_func.exit215.i.i ] ; 5 uses
  %i.ard = phi i32 [ %.pre482.i, %rqsort.exit.loopexit.i ], [ %i.ai, %exchange_func.exit215.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.are = icmp sgt i32 %i.ard, 0
  br i1 %i.are, label %.lr.ph441.i, label %._crit_edge442.i

.lr.ph441.i:                                      ; preds = %rqsort.exit.i
  %.not.i.i = icmp eq i64 %i.aa, 4294967295
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.arg = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.arh = ptrtoint ptr %0 to i64
  %i.ari = or i64 %i.arh, 1
  %wide.trip.count474.i = zext nneg i32 %i.ard to i64
  br label %bb.hp

bb.hp:                                            ; preds = %JS_DefineAutoInitProperty.exit.thread.i, %.lr.ph441.i
  %indvars.iv471.i = phi i64 [ 0, %.lr.ph441.i ], [ %indvars.iv.next472.i, %JS_DefineAutoInitProperty.exit.thread.i ] ; 2 uses
  %i.arj = getelementptr inbounds nuw [16 x i8], ptr %.pre483.i, i64 %indvars.iv471.i ; 5 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 4
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !882
  switch i32 %i.arl, label %JS_DefineAutoInitProperty.exit.thread.i [
    i32 1, label %bb.hq
    i32 2, label %bb.hu
  ]

bb.hq:                                            ; preds = %bb.hp
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !35 ; 3 uses
  %.not101.i = icmp eq ptr %i.arn, null
  %i.aro = load i32, ptr %i.arj, align 8, !tbaa !869 ; 2 uses
  br i1 %.not101.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #49
  %.val19.i130.i = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.arp = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val19.i130.i, ptr noundef nonnull %i.k, i32 noundef %i.aro) ; 0 uses
  %i.arq = load i32, ptr %1, align 8, !tbaa !682
  %.val.i131.i = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.arr = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i131.i, ptr noundef nonnull %i.l, i32 noundef %i.arq) ; 0 uses
  %i.ars = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l), !inline_history !881 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #49
  br label %JS_DefineAutoInitProperty.exit.i

bb.hs:                                            ; preds = %bb.hq
  %i.art = call fastcc ptr @add_property(ptr noundef %0, ptr noundef %i.ac, i32 noundef %i.aro, i32 noundef 38), !inline_history !861 ; 2 uses
  %.not102.i = icmp eq ptr %i.art, null
  br i1 %.not102.i, label %JS_DefineAutoInitProperty.exit.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aru = getelementptr inbounds i8, ptr %i.arn, i64 -4 ; 2 uses
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !8
  %i.arw = add nsw i32 %i.arv, 1
  store i32 %i.arw, ptr %i.aru, align 4, !tbaa !8
  store ptr %i.arn, ptr %i.art, align 8, !tbaa !35
  br label %JS_DefineAutoInitProperty.exit.thread.i

bb.hu:                                            ; preds = %bb.hp
  %i.arx = load i32, ptr %i.arj, align 8, !tbaa !869 ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.hv, label %JS_DefineAutoInitProperty.exit.thread.i

bb.hv:                                            ; preds = %bb.hu
  %i.asa = load ptr, ptr %i.arf, align 8, !tbaa !186 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 24
  %i.asc = load i32, ptr %i.asb, align 8, !tbaa !8 ; 2 uses
  %i.asd = and i32 %i.asc, %i.arx
  %i.ase = zext i32 %i.asd to i64
  %i.asf = zext i32 %i.asc to i64
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 60 ; 2 uses
  %i.asi = xor i64 %i.ase, -1
  %i.asj = getelementptr inbounds [4 x i8], ptr %i.ash, i64 %i.asi
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !8 ; 2 uses
  %.not19.i.i.i = icmp eq i32 %i.ask, 0
  br i1 %.not19.i.i.i, label %.loopexit.i135.i, label %.lr.ph.i.i132.i

.lr.ph.i.i132.i:                                  ; preds = %bb.hv, %bb.hw
  %.0.in20.i.i.i = phi i32 [ %i.asr, %bb.hw ], [ %i.ask, %bb.hv ]
  %.0.i.i133.i = zext i32 %.0.in20.i.i.i to i64
  %i.asl = getelementptr [8 x i8], ptr %i.ash, i64 %.0.i.i133.i ; 2 uses
  %i.asm = getelementptr i8, ptr %i.asl, i64 -4
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !188
  %i.aso = icmp eq i32 %i.asn, %i.arx
  br i1 %i.aso, label %bb.hx, label %bb.hw, !prof !195

bb.hw:                                            ; preds = %.lr.ph.i.i132.i
  %i.asp = getelementptr i8, ptr %i.asl, i64 -8
  %i.asq = load i32, ptr %i.asp, align 4
  %i.asr = and i32 %i.asq, 67108863               ; 2 uses
  %.not.i.i134.i = icmp eq i32 %i.asr, 0
  br i1 %.not.i.i134.i, label %.loopexit.i135.i, label %.lr.ph.i.i132.i, !llvm.loop !460

bb.hx:                                            ; preds = %.lr.ph.i.i132.i
  call void @abort() #50, !inline_history !894
  unreachable

.loopexit.i135.i:                                 ; preds = %bb.hw, %bb.hv
  %i.ass = call fastcc ptr @add_property(ptr noundef %0, ptr noundef %i.ac, i32 noundef %i.arx, i32 noundef 54), !inline_history !894 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ass, null
  br i1 %.not10.i.i, label %JS_DefineAutoInitProperty.exit.i, label %bb.hy, !prof !9

bb.hy:                                            ; preds = %.loopexit.i135.i
  %i.ast = load i32, ptr %i.arg, align 4, !tbaa !8
  %i.asu = add nsw i32 %i.ast, 1
  store i32 %i.asu, ptr %i.arg, align 4, !tbaa !8
  store i64 %i.ari, ptr %i.ass, align 8, !tbaa !35
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ass, i64 8
  store ptr %i.arz, ptr %i.asv, align 8, !tbaa !35
  br label %JS_DefineAutoInitProperty.exit.thread.i

JS_DefineAutoInitProperty.exit.thread.i:          ; preds = %bb.hy, %bb.hu, %bb.ht, %bb.hp
  %indvars.iv.next472.i = add nuw nsw i64 %indvars.iv471.i, 1 ; 2 uses
  %exitcond475.not.i = icmp eq i64 %indvars.iv.next472.i, %wide.trip.count474.i
  br i1 %exitcond475.not.i, label %._crit_edge442.i, label %bb.hp, !llvm.loop !895

._crit_edge442.i:                                 ; preds = %JS_DefineAutoInitProperty.exit.thread.i, %rqsort.exit.i
  %i.asw = load ptr, ptr %i.af, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.asw, ptr noundef %.pre483.i), !inline_history !861
  %i.asx = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 1104
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !154 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 1088
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !155 ; 2 uses
  %i.atc = load i64, ptr %i.atb, align 8          ; 2 uses
  %.mask.i.i.i = and i64 %i.atc, -4611686018427387904
  %i.atd = icmp ne i64 %.mask.i.i.i, 4611686018427387904
  %i.ate = and i64 %i.atc, 4294967295
  %or.cond.i.not.i.i = icmp eq i64 %i.ate, 2147483648
  %or.cond.i.i = and i1 %i.atd, %or.cond.i.not.i.i
  br i1 %or.cond.i.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %._crit_edge442.i
  %i.atf = getelementptr inbounds nuw i8, ptr %i.asz, i64 384
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !155
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge442.i
  %.0.i.i136.i = phi ptr [ %i.atb, %._crit_edge442.i ], [ %i.atg, %bb.hz ] ; 2 uses
  %i.ath = ptrtoint ptr %.0.i.i136.i to i64       ; 2 uses
  %i.ati = getelementptr inbounds i8, ptr %.0.i.i136.i, i64 -4 ; 4 uses
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !8
  %i.atk = add nsw i32 %i.atj, 1
  store i32 %i.atk, ptr %i.ati, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %2, align 8, !tbaa !35
  %i.atl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.atl, align 4
  %i.atm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.atm, align 8, !tbaa !256
  store i32 0, ptr %3, align 8, !tbaa !35
  %i.atn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.atn, align 4
  %i.ato = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.ato, align 8, !tbaa !256
  %i.atp = call i32 @JS_DefineProperty(ptr noundef nonnull %0, i64 %i.y, i64 %i.z, i32 noundef 234, i64 %i.ath, i64 -7, ptr noundef nonnull byval(%struct.JSValue) align 8 %2, ptr noundef nonnull byval(%struct.JSValue) align 8 %3, i32 noundef 9984) #51, !inline_history !896 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.atq = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.atr = load i32, ptr %i.ati, align 4, !tbaa !8 ; 2 uses
  %i.ats = add nsw i32 %i.atr, -1
  store i32 %i.ats, ptr %i.ati, align 4, !tbaa !8
  %i.att = icmp slt i32 %i.atr, 2
  br i1 %i.att, label %bb.ib, label %js_build_module_ns.exit

bb.ib:                                            ; preds = %bb.ia
  call fastcc void @js_free_value_rt(ptr noundef %i.atq, i64 %i.ath, i64 -7) #51, !inline_history !897
  br label %js_build_module_ns.exit

JS_DefineAutoInitProperty.exit.i:                 ; preds = %.loopexit.i135.i, %bb.hs, %bb.hr, %bb.u, %.JS_DefineAutoInitProperty.exit_crit_edge.i
  %i.atu = phi ptr [ %.pre485.i, %.JS_DefineAutoInitProperty.exit_crit_edge.i ], [ %i.al, %bb.u ], [ %.pre483.i, %bb.hr ], [ %.pre483.i, %bb.hs ], [ %.pre483.i, %.loopexit.i135.i ]
  %i.atv = load ptr, ptr %i.af, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.atv, ptr noundef %i.atu), !inline_history !861
  %i.atw = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.atx = trunc i64 %i.z to i32
  %i.aty = icmp ugt i32 %i.atx, -10
  br i1 %i.aty, label %bb.ic, label %js_build_module_ns.exit.thread

bb.ic:                                            ; preds = %JS_DefineAutoInitProperty.exit.i
  %i.atz = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !8 ; 2 uses
  %i.aub = add nsw i32 %i.aua, -1
  store i32 %i.aub, ptr %i.atz, align 4, !tbaa !8
  %i.auc = icmp slt i32 %i.aua, 2
  br i1 %i.auc, label %bb.id, label %js_build_module_ns.exit.thread

bb.id:                                            ; preds = %bb.ic
end_hunk_2
begin_hunk_3_@js_async_module_execution_fulfilled:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 192
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1653
  %i.cw = icmp sgt i64 %i.ct, %i.cv
  br i1 %i.cw, label %._crit_edge95.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void %.0.i.i.i(ptr noundef nonnull %i.co, ptr noundef nonnull %i.cp, i64 noundef range(i64 -2147483648, 2147483648) 8) #49, !inline_history !539
  %i.cx = shl i64 %.180.i.i, 1
  %i.cy = add i64 %i.cx, 8                        ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %.199.i.i
  br i1 %i.cz, label %.lr.ph94.i.i, label %._crit_edge95.i.i, !llvm.loop !542

._crit_edge95.i.i:                                ; preds = %bb.r, %bb.q, %.lr.ph100.i.i
  %.not85.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not85.i.i, label %.loopexit.i, label %.lr.ph100.i.i, !llvm.loop !543

.lr.ph164:                                        ; preds = %.lr.ph257.preheader.i, %.lr.ph257.i
  %.in = phi i32 [ %i.da, %.lr.ph257.i ], [ %i.at, %.lr.ph257.preheader.i ]
  %.0180253.i163 = phi ptr [ %.1181.i, %.lr.ph257.i ], [ %i.ao, %.lr.ph257.preheader.i ] ; 12 uses
  %.1167255.i162 = phi ptr [ %.2168.i, %.lr.ph257.i ], [ %i.an, %.lr.ph257.preheader.i ] ; 4 uses
  %.0256.i161 = phi i64 [ %.1.i, %.lr.ph257.i ], [ %i.aq, %.lr.ph257.preheader.i ] ; 3 uses
  %i.da = add nsw i32 %.in, 1                     ; 3 uses
  %i.db = shl i64 %.0256.i161, 1
  %i.dc = and i64 %i.db, -8                       ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0180253.i163, i64 %i.dc ; 3 uses
  %i.de = shl i64 %i.dc, 1
  %i.df = getelementptr inbounds nuw i8, ptr %.0180253.i163, i64 %i.de ; 3 uses
  %i.dg = mul i64 %i.dc, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %.0180253.i163, i64 %i.dg ; 3 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !868
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !868
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !1653 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 192
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1653 ; 3 uses
  %i.do = icmp slt i64 %i.dl, %i.dn
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !868
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 192
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1653 ; 4 uses
  br i1 %i.do, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph164
  %i.ds = icmp slt i64 %i.dn, %i.dr
  br i1 %i.ds, label %med3.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = icmp slt i64 %i.dl, %i.dr
  %i.du = select i1 %i.dt, ptr %i.dh, ptr %i.dd
  br label %med3.exit.i

bb.u:                                             ; preds = %.lr.ph164
  %i.dv = icmp sgt i64 %i.dn, %i.dr
  br i1 %i.dv, label %med3.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = icmp slt i64 %i.dl, %i.dr
  %i.dx = select i1 %i.dw, ptr %i.dd, ptr %i.dh
  br label %med3.exit.i

med3.exit.i:                                      ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.dy = phi ptr [ %i.du, %bb.t ], [ %i.dx, %bb.v ], [ %i.df, %bb.s ], [ %i.df, %bb.u ]
  call void %.0.i312.i(ptr noundef nonnull %.0180253.i163, ptr noundef nonnull %i.dy, i64 noundef 8) #49, !inline_history !544
  %i.dz = getelementptr inbounds nuw i8, ptr %.0180253.i163, i64 8 ; 2 uses
  %i.ea = shl i64 %.0256.i161, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %.0180253.i163, i64 %i.ea ; 5 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ad, %med3.exit.i
  %.0191.i = phi ptr [ %i.eb, %med3.exit.i ], [ %i.er, %bb.ad ] ; 3 uses
  %.0188.i = phi ptr [ %i.dz, %med3.exit.i ], [ %.1189.lcssa.i, %bb.ad ] ; 2 uses
  %.0185.i = phi ptr [ %i.eb, %med3.exit.i ], [ %.1186238.i, %bb.ad ] ; 2 uses
  %.0182.i = phi ptr [ %i.dz, %med3.exit.i ], [ %i.fe, %bb.ad ] ; 3 uses
  %.0178.i = phi i64 [ 1, %med3.exit.i ], [ %i.fd, %bb.ad ] ; 2 uses
  %.0175.i = phi i64 [ 1, %med3.exit.i ], [ %.1176.lcssa.i, %bb.ad ] ; 2 uses
  %.0172.i = phi i64 [ %.0256.i161, %med3.exit.i ], [ %.1173239.i, %bb.ad ] ; 2 uses
  %i.ec = icmp ult ptr %.0182.i, %.0191.i
  br i1 %i.ec, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.z
  %.1176229.i = phi i64 [ %.2177.i, %bb.z ], [ %.0175.i, %bb.w ] ; 3 uses
  %.1179228.i = phi i64 [ %i.em, %bb.z ], [ %.0178.i, %bb.w ] ; 2 uses
  %.1183227.i = phi ptr [ %i.en, %bb.z ], [ %.0182.i, %bb.w ] ; 4 uses
  %.1189226.i = phi ptr [ %.2190.i, %bb.z ], [ %.0188.i, %bb.w ] ; 4 uses
  %i.ed = load ptr, ptr %.0180253.i163, align 8, !tbaa !868
  %i.ee = load ptr, ptr %.1183227.i, align 8, !tbaa !868
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1653 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1653 ; 2 uses
  %.not = icmp slt i64 %i.eg, %i.ei
  br i1 %.not, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.ej = icmp eq i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void %.0.i312.i(ptr noundef %.1189226.i, ptr noundef nonnull %.1183227.i, i64 noundef 8) #49, !inline_history !544
  %i.ek = add i64 %.1176229.i, 1
  %i.el = getelementptr inbounds nuw i8, ptr %.1189226.i, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2190.i = phi ptr [ %i.el, %bb.y ], [ %.1189226.i, %bb.x ] ; 2 uses
  %.2177.i = phi i64 [ %i.ek, %bb.y ], [ %.1176229.i, %bb.x ] ; 2 uses
  %i.em = add i64 %.1179228.i, 1                  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.1183227.i, i64 8 ; 3 uses
  %i.eo = icmp ult ptr %i.en, %.0191.i
  br i1 %i.eo, label %.lr.ph.i, label %.critedge.i, !llvm.loop !545

.critedge.i:                                      ; preds = %bb.z, %.lr.ph.i, %bb.w
  %.1189.lcssa.i = phi ptr [ %.0188.i, %bb.w ], [ %.1189226.i, %.lr.ph.i ], [ %.2190.i, %bb.z ] ; 2 uses
  %.1183.lcssa.i = phi ptr [ %.0182.i, %bb.w ], [ %.1183227.i, %.lr.ph.i ], [ %i.en, %bb.z ] ; 7 uses
  %.1179.lcssa.i = phi i64 [ %.0178.i, %bb.w ], [ %.1179228.i, %.lr.ph.i ], [ %i.em, %bb.z ] ; 3 uses
  %.1176.lcssa.i = phi i64 [ %.0175.i, %bb.w ], [ %.1176229.i, %.lr.ph.i ], [ %.2177.i, %bb.z ] ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %.0191.i, i64 -8 ; 2 uses
  %i.eq = icmp ult ptr %.1183.lcssa.i, %i.ep
  br i1 %i.eq, label %.lr.ph240.i, label %.critedge3.i

.lr.ph240.i:                                      ; preds = %.critedge.i, %bb.ac
  %i.er = phi ptr [ %i.fb, %bb.ac ], [ %i.ep, %.critedge.i ] ; 5 uses
  %.1173239.i = phi i64 [ %.2174.i, %bb.ac ], [ %.0172.i, %.critedge.i ] ; 3 uses
  %.1186238.i = phi ptr [ %.2187.i, %bb.ac ], [ %.0185.i, %.critedge.i ] ; 3 uses
  %i.es = load ptr, ptr %.0180253.i163, align 8, !tbaa !868
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !868
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 192
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !1653 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 192
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !1653 ; 2 uses
  %.not41 = icmp sgt i64 %i.ev, %i.ex
  br i1 %.not41, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph240.i
  %i.ey = icmp eq i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = add i64 %.1173239.i, -1
  %i.fa = getelementptr inbounds i8, ptr %.1186238.i, i64 -8 ; 2 uses
  call void %.0.i312.i(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.er, i64 noundef 8) #49, !inline_history !544
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2187.i = phi ptr [ %i.fa, %bb.ab ], [ %.1186238.i, %bb.aa ] ; 2 uses
  %.2174.i = phi i64 [ %i.ez, %bb.ab ], [ %.1173239.i, %bb.aa ] ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 -8 ; 2 uses
  %i.fc = icmp ult ptr %.1183.lcssa.i, %i.fb
  br i1 %i.fc, label %.lr.ph240.i, label %.critedge3.i, !llvm.loop !546

bb.ad:                                            ; preds = %.lr.ph240.i
  call void %.0.i312.i(ptr noundef %.1183.lcssa.i, ptr noundef nonnull %i.er, i64 noundef 8) #49, !inline_history !544
  %i.fd = add i64 %.1179.lcssa.i, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.1183.lcssa.i, i64 8
  br label %bb.w

.critedge3.i:                                     ; preds = %.critedge.i, %bb.ac
  %.1186.lcssa.i = phi ptr [ %.2187.i, %bb.ac ], [ %.0185.i, %.critedge.i ]
  %.1173.lcssa.i = phi i64 [ %.2174.i, %bb.ac ], [ %.0172.i, %.critedge.i ]
  %i.ff = ptrtoint ptr %.1189.lcssa.i to i64      ; 2 uses
  %i.fg = ptrtoint ptr %.0180253.i163 to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ptrtoint ptr %.1183.lcssa.i to i64      ; 2 uses
  %i.fj = sub i64 %i.fi, %i.ff
  %i.fk = sub i64 %.1179.lcssa.i, %.1176.lcssa.i  ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.fj) ; 2 uses
  %i.fl = sub i64 0, %spec.select.i
  %i.fm = getelementptr inbounds i8, ptr %.1183.lcssa.i, i64 %i.fl
  call void %.0.i210.i(ptr noundef nonnull %.0180253.i163, ptr noundef %i.fm, i64 noundef %spec.select.i) #49, !inline_history !544
  %i.fn = ptrtoint ptr %i.eb to i64
  %i.fo = ptrtoint ptr %.1186.lcssa.i to i64      ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = sub i64 %i.fo, %i.fi                    ; 2 uses
  %i.fr = sub i64 0, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.eb, i64 %i.fr ; 2 uses
  %i.ft = sub i64 %.1173.lcssa.i, %.1179.lcssa.i  ; 3 uses
  %.1171.i = call i64 @llvm.umin.i64(i64 %i.fp, i64 %i.fq) ; 2 uses
  %i.fu = sub i64 0, %.1171.i
  %i.fv = getelementptr inbounds i8, ptr %i.eb, i64 %i.fu
  call void %.0.i210.i(ptr noundef %.1183.lcssa.i, ptr noundef nonnull %i.fv, i64 noundef %.1171.i) #49, !inline_history !544
  %i.fw = icmp ugt i64 %i.fk, %i.ft
  br i1 %i.fw, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge3.i
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge3.i
  %.sink285.i = phi ptr [ %i.fs, %bb.ae ], [ %.0180253.i163, %.critedge3.i ]
  %.sink.i = phi i64 [ %i.ft, %bb.ae ], [ %i.fk, %.critedge3.i ]
  %.1181.i = phi ptr [ %.0180253.i163, %bb.ae ], [ %i.fs, %.critedge3.i ] ; 3 uses
  %.1.i = phi i64 [ %i.fk, %bb.ae ], [ %i.ft, %.critedge3.i ] ; 4 uses
  store ptr %.sink285.i, ptr %.1167255.i162, align 8, !tbaa !533
  %i.fx = getelementptr inbounds nuw i8, ptr %.1167255.i162, i64 8
  store i64 %.sink.i, ptr %i.fx, align 8, !tbaa !535
  %i.fy = getelementptr inbounds nuw i8, ptr %.1167255.i162, i64 16
  store i32 %i.da, ptr %i.fy, align 8, !tbaa !536
  %.2168.i = getelementptr inbounds nuw i8, ptr %.1167255.i162, i64 24 ; 3 uses
  %i.fz = icmp ugt i64 %.1.i, 6
  br i1 %i.fz, label %.lr.ph257.i, label %heapsortx.exit.i, !llvm.loop !538

heapsortx.exit.i:                                 ; preds = %bb.af, %bb.l
  %.0180225.i = phi ptr [ %i.ao, %bb.l ], [ %.1181.i, %bb.af ] ; 3 uses
  %.1167223.i = phi ptr [ %i.an, %bb.l ], [ %.2168.i, %bb.af ] ; 2 uses
  %.2.i = phi i64 [ %i.aq, %bb.l ], [ %.1.i, %bb.af ] ; 2 uses
  %i.ga = shl nuw nsw i64 %.2.i, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %.0180225.i, i64 %i.ga
  %i.gc = icmp samesign ugt i64 %.2.i, 1
  br i1 %i.gc, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %heapsortx.exit.i
  %.2184264.i = getelementptr inbounds nuw i8, ptr %.0180225.i, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge5.i, %.preheader.preheader.i
  %.2184265.i = phi ptr [ %.2184.i, %.critedge5.i ], [ %.2184264.i, %.preheader.preheader.i ] ; 2 uses
  br label %.lr.ph262.i

.lr.ph262.i:                                      ; preds = %.preheader.i, %bb.ag
  %.2193261.i = phi ptr [ %i.gd, %bb.ag ], [ %.2184265.i, %.preheader.i ] ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %.2193261.i, i64 -8 ; 4 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !868
  %i.gf = load ptr, ptr %.2193261.i, align 8, !tbaa !868
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 192
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !1653
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 192
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !1653
  %i.gk = icmp sgt i64 %i.gh, %i.gj
  br i1 %i.gk, label %bb.ag, label %.critedge5.i

bb.ag:                                            ; preds = %.lr.ph262.i
  call void %.0.i312.i(ptr noundef nonnull %.2193261.i, ptr noundef nonnull %i.gd, i64 noundef 8) #49, !inline_history !544
  %i.gl = icmp ugt ptr %i.gd, %.0180225.i
  br i1 %i.gl, label %.lr.ph262.i, label %.critedge5.i, !llvm.loop !547

.critedge5.i:                                     ; preds = %.lr.ph262.i, %bb.ag
  %.2184.i = getelementptr inbounds nuw i8, ptr %.2184265.i, i64 8 ; 2 uses
  %i.gm = icmp ult ptr %.2184.i, %i.gb
  br i1 %i.gm, label %.preheader.i, label %.loopexit.i, !llvm.loop !548

rqsort.exit.loopexit:                             ; preds = %.loopexit.i
  %.pre = load i32, ptr %i.z, align 8, !tbaa !1658
  %.pre83.pre = load ptr, ptr %10, align 8, !tbaa !1656
  br label %rqsort.exit

rqsort.exit:                                      ; preds = %rqsort.exit.loopexit, %exchange_func.exit215.i
  %.pre83 = phi ptr [ %.pre83.pre, %rqsort.exit.loopexit ], [ %i.ac, %exchange_func.exit215.i ] ; 3 uses
  %i.gn = phi i32 [ %.pre, %rqsort.exit.loopexit ], [ %i.ad, %exchange_func.exit215.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %rqsort.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %wide.trip.count = zext nneg i32 %i.gn to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.at
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.pre83, i64 %indvars.iv
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !868 ; 9 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 147 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp eq i8 %i.gv, 5
  br i1 %i.gw, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 144
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !1215, !range !58, !noundef !59
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @js_execute_async_module(ptr noundef %0, ptr noundef nonnull %i.gt)
  br label %bb.at

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  %i.ha = call fastcc i32 @js_execute_sync_module(ptr noundef %0, ptr noundef nonnull %i.gt, ptr noundef %11)
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  %i.hc = ptrtoint ptr %i.gt to i64               ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %i.gt, i64 -4 ; 4 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !8
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !8
  store i64 %i.hc, ptr %12, align 8
  store i64 -3, ptr %i.gq, align 8
  %i.hg = call { i64, i64 } @js_async_module_execution_rejected(ptr noundef %0, i64 poison, i64 poison, i32 poison, ptr noundef nonnull %11, i32 poison, ptr noundef nonnull %12) ; 0 uses
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !50 ; 2 uses
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !8  ; 2 uses
  %i.hj = add nsw i32 %i.hi, -1
  store i32 %i.hj, ptr %i.hd, align 4, !tbaa !8
  %i.hk = icmp slt i32 %i.hi, 2
  br i1 %i.hk, label %bb.am, label %JS_FreeValue.exit

bb.am:                                            ; preds = %bb.al
  call fastcc void @js_free_value_rt(ptr noundef %i.hh, i64 %i.hc, i64 -3), !inline_history !143
  %.pre82 = load ptr, ptr %i.gp, align 8, !tbaa !50
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.al, %bb.am
  %i.hl = phi ptr [ %i.hh, %bb.al ], [ %.pre82, %bb.am ]
  %i.hm = load i64, ptr %11, align 8              ; 2 uses
  %i.hn = load i64, ptr %i.gr, align 8            ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = icmp ugt i32 %i.ho, -10
  br i1 %i.hp, label %bb.an, label %JS_FreeValue.exit38

bb.an:                                            ; preds = %JS_FreeValue.exit
  %i.hq = inttoptr i64 %i.hm to ptr
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !8  ; 2 uses
  %i.ht = add nsw i32 %i.hs, -1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !8
  %i.hu = icmp slt i32 %i.hs, 2
  br i1 %i.hu, label %bb.ao, label %JS_FreeValue.exit38

bb.ao:                                            ; preds = %bb.an
  call fastcc void @js_free_value_rt(ptr noundef %i.hl, i64 %i.hm, i64 %i.hn), !inline_history !143
  br label %JS_FreeValue.exit38

JS_FreeValue.exit38:                              ; preds = %JS_FreeValue.exit, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %js_set_module_evaluated.exit40

bb.ap:                                            ; preds = %bb.ak
  store i8 5, ptr %i.gu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gt, i64 216
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = and i64 %i.hw, 4294967295
  %i.hy = icmp eq i64 %i.hx, 3
  br i1 %i.hy, label %js_set_module_evaluated.exit40, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @__const.js_disposable_stack_dispose.undef, i64 16, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gt, i64 224
  %i.ia = load i64, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gt, i64 232
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.ia, i64 %i.ic, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 2), !inline_history !1654 ; 2 uses
  %i.ie = extractvalue { i64, i64 } %i.id, 0      ; 2 uses
  %i.if = extractvalue { i64, i64 } %i.id, 1      ; 2 uses
  %i.ig = load ptr, ptr %i.gp, align 8, !tbaa !50
  %i.ih = trunc i64 %i.if to i32
  %i.ii = icmp ugt i32 %i.ih, -10
  br i1 %i.ii, label %bb.ar, label %JS_FreeValue.exit.i39

bb.ar:                                            ; preds = %bb.aq
  %i.ij = inttoptr i64 %i.ie to ptr
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 -4 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !8  ; 2 uses
  %i.im = add nsw i32 %i.il, -1
  store i32 %i.im, ptr %i.ik, align 4, !tbaa !8
  %i.in = icmp slt i32 %i.il, 2
  br i1 %i.in, label %bb.as, label %JS_FreeValue.exit.i39

bb.as:                                            ; preds = %bb.ar
  call fastcc void @js_free_value_rt(ptr noundef %i.ig, i64 %i.ie, i64 %i.if), !inline_history !1655
  br label %JS_FreeValue.exit.i39

JS_FreeValue.exit.i39:                            ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %js_set_module_evaluated.exit40

js_set_module_evaluated.exit40:                   ; preds = %JS_FreeValue.exit.i39, %bb.ap, %JS_FreeValue.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %bb.at

bb.at:                                            ; preds = %bb.aj, %js_set_module_evaluated.exit40, %bb.ah
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %bb.ah, !llvm.loop !1659

.sink.split:                                      ; preds = %bb.at, %rqsort.exit, %js_set_module_evaluated.exit
  %.pre83.sink = phi ptr [ %i.ac, %js_set_module_evaluated.exit ], [ %.pre83, %rqsort.exit ], [ %.pre83, %bb.at ]
  %.sroa.7.0.ph = phi i64 [ 6, %js_set_module_evaluated.exit ], [ 3, %rqsort.exit ], [ 3, %bb.at ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.ip, ptr noundef %.pre83.sink)
  br label %bb.au

bb.au:                                            ; preds = %.sink.split, %bb.a
  %.sroa.7.0 = phi i64 [ 3, %bb.a ], [ %.sroa.7.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_module_execution_rejected(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %7 = alloca %struct.JSValue, align 8            ; 7 uses
  %8 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = load ptr, ptr %6, align 8, !tbaa !35     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !129
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr i8, ptr %i.c, i64 1232
  %.val = load i64, ptr %i.d, align 8, !tbaa !101
  %i.e = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = icmp ugt i64 %.val, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !102 ; 0 uses
  br label %JS_FreeValue.exit33

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 147 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 5
  br i1 %i.k, label %JS_FreeValue.exit33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 1, ptr %i.l, align 8, !tbaa !910
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.n = load i64, ptr %7, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.q, -10
  br i1 %i.r, label %bb.e, label %js_dup.exit

bb.e:                                             ; preds = %bb.d
  %i.s = inttoptr i64 %i.n to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
end_hunk_3
