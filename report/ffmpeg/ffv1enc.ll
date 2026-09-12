Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
  br label %put_symbol_inline.exit173.i.i.sink.split

bb.nx:                                            ; preds = %bb.nu
  %i.fgg = load i32, ptr %i.ahl, align 8, !tbaa !64
  %i.fgh = add nsw i32 %i.fgg, 1
  store i32 %i.fgh, ptr %i.ahl, align 8, !tbaa !64
  br label %put_symbol_inline.exit173.i.i.sink.split

bb.ny:                                            ; preds = %bb.ly
  %i.fgi = load i32, ptr %i.ahk, align 4, !tbaa !60 ; 2 uses
  %i.fgj = load i8, ptr %i.dvf, align 1, !tbaa !54
  %i.fgk = zext i8 %i.fgj to i32
  %i.fgl = mul nsw i32 %i.fgi, %i.fgk
  %i.fgm = ashr i32 %i.fgl, 8                     ; 2 uses
  %i.fgn = load i32, ptr %i.aj, align 8, !tbaa !61
  %i.fgo = add i32 %i.fgn, %i.fgi
  %i.fgp = sub i32 %i.fgo, %i.fgm
  store i32 %i.fgp, ptr %i.aj, align 8, !tbaa !61
  store i32 %i.fgm, ptr %i.ahk, align 4, !tbaa !60
  %i.fgq = load i8, ptr %i.dvf, align 1, !tbaa !54
  %i.fgr = zext i8 %i.fgq to i64
  %i.fgs = getelementptr inbounds nuw i8, ptr %i.ain, i64 %i.fgr
  %storemerge.i.i.i.i = load i8, ptr %i.fgs, align 1, !tbaa !54
  store i8 %storemerge.i.i.i.i, ptr %i.dvf, align 1, !tbaa !54
  %i.fgt = load i32, ptr %i.ahk, align 4, !tbaa !60 ; 2 uses
  %i.fgu = icmp slt i32 %i.fgt, 256
  br i1 %i.fgu, label %bb.nz, label %put_symbol_inline.exit173.i.i

bb.nz:                                            ; preds = %bb.ny
  %i.fgv = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.fgw = add nsw i32 %i.fgv, -65281             ; 2 uses
  %i.fgx = icmp ugt i32 %i.fgw, 254
  br i1 %i.fgx, label %bb.oa, label %bb.oc

bb.oa:                                            ; preds = %bb.nz
  %i.fgy = ashr i32 %i.fgw, 31                    ; 2 uses
  %i.fgz = load i32, ptr %i.ahm, align 4, !tbaa !62
  %i.fha = add nsw i32 %i.fgy, 1
  %i.fhb = add i32 %i.fha, %i.fgz
  %i.fhc = trunc i32 %i.fhb to i8
  %i.fhd = load ptr, ptr %i.ahn, align 8, !tbaa !63
  store i8 %i.fhc, ptr %i.fhd, align 1, !tbaa !54
  %i.fhe = load i32, ptr %i.ahm, align 4, !tbaa !62
  %i.fhf = icmp sgt i32 %i.fhe, -1
  %i.fhg = load ptr, ptr %i.ahn, align 8, !tbaa !63
  %i.fhh = zext i1 %i.fhf to i64
  %i.fhi = getelementptr inbounds nuw i8, ptr %i.fhg, i64 %i.fhh
  store ptr %i.fhi, ptr %i.ahn, align 8, !tbaa !63
  %i.fhj = load i32, ptr %i.ahl, align 8, !tbaa !64
  %.not16.i210.i = icmp eq i32 %i.fhj, 0
  br i1 %.not16.i210.i, label %._crit_edge.i213.i, label %.lr.ph.i211.i

.lr.ph.i211.i:                                    ; preds = %bb.oa
  %i.fhk = trunc nsw i32 %i.fgy to i8
  br label %bb.ob

bb.ob:                                            ; preds = %bb.ob, %.lr.ph.i211.i
  %i.fhl = load ptr, ptr %i.ahn, align 8, !tbaa !63 ; 2 uses
  %i.fhm = getelementptr inbounds nuw i8, ptr %i.fhl, i64 1
  store ptr %i.fhm, ptr %i.ahn, align 8, !tbaa !63
  store i8 %i.fhk, ptr %i.fhl, align 1, !tbaa !54
  %i.fhn = load i32, ptr %i.ahl, align 8, !tbaa !64
  %i.fho = add nsw i32 %i.fhn, -1                 ; 2 uses
  store i32 %i.fho, ptr %i.ahl, align 8, !tbaa !64
  %.not.i212.i = icmp eq i32 %i.fho, 0
  br i1 %.not.i212.i, label %._crit_edge.i213.i, label %bb.ob, !llvm.loop !0

._crit_edge.i213.i:                               ; preds = %bb.ob, %bb.oa
  %i.fhp = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.fhq = ashr i32 %i.fhp, 8
  store i32 %i.fhq, ptr %i.ahm, align 4, !tbaa !62
  %.pre189.i = load i32, ptr %i.ahk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i.i.sink.split

bb.oc:                                            ; preds = %bb.nz
  %i.fhr = load i32, ptr %i.ahl, align 8, !tbaa !64
  %i.fhs = add nsw i32 %i.fhr, 1
  store i32 %i.fhs, ptr %i.ahl, align 8, !tbaa !64
  br label %put_symbol_inline.exit173.i.i.sink.split

bb.od:                                            ; preds = %bb.jr, %bb.jq
  %.pre-phi.i = phi i32 [ %i.dtn, %bb.jq ], [ %i.dup, %bb.jr ]
  %.sink39.i.i = phi i32 [ %i.duo, %bb.jq ], [ %i.dvc, %bb.jr ]
  %i.fht = phi i64 [ 2048, %bb.jq ], [ 1024, %bb.jr ]
  %.sink.i118.i = phi i32 [ %i.dun, %bb.jq ], [ %i.dvb, %bb.jr ]
  %i.fhu = getelementptr inbounds nuw i8, ptr %i.dpt, i64 %i.fht
  %i.fhv = and i32 %.sink39.i.i, 255
  %i.fhw = zext nneg i32 %i.fhv to i64
  %i.fhx = getelementptr inbounds nuw [2 x i8], ptr %i.fhu, i64 %i.fhw
  %i.fhy = load i16, ptr %i.fhx, align 2, !tbaa !79
  %i.fhz = sext i16 %i.fhy to i32
  %i.fia = add nsw i32 %.sink.i118.i, %i.fhz      ; 2 uses
  %i.fib = load i32, ptr %i.dsz, align 4, !tbaa !72
  %i.fic = add i32 %.pre-phi.i, %i.dte            ; 2 uses
  %..i.i.i = call i32 @llvm.smax.i32(i32 %i.dti, i32 %i.fic)
  %.20.i.i.i = call i32 @llvm.smin.i32(i32 %i.dti, i32 %i.fic)
  %i.fid = call i32 @llvm.smin.i32(i32 %i.dte, i32 %..i.i.i)
  %i.fie = call noundef i32 @llvm.smax.i32(i32 %i.fid, i32 %.20.i.i.i)
  %i.fif = sub nsw i32 %i.fib, %i.fie             ; 2 uses
  %i.fig = icmp slt i32 %i.fia, 0
  %i.fih = sub nsw i32 0, %i.fif
  %.0101.i.i = select i1 %i.fig, i32 %i.fih, i32 %i.fif ; 2 uses
  %sext.i.i.i = shl i32 %.0101.i.i, 24
  %i.fii = ashr exact i32 %sext.i.i.i, 24
  %i.fij = shl i32 %.0101.i.i, %i.dpo
  %i.fik = ashr exact i32 %i.fij, %i.dpo
  %.0.i182.i.i = select i1 %i.dpn, i32 %i.fii, i32 %i.fik ; 2 uses
  %.not129.i.i = icmp eq i32 %.0.i182.i.i, 0
  br i1 %.not129.i.i, label %put_symbol_inline.exit173.i.thread.i, label %.preheader.i662.loopexit

.preheader.i662.loopexit:                         ; preds = %bb.od
  %i.fil = call i32 @llvm.abs.i32(i32 %i.fia, i1 true)
  br label %.preheader.i662

.preheader.i662:                                  ; preds = %bb.jo, %.preheader.i662.loopexit
  %.lcssa1174 = phi i32 [ %i.fil, %.preheader.i662.loopexit ], [ 0, %bb.jo ]
  %.0.i182.i.i.lcssa1170 = phi i32 [ %.0.i182.i.i, %.preheader.i662.loopexit ], [ %.0.i182.i.i.peel, %bb.jo ] ; 2 uses
  %indvars.iv148.i.lcssa1166 = phi i64 [ %indvars.iv148.i, %.preheader.i662.loopexit ], [ %indvars.iv148.ph.i, %bb.jo ]
  %.0105.i78.i.lcssa1160 = phi i32 [ %.0105.i78.i, %.preheader.i662.loopexit ], [ 0, %bb.jo ] ; 3 uses
  %i.fim = sext i32 %.0109.i77.ph.i.ph to i64     ; 2 uses
  %i.fin = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.fim
  %i.fio = load i8, ptr %i.fin, align 1, !tbaa !54
  %i.fip = zext i8 %i.fio to i32                  ; 2 uses
  %i.fiq = shl nuw i32 1, %i.fip                  ; 2 uses
  %.not130.i68.i = icmp slt i32 %.0105.i78.i.lcssa1160, %i.fiq
  %.pre192.i = load i32, ptr %i.ajb, align 8, !tbaa !135 ; 2 uses
  %.pre193.i = load i32, ptr %i.ajh, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i68.i, label %._crit_edge72.i, label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.preheader.i662, %put_bits.exit.i
  %i.fir = phi i32 [ %i.fjl, %put_bits.exit.i ], [ %.pre193.i, %.preheader.i662 ] ; 4 uses
  %i.fis = phi i32 [ %.026.i.i.i, %put_bits.exit.i ], [ %.pre192.i, %.preheader.i662 ] ; 2 uses
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %put_bits.exit.i ], [ %i.fim, %.preheader.i662 ]
  %i.fit = phi i32 [ %i.fjp, %put_bits.exit.i ], [ %i.fiq, %.preheader.i662 ]
  %.1106.i70.i = phi i32 [ %i.fiu, %put_bits.exit.i ], [ %.0105.i78.i.lcssa1160, %.preheader.i662 ]
  %i.fiu = sub nsw i32 %.1106.i70.i, %i.fit       ; 3 uses
  %indvars.iv.next146.i = add nsw i64 %indvars.iv145.i, 1 ; 3 uses
  %i.fiv = icmp sgt i32 %i.fir, 1
  br i1 %i.fiv, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %.lr.ph71.i
  %i.fiw = shl i32 %i.fis, 1
  %i.fix = or disjoint i32 %i.fiw, 1
  br label %put_bits.exit.i

bb.of:                                            ; preds = %.lr.ph71.i
  %i.fiy = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.fiz = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.fja = ptrtoint ptr %i.fiy to i64
  %i.fjb = ptrtoint ptr %i.fiz to i64
  %i.fjc = sub i64 %i.fja, %i.fjb
  %i.fjd = icmp ugt i64 %i.fjc, 3
  br i1 %i.fjd, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.fje = shl i32 %i.fis, %i.fir
  %i.fjf = icmp eq i32 %i.fir, 1
  %i.fjg = zext i1 %i.fjf to i32
  %i.fjh = or i32 %i.fje, %i.fjg
  %i.fji = call i32 @llvm.bswap.i32(i32 %i.fjh)
  store i32 %i.fji, ptr %i.fiz, align 1, !tbaa !54
  %i.fjj = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.fjk = getelementptr inbounds nuw i8, ptr %i.fjj, i64 4
  store ptr %i.fjk, ptr %i.ajg, align 8, !tbaa !133
  br label %put_bits.exit.i

bb.oh:                                            ; preds = %bb.of
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit.i

put_bits.exit.i:                                  ; preds = %bb.oh, %bb.og, %bb.oe
  %.sink377.i = phi i32 [ -1, %bb.oe ], [ 31, %bb.oh ], [ 31, %bb.og ]
  %.026.i.i.i = phi i32 [ %i.fix, %bb.oe ], [ 1, %bb.oh ], [ 1, %bb.og ] ; 3 uses
  %i.fjl = add nsw i32 %.sink377.i, %i.fir        ; 3 uses
  store i32 %.026.i.i.i, ptr %i.ajb, align 8, !tbaa !135
  store i32 %i.fjl, ptr %i.ajh, align 4, !tbaa !134
  %i.fjm = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next146.i
  %i.fjn = load i8, ptr %i.fjm, align 1, !tbaa !54
  %i.fjo = zext i8 %i.fjn to i32                  ; 2 uses
  %i.fjp = shl nuw i32 1, %i.fjo                  ; 2 uses
  %.not130.i.i = icmp slt i32 %i.fiu, %i.fjp
  br i1 %.not130.i.i, label %._crit_edge72.loopexit.i, label %.lr.ph71.i, !llvm.loop !7

._crit_edge72.loopexit.i:                         ; preds = %put_bits.exit.i
  %i.fjq = trunc nsw i64 %indvars.iv.next146.i to i32
  br label %._crit_edge72.i

._crit_edge72.i:                                  ; preds = %._crit_edge72.loopexit.i, %.preheader.i662
  %i.fjr = phi i32 [ %.pre193.i, %.preheader.i662 ], [ %i.fjl, %._crit_edge72.loopexit.i ] ; 5 uses
  %i.fjs = phi i32 [ %.pre192.i, %.preheader.i662 ], [ %.026.i.i.i, %._crit_edge72.loopexit.i ] ; 2 uses
  %.1110.i.lcssa.i = phi i32 [ %.0109.i77.ph.i.ph, %.preheader.i662 ], [ %i.fjq, %._crit_edge72.loopexit.i ]
  %.1106.i.lcssa.i = phi i32 [ %.0105.i78.i.lcssa1160, %.preheader.i662 ], [ %i.fiu, %._crit_edge72.loopexit.i ] ; 3 uses
  %.lcssa.i = phi i32 [ %i.fip, %.preheader.i662 ], [ %i.fjo, %._crit_edge72.loopexit.i ] ; 2 uses
  %i.fjt = add nuw nsw i32 %.lcssa.i, 1           ; 4 uses
  %i.fju = icmp slt i32 %i.fjt, %i.fjr
  br i1 %i.fju, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %._crit_edge72.i
  %i.fjv = shl i32 %i.fjs, %i.fjt
  %i.fjw = or i32 %i.fjv, %.1106.i.lcssa.i
  %i.fjx = sub nsw i32 %i.fjr, %i.fjt
  br label %put_bits.exit219.i

bb.oj:                                            ; preds = %._crit_edge72.i
  %i.fjy = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.fjz = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.fka = ptrtoint ptr %i.fjy to i64
  %i.fkb = ptrtoint ptr %i.fjz to i64
  %i.fkc = sub i64 %i.fka, %i.fkb
  %i.fkd = icmp ugt i64 %i.fkc, 3
  br i1 %i.fkd, label %bb.ok, label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  %i.fke = shl i32 %i.fjs, %i.fjr
  %i.fkf = sub nsw i32 %i.fjt, %i.fjr
  %i.fkg = lshr i32 %.1106.i.lcssa.i, %i.fkf
  %i.fkh = or i32 %i.fkg, %i.fke
  %i.fki = call i32 @llvm.bswap.i32(i32 %i.fkh)
  store i32 %i.fki, ptr %i.fjz, align 1, !tbaa !54
  %i.fkj = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.fkk = getelementptr inbounds nuw i8, ptr %i.fkj, i64 4
  store ptr %i.fkk, ptr %i.ajg, align 8, !tbaa !133
  br label %bb.om

bb.ol:                                            ; preds = %bb.oj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %reass.sub.i = add nsw i32 %i.fjr, 31
  %i.fkl = sub i32 %reass.sub.i, %.lcssa.i
  br label %put_bits.exit219.i

put_bits.exit219.i:                               ; preds = %bb.om, %bb.oi
  %.026.i.i217.i = phi i32 [ %i.fjw, %bb.oi ], [ %.1106.i.lcssa.i, %bb.om ]
  %.0.i.i218.i = phi i32 [ %i.fjx, %bb.oi ], [ %i.fkl, %bb.om ]
  store i32 %.026.i.i217.i, ptr %i.ajb, align 8, !tbaa !135
  store i32 %.0.i.i218.i, ptr %i.ajh, align 4, !tbaa !134
  %spec.select134.i.i = call i32 @llvm.usub.sat.i32(i32 %.1110.i.lcssa.i, i32 1)
  %i.fkm = icmp sgt i32 %.0.i182.i.i.lcssa1170, 0
  %i.fkn = sext i1 %i.fkm to i32
  %spec.select135.i.i = add nsw i32 %.0.i182.i.i.lcssa1170, %i.fkn
  br label %put_symbol_inline.exit173.i.i.thread

.loopexit.i663:                                   ; preds = %bb.jn
  %.0.i.le341.i = call i32 @llvm.abs.i32(i32 %i.dso, i1 true)
  br label %put_symbol_inline.exit173.i.i.thread

put_symbol_inline.exit173.i.i.sink.split:         ; preds = %._crit_edge.i213.i, %bb.oc, %._crit_edge.i208.i, %bb.nx, %._crit_edge.i188.i, %bb.mz, %._crit_edge.i163.i, %bb.lx, %._crit_edge.i158.i, %bb.ls, %._crit_edge.i138.i, %bb.ku
  %.sink = phi i32 [ %i.fge, %._crit_edge.i208.i ], [ %i.ezh, %._crit_edge.i188.i ], [ %i.eqi, %._crit_edge.i163.i ], [ %i.eoo, %._crit_edge.i158.i ], [ %i.egc, %._crit_edge.i138.i ], [ %i.efi, %bb.ku ], [ %i.enu, %bb.ls ], [ %i.epo, %bb.lx ], [ %i.eyn, %bb.mz ], [ %i.ffk, %bb.nx ], [ %i.fgv, %bb.oc ], [ %i.fhp, %._crit_edge.i213.i ]
  %.sink1811 = phi i32 [ %.pre184.i, %._crit_edge.i208.i ], [ %.pre188.i, %._crit_edge.i188.i ], [ %.pre179.i, %._crit_edge.i163.i ], [ %.pre174.i, %._crit_edge.i158.i ], [ %.pre178.i, %._crit_edge.i138.i ], [ %i.efg, %bb.ku ], [ %i.ens, %bb.ls ], [ %i.epm, %bb.lx ], [ %i.eyl, %bb.mz ], [ %i.ffi, %bb.nx ], [ %i.fgt, %bb.oc ], [ %.pre189.i, %._crit_edge.i213.i ]
  %i.fko = shl i32 %.sink, 8
  %i.fkp = and i32 %i.fko, 65280
  store i32 %i.fkp, ptr %i.aj, align 8, !tbaa !61
  %i.fkq = shl i32 %.sink1811, 8
  store i32 %i.fkq, ptr %i.ahk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i.i

put_symbol_inline.exit173.i.i:                    ; preds = %put_symbol_inline.exit173.i.i.sink.split, %bb.ny, %bb.nt, %bb.mv, %bb.lt, %bb.lo, %bb.kq
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.ph.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count.i499
  br i1 %exitcond152.not.i, label %._crit_edge82.thread.i, label %.outer.i, !llvm.loop !8

put_symbol_inline.exit173.i.i.thread:             ; preds = %put_bits.exit219.i, %.loopexit.i663
  %indvars.iv148.i1168 = phi i64 [ %indvars.iv148.i.lcssa1166, %put_bits.exit219.i ], [ %indvars.iv148.ph.i, %.loopexit.i663 ]
  %.0.i318.i = phi i32 [ %.lcssa1174, %put_bits.exit219.i ], [ %.0.i.le341.i, %.loopexit.i663 ]
  %.3112.i.ph.i = phi i32 [ %spec.select134.i.i, %put_bits.exit219.i ], [ %.0109.i77.ph.i.ph, %.loopexit.i663 ] ; 2 uses
  %.1.i.ph.i = phi i32 [ %spec.select135.i.i, %put_bits.exit219.i ], [ %.0.i182.i.i.peel, %.loopexit.i663 ]
  %i.fkr = load ptr, ptr %i.dpq, align 8, !tbaa !140
  %i.fks = zext nneg i32 %.0.i318.i to i64
  %i.fkt = getelementptr inbounds nuw [8 x i8], ptr %i.fkr, i64 %i.fks
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.ajb, ptr noundef %i.fkt, i32 noundef %.1.i.ph.i, i32 noundef %i.dmm)
  %indvars.iv.next149.i806 = add nuw nsw i64 %indvars.iv148.i1168, 1 ; 2 uses
  %exitcond152.not.i807 = icmp eq i64 %indvars.iv.next149.i806, %wide.trip.count.i499
  br i1 %exitcond152.not.i807, label %._crit_edge82.thread.i, label %.outer.i.outer, !llvm.loop !8

put_symbol_inline.exit173.i.thread.i:             ; preds = %bb.od
  %i.fku = add nuw nsw i32 %.0105.i78.i, 1
  %indvars.iv.next149286.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not287.i = icmp eq i64 %indvars.iv.next149286.i, %wide.trip.count.i499
  br i1 %exitcond152.not287.i, label %.preheader33.i, label %.peel.next1290, !llvm.loop !309

.preheader33.i:                                   ; preds = %put_symbol_inline.exit173.i.thread.i.peel, %put_symbol_inline.exit173.i.thread.i
  %i.fkv = trunc i64 %indvars.iv148.ph.i to i32
  %i.fkw = sub i32 %i.v, %i.fkv                   ; 3 uses
  %i.fkx = sext i32 %.0109.i77.ph.i.ph to i64     ; 2 uses
  %i.fky = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.fkx
  %i.fkz = load i8, ptr %i.fky, align 1, !tbaa !54
  %i.fla = zext nneg i8 %i.fkz to i32
  %i.flb = shl nuw i32 1, %i.fla                  ; 2 uses
  %.not126.i86.i = icmp slt i32 %i.fkw, %i.flb
  br i1 %.not126.i86.i, label %._crit_edge90.i, label %.lr.ph89.preheader.i

.lr.ph89.preheader.i:                             ; preds = %.preheader33.i
  %.pre194.i = load i32, ptr %i.ajb, align 8, !tbaa !135
  %.pre195.i = load i32, ptr %i.ajh, align 4, !tbaa !134
  br label %.lr.ph89.i

.lr.ph89.i:                                       ; preds = %put_bits.exit223.i, %.lr.ph89.preheader.i
  %i.flc = phi i32 [ %.pre195.i, %.lr.ph89.preheader.i ], [ %i.flw, %put_bits.exit223.i ] ; 4 uses
  %i.fld = phi i32 [ %.pre194.i, %.lr.ph89.preheader.i ], [ %.026.i.i221.i, %put_bits.exit223.i ] ; 2 uses
  %indvars.iv153.i = phi i64 [ %i.fkx, %.lr.ph89.preheader.i ], [ %indvars.iv.next154.i, %put_bits.exit223.i ]
  %i.fle = phi i32 [ %i.flb, %.lr.ph89.preheader.i ], [ %i.fma, %put_bits.exit223.i ]
  %.4.i88.i = phi i32 [ %i.fkw, %.lr.ph89.preheader.i ], [ %i.flf, %put_bits.exit223.i ]
  %i.flf = sub nsw i32 %.4.i88.i, %i.fle          ; 3 uses
  %indvars.iv.next154.i = add nsw i64 %indvars.iv153.i, 1 ; 3 uses
  %i.flg = icmp sgt i32 %i.flc, 1
  br i1 %i.flg, label %bb.on, label %bb.oo

bb.on:                                            ; preds = %.lr.ph89.i
  %i.flh = shl i32 %i.fld, 1
  %i.fli = or disjoint i32 %i.flh, 1
  br label %put_bits.exit223.i

bb.oo:                                            ; preds = %.lr.ph89.i
  %i.flj = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.flk = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.fll = ptrtoint ptr %i.flj to i64
  %i.flm = ptrtoint ptr %i.flk to i64
  %i.fln = sub i64 %i.fll, %i.flm
  %i.flo = icmp ugt i64 %i.fln, 3
  br i1 %i.flo, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  %i.flp = shl i32 %i.fld, %i.flc
  %i.flq = icmp eq i32 %i.flc, 1
  %i.flr = zext i1 %i.flq to i32
  %i.fls = or i32 %i.flp, %i.flr
  %i.flt = call i32 @llvm.bswap.i32(i32 %i.fls)
  store i32 %i.flt, ptr %i.flk, align 1, !tbaa !54
  %i.flu = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.flv = getelementptr inbounds nuw i8, ptr %i.flu, i64 4
  store ptr %i.flv, ptr %i.ajg, align 8, !tbaa !133
  br label %put_bits.exit223.i

bb.oq:                                            ; preds = %bb.oo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit223.i

put_bits.exit223.i:                               ; preds = %bb.oq, %bb.op, %bb.on
  %.sink378.i = phi i32 [ -1, %bb.on ], [ 31, %bb.oq ], [ 31, %bb.op ]
  %.026.i.i221.i = phi i32 [ %i.fli, %bb.on ], [ 1, %bb.oq ], [ 1, %bb.op ] ; 2 uses
  %i.flw = add nsw i32 %.sink378.i, %i.flc        ; 2 uses
  store i32 %.026.i.i221.i, ptr %i.ajb, align 8, !tbaa !135
  store i32 %i.flw, ptr %i.ajh, align 4, !tbaa !134
  %i.flx = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next154.i
  %i.fly = load i8, ptr %i.flx, align 1, !tbaa !54
  %i.flz = zext nneg i8 %i.fly to i32
  %i.fma = shl nuw i32 1, %i.flz                  ; 2 uses
  %.not126.i.i = icmp slt i32 %i.flf, %i.fma
  br i1 %.not126.i.i, label %._crit_edge90.loopexit.i, label %.lr.ph89.i, !llvm.loop !9

._crit_edge90.loopexit.i:                         ; preds = %put_bits.exit223.i
  %i.fmb = trunc nsw i64 %indvars.iv.next154.i to i32
  br label %._crit_edge90.i

._crit_edge90.i:                                  ; preds = %._crit_edge90.loopexit.i, %.preheader33.i
  %.5.i.lcssa.i = phi i32 [ %.0109.i77.ph.i.ph, %.preheader33.i ], [ %i.fmb, %._crit_edge90.loopexit.i ] ; 2 uses
  %.4.i.lcssa.i = phi i32 [ %i.fkw, %.preheader33.i ], [ %i.flf, %._crit_edge90.loopexit.i ]
  %.not127.i.i = icmp eq i32 %.4.i.lcssa.i, 0
  br i1 %.not127.i.i, label %._crit_edge82.thread.i, label %bb.or

bb.or:                                            ; preds = %._crit_edge90.i
  %i.fmc = load i32, ptr %i.ajb, align 8, !tbaa !135 ; 2 uses
  %i.fmd = load i32, ptr %i.ajh, align 4, !tbaa !134 ; 4 uses
  %i.fme = icmp sgt i32 %i.fmd, 1
  br i1 %i.fme, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  %i.fmf = shl i32 %i.fmc, 1
  %i.fmg = or disjoint i32 %i.fmf, 1
  br label %put_bits.exit227.i

bb.ot:                                            ; preds = %bb.or
  %i.fmh = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.fmi = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.fmj = ptrtoint ptr %i.fmh to i64
  %i.fmk = ptrtoint ptr %i.fmi to i64
  %i.fml = sub i64 %i.fmj, %i.fmk
  %i.fmm = icmp ugt i64 %i.fml, 3
  br i1 %i.fmm, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %i.fmn = shl i32 %i.fmc, %i.fmd
  %i.fmo = icmp eq i32 %i.fmd, 1
  %i.fmp = zext i1 %i.fmo to i32
  %i.fmq = or i32 %i.fmn, %i.fmp
  %i.fmr = call i32 @llvm.bswap.i32(i32 %i.fmq)
  store i32 %i.fmr, ptr %i.fmi, align 1, !tbaa !54
  %i.fms = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.fmt = getelementptr inbounds nuw i8, ptr %i.fms, i64 4
  store ptr %i.fmt, ptr %i.ajg, align 8, !tbaa !133
  br label %put_bits.exit227.i

bb.ov:                                            ; preds = %bb.ot
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit227.i

put_bits.exit227.i:                               ; preds = %bb.ov, %bb.ou, %bb.os
  %.sink379.i = phi i32 [ -1, %bb.os ], [ 31, %bb.ov ], [ 31, %bb.ou ]
  %.026.i.i225.i = phi i32 [ %i.fmg, %bb.os ], [ 1, %bb.ov ], [ 1, %bb.ou ]
end_hunk_0
begin_hunk_1_@encode_slice:bb.a
  br label %put_symbol_inline.exit173.i.i715.sink.split

bb.ud:                                            ; preds = %bb.ua
  %i.hkk = load i32, ptr %i.ahl, align 8, !tbaa !64
  %i.hkl = add nsw i32 %i.hkk, 1
  store i32 %i.hkl, ptr %i.ahl, align 8, !tbaa !64
  br label %put_symbol_inline.exit173.i.i715.sink.split

bb.ue:                                            ; preds = %bb.se
  %i.hkm = load i32, ptr %i.ahk, align 4, !tbaa !60 ; 2 uses
  %i.hkn = load i8, ptr %i.fzj, align 1, !tbaa !54
  %i.hko = zext i8 %i.hkn to i32
  %i.hkp = mul nsw i32 %i.hkm, %i.hko
  %i.hkq = ashr i32 %i.hkp, 8                     ; 2 uses
  %i.hkr = load i32, ptr %i.aj, align 8, !tbaa !61
  %i.hks = add i32 %i.hkr, %i.hkm
  %i.hkt = sub i32 %i.hks, %i.hkq
  store i32 %i.hkt, ptr %i.aj, align 8, !tbaa !61
  store i32 %i.hkq, ptr %i.ahk, align 4, !tbaa !60
  %i.hku = load i8, ptr %i.fzj, align 1, !tbaa !54
  %i.hkv = zext i8 %i.hku to i64
  %i.hkw = getelementptr inbounds nuw i8, ptr %i.ain, i64 %i.hkv
  %storemerge.i.i.i.i770 = load i8, ptr %i.hkw, align 1, !tbaa !54
  store i8 %storemerge.i.i.i.i770, ptr %i.fzj, align 1, !tbaa !54
  %i.hkx = load i32, ptr %i.ahk, align 4, !tbaa !60 ; 2 uses
  %i.hky = icmp slt i32 %i.hkx, 256
  br i1 %i.hky, label %bb.uf, label %put_symbol_inline.exit173.i.i715

bb.uf:                                            ; preds = %bb.ue
  %i.hkz = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.hla = add nsw i32 %i.hkz, -65281             ; 2 uses
  %i.hlb = icmp ugt i32 %i.hla, 254
  br i1 %i.hlb, label %bb.ug, label %bb.ui

bb.ug:                                            ; preds = %bb.uf
  %i.hlc = ashr i32 %i.hla, 31                    ; 2 uses
  %i.hld = load i32, ptr %i.ahm, align 4, !tbaa !62
  %i.hle = add nsw i32 %i.hlc, 1
  %i.hlf = add i32 %i.hle, %i.hld
  %i.hlg = trunc i32 %i.hlf to i8
  %i.hlh = load ptr, ptr %i.ahn, align 8, !tbaa !63
  store i8 %i.hlg, ptr %i.hlh, align 1, !tbaa !54
  %i.hli = load i32, ptr %i.ahm, align 4, !tbaa !62
  %i.hlj = icmp sgt i32 %i.hli, -1
  %i.hlk = load ptr, ptr %i.ahn, align 8, !tbaa !63
  %i.hll = zext i1 %i.hlj to i64
  %i.hlm = getelementptr inbounds nuw i8, ptr %i.hlk, i64 %i.hll
  store ptr %i.hlm, ptr %i.ahn, align 8, !tbaa !63
  %i.hln = load i32, ptr %i.ahl, align 8, !tbaa !64
  %.not16.i216.i = icmp eq i32 %i.hln, 0
  br i1 %.not16.i216.i, label %._crit_edge.i219.i, label %.lr.ph.i217.i

.lr.ph.i217.i:                                    ; preds = %bb.ug
  %i.hlo = trunc nsw i32 %i.hlc to i8
  br label %bb.uh

bb.uh:                                            ; preds = %bb.uh, %.lr.ph.i217.i
  %i.hlp = load ptr, ptr %i.ahn, align 8, !tbaa !63 ; 2 uses
  %i.hlq = getelementptr inbounds nuw i8, ptr %i.hlp, i64 1
  store ptr %i.hlq, ptr %i.ahn, align 8, !tbaa !63
  store i8 %i.hlo, ptr %i.hlp, align 1, !tbaa !54
  %i.hlr = load i32, ptr %i.ahl, align 8, !tbaa !64
  %i.hls = add nsw i32 %i.hlr, -1                 ; 2 uses
  store i32 %i.hls, ptr %i.ahl, align 8, !tbaa !64
  %.not.i218.i = icmp eq i32 %i.hls, 0
  br i1 %.not.i218.i, label %._crit_edge.i219.i, label %bb.uh, !llvm.loop !0

._crit_edge.i219.i:                               ; preds = %bb.uh, %bb.ug
  %i.hlt = load i32, ptr %i.aj, align 8, !tbaa !61 ; 2 uses
  %i.hlu = ashr i32 %i.hlt, 8
  store i32 %i.hlu, ptr %i.ahm, align 4, !tbaa !62
  %.pre421.i = load i32, ptr %i.ahk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i.i715.sink.split

bb.ui:                                            ; preds = %bb.uf
  %i.hlv = load i32, ptr %i.ahl, align 8, !tbaa !64
  %i.hlw = add nsw i32 %i.hlv, 1
  store i32 %i.hlw, ptr %i.ahl, align 8, !tbaa !64
  br label %put_symbol_inline.exit173.i.i715.sink.split

bb.uj:                                            ; preds = %bb.px, %bb.pw
  %.pre-phi.i689 = phi i32 [ %i.fxr, %bb.pw ], [ %i.fyt, %bb.px ]
  %.sink39.i.i690 = phi i32 [ %i.fys, %bb.pw ], [ %i.fzg, %bb.px ]
  %i.hlx = phi i64 [ 2048, %bb.pw ], [ 1024, %bb.px ]
  %.sink.i124.i = phi i32 [ %i.fyr, %bb.pw ], [ %i.fzf, %bb.px ]
  %i.hly = getelementptr inbounds nuw i8, ptr %i.ftx, i64 %i.hlx
  %i.hlz = and i32 %.sink39.i.i690, 255
  %i.hma = zext nneg i32 %i.hlz to i64
  %i.hmb = getelementptr inbounds nuw [2 x i8], ptr %i.hly, i64 %i.hma
  %i.hmc = load i16, ptr %i.hmb, align 2, !tbaa !79
  %i.hmd = sext i16 %i.hmc to i32
  %i.hme = add nsw i32 %.sink.i124.i, %i.hmd      ; 2 uses
  %i.hmf = load i32, ptr %i.fxd, align 4, !tbaa !72
  %i.hmg = add i32 %.pre-phi.i689, %i.fxi         ; 2 uses
  %..i.i.i691 = call i32 @llvm.smax.i32(i32 %i.fxm, i32 %i.hmg)
  %.20.i.i.i692 = call i32 @llvm.smin.i32(i32 %i.fxm, i32 %i.hmg)
  %i.hmh = call i32 @llvm.smin.i32(i32 %i.fxi, i32 %..i.i.i691)
  %i.hmi = call noundef i32 @llvm.smax.i32(i32 %i.hmh, i32 %.20.i.i.i692)
  %i.hmj = sub nsw i32 %i.hmf, %i.hmi             ; 2 uses
  %i.hmk = icmp slt i32 %i.hme, 0
  %i.hml = sub nsw i32 0, %i.hmj
  %.0101.i.i693 = select i1 %i.hmk, i32 %i.hml, i32 %i.hmj ; 2 uses
  %sext.i.i.i694 = shl i32 %.0101.i.i693, 24
  %i.hmm = ashr exact i32 %sext.i.i.i694, 24
  %i.hmn = shl i32 %.0101.i.i693, %i.fts
  %i.hmo = ashr exact i32 %i.hmn, %i.fts
  %.0.i182.i.i695 = select i1 %i.ftr, i32 %i.hmm, i32 %i.hmo ; 2 uses
  %.not129.i.i772 = icmp eq i32 %.0.i182.i.i695, 0
  br i1 %.not129.i.i772, label %put_symbol_inline.exit173.i.thread.i787, label %.preheader.i773.loopexit

.preheader.i773.loopexit:                         ; preds = %bb.uj
  %i.hmp = call i32 @llvm.abs.i32(i32 %i.hme, i1 true)
  br label %.preheader.i773

.preheader.i773:                                  ; preds = %bb.pu, %.preheader.i773.loopexit
  %.lcssa1135 = phi i32 [ %i.hmp, %.preheader.i773.loopexit ], [ 0, %bb.pu ]
  %.0.i182.i.i695.lcssa1131 = phi i32 [ %.0.i182.i.i695, %.preheader.i773.loopexit ], [ %.0.i182.i.i695.peel, %bb.pu ] ; 2 uses
  %indvars.iv386.i.lcssa1127 = phi i64 [ %indvars.iv386.i, %.preheader.i773.loopexit ], [ %indvars.iv386.ph.i, %bb.pu ]
  %.0105.i317.i.lcssa1121 = phi i32 [ %.0105.i317.i, %.preheader.i773.loopexit ], [ 0, %bb.pu ] ; 3 uses
  %i.hmq = sext i32 %.0109.i316.ph.i.ph to i64    ; 2 uses
  %i.hmr = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.hmq
  %i.hms = load i8, ptr %i.hmr, align 1, !tbaa !54
  %i.hmt = zext i8 %i.hms to i32                  ; 2 uses
  %i.hmu = shl nuw i32 1, %i.hmt                  ; 2 uses
  %.not130.i307.i = icmp slt i32 %.0105.i317.i.lcssa1121, %i.hmu
  %.pre424.i = load i32, ptr %i.ajb, align 8, !tbaa !135 ; 2 uses
  %.pre425.i = load i32, ptr %i.ajh, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i307.i, label %._crit_edge311.i, label %.lr.ph310.i

.lr.ph310.i:                                      ; preds = %.preheader.i773, %put_bits.exit.i775
  %i.hmv = phi i32 [ %i.hnp, %put_bits.exit.i775 ], [ %.pre425.i, %.preheader.i773 ] ; 4 uses
  %i.hmw = phi i32 [ %.026.i.i.i776, %put_bits.exit.i775 ], [ %.pre424.i, %.preheader.i773 ] ; 2 uses
  %indvars.iv383.i = phi i64 [ %indvars.iv.next384.i, %put_bits.exit.i775 ], [ %i.hmq, %.preheader.i773 ]
  %i.hmx = phi i32 [ %i.hnt, %put_bits.exit.i775 ], [ %i.hmu, %.preheader.i773 ]
  %.1106.i309.i = phi i32 [ %i.hmy, %put_bits.exit.i775 ], [ %.0105.i317.i.lcssa1121, %.preheader.i773 ]
  %i.hmy = sub nsw i32 %.1106.i309.i, %i.hmx      ; 3 uses
  %indvars.iv.next384.i = add nsw i64 %indvars.iv383.i, 1 ; 3 uses
  %i.hmz = icmp sgt i32 %i.hmv, 1
  br i1 %i.hmz, label %bb.uk, label %bb.ul

bb.uk:                                            ; preds = %.lr.ph310.i
  %i.hna = shl i32 %i.hmw, 1
  %i.hnb = or disjoint i32 %i.hna, 1
  br label %put_bits.exit.i775

bb.ul:                                            ; preds = %.lr.ph310.i
  %i.hnc = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.hnd = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.hne = ptrtoint ptr %i.hnc to i64
  %i.hnf = ptrtoint ptr %i.hnd to i64
  %i.hng = sub i64 %i.hne, %i.hnf
  %i.hnh = icmp ugt i64 %i.hng, 3
  br i1 %i.hnh, label %bb.um, label %bb.un

bb.um:                                            ; preds = %bb.ul
  %i.hni = shl i32 %i.hmw, %i.hmv
  %i.hnj = icmp eq i32 %i.hmv, 1
  %i.hnk = zext i1 %i.hnj to i32
  %i.hnl = or i32 %i.hni, %i.hnk
  %i.hnm = call i32 @llvm.bswap.i32(i32 %i.hnl)
  store i32 %i.hnm, ptr %i.hnd, align 1, !tbaa !54
  %i.hnn = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.hno = getelementptr inbounds nuw i8, ptr %i.hnn, i64 4
  store ptr %i.hno, ptr %i.ajg, align 8, !tbaa !133
  br label %put_bits.exit.i775

bb.un:                                            ; preds = %bb.ul
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit.i775

put_bits.exit.i775:                               ; preds = %bb.un, %bb.um, %bb.uk
  %.sink613.i = phi i32 [ -1, %bb.uk ], [ 31, %bb.un ], [ 31, %bb.um ]
  %.026.i.i.i776 = phi i32 [ %i.hnb, %bb.uk ], [ 1, %bb.un ], [ 1, %bb.um ] ; 3 uses
  %i.hnp = add nsw i32 %.sink613.i, %i.hmv        ; 3 uses
  store i32 %.026.i.i.i776, ptr %i.ajb, align 8, !tbaa !135
  store i32 %i.hnp, ptr %i.ajh, align 4, !tbaa !134
  %i.hnq = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next384.i
  %i.hnr = load i8, ptr %i.hnq, align 1, !tbaa !54
  %i.hns = zext i8 %i.hnr to i32                  ; 2 uses
  %i.hnt = shl nuw i32 1, %i.hns                  ; 2 uses
  %.not130.i.i777 = icmp slt i32 %i.hmy, %i.hnt
  br i1 %.not130.i.i777, label %._crit_edge311.loopexit.i, label %.lr.ph310.i, !llvm.loop !7

._crit_edge311.loopexit.i:                        ; preds = %put_bits.exit.i775
  %i.hnu = trunc nsw i64 %indvars.iv.next384.i to i32
  br label %._crit_edge311.i

._crit_edge311.i:                                 ; preds = %._crit_edge311.loopexit.i, %.preheader.i773
  %i.hnv = phi i32 [ %.pre425.i, %.preheader.i773 ], [ %i.hnp, %._crit_edge311.loopexit.i ] ; 5 uses
  %i.hnw = phi i32 [ %.pre424.i, %.preheader.i773 ], [ %.026.i.i.i776, %._crit_edge311.loopexit.i ] ; 2 uses
  %.1110.i.lcssa.i778 = phi i32 [ %.0109.i316.ph.i.ph, %.preheader.i773 ], [ %i.hnu, %._crit_edge311.loopexit.i ]
  %.1106.i.lcssa.i779 = phi i32 [ %.0105.i317.i.lcssa1121, %.preheader.i773 ], [ %i.hmy, %._crit_edge311.loopexit.i ] ; 3 uses
  %.lcssa.i780 = phi i32 [ %i.hmt, %.preheader.i773 ], [ %i.hns, %._crit_edge311.loopexit.i ] ; 2 uses
  %i.hnx = add nuw nsw i32 %.lcssa.i780, 1        ; 4 uses
  %i.hny = icmp slt i32 %i.hnx, %i.hnv
  br i1 %i.hny, label %bb.uo, label %bb.up

bb.uo:                                            ; preds = %._crit_edge311.i
  %i.hnz = shl i32 %i.hnw, %i.hnx
  %i.hoa = or i32 %i.hnz, %.1106.i.lcssa.i779
  %i.hob = sub nsw i32 %i.hnv, %i.hnx
  br label %put_bits.exit225.i

bb.up:                                            ; preds = %._crit_edge311.i
  %i.hoc = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.hod = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.hoe = ptrtoint ptr %i.hoc to i64
  %i.hof = ptrtoint ptr %i.hod to i64
  %i.hog = sub i64 %i.hoe, %i.hof
  %i.hoh = icmp ugt i64 %i.hog, 3
  br i1 %i.hoh, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  %i.hoi = shl i32 %i.hnw, %i.hnv
  %i.hoj = sub nsw i32 %i.hnx, %i.hnv
  %i.hok = lshr i32 %.1106.i.lcssa.i779, %i.hoj
  %i.hol = or i32 %i.hok, %i.hoi
  %i.hom = call i32 @llvm.bswap.i32(i32 %i.hol)
  store i32 %i.hom, ptr %i.hod, align 1, !tbaa !54
  %i.hon = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.hoo = getelementptr inbounds nuw i8, ptr %i.hon, i64 4
  store ptr %i.hoo, ptr %i.ajg, align 8, !tbaa !133
  br label %bb.us

bb.ur:                                            ; preds = %bb.up
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %reass.sub.i781 = add nsw i32 %i.hnv, 31
  %i.hop = sub i32 %reass.sub.i781, %.lcssa.i780
  br label %put_bits.exit225.i

put_bits.exit225.i:                               ; preds = %bb.us, %bb.uo
  %.026.i.i223.i = phi i32 [ %i.hoa, %bb.uo ], [ %.1106.i.lcssa.i779, %bb.us ]
  %.0.i.i224.i = phi i32 [ %i.hob, %bb.uo ], [ %i.hop, %bb.us ]
  store i32 %.026.i.i223.i, ptr %i.ajb, align 8, !tbaa !135
  store i32 %.0.i.i224.i, ptr %i.ajh, align 4, !tbaa !134
  %spec.select134.i.i782 = call i32 @llvm.usub.sat.i32(i32 %.1110.i.lcssa.i778, i32 1)
  %i.hoq = icmp sgt i32 %.0.i182.i.i695.lcssa1131, 0
  %i.hor = sext i1 %i.hoq to i32
  %spec.select135.i.i783 = add nsw i32 %.0.i182.i.i695.lcssa1131, %i.hor
  br label %put_symbol_inline.exit173.i.i715.thread

.loopexit532.i:                                   ; preds = %bb.pt
  %.0.i.le577.i = call i32 @llvm.abs.i32(i32 %i.fws, i1 true)
  br label %put_symbol_inline.exit173.i.i715.thread

put_symbol_inline.exit173.i.i715.sink.split:      ; preds = %._crit_edge.i219.i, %bb.ui, %._crit_edge.i214.i, %bb.ud, %._crit_edge.i194.i, %bb.tf, %._crit_edge.i169.i, %bb.sd, %._crit_edge.i164.i, %bb.ry, %._crit_edge.i144.i, %bb.ra
  %.sink1818 = phi i32 [ %i.hki, %._crit_edge.i214.i ], [ %i.hdl, %._crit_edge.i194.i ], [ %i.gum, %._crit_edge.i169.i ], [ %i.gss, %._crit_edge.i164.i ], [ %i.gkg, %._crit_edge.i144.i ], [ %i.gjm, %bb.ra ], [ %i.gry, %bb.ry ], [ %i.gts, %bb.sd ], [ %i.hcr, %bb.tf ], [ %i.hjo, %bb.ud ], [ %i.hkz, %bb.ui ], [ %i.hlt, %._crit_edge.i219.i ]
  %.sink1815 = phi i32 [ %.pre416.i, %._crit_edge.i214.i ], [ %.pre420.i, %._crit_edge.i194.i ], [ %.pre411.i, %._crit_edge.i169.i ], [ %.pre406.i, %._crit_edge.i164.i ], [ %.pre410.i, %._crit_edge.i144.i ], [ %i.gjk, %bb.ra ], [ %i.grw, %bb.ry ], [ %i.gtq, %bb.sd ], [ %i.hcp, %bb.tf ], [ %i.hjm, %bb.ud ], [ %i.hkx, %bb.ui ], [ %.pre421.i, %._crit_edge.i219.i ]
  %i.hos = shl i32 %.sink1818, 8
  %i.hot = and i32 %i.hos, 65280
  store i32 %i.hot, ptr %i.aj, align 8, !tbaa !61
  %i.hou = shl i32 %.sink1815, 8
  store i32 %i.hou, ptr %i.ahk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i.i715

put_symbol_inline.exit173.i.i715:                 ; preds = %put_symbol_inline.exit173.i.i715.sink.split, %bb.ue, %bb.tz, %bb.tb, %bb.rz, %bb.ru, %bb.qw
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.ph.i, 1 ; 2 uses
  %exitcond390.not.i = icmp eq i64 %indvars.iv.next387.i, %wide.trip.count363.i
  br i1 %exitcond390.not.i, label %._crit_edge321.thread.i, label %.outer.i687, !llvm.loop !8

put_symbol_inline.exit173.i.i715.thread:          ; preds = %put_bits.exit225.i, %.loopexit532.i
  %indvars.iv386.i1129 = phi i64 [ %indvars.iv386.i.lcssa1127, %put_bits.exit225.i ], [ %indvars.iv386.ph.i, %.loopexit532.i ]
  %.0.i554.i = phi i32 [ %.lcssa1135, %put_bits.exit225.i ], [ %.0.i.le577.i, %.loopexit532.i ]
  %.3112.i.ph.i784 = phi i32 [ %spec.select134.i.i782, %put_bits.exit225.i ], [ %.0109.i316.ph.i.ph, %.loopexit532.i ] ; 2 uses
  %.1.i.ph.i786 = phi i32 [ %spec.select135.i.i783, %put_bits.exit225.i ], [ %.0.i182.i.i695.peel, %.loopexit532.i ]
  %i.hov = load ptr, ptr %i.ftu, align 8, !tbaa !140
  %i.how = zext nneg i32 %.0.i554.i to i64
  %i.hox = getelementptr inbounds nuw [8 x i8], ptr %i.hov, i64 %i.how
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.ajb, ptr noundef %i.hox, i32 noundef %.1.i.ph.i786, i32 noundef %i.fqr)
  %indvars.iv.next387.i817 = add nuw nsw i64 %indvars.iv386.i1129, 1 ; 2 uses
  %exitcond390.not.i818 = icmp eq i64 %indvars.iv.next387.i817, %wide.trip.count363.i
  br i1 %exitcond390.not.i818, label %._crit_edge321.thread.i, label %.outer.i687.outer, !llvm.loop !8

put_symbol_inline.exit173.i.thread.i787:          ; preds = %bb.uj
  %i.hoy = add nuw nsw i32 %.0105.i317.i, 1
  %indvars.iv.next387521.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %exitcond390.not522.i = icmp eq i64 %indvars.iv.next387521.i, %wide.trip.count363.i
  br i1 %exitcond390.not522.i, label %.preheader271.i, label %.peel.next, !llvm.loop !313

.preheader271.i:                                  ; preds = %put_symbol_inline.exit173.i.thread.i787.peel, %put_symbol_inline.exit173.i.thread.i787
  %i.hoz = trunc i64 %indvars.iv386.ph.i to i32
  %i.hpa = sub i32 %i.ajq, %i.hoz                 ; 3 uses
  %i.hpb = sext i32 %.0109.i316.ph.i.ph to i64    ; 2 uses
  %i.hpc = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.hpb
  %i.hpd = load i8, ptr %i.hpc, align 1, !tbaa !54
  %i.hpe = zext nneg i8 %i.hpd to i32
  %i.hpf = shl nuw i32 1, %i.hpe                  ; 2 uses
  %.not126.i325.i = icmp slt i32 %i.hpa, %i.hpf
  br i1 %.not126.i325.i, label %._crit_edge329.i, label %.lr.ph328.preheader.i

.lr.ph328.preheader.i:                            ; preds = %.preheader271.i
  %.pre426.i = load i32, ptr %i.ajb, align 8, !tbaa !135
  %.pre427.i = load i32, ptr %i.ajh, align 4, !tbaa !134
  br label %.lr.ph328.i

.lr.ph328.i:                                      ; preds = %put_bits.exit229.i, %.lr.ph328.preheader.i
  %i.hpg = phi i32 [ %.pre427.i, %.lr.ph328.preheader.i ], [ %i.hqa, %put_bits.exit229.i ] ; 4 uses
  %i.hph = phi i32 [ %.pre426.i, %.lr.ph328.preheader.i ], [ %.026.i.i227.i, %put_bits.exit229.i ] ; 2 uses
  %indvars.iv391.i = phi i64 [ %i.hpb, %.lr.ph328.preheader.i ], [ %indvars.iv.next392.i, %put_bits.exit229.i ]
  %i.hpi = phi i32 [ %i.hpf, %.lr.ph328.preheader.i ], [ %i.hqe, %put_bits.exit229.i ]
  %.4.i327.i = phi i32 [ %i.hpa, %.lr.ph328.preheader.i ], [ %i.hpj, %put_bits.exit229.i ]
  %i.hpj = sub nsw i32 %.4.i327.i, %i.hpi         ; 3 uses
  %indvars.iv.next392.i = add nsw i64 %indvars.iv391.i, 1 ; 3 uses
  %i.hpk = icmp sgt i32 %i.hpg, 1
  br i1 %i.hpk, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %.lr.ph328.i
  %i.hpl = shl i32 %i.hph, 1
  %i.hpm = or disjoint i32 %i.hpl, 1
  br label %put_bits.exit229.i

bb.uu:                                            ; preds = %.lr.ph328.i
  %i.hpn = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.hpo = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.hpp = ptrtoint ptr %i.hpn to i64
  %i.hpq = ptrtoint ptr %i.hpo to i64
  %i.hpr = sub i64 %i.hpp, %i.hpq
  %i.hps = icmp ugt i64 %i.hpr, 3
  br i1 %i.hps, label %bb.uv, label %bb.uw

bb.uv:                                            ; preds = %bb.uu
  %i.hpt = shl i32 %i.hph, %i.hpg
  %i.hpu = icmp eq i32 %i.hpg, 1
  %i.hpv = zext i1 %i.hpu to i32
  %i.hpw = or i32 %i.hpt, %i.hpv
  %i.hpx = call i32 @llvm.bswap.i32(i32 %i.hpw)
  store i32 %i.hpx, ptr %i.hpo, align 1, !tbaa !54
  %i.hpy = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.hpz = getelementptr inbounds nuw i8, ptr %i.hpy, i64 4
  store ptr %i.hpz, ptr %i.ajg, align 8, !tbaa !133
  br label %put_bits.exit229.i

bb.uw:                                            ; preds = %bb.uu
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit229.i

put_bits.exit229.i:                               ; preds = %bb.uw, %bb.uv, %bb.ut
  %.sink614.i = phi i32 [ -1, %bb.ut ], [ 31, %bb.uw ], [ 31, %bb.uv ]
  %.026.i.i227.i = phi i32 [ %i.hpm, %bb.ut ], [ 1, %bb.uw ], [ 1, %bb.uv ] ; 2 uses
  %i.hqa = add nsw i32 %.sink614.i, %i.hpg        ; 2 uses
  store i32 %.026.i.i227.i, ptr %i.ajb, align 8, !tbaa !135
  store i32 %i.hqa, ptr %i.ajh, align 4, !tbaa !134
  %i.hqb = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next392.i
  %i.hqc = load i8, ptr %i.hqb, align 1, !tbaa !54
  %i.hqd = zext nneg i8 %i.hqc to i32
  %i.hqe = shl nuw i32 1, %i.hqd                  ; 2 uses
  %.not126.i.i719 = icmp slt i32 %i.hpj, %i.hqe
  br i1 %.not126.i.i719, label %._crit_edge329.loopexit.i, label %.lr.ph328.i, !llvm.loop !9

._crit_edge329.loopexit.i:                        ; preds = %put_bits.exit229.i
  %i.hqf = trunc nsw i64 %indvars.iv.next392.i to i32
  br label %._crit_edge329.i

._crit_edge329.i:                                 ; preds = %._crit_edge329.loopexit.i, %.preheader271.i
  %.5.i.lcssa.i720 = phi i32 [ %.0109.i316.ph.i.ph, %.preheader271.i ], [ %i.hqf, %._crit_edge329.loopexit.i ] ; 2 uses
  %.4.i.lcssa.i721 = phi i32 [ %i.hpa, %.preheader271.i ], [ %i.hpj, %._crit_edge329.loopexit.i ]
  %.not127.i.i722 = icmp eq i32 %.4.i.lcssa.i721, 0
  br i1 %.not127.i.i722, label %._crit_edge321.thread.i, label %bb.ux

bb.ux:                                            ; preds = %._crit_edge329.i
  %i.hqg = load i32, ptr %i.ajb, align 8, !tbaa !135 ; 2 uses
  %i.hqh = load i32, ptr %i.ajh, align 4, !tbaa !134 ; 4 uses
  %i.hqi = icmp sgt i32 %i.hqh, 1
  br i1 %i.hqi, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.hqj = shl i32 %i.hqg, 1
  %i.hqk = or disjoint i32 %i.hqj, 1
  br label %put_bits.exit233.i

bb.uz:                                            ; preds = %bb.ux
  %i.hql = load ptr, ptr %i.ajf, align 8, !tbaa !132
  %i.hqm = load ptr, ptr %i.ajg, align 8, !tbaa !133 ; 2 uses
  %i.hqn = ptrtoint ptr %i.hql to i64
  %i.hqo = ptrtoint ptr %i.hqm to i64
  %i.hqp = sub i64 %i.hqn, %i.hqo
  %i.hqq = icmp ugt i64 %i.hqp, 3
  br i1 %i.hqq, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.hqr = shl i32 %i.hqg, %i.hqh
  %i.hqs = icmp eq i32 %i.hqh, 1
  %i.hqt = zext i1 %i.hqs to i32
  %i.hqu = or i32 %i.hqr, %i.hqt
  %i.hqv = call i32 @llvm.bswap.i32(i32 %i.hqu)
  store i32 %i.hqv, ptr %i.hqm, align 1, !tbaa !54
  %i.hqw = load ptr, ptr %i.ajg, align 8, !tbaa !133
  %i.hqx = getelementptr inbounds nuw i8, ptr %i.hqw, i64 4
  store ptr %i.hqx, ptr %i.ajg, align 8, !tbaa !133
  br label %put_bits.exit233.i

bb.vb:                                            ; preds = %bb.uz
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit233.i

put_bits.exit233.i:                               ; preds = %bb.vb, %bb.va, %bb.uy
  %.sink615.i = phi i32 [ -1, %bb.uy ], [ 31, %bb.vb ], [ 31, %bb.va ]
  %.026.i.i231.i = phi i32 [ %i.hqk, %bb.uy ], [ 1, %bb.vb ], [ 1, %bb.va ]
end_hunk_1
begin_hunk_2_@encode_plane:bb.a
  store i8 %i.azz, ptr %i.baa, align 1, !tbaa !54
  %i.bac = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.bad = add nsw i32 %i.bac, -1                 ; 2 uses
  store i32 %i.bad, ptr %i.aq, align 8, !tbaa !64
  %.not.i321 = icmp eq i32 %i.bad, 0
  br i1 %.not.i321, label %._crit_edge.i322, label %bb.ei, !llvm.loop !0

._crit_edge.i322:                                 ; preds = %bb.ei, %bb.eh
  %i.bae = load i32, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.baf = ashr i32 %i.bae, 8
  store i32 %i.baf, ptr %i.ar, align 4, !tbaa !62
  %.pre855 = load i32, ptr %i.ao, align 4, !tbaa !60
  br label %renorm_encoder.exit323

bb.ej:                                            ; preds = %bb.eg
  %i.bag = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.bah = add nsw i32 %i.bag, 1
  store i32 %i.bah, ptr %i.aq, align 8, !tbaa !64
  br label %renorm_encoder.exit323

renorm_encoder.exit323:                           ; preds = %._crit_edge.i322, %bb.ej
  %i.bai = phi i32 [ %i.azi, %bb.ej ], [ %.pre855, %._crit_edge.i322 ]
  %i.baj = phi i32 [ %i.azk, %bb.ej ], [ %i.bae, %._crit_edge.i322 ]
  %i.bak = shl i32 %i.baj, 8
  %i.bal = and i32 %i.bak, 65280
  store i32 %i.bal, ptr %i.aa, align 8, !tbaa !61
  %i.bam = shl i32 %i.bai, 8
  store i32 %i.bam, ptr %i.ao, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i131

bb.ek:                                            ; preds = %bb.ck
  %i.ban = load i32, ptr %i.ao, align 4, !tbaa !60 ; 2 uses
  %i.bao = load i8, ptr %i.or, align 1, !tbaa !54
  %i.bap = zext i8 %i.bao to i32
  %i.baq = mul nsw i32 %i.ban, %i.bap
  %i.bar = ashr i32 %i.baq, 8                     ; 2 uses
  %i.bas = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.bat = add i32 %i.bas, %i.ban
  %i.bau = sub i32 %i.bat, %i.bar
  store i32 %i.bau, ptr %i.aa, align 8, !tbaa !61
  store i32 %i.bar, ptr %i.ao, align 4, !tbaa !60
  %i.bav = load i8, ptr %i.or, align 1, !tbaa !54
  %i.baw = zext i8 %i.bav to i64
  %i.bax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.baw
  %storemerge.i.i.i202 = load i8, ptr %i.bax, align 1, !tbaa !54
  store i8 %storemerge.i.i.i202, ptr %i.or, align 1, !tbaa !54
  %i.bay = load i32, ptr %i.ao, align 4, !tbaa !60 ; 2 uses
  %i.baz = icmp slt i32 %i.bay, 256
  br i1 %i.baz, label %bb.el, label %put_symbol_inline.exit173.i131

bb.el:                                            ; preds = %bb.ek
  %i.bba = load i32, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.bbb = add nsw i32 %i.bba, -65281             ; 2 uses
  %i.bbc = icmp ugt i32 %i.bbb, 254
  br i1 %i.bbc, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.bbd = ashr i32 %i.bbb, 31                    ; 2 uses
  %i.bbe = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.bbf = add nsw i32 %i.bbd, 1
  %i.bbg = add i32 %i.bbf, %i.bbe
  %i.bbh = trunc i32 %i.bbg to i8
  %i.bbi = load ptr, ptr %i.ad, align 8, !tbaa !63
  store i8 %i.bbh, ptr %i.bbi, align 1, !tbaa !54
  %i.bbj = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.bbk = icmp sgt i32 %i.bbj, -1
  %i.bbl = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.bbm = zext i1 %i.bbk to i64
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbl, i64 %i.bbm
  store ptr %i.bbn, ptr %i.ad, align 8, !tbaa !63
  %i.bbo = load i32, ptr %i.aq, align 8, !tbaa !64
  %.not16.i324 = icmp eq i32 %i.bbo, 0
  br i1 %.not16.i324, label %._crit_edge.i327, label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %bb.em
  %i.bbp = trunc nsw i32 %i.bbd to i8
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.lr.ph.i325
  %i.bbq = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 1
  store ptr %i.bbr, ptr %i.ad, align 8, !tbaa !63
  store i8 %i.bbp, ptr %i.bbq, align 1, !tbaa !54
  %i.bbs = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.bbt = add nsw i32 %i.bbs, -1                 ; 2 uses
  store i32 %i.bbt, ptr %i.aq, align 8, !tbaa !64
  %.not.i326 = icmp eq i32 %i.bbt, 0
  br i1 %.not.i326, label %._crit_edge.i327, label %bb.en, !llvm.loop !0

._crit_edge.i327:                                 ; preds = %bb.en, %bb.em
  %i.bbu = load i32, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.bbv = ashr i32 %i.bbu, 8
  store i32 %i.bbv, ptr %i.ar, align 4, !tbaa !62
  %.pre860 = load i32, ptr %i.ao, align 4, !tbaa !60
  br label %renorm_encoder.exit328

bb.eo:                                            ; preds = %bb.el
  %i.bbw = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.bbx = add nsw i32 %i.bbw, 1
  store i32 %i.bbx, ptr %i.aq, align 8, !tbaa !64
  br label %renorm_encoder.exit328

renorm_encoder.exit328:                           ; preds = %._crit_edge.i327, %bb.eo
  %i.bby = phi i32 [ %i.bay, %bb.eo ], [ %.pre860, %._crit_edge.i327 ]
  %i.bbz = phi i32 [ %i.bba, %bb.eo ], [ %i.bbu, %._crit_edge.i327 ]
  %i.bca = shl i32 %i.bbz, 8
  %i.bcb = and i32 %i.bca, 65280
  store i32 %i.bcb, ptr %i.aa, align 8, !tbaa !61
  %i.bcc = shl i32 %i.bby, 8
  store i32 %i.bcc, ptr %i.ao, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i131

.preheader:                                       ; preds = %get_context.exit, %bb.aa
  %.lcssa1467 = phi i32 [ %i.kx, %bb.aa ], [ %i.ob, %get_context.exit ]
  %sext.i.lcssa1463 = phi i32 [ %sext.i.peel, %bb.aa ], [ %sext.i, %get_context.exit ]
  %indvars.iv795.lcssa1458 = phi i64 [ %indvars.iv795.ph, %bb.aa ], [ %indvars.iv795, %get_context.exit ]
  %.0105.i99658.lcssa1452 = phi i32 [ 0, %bb.aa ], [ %.0105.i99658, %get_context.exit ] ; 3 uses
  %.0.i109.le = tail call i32 @llvm.abs.i32(i32 %.lcssa1467, i1 true)
  %i.bcd = ashr exact i32 %sext.i.lcssa1463, 24   ; 2 uses
  %i.bce = sext i32 %.0109.i98657.ph to i64       ; 2 uses
  %i.bcf = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.bce
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !54
  %i.bch = zext i8 %i.bcg to i32                  ; 2 uses
  %i.bci = shl nuw i32 1, %i.bch                  ; 2 uses
  %.not130.i209648 = icmp slt i32 %.0105.i99658.lcssa1452, %i.bci
  %.pre864 = load i32, ptr %i.at, align 8, !tbaa !135 ; 2 uses
  %.pre866 = load i32, ptr %i.ai, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i209648, label %._crit_edge652, label %.lr.ph651

.lr.ph651:                                        ; preds = %.preheader, %put_bits.exit
  %i.bcj = phi i32 [ %i.bdd, %put_bits.exit ], [ %.pre866, %.preheader ] ; 4 uses
  %i.bck = phi i32 [ %.pre863, %put_bits.exit ], [ %.pre864, %.preheader ] ; 2 uses
  %indvars.iv792 = phi i64 [ %indvars.iv.next793, %put_bits.exit ], [ %i.bce, %.preheader ]
  %i.bcl = phi i32 [ %i.bdh, %put_bits.exit ], [ %i.bci, %.preheader ]
  %.1106.i208650 = phi i32 [ %i.bcm, %put_bits.exit ], [ %.0105.i99658.lcssa1452, %.preheader ]
  %i.bcm = sub nsw i32 %.1106.i208650, %i.bcl     ; 3 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 3 uses
  %i.bcn = icmp sgt i32 %i.bcj, 1
  br i1 %i.bcn, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.lr.ph651
  %i.bco = shl i32 %i.bck, 1
  %i.bcp = or disjoint i32 %i.bco, 1
  br label %put_bits.exit

bb.eq:                                            ; preds = %.lr.ph651
  %i.bcq = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.bcr = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.bcs = ptrtoint ptr %i.bcq to i64
  %i.bct = ptrtoint ptr %i.bcr to i64
  %i.bcu = sub i64 %i.bcs, %i.bct
  %i.bcv = icmp ugt i64 %i.bcu, 3
  br i1 %i.bcv, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.bcw = shl i32 %i.bck, %i.bcj
  %i.bcx = icmp eq i32 %i.bcj, 1
  %i.bcy = zext i1 %i.bcx to i32
  %i.bcz = or i32 %i.bcw, %i.bcy
  %i.bda = tail call i32 @llvm.bswap.i32(i32 %i.bcz)
  store i32 %i.bda, ptr %i.bcr, align 1, !tbaa !54
  %i.bdb = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 4
  store ptr %i.bdc, ptr %i.ah, align 8, !tbaa !133
  br label %put_bits.exit

bb.es:                                            ; preds = %bb.eq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.er, %bb.es, %bb.ep
  %.sink1224 = phi i32 [ -1, %bb.ep ], [ 31, %bb.es ], [ 31, %bb.er ]
  %.pre863 = phi i32 [ %i.bcp, %bb.ep ], [ 1, %bb.es ], [ 1, %bb.er ] ; 3 uses
  %i.bdd = add nsw i32 %i.bcj, %.sink1224         ; 3 uses
  store i32 %.pre863, ptr %i.at, align 8, !tbaa !135
  store i32 %i.bdd, ptr %i.ai, align 4, !tbaa !134
  %i.bde = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next793
  %i.bdf = load i8, ptr %i.bde, align 1, !tbaa !54
  %i.bdg = zext i8 %i.bdf to i32                  ; 2 uses
  %i.bdh = shl nuw i32 1, %i.bdg                  ; 2 uses
  %.not130.i209 = icmp slt i32 %i.bcm, %i.bdh
  br i1 %.not130.i209, label %._crit_edge652.loopexit, label %.lr.ph651, !llvm.loop !12

._crit_edge652.loopexit:                          ; preds = %put_bits.exit
  %i.bdi = trunc nsw i64 %indvars.iv.next793 to i32
  br label %._crit_edge652

._crit_edge652:                                   ; preds = %._crit_edge652.loopexit, %.preheader
  %i.bdj = phi i32 [ %.pre866, %.preheader ], [ %i.bdd, %._crit_edge652.loopexit ] ; 5 uses
  %i.bdk = phi i32 [ %.pre864, %.preheader ], [ %.pre863, %._crit_edge652.loopexit ] ; 2 uses
  %.1110.i207.lcssa = phi i32 [ %.0109.i98657.ph, %.preheader ], [ %i.bdi, %._crit_edge652.loopexit ]
  %.1106.i208.lcssa = phi i32 [ %.0105.i99658.lcssa1452, %.preheader ], [ %i.bcm, %._crit_edge652.loopexit ] ; 3 uses
  %.lcssa555 = phi i32 [ %i.bch, %.preheader ], [ %i.bdg, %._crit_edge652.loopexit ] ; 2 uses
  %i.bdl = add nuw nsw i32 %.lcssa555, 1          ; 4 uses
  %i.bdm = icmp slt i32 %i.bdl, %i.bdj
  br i1 %i.bdm, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %._crit_edge652
  %i.bdn = shl i32 %i.bdk, %i.bdl
  %i.bdo = or i32 %i.bdn, %.1106.i208.lcssa
  %i.bdp = sub nsw i32 %i.bdj, %i.bdl
  br label %put_bits.exit333

bb.eu:                                            ; preds = %._crit_edge652
  %i.bdq = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.bdr = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.bds = ptrtoint ptr %i.bdq to i64
  %i.bdt = ptrtoint ptr %i.bdr to i64
  %i.bdu = sub i64 %i.bds, %i.bdt
  %i.bdv = icmp ugt i64 %i.bdu, 3
  br i1 %i.bdv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bdw = shl i32 %i.bdk, %i.bdj
  %i.bdx = sub nsw i32 %i.bdl, %i.bdj
  %i.bdy = lshr i32 %.1106.i208.lcssa, %i.bdx
  %i.bdz = or i32 %i.bdy, %i.bdw
  %i.bea = tail call i32 @llvm.bswap.i32(i32 %i.bdz)
  store i32 %i.bea, ptr %i.bdr, align 1, !tbaa !54
  %i.beb = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 4
  store ptr %i.bec, ptr %i.ah, align 8, !tbaa !133
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %reass.sub689 = sub i32 %i.bdj, %.lcssa555
  %i.bed = add i32 %reass.sub689, 31
  br label %put_bits.exit333

put_bits.exit333:                                 ; preds = %bb.et, %bb.ex
  %.026.i.i331 = phi i32 [ %i.bdo, %bb.et ], [ %.1106.i208.lcssa, %bb.ex ]
  %.0.i.i332 = phi i32 [ %i.bdp, %bb.et ], [ %i.bed, %bb.ex ]
  store i32 %.026.i.i331, ptr %i.at, align 8, !tbaa !135
  store i32 %.0.i.i332, ptr %i.ai, align 4, !tbaa !134
  %spec.select134.i211 = tail call i32 @llvm.usub.sat.i32(i32 %.1110.i207.lcssa, i32 1)
  %i.bee = icmp sgt i32 %i.bcd, 0
  %i.bef = sext i1 %i.bee to i32
  %spec.select135.i212 = add nsw i32 %i.bcd, %i.bef
  br label %bb.ey

.loopexit1077:                                    ; preds = %bb.z
  %.0.i109.le1188 = tail call i32 @llvm.abs.i32(i32 %i.kx, i1 true)
  %i.beg = ashr exact i32 %sext.i.peel, 24
  br label %bb.ey

bb.ey:                                            ; preds = %.loopexit1077, %put_bits.exit333
  %indvars.iv7951461 = phi i64 [ %indvars.iv795.lcssa1458, %put_bits.exit333 ], [ %indvars.iv795.ph, %.loopexit1077 ]
  %.0.i1091148 = phi i32 [ %.0.i109.le, %put_bits.exit333 ], [ %.0.i109.le1188, %.loopexit1077 ]
  %.3112.i213.ph = phi i32 [ %spec.select134.i211, %put_bits.exit333 ], [ %.0109.i98657.ph, %.loopexit1077 ]
  %.1.i215.ph = phi i32 [ %spec.select135.i212, %put_bits.exit333 ], [ %i.beg, %.loopexit1077 ]
  %i.beh = load ptr, ptr %i.hv, align 8, !tbaa !140
  %i.bei = zext nneg i32 %.0.i1091148 to i64
  %i.bej = getelementptr inbounds nuw [8 x i8], ptr %i.beh, i64 %i.bei
  tail call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.at, ptr noundef %i.bej, i32 noundef %.1.i215.ph, i32 noundef 8)
  br label %put_symbol_inline.exit173.i131

put_symbol_inline.exit173.i131:                   ; preds = %renorm_encoder.exit303, %bb.dh, %renorm_encoder.exit323, %bb.ef, %renorm_encoder.exit328, %bb.ek, %renorm_encoder.exit253, %bb.bc, %renorm_encoder.exit273, %bb.ca, %renorm_encoder.exit278, %bb.cf, %bb.ey
  %indvars.iv7951460 = phi i64 [ %indvars.iv795.ph, %renorm_encoder.exit303 ], [ %indvars.iv795.ph, %renorm_encoder.exit253 ], [ %indvars.iv7951461, %bb.ey ], [ %indvars.iv795.ph, %bb.cf ], [ %indvars.iv795.ph, %renorm_encoder.exit278 ], [ %indvars.iv795.ph, %bb.ca ], [ %indvars.iv795.ph, %renorm_encoder.exit273 ], [ %indvars.iv795.ph, %bb.bc ], [ %indvars.iv795.ph, %bb.ek ], [ %indvars.iv795.ph, %renorm_encoder.exit328 ], [ %indvars.iv795.ph, %bb.ef ], [ %indvars.iv795.ph, %renorm_encoder.exit323 ], [ %indvars.iv795.ph, %bb.dh ]
  %.4113.i132 = phi i32 [ %.0109.i98657.ph, %renorm_encoder.exit303 ], [ %.0109.i98657.ph, %renorm_encoder.exit253 ], [ %.3112.i213.ph, %bb.ey ], [ %.0109.i98657.ph, %bb.cf ], [ %.0109.i98657.ph, %renorm_encoder.exit278 ], [ %.0109.i98657.ph, %bb.ca ], [ %.0109.i98657.ph, %renorm_encoder.exit273 ], [ %.0109.i98657.ph, %bb.bc ], [ %.0109.i98657.ph, %bb.ek ], [ %.0109.i98657.ph, %renorm_encoder.exit328 ], [ %.0109.i98657.ph, %bb.ef ], [ %.0109.i98657.ph, %renorm_encoder.exit323 ], [ %.0109.i98657.ph, %bb.dh ] ; 2 uses
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv7951460, 1 ; 2 uses
  %exitcond799.not = icmp eq i64 %indvars.iv.next796, %wide.trip.count798
  br i1 %exitcond799.not, label %encode_line.exit220.sink.split, label %.outer, !llvm.loop !13

put_symbol_inline.exit173.i131.thread:            ; preds = %get_context.exit
  %i.bek = add nsw i32 %.0105.i99658, 1           ; 2 uses
  %indvars.iv.next7961047 = add nuw nsw i64 %indvars.iv795, 1 ; 2 uses
  %exitcond799.not1048 = icmp eq i64 %indvars.iv.next7961047, %wide.trip.count798
  br i1 %exitcond799.not1048, label %.preheader542, label %.outer.peel.newph, !llvm.loop !360

.preheader542:                                    ; preds = %put_symbol_inline.exit173.i131.thread, %put_symbol_inline.exit173.i131.thread.peel
  %.lcssa1469 = phi i32 [ %i.bek, %put_symbol_inline.exit173.i131.thread ], [ 1, %put_symbol_inline.exit173.i131.thread.peel ] ; 3 uses
  %i.bel = sext i32 %.0109.i98657.ph to i64       ; 2 uses
  %i.bem = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.bel
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !54
  %i.beo = zext nneg i8 %i.ben to i32
  %i.bep = shl nuw i32 1, %i.beo                  ; 2 uses
  %.not126.i104666 = icmp slt i32 %.lcssa1469, %i.bep
  br i1 %.not126.i104666, label %._crit_edge670, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %.preheader542
  %.pre867 = load i32, ptr %i.at, align 8, !tbaa !135
  %.pre868 = load i32, ptr %i.ai, align 4, !tbaa !134
  br label %.lr.ph669

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %put_bits.exit337
  %i.beq = phi i32 [ %.pre868, %.lr.ph669.preheader ], [ %i.bfk, %put_bits.exit337 ] ; 4 uses
  %i.ber = phi i32 [ %.pre867, %.lr.ph669.preheader ], [ %.026.i.i335, %put_bits.exit337 ] ; 2 uses
  %indvars.iv800 = phi i64 [ %i.bel, %.lr.ph669.preheader ], [ %indvars.iv.next801, %put_bits.exit337 ]
  %i.bes = phi i32 [ %i.bep, %.lr.ph669.preheader ], [ %i.bfo, %put_bits.exit337 ]
  %.4.i103668 = phi i32 [ %.lcssa1469, %.lr.ph669.preheader ], [ %i.bet, %put_bits.exit337 ]
  %i.bet = sub nsw i32 %.4.i103668, %i.bes        ; 3 uses
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, 1 ; 3 uses
  %i.beu = icmp sgt i32 %i.beq, 1
  br i1 %i.beu, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.lr.ph669
  %i.bev = shl i32 %i.ber, 1
  %i.bew = or disjoint i32 %i.bev, 1
  br label %put_bits.exit337

bb.fa:                                            ; preds = %.lr.ph669
  %i.bex = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.bey = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.bez = ptrtoint ptr %i.bex to i64
  %i.bfa = ptrtoint ptr %i.bey to i64
  %i.bfb = sub i64 %i.bez, %i.bfa
  %i.bfc = icmp ugt i64 %i.bfb, 3
  br i1 %i.bfc, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.bfd = shl i32 %i.ber, %i.beq
  %i.bfe = icmp eq i32 %i.beq, 1
  %i.bff = zext i1 %i.bfe to i32
  %i.bfg = or i32 %i.bfd, %i.bff
  %i.bfh = tail call i32 @llvm.bswap.i32(i32 %i.bfg)
  store i32 %i.bfh, ptr %i.bey, align 1, !tbaa !54
  %i.bfi = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 4
  store ptr %i.bfj, ptr %i.ah, align 8, !tbaa !133
  br label %put_bits.exit337

bb.fc:                                            ; preds = %bb.fa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit337

put_bits.exit337:                                 ; preds = %bb.fb, %bb.fc, %bb.ez
  %.sink1225 = phi i32 [ -1, %bb.ez ], [ 31, %bb.fc ], [ 31, %bb.fb ]
  %.026.i.i335 = phi i32 [ %i.bew, %bb.ez ], [ 1, %bb.fc ], [ 1, %bb.fb ] ; 2 uses
  %i.bfk = add nsw i32 %i.beq, %.sink1225         ; 2 uses
  store i32 %.026.i.i335, ptr %i.at, align 8, !tbaa !135
  store i32 %i.bfk, ptr %i.ai, align 4, !tbaa !134
  %i.bfl = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next801
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !54
  %i.bfn = zext nneg i8 %i.bfm to i32
  %i.bfo = shl nuw i32 1, %i.bfn                  ; 2 uses
  %.not126.i104 = icmp slt i32 %i.bet, %i.bfo
  br i1 %.not126.i104, label %._crit_edge670.loopexit, label %.lr.ph669, !llvm.loop !14

._crit_edge670.loopexit:                          ; preds = %put_bits.exit337
  %i.bfp = trunc nsw i64 %indvars.iv.next801 to i32
  br label %._crit_edge670

._crit_edge670:                                   ; preds = %._crit_edge670.loopexit, %.preheader542
  %.5.i102.lcssa = phi i32 [ %.0109.i98657.ph, %.preheader542 ], [ %i.bfp, %._crit_edge670.loopexit ] ; 2 uses
  %.4.i103.lcssa = phi i32 [ %.lcssa1469, %.preheader542 ], [ %i.bet, %._crit_edge670.loopexit ]
  %.not127.i105 = icmp eq i32 %.4.i103.lcssa, 0
  br i1 %.not127.i105, label %encode_line.exit220.sink.split, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge670
  %i.bfq = load i32, ptr %i.at, align 8, !tbaa !135 ; 2 uses
  %i.bfr = load i32, ptr %i.ai, align 4, !tbaa !134 ; 4 uses
  %i.bfs = icmp sgt i32 %i.bfr, 1
  br i1 %i.bfs, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bft = shl i32 %i.bfq, 1
  %i.bfu = or disjoint i32 %i.bft, 1
  br label %put_bits.exit341

bb.ff:                                            ; preds = %bb.fd
  %i.bfv = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.bfw = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.bfx = ptrtoint ptr %i.bfv to i64
  %i.bfy = ptrtoint ptr %i.bfw to i64
  %i.bfz = sub i64 %i.bfx, %i.bfy
  %i.bga = icmp ugt i64 %i.bfz, 3
  br i1 %i.bga, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.bgb = shl i32 %i.bfq, %i.bfr
  %i.bgc = icmp eq i32 %i.bfr, 1
  %i.bgd = zext i1 %i.bgc to i32
  %i.bge = or i32 %i.bgb, %i.bgd
  %i.bgf = tail call i32 @llvm.bswap.i32(i32 %i.bge)
  store i32 %i.bgf, ptr %i.bfw, align 1, !tbaa !54
  %i.bgg = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 4
  store ptr %i.bgh, ptr %i.ah, align 8, !tbaa !133
  br label %put_bits.exit341

bb.fh:                                            ; preds = %bb.ff
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit341

put_bits.exit341:                                 ; preds = %bb.fg, %bb.fh, %bb.fe
  %.sink1226 = phi i32 [ -1, %bb.fe ], [ 31, %bb.fh ], [ 31, %bb.fg ]
  %.026.i.i339 = phi i32 [ %i.bfu, %bb.fe ], [ 1, %bb.fh ], [ 1, %bb.fg ]
  %i.bgi = add nsw i32 %i.bfr, %.sink1226
  br label %encode_line.exit220.sink.split.sink.split

bb.fi:                                            ; preds = %bb.c
  %i.bgj = load i32, ptr %i.r, align 8, !tbaa !92
  %.not93 = icmp eq i32 %i.bgj, 0
  br i1 %.not93, label %.preheader550, label %.preheader552

.preheader552:                                    ; preds = %bb.fi
  br i1 %i.s, label %iter.check1396, label %.loopexit549
end_hunk_2
begin_hunk_3_@encode_plane:bb.a
  store i8 %i.dgp, ptr %i.dgq, align 1, !tbaa !54
  %i.dgs = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.dgt = add nsw i32 %i.dgs, -1                 ; 2 uses
  store i32 %i.dgt, ptr %i.aq, align 8, !tbaa !64
  %.not.i452 = icmp eq i32 %i.dgt, 0
  br i1 %.not.i452, label %._crit_edge.i453, label %bb.kn, !llvm.loop !0

._crit_edge.i453:                                 ; preds = %bb.kn, %bb.km
  %i.dgu = load i32, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.dgv = ashr i32 %i.dgu, 8
  store i32 %i.dgv, ptr %i.ar, align 4, !tbaa !62
  %.pre826 = load i32, ptr %i.ao, align 4, !tbaa !60
  br label %renorm_encoder.exit454

bb.ko:                                            ; preds = %bb.kl
  %i.dgw = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.dgx = add nsw i32 %i.dgw, 1
  store i32 %i.dgx, ptr %i.aq, align 8, !tbaa !64
  br label %renorm_encoder.exit454

renorm_encoder.exit454:                           ; preds = %._crit_edge.i453, %bb.ko
  %i.dgy = phi i32 [ %i.dfy, %bb.ko ], [ %.pre826, %._crit_edge.i453 ]
  %i.dgz = phi i32 [ %i.dga, %bb.ko ], [ %i.dgu, %._crit_edge.i453 ]
  %i.dha = shl i32 %i.dgz, 8
  %i.dhb = and i32 %i.dha, 65280
  store i32 %i.dhb, ptr %i.aa, align 8, !tbaa !61
  %i.dhc = shl i32 %i.dgy, 8
  store i32 %i.dhc, ptr %i.ao, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i

bb.kp:                                            ; preds = %bb.ip
  %i.dhd = load i32, ptr %i.ao, align 4, !tbaa !60 ; 2 uses
  %i.dhe = load i8, ptr %i.buz, align 1, !tbaa !54
  %i.dhf = zext i8 %i.dhe to i32
  %i.dhg = mul nsw i32 %i.dhd, %i.dhf
  %i.dhh = ashr i32 %i.dhg, 8                     ; 2 uses
  %i.dhi = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.dhj = add i32 %i.dhi, %i.dhd
  %i.dhk = sub i32 %i.dhj, %i.dhh
  store i32 %i.dhk, ptr %i.aa, align 8, !tbaa !61
  store i32 %i.dhh, ptr %i.ao, align 4, !tbaa !60
  %i.dhl = load i8, ptr %i.buz, align 1, !tbaa !54
  %i.dhm = zext i8 %i.dhl to i64
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dhm
  %storemerge.i.i.i = load i8, ptr %i.dhn, align 1, !tbaa !54
  store i8 %storemerge.i.i.i, ptr %i.buz, align 1, !tbaa !54
  %i.dho = load i32, ptr %i.ao, align 4, !tbaa !60 ; 2 uses
  %i.dhp = icmp slt i32 %i.dho, 256
  br i1 %i.dhp, label %bb.kq, label %put_symbol_inline.exit173.i

bb.kq:                                            ; preds = %bb.kp
  %i.dhq = load i32, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.dhr = add nsw i32 %i.dhq, -65281             ; 2 uses
  %i.dhs = icmp ugt i32 %i.dhr, 254
  br i1 %i.dhs, label %bb.kr, label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.dht = ashr i32 %i.dhr, 31                    ; 2 uses
  %i.dhu = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.dhv = add nsw i32 %i.dht, 1
  %i.dhw = add i32 %i.dhv, %i.dhu
  %i.dhx = trunc i32 %i.dhw to i8
  %i.dhy = load ptr, ptr %i.ad, align 8, !tbaa !63
  store i8 %i.dhx, ptr %i.dhy, align 1, !tbaa !54
  %i.dhz = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.dia = icmp sgt i32 %i.dhz, -1
  %i.dib = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.dic = zext i1 %i.dia to i64
  %i.did = getelementptr inbounds nuw i8, ptr %i.dib, i64 %i.dic
  store ptr %i.did, ptr %i.ad, align 8, !tbaa !63
  %i.die = load i32, ptr %i.aq, align 8, !tbaa !64
  %.not16.i455 = icmp eq i32 %i.die, 0
  br i1 %.not16.i455, label %._crit_edge.i458, label %.lr.ph.i456

.lr.ph.i456:                                      ; preds = %bb.kr
  %i.dif = trunc nsw i32 %i.dht to i8
  br label %bb.ks

bb.ks:                                            ; preds = %bb.ks, %.lr.ph.i456
  %i.dig = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 2 uses
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dig, i64 1
  store ptr %i.dih, ptr %i.ad, align 8, !tbaa !63
  store i8 %i.dif, ptr %i.dig, align 1, !tbaa !54
  %i.dii = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.dij = add nsw i32 %i.dii, -1                 ; 2 uses
  store i32 %i.dij, ptr %i.aq, align 8, !tbaa !64
  %.not.i457 = icmp eq i32 %i.dij, 0
  br i1 %.not.i457, label %._crit_edge.i458, label %bb.ks, !llvm.loop !0

._crit_edge.i458:                                 ; preds = %bb.ks, %bb.kr
  %i.dik = load i32, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.dil = ashr i32 %i.dik, 8
  store i32 %i.dil, ptr %i.ar, align 4, !tbaa !62
  %.pre831 = load i32, ptr %i.ao, align 4, !tbaa !60
  br label %renorm_encoder.exit459

bb.kt:                                            ; preds = %bb.kq
  %i.dim = load i32, ptr %i.aq, align 8, !tbaa !64
  %i.din = add nsw i32 %i.dim, 1
  store i32 %i.din, ptr %i.aq, align 8, !tbaa !64
  br label %renorm_encoder.exit459

renorm_encoder.exit459:                           ; preds = %._crit_edge.i458, %bb.kt
  %i.dio = phi i32 [ %i.dho, %bb.kt ], [ %.pre831, %._crit_edge.i458 ]
  %i.dip = phi i32 [ %i.dhq, %bb.kt ], [ %i.dik, %._crit_edge.i458 ]
  %i.diq = shl i32 %i.dip, 8
  %i.dir = and i32 %i.diq, 65280
  store i32 %i.dir, ptr %i.aa, align 8, !tbaa !61
  %i.dis = shl i32 %i.dio, 8
  store i32 %i.dis, ptr %i.ao, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i

.preheader536:                                    ; preds = %get_context.exit357, %bb.gf
  %.lcssa1434 = phi i32 [ %i.brd, %bb.gf ], [ %i.bui, %get_context.exit357 ]
  %.lcssa1430 = phi i32 [ %i.brq, %bb.gf ], [ %i.buv, %get_context.exit357 ]
  %indvars.iv751.lcssa1424 = phi i64 [ %indvars.iv751.ph, %bb.gf ], [ %indvars.iv751, %get_context.exit357 ]
  %.0105.i600.lcssa1418 = phi i32 [ 0, %bb.gf ], [ %.0105.i600, %get_context.exit357 ] ; 3 uses
  %.0.i.le = tail call i32 @llvm.abs.i32(i32 %.lcssa1434, i1 true)
  %i.dit = ashr exact i32 %.lcssa1430, %i.bnz     ; 2 uses
  %i.diu = sext i32 %.0109.i599.ph to i64         ; 2 uses
  %i.div = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.diu
  %i.diw = load i8, ptr %i.div, align 1, !tbaa !54
  %i.dix = zext i8 %i.diw to i32                  ; 2 uses
  %i.diy = shl nuw i32 1, %i.dix                  ; 2 uses
  %.not130.i590 = icmp slt i32 %.0105.i600.lcssa1418, %i.diy
  %.pre835 = load i32, ptr %i.at, align 8, !tbaa !135 ; 2 uses
  %.pre837 = load i32, ptr %i.ai, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i590, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %.preheader536, %put_bits.exit463
  %i.diz = phi i32 [ %i.djt, %put_bits.exit463 ], [ %.pre837, %.preheader536 ] ; 4 uses
  %i.dja = phi i32 [ %.pre834, %put_bits.exit463 ], [ %.pre835, %.preheader536 ] ; 2 uses
  %indvars.iv748 = phi i64 [ %indvars.iv.next749, %put_bits.exit463 ], [ %i.diu, %.preheader536 ]
  %i.djb = phi i32 [ %i.djx, %put_bits.exit463 ], [ %i.diy, %.preheader536 ]
  %.1106.i592 = phi i32 [ %i.djc, %put_bits.exit463 ], [ %.0105.i600.lcssa1418, %.preheader536 ]
  %i.djc = sub nsw i32 %.1106.i592, %i.djb        ; 3 uses
  %indvars.iv.next749 = add nsw i64 %indvars.iv748, 1 ; 3 uses
  %i.djd = icmp sgt i32 %i.diz, 1
  br i1 %i.djd, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %.lr.ph593
  %i.dje = shl i32 %i.dja, 1
  %i.djf = or disjoint i32 %i.dje, 1
  br label %put_bits.exit463

bb.kv:                                            ; preds = %.lr.ph593
  %i.djg = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.djh = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.dji = ptrtoint ptr %i.djg to i64
  %i.djj = ptrtoint ptr %i.djh to i64
  %i.djk = sub i64 %i.dji, %i.djj
  %i.djl = icmp ugt i64 %i.djk, 3
  br i1 %i.djl, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.djm = shl i32 %i.dja, %i.diz
  %i.djn = icmp eq i32 %i.diz, 1
  %i.djo = zext i1 %i.djn to i32
  %i.djp = or i32 %i.djm, %i.djo
  %i.djq = tail call i32 @llvm.bswap.i32(i32 %i.djp)
  store i32 %i.djq, ptr %i.djh, align 1, !tbaa !54
  %i.djr = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 4
  store ptr %i.djs, ptr %i.ah, align 8, !tbaa !133
  br label %put_bits.exit463

bb.kx:                                            ; preds = %bb.kv
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit463

put_bits.exit463:                                 ; preds = %bb.kw, %bb.kx, %bb.ku
  %.sink1259 = phi i32 [ -1, %bb.ku ], [ 31, %bb.kx ], [ 31, %bb.kw ]
  %.pre834 = phi i32 [ %i.djf, %bb.ku ], [ 1, %bb.kx ], [ 1, %bb.kw ] ; 3 uses
  %i.djt = add nsw i32 %i.diz, %.sink1259         ; 3 uses
  store i32 %.pre834, ptr %i.at, align 8, !tbaa !135
  store i32 %i.djt, ptr %i.ai, align 4, !tbaa !134
  %i.dju = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next749
  %i.djv = load i8, ptr %i.dju, align 1, !tbaa !54
  %i.djw = zext i8 %i.djv to i32                  ; 2 uses
  %i.djx = shl nuw i32 1, %i.djw                  ; 2 uses
  %.not130.i = icmp slt i32 %i.djc, %i.djx
  br i1 %.not130.i, label %._crit_edge594.loopexit, label %.lr.ph593, !llvm.loop !12

._crit_edge594.loopexit:                          ; preds = %put_bits.exit463
  %i.djy = trunc nsw i64 %indvars.iv.next749 to i32
  br label %._crit_edge594

._crit_edge594:                                   ; preds = %._crit_edge594.loopexit, %.preheader536
  %i.djz = phi i32 [ %.pre837, %.preheader536 ], [ %i.djt, %._crit_edge594.loopexit ] ; 5 uses
  %i.dka = phi i32 [ %.pre835, %.preheader536 ], [ %.pre834, %._crit_edge594.loopexit ] ; 2 uses
  %.1110.i.lcssa = phi i32 [ %.0109.i599.ph, %.preheader536 ], [ %i.djy, %._crit_edge594.loopexit ]
  %.1106.i.lcssa = phi i32 [ %.0105.i600.lcssa1418, %.preheader536 ], [ %i.djc, %._crit_edge594.loopexit ] ; 3 uses
  %.lcssa = phi i32 [ %i.dix, %.preheader536 ], [ %i.djw, %._crit_edge594.loopexit ] ; 2 uses
  %i.dkb = add nuw nsw i32 %.lcssa, 1             ; 4 uses
  %i.dkc = icmp slt i32 %i.dkb, %i.djz
  br i1 %i.dkc, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %._crit_edge594
  %i.dkd = shl i32 %i.dka, %i.dkb
  %i.dke = or i32 %i.dkd, %.1106.i.lcssa
  %i.dkf = sub nsw i32 %i.djz, %i.dkb
  br label %put_bits.exit467

bb.kz:                                            ; preds = %._crit_edge594
  %i.dkg = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.dkh = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.dki = ptrtoint ptr %i.dkg to i64
  %i.dkj = ptrtoint ptr %i.dkh to i64
  %i.dkk = sub i64 %i.dki, %i.dkj
  %i.dkl = icmp ugt i64 %i.dkk, 3
  br i1 %i.dkl, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.dkm = shl i32 %i.dka, %i.djz
  %i.dkn = sub nsw i32 %i.dkb, %i.djz
  %i.dko = lshr i32 %.1106.i.lcssa, %i.dkn
  %i.dkp = or i32 %i.dko, %i.dkm
  %i.dkq = tail call i32 @llvm.bswap.i32(i32 %i.dkp)
  store i32 %i.dkq, ptr %i.dkh, align 1, !tbaa !54
  %i.dkr = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dkr, i64 4
  store ptr %i.dks, ptr %i.ah, align 8, !tbaa !133
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %reass.sub = sub i32 %i.djz, %.lcssa
  %i.dkt = add i32 %reass.sub, 31
  br label %put_bits.exit467

put_bits.exit467:                                 ; preds = %bb.ky, %bb.lc
  %.026.i.i465 = phi i32 [ %i.dke, %bb.ky ], [ %.1106.i.lcssa, %bb.lc ]
  %.0.i.i466 = phi i32 [ %i.dkf, %bb.ky ], [ %i.dkt, %bb.lc ]
  store i32 %.026.i.i465, ptr %i.at, align 8, !tbaa !135
  store i32 %.0.i.i466, ptr %i.ai, align 4, !tbaa !134
  %spec.select134.i = tail call i32 @llvm.usub.sat.i32(i32 %.1110.i.lcssa, i32 1)
  %i.dku = icmp sgt i32 %i.dit, 0
  %i.dkv = sext i1 %i.dku to i32
  %spec.select135.i = add nsw i32 %i.dit, %i.dkv
  br label %bb.ld

.loopexit1080:                                    ; preds = %bb.ge
  %.0.i.le1177 = tail call i32 @llvm.abs.i32(i32 %i.brd, i1 true)
  %i.dkw = ashr exact i32 %i.brq, %i.bnz
  br label %bb.ld

bb.ld:                                            ; preds = %.loopexit1080, %put_bits.exit467
  %indvars.iv7511427 = phi i64 [ %indvars.iv751.lcssa1424, %put_bits.exit467 ], [ %indvars.iv751.ph, %.loopexit1080 ]
  %.0.i1108 = phi i32 [ %.0.i.le, %put_bits.exit467 ], [ %.0.i.le1177, %.loopexit1080 ]
  %.3112.i.ph = phi i32 [ %spec.select134.i, %put_bits.exit467 ], [ %.0109.i599.ph, %.loopexit1080 ]
  %.1.i.ph = phi i32 [ %spec.select135.i, %put_bits.exit467 ], [ %i.dkw, %.loopexit1080 ]
  %i.dkx = load ptr, ptr %i.bob, align 8, !tbaa !140
  %i.dky = zext nneg i32 %.0.i1108 to i64
  %i.dkz = getelementptr inbounds nuw [8 x i8], ptr %i.dkx, i64 %i.dky
  tail call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.at, ptr noundef %i.dkz, i32 noundef %.1.i.ph, i32 noundef %i.cl)
  br label %put_symbol_inline.exit173.i

put_symbol_inline.exit173.i:                      ; preds = %renorm_encoder.exit434, %bb.jm, %renorm_encoder.exit454, %bb.kk, %renorm_encoder.exit459, %bb.kp, %renorm_encoder.exit384, %bb.hh, %renorm_encoder.exit404, %bb.if, %renorm_encoder.exit409, %bb.ik, %bb.ld
  %indvars.iv7511426 = phi i64 [ %indvars.iv751.ph, %renorm_encoder.exit434 ], [ %indvars.iv751.ph, %renorm_encoder.exit384 ], [ %indvars.iv7511427, %bb.ld ], [ %indvars.iv751.ph, %bb.ik ], [ %indvars.iv751.ph, %renorm_encoder.exit409 ], [ %indvars.iv751.ph, %bb.if ], [ %indvars.iv751.ph, %renorm_encoder.exit404 ], [ %indvars.iv751.ph, %bb.hh ], [ %indvars.iv751.ph, %bb.kp ], [ %indvars.iv751.ph, %renorm_encoder.exit459 ], [ %indvars.iv751.ph, %bb.kk ], [ %indvars.iv751.ph, %renorm_encoder.exit454 ], [ %indvars.iv751.ph, %bb.jm ]
  %.4113.i = phi i32 [ %.0109.i599.ph, %renorm_encoder.exit434 ], [ %.0109.i599.ph, %renorm_encoder.exit384 ], [ %.3112.i.ph, %bb.ld ], [ %.0109.i599.ph, %bb.ik ], [ %.0109.i599.ph, %renorm_encoder.exit409 ], [ %.0109.i599.ph, %bb.if ], [ %.0109.i599.ph, %renorm_encoder.exit404 ], [ %.0109.i599.ph, %bb.hh ], [ %.0109.i599.ph, %bb.kp ], [ %.0109.i599.ph, %renorm_encoder.exit459 ], [ %.0109.i599.ph, %bb.kk ], [ %.0109.i599.ph, %renorm_encoder.exit454 ], [ %.0109.i599.ph, %bb.jm ] ; 2 uses
  %indvars.iv.next752 = add nuw nsw i64 %indvars.iv7511426, 1 ; 2 uses
  %exitcond755.not = icmp eq i64 %indvars.iv.next752, %wide.trip.count754
  br i1 %exitcond755.not, label %encode_line.exit220.sink.split, label %.outer1079, !llvm.loop !13

put_symbol_inline.exit173.i.thread:               ; preds = %get_context.exit357
  %i.dla = add nsw i32 %.0105.i600, 1             ; 2 uses
  %indvars.iv.next7521066 = add nuw nsw i64 %indvars.iv751, 1 ; 2 uses
  %exitcond755.not1067 = icmp eq i64 %indvars.iv.next7521066, %wide.trip.count754
  br i1 %exitcond755.not1067, label %.preheader547, label %.outer1079.peel.newph, !llvm.loop !371

.preheader547:                                    ; preds = %put_symbol_inline.exit173.i.thread, %put_symbol_inline.exit173.i.thread.peel
  %.lcssa1436 = phi i32 [ %i.dla, %put_symbol_inline.exit173.i.thread ], [ 1, %put_symbol_inline.exit173.i.thread.peel ] ; 3 uses
  %i.dlb = sext i32 %.0109.i599.ph to i64         ; 2 uses
  %i.dlc = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dlb
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !54
  %i.dle = zext nneg i8 %i.dld to i32
  %i.dlf = shl nuw i32 1, %i.dle                  ; 2 uses
  %.not126.i608 = icmp slt i32 %.lcssa1436, %i.dlf
  br i1 %.not126.i608, label %._crit_edge612, label %.lr.ph611.preheader

.lr.ph611.preheader:                              ; preds = %.preheader547
  %.pre838 = load i32, ptr %i.at, align 8, !tbaa !135
  %.pre839 = load i32, ptr %i.ai, align 4, !tbaa !134
  br label %.lr.ph611

.lr.ph611:                                        ; preds = %.lr.ph611.preheader, %put_bits.exit471
  %i.dlg = phi i32 [ %.pre839, %.lr.ph611.preheader ], [ %i.dma, %put_bits.exit471 ] ; 4 uses
  %i.dlh = phi i32 [ %.pre838, %.lr.ph611.preheader ], [ %.026.i.i469, %put_bits.exit471 ] ; 2 uses
  %indvars.iv756 = phi i64 [ %i.dlb, %.lr.ph611.preheader ], [ %indvars.iv.next757, %put_bits.exit471 ]
  %i.dli = phi i32 [ %i.dlf, %.lr.ph611.preheader ], [ %i.dme, %put_bits.exit471 ]
  %.4.i610 = phi i32 [ %.lcssa1436, %.lr.ph611.preheader ], [ %i.dlj, %put_bits.exit471 ]
  %i.dlj = sub nsw i32 %.4.i610, %i.dli           ; 3 uses
  %indvars.iv.next757 = add nsw i64 %indvars.iv756, 1 ; 3 uses
  %i.dlk = icmp sgt i32 %i.dlg, 1
  br i1 %i.dlk, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %.lr.ph611
  %i.dll = shl i32 %i.dlh, 1
  %i.dlm = or disjoint i32 %i.dll, 1
  br label %put_bits.exit471

bb.lf:                                            ; preds = %.lr.ph611
  %i.dln = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.dlo = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.dlp = ptrtoint ptr %i.dln to i64
  %i.dlq = ptrtoint ptr %i.dlo to i64
  %i.dlr = sub i64 %i.dlp, %i.dlq
  %i.dls = icmp ugt i64 %i.dlr, 3
  br i1 %i.dls, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.dlt = shl i32 %i.dlh, %i.dlg
  %i.dlu = icmp eq i32 %i.dlg, 1
  %i.dlv = zext i1 %i.dlu to i32
  %i.dlw = or i32 %i.dlt, %i.dlv
  %i.dlx = tail call i32 @llvm.bswap.i32(i32 %i.dlw)
  store i32 %i.dlx, ptr %i.dlo, align 1, !tbaa !54
  %i.dly = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dly, i64 4
  store ptr %i.dlz, ptr %i.ah, align 8, !tbaa !133
  br label %put_bits.exit471

bb.lh:                                            ; preds = %bb.lf
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit471

put_bits.exit471:                                 ; preds = %bb.lg, %bb.lh, %bb.le
  %.sink1260 = phi i32 [ -1, %bb.le ], [ 31, %bb.lh ], [ 31, %bb.lg ]
  %.026.i.i469 = phi i32 [ %i.dlm, %bb.le ], [ 1, %bb.lh ], [ 1, %bb.lg ] ; 2 uses
  %i.dma = add nsw i32 %i.dlg, %.sink1260         ; 2 uses
  store i32 %.026.i.i469, ptr %i.at, align 8, !tbaa !135
  store i32 %i.dma, ptr %i.ai, align 4, !tbaa !134
  %i.dmb = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next757
  %i.dmc = load i8, ptr %i.dmb, align 1, !tbaa !54
  %i.dmd = zext nneg i8 %i.dmc to i32
  %i.dme = shl nuw i32 1, %i.dmd                  ; 2 uses
  %.not126.i = icmp slt i32 %i.dlj, %i.dme
  br i1 %.not126.i, label %._crit_edge612.loopexit, label %.lr.ph611, !llvm.loop !14

._crit_edge612.loopexit:                          ; preds = %put_bits.exit471
  %i.dmf = trunc nsw i64 %indvars.iv.next757 to i32
  br label %._crit_edge612

._crit_edge612:                                   ; preds = %._crit_edge612.loopexit, %.preheader547
  %.5.i.lcssa = phi i32 [ %.0109.i599.ph, %.preheader547 ], [ %i.dmf, %._crit_edge612.loopexit ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.lcssa1436, %.preheader547 ], [ %i.dlj, %._crit_edge612.loopexit ]
  %.not127.i = icmp eq i32 %.4.i.lcssa, 0
  br i1 %.not127.i, label %encode_line.exit220.sink.split, label %bb.li

bb.li:                                            ; preds = %._crit_edge612
  %i.dmg = load i32, ptr %i.at, align 8, !tbaa !135 ; 2 uses
  %i.dmh = load i32, ptr %i.ai, align 4, !tbaa !134 ; 4 uses
  %i.dmi = icmp sgt i32 %i.dmh, 1
  br i1 %i.dmi, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.dmj = shl i32 %i.dmg, 1
  %i.dmk = or disjoint i32 %i.dmj, 1
  br label %put_bits.exit475

bb.lk:                                            ; preds = %bb.li
  %i.dml = load ptr, ptr %i.ag, align 8, !tbaa !132
  %i.dmm = load ptr, ptr %i.ah, align 8, !tbaa !133 ; 2 uses
  %i.dmn = ptrtoint ptr %i.dml to i64
  %i.dmo = ptrtoint ptr %i.dmm to i64
  %i.dmp = sub i64 %i.dmn, %i.dmo
  %i.dmq = icmp ugt i64 %i.dmp, 3
  br i1 %i.dmq, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.dmr = shl i32 %i.dmg, %i.dmh
  %i.dms = icmp eq i32 %i.dmh, 1
  %i.dmt = zext i1 %i.dms to i32
  %i.dmu = or i32 %i.dmr, %i.dmt
  %i.dmv = tail call i32 @llvm.bswap.i32(i32 %i.dmu)
  store i32 %i.dmv, ptr %i.dmm, align 1, !tbaa !54
  %i.dmw = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmw, i64 4
  store ptr %i.dmx, ptr %i.ah, align 8, !tbaa !133
  br label %put_bits.exit475

bb.lm:                                            ; preds = %bb.lk
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit475

put_bits.exit475:                                 ; preds = %bb.ll, %bb.lm, %bb.lj
  %.sink1261 = phi i32 [ -1, %bb.lj ], [ 31, %bb.lm ], [ 31, %bb.ll ]
  %.026.i.i473 = phi i32 [ %i.dmk, %bb.lj ], [ 1, %bb.lm ], [ 1, %bb.ll ]
  %i.dmy = add nsw i32 %i.dmh, %.sink1261
  br label %encode_line.exit220.sink.split.sink.split

encode_line.exit220.sink.split.sink.split:        ; preds = %put_bits.exit341, %put_bits.exit475
  %.026.i.i473.sink = phi i32 [ %.026.i.i473, %put_bits.exit475 ], [ %.026.i.i339, %put_bits.exit341 ]
  %.sink1262 = phi i32 [ %i.dmy, %put_bits.exit475 ], [ %i.bgi, %put_bits.exit341 ]
  %.6.i.sink.ph = phi i32 [ %.5.i.lcssa, %put_bits.exit475 ], [ %.5.i102.lcssa, %put_bits.exit341 ]
  store i32 %.026.i.i473.sink, ptr %i.at, align 8, !tbaa !135
  store i32 %.sink1262, ptr %i.ai, align 4, !tbaa !134
  br label %encode_line.exit220.sink.split
end_hunk_3
begin_hunk_4_@encode_rgb_frame32:bb.a
  store i8 %i.bbu, ptr %i.bbv, align 1, !tbaa !54
  %i.bbx = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.bby = add nsw i32 %i.bbx, -1                 ; 2 uses
  store i32 %i.bby, ptr %i.bn, align 8, !tbaa !64
  %.not.i391 = icmp eq i32 %i.bby, 0
  br i1 %.not.i391, label %._crit_edge.i392, label %bb.eq, !llvm.loop !0

._crit_edge.i392:                                 ; preds = %bb.eq, %bb.ep
  %i.bbz = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.bca = ashr i32 %i.bbz, 8
  store i32 %i.bca, ptr %i.bo, align 4, !tbaa !62
  %.pre894 = load i32, ptr %i.bl, align 4, !tbaa !60
  br label %renorm_encoder.exit393

bb.er:                                            ; preds = %bb.eo
  %i.bcb = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.bcc = add nsw i32 %i.bcb, 1
  store i32 %i.bcc, ptr %i.bn, align 8, !tbaa !64
  br label %renorm_encoder.exit393

renorm_encoder.exit393:                           ; preds = %._crit_edge.i392, %bb.er
  %i.bcd = phi i32 [ %i.bbd, %bb.er ], [ %.pre894, %._crit_edge.i392 ]
  %i.bce = phi i32 [ %i.bbf, %bb.er ], [ %i.bbz, %._crit_edge.i392 ]
  %i.bcf = shl i32 %i.bce, 8
  %i.bcg = and i32 %i.bcf, 65280
  store i32 %i.bcg, ptr %i.ay, align 8, !tbaa !61
  %i.bch = shl i32 %i.bcd, 8
  store i32 %i.bch, ptr %i.bl, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i204

bb.es:                                            ; preds = %bb.cs
  %i.bci = load i32, ptr %i.bl, align 4, !tbaa !60 ; 2 uses
  %i.bcj = load i8, ptr %i.qi, align 1, !tbaa !54
  %i.bck = zext i8 %i.bcj to i32
  %i.bcl = mul nsw i32 %i.bci, %i.bck
  %i.bcm = ashr i32 %i.bcl, 8                     ; 2 uses
  %i.bcn = load i32, ptr %i.ay, align 8, !tbaa !61
  %i.bco = add i32 %i.bcn, %i.bci
  %i.bcp = sub i32 %i.bco, %i.bcm
  store i32 %i.bcp, ptr %i.ay, align 8, !tbaa !61
  store i32 %i.bcm, ptr %i.bl, align 4, !tbaa !60
  %i.bcq = load i8, ptr %i.qi, align 1, !tbaa !54
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bcr
  %storemerge.i.i.i275 = load i8, ptr %i.bcs, align 1, !tbaa !54
  store i8 %storemerge.i.i.i275, ptr %i.qi, align 1, !tbaa !54
  %i.bct = load i32, ptr %i.bl, align 4, !tbaa !60 ; 2 uses
  %i.bcu = icmp slt i32 %i.bct, 256
  br i1 %i.bcu, label %bb.et, label %put_symbol_inline.exit173.i204

bb.et:                                            ; preds = %bb.es
  %i.bcv = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.bcw = add nsw i32 %i.bcv, -65281             ; 2 uses
  %i.bcx = icmp ugt i32 %i.bcw, 254
  br i1 %i.bcx, label %bb.eu, label %bb.ew

bb.eu:                                            ; preds = %bb.et
  %i.bcy = ashr i32 %i.bcw, 31                    ; 2 uses
  %i.bcz = load i32, ptr %i.bo, align 4, !tbaa !62
  %i.bda = add nsw i32 %i.bcy, 1
  %i.bdb = add i32 %i.bda, %i.bcz
  %i.bdc = trunc i32 %i.bdb to i8
  %i.bdd = load ptr, ptr %i.ba, align 8, !tbaa !63
  store i8 %i.bdc, ptr %i.bdd, align 1, !tbaa !54
  %i.bde = load i32, ptr %i.bo, align 4, !tbaa !62
  %i.bdf = icmp sgt i32 %i.bde, -1
  %i.bdg = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.bdh = zext i1 %i.bdf to i64
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.bdh
  store ptr %i.bdi, ptr %i.ba, align 8, !tbaa !63
  %i.bdj = load i32, ptr %i.bn, align 8, !tbaa !64
  %.not16.i394 = icmp eq i32 %i.bdj, 0
  br i1 %.not16.i394, label %._crit_edge.i397, label %.lr.ph.i395

.lr.ph.i395:                                      ; preds = %bb.eu
  %i.bdk = trunc nsw i32 %i.bcy to i8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.ev, %.lr.ph.i395
  %i.bdl = load ptr, ptr %i.ba, align 8, !tbaa !63 ; 2 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 1
  store ptr %i.bdm, ptr %i.ba, align 8, !tbaa !63
  store i8 %i.bdk, ptr %i.bdl, align 1, !tbaa !54
  %i.bdn = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.bdo = add nsw i32 %i.bdn, -1                 ; 2 uses
  store i32 %i.bdo, ptr %i.bn, align 8, !tbaa !64
  %.not.i396 = icmp eq i32 %i.bdo, 0
  br i1 %.not.i396, label %._crit_edge.i397, label %bb.ev, !llvm.loop !0

._crit_edge.i397:                                 ; preds = %bb.ev, %bb.eu
  %i.bdp = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.bdq = ashr i32 %i.bdp, 8
  store i32 %i.bdq, ptr %i.bo, align 4, !tbaa !62
  %.pre899 = load i32, ptr %i.bl, align 4, !tbaa !60
  br label %renorm_encoder.exit398

bb.ew:                                            ; preds = %bb.et
  %i.bdr = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.bds = add nsw i32 %i.bdr, 1
  store i32 %i.bds, ptr %i.bn, align 8, !tbaa !64
  br label %renorm_encoder.exit398

renorm_encoder.exit398:                           ; preds = %._crit_edge.i397, %bb.ew
  %i.bdt = phi i32 [ %i.bct, %bb.ew ], [ %.pre899, %._crit_edge.i397 ]
  %i.bdu = phi i32 [ %i.bcv, %bb.ew ], [ %i.bdp, %._crit_edge.i397 ]
  %i.bdv = shl i32 %i.bdu, 8
  %i.bdw = and i32 %i.bdv, 65280
  store i32 %i.bdw, ptr %i.ay, align 8, !tbaa !61
  %i.bdx = shl i32 %i.bdt, 8
  store i32 %i.bdx, ptr %i.bl, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i204

.preheader:                                       ; preds = %get_context32.exit, %bb.ai
  %.lcssa1387 = phi i32 [ %i.nc, %bb.ai ], [ %i.pw, %get_context32.exit ]
  %.lcssa1383 = phi i32 [ %i.nk, %bb.ai ], [ %i.qe, %get_context32.exit ]
  %indvars.iv835.lcssa1377 = phi i64 [ %indvars.iv835.ph, %bb.ai ], [ %indvars.iv835, %get_context32.exit ]
  %.0105.i170718.lcssa1371 = phi i32 [ 0, %bb.ai ], [ %.0105.i170718, %get_context32.exit ] ; 3 uses
  %.0.i180.le = call i32 @llvm.abs.i32(i32 %.lcssa1387, i1 true)
  %i.bdy = ashr exact i32 %.lcssa1383, 23         ; 2 uses
  %i.bdz = sext i32 %.0109.i169717.ph to i64      ; 2 uses
  %i.bea = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.bdz
  %i.beb = load i8, ptr %i.bea, align 1, !tbaa !54
  %i.bec = zext i8 %i.beb to i32                  ; 2 uses
  %i.bed = shl nuw i32 1, %i.bec                  ; 2 uses
  %.not130.i282708 = icmp slt i32 %.0105.i170718.lcssa1371, %i.bed
  %.pre902 = load i32, ptr %i.bq, align 8, !tbaa !135 ; 2 uses
  %.pre903 = load i32, ptr %i.bf, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i282708, label %._crit_edge712, label %.lr.ph711

.lr.ph711:                                        ; preds = %.preheader, %put_bits.exit
  %i.bee = phi i32 [ %i.bey, %put_bits.exit ], [ %.pre903, %.preheader ] ; 4 uses
  %i.bef = phi i32 [ %.026.i.i, %put_bits.exit ], [ %.pre902, %.preheader ] ; 2 uses
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %put_bits.exit ], [ %i.bdz, %.preheader ]
  %i.beg = phi i32 [ %i.bfc, %put_bits.exit ], [ %i.bed, %.preheader ]
  %.1106.i281710 = phi i32 [ %i.beh, %put_bits.exit ], [ %.0105.i170718.lcssa1371, %.preheader ]
  %i.beh = sub nsw i32 %.1106.i281710, %i.beg     ; 3 uses
  %indvars.iv.next833 = add nsw i64 %indvars.iv832, 1 ; 3 uses
  %i.bei = icmp sgt i32 %i.bee, 1
  br i1 %i.bei, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %.lr.ph711
  %i.bej = shl i32 %i.bef, 1
  %i.bek = or disjoint i32 %i.bej, 1
  br label %put_bits.exit

bb.ey:                                            ; preds = %.lr.ph711
  %i.bel = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.bem = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.ben = ptrtoint ptr %i.bel to i64
  %i.beo = ptrtoint ptr %i.bem to i64
  %i.bep = sub i64 %i.ben, %i.beo
  %i.beq = icmp ugt i64 %i.bep, 3
  br i1 %i.beq, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.ber = shl i32 %i.bef, %i.bee
  %i.bes = icmp eq i32 %i.bee, 1
  %i.bet = zext i1 %i.bes to i32
  %i.beu = or i32 %i.ber, %i.bet
  %i.bev = call i32 @llvm.bswap.i32(i32 %i.beu)
  store i32 %i.bev, ptr %i.bem, align 1, !tbaa !54
  %i.bew = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 4
  store ptr %i.bex, ptr %i.be, align 8, !tbaa !133
  br label %put_bits.exit

bb.fa:                                            ; preds = %bb.ey
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.ez, %bb.fa, %bb.ex
  %.sink1253 = phi i32 [ -1, %bb.ex ], [ 31, %bb.fa ], [ 31, %bb.ez ]
  %.026.i.i = phi i32 [ %i.bek, %bb.ex ], [ 1, %bb.fa ], [ 1, %bb.ez ] ; 3 uses
  %i.bey = add nsw i32 %i.bee, %.sink1253         ; 3 uses
  store i32 %.026.i.i, ptr %i.bq, align 8, !tbaa !135
  store i32 %i.bey, ptr %i.bf, align 4, !tbaa !134
  %i.bez = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next833
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !54
  %i.bfb = zext i8 %i.bfa to i32                  ; 2 uses
  %i.bfc = shl nuw i32 1, %i.bfb                  ; 2 uses
  %.not130.i282 = icmp slt i32 %i.beh, %i.bfc
  br i1 %.not130.i282, label %._crit_edge712.loopexit, label %.lr.ph711, !llvm.loop !7

._crit_edge712.loopexit:                          ; preds = %put_bits.exit
  %i.bfd = trunc nsw i64 %indvars.iv.next833 to i32
  br label %._crit_edge712

._crit_edge712:                                   ; preds = %._crit_edge712.loopexit, %.preheader
  %i.bfe = phi i32 [ %.pre903, %.preheader ], [ %i.bey, %._crit_edge712.loopexit ] ; 5 uses
  %i.bff = phi i32 [ %.pre902, %.preheader ], [ %.026.i.i, %._crit_edge712.loopexit ] ; 2 uses
  %.1110.i280.lcssa = phi i32 [ %.0109.i169717.ph, %.preheader ], [ %i.bfd, %._crit_edge712.loopexit ]
  %.1106.i281.lcssa = phi i32 [ %.0105.i170718.lcssa1371, %.preheader ], [ %i.beh, %._crit_edge712.loopexit ] ; 3 uses
  %.lcssa620 = phi i32 [ %i.bec, %.preheader ], [ %i.bfb, %._crit_edge712.loopexit ] ; 2 uses
  %i.bfg = add nuw nsw i32 %.lcssa620, 1          ; 4 uses
  %i.bfh = icmp slt i32 %i.bfg, %i.bfe
  br i1 %i.bfh, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %._crit_edge712
  %i.bfi = shl i32 %i.bff, %i.bfg
  %i.bfj = or i32 %i.bfi, %.1106.i281.lcssa
  %i.bfk = sub nsw i32 %i.bfe, %i.bfg
  br label %put_bits.exit403

bb.fc:                                            ; preds = %._crit_edge712
  %i.bfl = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.bfm = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.bfn = ptrtoint ptr %i.bfl to i64
  %i.bfo = ptrtoint ptr %i.bfm to i64
  %i.bfp = sub i64 %i.bfn, %i.bfo
  %i.bfq = icmp ugt i64 %i.bfp, 3
  br i1 %i.bfq, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.bfr = shl i32 %i.bff, %i.bfe
  %i.bfs = sub nsw i32 %i.bfg, %i.bfe
  %i.bft = lshr i32 %.1106.i281.lcssa, %i.bfs
  %i.bfu = or i32 %i.bft, %i.bfr
  %i.bfv = call i32 @llvm.bswap.i32(i32 %i.bfu)
  store i32 %i.bfv, ptr %i.bfm, align 1, !tbaa !54
  %i.bfw = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 4
  store ptr %i.bfx, ptr %i.be, align 8, !tbaa !133
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %reass.sub748 = sub i32 %i.bfe, %.lcssa620
  %i.bfy = add i32 %reass.sub748, 31
  br label %put_bits.exit403

put_bits.exit403:                                 ; preds = %bb.fb, %bb.ff
  %.026.i.i401 = phi i32 [ %i.bfj, %bb.fb ], [ %.1106.i281.lcssa, %bb.ff ]
  %.0.i.i402 = phi i32 [ %i.bfk, %bb.fb ], [ %i.bfy, %bb.ff ]
  store i32 %.026.i.i401, ptr %i.bq, align 8, !tbaa !135
  store i32 %.0.i.i402, ptr %i.bf, align 4, !tbaa !134
  %spec.select134.i284 = call i32 @llvm.usub.sat.i32(i32 %.1110.i280.lcssa, i32 1)
  %i.bfz = icmp sgt i32 %i.bdy, 0
  %i.bga = sext i1 %i.bfz to i32
  %spec.select135.i285 = add nsw i32 %i.bdy, %i.bga
  br label %bb.fg

.loopexit1114:                                    ; preds = %bb.ah
  %.0.i180.le1217 = call i32 @llvm.abs.i32(i32 %i.nc, i1 true)
  %i.bgb = ashr exact i32 %i.nk, 23
  br label %bb.fg

bb.fg:                                            ; preds = %.loopexit1114, %put_bits.exit403
  %indvars.iv8351380 = phi i64 [ %indvars.iv835.lcssa1377, %put_bits.exit403 ], [ %indvars.iv835.ph, %.loopexit1114 ]
  %.0.i1801180 = phi i32 [ %.0.i180.le, %put_bits.exit403 ], [ %.0.i180.le1217, %.loopexit1114 ]
  %.3112.i286.ph = phi i32 [ %spec.select134.i284, %put_bits.exit403 ], [ %.0109.i169717.ph, %.loopexit1114 ]
  %.1.i288.ph = phi i32 [ %spec.select135.i285, %put_bits.exit403 ], [ %i.bgb, %.loopexit1114 ]
  %i.bgc = load ptr, ptr %i.kd, align 8, !tbaa !140
  %i.bgd = zext nneg i32 %.0.i1801180 to i64
  %i.bge = getelementptr inbounds nuw [8 x i8], ptr %i.bgc, i64 %i.bgd
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.bq, ptr noundef %i.bge, i32 noundef %.1.i288.ph, i32 noundef 9)
  br label %put_symbol_inline.exit173.i204

put_symbol_inline.exit173.i204:                   ; preds = %renorm_encoder.exit373, %bb.dp, %renorm_encoder.exit393, %bb.en, %renorm_encoder.exit398, %bb.es, %renorm_encoder.exit323, %bb.bk, %renorm_encoder.exit343, %bb.ci, %renorm_encoder.exit348, %bb.cn, %bb.fg
  %indvars.iv8351379 = phi i64 [ %indvars.iv835.ph, %renorm_encoder.exit373 ], [ %indvars.iv835.ph, %renorm_encoder.exit323 ], [ %indvars.iv8351380, %bb.fg ], [ %indvars.iv835.ph, %bb.cn ], [ %indvars.iv835.ph, %renorm_encoder.exit348 ], [ %indvars.iv835.ph, %bb.ci ], [ %indvars.iv835.ph, %renorm_encoder.exit343 ], [ %indvars.iv835.ph, %bb.bk ], [ %indvars.iv835.ph, %bb.es ], [ %indvars.iv835.ph, %renorm_encoder.exit398 ], [ %indvars.iv835.ph, %bb.en ], [ %indvars.iv835.ph, %renorm_encoder.exit393 ], [ %indvars.iv835.ph, %bb.dp ]
  %.4113.i205 = phi i32 [ %.0109.i169717.ph, %renorm_encoder.exit373 ], [ %.0109.i169717.ph, %renorm_encoder.exit323 ], [ %.3112.i286.ph, %bb.fg ], [ %.0109.i169717.ph, %bb.cn ], [ %.0109.i169717.ph, %renorm_encoder.exit348 ], [ %.0109.i169717.ph, %bb.ci ], [ %.0109.i169717.ph, %renorm_encoder.exit343 ], [ %.0109.i169717.ph, %bb.bk ], [ %.0109.i169717.ph, %bb.es ], [ %.0109.i169717.ph, %renorm_encoder.exit398 ], [ %.0109.i169717.ph, %bb.en ], [ %.0109.i169717.ph, %renorm_encoder.exit393 ], [ %.0109.i169717.ph, %bb.dp ] ; 2 uses
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv8351379, 1 ; 2 uses
  %exitcond839.not = icmp eq i64 %indvars.iv.next836, %wide.trip.count838
  br i1 %exitcond839.not, label %.loopexit.sink.split, label %.outer, !llvm.loop !8

put_symbol_inline.exit173.i204.thread:            ; preds = %get_context32.exit
  %i.bgf = add nsw i32 %.0105.i170718, 1          ; 2 uses
  %indvars.iv.next8361086 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %exitcond839.not1087 = icmp eq i64 %indvars.iv.next8361086, %wide.trip.count838
  br i1 %exitcond839.not1087, label %.preheader612, label %.outer.peel.newph, !llvm.loop !377

.preheader612:                                    ; preds = %put_symbol_inline.exit173.i204.thread, %put_symbol_inline.exit173.i204.thread.peel
  %.lcssa1389 = phi i32 [ %i.bgf, %put_symbol_inline.exit173.i204.thread ], [ 1, %put_symbol_inline.exit173.i204.thread.peel ] ; 3 uses
  %i.bgg = sext i32 %.0109.i169717.ph to i64      ; 2 uses
  %i.bgh = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.bgg
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !54
  %i.bgj = zext nneg i8 %i.bgi to i32
  %i.bgk = shl nuw i32 1, %i.bgj                  ; 2 uses
  %.not126.i175726 = icmp slt i32 %.lcssa1389, %i.bgk
  br i1 %.not126.i175726, label %._crit_edge730, label %.lr.ph729.preheader

.lr.ph729.preheader:                              ; preds = %.preheader612
  %.pre904 = load i32, ptr %i.bq, align 8, !tbaa !135
  %.pre905 = load i32, ptr %i.bf, align 4, !tbaa !134
  br label %.lr.ph729

.lr.ph729:                                        ; preds = %.lr.ph729.preheader, %put_bits.exit407
  %i.bgl = phi i32 [ %.pre905, %.lr.ph729.preheader ], [ %i.bhf, %put_bits.exit407 ] ; 4 uses
  %i.bgm = phi i32 [ %.pre904, %.lr.ph729.preheader ], [ %.026.i.i405, %put_bits.exit407 ] ; 2 uses
  %indvars.iv840 = phi i64 [ %i.bgg, %.lr.ph729.preheader ], [ %indvars.iv.next841, %put_bits.exit407 ]
  %i.bgn = phi i32 [ %i.bgk, %.lr.ph729.preheader ], [ %i.bhj, %put_bits.exit407 ]
  %.4.i174728 = phi i32 [ %.lcssa1389, %.lr.ph729.preheader ], [ %i.bgo, %put_bits.exit407 ]
  %i.bgo = sub nsw i32 %.4.i174728, %i.bgn        ; 3 uses
  %indvars.iv.next841 = add nsw i64 %indvars.iv840, 1 ; 3 uses
  %i.bgp = icmp sgt i32 %i.bgl, 1
  br i1 %i.bgp, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %.lr.ph729
  %i.bgq = shl i32 %i.bgm, 1
  %i.bgr = or disjoint i32 %i.bgq, 1
  br label %put_bits.exit407

bb.fi:                                            ; preds = %.lr.ph729
  %i.bgs = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.bgt = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.bgu = ptrtoint ptr %i.bgs to i64
  %i.bgv = ptrtoint ptr %i.bgt to i64
  %i.bgw = sub i64 %i.bgu, %i.bgv
  %i.bgx = icmp ugt i64 %i.bgw, 3
  br i1 %i.bgx, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.bgy = shl i32 %i.bgm, %i.bgl
  %i.bgz = icmp eq i32 %i.bgl, 1
  %i.bha = zext i1 %i.bgz to i32
  %i.bhb = or i32 %i.bgy, %i.bha
  %i.bhc = call i32 @llvm.bswap.i32(i32 %i.bhb)
  store i32 %i.bhc, ptr %i.bgt, align 1, !tbaa !54
  %i.bhd = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 4
  store ptr %i.bhe, ptr %i.be, align 8, !tbaa !133
  br label %put_bits.exit407

bb.fk:                                            ; preds = %bb.fi
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit407

put_bits.exit407:                                 ; preds = %bb.fj, %bb.fk, %bb.fh
  %.sink1254 = phi i32 [ -1, %bb.fh ], [ 31, %bb.fk ], [ 31, %bb.fj ]
  %.026.i.i405 = phi i32 [ %i.bgr, %bb.fh ], [ 1, %bb.fk ], [ 1, %bb.fj ] ; 2 uses
  %i.bhf = add nsw i32 %i.bgl, %.sink1254         ; 2 uses
  store i32 %.026.i.i405, ptr %i.bq, align 8, !tbaa !135
  store i32 %i.bhf, ptr %i.bf, align 4, !tbaa !134
  %i.bhg = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next841
  %i.bhh = load i8, ptr %i.bhg, align 1, !tbaa !54
  %i.bhi = zext nneg i8 %i.bhh to i32
  %i.bhj = shl nuw i32 1, %i.bhi                  ; 2 uses
  %.not126.i175 = icmp slt i32 %i.bgo, %i.bhj
  br i1 %.not126.i175, label %._crit_edge730.loopexit, label %.lr.ph729, !llvm.loop !9

._crit_edge730.loopexit:                          ; preds = %put_bits.exit407
  %i.bhk = trunc nsw i64 %indvars.iv.next841 to i32
  br label %._crit_edge730

._crit_edge730:                                   ; preds = %._crit_edge730.loopexit, %.preheader612
  %.5.i173.lcssa = phi i32 [ %.0109.i169717.ph, %.preheader612 ], [ %i.bhk, %._crit_edge730.loopexit ] ; 2 uses
  %.4.i174.lcssa = phi i32 [ %.lcssa1389, %.preheader612 ], [ %i.bgo, %._crit_edge730.loopexit ]
  %.not127.i176 = icmp eq i32 %.4.i174.lcssa, 0
  br i1 %.not127.i176, label %.loopexit.sink.split, label %bb.fl

bb.fl:                                            ; preds = %._crit_edge730
  %i.bhl = load i32, ptr %i.bq, align 8, !tbaa !135 ; 2 uses
  %i.bhm = load i32, ptr %i.bf, align 4, !tbaa !134 ; 4 uses
  %i.bhn = icmp sgt i32 %i.bhm, 1
  br i1 %i.bhn, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.bho = shl i32 %i.bhl, 1
  %i.bhp = or disjoint i32 %i.bho, 1
  br label %put_bits.exit411

bb.fn:                                            ; preds = %bb.fl
  %i.bhq = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.bhr = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.bhs = ptrtoint ptr %i.bhq to i64
  %i.bht = ptrtoint ptr %i.bhr to i64
  %i.bhu = sub i64 %i.bhs, %i.bht
  %i.bhv = icmp ugt i64 %i.bhu, 3
  br i1 %i.bhv, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.bhw = shl i32 %i.bhl, %i.bhm
  %i.bhx = icmp eq i32 %i.bhm, 1
  %i.bhy = zext i1 %i.bhx to i32
  %i.bhz = or i32 %i.bhw, %i.bhy
  %i.bia = call i32 @llvm.bswap.i32(i32 %i.bhz)
  store i32 %i.bia, ptr %i.bhr, align 1, !tbaa !54
  %i.bib = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 4
  store ptr %i.bic, ptr %i.be, align 8, !tbaa !133
  br label %put_bits.exit411

bb.fp:                                            ; preds = %bb.fn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit411

put_bits.exit411:                                 ; preds = %bb.fo, %bb.fp, %bb.fm
  %.sink1255 = phi i32 [ -1, %bb.fm ], [ 31, %bb.fp ], [ 31, %bb.fo ]
  %.026.i.i409 = phi i32 [ %i.bhp, %bb.fm ], [ 1, %bb.fp ], [ 1, %bb.fo ]
  %i.bid = add nsw i32 %i.bhm, %.sink1255
  br label %.loopexit.sink.split.sink.split

bb.fq:                                            ; preds = %.lr.ph737
  %i.bie = load i32, ptr %i.as, align 4, !tbaa !124
  %i.bif = icmp eq i32 %i.bie, 1
  br i1 %i.bif, label %bb.fr, label %bb.gb

bb.fr:                                            ; preds = %bb.fq
  br i1 %.not.i, label %bb.fs, label %bb.ft
end_hunk_4
begin_hunk_5_@encode_rgb_frame32:bb.a
  store ptr %i.ddc, ptr %i.ba, align 8, !tbaa !63
  store i8 %i.dda, ptr %i.ddb, align 1, !tbaa !54
  %i.ddd = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.dde = add nsw i32 %i.ddd, -1                 ; 2 uses
  store i32 %i.dde, ptr %i.bn, align 8, !tbaa !64
  %.not.i522 = icmp eq i32 %i.dde, 0
  br i1 %.not.i522, label %._crit_edge.i523, label %bb.kr, !llvm.loop !0

._crit_edge.i523:                                 ; preds = %bb.kr, %bb.kq
  %i.ddf = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.ddg = ashr i32 %i.ddf, 8
  store i32 %i.ddg, ptr %i.bo, align 4, !tbaa !62
  %.pre867 = load i32, ptr %i.bl, align 4, !tbaa !60
  br label %renorm_encoder.exit524

bb.ks:                                            ; preds = %bb.kp
  %i.ddh = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.ddi = add nsw i32 %i.ddh, 1
  store i32 %i.ddi, ptr %i.bn, align 8, !tbaa !64
  br label %renorm_encoder.exit524

renorm_encoder.exit524:                           ; preds = %._crit_edge.i523, %bb.ks
  %i.ddj = phi i32 [ %i.dcj, %bb.ks ], [ %.pre867, %._crit_edge.i523 ]
  %i.ddk = phi i32 [ %i.dcl, %bb.ks ], [ %i.ddf, %._crit_edge.i523 ]
  %i.ddl = shl i32 %i.ddk, 8
  %i.ddm = and i32 %i.ddl, 65280
  store i32 %i.ddm, ptr %i.ay, align 8, !tbaa !61
  %i.ddn = shl i32 %i.ddj, 8
  store i32 %i.ddn, ptr %i.bl, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i

bb.kt:                                            ; preds = %bb.it
  %i.ddo = load i32, ptr %i.bl, align 4, !tbaa !60 ; 2 uses
  %i.ddp = load i8, ptr %i.brk, align 1, !tbaa !54
  %i.ddq = zext i8 %i.ddp to i32
  %i.ddr = mul nsw i32 %i.ddo, %i.ddq
  %i.dds = ashr i32 %i.ddr, 8                     ; 2 uses
  %i.ddt = load i32, ptr %i.ay, align 8, !tbaa !61
  %i.ddu = add i32 %i.ddt, %i.ddo
  %i.ddv = sub i32 %i.ddu, %i.dds
  store i32 %i.ddv, ptr %i.ay, align 8, !tbaa !61
  store i32 %i.dds, ptr %i.bl, align 4, !tbaa !60
  %i.ddw = load i8, ptr %i.brk, align 1, !tbaa !54
  %i.ddx = zext i8 %i.ddw to i64
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.ddx
  %storemerge.i.i.i = load i8, ptr %i.ddy, align 1, !tbaa !54
  store i8 %storemerge.i.i.i, ptr %i.brk, align 1, !tbaa !54
  %i.ddz = load i32, ptr %i.bl, align 4, !tbaa !60 ; 2 uses
  %i.dea = icmp slt i32 %i.ddz, 256
  br i1 %i.dea, label %bb.ku, label %put_symbol_inline.exit173.i

bb.ku:                                            ; preds = %bb.kt
  %i.deb = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.dec = add nsw i32 %i.deb, -65281             ; 2 uses
  %i.ded = icmp ugt i32 %i.dec, 254
  br i1 %i.ded, label %bb.kv, label %bb.kx

bb.kv:                                            ; preds = %bb.ku
  %i.dee = ashr i32 %i.dec, 31                    ; 2 uses
  %i.def = load i32, ptr %i.bo, align 4, !tbaa !62
  %i.deg = add nsw i32 %i.dee, 1
  %i.deh = add i32 %i.deg, %i.def
  %i.dei = trunc i32 %i.deh to i8
  %i.dej = load ptr, ptr %i.ba, align 8, !tbaa !63
  store i8 %i.dei, ptr %i.dej, align 1, !tbaa !54
  %i.dek = load i32, ptr %i.bo, align 4, !tbaa !62
  %i.del = icmp sgt i32 %i.dek, -1
  %i.dem = load ptr, ptr %i.ba, align 8, !tbaa !63
  %i.den = zext i1 %i.del to i64
  %i.deo = getelementptr inbounds nuw i8, ptr %i.dem, i64 %i.den
  store ptr %i.deo, ptr %i.ba, align 8, !tbaa !63
  %i.dep = load i32, ptr %i.bn, align 8, !tbaa !64
  %.not16.i525 = icmp eq i32 %i.dep, 0
  br i1 %.not16.i525, label %._crit_edge.i528, label %.lr.ph.i526

.lr.ph.i526:                                      ; preds = %bb.kv
  %i.deq = trunc nsw i32 %i.dee to i8
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kw, %.lr.ph.i526
  %i.der = load ptr, ptr %i.ba, align 8, !tbaa !63 ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %i.der, i64 1
  store ptr %i.des, ptr %i.ba, align 8, !tbaa !63
  store i8 %i.deq, ptr %i.der, align 1, !tbaa !54
  %i.det = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.deu = add nsw i32 %i.det, -1                 ; 2 uses
  store i32 %i.deu, ptr %i.bn, align 8, !tbaa !64
  %.not.i527 = icmp eq i32 %i.deu, 0
  br i1 %.not.i527, label %._crit_edge.i528, label %bb.kw, !llvm.loop !0

._crit_edge.i528:                                 ; preds = %bb.kw, %bb.kv
  %i.dev = load i32, ptr %i.ay, align 8, !tbaa !61 ; 2 uses
  %i.dew = ashr i32 %i.dev, 8
  store i32 %i.dew, ptr %i.bo, align 4, !tbaa !62
  %.pre872 = load i32, ptr %i.bl, align 4, !tbaa !60
  br label %renorm_encoder.exit529

bb.kx:                                            ; preds = %bb.ku
  %i.dex = load i32, ptr %i.bn, align 8, !tbaa !64
  %i.dey = add nsw i32 %i.dex, 1
  store i32 %i.dey, ptr %i.bn, align 8, !tbaa !64
  br label %renorm_encoder.exit529

renorm_encoder.exit529:                           ; preds = %._crit_edge.i528, %bb.kx
  %i.dez = phi i32 [ %i.ddz, %bb.kx ], [ %.pre872, %._crit_edge.i528 ]
  %i.dfa = phi i32 [ %i.deb, %bb.kx ], [ %i.dev, %._crit_edge.i528 ]
  %i.dfb = shl i32 %i.dfa, 8
  %i.dfc = and i32 %i.dfb, 65280
  store i32 %i.dfc, ptr %i.ay, align 8, !tbaa !61
  %i.dfd = shl i32 %i.dez, 8
  store i32 %i.dfd, ptr %i.bl, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i

.preheader606:                                    ; preds = %get_context32.exit427, %bb.gj
  %.lcssa1420 = phi i32 [ %i.bob, %bb.gj ], [ %i.bqx, %get_context32.exit427 ]
  %.0.i182.i.lcssa1416 = phi i32 [ %.0.i182.i.peel, %bb.gj ], [ %.0.i182.i, %get_context32.exit427 ] ; 2 uses
  %indvars.iv801.lcssa1411 = phi i64 [ %indvars.iv801.ph, %bb.gj ], [ %indvars.iv801, %get_context32.exit427 ]
  %.0105.i665.lcssa1405 = phi i32 [ 0, %bb.gj ], [ %.0105.i665, %get_context32.exit427 ] ; 3 uses
  %.0.i.le = call i32 @llvm.abs.i32(i32 %.lcssa1420, i1 true)
  %i.dfe = sext i32 %.0109.i664.ph to i64         ; 2 uses
  %i.dff = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dfe
  %i.dfg = load i8, ptr %i.dff, align 1, !tbaa !54
  %i.dfh = zext i8 %i.dfg to i32                  ; 2 uses
  %i.dfi = shl nuw i32 1, %i.dfh                  ; 2 uses
  %.not130.i655 = icmp slt i32 %.0105.i665.lcssa1405, %i.dfi
  %.pre875 = load i32, ptr %i.bq, align 8, !tbaa !135 ; 2 uses
  %.pre876 = load i32, ptr %i.bf, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i655, label %._crit_edge659, label %.lr.ph658

.lr.ph658:                                        ; preds = %.preheader606, %put_bits.exit533
  %i.dfj = phi i32 [ %i.dgd, %put_bits.exit533 ], [ %.pre876, %.preheader606 ] ; 4 uses
  %i.dfk = phi i32 [ %.026.i.i531, %put_bits.exit533 ], [ %.pre875, %.preheader606 ] ; 2 uses
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %put_bits.exit533 ], [ %i.dfe, %.preheader606 ]
  %i.dfl = phi i32 [ %i.dgh, %put_bits.exit533 ], [ %i.dfi, %.preheader606 ]
  %.1106.i657 = phi i32 [ %i.dfm, %put_bits.exit533 ], [ %.0105.i665.lcssa1405, %.preheader606 ]
  %i.dfm = sub nsw i32 %.1106.i657, %i.dfl        ; 3 uses
  %indvars.iv.next799 = add nsw i64 %indvars.iv798, 1 ; 3 uses
  %i.dfn = icmp sgt i32 %i.dfj, 1
  br i1 %i.dfn, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %.lr.ph658
  %i.dfo = shl i32 %i.dfk, 1
  %i.dfp = or disjoint i32 %i.dfo, 1
  br label %put_bits.exit533

bb.kz:                                            ; preds = %.lr.ph658
  %i.dfq = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.dfr = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.dfs = ptrtoint ptr %i.dfq to i64
  %i.dft = ptrtoint ptr %i.dfr to i64
  %i.dfu = sub i64 %i.dfs, %i.dft
  %i.dfv = icmp ugt i64 %i.dfu, 3
  br i1 %i.dfv, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.dfw = shl i32 %i.dfk, %i.dfj
  %i.dfx = icmp eq i32 %i.dfj, 1
  %i.dfy = zext i1 %i.dfx to i32
  %i.dfz = or i32 %i.dfw, %i.dfy
  %i.dga = call i32 @llvm.bswap.i32(i32 %i.dfz)
  store i32 %i.dga, ptr %i.dfr, align 1, !tbaa !54
  %i.dgb = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dgb, i64 4
  store ptr %i.dgc, ptr %i.be, align 8, !tbaa !133
  br label %put_bits.exit533

bb.lb:                                            ; preds = %bb.kz
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit533

put_bits.exit533:                                 ; preds = %bb.la, %bb.lb, %bb.ky
  %.sink1288 = phi i32 [ -1, %bb.ky ], [ 31, %bb.lb ], [ 31, %bb.la ]
  %.026.i.i531 = phi i32 [ %i.dfp, %bb.ky ], [ 1, %bb.lb ], [ 1, %bb.la ] ; 3 uses
  %i.dgd = add nsw i32 %i.dfj, %.sink1288         ; 3 uses
  store i32 %.026.i.i531, ptr %i.bq, align 8, !tbaa !135
  store i32 %i.dgd, ptr %i.bf, align 4, !tbaa !134
  %i.dge = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next799
  %i.dgf = load i8, ptr %i.dge, align 1, !tbaa !54
  %i.dgg = zext i8 %i.dgf to i32                  ; 2 uses
  %i.dgh = shl nuw i32 1, %i.dgg                  ; 2 uses
  %.not130.i = icmp slt i32 %i.dfm, %i.dgh
  br i1 %.not130.i, label %._crit_edge659.loopexit, label %.lr.ph658, !llvm.loop !7

._crit_edge659.loopexit:                          ; preds = %put_bits.exit533
  %i.dgi = trunc nsw i64 %indvars.iv.next799 to i32
  br label %._crit_edge659

._crit_edge659:                                   ; preds = %._crit_edge659.loopexit, %.preheader606
  %i.dgj = phi i32 [ %.pre876, %.preheader606 ], [ %i.dgd, %._crit_edge659.loopexit ] ; 5 uses
  %i.dgk = phi i32 [ %.pre875, %.preheader606 ], [ %.026.i.i531, %._crit_edge659.loopexit ] ; 2 uses
  %.1110.i.lcssa = phi i32 [ %.0109.i664.ph, %.preheader606 ], [ %i.dgi, %._crit_edge659.loopexit ]
  %.1106.i.lcssa = phi i32 [ %.0105.i665.lcssa1405, %.preheader606 ], [ %i.dfm, %._crit_edge659.loopexit ] ; 3 uses
  %.lcssa = phi i32 [ %i.dfh, %.preheader606 ], [ %i.dgg, %._crit_edge659.loopexit ] ; 2 uses
  %i.dgl = add nuw nsw i32 %.lcssa, 1             ; 4 uses
  %i.dgm = icmp slt i32 %i.dgl, %i.dgj
  br i1 %i.dgm, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %._crit_edge659
  %i.dgn = shl i32 %i.dgk, %i.dgl
  %i.dgo = or i32 %i.dgn, %.1106.i.lcssa
  %i.dgp = sub nsw i32 %i.dgj, %i.dgl
  br label %put_bits.exit537

bb.ld:                                            ; preds = %._crit_edge659
  %i.dgq = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.dgr = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.dgs = ptrtoint ptr %i.dgq to i64
  %i.dgt = ptrtoint ptr %i.dgr to i64
  %i.dgu = sub i64 %i.dgs, %i.dgt
  %i.dgv = icmp ugt i64 %i.dgu, 3
  br i1 %i.dgv, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.dgw = shl i32 %i.dgk, %i.dgj
  %i.dgx = sub nsw i32 %i.dgl, %i.dgj
  %i.dgy = lshr i32 %.1106.i.lcssa, %i.dgx
  %i.dgz = or i32 %i.dgy, %i.dgw
  %i.dha = call i32 @llvm.bswap.i32(i32 %i.dgz)
  store i32 %i.dha, ptr %i.dgr, align 1, !tbaa !54
  %i.dhb = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dhb, i64 4
  store ptr %i.dhc, ptr %i.be, align 8, !tbaa !133
  br label %bb.lg

bb.lf:                                            ; preds = %bb.ld
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %reass.sub = sub i32 %i.dgj, %.lcssa
  %i.dhd = add i32 %reass.sub, 31
  br label %put_bits.exit537

put_bits.exit537:                                 ; preds = %bb.lc, %bb.lg
  %.026.i.i535 = phi i32 [ %i.dgo, %bb.lc ], [ %.1106.i.lcssa, %bb.lg ]
  %.0.i.i536 = phi i32 [ %i.dgp, %bb.lc ], [ %i.dhd, %bb.lg ]
  store i32 %.026.i.i535, ptr %i.bq, align 8, !tbaa !135
  store i32 %.0.i.i536, ptr %i.bf, align 4, !tbaa !134
  %spec.select134.i = call i32 @llvm.usub.sat.i32(i32 %.1110.i.lcssa, i32 1)
  %i.dhe = icmp sgt i32 %.0.i182.i.lcssa1416, 0
  %i.dhf = sext i1 %i.dhe to i32
  %spec.select135.i = add nsw i32 %.0.i182.i.lcssa1416, %i.dhf
  br label %bb.lh

.loopexit1117:                                    ; preds = %bb.gi
  %.0.i.le1206 = call i32 @llvm.abs.i32(i32 %i.bob, i1 true)
  br label %bb.lh

bb.lh:                                            ; preds = %.loopexit1117, %put_bits.exit537
  %indvars.iv8011414 = phi i64 [ %indvars.iv801.lcssa1411, %put_bits.exit537 ], [ %indvars.iv801.ph, %.loopexit1117 ]
  %.0.i1139 = phi i32 [ %.0.i.le, %put_bits.exit537 ], [ %.0.i.le1206, %.loopexit1117 ]
  %.3112.i.ph = phi i32 [ %spec.select134.i, %put_bits.exit537 ], [ %.0109.i664.ph, %.loopexit1117 ]
  %.1.i.ph = phi i32 [ %spec.select135.i, %put_bits.exit537 ], [ %.0.i182.i.peel, %.loopexit1117 ]
  %i.dhg = load ptr, ptr %i.blc, align 8, !tbaa !140
  %i.dhh = zext nneg i32 %.0.i1139 to i64
  %i.dhi = getelementptr inbounds nuw [8 x i8], ptr %i.dhg, i64 %i.dhh
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.bq, ptr noundef %i.dhi, i32 noundef %.1.i.ph, i32 noundef %i.he)
  br label %put_symbol_inline.exit173.i

put_symbol_inline.exit173.i:                      ; preds = %renorm_encoder.exit504, %bb.jq, %renorm_encoder.exit524, %bb.ko, %renorm_encoder.exit529, %bb.kt, %renorm_encoder.exit454, %bb.hl, %renorm_encoder.exit474, %bb.ij, %renorm_encoder.exit479, %bb.io, %bb.lh
  %indvars.iv8011413 = phi i64 [ %indvars.iv801.ph, %renorm_encoder.exit504 ], [ %indvars.iv801.ph, %renorm_encoder.exit454 ], [ %indvars.iv8011414, %bb.lh ], [ %indvars.iv801.ph, %bb.io ], [ %indvars.iv801.ph, %renorm_encoder.exit479 ], [ %indvars.iv801.ph, %bb.ij ], [ %indvars.iv801.ph, %renorm_encoder.exit474 ], [ %indvars.iv801.ph, %bb.hl ], [ %indvars.iv801.ph, %bb.kt ], [ %indvars.iv801.ph, %renorm_encoder.exit529 ], [ %indvars.iv801.ph, %bb.ko ], [ %indvars.iv801.ph, %renorm_encoder.exit524 ], [ %indvars.iv801.ph, %bb.jq ]
  %.4113.i = phi i32 [ %.0109.i664.ph, %renorm_encoder.exit504 ], [ %.0109.i664.ph, %renorm_encoder.exit454 ], [ %.3112.i.ph, %bb.lh ], [ %.0109.i664.ph, %bb.io ], [ %.0109.i664.ph, %renorm_encoder.exit479 ], [ %.0109.i664.ph, %bb.ij ], [ %.0109.i664.ph, %renorm_encoder.exit474 ], [ %.0109.i664.ph, %bb.hl ], [ %.0109.i664.ph, %bb.kt ], [ %.0109.i664.ph, %renorm_encoder.exit529 ], [ %.0109.i664.ph, %bb.ko ], [ %.0109.i664.ph, %renorm_encoder.exit524 ], [ %.0109.i664.ph, %bb.jq ] ; 2 uses
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv8011413, 1 ; 2 uses
  %exitcond805.not = icmp eq i64 %indvars.iv.next802, %wide.trip.count804
  br i1 %exitcond805.not, label %.loopexit.sink.split, label %.outer1116, !llvm.loop !8

put_symbol_inline.exit173.i.thread:               ; preds = %get_context32.exit427
  %i.dhj = add nsw i32 %.0105.i665, 1             ; 2 uses
  %indvars.iv.next8021103 = add nuw nsw i64 %indvars.iv801, 1 ; 2 uses
  %exitcond805.not1104 = icmp eq i64 %indvars.iv.next8021103, %wide.trip.count804
  br i1 %exitcond805.not1104, label %.preheader615, label %.outer1116.peel.newph, !llvm.loop !378

.preheader615:                                    ; preds = %put_symbol_inline.exit173.i.thread, %put_symbol_inline.exit173.i.thread.peel
  %.lcssa1422 = phi i32 [ %i.dhj, %put_symbol_inline.exit173.i.thread ], [ 1, %put_symbol_inline.exit173.i.thread.peel ] ; 3 uses
  %i.dhk = sext i32 %.0109.i664.ph to i64         ; 2 uses
  %i.dhl = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dhk
  %i.dhm = load i8, ptr %i.dhl, align 1, !tbaa !54
  %i.dhn = zext nneg i8 %i.dhm to i32
  %i.dho = shl nuw i32 1, %i.dhn                  ; 2 uses
  %.not126.i673 = icmp slt i32 %.lcssa1422, %i.dho
  br i1 %.not126.i673, label %._crit_edge677, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %.preheader615
  %.pre877 = load i32, ptr %i.bq, align 8, !tbaa !135
  %.pre878 = load i32, ptr %i.bf, align 4, !tbaa !134
  br label %.lr.ph676

.lr.ph676:                                        ; preds = %.lr.ph676.preheader, %put_bits.exit541
  %i.dhp = phi i32 [ %.pre878, %.lr.ph676.preheader ], [ %i.dij, %put_bits.exit541 ] ; 4 uses
  %i.dhq = phi i32 [ %.pre877, %.lr.ph676.preheader ], [ %.026.i.i539, %put_bits.exit541 ] ; 2 uses
  %indvars.iv806 = phi i64 [ %i.dhk, %.lr.ph676.preheader ], [ %indvars.iv.next807, %put_bits.exit541 ]
  %i.dhr = phi i32 [ %i.dho, %.lr.ph676.preheader ], [ %i.din, %put_bits.exit541 ]
  %.4.i675 = phi i32 [ %.lcssa1422, %.lr.ph676.preheader ], [ %i.dhs, %put_bits.exit541 ]
  %i.dhs = sub nsw i32 %.4.i675, %i.dhr           ; 3 uses
  %indvars.iv.next807 = add nsw i64 %indvars.iv806, 1 ; 3 uses
  %i.dht = icmp sgt i32 %i.dhp, 1
  br i1 %i.dht, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %.lr.ph676
  %i.dhu = shl i32 %i.dhq, 1
  %i.dhv = or disjoint i32 %i.dhu, 1
  br label %put_bits.exit541

bb.lj:                                            ; preds = %.lr.ph676
  %i.dhw = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.dhx = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.dhy = ptrtoint ptr %i.dhw to i64
  %i.dhz = ptrtoint ptr %i.dhx to i64
  %i.dia = sub i64 %i.dhy, %i.dhz
  %i.dib = icmp ugt i64 %i.dia, 3
  br i1 %i.dib, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.dic = shl i32 %i.dhq, %i.dhp
  %i.did = icmp eq i32 %i.dhp, 1
  %i.die = zext i1 %i.did to i32
  %i.dif = or i32 %i.dic, %i.die
  %i.dig = call i32 @llvm.bswap.i32(i32 %i.dif)
  store i32 %i.dig, ptr %i.dhx, align 1, !tbaa !54
  %i.dih = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dih, i64 4
  store ptr %i.dii, ptr %i.be, align 8, !tbaa !133
  br label %put_bits.exit541

bb.ll:                                            ; preds = %bb.lj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit541

put_bits.exit541:                                 ; preds = %bb.lk, %bb.ll, %bb.li
  %.sink1289 = phi i32 [ -1, %bb.li ], [ 31, %bb.ll ], [ 31, %bb.lk ]
  %.026.i.i539 = phi i32 [ %i.dhv, %bb.li ], [ 1, %bb.ll ], [ 1, %bb.lk ] ; 2 uses
  %i.dij = add nsw i32 %i.dhp, %.sink1289         ; 2 uses
  store i32 %.026.i.i539, ptr %i.bq, align 8, !tbaa !135
  store i32 %i.dij, ptr %i.bf, align 4, !tbaa !134
  %i.dik = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next807
  %i.dil = load i8, ptr %i.dik, align 1, !tbaa !54
  %i.dim = zext nneg i8 %i.dil to i32
  %i.din = shl nuw i32 1, %i.dim                  ; 2 uses
  %.not126.i = icmp slt i32 %i.dhs, %i.din
  br i1 %.not126.i, label %._crit_edge677.loopexit, label %.lr.ph676, !llvm.loop !9

._crit_edge677.loopexit:                          ; preds = %put_bits.exit541
  %i.dio = trunc nsw i64 %indvars.iv.next807 to i32
  br label %._crit_edge677

._crit_edge677:                                   ; preds = %._crit_edge677.loopexit, %.preheader615
  %.5.i.lcssa = phi i32 [ %.0109.i664.ph, %.preheader615 ], [ %i.dio, %._crit_edge677.loopexit ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.lcssa1422, %.preheader615 ], [ %i.dhs, %._crit_edge677.loopexit ]
  %.not127.i = icmp eq i32 %.4.i.lcssa, 0
  br i1 %.not127.i, label %.loopexit.sink.split, label %bb.lm

bb.lm:                                            ; preds = %._crit_edge677
  %i.dip = load i32, ptr %i.bq, align 8, !tbaa !135 ; 2 uses
  %i.diq = load i32, ptr %i.bf, align 4, !tbaa !134 ; 4 uses
  %i.dir = icmp sgt i32 %i.diq, 1
  br i1 %i.dir, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.dis = shl i32 %i.dip, 1
  %i.dit = or disjoint i32 %i.dis, 1
  br label %put_bits.exit545

bb.lo:                                            ; preds = %bb.lm
  %i.diu = load ptr, ptr %i.bd, align 8, !tbaa !132
  %i.div = load ptr, ptr %i.be, align 8, !tbaa !133 ; 2 uses
  %i.diw = ptrtoint ptr %i.diu to i64
  %i.dix = ptrtoint ptr %i.div to i64
  %i.diy = sub i64 %i.diw, %i.dix
  %i.diz = icmp ugt i64 %i.diy, 3
  br i1 %i.diz, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.dja = shl i32 %i.dip, %i.diq
  %i.djb = icmp eq i32 %i.diq, 1
  %i.djc = zext i1 %i.djb to i32
  %i.djd = or i32 %i.dja, %i.djc
  %i.dje = call i32 @llvm.bswap.i32(i32 %i.djd)
  store i32 %i.dje, ptr %i.div, align 1, !tbaa !54
  %i.djf = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.djg = getelementptr inbounds nuw i8, ptr %i.djf, i64 4
  store ptr %i.djg, ptr %i.be, align 8, !tbaa !133
  br label %put_bits.exit545

bb.lq:                                            ; preds = %bb.lo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit545

put_bits.exit545:                                 ; preds = %bb.lp, %bb.lq, %bb.ln
  %.sink1290 = phi i32 [ -1, %bb.ln ], [ 31, %bb.lq ], [ 31, %bb.lp ]
  %.026.i.i543 = phi i32 [ %i.dit, %bb.ln ], [ 1, %bb.lq ], [ 1, %bb.lp ]
  %i.djh = add nsw i32 %i.diq, %.sink1290
  br label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %put_bits.exit411, %put_bits.exit545
  %.026.i.i543.sink = phi i32 [ %.026.i.i543, %put_bits.exit545 ], [ %.026.i.i409, %put_bits.exit411 ]
  %.sink1291 = phi i32 [ %i.djh, %put_bits.exit545 ], [ %i.bid, %put_bits.exit411 ]
  %.6.i177.sink.ph = phi i32 [ %.5.i.lcssa, %put_bits.exit545 ], [ %.5.i173.lcssa, %put_bits.exit411 ]
  store i32 %.026.i.i543.sink, ptr %i.bq, align 8, !tbaa !135
  store i32 %.sink1291, ptr %i.bf, align 4, !tbaa !134
  br label %.loopexit.sink.split

end_hunk_5
begin_hunk_6_@encode_rgb_frame:bb.a
  store i8 %i.bdp, ptr %i.bdq, align 1, !tbaa !54
  %i.bds = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.bdt = add nsw i32 %i.bds, -1                 ; 2 uses
  store i32 %i.bdt, ptr %i.bm, align 8, !tbaa !64
  %.not.i404 = icmp eq i32 %i.bdt, 0
  br i1 %.not.i404, label %._crit_edge.i405, label %bb.er, !llvm.loop !0

._crit_edge.i405:                                 ; preds = %bb.er, %bb.eq
  %i.bdu = load i32, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.bdv = ashr i32 %i.bdu, 8
  store i32 %i.bdv, ptr %i.bn, align 4, !tbaa !62
  %.pre909 = load i32, ptr %i.bk, align 4, !tbaa !60
  br label %renorm_encoder.exit406

bb.es:                                            ; preds = %bb.ep
  %i.bdw = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.bdx = add nsw i32 %i.bdw, 1
  store i32 %i.bdx, ptr %i.bm, align 8, !tbaa !64
  br label %renorm_encoder.exit406

renorm_encoder.exit406:                           ; preds = %._crit_edge.i405, %bb.es
  %i.bdy = phi i32 [ %i.bcy, %bb.es ], [ %.pre909, %._crit_edge.i405 ]
  %i.bdz = phi i32 [ %i.bda, %bb.es ], [ %i.bdu, %._crit_edge.i405 ]
  %i.bea = shl i32 %i.bdz, 8
  %i.beb = and i32 %i.bea, 65280
  store i32 %i.beb, ptr %i.ax, align 8, !tbaa !61
  %i.bec = shl i32 %i.bdy, 8
  store i32 %i.bec, ptr %i.bk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i215

bb.et:                                            ; preds = %bb.ct
  %i.bed = load i32, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.bee = load i8, ptr %i.sd, align 1, !tbaa !54
  %i.bef = zext i8 %i.bee to i32
  %i.beg = mul nsw i32 %i.bed, %i.bef
  %i.beh = ashr i32 %i.beg, 8                     ; 2 uses
  %i.bei = load i32, ptr %i.ax, align 8, !tbaa !61
  %i.bej = add i32 %i.bei, %i.bed
  %i.bek = sub i32 %i.bej, %i.beh
  store i32 %i.bek, ptr %i.ax, align 8, !tbaa !61
  store i32 %i.beh, ptr %i.bk, align 4, !tbaa !60
  %i.bel = load i8, ptr %i.sd, align 1, !tbaa !54
  %i.bem = zext i8 %i.bel to i64
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bem
  %storemerge.i.i.i286 = load i8, ptr %i.ben, align 1, !tbaa !54
  store i8 %storemerge.i.i.i286, ptr %i.sd, align 1, !tbaa !54
  %i.beo = load i32, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.bep = icmp slt i32 %i.beo, 256
  br i1 %i.bep, label %bb.eu, label %put_symbol_inline.exit173.i215

bb.eu:                                            ; preds = %bb.et
  %i.beq = load i32, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.ber = add nsw i32 %i.beq, -65281             ; 2 uses
  %i.bes = icmp ugt i32 %i.ber, 254
  br i1 %i.bes, label %bb.ev, label %bb.ex

bb.ev:                                            ; preds = %bb.eu
  %i.bet = ashr i32 %i.ber, 31                    ; 2 uses
  %i.beu = load i32, ptr %i.bn, align 4, !tbaa !62
  %i.bev = add nsw i32 %i.bet, 1
  %i.bew = add i32 %i.bev, %i.beu
  %i.bex = trunc i32 %i.bew to i8
  %i.bey = load ptr, ptr %i.az, align 8, !tbaa !63
  store i8 %i.bex, ptr %i.bey, align 1, !tbaa !54
  %i.bez = load i32, ptr %i.bn, align 4, !tbaa !62
  %i.bfa = icmp sgt i32 %i.bez, -1
  %i.bfb = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.bfc = zext i1 %i.bfa to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfb, i64 %i.bfc
  store ptr %i.bfd, ptr %i.az, align 8, !tbaa !63
  %i.bfe = load i32, ptr %i.bm, align 8, !tbaa !64
  %.not16.i407 = icmp eq i32 %i.bfe, 0
  br i1 %.not16.i407, label %._crit_edge.i410, label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %bb.ev
  %i.bff = trunc nsw i32 %i.bet to i8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.lr.ph.i408
  %i.bfg = load ptr, ptr %i.az, align 8, !tbaa !63 ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 1
  store ptr %i.bfh, ptr %i.az, align 8, !tbaa !63
  store i8 %i.bff, ptr %i.bfg, align 1, !tbaa !54
  %i.bfi = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.bfj = add nsw i32 %i.bfi, -1                 ; 2 uses
  store i32 %i.bfj, ptr %i.bm, align 8, !tbaa !64
  %.not.i409 = icmp eq i32 %i.bfj, 0
  br i1 %.not.i409, label %._crit_edge.i410, label %bb.ew, !llvm.loop !0

._crit_edge.i410:                                 ; preds = %bb.ew, %bb.ev
  %i.bfk = load i32, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.bfl = ashr i32 %i.bfk, 8
  store i32 %i.bfl, ptr %i.bn, align 4, !tbaa !62
  %.pre914 = load i32, ptr %i.bk, align 4, !tbaa !60
  br label %renorm_encoder.exit411

bb.ex:                                            ; preds = %bb.eu
  %i.bfm = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.bfn = add nsw i32 %i.bfm, 1
  store i32 %i.bfn, ptr %i.bm, align 8, !tbaa !64
  br label %renorm_encoder.exit411

renorm_encoder.exit411:                           ; preds = %._crit_edge.i410, %bb.ex
  %i.bfo = phi i32 [ %i.beo, %bb.ex ], [ %.pre914, %._crit_edge.i410 ]
  %i.bfp = phi i32 [ %i.beq, %bb.ex ], [ %i.bfk, %._crit_edge.i410 ]
  %i.bfq = shl i32 %i.bfp, 8
  %i.bfr = and i32 %i.bfq, 65280
  store i32 %i.bfr, ptr %i.ax, align 8, !tbaa !61
  %i.bfs = shl i32 %i.bfo, 8
  store i32 %i.bfs, ptr %i.bk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i215

.preheader:                                       ; preds = %get_context.exit, %bb.aj
  %.lcssa1402 = phi i32 [ %i.oh, %bb.aj ], [ %i.rm, %get_context.exit ]
  %.lcssa1398 = phi i32 [ %i.ou, %bb.aj ], [ %i.rz, %get_context.exit ]
  %indvars.iv848.lcssa1392 = phi i64 [ %indvars.iv848.ph, %bb.aj ], [ %indvars.iv848, %get_context.exit ]
  %.0105.i183731.lcssa1386 = phi i32 [ 0, %bb.aj ], [ %.0105.i183731, %get_context.exit ] ; 3 uses
  %.0.i193.le = call i32 @llvm.abs.i32(i32 %.lcssa1402, i1 true)
  %i.bft = ashr exact i32 %.lcssa1398, 23         ; 2 uses
  %i.bfu = sext i32 %.0109.i182730.ph to i64      ; 2 uses
  %i.bfv = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.bfu
  %i.bfw = load i8, ptr %i.bfv, align 1, !tbaa !54
  %i.bfx = zext i8 %i.bfw to i32                  ; 2 uses
  %i.bfy = shl nuw i32 1, %i.bfx                  ; 2 uses
  %.not130.i293721 = icmp slt i32 %.0105.i183731.lcssa1386, %i.bfy
  %.pre918 = load i32, ptr %i.bp, align 8, !tbaa !135 ; 2 uses
  %.pre920 = load i32, ptr %i.be, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i293721, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %.preheader, %put_bits.exit
  %i.bfz = phi i32 [ %i.bgt, %put_bits.exit ], [ %.pre920, %.preheader ] ; 4 uses
  %i.bga = phi i32 [ %.pre917, %put_bits.exit ], [ %.pre918, %.preheader ] ; 2 uses
  %indvars.iv845 = phi i64 [ %indvars.iv.next846, %put_bits.exit ], [ %i.bfu, %.preheader ]
  %i.bgb = phi i32 [ %i.bgx, %put_bits.exit ], [ %i.bfy, %.preheader ]
  %.1106.i292723 = phi i32 [ %i.bgc, %put_bits.exit ], [ %.0105.i183731.lcssa1386, %.preheader ]
  %i.bgc = sub nsw i32 %.1106.i292723, %i.bgb     ; 3 uses
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, 1 ; 3 uses
  %i.bgd = icmp sgt i32 %i.bfz, 1
  br i1 %i.bgd, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.lr.ph724
  %i.bge = shl i32 %i.bga, 1
  %i.bgf = or disjoint i32 %i.bge, 1
  br label %put_bits.exit

bb.ez:                                            ; preds = %.lr.ph724
  %i.bgg = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.bgh = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.bgi = ptrtoint ptr %i.bgg to i64
  %i.bgj = ptrtoint ptr %i.bgh to i64
  %i.bgk = sub i64 %i.bgi, %i.bgj
  %i.bgl = icmp ugt i64 %i.bgk, 3
  br i1 %i.bgl, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.bgm = shl i32 %i.bga, %i.bfz
  %i.bgn = icmp eq i32 %i.bfz, 1
  %i.bgo = zext i1 %i.bgn to i32
  %i.bgp = or i32 %i.bgm, %i.bgo
  %i.bgq = call i32 @llvm.bswap.i32(i32 %i.bgp)
  store i32 %i.bgq, ptr %i.bgh, align 1, !tbaa !54
  %i.bgr = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgr, i64 4
  store ptr %i.bgs, ptr %i.bd, align 8, !tbaa !133
  br label %put_bits.exit

bb.fb:                                            ; preds = %bb.ez
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.fa, %bb.fb, %bb.ey
  %.sink1268 = phi i32 [ -1, %bb.ey ], [ 31, %bb.fb ], [ 31, %bb.fa ]
  %.pre917 = phi i32 [ %i.bgf, %bb.ey ], [ 1, %bb.fb ], [ 1, %bb.fa ] ; 3 uses
  %i.bgt = add nsw i32 %i.bfz, %.sink1268         ; 3 uses
  store i32 %.pre917, ptr %i.bp, align 8, !tbaa !135
  store i32 %i.bgt, ptr %i.be, align 4, !tbaa !134
  %i.bgu = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next846
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !54
  %i.bgw = zext i8 %i.bgv to i32                  ; 2 uses
  %i.bgx = shl nuw i32 1, %i.bgw                  ; 2 uses
  %.not130.i293 = icmp slt i32 %i.bgc, %i.bgx
  br i1 %.not130.i293, label %._crit_edge725.loopexit, label %.lr.ph724, !llvm.loop !12

._crit_edge725.loopexit:                          ; preds = %put_bits.exit
  %i.bgy = trunc nsw i64 %indvars.iv.next846 to i32
  br label %._crit_edge725

._crit_edge725:                                   ; preds = %._crit_edge725.loopexit, %.preheader
  %i.bgz = phi i32 [ %.pre920, %.preheader ], [ %i.bgt, %._crit_edge725.loopexit ] ; 5 uses
  %i.bha = phi i32 [ %.pre918, %.preheader ], [ %.pre917, %._crit_edge725.loopexit ] ; 2 uses
  %.1110.i291.lcssa = phi i32 [ %.0109.i182730.ph, %.preheader ], [ %i.bgy, %._crit_edge725.loopexit ]
  %.1106.i292.lcssa = phi i32 [ %.0105.i183731.lcssa1386, %.preheader ], [ %i.bgc, %._crit_edge725.loopexit ] ; 3 uses
  %.lcssa633 = phi i32 [ %i.bfx, %.preheader ], [ %i.bgw, %._crit_edge725.loopexit ] ; 2 uses
  %i.bhb = add nuw nsw i32 %.lcssa633, 1          ; 4 uses
  %i.bhc = icmp slt i32 %i.bhb, %i.bgz
  br i1 %i.bhc, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %._crit_edge725
  %i.bhd = shl i32 %i.bha, %i.bhb
  %i.bhe = or i32 %i.bhd, %.1106.i292.lcssa
  %i.bhf = sub nsw i32 %i.bgz, %i.bhb
  br label %put_bits.exit416

bb.fd:                                            ; preds = %._crit_edge725
  %i.bhg = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.bhh = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.bhi = ptrtoint ptr %i.bhg to i64
  %i.bhj = ptrtoint ptr %i.bhh to i64
  %i.bhk = sub i64 %i.bhi, %i.bhj
  %i.bhl = icmp ugt i64 %i.bhk, 3
  br i1 %i.bhl, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.bhm = shl i32 %i.bha, %i.bgz
  %i.bhn = sub nsw i32 %i.bhb, %i.bgz
  %i.bho = lshr i32 %.1106.i292.lcssa, %i.bhn
  %i.bhp = or i32 %i.bho, %i.bhm
  %i.bhq = call i32 @llvm.bswap.i32(i32 %i.bhp)
  store i32 %i.bhq, ptr %i.bhh, align 1, !tbaa !54
  %i.bhr = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 4
  store ptr %i.bhs, ptr %i.bd, align 8, !tbaa !133
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %reass.sub761 = sub i32 %i.bgz, %.lcssa633
  %i.bht = add i32 %reass.sub761, 31
  br label %put_bits.exit416

put_bits.exit416:                                 ; preds = %bb.fc, %bb.fg
  %.026.i.i414 = phi i32 [ %i.bhe, %bb.fc ], [ %.1106.i292.lcssa, %bb.fg ]
  %.0.i.i415 = phi i32 [ %i.bhf, %bb.fc ], [ %i.bht, %bb.fg ]
  store i32 %.026.i.i414, ptr %i.bp, align 8, !tbaa !135
  store i32 %.0.i.i415, ptr %i.be, align 4, !tbaa !134
  %spec.select134.i295 = call i32 @llvm.usub.sat.i32(i32 %.1110.i291.lcssa, i32 1)
  %i.bhu = icmp sgt i32 %i.bft, 0
  %i.bhv = sext i1 %i.bhu to i32
  %spec.select135.i296 = add nsw i32 %i.bft, %i.bhv
  br label %bb.fh

.loopexit1129:                                    ; preds = %bb.ai
  %.0.i193.le1232 = call i32 @llvm.abs.i32(i32 %i.oh, i1 true)
  %i.bhw = ashr exact i32 %i.ou, 23
  br label %bb.fh

bb.fh:                                            ; preds = %.loopexit1129, %put_bits.exit416
  %indvars.iv8481395 = phi i64 [ %indvars.iv848.lcssa1392, %put_bits.exit416 ], [ %indvars.iv848.ph, %.loopexit1129 ]
  %.0.i1931195 = phi i32 [ %.0.i193.le, %put_bits.exit416 ], [ %.0.i193.le1232, %.loopexit1129 ]
  %.3112.i297.ph = phi i32 [ %spec.select134.i295, %put_bits.exit416 ], [ %.0109.i182730.ph, %.loopexit1129 ]
  %.1.i299.ph = phi i32 [ %spec.select135.i296, %put_bits.exit416 ], [ %i.bhw, %.loopexit1129 ]
  %i.bhx = load ptr, ptr %i.lc, align 8, !tbaa !140
  %i.bhy = zext nneg i32 %.0.i1931195 to i64
  %i.bhz = getelementptr inbounds nuw [8 x i8], ptr %i.bhx, i64 %i.bhy
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.bp, ptr noundef %i.bhz, i32 noundef %.1.i299.ph, i32 noundef 9)
  br label %put_symbol_inline.exit173.i215

put_symbol_inline.exit173.i215:                   ; preds = %renorm_encoder.exit386, %bb.dq, %renorm_encoder.exit406, %bb.eo, %renorm_encoder.exit411, %bb.et, %renorm_encoder.exit336, %bb.bl, %renorm_encoder.exit356, %bb.cj, %renorm_encoder.exit361, %bb.co, %bb.fh
  %indvars.iv8481394 = phi i64 [ %indvars.iv848.ph, %renorm_encoder.exit386 ], [ %indvars.iv848.ph, %renorm_encoder.exit336 ], [ %indvars.iv8481395, %bb.fh ], [ %indvars.iv848.ph, %bb.co ], [ %indvars.iv848.ph, %renorm_encoder.exit361 ], [ %indvars.iv848.ph, %bb.cj ], [ %indvars.iv848.ph, %renorm_encoder.exit356 ], [ %indvars.iv848.ph, %bb.bl ], [ %indvars.iv848.ph, %bb.et ], [ %indvars.iv848.ph, %renorm_encoder.exit411 ], [ %indvars.iv848.ph, %bb.eo ], [ %indvars.iv848.ph, %renorm_encoder.exit406 ], [ %indvars.iv848.ph, %bb.dq ]
  %.4113.i216 = phi i32 [ %.0109.i182730.ph, %renorm_encoder.exit386 ], [ %.0109.i182730.ph, %renorm_encoder.exit336 ], [ %.3112.i297.ph, %bb.fh ], [ %.0109.i182730.ph, %bb.co ], [ %.0109.i182730.ph, %renorm_encoder.exit361 ], [ %.0109.i182730.ph, %bb.cj ], [ %.0109.i182730.ph, %renorm_encoder.exit356 ], [ %.0109.i182730.ph, %bb.bl ], [ %.0109.i182730.ph, %bb.et ], [ %.0109.i182730.ph, %renorm_encoder.exit411 ], [ %.0109.i182730.ph, %bb.eo ], [ %.0109.i182730.ph, %renorm_encoder.exit406 ], [ %.0109.i182730.ph, %bb.dq ] ; 2 uses
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv8481394, 1 ; 2 uses
  %exitcond852.not = icmp eq i64 %indvars.iv.next849, %wide.trip.count851
  br i1 %exitcond852.not, label %.loopexit.sink.split, label %.outer, !llvm.loop !13

put_symbol_inline.exit173.i215.thread:            ; preds = %get_context.exit
  %i.bia = add nsw i32 %.0105.i183731, 1          ; 2 uses
  %indvars.iv.next8491101 = add nuw nsw i64 %indvars.iv848, 1 ; 2 uses
  %exitcond852.not1102 = icmp eq i64 %indvars.iv.next8491101, %wide.trip.count851
  br i1 %exitcond852.not1102, label %.preheader625, label %.outer.peel.newph, !llvm.loop !382

.preheader625:                                    ; preds = %put_symbol_inline.exit173.i215.thread, %put_symbol_inline.exit173.i215.thread.peel
  %.lcssa1404 = phi i32 [ %i.bia, %put_symbol_inline.exit173.i215.thread ], [ 1, %put_symbol_inline.exit173.i215.thread.peel ] ; 3 uses
  %i.bib = sext i32 %.0109.i182730.ph to i64      ; 2 uses
  %i.bic = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.bib
  %i.bid = load i8, ptr %i.bic, align 1, !tbaa !54
  %i.bie = zext nneg i8 %i.bid to i32
  %i.bif = shl nuw i32 1, %i.bie                  ; 2 uses
  %.not126.i188739 = icmp slt i32 %.lcssa1404, %i.bif
  br i1 %.not126.i188739, label %._crit_edge743, label %.lr.ph742.preheader

.lr.ph742.preheader:                              ; preds = %.preheader625
  %.pre921 = load i32, ptr %i.bp, align 8, !tbaa !135
  %.pre922 = load i32, ptr %i.be, align 4, !tbaa !134
  br label %.lr.ph742

.lr.ph742:                                        ; preds = %.lr.ph742.preheader, %put_bits.exit420
  %i.big = phi i32 [ %.pre922, %.lr.ph742.preheader ], [ %i.bja, %put_bits.exit420 ] ; 4 uses
  %i.bih = phi i32 [ %.pre921, %.lr.ph742.preheader ], [ %.026.i.i418, %put_bits.exit420 ] ; 2 uses
  %indvars.iv853 = phi i64 [ %i.bib, %.lr.ph742.preheader ], [ %indvars.iv.next854, %put_bits.exit420 ]
  %i.bii = phi i32 [ %i.bif, %.lr.ph742.preheader ], [ %i.bje, %put_bits.exit420 ]
  %.4.i187741 = phi i32 [ %.lcssa1404, %.lr.ph742.preheader ], [ %i.bij, %put_bits.exit420 ]
  %i.bij = sub nsw i32 %.4.i187741, %i.bii        ; 3 uses
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, 1 ; 3 uses
  %i.bik = icmp sgt i32 %i.big, 1
  br i1 %i.bik, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %.lr.ph742
  %i.bil = shl i32 %i.bih, 1
  %i.bim = or disjoint i32 %i.bil, 1
  br label %put_bits.exit420

bb.fj:                                            ; preds = %.lr.ph742
  %i.bin = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.bio = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.bip = ptrtoint ptr %i.bin to i64
  %i.biq = ptrtoint ptr %i.bio to i64
  %i.bir = sub i64 %i.bip, %i.biq
  %i.bis = icmp ugt i64 %i.bir, 3
  br i1 %i.bis, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.bit = shl i32 %i.bih, %i.big
  %i.biu = icmp eq i32 %i.big, 1
  %i.biv = zext i1 %i.biu to i32
  %i.biw = or i32 %i.bit, %i.biv
  %i.bix = call i32 @llvm.bswap.i32(i32 %i.biw)
  store i32 %i.bix, ptr %i.bio, align 1, !tbaa !54
  %i.biy = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biy, i64 4
  store ptr %i.biz, ptr %i.bd, align 8, !tbaa !133
  br label %put_bits.exit420

bb.fl:                                            ; preds = %bb.fj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit420

put_bits.exit420:                                 ; preds = %bb.fk, %bb.fl, %bb.fi
  %.sink1269 = phi i32 [ -1, %bb.fi ], [ 31, %bb.fl ], [ 31, %bb.fk ]
  %.026.i.i418 = phi i32 [ %i.bim, %bb.fi ], [ 1, %bb.fl ], [ 1, %bb.fk ] ; 2 uses
  %i.bja = add nsw i32 %i.big, %.sink1269         ; 2 uses
  store i32 %.026.i.i418, ptr %i.bp, align 8, !tbaa !135
  store i32 %i.bja, ptr %i.be, align 4, !tbaa !134
  %i.bjb = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next854
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !54
  %i.bjd = zext nneg i8 %i.bjc to i32
  %i.bje = shl nuw i32 1, %i.bjd                  ; 2 uses
  %.not126.i188 = icmp slt i32 %i.bij, %i.bje
  br i1 %.not126.i188, label %._crit_edge743.loopexit, label %.lr.ph742, !llvm.loop !14

._crit_edge743.loopexit:                          ; preds = %put_bits.exit420
  %i.bjf = trunc nsw i64 %indvars.iv.next854 to i32
  br label %._crit_edge743

._crit_edge743:                                   ; preds = %._crit_edge743.loopexit, %.preheader625
  %.5.i186.lcssa = phi i32 [ %.0109.i182730.ph, %.preheader625 ], [ %i.bjf, %._crit_edge743.loopexit ] ; 2 uses
  %.4.i187.lcssa = phi i32 [ %.lcssa1404, %.preheader625 ], [ %i.bij, %._crit_edge743.loopexit ]
  %.not127.i189 = icmp eq i32 %.4.i187.lcssa, 0
  br i1 %.not127.i189, label %.loopexit.sink.split, label %bb.fm

bb.fm:                                            ; preds = %._crit_edge743
  %i.bjg = load i32, ptr %i.bp, align 8, !tbaa !135 ; 2 uses
  %i.bjh = load i32, ptr %i.be, align 4, !tbaa !134 ; 4 uses
  %i.bji = icmp sgt i32 %i.bjh, 1
  br i1 %i.bji, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.bjj = shl i32 %i.bjg, 1
  %i.bjk = or disjoint i32 %i.bjj, 1
  br label %put_bits.exit424

bb.fo:                                            ; preds = %bb.fm
  %i.bjl = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.bjm = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.bjn = ptrtoint ptr %i.bjl to i64
  %i.bjo = ptrtoint ptr %i.bjm to i64
  %i.bjp = sub i64 %i.bjn, %i.bjo
  %i.bjq = icmp ugt i64 %i.bjp, 3
  br i1 %i.bjq, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.bjr = shl i32 %i.bjg, %i.bjh
  %i.bjs = icmp eq i32 %i.bjh, 1
  %i.bjt = zext i1 %i.bjs to i32
  %i.bju = or i32 %i.bjr, %i.bjt
  %i.bjv = call i32 @llvm.bswap.i32(i32 %i.bju)
  store i32 %i.bjv, ptr %i.bjm, align 1, !tbaa !54
  %i.bjw = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 4
  store ptr %i.bjx, ptr %i.bd, align 8, !tbaa !133
  br label %put_bits.exit424

bb.fq:                                            ; preds = %bb.fo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit424

put_bits.exit424:                                 ; preds = %bb.fp, %bb.fq, %bb.fn
  %.sink1270 = phi i32 [ -1, %bb.fn ], [ 31, %bb.fq ], [ 31, %bb.fp ]
  %.026.i.i422 = phi i32 [ %i.bjk, %bb.fn ], [ 1, %bb.fq ], [ 1, %bb.fp ]
  %i.bjy = add nsw i32 %i.bjh, %.sink1270
  br label %.loopexit.sink.split.sink.split

bb.fr:                                            ; preds = %.lr.ph750
  %i.bjz = load i32, ptr %i.ar, align 4, !tbaa !124
  %i.bka = icmp eq i32 %i.bjz, 1
  br i1 %i.bka, label %bb.fs, label %bb.gc

bb.fs:                                            ; preds = %bb.fr
  br i1 %.not.i, label %bb.ft, label %bb.fu
end_hunk_6
begin_hunk_7_@encode_rgb_frame:bb.a
  store ptr %i.dfu, ptr %i.az, align 8, !tbaa !63
  store i8 %i.dfs, ptr %i.dft, align 1, !tbaa !54
  %i.dfv = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.dfw = add nsw i32 %i.dfv, -1                 ; 2 uses
  store i32 %i.dfw, ptr %i.bm, align 8, !tbaa !64
  %.not.i535 = icmp eq i32 %i.dfw, 0
  br i1 %.not.i535, label %._crit_edge.i536, label %bb.ks, !llvm.loop !0

._crit_edge.i536:                                 ; preds = %bb.ks, %bb.kr
  %i.dfx = load i32, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.dfy = ashr i32 %i.dfx, 8
  store i32 %i.dfy, ptr %i.bn, align 4, !tbaa !62
  %.pre880 = load i32, ptr %i.bk, align 4, !tbaa !60
  br label %renorm_encoder.exit537

bb.kt:                                            ; preds = %bb.kq
  %i.dfz = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.dga = add nsw i32 %i.dfz, 1
  store i32 %i.dga, ptr %i.bm, align 8, !tbaa !64
  br label %renorm_encoder.exit537

renorm_encoder.exit537:                           ; preds = %._crit_edge.i536, %bb.kt
  %i.dgb = phi i32 [ %i.dfb, %bb.kt ], [ %.pre880, %._crit_edge.i536 ]
  %i.dgc = phi i32 [ %i.dfd, %bb.kt ], [ %i.dfx, %._crit_edge.i536 ]
  %i.dgd = shl i32 %i.dgc, 8
  %i.dge = and i32 %i.dgd, 65280
  store i32 %i.dge, ptr %i.ax, align 8, !tbaa !61
  %i.dgf = shl i32 %i.dgb, 8
  store i32 %i.dgf, ptr %i.bk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i

bb.ku:                                            ; preds = %bb.iu
  %i.dgg = load i32, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.dgh = load i8, ptr %i.buc, align 1, !tbaa !54
  %i.dgi = zext i8 %i.dgh to i32
  %i.dgj = mul nsw i32 %i.dgg, %i.dgi
  %i.dgk = ashr i32 %i.dgj, 8                     ; 2 uses
  %i.dgl = load i32, ptr %i.ax, align 8, !tbaa !61
  %i.dgm = add i32 %i.dgl, %i.dgg
  %i.dgn = sub i32 %i.dgm, %i.dgk
  store i32 %i.dgn, ptr %i.ax, align 8, !tbaa !61
  store i32 %i.dgk, ptr %i.bk, align 4, !tbaa !60
  %i.dgo = load i8, ptr %i.buc, align 1, !tbaa !54
  %i.dgp = zext i8 %i.dgo to i64
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.dgp
  %storemerge.i.i.i = load i8, ptr %i.dgq, align 1, !tbaa !54
  store i8 %storemerge.i.i.i, ptr %i.buc, align 1, !tbaa !54
  %i.dgr = load i32, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.dgs = icmp slt i32 %i.dgr, 256
  br i1 %i.dgs, label %bb.kv, label %put_symbol_inline.exit173.i

bb.kv:                                            ; preds = %bb.ku
  %i.dgt = load i32, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.dgu = add nsw i32 %i.dgt, -65281             ; 2 uses
  %i.dgv = icmp ugt i32 %i.dgu, 254
  br i1 %i.dgv, label %bb.kw, label %bb.ky

bb.kw:                                            ; preds = %bb.kv
  %i.dgw = ashr i32 %i.dgu, 31                    ; 2 uses
  %i.dgx = load i32, ptr %i.bn, align 4, !tbaa !62
  %i.dgy = add nsw i32 %i.dgw, 1
  %i.dgz = add i32 %i.dgy, %i.dgx
  %i.dha = trunc i32 %i.dgz to i8
  %i.dhb = load ptr, ptr %i.az, align 8, !tbaa !63
  store i8 %i.dha, ptr %i.dhb, align 1, !tbaa !54
  %i.dhc = load i32, ptr %i.bn, align 4, !tbaa !62
  %i.dhd = icmp sgt i32 %i.dhc, -1
  %i.dhe = load ptr, ptr %i.az, align 8, !tbaa !63
  %i.dhf = zext i1 %i.dhd to i64
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dhe, i64 %i.dhf
  store ptr %i.dhg, ptr %i.az, align 8, !tbaa !63
  %i.dhh = load i32, ptr %i.bm, align 8, !tbaa !64
  %.not16.i538 = icmp eq i32 %i.dhh, 0
  br i1 %.not16.i538, label %._crit_edge.i541, label %.lr.ph.i539

.lr.ph.i539:                                      ; preds = %bb.kw
  %i.dhi = trunc nsw i32 %i.dgw to i8
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kx, %.lr.ph.i539
  %i.dhj = load ptr, ptr %i.az, align 8, !tbaa !63 ; 2 uses
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 1
  store ptr %i.dhk, ptr %i.az, align 8, !tbaa !63
  store i8 %i.dhi, ptr %i.dhj, align 1, !tbaa !54
  %i.dhl = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.dhm = add nsw i32 %i.dhl, -1                 ; 2 uses
  store i32 %i.dhm, ptr %i.bm, align 8, !tbaa !64
  %.not.i540 = icmp eq i32 %i.dhm, 0
  br i1 %.not.i540, label %._crit_edge.i541, label %bb.kx, !llvm.loop !0

._crit_edge.i541:                                 ; preds = %bb.kx, %bb.kw
  %i.dhn = load i32, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %i.dho = ashr i32 %i.dhn, 8
  store i32 %i.dho, ptr %i.bn, align 4, !tbaa !62
  %.pre885 = load i32, ptr %i.bk, align 4, !tbaa !60
  br label %renorm_encoder.exit542

bb.ky:                                            ; preds = %bb.kv
  %i.dhp = load i32, ptr %i.bm, align 8, !tbaa !64
  %i.dhq = add nsw i32 %i.dhp, 1
  store i32 %i.dhq, ptr %i.bm, align 8, !tbaa !64
  br label %renorm_encoder.exit542

renorm_encoder.exit542:                           ; preds = %._crit_edge.i541, %bb.ky
  %i.dhr = phi i32 [ %i.dgr, %bb.ky ], [ %.pre885, %._crit_edge.i541 ]
  %i.dhs = phi i32 [ %i.dgt, %bb.ky ], [ %i.dhn, %._crit_edge.i541 ]
  %i.dht = shl i32 %i.dhs, 8
  %i.dhu = and i32 %i.dht, 65280
  store i32 %i.dhu, ptr %i.ax, align 8, !tbaa !61
  %i.dhv = shl i32 %i.dhr, 8
  store i32 %i.dhv, ptr %i.bk, align 4, !tbaa !60
  br label %put_symbol_inline.exit173.i

.preheader619:                                    ; preds = %get_context.exit440, %bb.gk
  %.lcssa1435 = phi i32 [ %i.bqd, %bb.gk ], [ %i.btk, %get_context.exit440 ]
  %.0.i306.lcssa1431 = phi i32 [ %.0.i306.peel, %bb.gk ], [ %.0.i306, %get_context.exit440 ] ; 2 uses
  %indvars.iv814.lcssa1426 = phi i64 [ %indvars.iv814.ph, %bb.gk ], [ %indvars.iv814, %get_context.exit440 ]
  %.0105.i678.lcssa1420 = phi i32 [ 0, %bb.gk ], [ %.0105.i678, %get_context.exit440 ] ; 3 uses
  %.0.i.le = call i32 @llvm.abs.i32(i32 %.lcssa1435, i1 true)
  %i.dhw = sext i32 %.0109.i677.ph to i64         ; 2 uses
  %i.dhx = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dhw
  %i.dhy = load i8, ptr %i.dhx, align 1, !tbaa !54
  %i.dhz = zext i8 %i.dhy to i32                  ; 2 uses
  %i.dia = shl nuw i32 1, %i.dhz                  ; 2 uses
  %.not130.i668 = icmp slt i32 %.0105.i678.lcssa1420, %i.dia
  %.pre889 = load i32, ptr %i.bp, align 8, !tbaa !135 ; 2 uses
  %.pre891 = load i32, ptr %i.be, align 4, !tbaa !134 ; 2 uses
  br i1 %.not130.i668, label %._crit_edge672, label %.lr.ph671

.lr.ph671:                                        ; preds = %.preheader619, %put_bits.exit546
  %i.dib = phi i32 [ %i.div, %put_bits.exit546 ], [ %.pre891, %.preheader619 ] ; 4 uses
  %i.dic = phi i32 [ %.pre888, %put_bits.exit546 ], [ %.pre889, %.preheader619 ] ; 2 uses
  %indvars.iv811 = phi i64 [ %indvars.iv.next812, %put_bits.exit546 ], [ %i.dhw, %.preheader619 ]
  %i.did = phi i32 [ %i.diz, %put_bits.exit546 ], [ %i.dia, %.preheader619 ]
  %.1106.i670 = phi i32 [ %i.die, %put_bits.exit546 ], [ %.0105.i678.lcssa1420, %.preheader619 ]
  %i.die = sub nsw i32 %.1106.i670, %i.did        ; 3 uses
  %indvars.iv.next812 = add nsw i64 %indvars.iv811, 1 ; 3 uses
  %i.dif = icmp sgt i32 %i.dib, 1
  br i1 %i.dif, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %.lr.ph671
  %i.dig = shl i32 %i.dic, 1
  %i.dih = or disjoint i32 %i.dig, 1
  br label %put_bits.exit546

bb.la:                                            ; preds = %.lr.ph671
  %i.dii = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.dij = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.dik = ptrtoint ptr %i.dii to i64
  %i.dil = ptrtoint ptr %i.dij to i64
  %i.dim = sub i64 %i.dik, %i.dil
  %i.din = icmp ugt i64 %i.dim, 3
  br i1 %i.din, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.dio = shl i32 %i.dic, %i.dib
  %i.dip = icmp eq i32 %i.dib, 1
  %i.diq = zext i1 %i.dip to i32
  %i.dir = or i32 %i.dio, %i.diq
  %i.dis = call i32 @llvm.bswap.i32(i32 %i.dir)
  store i32 %i.dis, ptr %i.dij, align 1, !tbaa !54
  %i.dit = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dit, i64 4
  store ptr %i.diu, ptr %i.bd, align 8, !tbaa !133
  br label %put_bits.exit546

bb.lc:                                            ; preds = %bb.la
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit546

put_bits.exit546:                                 ; preds = %bb.lb, %bb.lc, %bb.kz
  %.sink1303 = phi i32 [ -1, %bb.kz ], [ 31, %bb.lc ], [ 31, %bb.lb ]
  %.pre888 = phi i32 [ %i.dih, %bb.kz ], [ 1, %bb.lc ], [ 1, %bb.lb ] ; 3 uses
  %i.div = add nsw i32 %i.dib, %.sink1303         ; 3 uses
  store i32 %.pre888, ptr %i.bp, align 8, !tbaa !135
  store i32 %i.div, ptr %i.be, align 4, !tbaa !134
  %i.diw = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next812
  %i.dix = load i8, ptr %i.diw, align 1, !tbaa !54
  %i.diy = zext i8 %i.dix to i32                  ; 2 uses
  %i.diz = shl nuw i32 1, %i.diy                  ; 2 uses
  %.not130.i = icmp slt i32 %i.die, %i.diz
  br i1 %.not130.i, label %._crit_edge672.loopexit, label %.lr.ph671, !llvm.loop !12

._crit_edge672.loopexit:                          ; preds = %put_bits.exit546
  %i.dja = trunc nsw i64 %indvars.iv.next812 to i32
  br label %._crit_edge672

._crit_edge672:                                   ; preds = %._crit_edge672.loopexit, %.preheader619
  %i.djb = phi i32 [ %.pre891, %.preheader619 ], [ %i.div, %._crit_edge672.loopexit ] ; 5 uses
  %i.djc = phi i32 [ %.pre889, %.preheader619 ], [ %.pre888, %._crit_edge672.loopexit ] ; 2 uses
  %.1110.i.lcssa = phi i32 [ %.0109.i677.ph, %.preheader619 ], [ %i.dja, %._crit_edge672.loopexit ]
  %.1106.i.lcssa = phi i32 [ %.0105.i678.lcssa1420, %.preheader619 ], [ %i.die, %._crit_edge672.loopexit ] ; 3 uses
  %.lcssa = phi i32 [ %i.dhz, %.preheader619 ], [ %i.diy, %._crit_edge672.loopexit ] ; 2 uses
  %i.djd = add nuw nsw i32 %.lcssa, 1             ; 4 uses
  %i.dje = icmp slt i32 %i.djd, %i.djb
  br i1 %i.dje, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %._crit_edge672
  %i.djf = shl i32 %i.djc, %i.djd
  %i.djg = or i32 %i.djf, %.1106.i.lcssa
  %i.djh = sub nsw i32 %i.djb, %i.djd
  br label %put_bits.exit550

bb.le:                                            ; preds = %._crit_edge672
  %i.dji = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.djj = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.djk = ptrtoint ptr %i.dji to i64
  %i.djl = ptrtoint ptr %i.djj to i64
  %i.djm = sub i64 %i.djk, %i.djl
  %i.djn = icmp ugt i64 %i.djm, 3
  br i1 %i.djn, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.djo = shl i32 %i.djc, %i.djb
  %i.djp = sub nsw i32 %i.djd, %i.djb
  %i.djq = lshr i32 %.1106.i.lcssa, %i.djp
  %i.djr = or i32 %i.djq, %i.djo
  %i.djs = call i32 @llvm.bswap.i32(i32 %i.djr)
  store i32 %i.djs, ptr %i.djj, align 1, !tbaa !54
  %i.djt = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djt, i64 4
  store ptr %i.dju, ptr %i.bd, align 8, !tbaa !133
  br label %bb.lh

bb.lg:                                            ; preds = %bb.le
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %reass.sub = sub i32 %i.djb, %.lcssa
  %i.djv = add i32 %reass.sub, 31
  br label %put_bits.exit550

put_bits.exit550:                                 ; preds = %bb.ld, %bb.lh
  %.026.i.i548 = phi i32 [ %i.djg, %bb.ld ], [ %.1106.i.lcssa, %bb.lh ]
  %.0.i.i549 = phi i32 [ %i.djh, %bb.ld ], [ %i.djv, %bb.lh ]
  store i32 %.026.i.i548, ptr %i.bp, align 8, !tbaa !135
  store i32 %.0.i.i549, ptr %i.be, align 4, !tbaa !134
  %spec.select134.i = call i32 @llvm.usub.sat.i32(i32 %.1110.i.lcssa, i32 1)
  %i.djw = icmp sgt i32 %.0.i306.lcssa1431, 0
  %i.djx = sext i1 %i.djw to i32
  %spec.select135.i = add nsw i32 %.0.i306.lcssa1431, %i.djx
  br label %bb.li

.loopexit1132:                                    ; preds = %bb.gj
  %.0.i.le1221 = call i32 @llvm.abs.i32(i32 %i.bqd, i1 true)
  br label %bb.li

bb.li:                                            ; preds = %.loopexit1132, %put_bits.exit550
  %indvars.iv8141429 = phi i64 [ %indvars.iv814.lcssa1426, %put_bits.exit550 ], [ %indvars.iv814.ph, %.loopexit1132 ]
  %.0.i1154 = phi i32 [ %.0.i.le, %put_bits.exit550 ], [ %.0.i.le1221, %.loopexit1132 ]
  %.3112.i.ph = phi i32 [ %spec.select134.i, %put_bits.exit550 ], [ %.0109.i677.ph, %.loopexit1132 ]
  %.1.i.ph = phi i32 [ %spec.select135.i, %put_bits.exit550 ], [ %.0.i306.peel, %.loopexit1132 ]
  %i.djy = load ptr, ptr %i.bmy, align 8, !tbaa !140
  %i.djz = zext nneg i32 %.0.i1154 to i64
  %i.dka = getelementptr inbounds nuw [8 x i8], ptr %i.djy, i64 %i.djz
  call fastcc void @put_vlc_symbol(ptr noundef nonnull %i.bp, ptr noundef %i.dka, i32 noundef %.1.i.ph, i32 noundef %i.ic)
  br label %put_symbol_inline.exit173.i

put_symbol_inline.exit173.i:                      ; preds = %renorm_encoder.exit517, %bb.jr, %renorm_encoder.exit537, %bb.kp, %renorm_encoder.exit542, %bb.ku, %renorm_encoder.exit467, %bb.hm, %renorm_encoder.exit487, %bb.ik, %renorm_encoder.exit492, %bb.ip, %bb.li
  %indvars.iv8141428 = phi i64 [ %indvars.iv814.ph, %renorm_encoder.exit517 ], [ %indvars.iv814.ph, %renorm_encoder.exit467 ], [ %indvars.iv8141429, %bb.li ], [ %indvars.iv814.ph, %bb.ip ], [ %indvars.iv814.ph, %renorm_encoder.exit492 ], [ %indvars.iv814.ph, %bb.ik ], [ %indvars.iv814.ph, %renorm_encoder.exit487 ], [ %indvars.iv814.ph, %bb.hm ], [ %indvars.iv814.ph, %bb.ku ], [ %indvars.iv814.ph, %renorm_encoder.exit542 ], [ %indvars.iv814.ph, %bb.kp ], [ %indvars.iv814.ph, %renorm_encoder.exit537 ], [ %indvars.iv814.ph, %bb.jr ]
  %.4113.i = phi i32 [ %.0109.i677.ph, %renorm_encoder.exit517 ], [ %.0109.i677.ph, %renorm_encoder.exit467 ], [ %.3112.i.ph, %bb.li ], [ %.0109.i677.ph, %bb.ip ], [ %.0109.i677.ph, %renorm_encoder.exit492 ], [ %.0109.i677.ph, %bb.ik ], [ %.0109.i677.ph, %renorm_encoder.exit487 ], [ %.0109.i677.ph, %bb.hm ], [ %.0109.i677.ph, %bb.ku ], [ %.0109.i677.ph, %renorm_encoder.exit542 ], [ %.0109.i677.ph, %bb.kp ], [ %.0109.i677.ph, %renorm_encoder.exit537 ], [ %.0109.i677.ph, %bb.jr ] ; 2 uses
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv8141428, 1 ; 2 uses
  %exitcond818.not = icmp eq i64 %indvars.iv.next815, %wide.trip.count817
  br i1 %exitcond818.not, label %.loopexit.sink.split, label %.outer1131, !llvm.loop !13

put_symbol_inline.exit173.i.thread:               ; preds = %get_context.exit440
  %i.dkb = add nsw i32 %.0105.i678, 1             ; 2 uses
  %indvars.iv.next8151118 = add nuw nsw i64 %indvars.iv814, 1 ; 2 uses
  %exitcond818.not1119 = icmp eq i64 %indvars.iv.next8151118, %wide.trip.count817
  br i1 %exitcond818.not1119, label %.preheader628, label %.outer1131.peel.newph, !llvm.loop !383

.preheader628:                                    ; preds = %put_symbol_inline.exit173.i.thread, %put_symbol_inline.exit173.i.thread.peel
  %.lcssa1437 = phi i32 [ %i.dkb, %put_symbol_inline.exit173.i.thread ], [ 1, %put_symbol_inline.exit173.i.thread.peel ] ; 3 uses
  %i.dkc = sext i32 %.0109.i677.ph to i64         ; 2 uses
  %i.dkd = getelementptr inbounds i8, ptr @ff_log2_run, i64 %i.dkc
  %i.dke = load i8, ptr %i.dkd, align 1, !tbaa !54
  %i.dkf = zext nneg i8 %i.dke to i32
  %i.dkg = shl nuw i32 1, %i.dkf                  ; 2 uses
  %.not126.i686 = icmp slt i32 %.lcssa1437, %i.dkg
  br i1 %.not126.i686, label %._crit_edge690, label %.lr.ph689.preheader

.lr.ph689.preheader:                              ; preds = %.preheader628
  %.pre892 = load i32, ptr %i.bp, align 8, !tbaa !135
  %.pre893 = load i32, ptr %i.be, align 4, !tbaa !134
  br label %.lr.ph689

.lr.ph689:                                        ; preds = %.lr.ph689.preheader, %put_bits.exit554
  %i.dkh = phi i32 [ %.pre893, %.lr.ph689.preheader ], [ %i.dlb, %put_bits.exit554 ] ; 4 uses
  %i.dki = phi i32 [ %.pre892, %.lr.ph689.preheader ], [ %.026.i.i552, %put_bits.exit554 ] ; 2 uses
  %indvars.iv819 = phi i64 [ %i.dkc, %.lr.ph689.preheader ], [ %indvars.iv.next820, %put_bits.exit554 ]
  %i.dkj = phi i32 [ %i.dkg, %.lr.ph689.preheader ], [ %i.dlf, %put_bits.exit554 ]
  %.4.i688 = phi i32 [ %.lcssa1437, %.lr.ph689.preheader ], [ %i.dkk, %put_bits.exit554 ]
  %i.dkk = sub nsw i32 %.4.i688, %i.dkj           ; 3 uses
  %indvars.iv.next820 = add nsw i64 %indvars.iv819, 1 ; 3 uses
  %i.dkl = icmp sgt i32 %i.dkh, 1
  br i1 %i.dkl, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %.lr.ph689
  %i.dkm = shl i32 %i.dki, 1
  %i.dkn = or disjoint i32 %i.dkm, 1
  br label %put_bits.exit554

bb.lk:                                            ; preds = %.lr.ph689
  %i.dko = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.dkp = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.dkq = ptrtoint ptr %i.dko to i64
  %i.dkr = ptrtoint ptr %i.dkp to i64
  %i.dks = sub i64 %i.dkq, %i.dkr
  %i.dkt = icmp ugt i64 %i.dks, 3
  br i1 %i.dkt, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.dku = shl i32 %i.dki, %i.dkh
  %i.dkv = icmp eq i32 %i.dkh, 1
  %i.dkw = zext i1 %i.dkv to i32
  %i.dkx = or i32 %i.dku, %i.dkw
  %i.dky = call i32 @llvm.bswap.i32(i32 %i.dkx)
  store i32 %i.dky, ptr %i.dkp, align 1, !tbaa !54
  %i.dkz = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkz, i64 4
  store ptr %i.dla, ptr %i.bd, align 8, !tbaa !133
  br label %put_bits.exit554

bb.lm:                                            ; preds = %bb.lk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit554

put_bits.exit554:                                 ; preds = %bb.ll, %bb.lm, %bb.lj
  %.sink1304 = phi i32 [ -1, %bb.lj ], [ 31, %bb.lm ], [ 31, %bb.ll ]
  %.026.i.i552 = phi i32 [ %i.dkn, %bb.lj ], [ 1, %bb.lm ], [ 1, %bb.ll ] ; 2 uses
  %i.dlb = add nsw i32 %i.dkh, %.sink1304         ; 2 uses
  store i32 %.026.i.i552, ptr %i.bp, align 8, !tbaa !135
  store i32 %i.dlb, ptr %i.be, align 4, !tbaa !134
  %i.dlc = getelementptr inbounds i8, ptr @ff_log2_run, i64 %indvars.iv.next820
  %i.dld = load i8, ptr %i.dlc, align 1, !tbaa !54
  %i.dle = zext nneg i8 %i.dld to i32
  %i.dlf = shl nuw i32 1, %i.dle                  ; 2 uses
  %.not126.i = icmp slt i32 %i.dkk, %i.dlf
  br i1 %.not126.i, label %._crit_edge690.loopexit, label %.lr.ph689, !llvm.loop !14

._crit_edge690.loopexit:                          ; preds = %put_bits.exit554
  %i.dlg = trunc nsw i64 %indvars.iv.next820 to i32
  br label %._crit_edge690

._crit_edge690:                                   ; preds = %._crit_edge690.loopexit, %.preheader628
  %.5.i.lcssa = phi i32 [ %.0109.i677.ph, %.preheader628 ], [ %i.dlg, %._crit_edge690.loopexit ] ; 2 uses
  %.4.i.lcssa = phi i32 [ %.lcssa1437, %.preheader628 ], [ %i.dkk, %._crit_edge690.loopexit ]
  %.not127.i = icmp eq i32 %.4.i.lcssa, 0
  br i1 %.not127.i, label %.loopexit.sink.split, label %bb.ln

bb.ln:                                            ; preds = %._crit_edge690
  %i.dlh = load i32, ptr %i.bp, align 8, !tbaa !135 ; 2 uses
  %i.dli = load i32, ptr %i.be, align 4, !tbaa !134 ; 4 uses
  %i.dlj = icmp sgt i32 %i.dli, 1
  br i1 %i.dlj, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.dlk = shl i32 %i.dlh, 1
  %i.dll = or disjoint i32 %i.dlk, 1
  br label %put_bits.exit558

bb.lp:                                            ; preds = %bb.ln
  %i.dlm = load ptr, ptr %i.bc, align 8, !tbaa !132
  %i.dln = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 2 uses
  %i.dlo = ptrtoint ptr %i.dlm to i64
  %i.dlp = ptrtoint ptr %i.dln to i64
  %i.dlq = sub i64 %i.dlo, %i.dlp
  %i.dlr = icmp ugt i64 %i.dlq, 3
  br i1 %i.dlr, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.dls = shl i32 %i.dlh, %i.dli
  %i.dlt = icmp eq i32 %i.dli, 1
  %i.dlu = zext i1 %i.dlt to i32
  %i.dlv = or i32 %i.dls, %i.dlu
  %i.dlw = call i32 @llvm.bswap.i32(i32 %i.dlv)
  store i32 %i.dlw, ptr %i.dln, align 1, !tbaa !54
  %i.dlx = load ptr, ptr %i.bd, align 8, !tbaa !133
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dlx, i64 4
  store ptr %i.dly, ptr %i.bd, align 8, !tbaa !133
  br label %put_bits.exit558

bb.lr:                                            ; preds = %bb.lp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.81) #19
  br label %put_bits.exit558

put_bits.exit558:                                 ; preds = %bb.lq, %bb.lr, %bb.lo
  %.sink1305 = phi i32 [ -1, %bb.lo ], [ 31, %bb.lr ], [ 31, %bb.lq ]
  %.026.i.i556 = phi i32 [ %i.dll, %bb.lo ], [ 1, %bb.lr ], [ 1, %bb.lq ]
  %i.dlz = add nsw i32 %i.dli, %.sink1305
  br label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %put_bits.exit424, %put_bits.exit558
  %.026.i.i556.sink = phi i32 [ %.026.i.i556, %put_bits.exit558 ], [ %.026.i.i422, %put_bits.exit424 ]
  %.sink1306 = phi i32 [ %i.dlz, %put_bits.exit558 ], [ %i.bjy, %put_bits.exit424 ]
  %.6.i190.sink.ph = phi i32 [ %.5.i.lcssa, %put_bits.exit558 ], [ %.5.i186.lcssa, %put_bits.exit424 ]
  store i32 %.026.i.i556.sink, ptr %i.bp, align 8, !tbaa !135
  store i32 %.sink1306, ptr %i.be, align 4, !tbaa !134
  br label %.loopexit.sink.split

end_hunk_7
