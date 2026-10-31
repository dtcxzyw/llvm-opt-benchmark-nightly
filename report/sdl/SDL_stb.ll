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
  %i.agx = phi ptr [ %i.aka, %._crit_edge38.split.i.i.i ], [ %.pre.pre584.i, %.preheader35.i.i.i ] ; 2 uses
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
  %.03437.i.i.i = phi i32 [ %i.ajz, %._crit_edge.i79.i.i ], [ 0, %.preheader.preheader.i71.i.i ] ; 3 uses
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
  %7 = shl nsw i64 %i.ahv, 1
  %8 = getelementptr i8, ptr %i.ahp, i64 %7
  %scevgep357 = getelementptr i8, ptr %8, i64 128
  %i.aia = shl nsw i64 %i.ahy, 7
  %9 = getelementptr i8, ptr %i.d, i64 %i.aia
  %scevgep359 = getelementptr i8, ptr %9, i64 13576
  %bound0 = icmp ult ptr %i.ahw, %scevgep359
  %bound1 = icmp ult ptr %i.ahz, %scevgep357
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %wide.load = load <8 x i16>, ptr %i.ahz, align 2, !alias.scope !87
  %wide.load360 = load <8 x i16>, ptr %i.aib, align 2, !alias.scope !87
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16 ; 2 uses
  %wide.load361 = load <8 x i16>, ptr %i.ahw, align 2, !alias.scope !88, !noalias !87
  %wide.load362 = load <8 x i16>, ptr %i.aic, align 2, !alias.scope !88, !noalias !87
  %i.aid = mul <8 x i16> %wide.load361, %wide.load
  %i.aie = mul <8 x i16> %wide.load362, %wide.load360
  store <8 x i16> %i.aid, ptr %i.ahw, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aie, ptr %i.aic, align 2, !alias.scope !88, !noalias !87
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahz, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.aif, align 2, !alias.scope !87
  %wide.load360.1 = load <8 x i16>, ptr %i.aig, align 2, !alias.scope !87
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahw, i64 32 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahw, i64 48 ; 2 uses
  %wide.load361.1 = load <8 x i16>, ptr %i.aih, align 2, !alias.scope !88, !noalias !87
  %wide.load362.1 = load <8 x i16>, ptr %i.aii, align 2, !alias.scope !88, !noalias !87
  %i.aij = mul <8 x i16> %wide.load361.1, %wide.load.1
  %i.aik = mul <8 x i16> %wide.load362.1, %wide.load360.1
  store <8 x i16> %i.aij, ptr %i.aih, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aik, ptr %i.aii, align 2, !alias.scope !88, !noalias !87
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahz, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.ail, align 2, !alias.scope !87
  %wide.load360.2 = load <8 x i16>, ptr %i.aim, align 2, !alias.scope !87
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ahw, i64 64 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ahw, i64 80 ; 2 uses
  %wide.load361.2 = load <8 x i16>, ptr %i.ain, align 2, !alias.scope !88, !noalias !87
  %wide.load362.2 = load <8 x i16>, ptr %i.aio, align 2, !alias.scope !88, !noalias !87
  %i.aip = mul <8 x i16> %wide.load361.2, %wide.load.2
  %i.aiq = mul <8 x i16> %wide.load362.2, %wide.load360.2
  store <8 x i16> %i.aip, ptr %i.ain, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aiq, ptr %i.aio, align 2, !alias.scope !88, !noalias !87
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahz, i64 96
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahz, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.air, align 2, !alias.scope !87
  %wide.load360.3 = load <8 x i16>, ptr %i.ais, align 2, !alias.scope !87
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ahw, i64 96 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahw, i64 112 ; 2 uses
  %wide.load361.3 = load <8 x i16>, ptr %i.ait, align 2, !alias.scope !88, !noalias !87
  %wide.load362.3 = load <8 x i16>, ptr %i.aiu, align 2, !alias.scope !88, !noalias !87
  %i.aiv = mul <8 x i16> %wide.load361.3, %wide.load.3
  %i.aiw = mul <8 x i16> %wide.load362.3, %wide.load360.3
  store <8 x i16> %i.aiv, ptr %i.ait, align 2, !alias.scope !88, !noalias !87
  store <8 x i16> %i.aiw, ptr %i.aiu, align 2, !alias.scope !88, !noalias !87
  br label %stbi__jpeg_dequantize.exit.i.i.i

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv.i.i75.i.i = phi i64 [ %indvars.iv.next.i.i76.i.i.3, %scalar.ph ], [ 0, %vector.memcheck ] ; 6 uses
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.i.i75.i.i
  %i.aiy = load i16, ptr %i.aix, align 2
  %i.aiz = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.i.i75.i.i ; 2 uses
  %i.aja = load i16, ptr %i.aiz, align 2
  %i.ajb = mul i16 %i.aja, %i.aiy
  store i16 %i.ajb, ptr %i.aiz, align 2
  %indvars.iv.next.i.i76.i.i = or disjoint i64 %indvars.iv.i.i75.i.i, 1 ; 2 uses
  %i.ajc = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.next.i.i76.i.i
  %i.ajd = load i16, ptr %i.ajc, align 2
  %i.aje = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.next.i.i76.i.i ; 2 uses
  %i.ajf = load i16, ptr %i.aje, align 2
  %i.ajg = mul i16 %i.ajf, %i.ajd
  store i16 %i.ajg, ptr %i.aje, align 2
  %indvars.iv.next.i.i76.i.i.1 = or disjoint i64 %indvars.iv.i.i75.i.i, 2 ; 2 uses
  %i.ajh = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.next.i.i76.i.i.1
  %i.aji = load i16, ptr %i.ajh, align 2
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.next.i.i76.i.i.1 ; 2 uses
  %i.ajk = load i16, ptr %i.ajj, align 2
  %i.ajl = mul i16 %i.ajk, %i.aji
  store i16 %i.ajl, ptr %i.ajj, align 2
  %indvars.iv.next.i.i76.i.i.2 = or disjoint i64 %indvars.iv.i.i75.i.i, 3 ; 2 uses
  %i.ajm = getelementptr inbounds nuw [2 x i8], ptr %i.ahz, i64 %indvars.iv.next.i.i76.i.i.2
  %i.ajn = load i16, ptr %i.ajm, align 2
  %i.ajo = getelementptr inbounds nuw [2 x i8], ptr %i.ahw, i64 %indvars.iv.next.i.i76.i.i.2 ; 2 uses
  %i.ajp = load i16, ptr %i.ajo, align 2
  %i.ajq = mul i16 %i.ajp, %i.ajn
  store i16 %i.ajq, ptr %i.ajo, align 2
  %indvars.iv.next.i.i76.i.i.3 = add nuw nsw i64 %indvars.iv.i.i75.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i76.i.i.3, 64
  br i1 %exitcond.not.i.i.i.i.3, label %stbi__jpeg_dequantize.exit.i.i.i, label %scalar.ph, !llvm.loop !64

stbi__jpeg_dequantize.exit.i.i.i:                 ; preds = %scalar.ph, %vector.body
  %i.ajr = load ptr, ptr %i.g, align 8
  %i.ajs = load ptr, ptr %i.ahm, align 8
  %i.ajt = load i32, ptr %i.ahn, align 4          ; 2 uses
  %i.aju = mul i32 %i.aho, %i.ajt
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds i8, ptr %i.ajs, i64 %i.ajv
  %i.ajx = shl nuw nsw i64 %indvars.iv.i74.i.i, 3
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ajx
  call void %i.ajr(ptr noundef %i.ajy, i32 noundef %i.ajt, ptr noundef nonnull %i.ahw) #13, !inline_history !65
  %indvars.iv.next.i77.i.i = add nuw nsw i64 %indvars.iv.i74.i.i, 1 ; 2 uses
  %exitcond.not.i78.i.i = icmp eq i64 %indvars.iv.next.i77.i.i, %wide.trip.count.i72.i.i
  br i1 %exitcond.not.i78.i.i, label %._crit_edge.i79.i.i, label %vector.memcheck, !llvm.loop !66

._crit_edge.i79.i.i:                              ; preds = %stbi__jpeg_dequantize.exit.i.i.i
  %i.ajz = add nuw nsw i32 %.03437.i.i.i, 1       ; 2 uses
  %exitcond41.not.i.i.i = icmp eq i32 %i.ajz, %i.ahg
  br i1 %exitcond41.not.i.i.i, label %._crit_edge38.split.loopexit.i.i.i, label %.preheader.i73.i.i, !llvm.loop !67

._crit_edge38.split.loopexit.i.i.i:               ; preds = %._crit_edge.i79.i.i
  %.pre.i80.i.i = load ptr, ptr %i.d, align 8
  br label %._crit_edge38.split.i.i.i

._crit_edge38.split.i.i.i:                        ; preds = %._crit_edge38.split.loopexit.i.i.i, %.preheader.lr.ph.i70.i.i, %.lr.ph.i69.i.i
  %i.aka = phi ptr [ %.pre.i80.i.i, %._crit_edge38.split.loopexit.i.i.i ], [ %i.agx, %.preheader.lr.ph.i70.i.i ], [ %i.agx, %.lr.ph.i69.i.i ] ; 3 uses
  %indvars.iv.next43.i.i.i = add nuw nsw i64 %indvars.iv42.i.i.i, 1 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load i32, ptr %i.akb, align 8
  %i.akd = sext i32 %i.akc to i64
  %i.ake = icmp slt i64 %indvars.iv.next43.i.i.i, %i.akd
  br i1 %i.ake, label %.lr.ph.i69.i.i, label %stbi__decode_jpeg_image.exit.i, !llvm.loop !68

.critedge.sink.split.i.i:                         ; preds = %bb.ff, %bb.fe, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.m, %bb.l, %stbi__get8.exit.i.i.i, %bb.z, %bb.y, %stbi__jpeg_huff_decode.exit181.i.i.i.i, %bb.dk, %bb.dj, %bb.dd, %bb.cg, %bb.cf, %bb.bz, %bb.bu, %bb.di, %bb.ce, %stbi__get8.exit.thread.i.i.i
  %.str.15.sink.i.i = phi ptr [ @.str.15, %bb.ce ], [ @.str.20, %bb.bu ], [ @.str.15, %bb.di ], [ @.str.15, %stbi__jpeg_huff_decode.exit181.i.i.i.i ], [ @.str.15, %bb.z ], [ @.str.15, %stbi__get8.exit.thread.i.i.i ], [ @.str.15, %bb.cg ], [ @.str.15, %bb.cf ], [ @.str.15, %bb.bz ], [ @.str.15, %bb.dd ], [ @.str.15, %bb.dj ], [ @.str.15, %bb.dk ], [ @.str.15, %bb.y ], [ @.str.15, %stbi__get8.exit.i.i.i ], [ @.str.15, %bb.l ], [ @.str.15, %bb.m ], [ @.str.15, %bb.ap ], [ @.str.15, %bb.aq ], [ @.str.15, %bb.ar ], [ @.str.15, %bb.as ], [ @.str.15, %bb.fe ], [ @.str.15, %bb.ff ]
  %i.akf = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.15.sink.i.i) #13 ; 0 uses
  br label %.loopexit401.i

.loopexit401.i:                                   ; preds = %stbi__parse_entropy_coded_data.exit.i.i, %._crit_edge.i.i.i, %bb.x, %bb.bn, %.lr.ph.i51.i.i, %.critedge.sink.split.i.i, %bb.c
  %i.akg = load ptr, ptr %i.d, align 8
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %i.aki = load i32, ptr %i.akh, align 8          ; 2 uses
  %i.akj = icmp sgt i32 %i.aki, 0
  br i1 %i.akj, label %.lr.ph.i.i307.i, label %load_jpeg_image.exit

.lr.ph.i.i307.i:                                  ; preds = %.loopexit401.i
  %wide.trip.count.i.i308.i = zext nneg i32 %i.aki to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fo, %.lr.ph.i.i307.i
  %indvars.iv.i.i309.i = phi i64 [ 0, %.lr.ph.i.i307.i ], [ %indvars.iv.next.i.i311.i, %bb.fo ] ; 2 uses
  %i.akk = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i309.i ; 5 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 56
  %i.akm = load ptr, ptr %i.akl, align 8          ; 2 uses
  %.not.i.i310.i = icmp eq ptr %i.akm, null
  br i1 %.not.i.i310.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @SDL_free_REAL(ptr noundef nonnull %i.akm) #13
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akk, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akn, i8 0, i64 16, i1 false)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akk, i64 64 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8          ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.akp, null
  br i1 %.not28.i.i.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @SDL_free_REAL(ptr noundef nonnull %i.akp) #13
  store ptr null, ptr %i.ako, align 8
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akk, i64 80
  store ptr null, ptr %i.akq, align 8
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akk, i64 72 ; 2 uses
  %i.aks = load ptr, ptr %i.akr, align 8          ; 2 uses
  %.not29.i.i.i = icmp eq ptr %i.aks, null
  br i1 %.not29.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @SDL_free_REAL(ptr noundef nonnull %i.aks) #13
  store ptr null, ptr %i.akr, align 8
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %indvars.iv.next.i.i311.i = add nuw nsw i64 %indvars.iv.i.i309.i, 1 ; 2 uses
  %exitcond.not.i.i312.i = icmp eq i64 %indvars.iv.next.i.i311.i, %wide.trip.count.i.i308.i
  br i1 %exitcond.not.i.i312.i, label %load_jpeg_image.exit, label %bb.fi, !llvm.loop !2

stbi__decode_jpeg_image.exit.loopexit514.i:       ; preds = %bb.fg
  %.pre.pre.i = load ptr, ptr %i.d, align 8
  br label %stbi__decode_jpeg_image.exit.i

stbi__decode_jpeg_image.exit.i:                   ; preds = %._crit_edge38.split.i.i.i, %stbi__decode_jpeg_image.exit.loopexit514.i, %.preheader35.i.i.i, %bb.fh
  %.pre.i = phi ptr [ %.pre.pre.i, %stbi__decode_jpeg_image.exit.loopexit514.i ], [ %.pre.pre584.i, %bb.fh ], [ %.pre.pre584.i, %.preheader35.i.i.i ], [ %i.aka, %._crit_edge38.split.i.i.i ] ; 6 uses
  %.not293.i = icmp eq i32 %4, 0
  %i.akt = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.aku = load i32, ptr %i.akt, align 8          ; 9 uses
  %.inv.i = icmp slt i32 %i.aku, 3
  %i.akv = select i1 %.inv.i, i32 1, i32 3
  %i.akw = select i1 %.not293.i, i32 %i.akv, i32 %4 ; 8 uses
  %i.akx = icmp ne i32 %i.aku, 3                  ; 2 uses
  br i1 %i.akx, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %stbi__decode_jpeg_image.exit.i
  %i.aky = getelementptr inbounds nuw i8, ptr %i.d, i64 18512
  %i.akz = load i32, ptr %i.aky, align 8
  %i.ala = icmp eq i32 %i.akz, 3
  br i1 %i.ala, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
end_hunk_0
begin_hunk_1_@stbi__zhuffman_decode:bb.a
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
  %i.z = mul i32 %i.g, %4                         ; 18 uses
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
  %i.as = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #13 ; 6 uses
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
  %i.bm = sub nsw i64 %i.ba, %i.aw                ; 28 uses
  %i.bn = add i32 %i.z, -1                        ; 3 uses
  %i.bo = add nuw nsw i64 %i.bf, 1
  %min.iters.check700 = icmp ult i64 %i.bm, 8
  %i.bp = add nsw i64 %i.aw, -1
  %diff.check698 = icmp ult i64 %i.bp, 31
  %or.cond733 = select i1 %min.iters.check700, i1 true, i1 %diff.check698
  %min.iters.check702 = icmp ult i64 %i.bm, 32
  %i.bq = and i64 %i.bm, 24
  %n.vec704.a = and i64 %i.bm, -32                ; 4 uses
  %i.br = add nsw i64 %n.vec704.a, %i.aw
  %cmp.n713 = icmp eq i64 %i.bm, %n.vec704.a
  %min.epilog.iters.check717 = icmp eq i64 %i.bq, 0
  %n.vec720 = and i64 %i.bm, -8                   ; 3 uses
  %i.bs = add nsw i64 %n.vec720, %i.aw
  %cmp.n727 = icmp eq i64 %i.bm, %n.vec720
  %i.bt = add nsw i64 %i.ba, -1
  %min.iters.check668 = icmp ult i32 %spec.select, 4
  %min.iters.check670 = icmp ult i32 %spec.select, 32
  %i.bu = and i64 %wide.trip.count424, 28
  %n.vec672 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n681 = icmp eq i64 %n.vec672, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bu, 0
  %n.vec688 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n695 = icmp eq i64 %n.vec688, %wide.trip.count424
  %xtraiter747 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  %min.iters.check634 = icmp ult i64 %i.bm, 4
  %i.bv = add nsw i64 %i.aw, -1
  %diff.check628 = icmp ult i64 %i.bv, 15
  %min.iters.check636 = icmp ult i64 %i.bm, 16
  %i.bw = and i64 %i.bm, 12
  %n.vec638 = and i64 %i.bm, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec638, %i.aw
  %cmp.n647 = icmp eq i64 %i.bm, %n.vec638
  %min.epilog.iters.check651 = icmp eq i64 %i.bw, 0
  %n.vec654 = and i64 %i.bm, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec654, %i.aw
  %cmp.n663 = icmp eq i64 %i.bm, %n.vec654
  %min.iters.check598 = icmp ult i32 %spec.select, 4
  %min.iters.check600 = icmp ult i32 %spec.select, 32
  %i.bz = and i64 %wide.trip.count424, 28
  %n.vec602 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n611 = icmp eq i64 %n.vec602, %wide.trip.count424
  %min.epilog.iters.check615 = icmp eq i64 %i.bz, 0
  %n.vec618 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n625 = icmp eq i64 %n.vec618, %wide.trip.count424
  %xtraiter749 = and i64 %wide.trip.count424, 1
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  %i.ca = add nsw i64 %wide.trip.count424, -1
  %min.iters.check566 = icmp ult i64 %i.bm, 4
  %i.cb = add nsw i64 %i.aw, -1
  %diff.check564 = icmp ult i64 %i.cb, 15
  %min.iters.check568 = icmp ult i64 %i.bm, 16
  %i.cc = and i64 %i.bm, 12
  %n.vec570 = and i64 %i.bm, -16                  ; 4 uses
  %i.cd = add nsw i64 %n.vec570, %i.aw
  %cmp.n578 = icmp eq i64 %i.bm, %n.vec570
  %min.epilog.iters.check582 = icmp eq i64 %i.cc, 0
  %n.vec585 = and i64 %i.bm, -4                   ; 3 uses
  %i.ce = add nsw i64 %n.vec585, %i.aw
  %cmp.n593 = icmp eq i64 %i.bm, %n.vec585
  %i.cf = add nsw i64 %i.ba, -1
  %min.iters.check533 = icmp ult i32 %i.av, 4
  %min.iters.check535 = icmp ult i32 %i.av, 32
  %i.cg = and i64 %wide.trip.count444, 28
  %n.vec537 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n546 = icmp eq i64 %n.vec537, %wide.trip.count444
  %min.epilog.iters.check550 = icmp eq i64 %i.cg, 0
  %n.vec553 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n560 = icmp eq i64 %n.vec553, %wide.trip.count444
  %xtraiter755 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  %min.iters.check510 = icmp ult i64 %i.bm, 8
  %i.ch = add nsw i64 %i.aw, -1
  %diff.check = icmp ult i64 %i.ch, 31
  %or.cond732 = select i1 %min.iters.check510, i1 true, i1 %diff.check
  %min.iters.check511 = icmp ult i64 %i.bm, 32
  %i.ci = and i64 %i.bm, 24
  %n.vec513 = and i64 %i.bm, -32                  ; 4 uses
  %i.cj = add nsw i64 %n.vec513, %i.aw
  %cmp.n522 = icmp eq i64 %i.bm, %n.vec513
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  %n.vec523 = and i64 %i.bm, -8                   ; 3 uses
  %i.ck = add nsw i64 %n.vec523, %i.aw
  %cmp.n528 = icmp eq i64 %i.bm, %n.vec523
  %i.cl = add nsw i64 %i.ba, -1
  %xtraiter761 = and i32 %4, 1
  %i.cm = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  %lcmp.mod763 = trunc i32 %4 to i1
  %xtraiter764 = and i32 %i.z, 3                  ; 3 uses
  %i.cn = icmp ult i32 %i.z, 4
  %unroll_iter767 = and i32 %i.z, -4
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  %lcmp.mod766 = icmp ne i32 %xtraiter764, 0
  %i.co = and i64 %i.bf, 1
  %lcmp.mod770.not.not = icmp eq i64 %i.co, 0
  %i.cp = shl nuw nsw i64 %i.bf, 2
  %i.cq = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bf, -1
  %i.cr = icmp eq i32 %.030.i305, 0
  %i.cs = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %invariant.gep = getelementptr i8, ptr %i.as, i64 %i.bf
  %n.vec = and i64 %i.cs, 2147483640              ; 3 uses
  %i.ct = sub nsw i64 %i.bf, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cs
  %xtraiter775 = and i32 %i.z, 1
  %i.cu = icmp eq i32 %i.bn, 0
  %unroll_iter779 = and i32 %i.z, -2
  %lcmp.mod777.not.a = icmp eq i32 %xtraiter775, 0
  %lcmp.mod778 = trunc i32 %i.z to i1
  %xtraiter781 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bn, 0
  %unroll_iter785 = and i32 %i.z, -2
  %lcmp.mod783.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod784 = trunc i32 %i.z to i1
  %xtraiter787 = and i32 %i.z, 1
  %i.cw = icmp eq i32 %i.bn, 0
  %unroll_iter791 = and i32 %i.z, -2
  %lcmp.mod789.not = icmp eq i32 %xtraiter787, 0
  %lcmp.mod790 = trunc i32 %i.z to i1
  %i.cx = and i64 %i.bf, 1
  %lcmp.mod794.not.not = icmp eq i64 %i.cx, 0
  %i.cy = shl nuw nsw i64 %i.bf, 2
  %i.cz = mul nuw nsw i64 %i.bf, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bf, -1
  %i.da = icmp eq i32 %.030.i305, 0
  %xtraiter796 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %i.db = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.ql, %.loopexit ] ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.dd = trunc i64 %indvars.iv457 to i1
  %i.de = select i1 %i.dd, i64 %i.bk, i64 0       ; 8 uses
  %i.df = getelementptr i8, ptr %i.as, i64 %i.de  ; 80 uses
  %i.dg = and i32 %i.dc, 1
  %i.dh = xor i32 %i.dg, 1
  %i.di = mul nuw nsw i32 %i.dh, %i.ah
  %i.dj = zext nneg i32 %i.di to i64              ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dj ; 30 uses
  %i.dl = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dm = mul i32 %i.e, %i.dc
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = getelementptr i8, ptr %i.dl, i64 %i.dn  ; 38 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dq = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dr = icmp ugt i8 %i.dq, 4
  br i1 %i.dr, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = icmp eq i64 %indvars.iv457, 0
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = zext nneg i8 %i.dq to i64
  %i.du = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dv, %bb.o ], [ %i.dq, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.dw = sub nsw i64 %i.dj, %i.de
  %diff.check666 = icmp ugt i64 %i.dw, -32
  %or.cond729 = select i1 %min.iters.check668, i1 true, i1 %diff.check666
  br i1 %or.cond729, label %.lr.ph360.preheader, label %vector.main.loop.iter.check669

vector.main.loop.iter.check669:                   ; preds = %iter.check682
  br i1 %min.iters.check670, label %vec.epilog.ph686, label %vector.body673

vector.body673:                                   ; preds = %vector.main.loop.iter.check669, %vector.body673
  %index674 = phi i64 [ %index.next679, %vector.body673 ], [ 0, %vector.main.loop.iter.check669 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index674 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load675 = load <16 x i8>, ptr %i.dx, align 1
  %wide.load676 = load <16 x i8>, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index674 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load677 = load <16 x i8>, ptr %i.dz, align 1
  %wide.load678 = load <16 x i8>, ptr %i.ea, align 1
  %i.eb = add <16 x i8> %wide.load677, %wide.load675
  %i.ec = add <16 x i8> %wide.load678, %wide.load676
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 %index674 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <16 x i8> %i.eb, ptr %i.ed, align 1
  store <16 x i8> %i.ec, ptr %i.ee, align 1
  %index.next679 = add nuw i64 %index674, 32      ; 2 uses
  %i.ef = icmp eq i64 %index.next679, %n.vec672
  br i1 %i.ef, label %middle.block680, label %vector.body673, !llvm.loop !230

middle.block680:                                  ; preds = %vector.body673
  br i1 %cmp.n681, label %.preheader354, label %vec.epilog.iter.check683

vec.epilog.iter.check683:                         ; preds = %middle.block680
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !17

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check669, %vec.epilog.iter.check683
  %vec.epilog.resume.val687 = phi i64 [ %n.vec672, %vec.epilog.iter.check683 ], [ 0, %vector.main.loop.iter.check669 ]
  br label %vec.epilog.vector.body689

vec.epilog.vector.body689:                        ; preds = %vec.epilog.vector.body689, %vec.epilog.ph686
  %index690 = phi i64 [ %vec.epilog.resume.val687, %vec.epilog.ph686 ], [ %index.next693, %vec.epilog.vector.body689 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index690
  %wide.load691 = load <4 x i8>, ptr %i.eg, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index690
  %wide.load692 = load <4 x i8>, ptr %i.eh, align 1
  %i.ei = add <4 x i8> %wide.load692, %wide.load691
  %i.ej = getelementptr inbounds nuw i8, ptr %i.df, i64 %index690
  store <4 x i8> %i.ei, ptr %i.ej, align 1
  %index.next693 = add nuw i64 %index690, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next693, %n.vec688
  br i1 %i.ek, label %vec.epilog.middle.block694, label %vec.epilog.vector.body689, !llvm.loop !231

vec.epilog.middle.block694:                       ; preds = %vec.epilog.vector.body689
  br i1 %cmp.n695, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check683, %vec.epilog.middle.block694
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec672, %vec.epilog.iter.check683 ], [ %n.vec688, %vec.epilog.middle.block694 ] ; 3 uses
  br i1 %lcmp.mod748.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv421.prol
  %i.em = load i8, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.dk, i64 %indvars.iv421.prol
  %i.eo = load i8, ptr %i.en, align 1
  %.narrow286.prol = add i8 %i.eo, %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.ep, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter747
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !232

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.eq = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ay, label %iter.check612, label %.preheader351

iter.check612:                                    ; preds = %.preheader353
  %i.es = sub nsw i64 %i.dj, %i.de
  %diff.check596 = icmp ugt i64 %i.es, -32
  %or.cond730 = select i1 %min.iters.check598, i1 true, i1 %diff.check596
  br i1 %or.cond730, label %.lr.ph364.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %iter.check612
  br i1 %min.iters.check600, label %vec.epilog.ph616, label %vector.body603

vector.body603:                                   ; preds = %vector.main.loop.iter.check599, %vector.body603
  %index604 = phi i64 [ %index.next609, %vector.body603 ], [ 0, %vector.main.loop.iter.check599 ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 %index604 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.et, align 1
  %wide.load606 = load <16 x i8>, ptr %i.eu, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dk, i64 %index604 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load607 = load <16 x i8>, ptr %i.ev, align 1
  %wide.load608 = load <16 x i8>, ptr %i.ew, align 1
  %i.ex = lshr <16 x i8> %wide.load607, splat (i8 1)
  %i.ey = lshr <16 x i8> %wide.load608, splat (i8 1)
  %i.ez = add <16 x i8> %i.ex, %wide.load605
  %i.fa = add <16 x i8> %i.ey, %wide.load606
  %i.fb = getelementptr inbounds nuw i8, ptr %i.df, i64 %index604 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <16 x i8> %i.ez, ptr %i.fb, align 1
  store <16 x i8> %i.fa, ptr %i.fc, align 1
  %index.next609 = add nuw i64 %index604, 32      ; 2 uses
  %i.fd = icmp eq i64 %index.next609, %n.vec602
  br i1 %i.fd, label %middle.block610, label %vector.body603, !llvm.loop !233

middle.block610:                                  ; preds = %vector.body603
  br i1 %cmp.n611, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block610
  br i1 %min.epilog.iters.check615, label %.lr.ph364.preheader, label %vec.epilog.ph616, !prof !17

vec.epilog.ph616:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check613
  %vec.epilog.resume.val617 = phi i64 [ %n.vec602, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check599 ]
  br label %vec.epilog.vector.body619

vec.epilog.vector.body619:                        ; preds = %vec.epilog.vector.body619, %vec.epilog.ph616
  %index620 = phi i64 [ %vec.epilog.resume.val617, %vec.epilog.ph616 ], [ %index.next623, %vec.epilog.vector.body619 ] ; 4 uses
end_hunk_1
begin_hunk_2_@stbi__create_png_image_raw:bb.a
  %.2244384.epil.init = phi ptr [ %i.df, %.lr.ph387.preheader ], [ %.3245, %.loopexit335.loopexit736.unr-lcssa ]
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.rj, %.loopexit335.loopexit736.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod778)
  %i.sd = and i32 %.1266383.epil.init, 3
  %i.se = icmp eq i32 %i.sd, 0
  br i1 %i.se, label %bb.aa, label %.loopexit335.loopexit736.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sf = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit736.epilog-lcssa

.loopexit335.loopexit736.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sf, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sg = lshr i8 %.3.epil, 6
  %i.sh = mul i8 %i.sg, %i.qn
  store i8 %i.sh, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit736.epilog-lcssa, %.loopexit335.loopexit736.unr-lcssa, %.loopexit335.loopexit735.epilog-lcssa, %.loopexit335.loopexit735.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bc, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.bd, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod794.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.si = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cy ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 3
  store i8 -1, ptr %i.sj, align 1
  %i.sk = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cz ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 2
  %i.sm = load i8, ptr %i.sl, align 1
  %i.sn = getelementptr inbounds nuw i8, ptr %i.si, i64 2
  store i8 %i.sm, ptr %i.sn, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  %i.sp = load i8, ptr %i.so, align 1
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  store i8 %i.sp, ptr %i.sq, align 1
  %i.sr = load i8, ptr %i.sk, align 1
  store i8 %i.sr, ptr %i.si, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bf, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.da, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.be, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod797.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bf, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter798 = phi i64 [ %prol.iter798.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.ss = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.st = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ss ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  store i8 -1, ptr %i.su, align 1
  %i.sv = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv35.i.prol
  %i.sw = load i8, ptr %i.sv, align 1
  store i8 %i.sw, ptr %i.st, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter798.next = add i64 %prol.iter798, 1   ; 2 uses
  %prol.iter798.cmp.not = icmp eq i64 %prol.iter798.next, %xtraiter796
  br i1 %prol.iter798.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !256

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bf, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.db, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.sx = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.sx ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 1
  store i8 -1, ptr %i.sz, align 1
  %i.ta = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv35.i
  %i.tb = load i8, ptr %i.ta, align 1
  store i8 %i.tb, ptr %i.sy, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.tc = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  store i8 -1, ptr %i.te, align 1
  %i.tf = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next36.i
  %i.tg = load i8, ptr %i.tf, align 1
  store i8 %i.tg, ptr %i.td, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.th = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.ti = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  store i8 -1, ptr %i.tj, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next36.i.1
  %i.tl = load i8, ptr %i.tk, align 1
  store i8 %i.tl, ptr %i.ti, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tm = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.tn = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  store i8 -1, ptr %i.to, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.next36.i.2
  %i.tq = load i8, ptr %i.tp, align 1
  store i8 %i.tq, ptr %i.tn, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !257

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.tr = shl nuw nsw i64 %indvars.iv.i, 2
  %i.ts = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tr ; 4 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 3
  store i8 -1, ptr %i.tt, align 1
  %i.tu = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.tu ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 2
  %i.tx = load i8, ptr %i.tw, align 1
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 2
  store i8 %i.tx, ptr %i.ty, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 1
  %i.ua = load i8, ptr %i.tz, align 1
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  store i8 %i.ua, ptr %i.ub, align 1
  %i.uc = load i8, ptr %i.tv, align 1
  store i8 %i.uc, ptr %i.ts, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ud = shl nuw nsw i64 %indvars.iv.next.i, 2
  %i.ue = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ud ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 3
  store i8 -1, ptr %i.uf, align 1
  %i.ug = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.uh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ug ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 2
  %i.uj = load i8, ptr %i.ui, align 1
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ue, i64 2
  store i8 %i.uj, ptr %i.uk, align 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  %i.um = load i8, ptr %i.ul, align 1
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 1
  store i8 %i.um, ptr %i.un, align 1
  %i.uo = load i8, ptr %i.uh, align 1
  store i8 %i.uo, ptr %i.ue, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !258

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bb, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.df, i64 %i.bg, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bd, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.be, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod770.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.up = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cp ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 3
  store i8 -1, ptr %i.uq, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cq ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 2
  %i.ut = load i8, ptr %i.us, align 1
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 2
  store i8 %i.ut, ptr %i.uu, align 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 1
  %i.uw = load i8, ptr %i.uv, align 1
  %i.ux = getelementptr inbounds nuw i8, ptr %i.up, i64 1
  store i8 %i.uw, ptr %i.ux, align 1
  %i.uy = load i8, ptr %i.ur, align 1
  store i8 %i.uy, ptr %i.up, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bf, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cr, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.be, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader737, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.i314.preheader
  %i.uz = getelementptr i8, ptr %i.dl, i64 %i.bl
  %8 = getelementptr i8, ptr %i.uz, i64 %i.dn
  %scevgep = getelementptr i8, ptr %8, i64 2
  %scevgep504 = getelementptr i8, ptr %invariant.gep, i64 %i.de
  %scevgep506 = getelementptr i8, ptr %scevgep504, i64 1
  %bound0 = icmp ult ptr %i.do, %scevgep506
  %bound1 = icmp ult ptr %i.df, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.i314.preheader737, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.va = sub i64 %i.bf, %index                   ; 2 uses
  %i.vb = shl nuw nsw i64 %i.va, 1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.va
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -7
  %wide.load = load <8 x i8>, ptr %i.ve, align 1, !alias.scope !271
  %i.vf = getelementptr inbounds i8, ptr %i.vc, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vf, align 1, !alias.scope !272, !noalias !271
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vg = icmp eq i64 %index.next, %n.vec
  br i1 %i.vg, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader737

.lr.ph32.i314.preheader737:                       ; preds = %vector.memcheck, %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph32.i314.preheader ], [ %i.ct, %middle.block ] ; 4 uses
  %i.vh = add nsw i64 %indvars.iv35.i315.ph, 1
  %xtraiter772 = and i64 %i.vh, 3                 ; 2 uses
  %lcmp.mod773.not = icmp eq i64 %xtraiter772, 0
  br i1 %lcmp.mod773.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol

.lr.ph32.i314.prol:                               ; preds = %.lr.ph32.i314.preheader737, %.lr.ph32.i314.prol
  %indvars.iv35.i315.prol = phi i64 [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader737 ] ; 3 uses
  %prol.iter774 = phi i64 [ %prol.iter774.next, %.lr.ph32.i314.prol ], [ 0, %.lr.ph32.i314.preheader737 ]
  %i.vi = shl nuw nsw i64 %indvars.iv35.i315.prol, 1
  %i.vj = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vi ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 1
  store i8 -1, ptr %i.vk, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv35.i315.prol
  %i.vm = load i8, ptr %i.vl, align 1
  store i8 %i.vm, ptr %i.vj, align 1
  %indvars.iv.next36.i316.prol = add nsw i64 %indvars.iv35.i315.prol, -1 ; 2 uses
  %prol.iter774.next = add i64 %prol.iter774, 1   ; 2 uses
  %prol.iter774.cmp.not = icmp eq i64 %prol.iter774.next, %xtraiter772
  br i1 %prol.iter774.cmp.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol, !llvm.loop !263

.lr.ph32.i314.prol.loopexit:                      ; preds = %.lr.ph32.i314.prol, %.lr.ph32.i314.preheader737
  %indvars.iv35.i315.unr = phi i64 [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader737 ], [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ]
  %i.vn = icmp ult i64 %indvars.iv35.i315.ph, 3
  br i1 %i.vn, label %.loopexit, label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316.3, %.lr.ph32.i314 ], [ %indvars.iv35.i315.unr, %.lr.ph32.i314.prol.loopexit ] ; 6 uses
  %i.vo = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vo ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  store i8 -1, ptr %i.vq, align 1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv35.i315
  %i.vs = load i8, ptr %i.vr, align 1
  store i8 %i.vs, ptr %i.vp, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1 ; 2 uses
  %i.vt = shl nuw nsw i64 %indvars.iv.next36.i316, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vt ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 1
  store i8 -1, ptr %i.vv, align 1
  %i.vw = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.next36.i316
  %i.vx = load i8, ptr %i.vw, align 1
  store i8 %i.vx, ptr %i.vu, align 1
  %indvars.iv.next36.i316.1 = add nsw i64 %indvars.iv35.i315, -2 ; 2 uses
  %i.vy = shl nuw nsw i64 %indvars.iv.next36.i316.1, 1
  %i.vz = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 1
  store i8 -1, ptr %i.wa, align 1
  %i.wb = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.next36.i316.1
  %i.wc = load i8, ptr %i.wb, align 1
  store i8 %i.wc, ptr %i.vz, align 1
  %indvars.iv.next36.i316.2 = add nsw i64 %indvars.iv35.i315, -3 ; 3 uses
  %i.wd = shl nuw nsw i64 %indvars.iv.next36.i316.2, 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.wd ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  store i8 -1, ptr %i.wf, align 1
  %i.wg = getelementptr inbounds nuw i8, ptr %i.df, i64 %indvars.iv.next36.i316.2
  %i.wh = load i8, ptr %i.wg, align 1
  store i8 %i.wh, ptr %i.we, align 1
  %indvars.iv.next36.i316.3 = add nsw i64 %indvars.iv35.i315, -4
  %.not39.i317.3 = icmp eq i64 %indvars.iv.next36.i316.2, 0
  br i1 %.not39.i317.3, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !264

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.wi = shl nuw nsw i64 %indvars.iv.i309, 2
  %i.wj = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.wi ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 3
  store i8 -1, ptr %i.wk, align 1
  %i.wl = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wm = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.wl ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 2
  %i.wo = load i8, ptr %i.wn, align 1
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wj, i64 2
  store i8 %i.wo, ptr %i.wp, align 1
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wm, i64 1
  %i.wr = load i8, ptr %i.wq, align 1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wj, i64 1
  store i8 %i.wr, ptr %i.ws, align 1
  %i.wt = load i8, ptr %i.wm, align 1
  store i8 %i.wt, ptr %i.wj, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.wu = shl nuw nsw i64 %indvars.iv.next.i310, 2
  %i.wv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.wu ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 3
  store i8 -1, ptr %i.ww, align 1
  %i.wx = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.wx ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 2
  %i.xa = load i8, ptr %i.wz, align 1
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wv, i64 2
  store i8 %i.xa, ptr %i.xb, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 1
  %i.xd = load i8, ptr %i.xc, align 1
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wv, i64 1
  store i8 %i.xd, ptr %i.xe, align 1
  %i.xf = load i8, ptr %i.wy, align 1
  store i8 %i.xf, ptr %i.wv, align 1
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
  br i1 %i.cn, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.yo, %.lr.ph382 ], [ %i.do, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.yp, %.lr.ph382 ], [ %i.df, %.lr.ph382.preheader ] ; 9 uses
  %niter768 = phi i32 [ %niter768.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.xg = load i8, ptr %.0249380, align 1
  %i.xh = zext i8 %i.xg to i16
  %i.xi = shl nuw i16 %i.xh, 8
  %i.xj = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.xk = load i8, ptr %i.xj, align 1
  %i.xl = zext i8 %i.xk to i16
  %i.xm = or disjoint i16 %i.xi, %i.xl
  store i16 %i.xm, ptr %.0381, align 2
  %i.xn = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.xo = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.xp = load i8, ptr %i.xo, align 1
  %i.xq = zext i8 %i.xp to i16
  %i.xr = shl nuw i16 %i.xq, 8
  %i.xs = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = zext i8 %i.xt to i16
  %i.xv = or disjoint i16 %i.xr, %i.xu
  store i16 %i.xv, ptr %i.xn, align 2
  %i.xw = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.xx = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xy = load i8, ptr %i.xx, align 1
  %i.xz = zext i8 %i.xy to i16
  %i.ya = shl nuw i16 %i.xz, 8
  %i.yb = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.yc = load i8, ptr %i.yb, align 1
  %i.yd = zext i8 %i.yc to i16
  %i.ye = or disjoint i16 %i.ya, %i.yd
  store i16 %i.ye, ptr %i.xw, align 2
  %i.yf = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.yg = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.yh = load i8, ptr %i.yg, align 1
  %i.yi = zext i8 %i.yh to i16
  %i.yj = shl nuw i16 %i.yi, 8
  %i.yk = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = zext i8 %i.yl to i16
  %i.yn = or disjoint i16 %i.yj, %i.ym
  store i16 %i.yn, ptr %i.yf, align 2
  %i.yo = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter768.next.3 = add i32 %niter768, 4         ; 2 uses
  %niter768.ncmp.3 = icmp eq i32 %niter768.next.3, %unroll_iter767
  br i1 %niter768.ncmp.3, label %.loopexit.loopexit740.unr-lcssa, label %.lr.ph382, !llvm.loop !265

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.bd, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cm, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
  %.1377 = phi ptr [ %i.zi, %.lr.ph378 ], [ %i.do, %.lr.ph378.preheader ] ; 5 uses
  %.1250376 = phi ptr [ %i.zj, %.lr.ph378 ], [ %i.df, %.lr.ph378.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph378 ], [ 0, %.lr.ph378.preheader ]
end_hunk_2
