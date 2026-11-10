Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@stbi__jpeg_load:bb.a
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adb, i64 40
  %i.ado = load ptr, ptr %i.adn, align 8
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adb, i64 56 ; 4 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adb, i64 52
  %i.adr = load i32, ptr %i.adq, align 4
  %i.ads = call i32 %i.adm(ptr noundef %i.ado, ptr noundef nonnull %i.adp, i32 noundef %i.adr) #13, !inline_history !58 ; 2 uses
  %i.adt = load ptr, ptr %i.adc, align 8
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adb, i64 208
  %i.adv = load ptr, ptr %i.adu, align 8
  %i.adw = ptrtoint ptr %i.adt to i64
  %i.adx = ptrtoint ptr %i.adv to i64
  %i.ady = sub i64 %i.adw, %i.adx
  %i.adz = trunc i64 %i.ady to i32
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adb, i64 184 ; 2 uses
  %i.aeb = load i32, ptr %i.aea, align 8
  %i.aec = add nsw i32 %i.aeb, %i.adz
  store i32 %i.aec, ptr %i.aea, align 8
  %i.aed = icmp eq i32 %i.ads, 0
  br i1 %i.aed, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store i32 0, ptr %i.adj, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adb, i64 57
  store i8 0, ptr %i.adp, align 8
  br label %stbi__refill_buffer.exit.i.i62.i.i

bb.eu:                                            ; preds = %bb.es
  %i.aef = sext i32 %i.ads to i64
  %i.aeg = getelementptr inbounds i8, ptr %i.adp, i64 %i.aef
  %.pre.i.i61.i.i = load i8, ptr %i.adp, align 8
  br label %stbi__refill_buffer.exit.i.i62.i.i

stbi__refill_buffer.exit.i.i62.i.i:               ; preds = %bb.eu, %bb.et
  %i.aeh = phi i8 [ 0, %bb.et ], [ %.pre.i.i61.i.i, %bb.eu ]
  %.sink.i.i.i63.i.i = phi ptr [ %i.aee, %bb.et ], [ %i.aeg, %bb.eu ]
  store ptr %.sink.i.i.i63.i.i, ptr %i.ade, align 8
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adb, i64 57
  store ptr %i.aei, ptr %i.adc, align 8
  br label %stbi__get8.exit.i64.i.i.preheader

stbi__get8.exit.i64.i.i.preheader:                ; preds = %stbi__refill_buffer.exit.i.i62.i.i, %bb.er, %bb.eq
  %.011.i.i.i.ph = phi i8 [ 0, %bb.er ], [ %i.aeh, %stbi__refill_buffer.exit.i.i62.i.i ], [ %i.adi, %bb.eq ]
  br label %stbi__get8.exit.i64.i.i

stbi__get8.exit.i64.i.i:                          ; preds = %stbi__get8.exit.i64.i.i.preheader, %stbi__get8.exit25.i.i.i
  %.011.i.i.i = phi i8 [ %.0.i24.i.i.i, %stbi__get8.exit25.i.i.i ], [ %.011.i.i.i.ph, %stbi__get8.exit.i64.i.i.preheader ]
  %i.aej = icmp eq i8 %.011.i.i.i, -1
  br i1 %i.aej, label %bb.ev, label %.loopexit.i59.i.i

bb.ev:                                            ; preds = %stbi__get8.exit.i64.i.i
  %i.aek = load ptr, ptr %i.d, align 8            ; 6 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %i.aem = load ptr, ptr %i.ael, align 8
  %.not.i16.i.i.i = icmp eq ptr %i.aem, null
  br i1 %.not.i16.i.i.i, label %stbi__at_eof.exit19.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aek, i64 32
  %i.aeo = load ptr, ptr %i.aen, align 8
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aek, i64 40
  %i.aeq = load ptr, ptr %i.aep, align 8
  %i.aer = call i32 %i.aeo(ptr noundef %i.aeq) #13, !inline_history !57
  %.not6.i17.i.i.i = icmp eq i32 %i.aer, 0
  br i1 %.not6.i17.i.i.i, label %stbi__at_eof.exit19.thread.i.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aek, i64 48
  %i.aet = load i32, ptr %i.aes, align 8
  %i.aeu = icmp eq i32 %i.aet, 0
  br i1 %i.aeu, label %stbi__skip_jpeg_junk_at_end.exit.i.i, label %stbi__at_eof.exit19.i.i.i

stbi__at_eof.exit19.i.i.i:                        ; preds = %bb.ex, %bb.ev
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aek, i64 192
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aek, i64 200
  %i.aey = load ptr, ptr %i.aex, align 8
  %.not.i65.i.i = icmp ult ptr %i.aew, %i.aey
  br i1 %.not.i65.i.i, label %stbi__at_eof.exit19.thread.i.i.i, label %stbi__skip_jpeg_junk_at_end.exit.i.i

stbi__at_eof.exit19.thread.i.i.i:                 ; preds = %stbi__at_eof.exit19.i.i.i, %bb.ew
  %i.aez = load ptr, ptr %i.d, align 8            ; 11 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 192 ; 4 uses
  %i.afb = load ptr, ptr %i.afa, align 8          ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aez, i64 200 ; 2 uses
  %i.afd = load ptr, ptr %i.afc, align 8
  %i.afe = icmp ult ptr %i.afb, %i.afd
  br i1 %i.afe, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %stbi__at_eof.exit19.thread.i.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 1
  store ptr %i.aff, ptr %i.afa, align 8
  %i.afg = load i8, ptr %i.afb, align 1
  br label %stbi__get8.exit25.i.i.i

bb.ez:                                            ; preds = %stbi__at_eof.exit19.thread.i.i.i
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aez, i64 48 ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 8
  %.not.i20.i.i.i = icmp eq i32 %i.afi, 0
  br i1 %.not.i20.i.i.i, label %stbi__get8.exit25.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afk = load ptr, ptr %i.afj, align 8
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aez, i64 40
  %i.afm = load ptr, ptr %i.afl, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aez, i64 56 ; 4 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aez, i64 52
  %i.afp = load i32, ptr %i.afo, align 4
  %i.afq = call i32 %i.afk(ptr noundef %i.afm, ptr noundef nonnull %i.afn, i32 noundef %i.afp) #13, !inline_history !58 ; 2 uses
  %i.afr = load ptr, ptr %i.afa, align 8
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aez, i64 208
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = ptrtoint ptr %i.afr to i64
  %i.afv = ptrtoint ptr %i.aft to i64
  %i.afw = sub i64 %i.afu, %i.afv
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = getelementptr inbounds nuw i8, ptr %i.aez, i64 184 ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 8
  %i.aga = add nsw i32 %i.afz, %i.afx
  store i32 %i.aga, ptr %i.afy, align 8
  %i.agb = icmp eq i32 %i.afq, 0
  br i1 %i.agb, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.afh, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aez, i64 57
  store i8 0, ptr %i.afn, align 8
  br label %stbi__refill_buffer.exit.i22.i.i.i

bb.fc:                                            ; preds = %bb.fa
  %i.agd = sext i32 %i.afq to i64
  %i.age = getelementptr inbounds i8, ptr %i.afn, i64 %i.agd
  %.pre.i21.i.i.i = load i8, ptr %i.afn, align 8
  br label %stbi__refill_buffer.exit.i22.i.i.i

stbi__refill_buffer.exit.i22.i.i.i:               ; preds = %bb.fc, %bb.fb
  %i.agf = phi i8 [ 0, %bb.fb ], [ %.pre.i21.i.i.i, %bb.fc ]
  %.sink.i.i23.i.i.i = phi ptr [ %i.agc, %bb.fb ], [ %i.age, %bb.fc ]
  store ptr %.sink.i.i23.i.i.i, ptr %i.afc, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aez, i64 57
  store ptr %i.agg, ptr %i.afa, align 8
  br label %stbi__get8.exit25.i.i.i

stbi__get8.exit25.i.i.i:                          ; preds = %stbi__refill_buffer.exit.i22.i.i.i, %bb.ez, %bb.ey
  %.0.i24.i.i.i = phi i8 [ %i.afg, %bb.ey ], [ %i.agf, %stbi__refill_buffer.exit.i22.i.i.i ], [ 0, %bb.ez ] ; 3 uses
  %i.agh = add i8 %.0.i24.i.i.i, -1
  %or.cond.i66.i.i = icmp ult i8 %i.agh, -2
  br i1 %or.cond.i66.i.i, label %stbi__skip_jpeg_junk_at_end.exit.i.i, label %stbi__get8.exit.i64.i.i, !llvm.loop !59

stbi__skip_jpeg_junk_at_end.exit.i.i:             ; preds = %stbi__at_eof.exit.i.i.i, %bb.ep, %stbi__get8.exit25.i.i.i, %stbi__at_eof.exit19.i.i.i, %bb.ex
  %.2.i.i.i = phi i8 [ %.0.i24.i.i.i, %stbi__get8.exit25.i.i.i ], [ -1, %stbi__at_eof.exit19.i.i.i ], [ -1, %bb.ex ], [ -1, %bb.ep ], [ -1, %stbi__at_eof.exit.i.i.i ]
  store i8 %.2.i.i.i, ptr %i.ag, align 8
  br label %bb.fd

bb.fd:                                            ; preds = %stbi__skip_jpeg_junk_at_end.exit.i.i, %stbi__parse_entropy_coded_data.exit.thread.i.i
  %i.agi = call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %i.d) ; 2 uses
  %i.agj = and i8 %i.agi, -8
  %or.cond.i.i = icmp eq i8 %i.agj, -48
  br i1 %or.cond.i.i, label %.sink.split.i.i, label %.backedge

bb.fe:                                            ; preds = %bb.e
  %i.agk = load ptr, ptr %i.d, align 8
  %i.agl = call fastcc i32 @stbi__get16be(ptr noundef %i.agk)
  %i.agm = load ptr, ptr %i.d, align 8
  %i.agn = call fastcc i32 @stbi__get16be(ptr noundef %i.agm)
  %.not42.i.i = icmp eq i32 %i.agl, 4
  br i1 %.not42.i.i, label %bb.ff, label %.critedge.sink.split.i.i

bb.ff:                                            ; preds = %bb.fe
  %i.ago = load ptr, ptr %i.d, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 4
  %i.agq = load i32, ptr %i.agp, align 4
  %.not43.i.i = icmp eq i32 %i.agn, %i.agq
  br i1 %.not43.i.i, label %.sink.split.i.i, label %.critedge.sink.split.i.i

bb.fg:                                            ; preds = %bb.e
  %.1.i.i = zext i8 %.1.in.i.i to i32
  %i.agr = call fastcc i32 @stbi__process_marker(ptr noundef nonnull %i.d, i32 noundef %.1.i.i)
  %.not41.i.i = icmp eq i32 %i.agr, 0
  br i1 %.not41.i.i, label %stbi__decode_jpeg_image.exit.loopexit514.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.fg, %bb.ff, %bb.fd
  %i.ags = call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %.sink.split.i.i, %bb.fd
  %.1.in.i.i.be = phi i8 [ %i.agi, %bb.fd ], [ %i.ags, %.sink.split.i.i ]
  br label %bb.e, !llvm.loop !60

bb.fh:                                            ; preds = %bb.e
  %i.agt = load i32, ptr %i.y, align 8
  %.not40.i.i = icmp eq i32 %i.agt, 0
  %.pre.pre584.i = load ptr, ptr %i.d, align 8    ; 4 uses
  br i1 %.not40.i.i, label %stbi__decode_jpeg_image.exit.i, label %.preheader35.i.i.i

.preheader35.i.i.i:                               ; preds = %bb.fh
  %i.agu = getelementptr inbounds nuw i8, ptr %.pre.pre584.i, i64 8
  %i.agv = load i32, ptr %i.agu, align 8
  %i.agw = icmp sgt i32 %i.agv, 0
  br i1 %i.agw, label %.lr.ph.i69.i.i, label %stbi__decode_jpeg_image.exit.i

.lr.ph.i69.i.i:                                   ; preds = %.preheader35.i.i.i, %._crit_edge38.split.i.i.i
  %i.agx = phi ptr [ %i.ake, %._crit_edge38.split.i.i.i ], [ %.pre.pre584.i, %.preheader35.i.i.i ] ; 2 uses
  %indvars.iv42.i.i.i = phi i64 [ %indvars.iv.next43.i.i.i, %._crit_edge38.split.i.i.i ], [ 0, %.preheader35.i.i.i ] ; 2 uses
  %i.agy = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv42.i.i.i ; 7 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 28
  %i.aha = load i32, ptr %i.agz, align 4
  %i.ahb = add nsw i32 %i.aha, 7
  %i.ahc = ashr i32 %i.ahb, 3                     ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agy, i64 32
  %i.ahe = load i32, ptr %i.ahd, align 8
  %i.ahf = add nsw i32 %i.ahe, 7
  %i.ahg = ashr i32 %i.ahf, 3                     ; 2 uses
  %i.ahh = icmp sgt i32 %i.ahg, 0
  br i1 %i.ahh, label %.preheader.lr.ph.i70.i.i, label %._crit_edge38.split.i.i.i

.preheader.lr.ph.i70.i.i:                         ; preds = %.lr.ph.i69.i.i
  %i.ahi = icmp sgt i32 %i.ahc, 0
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agy, i64 80
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agy, i64 88
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agy, i64 12
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agy, i64 48
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.agy, i64 36
  br i1 %i.ahi, label %.preheader.preheader.i71.i.i, label %._crit_edge38.split.i.i.i

.preheader.preheader.i71.i.i:                     ; preds = %.preheader.lr.ph.i70.i.i
  %wide.trip.count.i72.i.i = zext nneg i32 %i.ahc to i64
  br label %.preheader.i73.i.i

.preheader.i73.i.i:                               ; preds = %._crit_edge.i79.i.i, %.preheader.preheader.i71.i.i
  %.03437.i.i.i = phi i32 [ %i.akd, %._crit_edge.i79.i.i ], [ 0, %.preheader.preheader.i71.i.i ] ; 3 uses
  %i.aho = shl nuw nsw i32 %.03437.i.i.i, 3
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %stbi__jpeg_dequantize.exit.i.i.i, %.preheader.i73.i.i
  %indvars.iv.i74.i.i = phi i64 [ 0, %.preheader.i73.i.i ], [ %indvars.iv.next.i77.i.i, %stbi__jpeg_dequantize.exit.i.i.i ] ; 3 uses
  %i.ahp = load ptr, ptr %i.ahj, align 8          ; 2 uses
  %i.ahq = load i32, ptr %i.ahk, align 8
  %i.ahr = mul nsw i32 %i.ahq, %.03437.i.i.i
  %i.ahs = trunc nuw nsw i64 %indvars.iv.i74.i.i to i32
  %i.aht = add nsw i32 %i.ahr, %i.ahs
  %i.ahu = shl nsw i32 %i.aht, 6
  %i.ahv = sext i32 %i.ahu to i64                 ; 2 uses
  %i.ahw = getelementptr inbounds [2 x i8], ptr %i.ahp, i64 %i.ahv ; 15 uses
  %i.ahx = load i32, ptr %i.ahl, align 4
  %i.ahy = sext i32 %i.ahx to i64                 ; 2 uses
  %i.ahz = getelementptr inbounds [128 x i8], ptr %i.ao, i64 %i.ahy ; 13 uses
  %i.aia = shl nsw i64 %i.ahv, 1
  %i.aib = getelementptr i8, ptr %i.ahp, i64 %i.aia
  %i.aic = getelementptr i8, ptr %i.aib, i64 128
  %i.aid = shl nsw i64 %i.ahy, 7
  %7 = getelementptr i8, ptr %i.d, i64 %i.aid
  %i.aie = getelementptr i8, ptr %7, i64 13576
  %bound0 = icmp ult ptr %i.ahw, %i.aie
  %bound1 = icmp ult ptr %i.ahz, %i.aic
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %wide.load = load <8 x i16>, ptr %i.ahz, align 2, !alias.scope !87
  %wide.load360 = load <8 x i16>, ptr %i.aif, align 2, !alias.scope !87
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16 ; 2 uses
  %wide.load361 = load <8 x i16>, ptr %i.ahw, align 2, !alias.scope !88, !noalias !87
  %wide.load362 = load <8 x i16>, ptr %i.aig, align 2, !alias.scope !88, !noalias !87
  %i.aih = mul <8 x i16> %wide.load361, %wide.load
  %i.aii = mul <8 x i16> %wide.load362, %wide.load360
  store <8 x i16> %i.aih, ptr %i.ahw, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aii, ptr %i.aig, align 2, !alias.scope !88, !noalias !87
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32
  %i.aik = getelementptr inbounds nuw i8, ptr %i.ahz, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.aij, align 2, !alias.scope !87
  %wide.load360.1 = load <8 x i16>, ptr %i.aik, align 2, !alias.scope !87
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahw, i64 32 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahw, i64 48 ; 2 uses
  %wide.load361.1 = load <8 x i16>, ptr %i.ail, align 2, !alias.scope !88, !noalias !87
  %wide.load362.1 = load <8 x i16>, ptr %i.aim, align 2, !alias.scope !88, !noalias !87
  %i.ain = mul <8 x i16> %wide.load361.1, %wide.load.1
  %i.aio = mul <8 x i16> %wide.load362.1, %wide.load360.1
  store <8 x i16> %i.ain, ptr %i.ail, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aio, ptr %i.aim, align 2, !alias.scope !88, !noalias !87
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ahz, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.aip, align 2, !alias.scope !87
  %wide.load360.2 = load <8 x i16>, ptr %i.aiq, align 2, !alias.scope !87
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahw, i64 64 ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahw, i64 80 ; 2 uses
  %wide.load361.2 = load <8 x i16>, ptr %i.air, align 2, !alias.scope !88, !noalias !87
  %wide.load362.2 = load <8 x i16>, ptr %i.ais, align 2, !alias.scope !88, !noalias !87
  %i.ait = mul <8 x i16> %wide.load361.2, %wide.load.2
  %i.aiu = mul <8 x i16> %wide.load362.2, %wide.load360.2
  store <8 x i16> %i.ait, ptr %i.air, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aiu, ptr %i.ais, align 2, !alias.scope !88, !noalias !87
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahz, i64 96
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.ahz, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.aiv, align 2, !alias.scope !87
  %wide.load360.3 = load <8 x i16>, ptr %i.aiw, align 2, !alias.scope !87
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahw, i64 96 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahw, i64 112 ; 2 uses
  %wide.load361.3 = load <8 x i16>, ptr %i.aix, align 2, !alias.scope !88, !noalias !87
  %wide.load362.3 = load <8 x i16>, ptr %i.aiy, align 2, !alias.scope !88, !noalias !87
  %i.aiz = mul <8 x i16> %wide.load361.3, %wide.load.3
  %i.aja = mul <8 x i16> %wide.load362.3, %wide.load360.3
  store <8 x i16> %i.aiz, ptr %i.aix, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aja, ptr %i.aiy, align 2, !alias.scope !88, !noalias !87
  br label %stbi__jpeg_dequantize.exit.i.i.i

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i.i75.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ajb = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.i.i75.i.i
  %i.ajc = load i16, ptr %i.ajb, align 2
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.i.i75.i.i ; 2 uses
  %i.aje = load i16, ptr %i.ajd, align 2
  %i.ajf = mul i16 %i.aje, %i.ajc
  store i16 %i.ajf, ptr %i.ajd, align 2
  %indvars.iv.next.i.i76.i.i = or disjoint i64 %indvars.iv.i.i75.i.i, 1 ; 2 uses
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.next.i.i76.i.i
  %i.ajh = load i16, ptr %i.ajg, align 2
  %i.aji = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.next.i.i76.i.i ; 2 uses
  %i.ajj = load i16, ptr %i.aji, align 2
  %i.ajk = mul i16 %i.ajj, %i.ajh
  store i16 %i.ajk, ptr %i.aji, align 2
  %indvars.iv.next.i.i76.i.i.1 = or disjoint i64 %indvars.iv.i.i75.i.i, 2 ; 2 uses
  %i.ajl = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.next.i.i76.i.i.1
  %i.ajm = load i16, ptr %i.ajl, align 2
  %i.ajn = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.next.i.i76.i.i.1 ; 2 uses
  %i.ajo = load i16, ptr %i.ajn, align 2
  %i.ajp = mul i16 %i.ajo, %i.ajm
  store i16 %i.ajp, ptr %i.ajn, align 2
  %indvars.iv.next.i.i76.i.i.2 = or disjoint i64 %indvars.iv.i.i75.i.i, 3 ; 2 uses
  %i.ajq = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.next.i.i76.i.i.2
  %i.ajr = load i16, ptr %i.ajq, align 2
  %i.ajs = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.next.i.i76.i.i.2 ; 2 uses
  %i.ajt = load i16, ptr %i.ajs, align 2
  %i.aju = mul i16 %i.ajt, %i.ajr
  store i16 %i.aju, ptr %i.ajs, align 2
  %indvars.iv.next.i.i76.i.i.3 = add nuw nsw i64 %indvars.iv.i.i75.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i76.i.i.3, 64
  br i1 %exitcond.not.i.i.i.i.3, label %stbi__jpeg_dequantize.exit.i.i.i, label %scalar.ph, !llvm.loop !64

stbi__jpeg_dequantize.exit.i.i.i:                 ; preds = %scalar.ph, %vector.body
  %i.ajv = load ptr, ptr %i.g, align 8
  %i.ajw = load ptr, ptr %i.ahm, align 8
  %i.ajx = load i32, ptr %i.ahn, align 4          ; 2 uses
  %i.ajy = mul i32 %i.aho, %i.ajx
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = getelementptr inbounds i8, ptr %i.ajw, i64 %i.ajz
  %i.akb = shl nuw nsw i64 %indvars.iv.i74.i.i, 3
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aka, i64 %i.akb
  call void %i.ajv(ptr noundef %i.akc, i32 noundef %i.ajx, ptr noundef nonnull %i.ahw) #13, !inline_history !65
  %indvars.iv.next.i77.i.i = add nuw nsw i64 %indvars.iv.i74.i.i, 1 ; 2 uses
  %exitcond.not.i78.i.i = icmp eq i64 %indvars.iv.next.i77.i.i, %wide.trip.count.i72.i.i
  br i1 %exitcond.not.i78.i.i, label %._crit_edge.i79.i.i, label %vector.memcheck, !llvm.loop !66

._crit_edge.i79.i.i:                              ; preds = %stbi__jpeg_dequantize.exit.i.i.i
  %i.akd = add nuw nsw i32 %.03437.i.i.i, 1       ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i32 %i.akd, %i.ahg
  br i1 %exitcond41.not.i.i.i, label %._crit_edge38.split.loopexit.i.i.i, label %.preheader.i73.i.i, !llvm.loop !67

._crit_edge38.split.loopexit.i.i.i:               ; preds = %._crit_edge.i79.i.i
  %.pre.i80.i.i = load ptr, ptr %i.d, align 8
  br label %._crit_edge38.split.i.i.i

._crit_edge38.split.i.i.i:                        ; preds = %._crit_edge38.split.loopexit.i.i.i, %.preheader.lr.ph.i70.i.i, %.lr.ph.i69.i.i
  %i.ake = phi ptr [ %.pre.i80.i.i, %._crit_edge38.split.loopexit.i.i.i ], [ %i.agx, %.preheader.lr.ph.i70.i.i ], [ %i.agx, %.lr.ph.i69.i.i ] ; 3 uses
  %indvars.iv.next43.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i, 1 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.akg = load i32, ptr %i.akf, align 8
  %i.akh = sext i32 %i.akg to i64
  %i.aki = icmp slt i64 %indvars.iv.next43.i.i.i, %i.akh
  br i1 %i.aki, label %.lr.ph.i69.i.i, label %stbi__decode_jpeg_image.exit.i, !llvm.loop !68

.critedge.sink.split.i.i:                         ; preds = %bb.ff, %bb.fe, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.m, %bb.l, %stbi__get8.exit.i.i.i, %bb.z, %bb.y, %stbi__jpeg_huff_decode.exit181.i.i.i.i, %bb.dk, %bb.dj, %bb.dd, %bb.cg, %bb.cf, %bb.bz, %bb.bu, %bb.di, %bb.ce, %stbi__get8.exit.thread.i.i.i
  %.str.15.sink.i.i = phi ptr [ @.str.15, %bb.ce ], [ @.str.20, %bb.bu ], [ @.str.15, %bb.di ], [ @.str.15, %stbi__jpeg_huff_decode.exit181.i.i.i.i ], [ @.str.15, %bb.z ], [ @.str.15, %stbi__get8.exit.thread.i.i.i ], [ @.str.15, %bb.cg ], [ @.str.15, %bb.cf ], [ @.str.15, %bb.bz ], [ @.str.15, %bb.dd ], [ @.str.15, %bb.dj ], [ @.str.15, %bb.dk ], [ @.str.15, %bb.y ], [ @.str.15, %stbi__get8.exit.i.i.i ], [ @.str.15, %bb.l ], [ @.str.15, %bb.m ], [ @.str.15, %bb.ap ], [ @.str.15, %bb.aq ], [ @.str.15, %bb.ar ], [ @.str.15, %bb.as ], [ @.str.15, %bb.fe ], [ @.str.15, %bb.ff ]
  %i.akj = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.15.sink.i.i) #13 ; 0 uses
  br label %.loopexit401.i

.loopexit401.i:                                   ; preds = %stbi__parse_entropy_coded_data.exit.i.i, %._crit_edge.i.i.i, %bb.x, %bb.bn, %.lr.ph.i51.i.i, %.critedge.sink.split.i.i, %bb.c
  %i.akk = load ptr, ptr %i.d, align 8
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akm = load i32, ptr %i.akl, align 8          ; 2 uses
  %i.akn = icmp sgt i32 %i.akm, 0
  br i1 %i.akn, label %.lr.ph.i.i307.i, label %load_jpeg_image.exit

.lr.ph.i.i307.i:                                  ; preds = %.loopexit401.i
  %wide.trip.count.i.i308.i = zext nneg i32 %i.akm to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fo, %.lr.ph.i.i307.i
  %indvars.iv.i.i309.i = phi i64 [ 0, %.lr.ph.i.i307.i ], [ %indvars.iv.next.i.i311.i, %bb.fo ] ; 2 uses
  %i.ako = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i309.i ; 5 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 56
  %i.akq = load ptr, ptr %i.akp, align 8          ; 2 uses
  %.not.i.i310.i = icmp eq ptr %i.akq, null
  br i1 %.not.i.i310.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @SDL_free_REAL(ptr noundef nonnull %i.akq) #13
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ako, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akr, i8 0, i64 16, i1 false)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ako, i64 64 ; 2 uses
  %i.akt = load ptr, ptr %i.aks, align 8          ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.akt, null
  br i1 %.not28.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @SDL_free_REAL(ptr noundef nonnull %i.akt) #13
  store ptr null, ptr %i.aks, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ako, i64 80
  store ptr null, ptr %i.aku, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.akv = getelementptr inbounds nuw i8, ptr %i.ako, i64 72 ; 2 uses
  %i.akw = load ptr, ptr %i.akv, align 8          ; 2 uses
  %.not29.i.i.i = icmp eq ptr %i.akw, null
  br i1 %.not29.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @SDL_free_REAL(ptr noundef nonnull %i.akw) #13
  store ptr null, ptr %i.akv, align 8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %indvars.iv.next.i.i311.i = add nuw nsw i64 %indvars.iv.i.i309.i, 1 ; 2 uses
  %exitcond.not.i.i312.i = icmp eq i64 %indvars.iv.next.i.i311.i, %wide.trip.count.i.i308.i
  br i1 %exitcond.not.i.i312.i, label %load_jpeg_image.exit, label %bb.fi, !llvm.loop !2

stbi__decode_jpeg_image.exit.loopexit514.i:       ; preds = %bb.fg
  %.pre.pre.i = load ptr, ptr %i.d, align 8
  br label %stbi__decode_jpeg_image.exit.i

stbi__decode_jpeg_image.exit.i:                   ; preds = %._crit_edge38.split.i.i.i, %stbi__decode_jpeg_image.exit.loopexit514.i, %.preheader35.i.i.i, %bb.fh
  %.pre.i = phi ptr [ %.pre.pre.i, %stbi__decode_jpeg_image.exit.loopexit514.i ], [ %.pre.pre584.i, %bb.fh ], [ %.pre.pre584.i, %.preheader35.i.i.i ], [ %i.ake, %._crit_edge38.split.i.i.i ] ; 6 uses
  %.not293.i = icmp eq i32 %4, 0
  %i.akx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.aky = load i32, ptr %i.akx, align 8          ; 9 uses
  %.inv.i = icmp slt i32 %i.aky, 3
  %i.akz = select i1 %.inv.i, i32 1, i32 3
  %i.ala = select i1 %.not293.i, i32 %i.akz, i32 %4 ; 8 uses
  %i.alb = icmp ne i32 %i.aky, 3                  ; 2 uses
  br i1 %i.alb, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %stbi__decode_jpeg_image.exit.i
  %i.alc = getelementptr inbounds nuw i8, ptr %i.d, i64 18512
  %i.ald = load i32, ptr %i.alc, align 8
  %i.ale = icmp eq i32 %i.ald, 3
  br i1 %i.ale, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
end_hunk_0
begin_hunk_1_@stbi__zhuffman_decode:bb.a
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1124
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.ar, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 287
  br i1 %i.ax, label %stbi__zhuffman_decode_slowpath.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  %.not.i21 = icmp eq i64 %indvars.iv.i, %i.bc
  br i1 %.not.i21, label %bb.p, label %stbi__zhuffman_decode_slowpath.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = lshr i32 %i.u, %i.aj
  store i32 %i.bd, ptr %i.t, align 8
  %i.be = sub nsw i32 %i.s, %i.aj
  store i32 %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.az
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  br label %stbi__zhuffman_decode_slowpath.exit

stbi__zhuffman_decode_slowpath.exit:              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.c, %bb.j
  %.0 = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.j ], [ %i.bi, %bb.p ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 20 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #13 ; 7 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.aw = sext i32 %spec.select to i64            ; 40 uses
  %i.ax = icmp slt i32 %spec.select, %i.av        ; 4 uses
  %i.ay = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.az = icmp sgt i32 %i.av, 0
  %i.ba = sext i32 %i.av to i64                   ; 13 uses
  %i.bb = icmp eq i32 %6, 8
  %i.bc = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bd = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 4 uses
  %i.be = icmp sgt i32 %4, 0                      ; 4 uses
  %i.bf = zext i32 %.030.i305 to i64              ; 19 uses
  %i.bg = zext i32 %i.z to i64
  %i.bh = icmp eq i32 %7, 0
  %i.bi = sext i32 %6 to i64
  %i.bj = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bi
  %wide.trip.count460 = zext i32 %5 to i64
  %i.bk = zext nneg i32 %i.ah to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.av to i64     ; 8 uses
  %i.bl = shl nuw nsw i64 %i.bf, 1
  %i.bm = add i32 %i.z, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = add nuw nsw i64 %i.bo, 2                ; 2 uses
  %8 = sub nsw i64 %i.ba, %i.aw                   ; 28 uses
  %9 = add i32 %i.z, -1                           ; 4 uses
  %i.bq = add nuw nsw i64 %i.bf, 1
  %min.iters.check747 = icmp ult i64 %8, 8
  %i.br = add nsw i64 %i.aw, -1
  %diff.check749 = icmp ult i64 %i.br, 31
  %or.cond782.a = select i1 %min.iters.check747, i1 true, i1 %diff.check749
  %min.iters.check751 = icmp ult i64 %8, 32
  %i.bs = and i64 %8, 24
  %n.vec753 = and i64 %8, -32                     ; 4 uses
  %i.bt = add nsw i64 %n.vec753, %i.aw
  %cmp.n762 = icmp eq i64 %8, %n.vec753
  %min.epilog.iters.check766 = icmp eq i64 %i.bs, 0
  %n.vec769 = and i64 %8, -8                      ; 3 uses
  %i.bu = add nsw i64 %n.vec769, %i.aw
  %cmp.n776 = icmp eq i64 %8, %n.vec769
  %i.bv = add nsw i64 %i.ba, -1
  %min.iters.check713 = icmp ult i32 %spec.select, 4
  %min.iters.check717 = icmp ult i32 %spec.select, 32
  %i.bw = and i64 %wide.trip.count424, 28
  %n.vec719 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n728 = icmp eq i64 %n.vec719, %wide.trip.count424
  %min.epilog.iters.check732 = icmp eq i64 %i.bw, 0
  %n.vec735 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n742 = icmp eq i64 %n.vec735, %wide.trip.count424
  %xtraiter797 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  %min.iters.check673 = icmp ult i64 %8, 4
  %i.bx = add nsw i64 %i.aw, -1
  %diff.check675 = icmp ult i64 %i.bx, 15
  %min.iters.check681 = icmp ult i64 %8, 16
  %i.by = and i64 %8, 12
  %n.vec683 = and i64 %8, -16                     ; 4 uses
  %i.bz = add nsw i64 %n.vec683, %i.aw
  %cmp.n692 = icmp eq i64 %8, %n.vec683
  %min.epilog.iters.check696 = icmp eq i64 %i.by, 0
  %n.vec699 = and i64 %8, -4                      ; 3 uses
  %i.ca = add nsw i64 %n.vec699, %i.aw
  %cmp.n708 = icmp eq i64 %8, %n.vec699
  %min.iters.check635 = icmp ult i32 %spec.select, 4
  %min.iters.check639 = icmp ult i32 %spec.select, 32
  %i.cb = and i64 %wide.trip.count424, 28
  %n.vec641 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n650 = icmp eq i64 %n.vec641, %wide.trip.count424
  %min.epilog.iters.check654 = icmp eq i64 %i.cb, 0
  %n.vec657 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n664 = icmp eq i64 %n.vec657, %wide.trip.count424
  %xtraiter799 = and i64 %wide.trip.count424, 1
  %lcmp.mod800.not = icmp eq i64 %xtraiter799, 0
  %i.cc = add nsw i64 %wide.trip.count424, -1
  %min.iters.check600 = icmp ult i64 %8, 4
  %i.cd = add nsw i64 %i.aw, -1
  %diff.check603 = icmp ult i64 %i.cd, 15
  %min.iters.check605 = icmp ult i64 %8, 16
  %i.ce = and i64 %8, 12
  %n.vec607 = and i64 %8, -16                     ; 4 uses
  %i.cf = add nsw i64 %n.vec607, %i.aw
  %cmp.n615 = icmp eq i64 %8, %n.vec607
  %min.epilog.iters.check619 = icmp eq i64 %i.ce, 0
  %n.vec622 = and i64 %8, -4                      ; 3 uses
  %i.cg = add nsw i64 %n.vec622, %i.aw
  %cmp.n630 = icmp eq i64 %8, %n.vec622
  %i.ch = add nsw i64 %i.ba, -1
  %min.iters.check565 = icmp ult i32 %i.av, 4
  %min.iters.check569 = icmp ult i32 %i.av, 32
  %i.ci = and i64 %wide.trip.count444, 28
  %n.vec571 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n580 = icmp eq i64 %n.vec571, %wide.trip.count444
  %min.epilog.iters.check584 = icmp eq i64 %i.ci, 0
  %n.vec587 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n594 = icmp eq i64 %n.vec587, %wide.trip.count444
  %xtraiter805 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod806.not = icmp eq i64 %xtraiter805, 0
  %min.iters.check541 = icmp ult i64 %8, 8
  %i.cj = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.cj, 31
  %or.cond781.a = select i1 %min.iters.check541, i1 true, i1 %diff.check
  %min.iters.check543 = icmp ult i64 %8, 32
  %i.ck = and i64 %8, 24
  %n.vec545 = and i64 %8, -32                     ; 4 uses
  %i.cl = add nsw i64 %n.vec545, %i.aw
  %cmp.n554 = icmp eq i64 %8, %n.vec545
  %min.epilog.iters.check = icmp eq i64 %i.ck, 0
  %n.vec555 = and i64 %8, -8                      ; 3 uses
  %i.cm = add nsw i64 %n.vec555, %i.aw
  %cmp.n560 = icmp eq i64 %8, %n.vec555
  %i.cn = add nsw i64 %i.ba, -1
  %xtraiter811 = and i32 %4, 1
  %i.co = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod812.not = icmp eq i32 %xtraiter811, 0
  %lcmp.mod813 = trunc i32 %4 to i1
  %i.cp = zext i32 %i.z to i64                    ; 2 uses
  %min.iters.check516 = icmp ult i32 %i.z, 16
  %10 = getelementptr i8, ptr %i.as, i64 %i.bp
  %n.vec522 = and i64 %i.cp, 4294967288           ; 4 uses
  %i.cq = shl nuw nsw i64 %n.vec522, 1            ; 2 uses
  %i.cr = trunc nuw i64 %n.vec522 to i32
  %cmp.n535 = icmp eq i64 %n.vec522, %i.cp
  %i.cs = and i64 %i.bf, 1
  %lcmp.mod818.not.not = icmp eq i64 %i.cs, 0
  %i.ct = shl nuw nsw i64 %i.bf, 2
  %i.cu = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cv = icmp eq i32 %.030.i305, 0
  %i.cw = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %11 = getelementptr i8, ptr %i.as, i64 %i.bf
  %12 = getelementptr i8, ptr %11, i64 1
  %n.vec = and i64 %i.cw, 2147483640              ; 3 uses
  %i.cx = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cw
  %xtraiter823 = and i32 %i.z, 1
  %i.cy = icmp eq i32 %9, 0
  %unroll_iter826 = and i32 %i.z, -2
  %lcmp.mod824.not = icmp eq i32 %xtraiter823, 0
  %lcmp.mod825 = trunc i32 %i.z to i1
  %xtraiter828 = and i32 %i.z, 1
  %i.cz = icmp eq i32 %9, 0
  %unroll_iter831 = and i32 %i.z, -2
  %lcmp.mod829.not = icmp eq i32 %xtraiter828, 0
  %lcmp.mod830 = trunc i32 %i.z to i1
  %xtraiter833 = and i32 %i.z, 1
  %i.da = icmp eq i32 %9, 0
  %unroll_iter836 = and i32 %i.z, -2
  %lcmp.mod834.not = icmp eq i32 %xtraiter833, 0
  %lcmp.mod835 = trunc i32 %i.z to i1
  %i.db = and i64 %i.bf, 1
  %lcmp.mod839.not.not = icmp eq i64 %i.db, 0
  %i.dc = shl nuw nsw i64 %i.bf, 2
  %i.dd = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.de = icmp eq i32 %.030.i305, 0
  %xtraiter841 = and i64 %i.bq, 3                 ; 2 uses
  %lcmp.mod842.not = icmp eq i64 %xtraiter841, 0
  %i.df = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qp, %.loopexit ] ; 2 uses
  %i.dg = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.dh = trunc i64 %indvars.iv457 to i1
  %i.di = select i1 %i.dh, i64 %i.bk, i64 0       ; 9 uses
  %i.dj = getelementptr i8, ptr %i.as, i64 %i.di  ; 90 uses
  %i.dk = and i32 %i.dg, 1
  %i.dl = xor i32 %i.dk, 1
  %i.dm = mul nuw nsw i32 %i.dl, %i.ah
  %i.dn = zext nneg i32 %i.dm to i64              ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dn ; 30 uses
  %i.dp = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.dq = mul i32 %i.e, %i.dg
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dp, i64 %i.dr  ; 41 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.du = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dv = icmp ugt i8 %i.du, 4
  br i1 %i.dv, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dx = zext nneg i8 %i.du to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dz, %bb.o ], [ %i.du, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check729, label %.preheader354

iter.check729:                                    ; preds = %.preheader356
  %i.ea = sub nsw i64 %i.dn, %i.di
  %diff.check715 = icmp ugt i64 %i.ea, -32
  %or.cond778 = select i1 %min.iters.check713, i1 true, i1 %diff.check715
  br i1 %or.cond778, label %.lr.ph360.preheader, label %vector.main.loop.iter.check716

vector.main.loop.iter.check716:                   ; preds = %iter.check729
  br i1 %min.iters.check717, label %vec.epilog.ph733, label %vector.body720

vector.body720:                                   ; preds = %vector.main.loop.iter.check716, %vector.body720
  %index721 = phi i64 [ %index.next726, %vector.body720 ], [ 0, %vector.main.loop.iter.check716 ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index721 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load722 = load <16 x i8>, ptr %i.eb, align 1
  %wide.load723 = load <16 x i8>, ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 %index721 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load724 = load <16 x i8>, ptr %i.ed, align 1
  %wide.load725 = load <16 x i8>, ptr %i.ee, align 1
  %i.ef = add <16 x i8> %wide.load724, %wide.load722
  %i.eg = add <16 x i8> %wide.load725, %wide.load723
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index721 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <16 x i8> %i.ef, ptr %i.eh, align 1
  store <16 x i8> %i.eg, ptr %i.ei, align 1
  %index.next726 = add nuw i64 %index721, 32      ; 2 uses
  %i.ej = icmp eq i64 %index.next726, %n.vec719
  br i1 %i.ej, label %middle.block727, label %vector.body720, !llvm.loop !230

middle.block727:                                  ; preds = %vector.body720
  br i1 %cmp.n728, label %.preheader354, label %vec.epilog.iter.check730

vec.epilog.iter.check730:                         ; preds = %middle.block727
  br i1 %min.epilog.iters.check732, label %.lr.ph360.preheader, label %vec.epilog.ph733, !prof !17

vec.epilog.ph733:                                 ; preds = %vector.main.loop.iter.check716, %vec.epilog.iter.check730
  %vec.epilog.resume.val734 = phi i64 [ %n.vec719, %vec.epilog.iter.check730 ], [ 0, %vector.main.loop.iter.check716 ]
  br label %vec.epilog.vector.body736

vec.epilog.vector.body736:                        ; preds = %vec.epilog.vector.body736, %vec.epilog.ph733
  %index737 = phi i64 [ %vec.epilog.resume.val734, %vec.epilog.ph733 ], [ %index.next740, %vec.epilog.vector.body736 ] ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index737
  %wide.load738 = load <4 x i8>, ptr %i.ek, align 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %index737
  %wide.load739 = load <4 x i8>, ptr %i.el, align 1
  %i.em = add <4 x i8> %wide.load739, %wide.load738
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index737
  store <4 x i8> %i.em, ptr %i.en, align 1
  %index.next740 = add nuw i64 %index737, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next740, %n.vec735
  br i1 %i.eo, label %vec.epilog.middle.block741, label %vec.epilog.vector.body736, !llvm.loop !231

vec.epilog.middle.block741:                       ; preds = %vec.epilog.vector.body736
  br i1 %cmp.n742, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check729, %vec.epilog.iter.check730, %vec.epilog.middle.block741
  %indvars.iv421.ph = phi i64 [ 0, %iter.check729 ], [ %n.vec719, %vec.epilog.iter.check730 ], [ %n.vec735, %vec.epilog.middle.block741 ] ; 3 uses
  br i1 %lcmp.mod798.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv421.prol
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421.prol
  %i.es = load i8, ptr %i.er, align 1
  %.narrow286.prol = add i8 %i.es, %i.eq
  %i.et = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.et, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter797
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !232

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.eu = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check651, label %.preheader351

iter.check651:                                    ; preds = %.preheader353
  %i.ew = sub nsw i64 %i.dn, %i.di
  %diff.check637 = icmp ugt i64 %i.ew, -32
  %or.cond779 = select i1 %min.iters.check635, i1 true, i1 %diff.check637
  br i1 %or.cond779, label %.lr.ph364.preheader, label %vector.main.loop.iter.check638

vector.main.loop.iter.check638:                   ; preds = %iter.check651
  br i1 %min.iters.check639, label %vec.epilog.ph655, label %vector.body642

vector.body642:                                   ; preds = %vector.main.loop.iter.check638, %vector.body642
  %index643 = phi i64 [ %index.next648, %vector.body642 ], [ 0, %vector.main.loop.iter.check638 ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index643 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %wide.load644 = load <16 x i8>, ptr %i.ex, align 1
  %wide.load645 = load <16 x i8>, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 %index643 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load646 = load <16 x i8>, ptr %i.ez, align 1
  %wide.load647 = load <16 x i8>, ptr %i.fa, align 1
  %i.fb = lshr <16 x i8> %wide.load646, splat (i8 1)
  %i.fc = lshr <16 x i8> %wide.load647, splat (i8 1)
  %i.fd = add <16 x i8> %i.fb, %wide.load644
  %i.fe = add <16 x i8> %i.fc, %wide.load645
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index643 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <16 x i8> %i.fd, ptr %i.ff, align 1
  store <16 x i8> %i.fe, ptr %i.fg, align 1
  %index.next648 = add nuw i64 %index643, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next648, %n.vec641
  br i1 %i.fh, label %middle.block649, label %vector.body642, !llvm.loop !233

middle.block649:                                  ; preds = %vector.body642
  br i1 %cmp.n650, label %.preheader351, label %vec.epilog.iter.check652

vec.epilog.iter.check652:                         ; preds = %middle.block649
  br i1 %min.epilog.iters.check654, label %.lr.ph364.preheader, label %vec.epilog.ph655, !prof !17

vec.epilog.ph655:                                 ; preds = %vector.main.loop.iter.check638, %vec.epilog.iter.check652
  %vec.epilog.resume.val656 = phi i64 [ %n.vec641, %vec.epilog.iter.check652 ], [ 0, %vector.main.loop.iter.check638 ]
  br label %vec.epilog.vector.body658

vec.epilog.vector.body658:                        ; preds = %vec.epilog.vector.body658, %vec.epilog.ph655
  %index659 = phi i64 [ %vec.epilog.resume.val656, %vec.epilog.ph655 ], [ %index.next662, %vec.epilog.vector.body658 ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %index659
  %wide.load660 = load <4 x i8>, ptr %i.fi, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 %index659
  %wide.load661 = load <4 x i8>, ptr %i.fj, align 1
  %i.fk = lshr <4 x i8> %wide.load661, splat (i8 1)
  %i.fl = add <4 x i8> %i.fk, %wide.load660
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index659
  store <4 x i8> %i.fl, ptr %i.fm, align 1
  %index.next662 = add nuw i64 %index659, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next662, %n.vec657
  br i1 %i.fn, label %vec.epilog.middle.block663, label %vec.epilog.vector.body658, !llvm.loop !234

vec.epilog.middle.block663:                       ; preds = %vec.epilog.vector.body658
  br i1 %cmp.n664, label %.preheader351, label %.lr.ph364.preheader

end_hunk_1
begin_hunk_2_@stbi__create_png_image_raw:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod825)
  %i.sh = and i32 %.1266383.epil.init, 3
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.aa, label %.loopexit335.loopexit785.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sj = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit785.epilog-lcssa

.loopexit335.loopexit785.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sj, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sk = lshr i8 %.3.epil, 6
  %i.sl = mul i8 %i.sk, %i.qr
  store i8 %i.sl, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit785.epilog-lcssa, %.loopexit335.loopexit785.unr-lcssa, %.loopexit335.loopexit784.epilog-lcssa, %.loopexit335.loopexit784.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bc, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.bd, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod839.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dc ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 3
  store i8 -1, ptr %i.sn, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dd ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  %i.sq = load i8, ptr %i.sp, align 1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 2
  store i8 %i.sq, ptr %i.sr, align 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 1
  %i.st = load i8, ptr %i.ss, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.sm, i64 1
  store i8 %i.st, ptr %i.su, align 1
  %i.sv = load i8, ptr %i.so, align 1
  store i8 %i.sv, ptr %i.sm, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bf, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.de, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod842.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bf, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter843 = phi i64 [ %prol.iter843.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.sw = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.sw ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  store i8 -1, ptr %i.sy, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv35.i.prol
  %i.ta = load i8, ptr %i.sz, align 1
  store i8 %i.ta, ptr %i.sx, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter843.next = add i64 %prol.iter843, 1   ; 2 uses
  %prol.iter843.cmp.not = icmp eq i64 %prol.iter843.next, %xtraiter841
  br i1 %prol.iter843.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !256

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bf, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.df, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.tb = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 1
  store i8 -1, ptr %i.td, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv35.i
  %i.tf = load i8, ptr %i.te, align 1
  store i8 %i.tf, ptr %i.tc, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.tg = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.tg ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  store i8 -1, ptr %i.ti, align 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next36.i
  %i.tk = load i8, ptr %i.tj, align 1
  store i8 %i.tk, ptr %i.th, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.tl = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  store i8 -1, ptr %i.tn, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next36.i.1
  %i.tp = load i8, ptr %i.to, align 1
  store i8 %i.tp, ptr %i.tm, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tq = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  store i8 -1, ptr %i.ts, align 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %indvars.iv.next36.i.2
  %i.tu = load i8, ptr %i.tt, align 1
  store i8 %i.tu, ptr %i.tr, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !257

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tv = shl nuw nsw i64 %indvars.iv.i, 2
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.tv ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 3
  store i8 -1, ptr %i.tx, align 1
  %i.ty = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ty ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 2
  %i.ub = load i8, ptr %i.ua, align 1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  store i8 %i.ub, ptr %i.uc, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 1
  %i.ue = load i8, ptr %i.ud, align 1
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  store i8 %i.ue, ptr %i.uf, align 1
  %i.ug = load i8, ptr %i.tz, align 1
  store i8 %i.ug, ptr %i.tw, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.uh = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.uh ; 4 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 3
  store i8 -1, ptr %i.uj, align 1
  %i.uk = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.uk ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ui, i64 2
  store i8 %i.un, ptr %i.uo, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  %i.uq = load i8, ptr %i.up, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  store i8 %i.uq, ptr %i.ur, align 1
  %i.us = load i8, ptr %i.ul, align 1
  store i8 %i.us, ptr %i.ui, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !258

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull align 1 %i.dj, i64 %i.bg, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bd, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.be, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod818.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ct ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 3
  store i8 -1, ptr %i.uu, align 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cu ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 2
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 2
  store i8 %i.ux, ptr %i.uy, align 1
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 1
  %i.va = load i8, ptr %i.uz, align 1
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 1
  store i8 %i.va, ptr %i.vb, align 1
  %i.vc = load i8, ptr %i.uv, align 1
  store i8 %i.vc, ptr %i.ut, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bf, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cv, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.be, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader786, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.i314.preheader
  %i.vd = getelementptr i8, ptr %i.dp, i64 %i.bl
  %i.ve = getelementptr i8, ptr %i.vd, i64 2
  %i.vf = getelementptr i8, ptr %i.ve, i64 %i.dr
  %i.vg = getelementptr i8, ptr %12, i64 %i.di
  %bound0 = icmp ult ptr %i.ds, %i.vg
  %bound1 = icmp ult ptr %i.dj, %i.vf
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.i314.preheader786, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.vh = sub i64 %i.bf, %index                   ; 2 uses
  %i.vi = shl nuw nsw i64 %i.vh, 1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.vh
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vl, align 1, !alias.scope !275
  %i.vm = getelementptr inbounds i8, ptr %i.vj, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vm, align 1, !alias.scope !276, !noalias !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vn = icmp eq i64 %index.next, %n.vec
  br i1 %i.vn, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader786

.lr.ph32.i314.preheader786:                       ; preds = %vector.memcheck, %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph32.i314.preheader ], [ %i.cx, %middle.block ] ; 4 uses
  %i.vo = add nsw i64 %indvars.iv35.i315.ph, 1
  %xtraiter820 = and i64 %i.vo, 3                 ; 2 uses
  %lcmp.mod821.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod821.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol

.lr.ph32.i314.prol:                               ; preds = %.lr.ph32.i314.preheader786, %.lr.ph32.i314.prol
  %indvars.iv35.i315.prol = phi i64 [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader786 ] ; 3 uses
  %prol.iter822 = phi i64 [ %prol.iter822.next, %.lr.ph32.i314.prol ], [ 0, %.lr.ph32.i314.preheader786 ]
  %i.vp = shl nuw nsw i64 %indvars.iv35.i315.prol, 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  store i8 -1, ptr %i.vr, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv35.i315.prol
  %i.vt = load i8, ptr %i.vs, align 1
  store i8 %i.vt, ptr %i.vq, align 1
  %indvars.iv.next36.i316.prol = add nsw i64 %indvars.iv35.i315.prol, -1 ; 2 uses
  %prol.iter822.next = add i64 %prol.iter822, 1   ; 2 uses
  %prol.iter822.cmp.not = icmp eq i64 %prol.iter822.next, %xtraiter820
  br i1 %prol.iter822.cmp.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol, !llvm.loop !263

.lr.ph32.i314.prol.loopexit:                      ; preds = %.lr.ph32.i314.prol, %.lr.ph32.i314.preheader786
  %indvars.iv35.i315.unr = phi i64 [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader786 ], [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ]
  %i.vu = icmp ult i64 %indvars.iv35.i315.ph, 3
  br i1 %i.vu, label %.loopexit, label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316.3, %.lr.ph32.i314 ], [ %indvars.iv35.i315.unr, %.lr.ph32.i314.prol.loopexit ] ; 6 uses
  %i.vv = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.vv ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  store i8 -1, ptr %i.vx, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv35.i315
  %i.vz = load i8, ptr %i.vy, align 1
  store i8 %i.vz, ptr %i.vw, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1 ; 2 uses
  %i.wa = shl nuw nsw i64 %indvars.iv.next36.i316, 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.wa ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  store i8 -1, ptr %i.wc, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next36.i316
  %i.we = load i8, ptr %i.wd, align 1
  store i8 %i.we, ptr %i.wb, align 1
  %indvars.iv.next36.i316.1 = add nsw i64 %indvars.iv35.i315, -2 ; 2 uses
  %i.wf = shl nuw nsw i64 %indvars.iv.next36.i316.1, 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 1
  store i8 -1, ptr %i.wh, align 1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next36.i316.1
  %i.wj = load i8, ptr %i.wi, align 1
  store i8 %i.wj, ptr %i.wg, align 1
  %indvars.iv.next36.i316.2 = add nsw i64 %indvars.iv35.i315, -3 ; 3 uses
  %i.wk = shl nuw nsw i64 %indvars.iv.next36.i316.2, 1
  %i.wl = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.wk ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 1
  store i8 -1, ptr %i.wm, align 1
  %i.wn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next36.i316.2
  %i.wo = load i8, ptr %i.wn, align 1
  store i8 %i.wo, ptr %i.wl, align 1
  %indvars.iv.next36.i316.3 = add nsw i64 %indvars.iv35.i315, -4
  %.not39.i317.3 = icmp eq i64 %indvars.iv.next36.i316.2, 0
  br i1 %.not39.i317.3, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !264

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.wp = shl nuw nsw i64 %indvars.iv.i309, 2
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.wp ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 3
  store i8 -1, ptr %i.wr, align 1
  %i.ws = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wt = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ws ; 3 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 2
  %i.wv = load i8, ptr %i.wu, align 1
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wq, i64 2
  store i8 %i.wv, ptr %i.ww, align 1
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 1
  %i.wy = load i8, ptr %i.wx, align 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wq, i64 1
  store i8 %i.wy, ptr %i.wz, align 1
  %i.xa = load i8, ptr %i.wt, align 1
  store i8 %i.xa, ptr %i.wq, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.xb = shl nuw nsw i64 %indvars.iv.next.i310, 2
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.xb ; 4 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 3
  store i8 -1, ptr %i.xd, align 1
  %i.xe = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.xf = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.xe ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 2
  %i.xh = load i8, ptr %i.xg, align 1
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 2
  store i8 %i.xh, ptr %i.xi, align 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xf, i64 1
  %i.xk = load i8, ptr %i.xj, align 1
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xc, i64 1
  store i8 %i.xk, ptr %i.xl, align 1
  %i.xm = load i8, ptr %i.xf, align 1
  store i8 %i.xm, ptr %i.xc, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !258

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bc, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %min.iters.check516, label %.lr.ph382.preheader789, label %vector.memcheck517

vector.memcheck517:                               ; preds = %.lr.ph382.preheader
  %i.xn = getelementptr i8, ptr %i.dp, i64 %i.bp
  %i.xo = getelementptr i8, ptr %i.xn, i64 %i.dr
  %i.xp = getelementptr i8, ptr %10, i64 %i.di
  %bound0518 = icmp ult ptr %i.ds, %i.xp
  %bound1519 = icmp ult ptr %i.dj, %i.xo
  %found.conflict520 = and i1 %bound0518, %bound1519
  br i1 %found.conflict520, label %.lr.ph382.preheader789, label %vector.ph521

vector.ph521:                                     ; preds = %vector.memcheck517
  %i.xq = getelementptr i8, ptr %i.ds, i64 %i.cq
  %i.xr = getelementptr i8, ptr %i.dj, i64 %i.cq
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph521
  %index524 = phi i64 [ 0, %vector.ph521 ], [ %index.next533, %vector.body523 ] ; 2 uses
  %i.xs = shl i64 %index524, 1                    ; 9 uses
  %next.gep = getelementptr i8, ptr %i.ds, i64 %i.xs
  %next.gep525 = getelementptr i8, ptr %i.dj, i64 %i.xs ; 2 uses
  %i.xt = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.xt, i64 2
  %i.xu = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.xu, i64 4
  %i.xv = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep528 = getelementptr i8, ptr %i.xv, i64 6
  %i.xw = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep529 = getelementptr i8, ptr %i.xw, i64 8
  %i.xx = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep530 = getelementptr i8, ptr %i.xx, i64 10
  %i.xy = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep531 = getelementptr i8, ptr %i.xy, i64 12
  %i.xz = getelementptr i8, ptr %i.dj, i64 %i.xs  ; 2 uses
  %next.gep532 = getelementptr i8, ptr %i.xz, i64 14
  %i.ya = load i8, ptr %next.gep525, align 1, !alias.scope !277
  %i.yb = load i8, ptr %next.gep526, align 1, !alias.scope !277
  %i.yc = load i8, ptr %next.gep527, align 1, !alias.scope !277
  %i.yd = load i8, ptr %next.gep528, align 1, !alias.scope !277
  %i.ye = load i8, ptr %next.gep529, align 1, !alias.scope !277
  %i.yf = load i8, ptr %next.gep530, align 1, !alias.scope !277
  %i.yg = load i8, ptr %next.gep531, align 1, !alias.scope !277
  %i.yh = load i8, ptr %next.gep532, align 1, !alias.scope !277
  %i.yi = insertelement <8 x i8> poison, i8 %i.ya, i64 0
  %i.yj = insertelement <8 x i8> %i.yi, i8 %i.yb, i64 1
  %i.yk = insertelement <8 x i8> %i.yj, i8 %i.yc, i64 2
  %i.yl = insertelement <8 x i8> %i.yk, i8 %i.yd, i64 3
  %i.ym = insertelement <8 x i8> %i.yl, i8 %i.ye, i64 4
  %i.yn = insertelement <8 x i8> %i.ym, i8 %i.yf, i64 5
  %i.yo = insertelement <8 x i8> %i.yn, i8 %i.yg, i64 6
  %i.yp = insertelement <8 x i8> %i.yo, i8 %i.yh, i64 7
  %i.yq = zext <8 x i8> %i.yp to <8 x i16>
  %i.yr = shl nuw <8 x i16> %i.yq, splat (i16 8)
  %i.ys = getelementptr inbounds nuw i8, ptr %next.gep525, i64 1
  %i.yt = getelementptr i8, ptr %i.xt, i64 3
  %i.yu = getelementptr i8, ptr %i.xu, i64 5
  %i.yv = getelementptr i8, ptr %i.xv, i64 7
  %i.yw = getelementptr i8, ptr %i.xw, i64 9
  %i.yx = getelementptr i8, ptr %i.xx, i64 11
  %i.yy = getelementptr i8, ptr %i.xy, i64 13
  %i.yz = getelementptr i8, ptr %i.xz, i64 15
  %i.za = load i8, ptr %i.ys, align 1, !alias.scope !277
  %i.zb = load i8, ptr %i.yt, align 1, !alias.scope !277
  %i.zc = load i8, ptr %i.yu, align 1, !alias.scope !277
  %i.zd = load i8, ptr %i.yv, align 1, !alias.scope !277
  %i.ze = load i8, ptr %i.yw, align 1, !alias.scope !277
  %i.zf = load i8, ptr %i.yx, align 1, !alias.scope !277
  %i.zg = load i8, ptr %i.yy, align 1, !alias.scope !277
  %i.zh = load i8, ptr %i.yz, align 1, !alias.scope !277
  %i.zi = insertelement <8 x i8> poison, i8 %i.za, i64 0
  %i.zj = insertelement <8 x i8> %i.zi, i8 %i.zb, i64 1
  %i.zk = insertelement <8 x i8> %i.zj, i8 %i.zc, i64 2
  %i.zl = insertelement <8 x i8> %i.zk, i8 %i.zd, i64 3
  %i.zm = insertelement <8 x i8> %i.zl, i8 %i.ze, i64 4
  %i.zn = insertelement <8 x i8> %i.zm, i8 %i.zf, i64 5
  %i.zo = insertelement <8 x i8> %i.zn, i8 %i.zg, i64 6
  %i.zp = insertelement <8 x i8> %i.zo, i8 %i.zh, i64 7
  %i.zq = zext <8 x i8> %i.zp to <8 x i16>
  %i.zr = or disjoint <8 x i16> %i.yr, %i.zq
  store <8 x i16> %i.zr, ptr %next.gep, align 2, !alias.scope !278, !noalias !277
  %index.next533 = add nuw i64 %index524, 8       ; 2 uses
  %i.zs = icmp eq i64 %index.next533, %n.vec522
  br i1 %i.zs, label %middle.block534, label %vector.body523, !llvm.loop !268

middle.block534:                                  ; preds = %vector.body523
  br i1 %cmp.n535, label %.loopexit, label %.lr.ph382.preheader789

.lr.ph382.preheader789:                           ; preds = %vector.memcheck517, %.lr.ph382.preheader, %middle.block534
  %.0381.ph = phi ptr [ %i.ds, %vector.memcheck517 ], [ %i.ds, %.lr.ph382.preheader ], [ %i.xq, %middle.block534 ] ; 2 uses
  %.0249380.ph = phi ptr [ %i.dj, %vector.memcheck517 ], [ %i.dj, %.lr.ph382.preheader ], [ %i.xr, %middle.block534 ] ; 2 uses
  %.3268379.ph = phi i32 [ 0, %vector.memcheck517 ], [ 0, %.lr.ph382.preheader ], [ %i.cr, %middle.block534 ] ; 4 uses
  %13 = sub i32 %i.z, %.3268379.ph
  %i.zt = sub i32 %9, %.3268379.ph
  %xtraiter814 = and i32 %13, 3                   ; 2 uses
  %lcmp.mod815.not = icmp eq i32 %xtraiter814, 0
  br i1 %lcmp.mod815.not, label %.lr.ph382.prol.loopexit, label %.lr.ph382.prol

.lr.ph382.prol:                                   ; preds = %.lr.ph382.preheader789, %.lr.ph382.prol
  %.0381.prol = phi ptr [ %i.aac, %.lr.ph382.prol ], [ %.0381.ph, %.lr.ph382.preheader789 ] ; 2 uses
  %.0249380.prol = phi ptr [ %i.aad, %.lr.ph382.prol ], [ %.0249380.ph, %.lr.ph382.preheader789 ] ; 3 uses
  %.3268379.prol = phi i32 [ %i.aab, %.lr.ph382.prol ], [ %.3268379.ph, %.lr.ph382.preheader789 ]
  %prol.iter816 = phi i32 [ %prol.iter816.next, %.lr.ph382.prol ], [ 0, %.lr.ph382.preheader789 ]
  %i.zu = load i8, ptr %.0249380.prol, align 1
  %i.zv = zext i8 %i.zu to i16
  %i.zw = shl nuw i16 %i.zv, 8
  %i.zx = getelementptr inbounds nuw i8, ptr %.0249380.prol, i64 1
  %i.zy = load i8, ptr %i.zx, align 1
  %i.zz = zext i8 %i.zy to i16
  %i.aaa = or disjoint i16 %i.zw, %i.zz
  store i16 %i.aaa, ptr %.0381.prol, align 2
  %i.aab = add nuw i32 %.3268379.prol, 1          ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %.0381.prol, i64 2 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.0249380.prol, i64 2 ; 2 uses
  %prol.iter816.next = add i32 %prol.iter816, 1   ; 2 uses
  %prol.iter816.cmp.not = icmp eq i32 %prol.iter816.next, %xtraiter814
  br i1 %prol.iter816.cmp.not, label %.lr.ph382.prol.loopexit, label %.lr.ph382.prol, !llvm.loop !269

.lr.ph382.prol.loopexit:                          ; preds = %.lr.ph382.prol, %.lr.ph382.preheader789
  %.0381.unr = phi ptr [ %.0381.ph, %.lr.ph382.preheader789 ], [ %i.aac, %.lr.ph382.prol ]
  %.0249380.unr = phi ptr [ %.0249380.ph, %.lr.ph382.preheader789 ], [ %i.aad, %.lr.ph382.prol ]
  %.3268379.unr = phi i32 [ %.3268379.ph, %.lr.ph382.preheader789 ], [ %i.aab, %.lr.ph382.prol ]
  %14 = icmp ult i32 %i.zt, 3
  br i1 %14, label %.loopexit, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.prol.loopexit, %.lr.ph382
  %.0381 = phi ptr [ %i.abn, %.lr.ph382 ], [ %.0381.unr, %.lr.ph382.prol.loopexit ] ; 5 uses
  %.0249380 = phi ptr [ %i.abo, %.lr.ph382 ], [ %.0249380.unr, %.lr.ph382.prol.loopexit ] ; 9 uses
  %.3268379 = phi i32 [ %i.abm, %.lr.ph382 ], [ %.3268379.unr, %.lr.ph382.prol.loopexit ]
  %i.aae = load i8, ptr %.0249380, align 1
  %i.aaf = zext i8 %i.aae to i16
  %i.aag = shl nuw i16 %i.aaf, 8
  %i.aah = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.aai = load i8, ptr %i.aah, align 1
  %i.aaj = zext i8 %i.aai to i16
  %i.aak = or disjoint i16 %i.aag, %i.aaj
  store i16 %i.aak, ptr %.0381, align 2
  %i.aal = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.aam = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.aan = load i8, ptr %i.aam, align 1
  %i.aao = zext i8 %i.aan to i16
  %i.aap = shl nuw i16 %i.aao, 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.aar = load i8, ptr %i.aaq, align 1
  %i.aas = zext i8 %i.aar to i16
  %i.aat = or disjoint i16 %i.aap, %i.aas
  store i16 %i.aat, ptr %i.aal, align 2
  %i.aau = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.aav = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.aaw = load i8, ptr %i.aav, align 1
  %i.aax = zext i8 %i.aaw to i16
  %i.aay = shl nuw i16 %i.aax, 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.aba = load i8, ptr %i.aaz, align 1
  %i.abb = zext i8 %i.aba to i16
  %i.abc = or disjoint i16 %i.aay, %i.abb
  store i16 %i.abc, ptr %i.aau, align 2
  %i.abd = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.abe = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = zext i8 %i.abf to i16
  %i.abh = shl nuw i16 %i.abg, 8
  %i.abi = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.abj = load i8, ptr %i.abi, align 1
  %i.abk = zext i8 %i.abj to i16
  %i.abl = or disjoint i16 %i.abh, %i.abk
  store i16 %i.abl, ptr %i.abd, align 2
  %i.abm = add nuw i32 %.3268379, 4               ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %.0381, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %.0249380, i64 8
  %exitcond453.not.3 = icmp eq i32 %i.abm, %i.z
  br i1 %exitcond453.not.3, label %.loopexit, label %.lr.ph382, !llvm.loop !270

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bd, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.co, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.ach, %.lr.ph378 ], [ %i.ds, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.aci, %.lr.ph378 ], [ %i.dj, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
  %i.abp = load i8, ptr %.1250376, align 1
  %i.abq = zext i8 %i.abp to i16
  %i.abr = shl nuw i16 %i.abq, 8
  %i.abs = getelementptr inbounds nuw i8, ptr %.1250376, i64 1
  %i.abt = load i8, ptr %i.abs, align 1
  %i.abu = zext i8 %i.abt to i16
  %i.abv = or disjoint i16 %i.abr, %i.abu
  store i16 %i.abv, ptr %.1377, align 2
  %i.abw = getelementptr inbounds nuw i8, ptr %.1377, i64 2
  store i16 -1, ptr %i.abw, align 2
  %i.abx = getelementptr inbounds nuw i8, ptr %.1377, i64 4
  %i.aby = getelementptr inbounds nuw i8, ptr %.1250376, i64 2
  %i.abz = load i8, ptr %i.aby, align 1
  %i.aca = zext i8 %i.abz to i16
  %i.acb = shl nuw i16 %i.aca, 8
  %i.acc = getelementptr inbounds nuw i8, ptr %.1250376, i64 3
  %i.acd = load i8, ptr %i.acc, align 1
  %i.ace = zext i8 %i.acd to i16
  %i.acf = or disjoint i16 %i.acb, %i.ace
  store i16 %i.acf, ptr %i.abx, align 2
  %i.acg = getelementptr inbounds nuw i8, ptr %.1377, i64 6
  store i16 -1, ptr %i.acg, align 2
  %i.ach = getelementptr inbounds nuw i8, ptr %.1377, i64 8 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.1250376, i64 4 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit791.unr-lcssa, label %.lr.ph378, !llvm.loop !271

.lr.ph374:                                        ; preds = %.preheader346, %.lr.ph374
  %.2373 = phi ptr [ %i.adk, %.lr.ph374 ], [ %i.ds, %.preheader346 ] ; 5 uses
  %.2251372 = phi ptr [ %i.adl, %.lr.ph374 ], [ %i.dj, %.preheader346 ] ; 7 uses
  %.5270371 = phi i32 [ %i.adj, %.lr.ph374 ], [ 0, %.preheader346 ]
  %i.acj = load i8, ptr %.2251372, align 1
  %i.ack = zext i8 %i.acj to i16
  %i.acl = shl nuw i16 %i.ack, 8
  %i.acm = getelementptr inbounds nuw i8, ptr %.2251372, i64 1
  %i.acn = load i8, ptr %i.acm, align 1
  %i.aco = zext i8 %i.acn to i16
  %i.acp = or disjoint i16 %i.acl, %i.aco
  store i16 %i.acp, ptr %.2373, align 2
  %i.acq = getelementptr inbounds nuw i8, ptr %.2251372, i64 2
  %i.acr = load i8, ptr %i.acq, align 1
  %i.acs = zext i8 %i.acr to i16
  %i.act = shl nuw i16 %i.acs, 8
  %i.acu = getelementptr inbounds nuw i8, ptr %.2251372, i64 3
  %i.acv = load i8, ptr %i.acu, align 1
  %i.acw = zext i8 %i.acv to i16
  %i.acx = or disjoint i16 %i.act, %i.acw
  %i.acy = getelementptr inbounds nuw i8, ptr %.2373, i64 2
  store i16 %i.acx, ptr %i.acy, align 2
  %i.acz = getelementptr inbounds nuw i8, ptr %.2251372, i64 4
  %i.ada = load i8, ptr %i.acz, align 1
  %i.adb = zext i8 %i.ada to i16
  %i.adc = shl nuw i16 %i.adb, 8
  %i.add = getelementptr inbounds nuw i8, ptr %.2251372, i64 5
  %i.ade = load i8, ptr %i.add, align 1
  %i.adf = zext i8 %i.ade to i16
  %i.adg = or disjoint i16 %i.adc, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %.2373, i64 4
  store i16 %i.adg, ptr %i.adh, align 2
  %i.adi = getelementptr inbounds nuw i8, ptr %.2373, i64 6
  store i16 -1, ptr %i.adi, align 2
  %i.adj = add nuw nsw i32 %.5270371, 1           ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.2373, i64 8
  %i.adl = getelementptr inbounds nuw i8, ptr %.2251372, i64 6
  %exitcond451.not = icmp eq i32 %i.adj, %4
  br i1 %exitcond451.not, label %.loopexit, label %.lr.ph374, !llvm.loop !272

.loopexit.loopexit791.unr-lcssa:                  ; preds = %.lr.ph378
  br i1 %lcmp.mod812.not, label %.loopexit, label %.lr.ph378.epil.preheader

.lr.ph378.epil.preheader:                         ; preds = %.loopexit.loopexit791.unr-lcssa, %.lr.ph378.preheader
  %.1377.epil.init = phi ptr [ %i.ds, %.lr.ph378.preheader ], [ %i.ach, %.loopexit.loopexit791.unr-lcssa ] ; 2 uses
  %.1250376.epil.init = phi ptr [ %i.dj, %.lr.ph378.preheader ], [ %i.aci, %.loopexit.loopexit791.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod813)
  %i.adm = load i8, ptr %.1250376.epil.init, align 1
  %i.adn = zext i8 %i.adm to i16
  %i.ado = shl nuw i16 %i.adn, 8
  %i.adp = getelementptr inbounds nuw i8, ptr %.1250376.epil.init, i64 1
  %i.adq = load i8, ptr %i.adp, align 1
  %i.adr = zext i8 %i.adq to i16
  %i.ads = or disjoint i16 %i.ado, %i.adr
  store i16 %i.ads, ptr %.1377.epil.init, align 2
  %i.adt = getelementptr inbounds nuw i8, ptr %.1377.epil.init, i64 2
  store i16 -1, ptr %i.adt, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph374, %.lr.ph378.epil.preheader, %.loopexit.loopexit791.unr-lcssa, %.lr.ph382.prol.loopexit, %.lr.ph382, %.lr.ph.i308.prol.loopexit, %.lr.ph.i308, %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph32.i.prol.loopexit, %.lr.ph32.i, %middle.block534, %middle.block, %.preheader346, %.preheader344, %.preheader342, %.loopexit335, %bb.ag, %bb.ae, %.preheader26.i, %.preheader.i, %.preheader26.i306, %.preheader.i312
  %indvars.iv.next458 = add nuw nsw i64 %indvars.iv457, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next458, %wide.trip.count460
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !273

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.as) #13
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.adu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.as) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %stbi__mad2sizes_valid.exit.thread, %stbi__mad3sizes_valid.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %stbi__mad3sizes_valid.exit.thread ], [ 0, %bb.k ], [ 0, %stbi__mad2sizes_valid.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: nounwind uwtable
define internal i32 @IMG_LoadSTB_IO_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @SDL_ReadIO_REAL(ptr noundef %0, ptr noundef %1, i64 noundef %i.a) #13
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal void @IMG_LoadSTB_IO_skip(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i64 @SDL_SeekIO_REAL(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) #13 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @IMG_LoadSTB_IO_eof(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @SDL_GetIOStatus_REAL(ptr noundef %0) #13
  %i.b = icmp eq i32 %i.a, 2
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare ptr @SDL_CreateSurfaceFrom_REAL(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SDL_CreateSurfacePalette_REAL(ptr noundef) local_unnamed_addr #2
end_hunk_2
