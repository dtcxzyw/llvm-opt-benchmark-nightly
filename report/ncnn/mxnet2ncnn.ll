inline.NumInlined: 2390
inline.NumDeleted: 693
begin_hunk_0_@main:bb.a
  br label %bb.aeu

bb.adr:                                           ; preds = %bb.adg
  %i.deq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aeu

bb.ads:                                           ; preds = %_ZNK9MXNetNode9AttrProxycviEv.exit2121
  %i.der = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2123

bb.adt:                                           ; preds = %bb.adh
  %i.des = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %i.det = load ptr, ptr %70, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i2122 = icmp eq ptr %i.det, null
  br i1 %.not.i.i.i2122, label %_ZNSt6vectorIfSaIfEED2Ev.exit2123, label %bb.adu

bb.adu:                                           ; preds = %bb.adt
  call void @_ZdlPv(ptr noundef nonnull %i.det) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2123

bb.adv:                                           ; preds = %bb.adi
  %i.deu = getelementptr inbounds nuw i8, ptr %i.ded, i64 4
  %i.dev = load i32, ptr %i.deu, align 4, !tbaa !27
  %i.dew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.205, i32 noundef %i.dev) #23 ; 0 uses
  br label %.sink.split4232

.sink.split4232:                                  ; preds = %bb.adi, %bb.adv
  %.str.218.sink4233 = phi ptr [ @.str.218, %bb.adv ], [ @.str.205, %bb.adi ]
  %i.dex = load i32, ptr %i.ded, align 4, !tbaa !27
  %i.dey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.218.sink4233, i32 noundef %i.dex) #23 ; 0 uses
  br label %bb.adw

bb.adw:                                           ; preds = %.sink.split4232, %bb.adi
  %i.dez = load ptr, ptr %i.bri, align 8, !tbaa !33
  %i.dfa = load ptr, ptr %65, align 8, !tbaa !30  ; 5 uses
  %i.dfb = ptrtoint ptr %i.dez to i64
  %i.dfc = ptrtoint ptr %i.dfa to i64
  %i.dfd = sub i64 %i.dfb, %i.dfc
  %i.dfe = ashr exact i64 %i.dfd, 2
  switch i64 %i.dfe, label %bb.ady [
    i64 1, label %.sink.split4235
    i64 2, label %bb.adx
  ]

bb.adx:                                           ; preds = %bb.adw
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfa, i64 4
  %i.dfg = load i32, ptr %i.dff, align 4, !tbaa !27
  %i.dfh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.175, i32 noundef %i.dfg) #23 ; 0 uses
  br label %.sink.split4235

.sink.split4235:                                  ; preds = %bb.adw, %bb.adx
  %.str.219.sink4236 = phi ptr [ @.str.219, %bb.adx ], [ @.str.175, %bb.adw ]
  %i.dfi = load i32, ptr %i.dfa, align 4, !tbaa !27
  %i.dfj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.219.sink4236, i32 noundef %i.dfi) #23 ; 0 uses
  br label %bb.ady

bb.ady:                                           ; preds = %.sink.split4235, %bb.adw
  %i.dfk = load ptr, ptr %i.brj, align 8, !tbaa !33
  %i.dfl = load ptr, ptr %66, align 8, !tbaa !30  ; 5 uses
  %i.dfm = ptrtoint ptr %i.dfk to i64
  %i.dfn = ptrtoint ptr %i.dfl to i64
  %i.dfo = sub i64 %i.dfm, %i.dfn
  %i.dfp = ashr exact i64 %i.dfo, 2
  switch i64 %i.dfp, label %bb.aea [
    i64 1, label %.sink.split4238
    i64 2, label %bb.adz
  ]

bb.adz:                                           ; preds = %bb.ady
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfl, i64 4
  %i.dfr = load i32, ptr %i.dfq, align 4, !tbaa !27
  %i.dfs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.169, i32 noundef %i.dfr) #23 ; 0 uses
  br label %.sink.split4238

.sink.split4238:                                  ; preds = %bb.ady, %bb.adz
  %.str.220.sink4239 = phi ptr [ @.str.220, %bb.adz ], [ @.str.169, %bb.ady ]
  %i.dft = load i32, ptr %i.dfl, align 4, !tbaa !27
  %i.dfu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.220.sink4239, i32 noundef %i.dft) #23 ; 0 uses
  br label %bb.aea

bb.aea:                                           ; preds = %.sink.split4238, %bb.ady
  %i.dfv = load ptr, ptr %i.brk, align 8, !tbaa !33 ; 2 uses
  %i.dfw = load ptr, ptr %69, align 8, !tbaa !30  ; 6 uses
  %i.dfx = icmp eq ptr %i.dfv, %i.dfw
  br i1 %i.dfx, label %bb.aeb, label %bb.aee

bb.aeb:                                           ; preds = %bb.aea
  %i.dfy = load ptr, ptr %i.brl, align 8, !tbaa !33
  %i.dfz = load ptr, ptr %67, align 8, !tbaa !30  ; 3 uses
  %i.dga = ptrtoint ptr %i.dfy to i64
  %i.dgb = ptrtoint ptr %i.dfz to i64
  %i.dgc = sub i64 %i.dga, %i.dgb
  %i.dgd = ashr exact i64 %i.dgc, 2
  switch i64 %i.dgd, label %bb.aed [
    i64 1, label %.sink.split4241
    i64 2, label %bb.aec
  ]

bb.aec:                                           ; preds = %bb.aeb
  %i.dge = getelementptr inbounds nuw i8, ptr %i.dfz, i64 4
  %i.dgf = load i32, ptr %i.dge, align 4, !tbaa !27
  %i.dgg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.170, i32 noundef %i.dgf) #23 ; 0 uses
  br label %.sink.split4241

.sink.split4241:                                  ; preds = %bb.aeb, %bb.aec
  %.str.221.sink4242 = phi ptr [ @.str.221, %bb.aec ], [ @.str.170, %bb.aeb ]
  %i.dgh = load i32, ptr %i.dfz, align 4, !tbaa !27
  %i.dgi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.221.sink4242, i32 noundef %i.dgh) #23 ; 0 uses
  br label %bb.aed

bb.aed:                                           ; preds = %.sink.split4241, %bb.aeb
  %i.dgj = load ptr, ptr %i.brm, align 8, !tbaa !33
  %i.dgk = load ptr, ptr %68, align 8, !tbaa !30  ; 3 uses
  %i.dgl = ptrtoint ptr %i.dgj to i64
  %i.dgm = ptrtoint ptr %i.dgk to i64
  %i.dgn = sub i64 %i.dgl, %i.dgm
  %i.dgo = ashr exact i64 %i.dgn, 2
  switch i64 %i.dgo, label %bb.aef [
    i64 1, label %.sink.split4244
    i64 2, label %.sink.split4244.sink.split
  ]

bb.aee:                                           ; preds = %bb.aea
  %i.dgp = ptrtoint ptr %i.dfw to i64
  %i.dgq = ptrtoint ptr %i.dfv to i64
  %i.dgr = sub i64 %i.dgq, %i.dgp
  %i.dgs = ashr exact i64 %i.dgr, 2
  %i.dgt = call i64 @fwrite(ptr nonnull @.str.233, i64 7, i64 1, ptr %i.zk) ; 0 uses
  switch i64 %i.dgs, label %bb.aef [
    i64 1, label %.sink.split4244
    i64 2, label %.sink.split4244.sink.split
  ]

.sink.split4244.sink.split:                       ; preds = %bb.aee, %bb.aed
  %.sink4258 = phi ptr [ %i.dgk, %bb.aed ], [ %i.dfw, %bb.aee ] ; 2 uses
  %.str.231.sink = phi ptr [ @.str.231, %bb.aed ], [ @.str.234, %bb.aee ]
  %.str.234.sink.ph = phi ptr [ @.str.232, %bb.aed ], [ @.str.235, %bb.aee ]
  %i.dgu = getelementptr inbounds nuw i8, ptr %.sink4258, i64 4
  %i.dgv = load i32, ptr %i.dgu, align 4, !tbaa !27
  %i.dgw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.231.sink, i32 noundef %i.dgv) #23 ; 0 uses
  br label %.sink.split4244

.sink.split4244:                                  ; preds = %.sink.split4244.sink.split, %bb.aee, %bb.aed
  %.sink4246 = phi ptr [ %i.dgk, %bb.aed ], [ %i.dfw, %bb.aee ], [ %.sink4258, %.sink.split4244.sink.split ]
  %.str.234.sink = phi ptr [ @.str.231, %bb.aed ], [ @.str.234, %bb.aee ], [ %.str.234.sink.ph, %.sink.split4244.sink.split ]
  %i.dgx = load i32, ptr %.sink4246, align 4, !tbaa !27
  %i.dgy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull %.str.234.sink, i32 noundef %i.dgx) #23 ; 0 uses
  br label %bb.aef

bb.aef:                                           ; preds = %.sink.split4244, %bb.aee, %bb.aed
  %i.dgz = icmp ne i32 %i.ddz, 1
  %i.dha = zext i1 %i.dgz to i32
  %i.dhb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.222, i32 noundef %i.dha) #23 ; 0 uses
  %i.dhc = load ptr, ptr %i.brn, align 8, !tbaa !39
  %i.dhd = load ptr, ptr %70, align 8, !tbaa !36
  %i.dhe = ptrtoint ptr %i.dhc to i64
  %i.dhf = ptrtoint ptr %i.dhd to i64
  %i.dhg = sub i64 %i.dhe, %i.dhf
  %i.dhh = lshr exact i64 %i.dhg, 2
  %i.dhi = trunc i64 %i.dhh to i32
  %i.dhj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.223, i32 noundef %i.dhi) #23 ; 0 uses
  %i.dhk = icmp sgt i32 %i.dea, 1
  br i1 %i.dhk, label %bb.aeg, label %bb.aeh

bb.aeg:                                           ; preds = %bb.aef
  %i.dhl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.191, i32 noundef %i.dea) #23 ; 0 uses
  br label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg, %bb.aef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #23
  store i32 0, ptr %i.ay, align 4, !tbaa !27
  %i.dhm = call i64 @fwrite(ptr noundef nonnull %i.ay, i64 noundef 4, i64 noundef 1, ptr noundef %i.zl) ; 0 uses
  %i.dhn = icmp eq i64 %i.deg, 8
  br i1 %i.dhn, label %bb.aei, label %bb.aej

bb.aei:                                           ; preds = %bb.aeh
  %i.dho = getelementptr inbounds nuw i8, ptr %i.ded, i64 4
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !27
  %i.dhq = load i32, ptr %i.ded, align 4, !tbaa !27
  %i.dhr = mul nsw i32 %i.dhq, %i.dhp
  br label %bb.aek

bb.aej:                                           ; preds = %bb.aeh
  %i.dhs = load i32, ptr %i.ded, align 4, !tbaa !27 ; 2 uses
  %i.dht = mul nsw i32 %i.dhs, %i.dhs
  br label %bb.aek

bb.aek:                                           ; preds = %bb.aej, %bb.aei
  %.01190 = phi i32 [ %i.dhr, %bb.aei ], [ %i.dht, %bb.aej ] ; 2 uses
  %i.dhu = icmp sgt i32 %i.dea, 0
  br i1 %i.dhu, label %.lr.ph3318, label %._crit_edge3319.split

.lr.ph3318:                                       ; preds = %bb.aek
  %i.dhv = sdiv i32 %i.ddy, %i.dea                ; 4 uses
  %i.dhw = sext i32 %.01190 to i64                ; 3 uses
  %i.dhx = sext i32 %i.dhv to i64                 ; 2 uses
  %98 = zext nneg i32 %i.dea to i64
  %factor.op.mul = mul i32 %.01190, %i.dhv
  %i.dhy = icmp sgt i32 %i.dhv, 0
  br i1 %i.dhy, label %.preheader.lr.ph.preheader, label %._crit_edge3319.split

.preheader.lr.ph.preheader:                       ; preds = %.lr.ph3318
  %wide.trip.count3557 = zext nneg i32 %i.dhv to i64
  br label %.preheader.lr.ph

._crit_edge3319.split:                            ; preds = %._crit_edge3315.split, %.lr.ph3318, %bb.aek
  %i.dhz = load ptr, ptr %71, align 8, !tbaa !36  ; 2 uses
  %i.dia = load ptr, ptr %i.bro, align 8, !tbaa !39
  %i.dib = ptrtoint ptr %i.dia to i64
  %i.dic = ptrtoint ptr %i.dhz to i64
  %i.did = sub i64 %i.dib, %i.dic
  %i.die = ashr exact i64 %i.did, 2
  %i.dif = call i64 @fwrite(ptr noundef %i.dhz, i64 noundef 4, i64 noundef %i.die, ptr noundef %i.zl) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #23
  %i.dig = load ptr, ptr %71, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i2124 = icmp eq ptr %i.dig, null
  br i1 %.not.i.i.i2124, label %_ZNSt6vectorIfSaIfEED2Ev.exit2125, label %bb.ael

bb.ael:                                           ; preds = %._crit_edge3319.split
  call void @_ZdlPv(ptr noundef nonnull %i.dig) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2125

_ZNSt6vectorIfSaIfEED2Ev.exit2125:                ; preds = %._crit_edge3319.split, %bb.ael
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  %i.dih = load ptr, ptr %70, align 8, !tbaa !36  ; 2 uses
  %.not.i.i.i2126 = icmp eq ptr %i.dih, null
  br i1 %.not.i.i.i2126, label %_ZNSt6vectorIfSaIfEED2Ev.exit2127, label %bb.aem

bb.aem:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2125
  call void @_ZdlPv(ptr noundef nonnull %i.dih) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2127

_ZNSt6vectorIfSaIfEED2Ev.exit2127:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2125, %bb.aem
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  %.not.i.i.i2128 = icmp eq ptr %i.dfw, null
  br i1 %.not.i.i.i2128, label %_ZNSt6vectorIiSaIiEED2Ev.exit2129, label %bb.aen

bb.aen:                                           ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2127
  call void @_ZdlPv(ptr noundef nonnull %i.dfw) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2129

_ZNSt6vectorIiSaIiEED2Ev.exit2129:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2127, %bb.aen
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  %i.dii = load ptr, ptr %68, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2130 = icmp eq ptr %i.dii, null
  br i1 %.not.i.i.i2130, label %_ZNSt6vectorIiSaIiEED2Ev.exit2131, label %bb.aeo

bb.aeo:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2129
  call void @_ZdlPv(ptr noundef nonnull %i.dii) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2131

_ZNSt6vectorIiSaIiEED2Ev.exit2131:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2129, %bb.aeo
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  %i.dij = load ptr, ptr %67, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2132 = icmp eq ptr %i.dij, null
  br i1 %.not.i.i.i2132, label %_ZNSt6vectorIiSaIiEED2Ev.exit2133, label %bb.aep

bb.aep:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2131
  call void @_ZdlPv(ptr noundef nonnull %i.dij) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2133

_ZNSt6vectorIiSaIiEED2Ev.exit2133:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2131, %bb.aep
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  %.not.i.i.i2134 = icmp eq ptr %i.dfl, null
  br i1 %.not.i.i.i2134, label %_ZNSt6vectorIiSaIiEED2Ev.exit2135, label %bb.aeq

bb.aeq:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2133
  call void @_ZdlPv(ptr noundef nonnull %i.dfl) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2135

_ZNSt6vectorIiSaIiEED2Ev.exit2135:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2133, %bb.aeq
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  %.not.i.i.i2136 = icmp eq ptr %i.dfa, null
  br i1 %.not.i.i.i2136, label %_ZNSt6vectorIiSaIiEED2Ev.exit2137, label %bb.aer

bb.aer:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2135
  call void @_ZdlPv(ptr noundef nonnull %i.dfa) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2137

_ZNSt6vectorIiSaIiEED2Ev.exit2137:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2135, %bb.aer
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  %.not.i.i.i2138 = icmp eq ptr %i.ded, null
  br i1 %.not.i.i.i2138, label %_ZNSt6vectorIiSaIiEED2Ev.exit2139, label %bb.aes

bb.aes:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2137
  call void @_ZdlPv(ptr noundef nonnull %i.ded) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2139

_ZNSt6vectorIiSaIiEED2Ev.exit2139:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2137, %bb.aes
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph.preheader, %._crit_edge3315.split
  %.011913316 = phi i32 [ %i.diy, %._crit_edge3315.split ], [ 0, %.preheader.lr.ph.preheader ] ; 2 uses
  %i.dik = load ptr, ptr %i.brn, align 8, !tbaa !39
  %i.dil = load ptr, ptr %70, align 8, !tbaa !36  ; 2 uses
  %i.dim = ptrtoint ptr %i.dik to i64
  %i.din = ptrtoint ptr %i.dil to i64
  %i.dio = sub i64 %i.dim, %i.din
  %i.dip = ashr exact i64 %i.dio, 2
  %99 = udiv i64 %i.dip, %i.dhw
  %i.diq = udiv i64 %99, %i.dhx
  %i.dir = udiv i64 %i.diq, %98                   ; 2 uses
  %i.dis = trunc i64 %i.dir to i32                ; 2 uses
  %.reass = mul i32 %.011913316, %factor.op.mul
  %i.dit = mul nsw i32 %.reass, %i.dis
  %i.diu = sext i32 %i.dit to i64
  %i.div = getelementptr inbounds [4 x i8], ptr %i.dil, i64 %i.diu
  %i.diw = icmp sgt i32 %i.dis, 0
  br i1 %i.diw, label %.preheader.preheader, label %._crit_edge3315.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.dix = and i64 %i.dir, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge3313
  %indvars.iv3554 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next3555, %._crit_edge3313 ] ; 2 uses
  br label %bb.aet

._crit_edge3315.split:                            ; preds = %._crit_edge3313, %.preheader.lr.ph
  %i.diy = add nuw nsw i32 %.011913316, 1         ; 2 uses
  %exitcond3559.not = icmp eq i32 %i.diy, %i.dea
  br i1 %exitcond3559.not, label %._crit_edge3319.split, label %.preheader.lr.ph, !llvm.loop !138

._crit_edge3313:                                  ; preds = %bb.aet
  %indvars.iv.next3555 = add nuw nsw i64 %indvars.iv3554, 1 ; 2 uses
  %exitcond3558.not = icmp eq i64 %indvars.iv.next3555, %wide.trip.count3557
  br i1 %exitcond3558.not, label %._crit_edge3315.split, label %.preheader, !llvm.loop !139

bb.aet:                                           ; preds = %.preheader, %bb.aet
  %indvars.iv3551 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next3552, %bb.aet ] ; 2 uses
  %i.diz = mul nuw nsw i64 %indvars.iv3551, %i.dhx
  %i.dja = add nuw nsw i64 %i.diz, %indvars.iv3554
  %i.djb = mul nsw i64 %i.dja, %i.dhw
  %i.djc = getelementptr inbounds [4 x i8], ptr %i.div, i64 %i.djb
  %i.djd = call i64 @fwrite(ptr noundef %i.djc, i64 noundef 4, i64 noundef %i.dhw, ptr noundef %i.zl) ; 0 uses
  %indvars.iv.next3552 = add nuw nsw i64 %indvars.iv3551, 1 ; 2 uses
  %i.dje = icmp samesign ult i64 %indvars.iv.next3552, %i.dix
  br i1 %i.dje, label %bb.aet, label %._crit_edge3313, !llvm.loop !140

_ZNSt6vectorIfSaIfEED2Ev.exit2123:                ; preds = %bb.adu, %bb.adt, %bb.ads
  %.pn1268 = phi { ptr, i32 } [ %i.der, %bb.ads ], [ %i.des, %bb.adt ], [ %i.des, %bb.adu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br label %bb.aeu

bb.aeu:                                           ; preds = %bb.adr, %_ZNSt6vectorIfSaIfEED2Ev.exit2123, %bb.adq
  %.pn1268.pn.pn = phi { ptr, i32 } [ %i.dep, %bb.adq ], [ %.pn1268, %_ZNSt6vectorIfSaIfEED2Ev.exit2123 ], [ %i.deq, %bb.adr ] ; 2 uses
  %i.djf = load ptr, ptr %69, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2140 = icmp eq ptr %i.djf, null
  br i1 %.not.i.i.i2140, label %_ZNSt6vectorIiSaIiEED2Ev.exit2141, label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  call void @_ZdlPv(ptr noundef nonnull %i.djf) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2141

_ZNSt6vectorIiSaIiEED2Ev.exit2141:                ; preds = %bb.aev, %bb.aeu, %bb.adp
  %.pn1268.pn.pn.pn = phi { ptr, i32 } [ %i.deo, %bb.adp ], [ %.pn1268.pn.pn, %bb.aeu ], [ %.pn1268.pn.pn, %bb.aev ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  %i.djg = load ptr, ptr %68, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2142 = icmp eq ptr %i.djg, null
  br i1 %.not.i.i.i2142, label %_ZNSt6vectorIiSaIiEED2Ev.exit2143, label %bb.aew

bb.aew:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2141
  call void @_ZdlPv(ptr noundef nonnull %i.djg) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2143

_ZNSt6vectorIiSaIiEED2Ev.exit2143:                ; preds = %bb.aew, %_ZNSt6vectorIiSaIiEED2Ev.exit2141, %bb.ado
  %.pn1268.pn.pn.pn.pn = phi { ptr, i32 } [ %i.den, %bb.ado ], [ %.pn1268.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2141 ], [ %.pn1268.pn.pn.pn, %bb.aew ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23
  %i.djh = load ptr, ptr %67, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2144 = icmp eq ptr %i.djh, null
  br i1 %.not.i.i.i2144, label %_ZNSt6vectorIiSaIiEED2Ev.exit2145, label %bb.aex

bb.aex:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2143
  call void @_ZdlPv(ptr noundef nonnull %i.djh) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2145

_ZNSt6vectorIiSaIiEED2Ev.exit2145:                ; preds = %bb.aex, %_ZNSt6vectorIiSaIiEED2Ev.exit2143, %bb.adn
  %.pn1268.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dem, %bb.adn ], [ %.pn1268.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2143 ], [ %.pn1268.pn.pn.pn.pn, %bb.aex ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  %i.dji = load ptr, ptr %66, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2146 = icmp eq ptr %i.dji, null
  br i1 %.not.i.i.i2146, label %_ZNSt6vectorIiSaIiEED2Ev.exit2147, label %bb.aey

bb.aey:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2145
  call void @_ZdlPv(ptr noundef nonnull %i.dji) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2147

_ZNSt6vectorIiSaIiEED2Ev.exit2147:                ; preds = %bb.aey, %_ZNSt6vectorIiSaIiEED2Ev.exit2145, %bb.adm
  %.pn1268.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.del, %bb.adm ], [ %.pn1268.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2145 ], [ %.pn1268.pn.pn.pn.pn.pn, %bb.aey ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #23
  %i.djj = load ptr, ptr %65, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2148 = icmp eq ptr %i.djj, null
  br i1 %.not.i.i.i2148, label %_ZNSt6vectorIiSaIiEED2Ev.exit2149, label %bb.aez

bb.aez:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2147
  call void @_ZdlPv(ptr noundef nonnull %i.djj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2149

_ZNSt6vectorIiSaIiEED2Ev.exit2149:                ; preds = %bb.aez, %_ZNSt6vectorIiSaIiEED2Ev.exit2147, %bb.adl
  %.pn1268.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dek, %bb.adl ], [ %.pn1268.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2147 ], [ %.pn1268.pn.pn.pn.pn.pn.pn, %bb.aez ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #23
  %i.djk = load ptr, ptr %64, align 8, !tbaa !30  ; 2 uses
  %.not.i.i.i2150 = icmp eq ptr %i.djk, null
  br i1 %.not.i.i.i2150, label %_ZNSt6vectorIiSaIiEED2Ev.exit2151, label %bb.afa

bb.afa:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2149
  call void @_ZdlPv(ptr noundef nonnull %i.djk) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2151

_ZNSt6vectorIiSaIiEED2Ev.exit2151:                ; preds = %bb.afa, %_ZNSt6vectorIiSaIiEED2Ev.exit2149, %bb.adk
  %.pn1268.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dej, %bb.adk ], [ %.pn1268.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit2149 ], [ %.pn1268.pn.pn.pn.pn.pn.pn.pn, %bb.afa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br label %bb.asd

bb.afb:                                           ; preds = %bb.acx
  %i.djl = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.81)
  br i1 %i.djl, label %bb.afc, label %bb.afg

bb.afc:                                           ; preds = %bb.afb
  %i.djm = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btf, ptr noundef nonnull @.str.236)
          to label %bb.afd unwind label %bb.afe

bb.afd:                                           ; preds = %bb.afc
  %i.djn = invoke noundef i32 @_ZNK9MXNetNode6attr_iEPKc(ptr noundef nonnull align 8 dereferenceable(208) %i.btf, ptr noundef nonnull @.str.237)
          to label %_ZNK9MXNetNode9AttrProxycviEv.exit2159 unwind label %bb.aff

_ZNK9MXNetNode9AttrProxycviEv.exit2159:           ; preds = %bb.afd
  %i.djo = call i64 @fwrite(ptr nonnull @.str.238, i64 6, i64 1, ptr %i.zk) ; 0 uses
  %i.djp = call i64 @fwrite(ptr nonnull @.str.239, i64 6, i64 1, ptr %i.zk) ; 0 uses
  %i.djq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.175, i32 noundef %i.djm) #23 ; 0 uses
  %i.djr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.169, i32 noundef %i.djn) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afe:                                           ; preds = %bb.afc
  %i.djs = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

bb.aff:                                           ; preds = %bb.afd
  %i.djt = landingpad { ptr, i32 }
          cleanup
  br label %bb.asd

bb.afg:                                           ; preds = %bb.afb
  %i.dju = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.83)
  br i1 %i.dju, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread, label %bb.afh

bb.afh:                                           ; preds = %bb.afg
  %i.djv = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.84)
  br i1 %i.djv, label %bb.afl, label %bb.afi

bb.afi:                                           ; preds = %bb.afh
  %i.djw = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.85)
  br i1 %i.djw, label %bb.afl, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.djx = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.86)
  br i1 %i.djx, label %bb.afl, label %bb.afk

bb.afk:                                           ; preds = %bb.afj
  %i.djy = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.87)
  br i1 %i.djy, label %bb.afl, label %bb.afm

bb.afl:                                           ; preds = %bb.afk, %bb.afj, %bb.afi, %bb.afh
  %i.djz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 0) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afm:                                           ; preds = %bb.afk
  %i.dka = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.88)
  br i1 %i.dka, label %bb.afp, label %bb.afn

bb.afn:                                           ; preds = %bb.afm
  %i.dkb = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.89)
  br i1 %i.dkb, label %bb.afp, label %bb.afo

bb.afo:                                           ; preds = %bb.afn
  %i.dkc = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.90)
  br i1 %i.dkc, label %bb.afp, label %bb.afq

bb.afp:                                           ; preds = %bb.afo, %bb.afn, %bb.afm
  %i.dkd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 3) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afq:                                           ; preds = %bb.afo
  %i.dke = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.91)
  br i1 %i.dke, label %bb.aft, label %bb.afr

bb.afr:                                           ; preds = %bb.afq
  %i.dkf = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.92)
  br i1 %i.dkf, label %bb.aft, label %bb.afs

bb.afs:                                           ; preds = %bb.afr
  %i.dkg = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.93)
  br i1 %i.dkg, label %bb.aft, label %bb.afu

bb.aft:                                           ; preds = %bb.afs, %bb.afr, %bb.afq
  %i.dkh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zk, ptr noundef nonnull @.str.204, i32 noundef 2) #23 ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1856.thread

bb.afu:                                           ; preds = %bb.afs
  %i.dki = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.btg, ptr noundef nonnull @.str.94)
  br i1 %i.dki, label %bb.afy, label %bb.afv
end_hunk_0
