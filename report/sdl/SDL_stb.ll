Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 85
begin_hunk_0_@stbi__jpeg_load:bb.a
  br i1 %i.aqr, label %bb.gz, label %output_jpeg_nv12.exit.i, !llvm.loop !71

bb.ha:                                            ; preds = %bb.ha, %.lr.ph67.i.i
  %i.aqs = phi ptr [ %i.aoa, %.lr.ph67.i.i ], [ %i.ard, %bb.ha ]
  %.266.i.i = phi i32 [ 0, %.lr.ph67.i.i ], [ %i.arc, %bb.ha ] ; 2 uses
  %i.aqt = load ptr, ptr %i.aof, align 8
  %i.aqu = load i32, ptr %i.amx, align 8
  %i.aqv = mul i32 %i.aqu, %.266.i.i
  %i.aqw = zext i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.aqw
  %i.aqy = load i32, ptr %i.aqs, align 8
  %i.aqz = add i32 %i.aqy, 1
  %i.ara = and i32 %i.aqz, -2
  %i.arb = zext i32 %i.ara to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.aqx, i8 -128, i64 %i.arb, i1 false)
  %i.arc = add nuw nsw i32 %.266.i.i, 1           ; 2 uses
  %i.ard = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 4
  %i.arf = load i32, ptr %i.are, align 4
  %i.arg = add i32 %i.arf, 1
  %i.arh = lshr i32 %i.arg, 1
  %i.ari = icmp samesign ult i32 %i.arc, %i.arh
  br i1 %i.ari, label %bb.ha, label %output_jpeg_nv12.exit.i, !llvm.loop !72

output_jpeg_nv12.exit.i:                          ; preds = %bb.ha, %._crit_edge.i.i, %bb.gy, %.preheader.i.i
  %i.arj = phi ptr [ %i.aql, %._crit_edge.i.i ], [ %i.aoa, %bb.gy ], [ %i.aoa, %.preheader.i.i ], [ %i.ard, %bb.ha ]
  %i.ark = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.arl = load ptr, ptr %i.ark, align 8
  br label %.loopexit398.i

bb.hb:                                            ; preds = %.thread374.i, %.lr.ph.i
  %i.arm = phi i32 [ %.pre578.i, %.lr.ph.i ], [ %i.asq, %.thread374.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread374.i ] ; 3 uses
  %i.arn = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i ; 7 uses
  %i.aro = add i32 %i.arm, 3
  %i.arp = zext i32 %i.aro to i64
  %i.arq = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.arp) #13 ; 2 uses
  %i.arr = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 72
  store ptr %i.arq, ptr %i.ars, align 8
  %.not303.not.i = icmp eq ptr %i.arq, null
  br i1 %.not303.not.i, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %i.art = load ptr, ptr %i.d, align 8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.arv = load i32, ptr %i.aru, align 8          ; 2 uses
  %i.arw = icmp sgt i32 %i.arv, 0
  br i1 %i.arw, label %.lr.ph.i.i341.i, label %.thread375.i

.thread375.i:                                     ; preds = %bb.hc
  %i.arx = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph.i.i341.i:                                  ; preds = %bb.hc
  %wide.trip.count.i.i342.i = zext nneg i32 %i.arv to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hj, %.lr.ph.i.i341.i
  %indvars.iv.i.i343.i = phi i64 [ 0, %.lr.ph.i.i341.i ], [ %indvars.iv.next.i.i347.i, %bb.hj ] ; 2 uses
  %i.ary = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i343.i ; 5 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 56
  %i.asa = load ptr, ptr %i.arz, align 8          ; 2 uses
  %.not.i.i344.i = icmp eq ptr %i.asa, null
  br i1 %.not.i.i344.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @SDL_free_REAL(ptr noundef nonnull %i.asa) #13
  %i.asb = getelementptr inbounds nuw i8, ptr %i.ary, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.asb, i8 0, i64 16, i1 false)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 64 ; 2 uses
  %i.asd = load ptr, ptr %i.asc, align 8          ; 2 uses
  %.not28.i.i345.i = icmp eq ptr %i.asd, null
  br i1 %.not28.i.i345.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @SDL_free_REAL(ptr noundef nonnull %i.asd) #13
  store ptr null, ptr %i.asc, align 8
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ary, i64 80
  store ptr null, ptr %i.ase, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ary, i64 72 ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8          ; 2 uses
  %.not29.i.i346.i = icmp eq ptr %i.asg, null
  br i1 %.not29.i.i346.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @SDL_free_REAL(ptr noundef nonnull %i.asg) #13
  store ptr null, ptr %i.asf, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %indvars.iv.next.i.i347.i = add nuw nsw i64 %indvars.iv.i.i343.i, 1 ; 2 uses
  %exitcond.not.i.i348.i = icmp eq i64 %indvars.iv.next.i.i347.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i.i348.i, label %bb.ho, label %bb.hd, !llvm.loop !2

bb.hk:                                            ; preds = %bb.hb
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arr, i64 4
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arn, i64 24
  %i.asj = load <2 x i32>, ptr %i.alu, align 8
  %i.ask = load <2 x i32>, ptr %i.ash, align 4
  %i.asl = sdiv <2 x i32> %i.asj, %i.ask          ; 3 uses
  store <2 x i32> %i.asl, ptr %i.asi, align 8
  %i.asm = extractelement <2 x i32> %i.asl, i64 1 ; 4 uses
  %i.asn = ashr i32 %i.asm, 1
  %i.aso = getelementptr inbounds nuw i8, ptr %i.arn, i64 36
  store i32 %i.asn, ptr %i.aso, align 4
  %i.asp = load ptr, ptr %i.d, align 8            ; 7 uses
  %i.asq = load i32, ptr %i.asp, align 8          ; 6 uses
  %i.asr = extractelement <2 x i32> %i.asl, i64 0 ; 3 uses
  %i.ass = add i32 %i.asr, -1
  %i.ast = add i32 %i.ass, %i.asq
  %i.asu = udiv i32 %i.ast, %i.asr
  %i.asv = getelementptr inbounds nuw i8, ptr %i.arn, i64 32
  store i32 %i.asu, ptr %i.asv, align 16
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arn, i64 40
  store i32 0, ptr %i.asw, align 8
  %i.asx = getelementptr inbounds nuw i8, ptr %i.arr, i64 48
  %i.asy = load ptr, ptr %i.asx, align 8          ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  store ptr %i.asy, ptr %i.asz, align 16
  %i.ata = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store ptr %i.asy, ptr %i.ata, align 8
  switch i32 %i.asr, label %.thread373.i [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %switch.selectcmp.i = icmp eq i32 %i.asm, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp779.i = icmp eq i32 %i.asm, 1
  %switch.select780.i = select i1 %switch.selectcmp779.i, ptr @resample_row_1, ptr %switch.select.i
  br label %.thread374.i

bb.hm:                                            ; preds = %bb.hk
  switch i32 %i.asm, label %.thread373.i [
    i32 1, label %.thread374.i
    i32 2, label %bb.hn
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.atb = load ptr, ptr %i.i, align 8
  br label %.thread374.i

.thread373.i:                                     ; preds = %bb.hm, %bb.hk
  br label %.thread374.i

bb.ho:                                            ; preds = %bb.hj
  %i.atc = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.thread374.i:                                     ; preds = %.thread373.i, %bb.hn, %bb.hm, %bb.hl
  %stbi__resample_row_v_2.sink.i = phi ptr [ %switch.select780.i, %bb.hl ], [ %i.atb, %bb.hn ], [ @stbi__resample_row_generic, %.thread373.i ], [ @stbi__resample_row_h_2, %bb.hm ]
  store ptr %stbi__resample_row_v_2.sink.i, ptr %i.arn, align 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hb, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.thread374.i
  %.phi.trans.insert580.i = getelementptr inbounds nuw i8, ptr %i.asp, i64 4
  %.pre581.i = load i32, ptr %.phi.trans.insert580.i, align 4 ; 4 uses
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.asq, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.hp, label %stbi__malloc_mad3.exit.thread.i

bb.hp:                                            ; preds = %._crit_edge.i
  %i.atd = icmp eq i32 %i.asq, 0
  br i1 %i.atd, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.hp
  %i.ate = udiv i32 2147483647, %i.asq
  %.not23.i.i.i = icmp samesign ugt i32 %i.akx, %i.ate
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.hp
  %i.atf = mul nuw nsw i32 %i.asq, %i.akx         ; 3 uses
  %i.atg = or i32 %.pre581.i, %i.atf
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.atg, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.hq, label %stbi__malloc_mad3.exit.thread.i

bb.hq:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.ath = icmp eq i32 %.pre581.i, 0
  br i1 %i.ath, label %stbi__mad3sizes_valid.exit.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.hq
  %i.ati = udiv i32 2147483647, %.pre581.i
  %.not.i.i350.i = icmp sgt i32 %i.atf, %i.ati
  br i1 %.not.i.i350.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mad3sizes_valid.exit.i.i

stbi__mad3sizes_valid.exit.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.hq
  %i.atj = mul nuw nsw i32 %.pre581.i, %i.atf     ; 2 uses
  %.not9.i.i = icmp eq i32 %i.atj, 2147483647
  br i1 %.not9.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mad3sizes_valid.exit.i.i
  %i.atk = add nuw nsw i32 %i.atj, 1
  %7 = zext nneg i32 %i.atk to i64
  %i.atl = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %7) #13 ; 4 uses
  %.not299.i = icmp eq ptr %i.atl, null
  %.pre583.i = load ptr, ptr %i.d, align 8        ; 4 uses
  br i1 %.not299.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader397.i

.preheader397.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.atm = getelementptr inbounds nuw i8, ptr %.pre583.i, i64 4
  %i.atn = load i32, ptr %i.atm, align 4
  %.not.i = icmp eq i32 %i.atn, 0
  br i1 %.not.i, label %.loopexit398.i, label %.lr.ph477.i

.lr.ph477.i:                                      ; preds = %.preheader397.i
  %i.ato = getelementptr inbounds nuw i8, ptr %i.d, i64 18508 ; 2 uses
  %i.atp = icmp eq i32 %i.akx, 1                  ; 2 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.atr = zext nneg i32 %i.akx to i64            ; 6 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph444.preheader.i

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mad3sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %._crit_edge.i
  %i.atu = phi ptr [ %i.asp, %stbi__mul2sizes_valid.exit.thread15.i.i.i ], [ %i.asp, %._crit_edge.i ], [ %i.asp, %stbi__mul2sizes_valid.exit.i.i.i ], [ %i.asp, %stbi__mul2sizes_valid.exit12.i.i.i ], [ %i.asp, %stbi__mad3sizes_valid.exit.i.i ], [ %.pre583.i, %stbi__malloc_mad3.exit.i ]
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 8
  %i.atw = load i32, ptr %i.atv, align 8          ; 2 uses
  %i.atx = icmp sgt i32 %i.atw, 0
  br i1 %i.atx, label %.lr.ph.i.i351.i, label %stbi__cleanup_jpeg.exit359.i

.lr.ph.i.i351.i:                                  ; preds = %stbi__malloc_mad3.exit.thread.i
  %wide.trip.count.i.i352.i = zext nneg i32 %i.atw to i64
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hx, %.lr.ph.i.i351.i
  %indvars.iv.i.i353.i = phi i64 [ 0, %.lr.ph.i.i351.i ], [ %indvars.iv.next.i.i357.i, %bb.hx ] ; 2 uses
  %i.aty = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i353.i ; 5 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 56
  %i.aua = load ptr, ptr %i.atz, align 8          ; 2 uses
  %.not.i.i354.i = icmp eq ptr %i.aua, null
  br i1 %.not.i.i354.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @SDL_free_REAL(ptr noundef nonnull %i.aua) #13
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aty, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aub, i8 0, i64 16, i1 false)
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aty, i64 64 ; 2 uses
  %i.aud = load ptr, ptr %i.auc, align 8          ; 2 uses
  %.not28.i.i355.i = icmp eq ptr %i.aud, null
  br i1 %.not28.i.i355.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @SDL_free_REAL(ptr noundef nonnull %i.aud) #13
  store ptr null, ptr %i.auc, align 8
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aty, i64 80
  store ptr null, ptr %i.aue, align 8
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aty, i64 72 ; 2 uses
  %i.aug = load ptr, ptr %i.auf, align 8          ; 2 uses
  %.not29.i.i356.i = icmp eq ptr %i.aug, null
  br i1 %.not29.i.i356.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  call void @SDL_free_REAL(ptr noundef nonnull %i.aug) #13
  store ptr null, ptr %i.auf, align 8
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %indvars.iv.next.i.i357.i = add nuw nsw i64 %indvars.iv.i.i353.i, 1 ; 2 uses
  %exitcond.not.i.i358.i = icmp eq i64 %indvars.iv.next.i.i357.i, %wide.trip.count.i.i352.i
  br i1 %exitcond.not.i.i358.i, label %stbi__cleanup_jpeg.exit359.i, label %bb.hr, !llvm.loop !2

stbi__cleanup_jpeg.exit359.i:                     ; preds = %bb.hx, %stbi__malloc_mad3.exit.thread.i
  %i.auh = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph444.preheader.i:                            ; preds = %.loopexit.i, %.lr.ph477.i
  %i.aui = phi ptr [ %.pre583.i, %.lr.ph477.i ], [ %i.bfm, %.loopexit.i ]
  %.0275476.i = phi i32 [ 0, %.lr.ph477.i ], [ %i.bfn, %.loopexit.i ] ; 2 uses
  %i.auj = load i32, ptr %i.aui, align 8
  br label %.lr.ph444.i

.lr.ph444.i:                                      ; preds = %bb.ia, %.lr.ph444.preheader.i
  %indvars.iv539.i = phi i64 [ 0, %.lr.ph444.preheader.i ], [ %indvars.iv.next540.i, %bb.ia ] ; 4 uses
  %i.auk = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv539.i ; 8 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 36 ; 3 uses
  %i.aum = load i32, ptr %i.aul, align 4          ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.auk, i64 28
  %i.auo = load i32, ptr %i.aun, align 4          ; 2 uses
  %i.aup = ashr i32 %i.auo, 1
  %.not300.i = icmp slt i32 %i.aum, %i.aup        ; 2 uses
  %i.auq = load ptr, ptr %i.auk, align 16
  %i.aur = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv539.i ; 3 uses
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 72
  %i.aut = load ptr, ptr %i.aus, align 8
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auk, i64 16 ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auk, i64 8 ; 3 uses
  %.in.i = select i1 %.not300.i, ptr %i.auv, ptr %i.auu
  %i.auw = load ptr, ptr %.in.i, align 8
  %.in301.i = select i1 %.not300.i, ptr %i.auu, ptr %i.auv
  %i.aux = load ptr, ptr %.in301.i, align 8
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auk, i64 32
  %i.auz = load i32, ptr %i.auy, align 16
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auk, i64 24
  %i.avb = load i32, ptr %i.ava, align 8
  %i.avc = call ptr %i.auq(ptr noundef %i.aut, ptr noundef %i.auw, ptr noundef %i.aux, i32 noundef %i.auz, i32 noundef %i.avb) #13, !inline_history !74
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv539.i
  store ptr %i.avc, ptr %i.avd, align 8
  %i.ave = add nsw i32 %i.aum, 1                  ; 2 uses
  store i32 %i.ave, ptr %i.aul, align 4
  %.not302.i = icmp slt i32 %i.ave, %i.auo
  br i1 %.not302.i, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph444.i
  store i32 0, ptr %i.aul, align 4
  %i.avf = load ptr, ptr %i.auu, align 16         ; 2 uses
  store ptr %i.avf, ptr %i.auv, align 8
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auk, i64 40 ; 2 uses
  %i.avh = load i32, ptr %i.avg, align 8
  %i.avi = add nsw i32 %i.avh, 1                  ; 2 uses
  store i32 %i.avi, ptr %i.avg, align 8
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aur, i64 32
  %i.avk = load i32, ptr %i.avj, align 8
  %i.avl = icmp slt i32 %i.avi, %i.avk
  br i1 %i.avl, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aur, i64 36
  %i.avn = load i32, ptr %i.avm, align 4
  %i.avo = sext i32 %i.avn to i64
  %i.avp = getelementptr inbounds i8, ptr %i.avf, i64 %i.avo
  store ptr %i.avp, ptr %i.auu, align 16
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %.lr.ph444.i
  %indvars.iv.next540.i = add nuw nsw i64 %indvars.iv539.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next540.i, %wide.trip.count.i
  br i1 %exitcond543.not.i, label %._crit_edge445.i, label %.lr.ph444.i, !llvm.loop !75

._crit_edge445.i:                                 ; preds = %bb.ia
  %i.avq = mul i32 %.0275476.i, %i.akx
  %i.avr = mul i32 %i.avq, %i.auj
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw i8, ptr %i.atl, i64 %i.avs ; 12 uses
  br i1 %i.ali, label %bb.ib, label %bb.ii

bb.ib:                                            ; preds = %._crit_edge445.i
  %i.avu = load ptr, ptr %i.c, align 16           ; 5 uses
  %i.avv = load ptr, ptr %i.d, align 8            ; 15 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  %i.avx = load i32, ptr %i.avw, align 8
  switch i32 %i.avx, label %.preheader.i [
    i32 3, label %bb.ic
    i32 4, label %bb.ie
  ]

.preheader.i:                                     ; preds = %bb.ib
  %i.avy = load i32, ptr %i.avv, align 8
  %.not487.i = icmp eq i32 %i.avy, 0
  br i1 %.not487.i, label %.loopexit.i, label %.lr.ph475.i

bb.ic:                                            ; preds = %bb.ib
  br i1 %i.alh, label %.preheader380.i, label %.loopexit.sink.split.i

.preheader380.i:                                  ; preds = %bb.ic
  %i.avz = load i32, ptr %i.avv, align 8
  %.not486.i = icmp eq i32 %i.avz, 0
  br i1 %.not486.i, label %.loopexit.i, label %.lr.ph472.i

.lr.ph472.i:                                      ; preds = %.preheader380.i
  %i.awa = load ptr, ptr %i.ats, align 8
  %i.awb = load ptr, ptr %i.att, align 16
  br label %bb.id

bb.id:                                            ; preds = %bb.id, %.lr.ph472.i
  %indvars.iv568.i = phi i64 [ 0, %.lr.ph472.i ], [ %indvars.iv.next569.i, %bb.id ] ; 4 uses
  %.0270471.i = phi ptr [ %i.avt, %.lr.ph472.i ], [ %i.awl, %bb.id ] ; 5 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avu, i64 %indvars.iv568.i
  %i.awd = load i8, ptr %i.awc, align 1
  store i8 %i.awd, ptr %.0270471.i, align 1
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awa, i64 %indvars.iv568.i
  %i.awf = load i8, ptr %i.awe, align 1
  %i.awg = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 1
  store i8 %i.awf, ptr %i.awg, align 1
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awb, i64 %indvars.iv568.i
  %i.awi = load i8, ptr %i.awh, align 1
  %i.awj = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 2
  store i8 %i.awi, ptr %i.awj, align 1
  %i.awk = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 3
  store i8 -1, ptr %i.awk, align 1
  %i.awl = getelementptr inbounds nuw i8, ptr %.0270471.i, i64 %i.atr
  %indvars.iv.next569.i = add nuw nsw i64 %indvars.iv568.i, 1 ; 2 uses
  %i.awm = load i32, ptr %i.avv, align 8
  %i.awn = zext i32 %i.awm to i64
  %i.awo = icmp samesign ult i64 %indvars.iv.next569.i, %i.awn
  br i1 %i.awo, label %bb.id, label %.loopexit.i, !llvm.loop !76

bb.ie:                                            ; preds = %bb.ib
end_hunk_0
begin_hunk_1_@stbi__resample_row_h_2:bb.a
  %i.aj = add nuw nsw <8 x i32> %i.aa, %i.ai
  %i.ak = shufflevector <8 x i32> %i.ad, <8 x i32> %i.aj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.al = lshr <16 x i32> %i.ak, splat (i32 2)
  %interleaved.vec = trunc nuw <16 x i32> %i.al to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.af, align 1, !alias.scope !111, !noalias !110
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader46 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, 3
  %i.ar = add nuw nsw i32 %i.aq, 2                ; 2 uses
  %i.as = getelementptr i8, ptr %i.an, i64 -1
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.ar, %i.au
  %i.aw = lshr i32 %i.av, 2
  %i.ax = trunc nuw i32 %i.aw to i8
  %i.ay = shl nuw nsw i64 %indvars.iv, 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.az, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.ar, %i.bc
  %i.be = lshr i32 %i.bd, 2
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bf, ptr %i.bg, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !109

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %i.bh = shl nuw nsw i32 %i.n, 1
  %i.bi = zext nneg i32 %i.bh to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.037.lcssa = phi i64 [ 2, %bb.c ], [ %i.bi, %._crit_edge.loopexit ]
  %i.bj = sext i32 %3 to i64
  %i.bk = getelementptr i8, ptr %1, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i16
  %i.bo = mul nuw nsw i16 %i.bn, 3
  %i.bp = sext i32 %i.n to i64
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i16
  %i.bt = add nuw nsw i16 %i.bs, 2
  %i.bu = add nuw nsw i16 %i.bt, %i.bo
  %i.bv = lshr i16 %i.bu, 2
  %i.bw = trunc nuw i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.037.lcssa ; 2 uses
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = load i8, ptr %i.bq, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store i8 %i.by, ptr %i.bz, align 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @stbi__resample_row_generic(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 7 uses
  %wide.trip.count21 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check24 = icmp ult i32 %4, 32
  %i.d = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec25 = and i64 %i.c, 2147483644             ; 3 uses
  %cmp.n30 = icmp eq i64 %n.vec25, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv18
  %i.f = mul nuw nsw i64 %indvars.iv18, %i.c
  %.pre = load i8, ptr %i.e, align 1              ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.g, align 1
  store <16 x i8> %broadcast.splat, ptr %i.h, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <4 x i8> %broadcast.splatinsert26, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <4 x i8> %broadcast.splat27, ptr %i.j, align 1
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !113

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !114

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !115

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @stbi__malloc_mad3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad3sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23.i = icmp sgt i32 %0, %i.c
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.b
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10.i, label %bb.c, label %stbi__mad3sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mad3sizes_valid.exit, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not.i = icmp sgt i32 %i.d, %i.g
  br i1 %.not.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit

stbi__mad3sizes_valid.exit:                       ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i
  %i.h = mul nuw nsw i32 %i.d, %2                 ; 2 uses
  %i.i = xor i32 %3, 2147483647
  %.not9 = icmp sgt i32 %i.h, %i.i
  br i1 %.not9, label %stbi__mad3sizes_valid.exit.thread, label %bb.d

bb.d:                                             ; preds = %stbi__mad3sizes_valid.exit
  %i.j = add nuw nsw i32 %i.h, %3
  %4 = zext nneg i32 %i.j to i64
  %i.k = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %4) #13
  br label %stbi__mad3sizes_valid.exit.thread

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i, %stbi__mad3sizes_valid.exit, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %stbi__mad3sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit12.i ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ], [ null, %stbi__mul2sizes_valid.exit.thread15.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__decode_jpeg_header(ptr nofree noundef nonnull captures(none) initializes((18472, 18473), (18504, 18512)) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 -1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 -1, ptr %i.c, align 8
  %i.d = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0)
  %i.e = icmp eq i8 %i.d, -40
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit32

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %.loopexit32

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) ; 3 uses
  %.036 = zext i8 %i.g to i32                     ; 2 uses
  %i.h = and i32 %.036, 254
  %or.cond37 = icmp ne i32 %i.h, 192
  %i.i = icmp ne i8 %i.g, -62
  %spec.select38 = and i1 %i.i, %or.cond37
  br i1 %spec.select38, label %.lr.ph40, label %._crit_edge

.loopexit:                                        ; preds = %stbi__at_eof.exit.thread, %bb.e
  %.1.in.lcssa = phi i8 [ %i.m, %bb.e ], [ %i.ae, %stbi__at_eof.exit.thread ] ; 3 uses
  %.0 = zext i8 %.1.in.lcssa to i32               ; 2 uses
  %i.j = and i32 %.0, 254
  %or.cond = icmp ne i32 %i.j, 192
  %i.k = icmp ne i8 %.1.in.lcssa, -62
  %spec.select = and i1 %i.k, %or.cond
  br i1 %spec.select, label %.lr.ph40, label %._crit_edge, !llvm.loop !116

.lr.ph40:                                         ; preds = %bb.d, %.loopexit
  %.039 = phi i32 [ %.0, %.loopexit ], [ %.036, %bb.d ]
  %i.l = tail call fastcc i32 @stbi__process_marker(ptr noundef %0, i32 noundef %.039)
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %.loopexit32, label %bb.e

bb.e:                                             ; preds = %.lr.ph40
  %i.m = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %stbi__at_eof.exit.thread
  %i.o = load ptr, ptr %0, align 8                ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %stbi__at_eof.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.s(ptr noundef %i.u) #13, !inline_history !117
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %stbi__at_eof.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %stbi__at_eof.exit.thread28, label %stbi__at_eof.exit

stbi__at_eof.exit:                                ; preds = %.lr.ph, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not31 = icmp ult ptr %i.aa, %i.ac
  br i1 %.not31, label %stbi__at_eof.exit.thread, label %stbi__at_eof.exit.thread28

stbi__at_eof.exit.thread28:                       ; preds = %bb.g, %stbi__at_eof.exit
  %i.ad = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  br label %.loopexit32

stbi__at_eof.exit.thread:                         ; preds = %bb.f, %stbi__at_eof.exit
  %i.ae = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef %0) ; 2 uses
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !118

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.0.in.lcssa = phi i8 [ %i.g, %bb.d ], [ %.1.in.lcssa, %.loopexit ]
  %i.ag = icmp eq i8 %.0.in.lcssa, -62
  %i.ah = zext i1 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18480
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = tail call fastcc i32 @stbi__process_frame_header(ptr noundef %0)
  br label %.loopexit32

.loopexit32:                                      ; preds = %.lr.ph40, %._crit_edge, %bb.c, %stbi__at_eof.exit.thread28, %bb.b
  %.021 = phi i32 [ 0, %bb.b ], [ 0, %stbi__at_eof.exit.thread28 ], [ 1, %bb.c ], [ %i.aj, %._crit_edge ], [ 0, %.lr.ph40 ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @stbi__get_marker(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18472 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %i.a, align 8
  br label %stbi__get8.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.i, ptr %i.d, align 8
  %i.j = load i8, ptr %i.e, align 1
  br label %stbi__get8.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef %i.s) #13, !inline_history !3 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add nsw i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp eq i32 %i.t, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  store i8 0, ptr %i.q, align 8
  br label %stbi__refill_buffer.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ag = sext i32 %i.t to i64
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %i.ag
  %.pre.i = load i8, ptr %i.q, align 8
  br label %stbi__refill_buffer.exit.i

stbi__refill_buffer.exit.i:                       ; preds = %bb.h, %bb.g
  %i.ai = phi i8 [ 0, %bb.g ], [ %.pre.i, %bb.h ]
  %.sink.i.i = phi ptr [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  store ptr %.sink.i.i, ptr %i.f, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  store ptr %i.aj, ptr %i.d, align 8
  br label %stbi__get8.exit

stbi__get8.exit:                                  ; preds = %bb.d, %stbi__refill_buffer.exit.i
  %.0.i = phi i8 [ %i.j, %bb.d ], [ %i.ai, %stbi__refill_buffer.exit.i ]
  %.not10 = icmp eq i8 %.0.i, -1
  br i1 %.not10, label %.preheader, label %stbi__get8.exit.thread

.preheader:                                       ; preds = %stbi__get8.exit, %stbi__get8.exit16
  %i.ak = load ptr, ptr %0, align 8               ; 11 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 200 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp ult ptr %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j
end_hunk_1
begin_hunk_2_@stbi__process_frame_header:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, i8 0, i64 24, i1 false)
  %i.kb = tail call fastcc ptr @stbi__malloc_mad2(i32 noundef %i.jt, i32 noundef %i.jx, i32 noundef 15) ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store ptr %i.kb, ptr %i.kc, align 8
  %i.kd = icmp eq ptr %i.kb, null
  br i1 %i.kd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ke = trunc nuw nsw i64 %indvars.iv280 to i32
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %i.kf)
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd
  %i.kh = ptrtoint ptr %i.kb to i64
  %i.ki = add i64 %i.kh, 15
  %i.kj = and i64 %i.ki, -16
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  store ptr %i.kk, ptr %i.kl, align 8
  %i.km = load i32, ptr %i.jb, align 8
  %.not191 = icmp eq i32 %i.km, 0
  br i1 %.not191, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  %i.ko = load <2 x i32>, ptr %i.ju, align 4      ; 3 uses
  %i.kp = sdiv <2 x i32> %i.ko, splat (i32 8)
  store <2 x i32> %i.kp, ptr %i.kn, align 8
  %i.kq = extractelement <2 x i32> %i.ko, i64 0
  %i.kr = extractelement <2 x i32> %i.ko, i64 1
  %i.ks = tail call fastcc ptr @stbi__malloc_mad3(i32 noundef %i.kq, i32 noundef %i.kr, i32 noundef 2, i32 noundef 15) ; 3 uses
  store ptr %i.ks, ptr %i.ka, align 8
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ku = trunc nuw nsw i64 %indvars.iv280 to i32
  %i.kv = add nuw nsw i32 %i.ku, 1
  %i.kw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  tail call fastcc void @stbi__free_jpeg_components(ptr noundef %0, i32 noundef %i.kv)
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.kx = ptrtoint ptr %i.ks to i64
  %i.ky = add i64 %i.kx, 15
  %i.kz = and i64 %i.ky, -16
  %i.la = inttoptr i64 %i.kz to ptr
  store ptr %i.la, ptr %i.jz, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.lb = load i32, ptr %i.cd, align 8
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp slt i64 %indvars.iv.next281, %i.lc
  br i1 %i.ld, label %bb.bd, label %.loopexit, !llvm.loop !132

.loopexit:                                        ; preds = %bb.bj, %._crit_edge253, %bb.bh, %bb.be, %bb.bc, %bb.ba, %bb.aw, %bb.au, %bb.an, %.loopexit229, %bb.w, %stbi__get8.exit202.thread, %bb.n, %bb.l, %bb.j, %stbi__get8.exit.thread, %bb.b
  %.0179 = phi i32 [ 0, %bb.b ], [ 0, %stbi__get8.exit.thread ], [ 0, %bb.j ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.aw ], [ 0, %stbi__get8.exit202.thread ], [ 0, %bb.w ], [ 0, %.loopexit229 ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.bh ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.be ], [ 1, %._crit_edge253 ], [ 1, %bb.bj ]
  ret i32 %.0179
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @stbi__get8(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p) #13, !inline_history !133 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 8
  br label %stbi__refill_buffer.exit

stbi__refill_buffer.exit:                         ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %stbi__refill_buffer.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %stbi__refill_buffer.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__mad3sizes_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 16) %3) unnamed_addr #5 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i, label %bb.b, label %stbi__mul2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread15, label %stbi__mul2sizes_valid.exit

stbi__mul2sizes_valid.exit:                       ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not23 = icmp sgt i32 %0, %i.c
  br i1 %.not23, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15

stbi__mul2sizes_valid.exit.thread15:              ; preds = %bb.b, %stbi__mul2sizes_valid.exit
  %i.d = mul nuw nsw i32 %1, %0                   ; 3 uses
  %i.e = or i32 %2, %i.d
  %or.cond.not.i10 = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i10, label %bb.c, label %stbi__mul2sizes_valid.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %stbi__mul2sizes_valid.exit12.thread20, label %stbi__mul2sizes_valid.exit12

stbi__mul2sizes_valid.exit12:                     ; preds = %bb.c
  %i.g = udiv i32 2147483647, %2
  %.not = icmp sgt i32 %i.d, %i.g
  br i1 %.not, label %stbi__mul2sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit12.thread20

stbi__mul2sizes_valid.exit12.thread20:            ; preds = %bb.c, %stbi__mul2sizes_valid.exit12
  %i.h = mul nuw nsw i32 %i.d, %2
  %i.i = xor i32 %3, 2147483647
  %i.j = icmp sle i32 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  br label %stbi__mul2sizes_valid.exit.thread

stbi__mul2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15, %bb.a, %stbi__mul2sizes_valid.exit12.thread20, %stbi__mul2sizes_valid.exit12, %stbi__mul2sizes_valid.exit
  %i.l = phi i32 [ 0, %stbi__mul2sizes_valid.exit12 ], [ 0, %stbi__mul2sizes_valid.exit ], [ %i.k, %stbi__mul2sizes_valid.exit12.thread20 ], [ 0, %bb.a ], [ 0, %stbi__mul2sizes_valid.exit.thread15 ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @stbi__malloc_mad2(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 16) %2) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, %0
  %or.cond.not.i.i = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not.i.i, label %bb.b, label %stbi__mad2sizes_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.b
  %i.c = udiv i32 2147483647, %1
  %.not10.i = icmp sgt i32 %0, %i.c
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i
  %i.d = mul nuw nsw i32 %1, %0                   ; 2 uses
  %i.e = xor i32 %2, 2147483647
  %.not7 = icmp sgt i32 %i.d, %i.e
  br i1 %.not7, label %stbi__mad2sizes_valid.exit.thread, label %bb.c

bb.c:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.f = add nuw nsw i32 %i.d, %2
  %3 = zext nneg i32 %i.f to i64
  %i.g = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %3) #13
  br label %stbi__mad2sizes_valid.exit.thread

stbi__mad2sizes_valid.exit.thread:                ; preds = %bb.a, %stbi__mul2sizes_valid.exit.i, %stbi__mad2sizes_valid.exit, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ null, %stbi__mad2sizes_valid.exit ], [ null, %stbi__mul2sizes_valid.exit.i ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stbi__free_jpeg_components(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.h, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.h) #13
  store ptr null, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr null, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.k) #13
  store ptr null, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__jpeg_decode_block(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18468 ; 20 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef %0)
  %.pr = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %.pr, 16
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18464 ; 12 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.j, -1
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.l = zext i8 %i.j to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32                      ; 3 uses
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.o
  br i1 %i.q, label %.thread121.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.f, %i.o
  store i32 %i.r, ptr %i.e, align 8
  %i.s = sub nuw nsw i32 %i.p, %i.o
  store i32 %i.s, ptr %i.a, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  br label %stbi__jpeg_huff_decode.exit

bb.f:                                             ; preds = %.thread
  %i.v = lshr i32 %i.f, 16
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1540
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 10, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp ult i32 %i.v, %i.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.z, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.aa = trunc nuw nsw i64 %indvars.iv.i to i32  ; 5 uses
  %i.ab = icmp eq i64 %indvars.iv.i, 17
  %i.ac = load i32, ptr %i.a, align 4             ; 3 uses
  br i1 %i.ab, label %.thread121.sink.split.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = icmp slt i32 %i.ac, %i.aa
  br i1 %i.ad, label %.thread121.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i32 32, %i.aa
  %i.af = lshr i32 %i.f, %i.ae
  %notmask.i = shl nsw i32 -1, %i.aa
  %i.ag = xor i32 %notmask.i, -1
  %i.ah = and i32 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1612
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.al, 255
  br i1 %or.cond.i, label %.thread121.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = sub nuw nsw i32 %i.ac, %i.aa
  store i32 %i.am, ptr %i.a, align 4
  %i.an = shl i32 %i.f, %i.aa
  store i32 %i.an, ptr %i.e, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ap = zext nneg i32 %i.al to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  br label %stbi__jpeg_huff_decode.exit

stbi__jpeg_huff_decode.exit:                      ; preds = %bb.e, %bb.k
  %.1.i.in.in = phi ptr [ %i.aq, %bb.k ], [ %i.u, %bb.e ]
  %.1.i.in = load i8, ptr %.1.i.in.in, align 1    ; 4 uses
  %.1.i = zext i8 %.1.i.in to i32                 ; 5 uses
  %or.cond = icmp ugt i8 %.1.i.in, 15
  br i1 %or.cond, label %.thread121.sink.split, label %bb.l

bb.l:                                             ; preds = %stbi__jpeg_huff_decode.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(128) %1, i8 0, i64 128, i1 false)
  %.not = icmp eq i8 %.1.i.in, 0
  br i1 %.not, label %stbi__extend_receive.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.a, align 4             ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.1.i
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i = load i32, ptr %i.a, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = phi i32 [ %.pre.i, %bb.n ], [ %i.ar, %bb.m ] ; 2 uses
  %i.au = icmp slt i32 %i.at, %.1.i
  br i1 %i.au, label %stbi__extend_receive.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = load i32, ptr %i.e, align 8             ; 3 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 range(i32 1, 16) %.1.i) ; 2 uses
  %i.ax = zext nneg i8 %.1.i.in to i64
  %notmask.i82 = shl nsw i32 -1, %.1.i            ; 2 uses
  %i.ay = xor i32 %notmask.i82, -1
  %i.az = and i32 %i.aw, %notmask.i82
  store i32 %i.az, ptr %i.e, align 8
  %i.ba = and i32 %i.aw, %i.ay
  %i.bb = sub nuw nsw i32 %i.at, %.1.i
  store i32 %i.bb, ptr %i.a, align 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4
  %.inv.i = icmp slt i32 %i.av, 0
end_hunk_2
begin_hunk_3_@stbi__load_main:bb.a
  store <16 x i8> %wide.load389, ptr %i.aul, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aum = icmp eq i64 %index.next, %n.vec
  br i1 %i.aum, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aud
  br i1 %cmp.n, label %.loopexit.i.i.i.i.i.i.i.backedge, label %vec.epilog.iter.check

.loopexit.i.i.i.i.i.i.i.backedge:                 ; preds = %.preheader98.i.i.i.i.i.i.i.prol.loopexit, %.preheader98.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.lk, %.preheader.preheader.i.i.i.i.i.i.i, %bb.lj, %bb.kj
  %.063.i.i.i.i.i.i.i.be = phi ptr [ %.265.i.i.i.i.i.i.i, %bb.lj ], [ %.265.i.i.i.i.i.i.i, %bb.lk ], [ %i.aqh, %bb.kj ], [ %scevgep140.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i ], [ %i.aun, %vec.epilog.middle.block ], [ %i.aug, %middle.block ], [ %.lcssa483.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ], [ %i.avv, %.preheader98.i.i.i.i.i.i.i ]
  br label %.loopexit.i.i.i.i.i.i.i

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.auf, 0
  br i1 %min.epilog.iters.check, label %.preheader98.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec392 = and i64 %i.aud, 4294967292          ; 5 uses
  %i.aun = getelementptr i8, ptr %.265.i.i.i.i.i.i.i, i64 %n.vec392 ; 2 uses
  %i.auo = getelementptr i8, ptr %i.atx, i64 %n.vec392
  %i.aup = trunc nuw i64 %n.vec392 to i32
  %i.auq = sub i32 %.059.i.i.i.i.i.i.i, %i.aup
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index393 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next397, %vec.epilog.vector.body ] ; 3 uses
  %next.gep394 = getelementptr i8, ptr %.265.i.i.i.i.i.i.i, i64 %index393
  %next.gep395 = getelementptr i8, ptr %i.atx, i64 %index393
  %wide.load396 = load <4 x i8>, ptr %next.gep395, align 1
  store <4 x i8> %wide.load396, ptr %next.gep394, align 1
  %index.next397 = add nuw i64 %index393, 4       ; 2 uses
  %i.aur = icmp eq i64 %index.next397, %n.vec392
  br i1 %i.aur, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !160

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n398 = icmp eq i64 %n.vec392, %i.aud
  br i1 %cmp.n398, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i.preheader

.preheader98.i.i.i.i.i.i.i.preheader:             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.i.i.i.i.i.i.i.ph = phi ptr [ %.265.i.i.i.i.i.i.i, %iter.check ], [ %i.aug, %vec.epilog.iter.check ], [ %i.aun, %vec.epilog.middle.block ] ; 2 uses
  %.060.i.i.i.i.i.i.i.ph = phi ptr [ %i.atx, %iter.check ], [ %i.auh, %vec.epilog.iter.check ], [ %i.auo, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.i.i.i.i.i.ph = phi i32 [ %.059.i.i.i.i.i.i.i, %iter.check ], [ %i.auj, %vec.epilog.iter.check ], [ %i.auq, %vec.epilog.middle.block ] ; 4 uses
  %i.aus = add nsw i32 %.2.i.i.i.i.i.i.i.ph, -1
  %xtraiter = and i32 %.2.i.i.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader98.i.i.i.i.i.i.i.prol.loopexit, label %.preheader98.i.i.i.i.i.i.i.prol

.preheader98.i.i.i.i.i.i.i.prol:                  ; preds = %.preheader98.i.i.i.i.i.i.i.preheader, %.preheader98.i.i.i.i.i.i.i.prol
  %.5.i.i.i.i.i.i.i.prol = phi ptr [ %i.auv, %.preheader98.i.i.i.i.i.i.i.prol ], [ %.5.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.060.i.i.i.i.i.i.i.prol = phi ptr [ %i.aut, %.preheader98.i.i.i.i.i.i.i.prol ], [ %.060.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.2.i.i.i.i.i.i.i.prol = phi i32 [ %i.auw, %.preheader98.i.i.i.i.i.i.i.prol ], [ %.2.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader98.i.i.i.i.i.i.i.prol ], [ 0, %.preheader98.i.i.i.i.i.i.i.preheader ]
  %i.aut = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.auu = load i8, ptr %.060.i.i.i.i.i.i.i.prol, align 1
  %i.auv = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.auu, ptr %.5.i.i.i.i.i.i.i.prol, align 1
  %i.auw = add nsw i32 %.2.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader98.i.i.i.i.i.i.i.prol.loopexit, label %.preheader98.i.i.i.i.i.i.i.prol, !llvm.loop !161

.preheader98.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.preheader98.i.i.i.i.i.i.i.prol, %.preheader98.i.i.i.i.i.i.i.preheader
  %.lcssa483.unr = phi ptr [ poison, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.auv, %.preheader98.i.i.i.i.i.i.i.prol ]
  %.5.i.i.i.i.i.i.i.unr = phi ptr [ %.5.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.auv, %.preheader98.i.i.i.i.i.i.i.prol ]
  %.060.i.i.i.i.i.i.i.unr = phi ptr [ %.060.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.aut, %.preheader98.i.i.i.i.i.i.i.prol ]
  %.2.i.i.i.i.i.i.i.unr = phi i32 [ %.2.i.i.i.i.i.i.i.ph, %.preheader98.i.i.i.i.i.i.i.preheader ], [ %i.auw, %.preheader98.i.i.i.i.i.i.i.prol ]
  %i.aux = icmp ult i32 %i.aus, 7
  br i1 %i.aux, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i

.preheader98.i.i.i.i.i.i.i:                       ; preds = %.preheader98.i.i.i.i.i.i.i.prol.loopexit, %.preheader98.i.i.i.i.i.i.i
  %.5.i.i.i.i.i.i.i = phi ptr [ %i.avv, %.preheader98.i.i.i.i.i.i.i ], [ %.5.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.060.i.i.i.i.i.i.i = phi ptr [ %i.avt, %.preheader98.i.i.i.i.i.i.i ], [ %.060.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i.i.i.i.i.i = phi i32 [ %i.avw, %.preheader98.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ]
  %i.auy = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 1
  %i.auz = load i8, ptr %.060.i.i.i.i.i.i.i, align 1
  %i.ava = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 1
  store i8 %i.auz, ptr %.5.i.i.i.i.i.i.i, align 1
  %i.avb = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 2
  %i.avc = load i8, ptr %i.auy, align 1
  %i.avd = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 2
  store i8 %i.avc, ptr %i.ava, align 1
  %i.ave = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 3
  %i.avf = load i8, ptr %i.avb, align 1
  %i.avg = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 3
  store i8 %i.avf, ptr %i.avd, align 1
  %i.avh = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 4
  %i.avi = load i8, ptr %i.ave, align 1
  %i.avj = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 4
  store i8 %i.avi, ptr %i.avg, align 1
  %i.avk = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 5
  %i.avl = load i8, ptr %i.avh, align 1
  %i.avm = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 5
  store i8 %i.avl, ptr %i.avj, align 1
  %i.avn = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 6
  %i.avo = load i8, ptr %i.avk, align 1
  %i.avp = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 6
  store i8 %i.avo, ptr %i.avm, align 1
  %i.avq = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 7
  %i.avr = load i8, ptr %i.avn, align 1
  %i.avs = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 7
  store i8 %i.avr, ptr %i.avp, align 1
  %i.avt = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 8
  %i.avu = load i8, ptr %i.avq, align 1
  %i.avv = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 8 ; 2 uses
  store i8 %i.avu, ptr %i.avs, align 1
  %i.avw = add nsw i32 %.2.i.i.i.i.i.i.i, -8      ; 2 uses
  %.not79.i.i.i.i.i.i.i.7 = icmp eq i32 %i.avw, 0
  br i1 %.not79.i.i.i.i.i.i.i.7, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i, !llvm.loop !162

.loopexit100.sink.split.i.i.i.i.i.i.i:            ; preds = %bb.kl, %bb.ky, %bb.ks, %bb.km, %bb.jz
  %i.avx = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

stbi__parse_huffman_block.exit.i.i.i.i.i.i:       ; preds = %bb.kl, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = phi i32 [ %.pr.i.i261.i.i.i.i, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %i.aqk, %bb.kl ]
  %i.avy = phi ptr [ %i.ago, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %.063.i.i.i.i.i.i.i, %bb.kl ] ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i32 %i.acm, 0
  br i1 %.not23.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, !llvm.loop !163

stbi__zexpand.exit19.thread.i.i.i.i:              ; preds = %stbi__compute_huffman_codes.exit.i.i.i.i.i.i, %bb.ia, %bb.hz, %stbi__zreceive.exit31.i.i.i.i.i.i, %.loopexit100.sink.split.i.i.i.i.i.i.i, %bb.lg, %bb.le, %bb.ld, %bb.lb, %bb.kh, %bb.kf, %bb.ke, %bb.kc, %stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i, %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, %stbi__parse_zlib_header.exit.thread.i.i.i.i.i.i
  %i.avz = load ptr, ptr %i.zy, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.avz) #13
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i: ; preds = %stbi__zexpand.exit19.thread.i.i.i.i, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.gt, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i: ; preds = %stbi__parse_huffman_block.exit.i.i.i.i.i.i
  %i.awa = load ptr, ptr %i.zy, align 8           ; 5 uses
  %i.awb = ptrtoint ptr %i.avy to i64
  %i.awc = ptrtoint ptr %i.awa to i64
  %i.awd = sub i64 %i.awb, %i.awc
  %i.awe = trunc i64 %i.awd to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr %i.awa, ptr %i.gt, align 8
  %i.awf = icmp eq ptr %i.awa, null
  br i1 %i.awf, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ll

bb.ll:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i
  %i.awg = load ptr, ptr %i.gu, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.awg) #13
  store ptr null, ptr %i.gu, align 8
  %i.awh = load i32, ptr %i.mt, align 8           ; 2 uses
  %i.awi = add nsw i32 %i.awh, 1                  ; 2 uses
  %i.awj = icmp eq i32 %4, %i.awi
  %i.awk = icmp ne i32 %4, 3
  %or.cond5.not288.not293.i.i.i = and i1 %i.awk, %i.awj
  %i.awl = icmp eq i8 %.0258.i.i.i, 0             ; 3 uses
  %or.cond7.not290.i.i.i = select i1 %or.cond5.not288.not293.i.i.i, i1 %i.awl, i1 false
  %i.awm = icmp ne i8 %.0254.i.i.i, 0             ; 2 uses
  %or.cond10.i.i.i = select i1 %or.cond7.not290.i.i.i, i1 true, i1 %i.awm
  %spec.select1611.i.i.i = select i1 %or.cond10.i.i.i, i32 %i.awi, i32 %i.awh ; 4 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1611.i.i.i, ptr %i.awn, align 4
  %i.awo = load i32, ptr %i.mu, align 8           ; 4 uses
  %i.awp = icmp eq i32 %i.awo, 16
  %i.awq = zext i1 %i.awp to i32
  %i.awr = shl i32 %spec.select1611.i.i.i, %i.awq ; 6 uses
  %.not.i373.i.i.i = icmp eq i32 %.0232.i.i.i, 0
  %i.aws = load ptr, ptr %10, align 8             ; 3 uses
  %i.awt = load i32, ptr %i.aws, align 8          ; 4 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.awv = load i32, ptr %i.awu, align 4          ; 5 uses
  br i1 %.not.i373.i.i.i, label %stbi__create_png_image.exit.i.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aww = or i32 %i.awv, %i.awt
  %or.cond.not.i.i.i.i.i.i.i = icmp sgt i32 %i.aww, -1
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.ln, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.ln:                                            ; preds = %bb.lm
  %i.awx = icmp eq i32 %i.awv, 0
  br i1 %i.awx, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.i.i.i.i.i.i:           ; preds = %bb.ln
  %i.awy = udiv i32 2147483647, %i.awv
  %.not23.i.i.i374.i.i.i = icmp sgt i32 %i.awt, %i.awy
  br i1 %.not23.i.i.i374.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i:  ; preds = %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.ln
  %i.awz = mul nuw nsw i32 %i.awv, %i.awt         ; 3 uses
  %i.axa = or i32 %i.awr, %i.awz
  %or.cond.not.i10.i.i.i.i.i.i = icmp sgt i32 %i.axa, -1
  br i1 %or.cond.not.i10.i.i.i.i.i.i, label %bb.lo, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.lo:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i
  %i.axb = icmp eq i32 %i.awr, 0
  br i1 %i.axb, label %stbi__malloc_mad3.exit.i.i.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i.i.i.i:         ; preds = %bb.lo
  %i.axc = udiv i32 2147483647, %i.awr
  %.not.i.i.i375.i.i.i = icmp sgt i32 %i.awz, %i.axc
  br i1 %.not.i.i.i375.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__malloc_mad3.exit.i.i.i.i

stbi__malloc_mad3.exit.i.i.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %bb.lo
  %i.axd = mul nuw nsw i32 %i.awr, %i.awz
  %11 = zext nneg i32 %i.axd to i64
  %i.axe = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %11) #13 ; 6 uses
  %.not92.i.i.i.i = icmp eq ptr %i.axe, null
  br i1 %.not92.i.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %.preheader100.i.i.i.i

.preheader100.i.i.i.i:                            ; preds = %stbi__malloc_mad3.exit.i.i.i.i
  %12 = zext nneg i32 %i.awr to i64               ; 9 uses
  br label %bb.lp

stbi__malloc_mad3.exit.thread.i.i.i.i:            ; preds = %stbi__malloc_mad3.exit.i.i.i.i, %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.lm
  %i.axf = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.lp:                                            ; preds = %bb.lr, %.preheader100.i.i.i.i
  %i.axg = phi ptr [ %i.aws, %.preheader100.i.i.i.i ], [ %i.bai, %bb.lr ] ; 4 uses
  %indvars.iv112.i.i.i.i = phi i64 [ 0, %.preheader100.i.i.i.i ], [ %indvars.iv.next113.i.i.i.i, %bb.lr ] ; 5 uses
  %.076106.i.i.i.i = phi ptr [ %i.awa, %.preheader100.i.i.i.i ], [ %.379.i.i.i.i, %bb.lr ] ; 3 uses
  %.085104.i.i.i.i = phi i32 [ %i.awe, %.preheader100.i.i.i.i ], [ %.388.i.i.i.i, %bb.lr ] ; 3 uses
  %i.axh = load i32, ptr %i.axg, align 8
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i.i.i.i
  %i.axj = load i32, ptr %i.axi, align 4          ; 2 uses
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i.i.i.i
  %i.axl = load i32, ptr %i.axk, align 4          ; 4 uses
  %i.axm = xor i32 %i.axj, -1
  %i.axn = add i32 %i.axh, %i.axm
  %i.axo = add i32 %i.axn, %i.axl                 ; 2 uses
  %i.axp = udiv i32 %i.axo, %i.axl                ; 6 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axg, i64 4
  %i.axr = load i32, ptr %i.axq, align 4
  %i.axs = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i.i.i.i
  %i.axt = load i32, ptr %i.axs, align 4          ; 2 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i.i.i.i
  %i.axv = load i32, ptr %i.axu, align 4          ; 4 uses
  %i.axw = xor i32 %i.axt, -1
  %i.axx = add i32 %i.axr, %i.axw
  %i.axy = add i32 %i.axx, %i.axv                 ; 2 uses
  %i.axz = udiv i32 %i.axy, %i.axv                ; 4 uses
  %i.aya = icmp ule i32 %i.axl, %i.axo
  %i.ayb = icmp ule i32 %i.axv, %i.axy
  %or.cond.i376.i.i.i = select i1 %i.aya, i1 %i.ayb, i1 false
  br i1 %or.cond.i376.i.i.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.ayd = load i32, ptr %i.ayc, align 8
  %i.aye = mul i32 %i.axp, %i.awo
  %i.ayf = mul i32 %i.aye, %i.ayd
  %i.ayg = add nsw i32 %i.ayf, 7
  %i.ayh = ashr i32 %i.ayg, 3
  %i.ayi = add nsw i32 %i.ayh, 1
  %i.ayj = mul nsw i32 %i.ayi, %i.axz             ; 2 uses
  %i.ayk = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef %.076106.i.i.i.i, i32 noundef %.085104.i.i.i.i, i32 noundef %spec.select1611.i.i.i, i32 noundef %i.axp, i32 noundef %i.axz, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not93.not.i.i.i.i = icmp eq i32 %i.ayk, 0
  %.pre.i = load ptr, ptr %10, align 8            ; 4 uses
  br i1 %.not93.not.i.i.i.i, label %.thread.i382.i.i.i, label %.preheader99.i.i.i.i

.preheader99.i.i.i.i:                             ; preds = %bb.lq
  %i.ayl = icmp sgt i32 %i.axz, 0
  %i.aym = icmp sgt i32 %i.axp, 0
  %or.cond107.i.i.i.i = and i1 %i.aym, %i.ayl
  %.pre.i378.i.i.i = load ptr, ptr %i.gv, align 8 ; 4 uses
  br i1 %or.cond107.i.i.i.i, label %.preheader.lr.ph.split.i.i.i.i, label %._crit_edge103.split.i.i.i.i

.preheader.lr.ph.split.i.i.i.i:                   ; preds = %.preheader99.i.i.i.i
  %i.ayn = sext i32 %i.axl to i64                 ; 3 uses
  %i.ayo = sext i32 %i.axj to i64                 ; 3 uses
  %i.ayp = zext nneg i32 %i.axp to i64            ; 3 uses
  %i.ayq = zext nneg i32 %i.axz to i64
  %xtraiter798 = and i64 %i.ayp, 1
  %i.ayr = icmp eq i32 %i.axp, 1
  %unroll_iter802 = and i64 %i.ayp, 2147483646
  %lcmp.mod800.not = icmp eq i64 %xtraiter798, 0
  %lcmp.mod801 = trunc i32 %i.axp to i1
  br label %.preheader.i379.i.i.i

.thread.i382.i.i.i:                               ; preds = %bb.lq
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.axe) #13
  br label %stbi__parse_png_file.exit.thread.i.i

.preheader.i379.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %.preheader.lr.ph.split.i.i.i.i
  %indvars.iv109.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i ], [ %indvars.iv.next110.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ays = trunc i64 %indvars.iv109.i.i.i.i to i32
  %i.ayt = mul i32 %i.axv, %i.ays
  %i.ayu = add i32 %i.ayt, %i.axt
  %i.ayv = mul i32 %i.ayu, %i.awr                 ; 3 uses
  %i.ayw = mul nuw nsw i64 %indvars.iv109.i.i.i.i, %i.ayp ; 3 uses
  br i1 %i.ayr, label %.epil.preheader797, label %.preheader.i379.i.i.i.new

.preheader.i379.i.i.i.new:                        ; preds = %.preheader.i379.i.i.i, %.preheader.i379.i.i.i.new
  %indvars.iv.i380.i.i.i = phi i64 [ %indvars.iv.next.i381.i.i.i.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ] ; 4 uses
  %niter803 = phi i64 [ %niter803.next.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ]
  %i.ayx = mul nsw i64 %indvars.iv.i380.i.i.i, %i.ayn
  %i.ayy = add nsw i64 %i.ayx, %i.ayo
  %i.ayz = load i32, ptr %.pre.i, align 8
  %i.aza = mul i32 %i.ayv, %i.ayz
  %i.azb = zext i32 %i.aza to i64
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.azb
  %i.azd = mul nsw i64 %i.ayy, %12
  %i.aze = getelementptr inbounds i8, ptr %i.azc, i64 %i.azd
  %i.azf = add nuw nsw i64 %indvars.iv.i380.i.i.i, %i.ayw
  %i.azg = mul nuw nsw i64 %i.azf, %12
  %i.azh = getelementptr inbounds nuw i8, ptr %.pre.i378.i.i.i, i64 %i.azg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aze, ptr align 1 %i.azh, i64 %12, i1 false)
  %indvars.iv.next.i381.i.i.i = or disjoint i64 %indvars.iv.i380.i.i.i, 1 ; 2 uses
  %i.azi = mul nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayn
  %i.azj = add nsw i64 %i.azi, %i.ayo
  %i.azk = load i32, ptr %.pre.i, align 8
  %i.azl = mul i32 %i.ayv, %i.azk
  %i.azm = zext i32 %i.azl to i64
  %i.azn = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.azm
  %i.azo = mul nsw i64 %i.azj, %12
  %i.azp = getelementptr inbounds i8, ptr %i.azn, i64 %i.azo
  %i.azq = add nuw nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayw
  %i.azr = mul nuw nsw i64 %i.azq, %12
  %i.azs = getelementptr inbounds nuw i8, ptr %.pre.i378.i.i.i, i64 %i.azr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azp, ptr align 1 %i.azs, i64 %12, i1 false)
  %indvars.iv.next.i381.i.i.i.1 = add nuw nsw i64 %indvars.iv.i380.i.i.i, 2 ; 2 uses
  %niter803.next.1 = add i64 %niter803, 2         ; 2 uses
  %niter803.ncmp.1.not = icmp eq i64 %niter803.next.1, %unroll_iter802
  br i1 %niter803.ncmp.1.not, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i379.i.i.i.new, !llvm.loop !164

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.preheader.i379.i.i.i.new
  br i1 %lcmp.mod800.not, label %._crit_edge.i.i.i.i, label %.epil.preheader797

.epil.preheader797:                               ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i379.i.i.i
  %indvars.iv.i380.i.i.i.epil.init = phi i64 [ 0, %.preheader.i379.i.i.i ], [ %indvars.iv.next.i381.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod801)
  %i.azt = mul nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayn
  %i.azu = add nsw i64 %i.azt, %i.ayo
  %i.azv = load i32, ptr %.pre.i, align 8
  %i.azw = mul i32 %i.ayv, %i.azv
  %i.azx = zext i32 %i.azw to i64
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axe, i64 %i.azx
  %i.azz = mul nsw i64 %i.azu, %12
  %i.baa = getelementptr inbounds i8, ptr %i.azy, i64 %i.azz
  %i.bab = add nuw nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayw
  %i.bac = mul nuw nsw i64 %i.bab, %12
  %i.bad = getelementptr inbounds nuw i8, ptr %.pre.i378.i.i.i, i64 %i.bac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.baa, ptr align 1 %i.bad, i64 %12, i1 false)
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.epil.preheader797
  %indvars.iv.next110.i.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i.i, 1 ; 2 uses
  %i.bae = icmp samesign ult i64 %indvars.iv.next110.i.i.i.i, %i.ayq
  br i1 %i.bae, label %.preheader.i379.i.i.i, label %._crit_edge103.split.i.i.i.i, !llvm.loop !165

._crit_edge103.split.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i, %.preheader99.i.i.i.i
  tail call void @SDL_free_REAL(ptr noundef %.pre.i378.i.i.i) #13
  %i.baf = zext i32 %i.ayj to i64
  %i.bag = getelementptr inbounds nuw i8, ptr %.076106.i.i.i.i, i64 %i.baf
  %i.bah = sub i32 %.085104.i.i.i.i, %i.ayj
  br label %bb.lr

bb.lr:                                            ; preds = %._crit_edge103.split.i.i.i.i, %bb.lp
  %i.bai = phi ptr [ %i.axg, %bb.lp ], [ %.pre.i, %._crit_edge103.split.i.i.i.i ]
  %.388.i.i.i.i = phi i32 [ %.085104.i.i.i.i, %bb.lp ], [ %i.bah, %._crit_edge103.split.i.i.i.i ]
  %.379.i.i.i.i = phi ptr [ %.076106.i.i.i.i, %bb.lp ], [ %i.bag, %._crit_edge103.split.i.i.i.i ]
  %indvars.iv.next113.i.i.i.i = add nuw nsw i64 %indvars.iv112.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i377.i.i.i = icmp eq i64 %indvars.iv.next113.i.i.i.i, 7
  br i1 %exitcond.not.i377.i.i.i, label %stbi__create_png_image.exit.thread439.i.i.i, label %bb.lp, !llvm.loop !166

stbi__create_png_image.exit.thread439.i.i.i:      ; preds = %bb.lr
  store ptr %i.axe, ptr %i.gv, align 8
  br label %bb.ls

stbi__create_png_image.exit.i.i.i:                ; preds = %bb.ll
  %i.baj = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef nonnull readonly %i.awa, i32 noundef %i.awe, i32 noundef %spec.select1611.i.i.i, i32 noundef %i.awt, i32 noundef %i.awv, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not294.i.i.i = icmp eq i32 %i.baj, 0
  br i1 %.not294.i.i.i, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ls

bb.ls:                                            ; preds = %stbi__create_png_image.exit.i.i.i, %stbi__create_png_image.exit.thread439.i.i.i
  br i1 %i.awm, label %bb.lt, label %stbi__compute_transparency16.exit.thread.i.i.i

bb.lt:                                            ; preds = %bb.ls
  %i.bak = load i32, ptr %i.mu, align 8
  %i.bal = icmp eq i32 %i.bak, 16
  %i.bam = load i32, ptr %i.awn, align 4
  %.val.i.i.i = load ptr, ptr %10, align 8        ; 2 uses
  %.val325.i.i.i = load ptr, ptr %i.gv, align 8   ; 8 uses
  %.val.val.i.i.i = load i32, ptr %.val.i.i.i, align 8
  %i.ban = getelementptr i8, ptr %.val.i.i.i, i64 4
  %.val.val326.i.i.i = load i32, ptr %i.ban, align 4
  %i.bao = mul i32 %.val.val326.i.i.i, %.val.val.i.i.i ; 15 uses
  %i.bap = icmp eq i32 %i.bam, 2                  ; 2 uses
  %.not8.i.i.i.i = icmp eq i32 %i.bao, 0          ; 4 uses
  br i1 %i.bal, label %bb.lu, label %bb.me

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.bap, label %.preheader.i385.i.i.i, label %.preheader1.i.i.i.i

.preheader1.i.i.i.i:                              ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader1.i.i.i.i
  %i.baq = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bar = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.pre11.i.i.i.i = load i16, ptr %i.f, align 2   ; 3 uses
  %i.bas = load i16, ptr %i.baq, align 2          ; 3 uses
  %i.bat = load i16, ptr %i.bar, align 2          ; 3 uses
  %xtraiter818 = and i32 %i.bao, 1
  %i.bau = icmp eq i32 %i.bao, 1
  br i1 %i.bau, label %.epil.preheader817, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter822 = and i32 %i.bao, -2
  br label %bb.lv

.preheader.i385.i.i.i:                            ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i.preheader.i.i.i

.lr.ph7.i.preheader.i.i.i:                        ; preds = %.preheader.i385.i.i.i
  %i.bav = load i16, ptr %i.f, align 2            ; 5 uses
  %xtraiter824 = and i32 %i.bao, 3                ; 3 uses
  %i.baw = icmp ult i32 %i.bao, 4
  br i1 %i.baw, label %.lr.ph7.i.i.i.i.epil.preheader, label %.lr.ph7.i.preheader.i.i.i.new

.lr.ph7.i.preheader.i.i.i.new:                    ; preds = %.lr.ph7.i.preheader.i.i.i
  %unroll_iter828 = and i32 %i.bao, -4
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %.lr.ph7.i.i.i.i, %.lr.ph7.i.preheader.i.i.i.new
  %.06.i.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph7.i.preheader.i.i.i.new ], [ %i.bbq, %.lr.ph7.i.i.i.i ] ; 9 uses
  %niter829 = phi i32 [ 0, %.lr.ph7.i.preheader.i.i.i.new ], [ %niter829.next.3, %.lr.ph7.i.i.i.i ]
  %i.bax = load i16, ptr %.06.i.i.i.i, align 2
  %i.bay = icmp ne i16 %i.bax, %i.bav
  %i.baz = sext i1 %i.bay to i16
  %i.bba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 2
  store i16 %i.baz, ptr %i.bba, align 2
  %i.bbb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4
  %i.bbc = load i16, ptr %i.bbb, align 2
  %i.bbd = icmp ne i16 %i.bbc, %i.bav
  %i.bbe = sext i1 %i.bbd to i16
  %i.bbf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 6
  store i16 %i.bbe, ptr %i.bbf, align 2
  %i.bbg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.bbh = load i16, ptr %i.bbg, align 2
  %i.bbi = icmp ne i16 %i.bbh, %i.bav
  %i.bbj = sext i1 %i.bbi to i16
  %i.bbk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 10
  store i16 %i.bbj, ptr %i.bbk, align 2
  %i.bbl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 12
  %i.bbm = load i16, ptr %i.bbl, align 2
  %i.bbn = icmp ne i16 %i.bbm, %i.bav
  %i.bbo = sext i1 %i.bbn to i16
  %i.bbp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 14
  store i16 %i.bbo, ptr %i.bbp, align 2
  %i.bbq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16 ; 2 uses
  %niter829.next.3 = add i32 %niter829, 4         ; 2 uses
  %niter829.ncmp.3 = icmp eq i32 %niter829.next.3, %unroll_iter828
  br i1 %niter829.ncmp.3, label %stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph7.i.i.i.i, !llvm.loop !167

bb.lv:                                            ; preds = %bb.md, %.lr.ph.i.i.i.i.new
  %.14.i.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph.i.i.i.i.new ], [ %i.bck, %bb.md ] ; 9 uses
  %niter823 = phi i32 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter823.next.1, %bb.md ]
  %i.bbr = load i16, ptr %.14.i.i.i.i, align 2
  %i.bbs = icmp eq i16 %i.bbr, %.pre11.i.i.i.i
  br i1 %i.bbs, label %bb.lw, label %bb.lz

bb.lw:                                            ; preds = %bb.lv
  %i.bbt = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 2
  %i.bbu = load i16, ptr %i.bbt, align 2
  %i.bbv = icmp eq i16 %i.bbu, %i.bas
  br i1 %i.bbv, label %bb.lx, label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  %i.bbw = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 4
  %i.bbx = load i16, ptr %i.bbw, align 2
  %i.bby = icmp eq i16 %i.bbx, %i.bat
  br i1 %i.bby, label %bb.ly, label %bb.lz

bb.ly:                                            ; preds = %bb.lx
  %i.bbz = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 6
  store i16 0, ptr %i.bbz, align 2
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lx, %bb.lw, %bb.lv
  %i.bca = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 8
  %i.bcb = load i16, ptr %i.bca, align 2
  %i.bcc = icmp eq i16 %i.bcb, %.pre11.i.i.i.i
  br i1 %i.bcc, label %bb.ma, label %bb.md

bb.ma:                                            ; preds = %bb.lz
  %i.bcd = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 10
  %i.bce = load i16, ptr %i.bcd, align 2
  %i.bcf = icmp eq i16 %i.bce, %i.bas
  br i1 %i.bcf, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %bb.ma
  %i.bcg = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 12
  %i.bch = load i16, ptr %i.bcg, align 2
  %i.bci = icmp eq i16 %i.bch, %i.bat
  br i1 %i.bci, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bcj = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 14
  store i16 0, ptr %i.bcj, align 2
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb, %bb.ma, %bb.lz
  %i.bck = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 16 ; 2 uses
  %niter823.next.1 = add i32 %niter823, 2         ; 2 uses
  %niter823.ncmp.1 = icmp eq i32 %niter823.next.1, %unroll_iter822
  br i1 %niter823.ncmp.1, label %stbi__compute_transparency16.exit.i.i.i.loopexit403.unr-lcssa, label %bb.lv, !llvm.loop !168

bb.me:                                            ; preds = %bb.lt
  br i1 %i.bap, label %.preheader.i394.i.i.i, label %.preheader1.i387.i.i.i

.preheader1.i387.i.i.i:                           ; preds = %bb.me
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph.i388.i.i.i

.lr.ph.i388.i.i.i:                                ; preds = %.preheader1.i387.i.i.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.pre11.i389.i.i.i = load i8, ptr %i.e, align 1 ; 3 uses
  %i.bcn = load i8, ptr %i.bcl, align 1           ; 3 uses
  %i.bco = load i8, ptr %i.bcm, align 1           ; 3 uses
  %xtraiter805 = and i32 %i.bao, 1
  %i.bcp = icmp eq i32 %i.bao, 1
  br i1 %i.bcp, label %.epil.preheader804, label %.lr.ph.i388.i.i.i.new

.lr.ph.i388.i.i.i.new:                            ; preds = %.lr.ph.i388.i.i.i
  %unroll_iter809 = and i32 %i.bao, -2
  br label %bb.mf

.preheader.i394.i.i.i:                            ; preds = %bb.me
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i395.preheader.i.i.i

.lr.ph7.i395.preheader.i.i.i:                     ; preds = %.preheader.i394.i.i.i
  %i.bcq = load i8, ptr %i.e, align 1             ; 5 uses
  %xtraiter811 = and i32 %i.bao, 3                ; 3 uses
  %i.bcr = icmp ult i32 %i.bao, 4
  br i1 %i.bcr, label %.lr.ph7.i395.i.i.i.epil.preheader, label %.lr.ph7.i395.preheader.i.i.i.new

.lr.ph7.i395.preheader.i.i.i.new:                 ; preds = %.lr.ph7.i395.preheader.i.i.i
  %unroll_iter815 = and i32 %i.bao, -4
  br label %.lr.ph7.i395.i.i.i

.lr.ph7.i395.i.i.i:                               ; preds = %.lr.ph7.i395.i.i.i, %.lr.ph7.i395.preheader.i.i.i.new
end_hunk_3
begin_hunk_4_@stbi__load_main:bb.a
  %.1226.i.i.i = phi i32 [ %.0225.i.i.i, %stbi__getn.exit.thread432.i.i.i ], [ %.0225.i.i.i, %stbi__getn.exit.i.i.i ], [ 1, %.thread.i.i.i.i ], [ %.0225.i.i.i, %.thread.i408.i.i.i ], [ %.0225.i.i.i, %.preheader466.i.i.i ], [ %.0225.i.i.i, %.preheader468.i.i.i ], [ %.0225.i.i.i, %.preheader.i.i.i ], [ 1, %bb.cz ], [ 1, %bb.db ], [ 1, %bb.de ], [ %.0225.i.i.i, %bb.eq ], [ %.0225.i.i.i, %bb.eo ], [ %.0225.i.i.i, %bb.ne ], [ %.0225.i.i.i, %bb.ng ], [ %.0225.i.i.i, %bb.nj ], [ %.0225.i.i.i, %.preheader470.i.i.i ], [ %.0225.i.i.i, %.lr.ph785.i.i.i ], [ %.0225.i.i.i, %stbi__get8.exit357.i.i.i ], [ %.0225.i.i.i, %.lr.ph787.i.i.i ], [ %.0225.i.i.i, %stbi__get8.exit363.i.i.i ]
  %i.bkj = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  %i.bkk = tail call fastcc i32 @stbi__get16be(ptr noundef nonnull %0) ; 0 uses
  br label %stbi__check_png_header.exit.i.i.i

stbi__parse_png_file.exit.thread.i.loopexit.i:    ; preds = %bb.gm
  store ptr %i.nu, ptr %i.gu, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi__parse_png_file.exit.thread.i.i:             ; preds = %stbi__parse_png_file.exit.thread.i.loopexit.i, %bb.nd, %bb.nb, %stbi__expand_png_palette.exit.thread.i.i.i, %stbi__create_png_image.exit.i.i.i, %.thread.i382.i.i.i, %stbi__malloc_mad3.exit.thread.i.i.i.i, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i, %bb.gv, %bb.gt, %stbi__getn.exit.thread.i.i.i, %.thread428.i.i.i, %bb.gl, %bb.gj, %bb.gh, %bb.ge, %bb.gc, %bb.fv, %bb.ft, %bb.fq, %bb.fo, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.em, %bb.ej, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ea, %bb.dt, %bb.dm, %bb.dk, %bb.di, %bb.dg, %stbi__check_png_header.exit.thread.i.i.i, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.pre790.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert791.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre792.i = load ptr, ptr %.phi.trans.insert791.i, align 8
  br label %bb.nw

bb.nk:                                            ; preds = %bb.mz, %bb.my, %.thread444.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.bkl = load i32, ptr %i.mu, align 8           ; 2 uses
  %i.bkm = icmp slt i32 %i.bkl, 9                 ; 2 uses
  br i1 %i.bkm, label %bb.nn, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bkn = icmp eq i32 %i.bkl, 16
  br i1 %i.bkn, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.bko = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25) #13 ; 0 uses
  br label %stbi__png_load.exit

bb.nn:                                            ; preds = %bb.nl, %bb.nk
  %storemerge.i.i = phi i32 [ 8, %bb.nk ], [ 16, %bb.nl ]
  store i32 %storemerge.i.i, ptr %5, align 4
  %i.bkp = load ptr, ptr %i.gv, align 8           ; 5 uses
  %.not57.i.i = icmp eq i32 %4, 0
  %.pre704.i.i = load ptr, ptr %10, align 8       ; 6 uses
  br i1 %.not57.i.i, label %._crit_edge.i.i, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bkq = getelementptr inbounds nuw i8, ptr %.pre704.i.i, i64 12 ; 2 uses
  %i.bkr = load i32, ptr %i.bkq, align 4          ; 3 uses
  %.not58.i.i = icmp eq i32 %4, %i.bkr
  br i1 %.not58.i.i, label %._crit_edge.i.i, label %bb.np

bb.np:                                            ; preds = %bb.no
  br i1 %i.gn, label %bb.nt, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.bks = load i32, ptr %.pre704.i.i, align 8    ; 2 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %.pre704.i.i, i64 4
  %i.bku = load i32, ptr %i.bkt, align 4          ; 2 uses
  br i1 %i.bkm, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %bb.nq
  %i.bkv = tail call fastcc ptr @stbi__convert_format(ptr noundef %i.bkp, i32 noundef %i.bkr, i32 noundef range(i32 0, 5) %4, i32 noundef %i.bks, i32 noundef %i.bku)
  br label %bb.nt

bb.ns:                                            ; preds = %bb.nq
  %i.bkw = tail call fastcc ptr @stbi__convert_format16(ptr noundef %i.bkp, i32 noundef %i.bkr, i32 noundef range(i32 0, 5) %4, i32 noundef %i.bks, i32 noundef %i.bku)
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %bb.nr, %bb.np
  %.0.i.i = phi ptr [ %i.bkp, %bb.np ], [ %i.bkv, %bb.nr ], [ %i.bkw, %bb.ns ] ; 2 uses
  store i32 %4, ptr %i.bkq, align 4
  %i.bkx = icmp eq ptr %.0.i.i, null
  br i1 %i.bkx, label %stbi__png_load.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.nt, %bb.no, %bb.nn
  %.1.i.i = phi ptr [ %i.bkp, %bb.nn ], [ %i.bkp, %bb.no ], [ %.0.i.i, %bb.nt ] ; 2 uses
  %i.bky = load i32, ptr %.pre704.i.i, align 8
  store i32 %i.bky, ptr %1, align 4
  %i.bkz = getelementptr inbounds nuw i8, ptr %.pre704.i.i, i64 4
  %i.bla = load i32, ptr %i.bkz, align 4
  store i32 %i.bla, ptr %2, align 4
  br i1 %i.gn, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %._crit_edge.i.i
  store i32 1, ptr %3, align 4
  br label %bb.nw

bb.nv:                                            ; preds = %._crit_edge.i.i
  %i.blb = getelementptr inbounds nuw i8, ptr %.pre704.i.i, i64 8
  %i.blc = load i32, ptr %i.blb, align 8
  store i32 %i.blc, ptr %3, align 4
  br label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %bb.nu, %stbi__parse_png_file.exit.thread.i.i
  %i.bld = phi ptr [ null, %bb.nu ], [ null, %bb.nv ], [ %.pre792.i, %stbi__parse_png_file.exit.thread.i.i ]
  %i.ble = phi ptr [ null, %bb.nu ], [ null, %bb.nv ], [ %.pre790.i, %stbi__parse_png_file.exit.thread.i.i ]
  %.2.i.i = phi ptr [ %.1.i.i, %bb.nu ], [ %.1.i.i, %bb.nv ], [ null, %stbi__parse_png_file.exit.thread.i.i ]
  tail call void @SDL_free_REAL(ptr noundef %i.ble) #13
  tail call void @SDL_free_REAL(ptr noundef %i.bld) #13
  %i.blf = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.blg = load ptr, ptr %i.blf, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.blg) #13
  br label %stbi__png_load.exit

stbi__png_load.exit:                              ; preds = %bb.ax, %bb.nm, %bb.nt, %bb.nw
  %.052.i.i = phi ptr [ null, %bb.ax ], [ null, %bb.nm ], [ %.2.i.i, %bb.nw ], [ null, %bb.nt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.oa

bb.nx:                                            ; preds = %bb.c, %stbi__get8.exit.i.1.i, %bb.i, %stbi__get8.exit.i.2.i, %bb.o, %stbi__get8.exit.i.3.i, %bb.u, %stbi__get8.exit.i.4.i, %bb.aa, %stbi__get8.exit.i.5.i, %bb.ag, %stbi__get8.exit.i.6.i, %bb.am, %stbi__get8.exit.i.7.i, %bb.as, %stbi__get8.exit.i.i
  %i.blh = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.23) #13 ; 0 uses
  %i.bli = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.bli, ptr %i.i, align 8
  %i.blj = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 18568) #13 ; 11 uses
  %.not.i = icmp eq ptr %i.blj, null
  br i1 %.not.i, label %stbi__jpeg_test.exit.thread, label %bb.ny

stbi__jpeg_test.exit.thread:                      ; preds = %bb.nx
  %i.blk = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18536) %i.bll, i8 0, i64 18536, i1 false)
  store ptr %0, ptr %i.blj, align 8
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blj, i64 18544
  store ptr @stbi__idct_block, ptr %i.blm, align 8
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blj, i64 18552
  store ptr @stbi__YCbCr_to_RGB_row, ptr %i.bln, align 8
  %i.blo = getelementptr inbounds nuw i8, ptr %i.blj, i64 18560
  store ptr @stbi__resample_row_hv_2, ptr %i.blo, align 8
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blj, i64 18508
  store i32 -1, ptr %i.blp, align 4
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blj, i64 18472
  store i8 -1, ptr %i.blq, align 8
  %i.blr = tail call fastcc zeroext i8 @stbi__get_marker(ptr noundef nonnull %i.blj)
  %.not = icmp eq i8 %i.blr, -40
  br i1 %.not, label %.critedge, label %stbi__jpeg_test.exit

stbi__jpeg_test.exit:                             ; preds = %bb.ny
  %i.bls = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #13 ; 0 uses
  %i.blt = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.blt, ptr %i.i, align 8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.blj) #13
  br label %bb.nz

.critedge:                                        ; preds = %bb.ny
  %i.blu = load <2 x ptr>, ptr %i.p, align 8
  store <2 x ptr> %i.blu, ptr %i.i, align 8
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.blj) #13
  %i.blv = tail call fastcc ptr @stbi__jpeg_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef null)
  br label %bb.oa

bb.nz:                                            ; preds = %stbi__jpeg_test.exit, %stbi__jpeg_test.exit.thread
  %i.blw = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.22) #13 ; 0 uses
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %.critedge, %stbi__png_load.exit
  %.0 = phi ptr [ %.052.i.i, %stbi__png_load.exit ], [ %i.blv, %.critedge ], [ null, %bb.nz ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__convert_format(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, %1
  br i1 %i.b, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %or.cond.not.i.i.i, label %bb.d, label %stbi__malloc_mad3.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %3, 0                        ; 13 uses
  br i1 %i.c, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.d
  %i.d = udiv i32 2147483647, %3
  %.not23.i.i = icmp samesign ugt i32 %2, %i.d
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.d
  %i.e = mul nuw nsw i32 %3, %2                   ; 3 uses
  %i.f = or i32 %4, %i.e
  %or.cond.not.i10.i.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i.i, label %bb.e, label %stbi__malloc_mad3.exit.thread

bb.e:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.e
  %i.h = udiv i32 2147483647, %4
  %.not.i.i = icmp samesign ugt i32 %i.e, %i.h
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit:                           ; preds = %bb.e, %stbi__mul2sizes_valid.exit12.i.i
  %i.i = mul nuw nsw i32 %i.e, %4
  %5 = zext nneg i32 %i.i to i64
  %i.j = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %5) #13 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %stbi__malloc_mad3.exit.thread, label %.preheader201

.preheader201:                                    ; preds = %stbi__malloc_mad3.exit
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph262, label %._crit_edge

.lr.ph262:                                        ; preds = %.preheader201
  %i.m = shl nsw i32 %1, 3
  %i.n = or disjoint i32 %i.m, %2                 ; 2 uses
  %.11169202 = add nsw i32 %3, -1                 ; 25 uses
  switch i32 %i.n, label %.critedge [
    i32 10, label %.lr.ph262.split
    i32 11, label %.lr.ph262.split
    i32 12, label %.lr.ph262.split
    i32 17, label %.lr.ph262.split
    i32 19, label %.lr.ph262.split
    i32 20, label %.lr.ph262.split
    i32 28, label %.lr.ph262.split
    i32 25, label %.lr.ph262.split
    i32 26, label %.lr.ph262.split
    i32 33, label %.lr.ph262.split
    i32 34, label %.lr.ph262.split
    i32 35, label %.lr.ph262.split
  ]

.lr.ph262.split:                                  ; preds = %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262, %.lr.ph262
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.o = add nsw i32 %3, -2                       ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.o, i32 -1) ; 2 uses
  %i.p = sub i32 %i.o, %smin                      ; 14 uses
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 22 uses
  %i.s = xor i32 %smin, -1
  %i.t = add nuw i32 %3, %i.s                     ; 6 uses
  %min.iters.check509 = icmp ult i32 %i.p, 7
  %n.vec511 = and i64 %i.r, 8589934584            ; 5 uses
  %i.u = trunc i64 %n.vec511 to i32
  %i.v = sub i32 %.11169202, %i.u
  %i.w = shl nuw nsw i64 %n.vec511, 1
  %i.x = shl nuw nsw i64 %n.vec511, 2
  %cmp.n526 = icmp eq i64 %i.r, %n.vec511
  %min.iters.check456 = icmp ult i32 %i.p, 8
  %min.iters.check458 = icmp ult i32 %i.p, 16
  %i.y = and i64 %i.r, 15                         ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = select i1 %i.z, i64 16, i64 %i.y        ; 2 uses
  %n.vec460 = sub nsw i64 %i.r, %i.aa             ; 5 uses
  %i.ab = trunc i64 %n.vec460 to i32
  %i.ac = sub i32 %.11169202, %i.ab
  %i.ad = shl nsw i64 %n.vec460, 2
  %min.epilog.iters.check489 = icmp samesign ult i64 %i.aa, 9
  %i.ae = and i64 %i.r, 7                         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 8, i64 %i.ae
  %n.vec491 = sub nsw i64 %i.r, %i.ag             ; 4 uses
  %i.ah = trunc i64 %n.vec491 to i32
  %i.ai = sub i32 %.11169202, %i.ah
  %i.aj = shl nsw i64 %n.vec491, 2
  %min.iters.check435 = icmp ult i32 %i.p, 7
  %n.vec437 = and i64 %i.r, 8589934584            ; 5 uses
  %i.ak = trunc i64 %n.vec437 to i32
  %i.al = sub i32 %.11169202, %i.ak
  %i.am = shl nuw nsw i64 %n.vec437, 1
  %i.an = mul nuw nsw i64 %n.vec437, 3
  %cmp.n452 = icmp eq i64 %i.r, %n.vec437
  %min.iters.check382 = icmp ult i32 %i.p, 7
  %min.iters.check384 = icmp ult i32 %i.p, 15
  %i.ao = and i64 %i.r, 8
  %n.vec386 = and i64 %i.r, 8589934576            ; 6 uses
  %i.ap = trunc i64 %n.vec386 to i32
  %i.aq = sub i32 %.11169202, %i.ap
  %i.ar = mul nuw nsw i64 %n.vec386, 3
  %cmp.n408 = icmp eq i64 %i.r, %n.vec386
  %min.epilog.iters.check415.not.not = icmp eq i64 %i.ao, 0
  %n.vec417 = and i64 %i.r, 8589934584            ; 5 uses
  %i.as = trunc i64 %n.vec417 to i32
  %i.at = sub i32 %.11169202, %i.as
  %i.au = mul nuw nsw i64 %n.vec417, 3
  %cmp.n431 = icmp eq i64 %i.r, %n.vec417
  %xtraiter = and i32 %i.t, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %.6164.prol = add nsw i32 %3, -2
  %i.av = icmp slt i32 %3, 2
  %xtraiter543 = and i32 %i.t, 1
  %lcmp.mod544.not = icmp eq i32 %xtraiter543, 0
  %.5163.prol = add nsw i32 %3, -2
  %i.aw = icmp slt i32 %3, 2
  %xtraiter545 = and i32 %i.t, 3                  ; 2 uses
  %lcmp.mod546.not = icmp eq i32 %xtraiter545, 0
  %i.ax = icmp ult i32 %i.p, 3
  %min.iters.check331 = icmp ult i32 %i.p, 8
  %min.iters.check333 = icmp ult i32 %i.p, 16
  %i.ay = and i64 %i.r, 15                        ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = select i1 %i.az, i64 16, i64 %i.ay      ; 2 uses
  %n.vec335 = sub nsw i64 %i.r, %i.ba             ; 5 uses
  %i.bb = trunc i64 %n.vec335 to i32
  %i.bc = sub i32 %.11169202, %i.bb
  %i.bd = shl nsw i64 %n.vec335, 1
  %min.epilog.iters.check363 = icmp samesign ult i64 %i.ba, 9
  %i.be = and i64 %i.r, 7                         ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  %i.bg = select i1 %i.bf, i64 8, i64 %i.be
  %n.vec365 = sub nsw i64 %i.r, %i.bg             ; 4 uses
  %i.bh = trunc i64 %n.vec365 to i32
  %i.bi = sub i32 %.11169202, %i.bh
  %i.bj = shl nsw i64 %n.vec365, 1
  %xtraiter547 = and i32 %i.t, 3                  ; 2 uses
  %lcmp.mod548.not = icmp eq i32 %xtraiter547, 0
  %i.bk = icmp ult i32 %i.p, 3
  %xtraiter550 = and i32 %i.t, 3                  ; 2 uses
  %lcmp.mod551.not = icmp eq i32 %xtraiter550, 0
  %i.bl = icmp ult i32 %i.p, 3
  %min.iters.check = icmp ult i32 %i.p, 3
  %min.iters.check313 = icmp ult i32 %i.p, 15
  %i.bm = and i64 %i.r, 12
  %n.vec = and i64 %i.r, 8589934576               ; 6 uses
  %i.bn = trunc i64 %n.vec to i32
  %i.bo = sub i32 %.11169202, %i.bn
  %i.bp = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.r, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec320 = and i64 %i.r, 8589934588            ; 5 uses
  %i.bq = trunc i64 %n.vec320 to i32
  %i.br = sub i32 %.11169202, %i.bq
  %i.bs = shl nuw nsw i64 %n.vec320, 1
  %cmp.n327 = icmp eq i64 %i.r, %n.vec320
  %xtraiter553 = and i32 %i.t, 1
  %lcmp.mod554.not = icmp eq i32 %xtraiter553, 0
  %.11169.prol = add nsw i32 %3, -2
  %i.bt = icmp slt i32 %3, 2
  br label %bb.f

stbi__malloc_mad3.exit.thread:                    ; preds = %bb.c, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__malloc_mad3.exit
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  %i.bu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph262.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph262.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = mul i32 %3, %i.bv                       ; 2 uses
  %i.bx = mul i32 %i.bw, %1
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %i.by ; 126 uses
  %i.ca = mul i32 %i.bw, %2
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cb ; 50 uses
  switch i32 %i.n, label %.preheader199 [
    i32 10, label %.preheader
    i32 11, label %.preheader179
    i32 12, label %.preheader181
    i32 17, label %.preheader183
    i32 19, label %.preheader185
    i32 20, label %.preheader187
    i32 28, label %.preheader189
    i32 25, label %.preheader191
    i32 26, label %.preheader193
    i32 33, label %.preheader195
    i32 34, label %.preheader197
  ]

.preheader199:                                    ; preds = %bb.f
  br i1 %i.c, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader199
  br i1 %lcmp.mod554.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.cd = load i8, ptr %i.bz, align 1
  store i8 %i.cd, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 %i.cf, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.11169205.unr = phi i32 [ %.11169202, %.lr.ph.preheader ], [ %.11169.prol, %.lr.ph.prol ]
  %.11204.unr = phi ptr [ %i.cc, %.lr.ph.preheader ], [ %i.cl, %.lr.ph.prol ]
  %.11155203.unr = phi ptr [ %i.bz, %.lr.ph.preheader ], [ %i.ck, %.lr.ph.prol ]
  br i1 %i.bt, label %.loopexit, label %.lr.ph

.preheader197:                                    ; preds = %bb.f
  br i1 %i.c, label %.loopexit, label %.lr.ph210.preheader

.lr.ph210.preheader:                              ; preds = %.preheader197
  br i1 %min.iters.check509, label %.lr.ph210.preheader541, label %vector.ph510

vector.ph510:                                     ; preds = %.lr.ph210.preheader
  %i.cm = getelementptr i8, ptr %i.cc, i64 %i.w
  %i.cn = getelementptr i8, ptr %i.bz, i64 %i.x
end_hunk_4
begin_hunk_5_@stbi__convert_format:bb.a
  store i8 -1, ptr %i.alo, align 1
  %i.alp = getelementptr inbounds nuw i8, ptr %.6150227, i64 6
  %i.alq = getelementptr inbounds nuw i8, ptr %.6228, i64 8
  %.6164.1 = add i32 %.6164229, -2                ; 2 uses
  %i.alr = icmp sgt i32 %.6164.1, -1
  br i1 %i.alr, label %.lr.ph230, label %.loopexit, !llvm.loop !196

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %.lr.ph225
  %.7165224 = phi i32 [ %.7165, %.lr.ph225 ], [ %.7165224.ph, %.lr.ph225.preheader ]
  %.7223 = phi ptr [ %i.ami, %.lr.ph225 ], [ %.7223.ph, %.lr.ph225.preheader ] ; 2 uses
  %.7151222 = phi ptr [ %i.amh, %.lr.ph225 ], [ %.7151222.ph, %.lr.ph225.preheader ] ; 4 uses
  %i.als = load i8, ptr %.7151222, align 1
  %i.alt = zext i8 %i.als to i16
  %i.alu = getelementptr inbounds nuw i8, ptr %.7151222, i64 1
  %i.alv = load i8, ptr %i.alu, align 1
  %i.alw = zext i8 %i.alv to i16
  %i.alx = getelementptr inbounds nuw i8, ptr %.7151222, i64 2
  %i.aly = load i8, ptr %i.alx, align 1
  %i.alz = zext i8 %i.aly to i16
  %i.ama = mul nuw nsw i16 %i.alt, 77
  %i.amb = mul nuw i16 %i.alw, 150
  %i.amc = add nuw i16 %i.amb, %i.ama
  %i.amd = mul nuw nsw i16 %i.alz, 29
  %i.ame = add nuw i16 %i.amc, %i.amd
  %i.amf = lshr i16 %i.ame, 8
  %i.amg = trunc nuw i16 %i.amf to i8
  store i8 %i.amg, ptr %.7223, align 1
  %i.amh = getelementptr inbounds nuw i8, ptr %.7151222, i64 3
  %i.ami = getelementptr inbounds nuw i8, ptr %.7223, i64 1
  %.7165 = add i32 %.7165224, -1                  ; 2 uses
  %i.amj = icmp sgt i32 %.7165, -1
  br i1 %i.amj, label %.lr.ph225, label %.loopexit, !llvm.loop !197

.lr.ph220:                                        ; preds = %.lr.ph220.preheader538, %.lr.ph220
  %.8166219 = phi i32 [ %.8166, %.lr.ph220 ], [ %.8166219.ph, %.lr.ph220.preheader538 ]
  %.8218 = phi ptr [ %i.anb, %.lr.ph220 ], [ %.8218.ph, %.lr.ph220.preheader538 ] ; 3 uses
  %.8152217 = phi ptr [ %i.ana, %.lr.ph220 ], [ %.8152217.ph, %.lr.ph220.preheader538 ] ; 4 uses
  %i.amk = load i8, ptr %.8152217, align 1
  %i.aml = zext i8 %i.amk to i16
  %i.amm = getelementptr inbounds nuw i8, ptr %.8152217, i64 1
  %i.amn = load i8, ptr %i.amm, align 1
  %i.amo = zext i8 %i.amn to i16
  %i.amp = getelementptr inbounds nuw i8, ptr %.8152217, i64 2
  %i.amq = load i8, ptr %i.amp, align 1
  %i.amr = zext i8 %i.amq to i16
  %i.ams = mul nuw nsw i16 %i.aml, 77
  %i.amt = mul nuw i16 %i.amo, 150
  %i.amu = add nuw i16 %i.amt, %i.ams
  %i.amv = mul nuw nsw i16 %i.amr, 29
  %i.amw = add nuw i16 %i.amu, %i.amv
  %i.amx = lshr i16 %i.amw, 8
  %i.amy = trunc nuw i16 %i.amx to i8
  store i8 %i.amy, ptr %.8218, align 1
  %i.amz = getelementptr inbounds nuw i8, ptr %.8218, i64 1
  store i8 -1, ptr %i.amz, align 1
  %i.ana = getelementptr inbounds nuw i8, ptr %.8152217, i64 3
  %i.anb = getelementptr inbounds nuw i8, ptr %.8218, i64 2
  %.8166 = add i32 %.8166219, -1                  ; 2 uses
  %i.anc = icmp sgt i32 %.8166, -1
  br i1 %i.anc, label %.lr.ph220, label %.loopexit, !llvm.loop !198

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %.lr.ph215
  %.9167214 = phi i32 [ %.9167, %.lr.ph215 ], [ %.9167214.ph, %.lr.ph215.preheader ]
  %.9213 = phi ptr [ %i.ant, %.lr.ph215 ], [ %.9213.ph, %.lr.ph215.preheader ] ; 2 uses
  %.9153212 = phi ptr [ %i.ans, %.lr.ph215 ], [ %.9153212.ph, %.lr.ph215.preheader ] ; 4 uses
  %i.and = load i8, ptr %.9153212, align 1
  %i.ane = zext i8 %i.and to i16
  %i.anf = getelementptr inbounds nuw i8, ptr %.9153212, i64 1
  %i.ang = load i8, ptr %i.anf, align 1
  %i.anh = zext i8 %i.ang to i16
  %i.ani = getelementptr inbounds nuw i8, ptr %.9153212, i64 2
  %i.anj = load i8, ptr %i.ani, align 1
  %i.ank = zext i8 %i.anj to i16
  %i.anl = mul nuw nsw i16 %i.ane, 77
  %i.anm = mul nuw i16 %i.anh, 150
  %i.ann = add nuw i16 %i.anm, %i.anl
  %i.ano = mul nuw nsw i16 %i.ank, 29
  %i.anp = add nuw i16 %i.ann, %i.ano
  %i.anq = lshr i16 %i.anp, 8
  %i.anr = trunc nuw i16 %i.anq to i8
  store i8 %i.anr, ptr %.9213, align 1
  %i.ans = getelementptr inbounds nuw i8, ptr %.9153212, i64 4
  %i.ant = getelementptr inbounds nuw i8, ptr %.9213, i64 1
  %.9167 = add i32 %.9167214, -1                  ; 2 uses
  %i.anu = icmp sgt i32 %.9167, -1
  br i1 %i.anu, label %.lr.ph215, label %.loopexit, !llvm.loop !199

.lr.ph210:                                        ; preds = %.lr.ph210.preheader541, %.lr.ph210
  %.10168209 = phi i32 [ %.10168, %.lr.ph210 ], [ %.10168209.ph, %.lr.ph210.preheader541 ]
  %.10208 = phi ptr [ %i.aoo, %.lr.ph210 ], [ %.10208.ph, %.lr.ph210.preheader541 ] ; 3 uses
  %.10154207 = phi ptr [ %i.aon, %.lr.ph210 ], [ %.10154207.ph, %.lr.ph210.preheader541 ] ; 5 uses
  %i.anv = load i8, ptr %.10154207, align 1
  %i.anw = zext i8 %i.anv to i16
  %i.anx = getelementptr inbounds nuw i8, ptr %.10154207, i64 1
  %i.any = load i8, ptr %i.anx, align 1
  %i.anz = zext i8 %i.any to i16
  %i.aoa = getelementptr inbounds nuw i8, ptr %.10154207, i64 2
  %i.aob = load i8, ptr %i.aoa, align 1
  %i.aoc = zext i8 %i.aob to i16
  %i.aod = mul nuw nsw i16 %i.anw, 77
  %i.aoe = mul nuw i16 %i.anz, 150
  %i.aof = add nuw i16 %i.aoe, %i.aod
  %i.aog = mul nuw nsw i16 %i.aoc, 29
  %i.aoh = add nuw i16 %i.aof, %i.aog
  %i.aoi = lshr i16 %i.aoh, 8
  %i.aoj = trunc nuw i16 %i.aoi to i8
  store i8 %i.aoj, ptr %.10208, align 1
  %i.aok = getelementptr inbounds nuw i8, ptr %.10154207, i64 3
  %i.aol = load i8, ptr %i.aok, align 1
  %i.aom = getelementptr inbounds nuw i8, ptr %.10208, i64 1
  store i8 %i.aol, ptr %i.aom, align 1
  %i.aon = getelementptr inbounds nuw i8, ptr %.10154207, i64 4
  %i.aoo = getelementptr inbounds nuw i8, ptr %.10208, i64 2
  %.10168 = add i32 %.10168209, -1                ; 2 uses
  %i.aop = icmp sgt i32 %.10168, -1
  br i1 %i.aop, label %.lr.ph210, label %.loopexit, !llvm.loop !200

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.11169205 = phi i32 [ %.11169.1, %.lr.ph ], [ %.11169205.unr, %.lr.ph.prol.loopexit ]
  %.11204 = phi ptr [ %i.aph, %.lr.ph ], [ %.11204.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %.11155203 = phi ptr [ %i.apg, %.lr.ph ], [ %.11155203.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.aoq = load i8, ptr %.11155203, align 1
  store i8 %i.aoq, ptr %.11204, align 1
  %i.aor = getelementptr inbounds nuw i8, ptr %.11155203, i64 1
  %i.aos = load i8, ptr %i.aor, align 1
  %i.aot = getelementptr inbounds nuw i8, ptr %.11204, i64 1
  store i8 %i.aos, ptr %i.aot, align 1
  %i.aou = getelementptr inbounds nuw i8, ptr %.11155203, i64 2
  %i.aov = load i8, ptr %i.aou, align 1
  %i.aow = getelementptr inbounds nuw i8, ptr %.11204, i64 2
  store i8 %i.aov, ptr %i.aow, align 1
  %i.aox = getelementptr inbounds nuw i8, ptr %.11155203, i64 4
  %i.aoy = getelementptr inbounds nuw i8, ptr %.11204, i64 3
  %i.aoz = load i8, ptr %i.aox, align 1
  store i8 %i.aoz, ptr %i.aoy, align 1
  %i.apa = getelementptr inbounds nuw i8, ptr %.11155203, i64 5
  %i.apb = load i8, ptr %i.apa, align 1
  %i.apc = getelementptr inbounds nuw i8, ptr %.11204, i64 4
  store i8 %i.apb, ptr %i.apc, align 1
  %i.apd = getelementptr inbounds nuw i8, ptr %.11155203, i64 6
  %i.ape = load i8, ptr %i.apd, align 1
  %i.apf = getelementptr inbounds nuw i8, ptr %.11204, i64 5
  store i8 %i.ape, ptr %i.apf, align 1
  %i.apg = getelementptr inbounds nuw i8, ptr %.11155203, i64 8
  %i.aph = getelementptr inbounds nuw i8, ptr %.11204, i64 6
  %.11169.1 = add i32 %.11169205, -2              ; 2 uses
  %i.api = icmp sgt i32 %.11169.1, -1
  br i1 %i.api, label %.lr.ph, label %.loopexit, !llvm.loop !201

.critedge:                                        ; preds = %.lr.ph262
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.j) #13
  %i.apj = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.32) #13 ; 0 uses
  br label %bb.g

.loopexit:                                        ; preds = %.lr.ph210, %.lr.ph215, %.lr.ph220, %.lr.ph225, %.lr.ph230.prol.loopexit, %.lr.ph230, %.lr.ph235.prol.loopexit, %.lr.ph235, %.lr.ph240.prol.loopexit, %.lr.ph240, %.lr.ph245, %.lr.ph250.prol.loopexit, %.lr.ph250, %.lr.ph255.prol.loopexit, %.lr.ph255, %.lr.ph260, %.lr.ph.prol.loopexit, %.lr.ph, %middle.block525, %middle.block451, %middle.block407, %vec.epilog.middle.block430, %middle.block, %vec.epilog.middle.block, %.preheader199, %.preheader197, %.preheader195, %.preheader193, %.preheader191, %.preheader189, %.preheader187, %.preheader185, %.preheader183, %.preheader181, %.preheader179, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !202

._crit_edge:                                      ; preds = %.loopexit, %.preheader201
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.b, %bb.a, %._crit_edge, %stbi__malloc_mad3.exit.thread
  %.2172 = phi ptr [ %i.j, %._crit_edge ], [ null, %bb.a ], [ null, %stbi__malloc_mad3.exit.thread ], [ null, %.critedge ], [ %0, %bb.b ]
  ret ptr %.2172
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @stbi__convert_format16(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 5) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %or.cond.not.i.i.i, label %bb.c, label %stbi__malloc_mad4.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %3, 0                        ; 13 uses
  br i1 %i.b, label %stbi__mul2sizes_valid.exit.thread24.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.c
  %i.c = udiv i32 2147483647, %3
  %.not34.i.i = icmp samesign ugt i32 %2, %i.c
  br i1 %.not34.i.i, label %stbi__malloc_mad4.exit.thread, label %stbi__mul2sizes_valid.exit.thread24.i.i

stbi__mul2sizes_valid.exit.thread24.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.c
  %i.d = mul nuw nsw i32 %3, %2                   ; 4 uses
  %i.e = or i32 %4, %i.d
  %or.cond.not.i16.i.i = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not.i16.i.i, label %bb.d, label %stbi__malloc_mad4.exit.thread

bb.d:                                             ; preds = %stbi__mul2sizes_valid.exit.thread24.i.i
  %i.f = icmp eq i32 %4, 0
  br i1 %i.f, label %stbi__malloc_mad4.exit, label %stbi__mul2sizes_valid.exit18.i.i

stbi__mul2sizes_valid.exit18.i.i:                 ; preds = %bb.d
  %i.g = udiv i32 2147483647, %4
  %.not.i.i = icmp samesign ugt i32 %i.d, %i.g
  %i.h = mul nuw nsw i32 %i.d, %4
  %5 = icmp sgt i32 %i.h, 1073741823
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %5
  br i1 %or.cond.i, label %stbi__malloc_mad4.exit.thread, label %stbi__malloc_mad4.exit

stbi__malloc_mad4.exit:                           ; preds = %bb.d, %stbi__mul2sizes_valid.exit18.i.i
  %i.i = shl nuw i32 %i.d, 1
  %i.j = mul i32 %i.i, %4
  %6 = zext nneg i32 %i.j to i64
  %i.k = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %6) #13 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %stbi__malloc_mad4.exit.thread, label %.preheader197

.preheader197:                                    ; preds = %stbi__malloc_mad4.exit
  %i.m = icmp sgt i32 %4, 0
  br i1 %i.m, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader197
  %i.n = shl nsw i32 %1, 3
  %i.o = or disjoint i32 %i.n, %2                 ; 2 uses
  %.11167198 = add nsw i32 %3, -1                 ; 14 uses
  switch i32 %i.o, label %.critedge [
    i32 10, label %.lr.ph258.split
    i32 11, label %.lr.ph258.split
    i32 12, label %.lr.ph258.split
    i32 17, label %.lr.ph258.split
    i32 19, label %.lr.ph258.split
    i32 20, label %.lr.ph258.split
    i32 28, label %.lr.ph258.split
    i32 25, label %.lr.ph258.split
    i32 26, label %.lr.ph258.split
    i32 33, label %.lr.ph258.split
    i32 34, label %.lr.ph258.split
    i32 35, label %.lr.ph258.split
  ]

.lr.ph258.split:                                  ; preds = %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258, %.lr.ph258
  %wide.trip.count = zext nneg i32 %4 to i64
  %i.p = add nsw i32 %3, -2                       ; 2 uses
  %i.q = tail call i32 @llvm.smin.i32(i32 %i.p, i32 -1)
  %i.r = sub i32 %i.p, %i.q                       ; 2 uses
  %min.iters.check315 = icmp ult i32 %i.r, 8
  %i.s = zext i32 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = and i64 %i.t, 7                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 8, i64 %i.u
  %n.vec317 = sub nsw i64 %i.t, %i.w              ; 4 uses
  %i.x = trunc i64 %n.vec317 to i32
  %i.y = sub i32 %.11167198, %i.x
  %i.z = shl nsw i64 %n.vec317, 1
  %i.aa = shl nsw i64 %n.vec317, 2
  %i.ab = add nsw i32 %3, -2                      ; 2 uses
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 -1)
  %i.ad = sub i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 7
  %n.vec = and i64 %i.af, 8589934584              ; 5 uses
  %i.ag = trunc i64 %n.vec to i32
  %i.ah = sub i32 %.11167198, %i.ag
  %i.ai = shl nuw nsw i64 %n.vec, 2
  %i.aj = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br label %bb.e

stbi__malloc_mad4.exit.thread:                    ; preds = %bb.b, %stbi__mul2sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit18.i.i, %stbi__mul2sizes_valid.exit.thread24.i.i, %stbi__malloc_mad4.exit
  tail call void @SDL_free_REAL(ptr noundef %0) #13
  %i.ak = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph258.split, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph258.split ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = mul i32 %3, %i.al                       ; 2 uses
  %i.an = mul i32 %i.am, %1
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ao ; 17 uses
  %i.aq = mul i32 %i.am, %2
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.ar ; 17 uses
  switch i32 %i.o, label %.preheader195 [
    i32 10, label %.preheader
    i32 11, label %.preheader175
    i32 12, label %.preheader177
    i32 17, label %.preheader179
    i32 19, label %.preheader181
    i32 20, label %.preheader183
    i32 28, label %.preheader185
    i32 25, label %.preheader187
    i32 26, label %.preheader189
    i32 33, label %.preheader191
    i32 34, label %.preheader193
  ]

.preheader195:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph

.preheader193:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph206

.preheader191:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph211

.preheader189:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph216

.preheader187:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph221

.preheader185:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph226

.preheader183:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph231

.preheader181:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph236

.preheader179:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph241.preheader

.lr.ph241.preheader:                              ; preds = %.preheader179
  br i1 %min.iters.check315, label %.lr.ph241.preheader334, label %vector.ph316

.lr.ph241.preheader334:                           ; preds = %vector.body318, %.lr.ph241.preheader
  %.3159240.ph = phi i32 [ %.11167198, %.lr.ph241.preheader ], [ %i.y, %vector.body318 ]
  %.3239.ph = phi ptr [ %i.as, %.lr.ph241.preheader ], [ %i.at, %vector.body318 ]
  %.3145238.ph = phi ptr [ %i.ap, %.lr.ph241.preheader ], [ %i.au, %vector.body318 ]
  br label %.lr.ph241

vector.ph316:                                     ; preds = %.lr.ph241.preheader
  %i.at = getelementptr i8, ptr %i.as, i64 %i.z
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.aa
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next325, %vector.body318 ] ; 3 uses
  %i.av = shl i64 %index319, 1
  %next.gep320 = getelementptr i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.aw = shl i64 %index319, 2                    ; 2 uses
  %next.gep321 = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  %next.gep322 = getelementptr i8, ptr %i.ax, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep321, align 2
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec323 = load <8 x i16>, ptr %next.gep322, align 2
  %strided.vec324 = shufflevector <8 x i16> %wide.vec323, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ay = getelementptr i8, ptr %next.gep320, i64 8
  store <4 x i16> %strided.vec, ptr %next.gep320, align 2
  store <4 x i16> %strided.vec324, ptr %i.ay, align 2
  %index.next325 = add nuw i64 %index319, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next325, %n.vec317
  br i1 %i.az, label %.lr.ph241.preheader334, label %vector.body318, !llvm.loop !204

.preheader177:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph246

.preheader175:                                    ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph251

.preheader:                                       ; preds = %bb.e
  br i1 %i.b, label %.loopexit, label %.lr.ph256.preheader

.lr.ph256.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph256.preheader330, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph256.preheader
  %i.ba = getelementptr i8, ptr %i.as, i64 %i.ai
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bc
  %i.bd = getelementptr i8, ptr %i.as, i64 %i.bc
  %next.gep308 = getelementptr i8, ptr %i.bd, i64 16
  %i.be = shl i64 %index, 1
  %next.gep309 = getelementptr i8, ptr %i.ap, i64 %i.be ; 2 uses
  %i.bf = getelementptr i8, ptr %next.gep309, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep309, align 2
  %wide.load310 = load <4 x i16>, ptr %i.bf, align 2
  %interleaved.vec = shufflevector <4 x i16> %wide.load, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %next.gep, align 2
  %interleaved.vec311 = shufflevector <4 x i16> %wide.load310, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec311, ptr %next.gep308, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph256.preheader330

.lr.ph256.preheader330:                           ; preds = %.lr.ph256.preheader, %middle.block
  %.0156255.ph = phi i32 [ %.11167198, %.lr.ph256.preheader ], [ %i.ah, %middle.block ]
  %.0254.ph = phi ptr [ %i.as, %.lr.ph256.preheader ], [ %i.ba, %middle.block ]
  %.0142253.ph = phi ptr [ %i.ap, %.lr.ph256.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader330, %.lr.ph256
  %.0156255 = phi i32 [ %.0156, %.lr.ph256 ], [ %.0156255.ph, %.lr.ph256.preheader330 ]
  %.0254 = phi ptr [ %i.bk, %.lr.ph256 ], [ %.0254.ph, %.lr.ph256.preheader330 ] ; 3 uses
  %.0142253 = phi ptr [ %i.bj, %.lr.ph256 ], [ %.0142253.ph, %.lr.ph256.preheader330 ] ; 2 uses
  %i.bh = load i16, ptr %.0142253, align 2
  store i16 %i.bh, ptr %.0254, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.0254, i64 2
  store i16 -1, ptr %i.bi, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %.0142253, i64 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.0254, i64 4
  %.0156 = add i32 %.0156255, -1                  ; 2 uses
  %i.bl = icmp sgt i32 %.0156, -1
  br i1 %i.bl, label %.lr.ph256, label %.loopexit, !llvm.loop !206

.lr.ph251:                                        ; preds = %.preheader175, %.lr.ph251
  %.1157250 = phi i32 [ %.1157, %.lr.ph251 ], [ %.11167198, %.preheader175 ]
  %.1249 = phi ptr [ %i.bq, %.lr.ph251 ], [ %i.as, %.preheader175 ] ; 4 uses
  %.1143248 = phi ptr [ %i.bp, %.lr.ph251 ], [ %i.ap, %.preheader175 ] ; 2 uses
  %i.bm = load i16, ptr %.1143248, align 2        ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1249, i64 4
  store i16 %i.bm, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.1249, i64 2
  store i16 %i.bm, ptr %i.bo, align 2
  store i16 %i.bm, ptr %.1249, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.1143248, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.1249, i64 6
  %.1157 = add i32 %.1157250, -1                  ; 2 uses
  %i.br = icmp sgt i32 %.1157, -1
  br i1 %i.br, label %.lr.ph251, label %.loopexit, !llvm.loop !207

.lr.ph246:                                        ; preds = %.preheader177, %.lr.ph246
  %.2158245 = phi i32 [ %.2158, %.lr.ph246 ], [ %.11167198, %.preheader177 ]
  %.2244 = phi ptr [ %i.bw, %.lr.ph246 ], [ %i.as, %.preheader177 ] ; 2 uses
  %.2144243 = phi ptr [ %i.bv, %.lr.ph246 ], [ %i.ap, %.preheader177 ] ; 2 uses
  %i.bs = load i16, ptr %.2144243, align 2
  %i.bt = insertelement <4 x i16> <i16 poison, i16 -1, i16 poison, i16 poison>, i16 %i.bs, i64 0
  %i.bu = shufflevector <4 x i16> %i.bt, <4 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x i16> %i.bu, ptr %.2244, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.2144243, i64 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.2244, i64 8
  %.2158 = add i32 %.2158245, -1                  ; 2 uses
  %i.bx = icmp sgt i32 %.2158, -1
  br i1 %i.bx, label %.lr.ph246, label %.loopexit, !llvm.loop !208

.lr.ph241:                                        ; preds = %.lr.ph241.preheader334, %.lr.ph241
  %.3159240 = phi i32 [ %.3159, %.lr.ph241 ], [ %.3159240.ph, %.lr.ph241.preheader334 ]
  %.3239 = phi ptr [ %i.ca, %.lr.ph241 ], [ %.3239.ph, %.lr.ph241.preheader334 ] ; 2 uses
  %.3145238 = phi ptr [ %i.bz, %.lr.ph241 ], [ %.3145238.ph, %.lr.ph241.preheader334 ] ; 2 uses
  %i.by = load i16, ptr %.3145238, align 2
  store i16 %i.by, ptr %.3239, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %.3145238, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.3239, i64 2
  %.3159 = add i32 %.3159240, -1                  ; 2 uses
  %i.cb = icmp sgt i32 %.3159, -1
  br i1 %i.cb, label %.lr.ph241, label %.loopexit, !llvm.loop !209

.lr.ph236:                                        ; preds = %.preheader181, %.lr.ph236
  %.4160235 = phi i32 [ %.4160, %.lr.ph236 ], [ %.11167198, %.preheader181 ]
  %.4234 = phi ptr [ %i.cg, %.lr.ph236 ], [ %i.as, %.preheader181 ] ; 4 uses
  %.4146233 = phi ptr [ %i.cf, %.lr.ph236 ], [ %i.ap, %.preheader181 ] ; 2 uses
  %i.cc = load i16, ptr %.4146233, align 2        ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.4234, i64 4
  store i16 %i.cc, ptr %i.cd, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.4234, i64 2
  store i16 %i.cc, ptr %i.ce, align 2
  store i16 %i.cc, ptr %.4234, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.4146233, i64 4
end_hunk_5
begin_hunk_6_@stbi__zbuild_huffman:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbi__zhuffman_decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %stbi__fill_bits.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val20 = load ptr, ptr %i.d, align 8           ; 3 uses
  %.not22 = icmp ult ptr %.val, %.val20
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %stbi__zhuffman_decode_slowpath.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.e, align 4
  %i.g = add nsw i32 %i.b, 16                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  br label %stbi__fill_bits.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %stbi__zget8.exit.i, %bb.e
  %.val.i.i = phi ptr [ %.val.i.i23, %stbi__zget8.exit.i ], [ %.val, %bb.e ] ; 4 uses
  %i.i = phi i32 [ %i.q, %stbi__zget8.exit.i ], [ %i.b, %bb.e ] ; 5 uses
  %i.j = phi i32 [ %i.p, %stbi__zget8.exit.i ], [ %.promoted.i, %bb.e ] ; 2 uses
  %.highbits.i = lshr i32 %i.j, %i.i
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.val20, ptr %0, align 8
  br label %stbi__fill_bits.exit

bb.h:                                             ; preds = %bb.f
  %.not3.i.i = icmp ult ptr %.val.i.i, %.val20
  br i1 %.not3.i.i, label %bb.i, label %stbi__zget8.exit.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i, align 1
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i

stbi__zget8.exit.i:                               ; preds = %bb.i, %bb.h
  %.val.i.i23 = phi ptr [ %i.k, %bb.i ], [ %.val.i.i, %bb.h ]
  %i.n = phi i32 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = shl i32 %i.n, %i.i
  %i.p = or i32 %i.o, %i.j                        ; 2 uses
  store i32 %i.p, ptr %i.h, align 8
  %i.q = add nsw i32 %i.i, 8                      ; 3 uses
  store i32 %i.q, ptr %i.a, align 8
  %i.r = icmp slt i32 %i.i, 17
  br i1 %i.r, label %bb.f, label %stbi__fill_bits.exit, !llvm.loop !4

stbi__fill_bits.exit:                             ; preds = %stbi__zget8.exit.i, %bb.g, %bb.d, %bb.a
  %i.s = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.g ], [ %i.g, %bb.d ], [ %i.q, %stbi__zget8.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = and i32 %i.u, 511
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not19 = icmp eq i16 %i.y, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %stbi__fill_bits.exit
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = lshr i32 %i.z, 9                        ; 2 uses
  %i.ab = lshr i32 %i.u, %i.aa
  store i32 %i.ab, ptr %i.t, align 8
  %i.ac = sub nsw i32 %i.s, %i.aa
  store i32 %i.ac, ptr %i.a, align 8
  %i.ad = and i32 %i.z, 511
  br label %stbi__zhuffman_decode_slowpath.exit

bb.k:                                             ; preds = %stbi__fill_bits.exit
  %trunc.i.i.i = trunc i32 %i.u to i16
  %rev.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i)
  %i.ae = zext i16 %rev.i.i.i to i32              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 7 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp sgt i32 %i.ah, %i.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ai, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 15
  br i1 %i.ak, label %stbi__zhuffman_decode_slowpath.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nuw nsw i32 16, %i.aj
  %i.am = lshr i32 %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i16, ptr %i.ao, align 2
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
  %8 = zext nneg i32 %i.r to i64
  %i.s = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %8) #13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.u = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.ae = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.af = add i32 %.pre-phi, 7
  %i.ag = lshr i32 %i.af, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ah = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ag, %i.ah
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ai = mul nuw nsw i32 %i.ag, %5
  %i.aj = xor i32 %i.ag, 2147483647
  %.not330 = icmp sgt i32 %i.ai, %i.aj
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.ak = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.al = add nuw nsw i32 %i.ag, 1
  %i.am = mul i32 %i.al, %5
  %i.an = icmp ult i32 %2, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ap = shl nuw nsw i32 %i.ag, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.aq) #13 ; 6 uses
  %.not283 = icmp eq ptr %i.ar, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.at = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.at, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.at, i32 %i.ag, i32 %4
  %i.au = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.av = sext i32 %spec.select to i64            ; 40 uses
  %i.aw = icmp slt i32 %spec.select, %i.au        ; 4 uses
  %i.ax = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ay = icmp sgt i32 %i.au, 0
  %i.az = sext i32 %i.au to i64                   ; 13 uses
  %i.ba = icmp eq i32 %6, 8
  %i.bb = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.bc = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add nsw i32 %4, -1                 ; 4 uses
  %i.bd = icmp sgt i32 %4, 0                      ; 4 uses
  %i.be = zext i32 %.030.i305 to i64              ; 19 uses
  %i.bf = zext nneg i32 %i.y to i64
  %i.bg = icmp eq i32 %7, 0
  %9 = zext nneg i32 %6 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @stbi__depth_scale_table, i64 %9
  %wide.trip.count460 = zext nneg i32 %5 to i64
  %i.bi = zext nneg i32 %i.ag to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.au to i64     ; 8 uses
  %i.bj = shl nuw nsw i64 %i.be, 1
  %i.bk = getelementptr i8, ptr %i.ar, i64 %i.be
  %scevgep505 = getelementptr i8, ptr %i.bk, i64 1
  %i.bl = sub nsw i64 %i.az, %i.av                ; 28 uses
  %i.bm = add nsw i32 %i.y, -1                    ; 3 uses
  %i.bn = add nuw nsw i64 %i.be, 1
  %min.iters.check703 = icmp ult i64 %i.bl, 8
  %i.bo = add nsw i64 %i.av, -1
  %diff.check701 = icmp ult i64 %i.bo, 31
  %or.cond737 = select i1 %min.iters.check703, i1 true, i1 %diff.check701
  %min.iters.check705 = icmp ult i64 %i.bl, 32
  %i.bp = and i64 %i.bl, 24
  %n.vec707 = and i64 %i.bl, -32                  ; 4 uses
  %i.bq = add nsw i64 %n.vec707, %i.av
  %cmp.n716 = icmp eq i64 %i.bl, %n.vec707
  %min.epilog.iters.check722 = icmp eq i64 %i.bp, 0
  %n.vec724 = and i64 %i.bl, -8                   ; 3 uses
  %i.br = add nsw i64 %n.vec724, %i.av
  %cmp.n731 = icmp eq i64 %i.bl, %n.vec724
  %i.bs = add nsw i64 %i.az, -1
  %min.iters.check671 = icmp ult i32 %spec.select, 4
  %min.iters.check673 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec675 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n684 = icmp eq i64 %n.vec675, %wide.trip.count424
  %min.epilog.iters.check689 = icmp eq i64 %i.bt, 0
  %n.vec691 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n698 = icmp eq i64 %n.vec691, %wide.trip.count424
  %xtraiter751 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %min.iters.check636 = icmp ult i64 %i.bl, 4
  %i.bu = add nsw i64 %i.av, -1
  %diff.check630 = icmp ult i64 %i.bu, 15
  %min.iters.check638 = icmp ult i64 %i.bl, 16
  %i.bv = and i64 %i.bl, 12
  %n.vec640 = and i64 %i.bl, -16                  ; 4 uses
  %i.bw = add nsw i64 %n.vec640, %i.av
  %cmp.n649 = icmp eq i64 %i.bl, %n.vec640
  %min.epilog.iters.check655 = icmp eq i64 %i.bv, 0
  %n.vec657 = and i64 %i.bl, -4                   ; 3 uses
  %i.bx = add nsw i64 %n.vec657, %i.av
  %cmp.n666 = icmp eq i64 %i.bl, %n.vec657
  %min.iters.check600 = icmp ult i32 %spec.select, 4
  %min.iters.check602 = icmp ult i32 %spec.select, 32
  %i.by = and i64 %wide.trip.count424, 28
  %n.vec604 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n613 = icmp eq i64 %n.vec604, %wide.trip.count424
  %min.epilog.iters.check618 = icmp eq i64 %i.by, 0
  %n.vec620 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec620, %wide.trip.count424
  %xtraiter753 = and i64 %wide.trip.count424, 1
  %lcmp.mod754.not = icmp eq i64 %xtraiter753, 0
  %i.bz = add nsw i64 %wide.trip.count424, -1
  %min.iters.check567 = icmp ult i64 %i.bl, 4
  %i.ca = add nsw i64 %i.av, -1
  %diff.check565 = icmp ult i64 %i.ca, 15
  %min.iters.check569 = icmp ult i64 %i.bl, 16
  %i.cb = and i64 %i.bl, 12
  %n.vec571 = and i64 %i.bl, -16                  ; 4 uses
  %i.cc = add nsw i64 %n.vec571, %i.av
  %cmp.n579 = icmp eq i64 %i.bl, %n.vec571
  %min.epilog.iters.check585 = icmp eq i64 %i.cb, 0
  %n.vec587 = and i64 %i.bl, -4                   ; 3 uses
  %i.cd = add nsw i64 %n.vec587, %i.av
  %cmp.n595 = icmp eq i64 %i.bl, %n.vec587
  %i.ce = add nsw i64 %i.az, -1
  %min.iters.check534 = icmp ult i32 %i.au, 4
  %min.iters.check536 = icmp ult i32 %i.au, 32
  %i.cf = and i64 %wide.trip.count444, 28
  %n.vec538 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n547 = icmp eq i64 %n.vec538, %wide.trip.count444
  %min.epilog.iters.check552 = icmp eq i64 %i.cf, 0
  %n.vec554 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec554, %wide.trip.count444
  %xtraiter759 = and i64 %wide.trip.count444, 3   ; 2 uses
  %lcmp.mod760.not = icmp eq i64 %xtraiter759, 0
  %min.iters.check510 = icmp ult i64 %i.bl, 8
  %i.cg = add nsw i64 %i.av, -1
  %diff.check = icmp ult i64 %i.cg, 31
  %or.cond736 = select i1 %min.iters.check510, i1 true, i1 %diff.check
  %min.iters.check511 = icmp ult i64 %i.bl, 32
  %i.ch = and i64 %i.bl, 24
  %n.vec513 = and i64 %i.bl, -32                  ; 4 uses
  %i.ci = add nsw i64 %n.vec513, %i.av
  %cmp.n522 = icmp eq i64 %i.bl, %n.vec513
  %min.epilog.iters.check = icmp eq i64 %i.ch, 0
  %n.vec524 = and i64 %i.bl, -8                   ; 3 uses
  %i.cj = add nsw i64 %n.vec524, %i.av
  %cmp.n529 = icmp eq i64 %i.bl, %n.vec524
  %i.ck = add nsw i64 %i.az, -1
  %xtraiter765 = and i32 %4, 1
  %i.cl = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, 2147483646
  %lcmp.mod766.not = icmp eq i32 %xtraiter765, 0
  %lcmp.mod767 = trunc i32 %4 to i1
  %xtraiter768 = and i32 %i.y, 3                  ; 3 uses
  %i.cm = icmp ult i32 %i.y, 4
  %unroll_iter771 = and i32 %i.y, 2147483644
  %lcmp.mod769.not = icmp eq i32 %xtraiter768, 0
  %lcmp.mod770 = icmp ne i32 %xtraiter768, 0
  %i.cn = and i64 %i.be, 1
  %lcmp.mod774.not.not = icmp eq i64 %i.cn, 0
  %i.co = shl nuw nsw i64 %i.be, 2
  %i.cp = mul nuw nsw i64 %i.be, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.be, -1
  %i.cq = icmp eq i32 %.030.i305, 0
  %i.cr = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %i.cr, 2147483640              ; 3 uses
  %i.cs = sub nsw i64 %i.be, %n.vec
  %cmp.n = icmp eq i64 %n.vec, %i.cr
  %xtraiter779 = and i32 %i.y, 1
  %i.ct = icmp eq i32 %i.bm, 0
  %unroll_iter783 = and i32 %i.y, 2147483646
  %lcmp.mod781.not = icmp eq i32 %xtraiter779, 0
  %lcmp.mod782 = trunc i32 %i.y to i1
  %xtraiter785 = and i32 %i.y, 1
  %i.cu = icmp eq i32 %i.bm, 0
  %unroll_iter789 = and i32 %i.y, 2147483646
  %lcmp.mod787.not = icmp eq i32 %xtraiter785, 0
  %lcmp.mod788 = trunc i32 %i.y to i1
  %xtraiter791 = and i32 %i.y, 1
  %i.cv = icmp eq i32 %i.bm, 0
  %unroll_iter795 = and i32 %i.y, 2147483646
  %lcmp.mod793.not = icmp eq i32 %xtraiter791, 0
  %lcmp.mod794 = trunc i32 %i.y to i1
  %i.cw = and i64 %i.be, 1
  %lcmp.mod798.not.not = icmp eq i64 %i.cw, 0
  %i.cx = shl nuw nsw i64 %i.be, 2
  %i.cy = mul nuw nsw i64 %i.be, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.be, -1
  %i.cz = icmp eq i32 %.030.i305, 0
  %xtraiter800 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod801.not = icmp eq i64 %xtraiter800, 0
  %i.da = icmp ult i32 %4, 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 4 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qk, %.loopexit ] ; 2 uses
  %i.db = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.dc = trunc i64 %indvars.iv457 to i1
  %i.dd = select i1 %i.dc, i64 %i.bi, i64 0       ; 8 uses
  %i.de = getelementptr i8, ptr %i.ar, i64 %i.dd  ; 80 uses
  %i.df = and i32 %i.db, 1
  %i.dg = xor i32 %i.df, 1
  %i.dh = mul nuw nsw i32 %i.dg, %i.ag
  %i.di = zext nneg i32 %i.dh to i64              ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.di ; 30 uses
  %i.dk = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.dl = mul i32 %i.e, %i.db
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dk, i64 %i.dm  ; 38 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dp = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dq = icmp ugt i8 %i.dp, 4
  br i1 %i.dq, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ds = zext nneg i8 %i.dp to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.du, %bb.o ], [ %i.dp, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.ax, label %iter.check686, label %.preheader354

iter.check686:                                    ; preds = %.preheader356
  %i.dv = sub nsw i64 %i.di, %i.dd
  %diff.check669 = icmp ugt i64 %i.dv, -32
  %or.cond733 = select i1 %min.iters.check671, i1 true, i1 %diff.check669
  br i1 %or.cond733, label %.lr.ph360.preheader, label %vector.main.loop.iter.check672

vector.main.loop.iter.check672:                   ; preds = %iter.check686
  br i1 %min.iters.check673, label %vec.epilog.ph690, label %vector.body676

vector.body676:                                   ; preds = %vector.main.loop.iter.check672, %vector.body676
  %index677 = phi i64 [ %index.next682, %vector.body676 ], [ 0, %vector.main.loop.iter.check672 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %index677 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load678 = load <16 x i8>, ptr %i.dw, align 1
  %wide.load679 = load <16 x i8>, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index677 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load680 = load <16 x i8>, ptr %i.dy, align 1
  %wide.load681 = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = add <16 x i8> %wide.load680, %wide.load678
  %i.eb = add <16 x i8> %wide.load681, %wide.load679
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 %index677 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <16 x i8> %i.ea, ptr %i.ec, align 1
  store <16 x i8> %i.eb, ptr %i.ed, align 1
  %index.next682 = add nuw i64 %index677, 32      ; 2 uses
  %i.ee = icmp eq i64 %index.next682, %n.vec675
  br i1 %i.ee, label %middle.block683, label %vector.body676, !llvm.loop !224

middle.block683:                                  ; preds = %vector.body676
  br i1 %cmp.n684, label %.preheader354, label %vec.epilog.iter.check688

vec.epilog.iter.check688:                         ; preds = %middle.block683
  br i1 %min.epilog.iters.check689, label %.lr.ph360.preheader, label %vec.epilog.ph690, !prof !17

vec.epilog.ph690:                                 ; preds = %vector.main.loop.iter.check672, %vec.epilog.iter.check688
  %vec.epilog.resume.val685 = phi i64 [ %n.vec675, %vec.epilog.iter.check688 ], [ 0, %vector.main.loop.iter.check672 ]
  br label %vec.epilog.vector.body692

vec.epilog.vector.body692:                        ; preds = %vec.epilog.vector.body692, %vec.epilog.ph690
  %index693 = phi i64 [ %vec.epilog.resume.val685, %vec.epilog.ph690 ], [ %index.next696, %vec.epilog.vector.body692 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.do, i64 %index693
  %wide.load694 = load <4 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index693
  %wide.load695 = load <4 x i8>, ptr %i.eg, align 1
  %i.eh = add <4 x i8> %wide.load695, %wide.load694
  %i.ei = getelementptr inbounds nuw i8, ptr %i.de, i64 %index693
  store <4 x i8> %i.eh, ptr %i.ei, align 1
  %index.next696 = add nuw i64 %index693, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.ej, label %vec.epilog.middle.block697, label %vec.epilog.vector.body692, !llvm.loop !225

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body692
  br i1 %cmp.n698, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check686, %vec.epilog.iter.check688, %vec.epilog.middle.block697
  %indvars.iv421.ph = phi i64 [ 0, %iter.check686 ], [ %n.vec675, %vec.epilog.iter.check688 ], [ %n.vec691, %vec.epilog.middle.block697 ] ; 3 uses
  br i1 %lcmp.mod752.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv421.prol
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  %i.en = load i8, ptr %i.em, align 1
  %.narrow286.prol = add i8 %i.en, %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eo, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter751
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !226

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ep = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.ax, label %iter.check615, label %.preheader351

iter.check615:                                    ; preds = %.preheader353
  %i.er = sub nsw i64 %i.di, %i.dd
  %diff.check598 = icmp ugt i64 %i.er, -32
  %or.cond734 = select i1 %min.iters.check600, i1 true, i1 %diff.check598
  br i1 %or.cond734, label %.lr.ph364.preheader, label %vector.main.loop.iter.check601

vector.main.loop.iter.check601:                   ; preds = %iter.check615
  br i1 %min.iters.check602, label %vec.epilog.ph619, label %vector.body605

vector.body605:                                   ; preds = %vector.main.loop.iter.check601, %vector.body605
  %index606 = phi i64 [ %index.next611, %vector.body605 ], [ 0, %vector.main.loop.iter.check601 ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %index606 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load607 = load <16 x i8>, ptr %i.es, align 1
  %wide.load608 = load <16 x i8>, ptr %i.et, align 1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index606 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load609 = load <16 x i8>, ptr %i.eu, align 1
  %wide.load610 = load <16 x i8>, ptr %i.ev, align 1
  %i.ew = lshr <16 x i8> %wide.load609, splat (i8 1)
  %i.ex = lshr <16 x i8> %wide.load610, splat (i8 1)
  %i.ey = add <16 x i8> %i.ew, %wide.load607
  %i.ez = add <16 x i8> %i.ex, %wide.load608
  %i.fa = getelementptr inbounds nuw i8, ptr %i.de, i64 %index606 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <16 x i8> %i.ey, ptr %i.fa, align 1
  store <16 x i8> %i.ez, ptr %i.fb, align 1
  %index.next611 = add nuw i64 %index606, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next611, %n.vec604
  br i1 %i.fc, label %middle.block612, label %vector.body605, !llvm.loop !227

middle.block612:                                  ; preds = %vector.body605
  br i1 %cmp.n613, label %.preheader351, label %vec.epilog.iter.check617

vec.epilog.iter.check617:                         ; preds = %middle.block612
  br i1 %min.epilog.iters.check618, label %.lr.ph364.preheader, label %vec.epilog.ph619, !prof !17

vec.epilog.ph619:                                 ; preds = %vector.main.loop.iter.check601, %vec.epilog.iter.check617
  %vec.epilog.resume.val614 = phi i64 [ %n.vec604, %vec.epilog.iter.check617 ], [ 0, %vector.main.loop.iter.check601 ]
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph619
  %index622 = phi i64 [ %vec.epilog.resume.val614, %vec.epilog.ph619 ], [ %index.next625, %vec.epilog.vector.body621 ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %index622
  %wide.load623 = load <4 x i8>, ptr %i.fd, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index622
  %wide.load624 = load <4 x i8>, ptr %i.fe, align 1
  %i.ff = lshr <4 x i8> %wide.load624, splat (i8 1)
  %i.fg = add <4 x i8> %i.ff, %wide.load623
  %i.fh = getelementptr inbounds nuw i8, ptr %i.de, i64 %index622
  store <4 x i8> %i.fg, ptr %i.fh, align 1
  %index.next625 = add nuw i64 %index622, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next625, %n.vec620
  br i1 %i.fi, label %vec.epilog.middle.block626, label %vec.epilog.vector.body621, !llvm.loop !228

vec.epilog.middle.block626:                       ; preds = %vec.epilog.vector.body621
  br i1 %cmp.n627, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check615, %vec.epilog.iter.check617, %vec.epilog.middle.block626
end_hunk_6
