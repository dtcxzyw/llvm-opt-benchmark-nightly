inline.NumInlined: 13716
inline.NumDeleted: 4678
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile9LevelInfoC2ERKS2_:bb.a
  store i32 %i.k, ptr %i.i, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load i16, ptr %i.m, align 4, !tbaa !91   ; 3 uses
  store i16 %i.n, ptr %i.l, align 4, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 38 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 38 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_114ImageCacheFile9LevelInfoC2ERKS2_:bb.a
_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit: ; preds = %bb.a
  %i.ad = zext i16 %i.n to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #50 ; 4 uses
  store ptr %i.af, ptr %i.b, align 8, !tbaa !111
  %2 = icmp eq i16 %i.n, 0
  br i1 %2, label %_ZSt6copy_nIPfiS0_ET1_T_T0_S1_.exit, label %3

3:                                                ; preds = %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit
  %4 = load ptr, ptr %i.ab, align 8, !tbaa !111
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %4, i64 %i.ae, i1 false)
  br label %_ZSt6copy_nIPfiS0_ET1_T_T0_S1_.exit

_ZSt6copy_nIPfiS0_ET1_T_T0_S1_.exit:              ; preds = %3, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit, %bb.a
  %5 = phi ptr [ %i.af, %3 ], [ %i.af, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EE5resetIPfvEEvT_.exit ], [ null, %bb.a ] ; 2 uses
  %i.ag = mul nsw i32 %i.h, %i.e
  %i.ah = mul nsw i32 %i.ag, %i.k                 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_114ImageCacheFile9LevelInfoC2ERKS2_:bb.a
bb.e:                                             ; preds = %_ZSt6copy_nIPfiS0_ET1_T_T0_S1_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %5) #49
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoE:bb.a
  %i.sr = add nsw i32 %.sroa.speculated482, -1
  %.0.i280 = add nuw i32 %i.sr, %.val.i           ; 2 uses
  %i.ss = urem i32 %.0.i280, %.val.i
  %i.st = sub nsw i32 %.0.i280, %i.ss
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dv
end_hunk_3
begin_hunk_4_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i:                                       ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ab
  %i.ae = sub i64 %.013.i.i.i, %i.ab              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i, label %bb.h, !llvm.loop !756

end_hunk_4
begin_hunk_5_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i75:                                     ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i74, i64 %i.by
  %i.cb = sub i64 %.013.i.i.i73, %i.by            ; 2 uses
  %.not.i.i.i76 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.i76, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i77, label %bb.t, !llvm.loop !756

end_hunk_5
begin_hunk_6_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i89:                                     ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 %i.dn
  %i.dq = sub i64 %.013.i.i.i87, %i.dn            ; 2 uses
  %.not.i.i.i90 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i90, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i91, label %bb.ae, !llvm.loop !756

end_hunk_6
begin_hunk_7_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i106:                                    ; preds = %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i.i105, i64 %i.fg
  %i.fj = sub i64 %.013.i.i.i104, %i.fg           ; 2 uses
  %.not.i.i.i107 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i107, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i108, label %bb.ap, !llvm.loop !756

end_hunk_7
begin_hunk_8_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i120:                                    ; preds = %bb.bj
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i.i119, i64 %i.hq
  %i.ht = sub i64 %.013.i.i.i118, %i.hq           ; 2 uses
  %.not.i.i.i121 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i.i121, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i122, label %bb.bj, !llvm.loop !756

end_hunk_8
begin_hunk_9_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i131:                                    ; preds = %bb.bs
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i.i130, i64 %i.iz
  %i.jc = sub i64 %.013.i.i.i129, %i.iz           ; 2 uses
  %.not.i.i.i132 = icmp eq i64 %i.jc, 0
  br i1 %.not.i.i.i132, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i133, label %bb.bs, !llvm.loop !756

end_hunk_9
begin_hunk_10_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i143:                                    ; preds = %bb.cb
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i.i.i142, i64 %i.kj
  %i.km = sub i64 %.013.i.i.i141, %i.kj           ; 2 uses
  %.not.i.i.i144 = icmp eq i64 %i.km, 0
  br i1 %.not.i.i.i144, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i145, label %bb.cb, !llvm.loop !756

end_hunk_10
begin_hunk_11_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i155:                                    ; preds = %bb.cj
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i.i154, i64 %i.lk
  %i.ln = sub i64 %.013.i.i.i153, %i.lk           ; 2 uses
  %.not.i.i.i156 = icmp eq i64 %i.ln, 0
  br i1 %.not.i.i.i156, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i157, label %bb.cj, !llvm.loop !756

end_hunk_11
begin_hunk_12_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i167:                                    ; preds = %bb.cr
  %i.my = getelementptr inbounds nuw i8, ptr %.0.i.i.i166, i64 %i.mw
  %i.mz = sub i64 %.013.i.i.i165, %i.mw           ; 2 uses
  %.not.i.i.i168 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i168, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i169, label %bb.cr, !llvm.loop !756

end_hunk_12
begin_hunk_13_@_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib:bb.a

.noexc.i.i179:                                    ; preds = %bb.cz
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i.i.i178, i64 %i.nm
  %i.np = sub i64 %.013.i.i.i177, %i.nm           ; 2 uses
  %.not.i.i.i180 = icmp eq i64 %i.np, 0
  br i1 %.not.i.i.i180, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i181, label %bb.cz, !llvm.loop !756

end_hunk_13
begin_hunk_14_@_ZN3fmt3v125printIJRKiS3_S3_RPKcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS9_:bb.a

.noexc.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.n
  %i.q = sub i64 %.013.i.i, %i.n                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.c, !llvm.loop !756

end_hunk_14
begin_hunk_15_@_ZN3fmt3v125printIJN11OpenImageIO4v3_17ustringEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS7_:bb.a

.noexc.i:                                         ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.k
  %i.n = sub i64 %.013.i.i, %i.k                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.d, !llvm.loop !756

end_hunk_15
begin_hunk_16_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i:                                       ; preds = %bb.bo
  %i.pp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.pn
  %i.pq = sub i64 %.013.i.i.i, %i.pn              ; 2 uses
  %.not.i.i.i430 = icmp eq i64 %i.pq, 0
  br i1 %.not.i.i.i430, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i, label %bb.bo, !llvm.loop !756

end_hunk_16
begin_hunk_17_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i440:                                    ; preds = %bb.bx
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i.i.i439, i64 %i.qn
  %i.qq = sub i64 %.013.i.i.i438, %i.qn           ; 2 uses
  %.not.i.i.i441 = icmp eq i64 %i.qq, 0
  br i1 %.not.i.i.i441, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i442, label %bb.bx, !llvm.loop !756

end_hunk_17
begin_hunk_18_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i451:                                    ; preds = %bb.cf
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i.i.i450, i64 %i.rn
  %i.rq = sub i64 %.013.i.i.i449, %i.rn           ; 2 uses
  %.not.i.i.i452 = icmp eq i64 %i.rq, 0
  br i1 %.not.i.i.i452, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i453, label %bb.cf, !llvm.loop !756

end_hunk_18
begin_hunk_19_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i462:                                    ; preds = %bb.co
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.i.i.i461, i64 %i.sj
  %i.sm = sub i64 %.013.i.i.i460, %i.sj           ; 2 uses
  %.not.i.i.i463 = icmp eq i64 %i.sm, 0
  br i1 %.not.i.i.i463, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i464, label %bb.co, !llvm.loop !756

end_hunk_19
begin_hunk_20_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i477:                                    ; preds = %bb.cx
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i.i.i476, i64 %i.tn
  %i.tq = sub i64 %.013.i.i.i475, %i.tn           ; 2 uses
  %.not.i.i.i478 = icmp eq i64 %i.tq, 0
  br i1 %.not.i.i.i478, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i479, label %bb.cx, !llvm.loop !756

end_hunk_20
begin_hunk_21_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i492:                                    ; preds = %bb.dg
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.i.i.i491, i64 %i.ur
  %i.uu = sub i64 %.013.i.i.i490, %i.ur           ; 2 uses
  %.not.i.i.i493 = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i493, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i494, label %bb.dg, !llvm.loop !756

end_hunk_21
begin_hunk_22_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i549:                                    ; preds = %bb.en
  %i.yx = getelementptr inbounds nuw i8, ptr %.0.i.i.i548, i64 %i.yv
  %i.yy = sub i64 %.013.i.i.i547, %i.yv           ; 2 uses
  %.not.i.i.i550 = icmp eq i64 %i.yy, 0
  br i1 %.not.i.i.i550, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i551, label %bb.en, !llvm.loop !756

end_hunk_22
begin_hunk_23_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i560:                                    ; preds = %bb.ex
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i.i.i559, i64 %i.zu
  %i.zx = sub i64 %.013.i.i.i558, %i.zu           ; 2 uses
  %.not.i.i.i561 = icmp eq i64 %i.zx, 0
  br i1 %.not.i.i.i561, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i562, label %bb.ex, !llvm.loop !756

end_hunk_23
begin_hunk_24_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i578:                                    ; preds = %bb.fj
  %i.abf = getelementptr inbounds nuw i8, ptr %.0.i.i.i577, i64 %i.abd
  %i.abg = sub i64 %.013.i.i.i576, %i.abd         ; 2 uses
  %.not.i.i.i579 = icmp eq i64 %i.abg, 0
  br i1 %.not.i.i.i579, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i580, label %bb.fj, !llvm.loop !756

end_hunk_24
begin_hunk_25_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i606:                                    ; preds = %bb.fw
  %i.adb = getelementptr inbounds nuw i8, ptr %.0.i.i.i605, i64 %i.acz
  %i.adc = sub i64 %.013.i.i.i604, %i.acz         ; 2 uses
  %.not.i.i.i607 = icmp eq i64 %i.adc, 0
  br i1 %.not.i.i.i607, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i608, label %bb.fw, !llvm.loop !756

end_hunk_25
begin_hunk_26_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i626:                                    ; preds = %bb.gh
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0.i.i.i625, i64 %i.aef
  %i.aei = sub i64 %.013.i.i.i624, %i.aef         ; 2 uses
  %.not.i.i.i627 = icmp eq i64 %i.aei, 0
  br i1 %.not.i.i.i627, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i628, label %bb.gh, !llvm.loop !756

end_hunk_26
begin_hunk_27_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i638:                                    ; preds = %bb.gq
  %i.afe = getelementptr inbounds nuw i8, ptr %.0.i.i.i637, i64 %i.afc
  %i.aff = sub i64 %.013.i.i.i636, %i.afc         ; 2 uses
  %.not.i.i.i639 = icmp eq i64 %i.aff, 0
  br i1 %.not.i.i.i639, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i640, label %bb.gq, !llvm.loop !756

end_hunk_27
begin_hunk_28_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i656:                                    ; preds = %bb.hc
  %i.agn = getelementptr inbounds nuw i8, ptr %.0.i.i.i655, i64 %i.agl
  %i.ago = sub i64 %.013.i.i.i654, %i.agl         ; 2 uses
  %.not.i.i.i657 = icmp eq i64 %i.ago, 0
  br i1 %.not.i.i.i657, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i658, label %bb.hc, !llvm.loop !756

end_hunk_28
begin_hunk_29_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i674:                                    ; preds = %bb.ho
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0.i.i.i673, i64 %i.ahu
  %i.ahx = sub i64 %.013.i.i.i672, %i.ahu         ; 2 uses
  %.not.i.i.i675 = icmp eq i64 %i.ahx, 0
  br i1 %.not.i.i.i675, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i676, label %bb.ho, !llvm.loop !756

end_hunk_29
begin_hunk_30_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i692:                                    ; preds = %bb.hz
  %i.ajj = getelementptr inbounds nuw i8, ptr %.0.i.i.i691, i64 %i.ajh
  %i.ajk = sub i64 %.013.i.i.i690, %i.ajh         ; 2 uses
  %.not.i.i.i693 = icmp eq i64 %i.ajk, 0
  br i1 %.not.i.i.i693, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i694, label %bb.hz, !llvm.loop !756

end_hunk_30
begin_hunk_31_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i704:                                    ; preds = %bb.ih
  %i.akb = getelementptr inbounds nuw i8, ptr %.0.i.i.i703, i64 %i.ajz
  %i.akc = sub i64 %.013.i.i.i702, %i.ajz         ; 2 uses
  %.not.i.i.i705 = icmp eq i64 %i.akc, 0
  br i1 %.not.i.i.i705, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i706, label %bb.ih, !llvm.loop !756

end_hunk_31
begin_hunk_32_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i715:                                    ; preds = %bb.iq
  %i.aky = getelementptr inbounds nuw i8, ptr %.0.i.i.i714, i64 %i.akw
  %i.akz = sub i64 %.013.i.i.i713, %i.akw         ; 2 uses
  %.not.i.i.i716 = icmp eq i64 %i.akz, 0
  br i1 %.not.i.i.i716, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i717, label %bb.iq, !llvm.loop !756

end_hunk_32
begin_hunk_33_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i726:                                    ; preds = %bb.ja
  %i.alv = getelementptr inbounds nuw i8, ptr %.0.i.i.i725, i64 %i.alt
  %i.alw = sub i64 %.013.i.i.i724, %i.alt         ; 2 uses
  %.not.i.i.i727 = icmp eq i64 %i.alw, 0
  br i1 %.not.i.i.i727, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i728, label %bb.ja, !llvm.loop !756

end_hunk_33
begin_hunk_34_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i737:                                    ; preds = %bb.jk
  %i.ams = getelementptr inbounds nuw i8, ptr %.0.i.i.i736, i64 %i.amq
  %i.amt = sub i64 %.013.i.i.i735, %i.amq         ; 2 uses
  %.not.i.i.i738 = icmp eq i64 %i.amt, 0
  br i1 %.not.i.i.i738, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i739, label %bb.jk, !llvm.loop !756

end_hunk_34
begin_hunk_35_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i754:                                    ; preds = %bb.jv
  %i.aob = getelementptr inbounds nuw i8, ptr %.0.i.i.i753, i64 %i.anz
  %i.aoc = sub i64 %.013.i.i.i752, %i.anz         ; 2 uses
  %.not.i.i.i755 = icmp eq i64 %i.aoc, 0
  br i1 %.not.i.i.i755, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i756, label %bb.jv, !llvm.loop !756

end_hunk_35
begin_hunk_36_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i769:                                    ; preds = %bb.kf
  %i.aph = getelementptr inbounds nuw i8, ptr %.0.i.i.i768, i64 %i.apf
  %i.api = sub i64 %.013.i.i.i767, %i.apf         ; 2 uses
  %.not.i.i.i770 = icmp eq i64 %i.api, 0
  br i1 %.not.i.i.i770, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i771, label %bb.kf, !llvm.loop !756

end_hunk_36
begin_hunk_37_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i790:                                    ; preds = %bb.ks
  %i.aqt = getelementptr inbounds nuw i8, ptr %.0.i.i.i789, i64 %i.aqr
  %i.aqu = sub i64 %.013.i.i.i788, %i.aqr         ; 2 uses
  %.not.i.i.i791 = icmp eq i64 %i.aqu, 0
  br i1 %.not.i.i.i791, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i792, label %bb.ks, !llvm.loop !756

end_hunk_37
begin_hunk_38_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i808:                                    ; preds = %bb.ld
  %i.arz = getelementptr inbounds nuw i8, ptr %.0.i.i.i807, i64 %i.arx
  %i.asa = sub i64 %.013.i.i.i806, %i.arx         ; 2 uses
  %.not.i.i.i809 = icmp eq i64 %i.asa, 0
  br i1 %.not.i.i.i809, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i810, label %bb.ld, !llvm.loop !756

end_hunk_38
begin_hunk_39_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i825:                                    ; preds = %bb.lo
  %i.atb = getelementptr inbounds nuw i8, ptr %.0.i.i.i824, i64 %i.asz
  %i.atc = sub i64 %.013.i.i.i823, %i.asz         ; 2 uses
  %.not.i.i.i826 = icmp eq i64 %i.atc, 0
  br i1 %.not.i.i.i826, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i827, label %bb.lo, !llvm.loop !756

end_hunk_39
begin_hunk_40_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i837:                                    ; preds = %bb.lw
  %i.att = getelementptr inbounds nuw i8, ptr %.0.i.i.i836, i64 %i.atr
  %i.atu = sub i64 %.013.i.i.i835, %i.atr         ; 2 uses
  %.not.i.i.i838 = icmp eq i64 %i.atu, 0
  br i1 %.not.i.i.i838, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i839, label %bb.lw, !llvm.loop !756

end_hunk_40
begin_hunk_41_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i856:                                    ; preds = %bb.mw
  %i.axe = getelementptr inbounds nuw i8, ptr %.0.i.i.i855, i64 %i.axc
  %i.axf = sub i64 %.013.i.i.i854, %i.axc         ; 2 uses
  %.not.i.i.i857 = icmp eq i64 %i.axf, 0
  br i1 %.not.i.i.i857, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i858, label %bb.mw, !llvm.loop !756

end_hunk_41
begin_hunk_42_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i874:                                    ; preds = %bb.nh
  %i.ayw = getelementptr inbounds nuw i8, ptr %.0.i.i.i873, i64 %i.ayu
  %i.ayx = sub i64 %.013.i.i.i872, %i.ayu         ; 2 uses
  %.not.i.i.i875 = icmp eq i64 %i.ayx, 0
  br i1 %.not.i.i.i875, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i876, label %bb.nh, !llvm.loop !756

end_hunk_42
begin_hunk_43_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i891:                                    ; preds = %bb.nr
  %i.bab = getelementptr inbounds nuw i8, ptr %.0.i.i.i890, i64 %i.azz
  %i.bac = sub i64 %.013.i.i.i889, %i.azz         ; 2 uses
  %.not.i.i.i892 = icmp eq i64 %i.bac, 0
  br i1 %.not.i.i.i892, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i893, label %bb.nr, !llvm.loop !756

end_hunk_43
begin_hunk_44_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i902:                                    ; preds = %bb.od
  %i.baz = getelementptr inbounds nuw i8, ptr %.0.i.i.i901, i64 %i.bax
  %i.bba = sub i64 %.013.i.i.i900, %i.bax         ; 2 uses
  %.not.i.i.i903 = icmp eq i64 %i.bba, 0
  br i1 %.not.i.i.i903, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i904, label %bb.od, !llvm.loop !756

end_hunk_44
begin_hunk_45_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i913:                                    ; preds = %bb.om
  %i.bbv = getelementptr inbounds nuw i8, ptr %.0.i.i.i912, i64 %i.bbt
  %i.bbw = sub i64 %.013.i.i.i911, %i.bbt         ; 2 uses
  %.not.i.i.i914 = icmp eq i64 %i.bbw, 0
  br i1 %.not.i.i.i914, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i915, label %bb.om, !llvm.loop !756

end_hunk_45
begin_hunk_46_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i934:                                    ; preds = %bb.pu
  %i.bgn = getelementptr inbounds nuw i8, ptr %.0.i.i.i933, i64 %i.bgl
  %i.bgo = sub i64 %.013.i.i.i932, %i.bgl         ; 2 uses
  %.not.i.i.i935 = icmp eq i64 %i.bgo, 0
  br i1 %.not.i.i.i935, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i936, label %bb.pu, !llvm.loop !756

end_hunk_46
begin_hunk_47_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i946:                                    ; preds = %bb.qh
  %i.big = getelementptr inbounds nuw i8, ptr %.0.i.i.i945, i64 %i.bie
  %i.bih = sub i64 %.013.i.i.i944, %i.bie         ; 2 uses
  %.not.i.i.i947 = icmp eq i64 %i.bih, 0
  br i1 %.not.i.i.i947, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i948, label %bb.qh, !llvm.loop !756

end_hunk_47
begin_hunk_48_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i973:                                    ; preds = %bb.ro
  %i.bnf = getelementptr inbounds nuw i8, ptr %.0.i.i.i972, i64 %i.bnd
  %i.bng = sub i64 %.013.i.i.i971, %i.bnd         ; 2 uses
  %.not.i.i.i974 = icmp eq i64 %i.bng, 0
  br i1 %.not.i.i.i974, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i975, label %bb.ro, !llvm.loop !756

end_hunk_48
begin_hunk_49_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i985:                                    ; preds = %bb.sc
  %i.bpd = getelementptr inbounds nuw i8, ptr %.0.i.i.i984, i64 %i.bpb
  %i.bpe = sub i64 %.013.i.i.i983, %i.bpb         ; 2 uses
  %.not.i.i.i986 = icmp eq i64 %i.bpe, 0
  br i1 %.not.i.i.i986, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i987, label %bb.sc, !llvm.loop !756

end_hunk_49
begin_hunk_50_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1018:                                   ; preds = %bb.tg
  %i.btr = getelementptr inbounds nuw i8, ptr %.0.i.i.i1017, i64 %i.btp
  %i.bts = sub i64 %.013.i.i.i1016, %i.btp        ; 2 uses
  %.not.i.i.i1019 = icmp eq i64 %i.bts, 0
  br i1 %.not.i.i.i1019, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1020, label %bb.tg, !llvm.loop !756

end_hunk_50
begin_hunk_51_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1030:                                   ; preds = %bb.tu
  %i.bvn = getelementptr inbounds nuw i8, ptr %.0.i.i.i1029, i64 %i.bvl
  %i.bvo = sub i64 %.013.i.i.i1028, %i.bvl        ; 2 uses
  %.not.i.i.i1031 = icmp eq i64 %i.bvo, 0
  br i1 %.not.i.i.i1031, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1032, label %bb.tu, !llvm.loop !756

end_hunk_51
begin_hunk_52_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1047:                                   ; preds = %bb.ue
  %i.bwq = getelementptr inbounds nuw i8, ptr %.0.i.i.i1046, i64 %i.bwo
  %i.bwr = sub i64 %.013.i.i.i1045, %i.bwo        ; 2 uses
  %.not.i.i.i1048 = icmp eq i64 %i.bwr, 0
  br i1 %.not.i.i.i1048, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1049, label %bb.ue, !llvm.loop !756

end_hunk_52
begin_hunk_53_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1059:                                   ; preds = %bb.ul
  %i.bxr = getelementptr inbounds nuw i8, ptr %.0.i.i.i1058, i64 %i.bxp
  %i.bxs = sub i64 %.013.i.i.i1057, %i.bxp        ; 2 uses
  %.not.i.i.i1060 = icmp eq i64 %i.bxs, 0
  br i1 %.not.i.i.i1060, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1061, label %bb.ul, !llvm.loop !756

end_hunk_53
begin_hunk_54_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1080:                                   ; preds = %bb.vp
  %i.ccp = getelementptr inbounds nuw i8, ptr %.0.i.i.i1079, i64 %i.ccn
  %i.ccq = sub i64 %.013.i.i.i1078, %i.ccn        ; 2 uses
  %.not.i.i.i1081 = icmp eq i64 %i.ccq, 0
  br i1 %.not.i.i.i1081, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1082, label %bb.vp, !llvm.loop !756

end_hunk_54
begin_hunk_55_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1092:                                   ; preds = %bb.wc
  %i.cem = getelementptr inbounds nuw i8, ptr %.0.i.i.i1091, i64 %i.cek
  %i.cen = sub i64 %.013.i.i.i1090, %i.cek        ; 2 uses
  %.not.i.i.i1093 = icmp eq i64 %i.cen, 0
  br i1 %.not.i.i.i1093, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1094, label %bb.wc, !llvm.loop !756

end_hunk_55
begin_hunk_56_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc.i.i1110:                                   ; preds = %bb.wm
  %i.cfq = getelementptr inbounds nuw i8, ptr %.0.i.i.i1109, i64 %i.cfo
  %i.cfr = sub i64 %.013.i.i.i1108, %i.cfo        ; 2 uses
  %.not.i.i.i1111 = icmp eq i64 %i.cfr, 0
  br i1 %.not.i.i.i1111, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i1112, label %bb.wm, !llvm.loop !756

end_hunk_56
begin_hunk_57_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.aa
  %i.ad = sub i64 %.013.i.i.i, %i.aa              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i, label %bb.f, !llvm.loop !756

end_hunk_57
begin_hunk_58_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i57:                                     ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i56, i64 %i.bj
  %i.bm = sub i64 %.013.i.i.i55, %i.bj            ; 2 uses
  %.not.i.i.i58 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i58, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i59, label %bb.o, !llvm.loop !756

end_hunk_58
begin_hunk_59_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i71:                                     ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i70, i64 %i.cs
  %i.cv = sub i64 %.013.i.i.i69, %i.cs            ; 2 uses
  %.not.i.i.i72 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i.i72, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i73, label %bb.x, !llvm.loop !756

end_hunk_59
begin_hunk_60_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i86:                                     ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i85, i64 %i.eb
  %i.ee = sub i64 %.013.i.i.i84, %i.eb            ; 2 uses
  %.not.i.i.i87 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i87, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i88, label %bb.ag, !llvm.loop !756

end_hunk_60
begin_hunk_61_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i101:                                    ; preds = %bb.ap
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i100, i64 %i.fk
  %i.fn = sub i64 %.013.i.i.i99, %i.fk            ; 2 uses
  %.not.i.i.i102 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i102, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i103, label %bb.ap, !llvm.loop !756

end_hunk_61
begin_hunk_62_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i118:                                    ; preds = %bb.ba
  %i.gy = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 %i.gw
  %i.gz = sub i64 %.013.i.i.i116, %i.gw           ; 2 uses
  %.not.i.i.i119 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.i.i119, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i120, label %bb.ba, !llvm.loop !756

end_hunk_62
begin_hunk_63_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i154:                                    ; preds = %bb.bz
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i.i.i153, i64 %i.no
  %i.nr = sub i64 %.013.i.i.i152, %i.no           ; 2 uses
  %.not.i.i.i155 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i155, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i156, label %bb.bz, !llvm.loop !756

end_hunk_63
begin_hunk_64_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i174:                                    ; preds = %bb.cn
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.i.i.i173, i64 %i.ot
  %i.ow = sub i64 %.013.i.i.i172, %i.ot           ; 2 uses
  %.not.i.i.i175 = icmp eq i64 %i.ow, 0
  br i1 %.not.i.i.i175, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i176, label %bb.cn, !llvm.loop !756

end_hunk_64
begin_hunk_65_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i192:                                    ; preds = %bb.cz
  %i.pu = getelementptr inbounds nuw i8, ptr %.0.i.i.i191, i64 %i.ps
  %i.pv = sub i64 %.013.i.i.i190, %i.ps           ; 2 uses
  %.not.i.i.i193 = icmp eq i64 %i.pv, 0
  br i1 %.not.i.i.i193, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i194, label %bb.cz, !llvm.loop !756

end_hunk_65
begin_hunk_66_@_ZN11OpenImageIO4v3_121printImageCacheMemoryERSoRKNS0_14ImageCacheImplE:bb.a

.noexc.i.i210:                                    ; preds = %bb.dl
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i.i.i209, i64 %i.qr
  %i.qu = sub i64 %.013.i.i.i208, %i.qr           ; 2 uses
  %.not.i.i.i211 = icmp eq i64 %i.qu, 0
  br i1 %.not.i.i.i211, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i.i212, label %bb.dl, !llvm.loop !756

end_hunk_66
begin_hunk_67_@_ZN3fmt3v125printIJRA7_KcN11OpenImageIO4v3_17ustringEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_:bb.a

.noexc.i:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.l
  %i.o = sub i64 %.013.i.i, %i.l                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.d, !llvm.loop !756

end_hunk_67
begin_hunk_68_@_ZN3fmt3v125printIJRiN11OpenImageIO4v3_17ustringEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS8_:bb.a

.noexc.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.m
  %i.p = sub i64 %.013.i.i, %i.m                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.d, !llvm.loop !756

end_hunk_68
begin_hunk_69_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEjEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
end_hunk_69
begin_hunk_70_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_70
begin_hunk_71_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_71
begin_hunk_72_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_72
begin_hunk_73_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_73
begin_hunk_74_@_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_:bb.a
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !201  ; 5 uses
  %i.r = lshr i64 %i.q, 25
  %i.s = sub i64 %i.q, %i.r
  %i.t = sub nsw i32 40, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
end_hunk_74
begin_hunk_75_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_75
begin_hunk_76_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.dg = sext i8 %i.df to i64
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.da, %i.dh                   ; 4 uses
  %i.dj = sub nsw i64 %i.da, %i.di
  %i.dk = lshr i32 %i.cm, 15
  %i.dl = and i32 %i.dk, 7
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_76
begin_hunk_77_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_77
begin_hunk_78_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_78
begin_hunk_79_@_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_:bb.a
_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.ax, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.c ] ; 5 uses
  %i.ay = lshr i64 %.sroa.3.0.i, 54
  %i.az = sub i64 %.sroa.3.0.i, %i.ay
  %i.ba = sub nsw i32 11, %i.n
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.az, %i.bb
end_hunk_79
begin_hunk_80_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
end_hunk_80
begin_hunk_81_@_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.dg = sext i8 %i.df to i64
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = lshr i64 %i.da, %i.dh                   ; 4 uses
  %i.dj = sub nsw i64 %i.da, %i.di
  %i.dk = lshr i32 %i.cm, 15
  %i.dl = and i32 %i.dk, 7
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_81
begin_hunk_82_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_82
begin_hunk_83_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_2ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_83
begin_hunk_84_@_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE:bb.a
  %i.bp = sext i8 %i.bo to i64
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = lshr i64 %i.bj, %i.bq                   ; 4 uses
  %i.bs = sub nsw i64 %i.bj, %i.br
  %i.bt = lshr i32 %i.n, 15
  %i.bu = and i32 %i.bt, 7
  %i.bv = zext nneg i32 %i.bu to i64
end_hunk_84
begin_hunk_85_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_85
begin_hunk_86_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_86
begin_hunk_87_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_14big_decimal_fpEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESA_SA_SH_mmOSB_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_87
begin_hunk_88_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_:bb.a
  %i.l = sext i8 %i.k to i64
  %i.m = and i64 %i.l, 4294967295
  %i.n = lshr i64 %i.e, %i.m                      ; 4 uses
  %i.o = sub nsw i64 %i.e, %i.n
  %i.p = lshr i32 %i.f, 15
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64
end_hunk_88
begin_hunk_89_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEmEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.dx = sext i8 %i.dw to i64
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = lshr i64 %i.dr, %i.dy                   ; 4 uses
  %i.ea = sub nsw i64 %i.dr, %i.dz
  %i.eb = lshr i32 %i.b, 15
  %i.ec = and i32 %i.eb, 7
  %i.ed = zext nneg i32 %i.ec to i64
end_hunk_89
begin_hunk_90_@_ZN3fmt3v126detail18write_int_noinlineIcNS0_14basic_appenderIcEEoEET0_S5_NS1_13write_int_argIT1_EERKNS0_12format_specsE:bb.a
  %i.ea = sext i8 %i.dz to i64
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = lshr i64 %i.du, %i.eb                   ; 4 uses
  %i.ed = sub nsw i64 %i.du, %i.ec
  %i.ee = lshr i32 %i.b, 15
  %i.ef = and i32 %i.ee, 7
  %i.eg = zext nneg i32 %i.ef to i64
end_hunk_90
begin_hunk_91_@_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE:bb.a
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
end_hunk_91
begin_hunk_92_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_92
begin_hunk_93_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_93
begin_hunk_94_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_94
begin_hunk_95_@_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE:bb.a
  %i.bz = sext i8 %i.by to i64
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = lshr i64 %i.bt, %i.ca                   ; 4 uses
  %i.cc = sub nsw i64 %i.bt, %i.cb
  %i.cd = lshr i32 %i.n, 15
  %i.ce = and i32 %i.cd, 7
  %i.cf = zext nneg i32 %i.ce to i64
end_hunk_95
begin_hunk_96_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.bf = sext i8 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = lshr i64 %i.ay, %i.bg                   ; 4 uses
  %i.bi = sub nsw i64 %i.ay, %i.bh
  %i.bj = lshr i32 %i.az, 15
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
end_hunk_96
begin_hunk_97_@_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE:bb.a
  %i.hd = sext i8 %i.hc to i64
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = lshr i64 %i.gx, %i.he                   ; 4 uses
  %i.hg = sub nsw i64 %i.gx, %i.hf
  %i.hh = lshr i32 %i.gj, 15
  %i.hi = and i32 %i.hh, 7
  %i.hj = zext nneg i32 %i.hi to i64
end_hunk_97
begin_hunk_98_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_11write_fixedIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E0_EESC_SC_SJ_mmOSD_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_98
begin_hunk_99_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_:bb.a
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
end_hunk_99
begin_hunk_100_@_ZN3fmt3v125printIJRKN11OpenImageIO4v3_17ustringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSH_:bb.a

.noexc.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.r
  %i.u = sub i64 %.013.i.i, %i.r                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.d, !llvm.loop !756

end_hunk_100
