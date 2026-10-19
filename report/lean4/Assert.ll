Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Assert?download=true
inline.NumInlined: 3239
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@l_List_forIn_x27_loop___at___00__private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_propagatePending_spec__0___redArg:bb.a
  %i.afj = and i64 %i.aev, 510
  %i.afk = icmp eq i64 %i.afj, 0
  br i1 %i.afk, label %bb.yx, label %bb.adu

bb.yx:                                            ; preds = %lean_dec_ref_known.exit1897
  %i.afl = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_mkProofForPath(ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) ; 10 uses
  %i.afm = ptrtoint ptr %i.afl to i64             ; 2 uses
  %i.afn = and i64 %i.afm, 1
  %.not.i1898 = icmp eq i64 %i.afn, 0             ; 2 uses
  br i1 %.not.i1898, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.afo = lshr i64 %i.afm, 1
  %i.afp = trunc i64 %i.afo to i32
  br label %lean_obj_tag.exit1901

bb.yz:                                            ; preds = %bb.yx
  %i.afq = getelementptr i8, ptr %i.afl, i64 4
  %.val.i1900 = load i32, ptr %i.afq, align 4
  %i.afr = lshr i32 %.val.i1900, 24
  br label %lean_obj_tag.exit1901

lean_obj_tag.exit1901:                            ; preds = %bb.yy, %bb.yz
  %.0.i1899 = phi i32 [ %i.afp, %bb.yy ], [ %i.afr, %bb.yz ]
  %i.afs = icmp eq i32 %.0.i1899, 0
  br i1 %i.afs, label %bb.za, label %bb.acx

bb.za:                                            ; preds = %lean_obj_tag.exit1901
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !12 ; 8 uses
  %i.afv = ptrtoint ptr %i.afu to i64
  %i.afw = and i64 %i.afv, 1
  %.not.i1120 = icmp eq i64 %i.afw, 0             ; 2 uses
  br i1 %.not.i1120, label %bb.zb, label %lean_inc.exit1121

bb.zb:                                            ; preds = %bb.za
  %.val.i.i1902 = load i32, ptr %i.afu, align 4, !tbaa !15 ; 3 uses
  %i.afx = icmp sgt i32 %.val.i.i1902, 0
  br i1 %i.afx, label %bb.zc, label %bb.zd, !prof !10

bb.zc:                                            ; preds = %bb.zb
  %i.afy = add nuw i32 %.val.i.i1902, 1
  store i32 %i.afy, ptr %i.afu, align 4, !tbaa !15
  br label %lean_inc.exit1121

bb.zd:                                            ; preds = %bb.zb
  %.not.i.i1903 = icmp eq i32 %.val.i.i1902, 0
  br i1 %.not.i.i1903, label %lean_inc.exit1121, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.afz = atomicrmw sub ptr %i.afu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1121

lean_inc.exit1121:                                ; preds = %bb.ze, %bb.zd, %bb.zc, %bb.za
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.afl, i32 noundef 1)
  %i.aga = tail call ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_mkProofForPath(ptr noundef %i.ac, ptr noundef %i.aa, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) ; 10 uses
  %i.agb = ptrtoint ptr %i.aga to i64             ; 2 uses
  %i.agc = and i64 %i.agb, 1
  %.not.i1905 = icmp eq i64 %i.agc, 0             ; 2 uses
  br i1 %.not.i1905, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %lean_inc.exit1121
  %i.agd = lshr i64 %i.agb, 1
  %i.age = trunc i64 %i.agd to i32
  br label %lean_obj_tag.exit1908

bb.zg:                                            ; preds = %lean_inc.exit1121
  %i.agf = getelementptr i8, ptr %i.aga, i64 4
  %.val.i1907 = load i32, ptr %i.agf, align 4
  %i.agg = lshr i32 %.val.i1907, 24
  br label %lean_obj_tag.exit1908

lean_obj_tag.exit1908:                            ; preds = %bb.zf, %bb.zg
  %.0.i1906 = phi i32 [ %i.age, %bb.zf ], [ %i.agg, %bb.zg ]
  %i.agh = icmp eq i32 %.0.i1906, 0
  br i1 %i.agh, label %bb.zh, label %bb.abw

bb.zh:                                            ; preds = %lean_obj_tag.exit1908
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !12 ; 5 uses
  %i.agk = ptrtoint ptr %i.agj to i64
  %i.agl = and i64 %i.agk, 1
  %.not.i1118 = icmp eq i64 %i.agl, 0
  br i1 %.not.i1118, label %bb.zi, label %lean_inc.exit1119

bb.zi:                                            ; preds = %bb.zh
  %.val.i.i1909 = load i32, ptr %i.agj, align 4, !tbaa !15 ; 3 uses
  %i.agm = icmp sgt i32 %.val.i.i1909, 0
  br i1 %i.agm, label %bb.zj, label %bb.zk, !prof !10

bb.zj:                                            ; preds = %bb.zi
  %i.agn = add nuw i32 %.val.i.i1909, 1
  store i32 %i.agn, ptr %i.agj, align 4, !tbaa !15
  br label %lean_inc.exit1119

bb.zk:                                            ; preds = %bb.zi
  %.not.i.i1910 = icmp eq i32 %.val.i.i1909, 0
  br i1 %.not.i.i1910, label %lean_inc.exit1119, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.ago = atomicrmw sub ptr %i.agj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1119

lean_inc.exit1119:                                ; preds = %bb.zl, %bb.zk, %bb.zj, %bb.zh
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aga, i32 noundef 1)
  br i1 %.not.i1184, label %bb.zm, label %lean_inc.exit1117

bb.zm:                                            ; preds = %lean_inc.exit1119
  %.val.i.i1912 = load i32, ptr %i.dw, align 4, !tbaa !15 ; 3 uses
  %i.agp = icmp sgt i32 %.val.i.i1912, 0
  br i1 %i.agp, label %bb.zn, label %bb.zo, !prof !10

bb.zn:                                            ; preds = %bb.zm
  %i.agq = add nuw i32 %.val.i.i1912, 1
  store i32 %i.agq, ptr %i.dw, align 4, !tbaa !15
  br label %lean_inc.exit1117

bb.zo:                                            ; preds = %bb.zm
  %.not.i.i1913 = icmp eq i32 %.val.i.i1912, 0
  br i1 %.not.i.i1913, label %lean_inc.exit1117, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.agr = atomicrmw sub ptr %i.dw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1117

lean_inc.exit1117:                                ; preds = %bb.zp, %bb.zo, %bb.zn, %lean_inc.exit1119
  br i1 %.not.i1186, label %bb.zq, label %lean_inc.exit1115

bb.zq:                                            ; preds = %lean_inc.exit1117
  %.val.i.i1915 = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.ags = icmp sgt i32 %.val.i.i1915, 0
  br i1 %i.ags, label %bb.zr, label %bb.zs, !prof !10

bb.zr:                                            ; preds = %bb.zq
  %i.agt = add nuw i32 %.val.i.i1915, 1
  store i32 %i.agt, ptr %i.cy, align 4, !tbaa !15
  br label %lean_inc.exit1115

bb.zs:                                            ; preds = %bb.zq
  %.not.i.i1916 = icmp eq i32 %.val.i.i1915, 0
  br i1 %.not.i.i1916, label %lean_inc.exit1115, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.agu = atomicrmw sub ptr %i.cy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1115

lean_inc.exit1115:                                ; preds = %bb.zt, %bb.zs, %bb.zr, %lean_inc.exit1117
  %i.agv = tail call ptr @l_Lean_Meta_Grind_Order_mkEqProofOfLeOfLe(ptr noundef %i.cy, ptr noundef %i.dw, ptr noundef %i.afu, ptr noundef %i.agj, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #5 ; 10 uses
  %i.agw = ptrtoint ptr %i.agv to i64             ; 2 uses
  %i.agx = and i64 %i.agw, 1
  %.not.i1918 = icmp eq i64 %i.agx, 0             ; 2 uses
  br i1 %.not.i1918, label %bb.zv, label %bb.zu

bb.zu:                                            ; preds = %lean_inc.exit1115
  %i.agy = lshr i64 %i.agw, 1
  %i.agz = trunc i64 %i.agy to i32
  br label %lean_obj_tag.exit1921

bb.zv:                                            ; preds = %lean_inc.exit1115
  %i.aha = getelementptr i8, ptr %i.agv, i64 4
  %.val.i1920 = load i32, ptr %i.aha, align 4
  %i.ahb = lshr i32 %.val.i1920, 24
  br label %lean_obj_tag.exit1921

lean_obj_tag.exit1921:                            ; preds = %bb.zu, %bb.zv
  %.0.i1919 = phi i32 [ %i.agz, %bb.zu ], [ %i.ahb, %bb.zv ]
  %i.ahc = icmp eq i32 %.0.i1919, 0
  br i1 %i.ahc, label %bb.zw, label %bb.aaz

bb.zw:                                            ; preds = %lean_obj_tag.exit1921
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !12 ; 5 uses
  %i.ahf = ptrtoint ptr %i.ahe to i64
  %i.ahg = and i64 %i.ahf, 1
  %.not.i1112 = icmp eq i64 %i.ahg, 0
  br i1 %.not.i1112, label %bb.zx, label %lean_inc.exit1113

bb.zx:                                            ; preds = %bb.zw
  %.val.i.i1922 = load i32, ptr %i.ahe, align 4, !tbaa !15 ; 3 uses
  %i.ahh = icmp sgt i32 %.val.i.i1922, 0
  br i1 %i.ahh, label %bb.zy, label %bb.zz, !prof !10

bb.zy:                                            ; preds = %bb.zx
  %i.ahi = add nuw i32 %.val.i.i1922, 1
  store i32 %i.ahi, ptr %i.ahe, align 4, !tbaa !15
  br label %lean_inc.exit1113

bb.zz:                                            ; preds = %bb.zx
  %.not.i.i1923 = icmp eq i32 %.val.i.i1922, 0
  br i1 %.not.i.i1923, label %lean_inc.exit1113, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.ahj = atomicrmw sub ptr %i.ahe, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1113

lean_inc.exit1113:                                ; preds = %bb.aaa, %bb.zz, %bb.zy, %bb.zw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.agv, i32 noundef 1)
  br i1 %.not.i1122, label %bb.aab, label %lean_dec.exit1238

bb.aab:                                           ; preds = %lean_inc.exit1113
  %i.ahk = load i32, ptr %i.aeu, align 4, !tbaa !15 ; 3 uses
  %i.ahl = icmp sgt i32 %i.ahk, 1
  br i1 %i.ahl, label %bb.aac, label %bb.aad, !prof !10

bb.aac:                                           ; preds = %bb.aab
  %i.ahm = add nsw i32 %i.ahk, -1
  store i32 %i.ahm, ptr %i.aeu, align 4, !tbaa !15
  br label %lean_dec.exit1238

bb.aad:                                           ; preds = %bb.aab
  %.not.i1466 = icmp eq i32 %i.ahk, 0
  br i1 %.not.i1466, label %lean_dec.exit1238, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aeu) #5
  br label %lean_dec.exit1238

lean_dec.exit1238:                                ; preds = %bb.aae, %bb.aad, %bb.aac, %lean_inc.exit1113
  br i1 %.not.i1184, label %bb.aaf, label %lean_inc.exit1111

bb.aaf:                                           ; preds = %lean_dec.exit1238
  %.val.i.i1925 = load i32, ptr %i.dw, align 4, !tbaa !15 ; 3 uses
  %i.ahn = icmp sgt i32 %.val.i.i1925, 0
  br i1 %i.ahn, label %bb.aag, label %bb.aah, !prof !10

bb.aag:                                           ; preds = %bb.aaf
  %i.aho = add nuw i32 %.val.i.i1925, 1
  store i32 %i.aho, ptr %i.dw, align 4, !tbaa !15
  br label %lean_inc.exit1111

bb.aah:                                           ; preds = %bb.aaf
  %.not.i.i1926 = icmp eq i32 %.val.i.i1925, 0
  br i1 %.not.i.i1926, label %lean_inc.exit1111, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %i.ahp = atomicrmw sub ptr %i.dw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1111

lean_inc.exit1111:                                ; preds = %bb.aai, %bb.aah, %bb.aag, %lean_dec.exit1238
  br i1 %.not.i1186, label %bb.aaj, label %lean_inc.exit1109

bb.aaj:                                           ; preds = %lean_inc.exit1111
  %.val.i.i1928 = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.ahq = icmp sgt i32 %.val.i.i1928, 0
  br i1 %i.ahq, label %bb.aak, label %bb.aal, !prof !10

bb.aak:                                           ; preds = %bb.aaj
  %i.ahr = add nuw i32 %.val.i.i1928, 1
  store i32 %i.ahr, ptr %i.cy, align 4, !tbaa !15
  br label %lean_inc.exit1109

bb.aal:                                           ; preds = %bb.aaj
  %.not.i.i1929 = icmp eq i32 %.val.i.i1928, 0
  br i1 %.not.i.i1929, label %lean_inc.exit1109, label %bb.aam

bb.aam:                                           ; preds = %bb.aal
  %i.ahs = atomicrmw sub ptr %i.cy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1109

lean_inc.exit1109:                                ; preds = %bb.aam, %bb.aal, %bb.aak, %lean_inc.exit1111
  %i.aht = tail call ptr @l_Lean_Meta_Grind_pushEqCore___redArg(ptr noundef %i.cy, ptr noundef %i.dw, ptr noundef %i.ahe, i8 noundef zeroext 0, ptr noundef %3, ptr noundef %5, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) #5 ; 7 uses
  %i.ahu = ptrtoint ptr %i.aht to i64             ; 2 uses
  %i.ahv = and i64 %i.ahu, 1
  %.not.i1931 = icmp eq i64 %i.ahv, 0
  br i1 %.not.i1931, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %lean_inc.exit1109
  %i.ahw = lshr i64 %i.ahu, 1
  %i.ahx = trunc i64 %i.ahw to i32
  br label %lean_obj_tag.exit1934

bb.aao:                                           ; preds = %lean_inc.exit1109
  %i.ahy = getelementptr i8, ptr %i.aht, i64 4
  %.val.i1933 = load i32, ptr %i.ahy, align 4
  %i.ahz = lshr i32 %.val.i1933, 24
  br label %lean_obj_tag.exit1934

lean_obj_tag.exit1934:                            ; preds = %bb.aan, %bb.aao
  %.0.i1932 = phi i32 [ %i.ahx, %bb.aan ], [ %i.ahz, %bb.aao ]
  %i.aia = icmp eq i32 %.0.i1932, 0
  br i1 %i.aia, label %bb.aap, label %bb.aaq

bb.aap:                                           ; preds = %lean_obj_tag.exit1934
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.aht, i32 noundef 1)
  br label %lean_dec.exit1234

bb.aaq:                                           ; preds = %lean_obj_tag.exit1934
  br i1 %.not.i1184, label %bb.aar, label %lean_dec.exit1236

bb.aar:                                           ; preds = %bb.aaq
  %i.aib = load i32, ptr %i.dw, align 4, !tbaa !15 ; 3 uses
  %i.aic = icmp sgt i32 %i.aib, 1
  br i1 %i.aic, label %bb.aas, label %bb.aat, !prof !10

bb.aas:                                           ; preds = %bb.aar
  %i.aid = add nsw i32 %i.aib, -1
  store i32 %i.aid, ptr %i.dw, align 4, !tbaa !15
  br label %lean_dec.exit1236

bb.aat:                                           ; preds = %bb.aar
  %.not.i1468 = icmp eq i32 %i.aib, 0
  br i1 %.not.i1468, label %lean_dec.exit1236, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dw) #5
  br label %lean_dec.exit1236

lean_dec.exit1236:                                ; preds = %bb.aau, %bb.aat, %bb.aas, %bb.aaq
  br i1 %.not.i1186, label %bb.aav, label %lean_dec_ref_known.exit.thread

bb.aav:                                           ; preds = %lean_dec.exit1236
  %i.aie = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.aif = icmp sgt i32 %i.aie, 1
  br i1 %i.aif, label %bb.aaw, label %bb.aax, !prof !10

bb.aaw:                                           ; preds = %bb.aav
  %i.aig = add nsw i32 %i.aie, -1
  store i32 %i.aig, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec_ref_known.exit.thread

bb.aax:                                           ; preds = %bb.aav
  %.not.i1470 = icmp eq i32 %i.aie, 0
  br i1 %.not.i1470, label %lean_dec_ref_known.exit.thread, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec_ref_known.exit.thread

bb.aaz:                                           ; preds = %lean_obj_tag.exit1921
  br i1 %.not.i1122, label %bb.aba, label %lean_dec.exit1232

bb.aba:                                           ; preds = %bb.aaz
  %i.aih = load i32, ptr %i.aeu, align 4, !tbaa !15 ; 3 uses
  %i.aii = icmp sgt i32 %i.aih, 1
  br i1 %i.aii, label %bb.abb, label %bb.abc, !prof !10

bb.abb:                                           ; preds = %bb.aba
  %i.aij = add nsw i32 %i.aih, -1
  store i32 %i.aij, ptr %i.aeu, align 4, !tbaa !15
  br label %lean_dec.exit1232

bb.abc:                                           ; preds = %bb.aba
  %.not.i1472 = icmp eq i32 %i.aih, 0
  br i1 %.not.i1472, label %lean_dec.exit1232, label %bb.abd

bb.abd:                                           ; preds = %bb.abc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aeu) #5
  br label %lean_dec.exit1232

lean_dec.exit1232:                                ; preds = %bb.abd, %bb.abc, %bb.abb, %bb.aaz
  br i1 %.not.i1184, label %bb.abe, label %lean_dec.exit1230

bb.abe:                                           ; preds = %lean_dec.exit1232
  %i.aik = load i32, ptr %i.dw, align 4, !tbaa !15 ; 3 uses
  %i.ail = icmp sgt i32 %i.aik, 1
  br i1 %i.ail, label %bb.abf, label %bb.abg, !prof !10

bb.abf:                                           ; preds = %bb.abe
  %i.aim = add nsw i32 %i.aik, -1
  store i32 %i.aim, ptr %i.dw, align 4, !tbaa !15
  br label %lean_dec.exit1230

bb.abg:                                           ; preds = %bb.abe
  %.not.i1474 = icmp eq i32 %i.aik, 0
  br i1 %.not.i1474, label %lean_dec.exit1230, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dw) #5
  br label %lean_dec.exit1230

lean_dec.exit1230:                                ; preds = %bb.abh, %bb.abg, %bb.abf, %lean_dec.exit1232
  br i1 %.not.i1186, label %bb.abi, label %lean_dec.exit1228

bb.abi:                                           ; preds = %lean_dec.exit1230
  %i.ain = load i32, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.aio = icmp sgt i32 %i.ain, 1
  br i1 %i.aio, label %bb.abj, label %bb.abk, !prof !10

bb.abj:                                           ; preds = %bb.abi
  %i.aip = add nsw i32 %i.ain, -1
  store i32 %i.aip, ptr %i.cy, align 4, !tbaa !15
  br label %lean_dec.exit1228

bb.abk:                                           ; preds = %bb.abi
  %.not.i1476 = icmp eq i32 %i.ain, 0
  br i1 %.not.i1476, label %lean_dec.exit1228, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cy) #5
  br label %lean_dec.exit1228

lean_dec.exit1228:                                ; preds = %bb.abl, %bb.abk, %bb.abj, %lean_dec.exit1230
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !12 ; 5 uses
  %.val1594 = load i32, ptr %i.agv, align 8, !tbaa !15
  %i.ais = icmp eq i32 %.val1594, 1
  br i1 %i.ais, label %lean_dec_ref_known.exit.thread, label %bb.abm

bb.abm:                                           ; preds = %lean_dec.exit1228
  %i.ait = ptrtoint ptr %i.air to i64
  %i.aiu = and i64 %i.ait, 1
  %.not.i1106 = icmp eq i64 %i.aiu, 0
  br i1 %.not.i1106, label %bb.abn, label %lean_inc.exit1107

bb.abn:                                           ; preds = %bb.abm
  %.val.i.i1935 = load i32, ptr %i.air, align 4, !tbaa !15 ; 3 uses
  %i.aiv = icmp sgt i32 %.val.i.i1935, 0
end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqTrue___boxed:bb.a
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.x, label %bb.y, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %7, align 4, !tbaa !15
  br label %lean_dec.exit31

bb.y:                                             ; preds = %bb.w
  %.not.i43 = icmp eq i32 %i.ab, 0
  br i1 %.not.i43, label %lean_dec.exit31, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #5
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.z, %bb.y, %bb.x, %lean_dec_ref.exit54
  %i.ae = load i32, ptr %6, align 4, !tbaa !15    ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.aa, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %lean_dec.exit31
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %6, align 4, !tbaa !15
  br label %lean_dec_ref.exit52

bb.ab:                                            ; preds = %lean_dec.exit31
  %.not.i51 = icmp eq i32 %i.ae, 0
  br i1 %.not.i51, label %lean_dec_ref.exit52, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #5
  br label %lean_dec_ref.exit52

lean_dec_ref.exit52:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ah = ptrtoint ptr %5 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i28 = icmp eq i64 %i.ai, 0
  br i1 %.not.i28, label %bb.ad, label %lean_dec.exit29

bb.ad:                                            ; preds = %lean_dec_ref.exit52
  %i.aj = load i32, ptr %5, align 4, !tbaa !15    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.ae, label %bb.af, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %5, align 4, !tbaa !15
  br label %lean_dec.exit29

bb.af:                                            ; preds = %bb.ad
  %.not.i45 = icmp eq i32 %i.aj, 0
  br i1 %.not.i45, label %lean_dec.exit29, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %lean_dec_ref.exit52
  %i.am = ptrtoint ptr %4 to i64
  %i.an = and i64 %i.am, 1
  %.not.i26 = icmp eq i64 %i.an, 0
  br i1 %.not.i26, label %bb.ah, label %lean_dec.exit27

bb.ah:                                            ; preds = %lean_dec.exit29
  %i.ao = load i32, ptr %4, align 4, !tbaa !15    ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ai, label %bb.aj, !prof !10

bb.ai:                                            ; preds = %bb.ah
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %4, align 4, !tbaa !15
  br label %lean_dec.exit27

bb.aj:                                            ; preds = %bb.ah
  %.not.i47 = icmp eq i32 %i.ao, 0
  br i1 %.not.i47, label %lean_dec.exit27, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.ak, %bb.aj, %bb.ai, %lean_dec.exit29
  %i.ar = ptrtoint ptr %3 to i64
  %i.as = and i64 %i.ar, 1
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %bb.al, label %lean_dec.exit

bb.al:                                            ; preds = %lean_dec.exit27
  %i.at = load i32, ptr %3, align 4, !tbaa !15    ; 3 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.am, label %bb.an, !prof !10

bb.am:                                            ; preds = %bb.al
  %i.av = add nsw i32 %i.at, -1
  store i32 %i.av, ptr %3, align 4, !tbaa !15
  br label %lean_dec.exit

bb.an:                                            ; preds = %bb.al
  %.not.i49 = icmp eq i32 %i.at, 0
  br i1 %.not.i49, label %lean_dec.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ao, %bb.an, %bb.am, %lean_dec.exit27
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_Grind_Order_isLinearPreorder(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #5 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i2400 = icmp eq i64 %i.c, 0               ; 3 uses
  br i1 %.not.i2400, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.ado

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 52 uses
  %.val2399 = load i32, ptr %i.a, align 8, !tbaa !15
  %i.k = icmp eq i32 %.val2399, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 19 uses
  br i1 %i.k, label %lean_dec.exit2085, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i1877 = icmp eq i64 %i.l, 0
  br i1 %.not.i1877, label %bb.f, label %lean_inc.exit1878

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !15 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !15
  br label %lean_inc.exit1878

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit1878, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1878

lean_inc.exit1878:                                ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i2400, label %bb.j, label %lean_dec.exit2085

bb.j:                                             ; preds = %lean_inc.exit1878
  %i.p = load i32, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !15
  br label %lean_dec.exit2085

bb.l:                                             ; preds = %bb.j
  %.not.i2086 = icmp eq i32 %i.p, 0
  br i1 %.not.i2086, label %lean_dec.exit2085, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #5
  br label %lean_dec.exit2085

lean_dec.exit2085:                                ; preds = %bb.d, %lean_inc.exit1878, %bb.k, %bb.l, %bb.m
  %.01511 = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %lean_inc.exit1878 ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 4 uses
  %i.s = lshr i64 %.pre, 1                        ; 2 uses
  %i.t = and i64 %.pre, 510
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %lean_dec.exit2085
  %i.v = and i64 %.pre, 1
  %.not.i2082 = icmp eq i64 %i.v, 0
  br i1 %.not.i2082, label %bb.o, label %lean_dec.exit2083

bb.o:                                             ; preds = %bb.n
  %i.w = load i32, ptr %i.j, align 4, !tbaa !15   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.p, label %bb.q, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.j, align 4, !tbaa !15
  br label %lean_dec.exit2083

bb.q:                                             ; preds = %bb.o
  %.not.i2087 = icmp eq i32 %i.w, 0
  br i1 %.not.i2087, label %lean_dec.exit2083, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec.exit2083

lean_dec.exit2083:                                ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  %i.z = load i32, ptr %2, align 4, !tbaa !15     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.s, label %bb.t, !prof !10

bb.s:                                             ; preds = %lean_dec.exit2083
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %2, align 4, !tbaa !15
  br label %lean_dec_ref.exit2380

bb.t:                                             ; preds = %lean_dec.exit2083
  %.not.i2379 = icmp eq i32 %i.z, 0
  br i1 %.not.i2379, label %lean_dec_ref.exit2380, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit2380

lean_dec_ref.exit2380:                            ; preds = %bb.s, %bb.t, %bb.u
  %i.ac = load i32, ptr %1, align 4, !tbaa !15    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.v, label %bb.w, !prof !10

bb.v:                                             ; preds = %lean_dec_ref.exit2380
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %1, align 4, !tbaa !15
  br label %lean_dec_ref.exit2378

bb.w:                                             ; preds = %lean_dec_ref.exit2380
  %.not.i2377 = icmp eq i32 %i.ac, 0
  br i1 %.not.i2377, label %lean_dec_ref.exit2378, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit2378

lean_dec_ref.exit2378:                            ; preds = %bb.v, %bb.w, %bb.x
  %i.af = load i32, ptr %0, align 4, !tbaa !15    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %lean_dec_ref.exit2378
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %0, align 4, !tbaa !15
  br label %lean_dec_ref.exit2376

bb.z:                                             ; preds = %lean_dec_ref.exit2378
  %.not.i2375 = icmp eq i32 %i.af, 0
  br i1 %.not.i2375, label %lean_dec_ref.exit2376, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit2376

lean_dec_ref.exit2376:                            ; preds = %bb.y, %bb.z, %bb.aa
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %lean_dec_ref.exit2376
  %i.ai = getelementptr inbounds nuw i8, ptr %.01511, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ai, align 8, !tbaa !12
  br label %lean_dec.exit2075

bb.ac:                                            ; preds = %lean_dec_ref.exit2376
  tail call void @lean_inc_heartbeat() #5
  %i.aj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.ad, label %lean_alloc_ctor.exit

bb.ad:                                            ; preds = %bb.ac
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ac
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !15
  store i32 65552, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.am, align 8, !tbaa !12
  br label %lean_dec.exit2075

bb.ae:                                            ; preds = %lean_dec.exit2085
  %i.an = ptrtoint ptr %.01511 to i64
  %i.ao = and i64 %i.an, 1
  %.not.i2401 = icmp eq i64 %i.ao, 0
  br i1 %.not.i2401, label %bb.af, label %lean_del_object.exit

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_free_object(ptr noundef nonnull %.01511) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ae, %bb.af
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %lean_dec_ref.exit2370, label %bb.ag

bb.ag:                                            ; preds = %lean_del_object.exit
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12
  %i.aw = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqTrue___closed__5_once seq_cst, align 4, !tbaa !23
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.ah, label %bb.ai, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.ay = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqTrue___closed__5, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.ai:                                            ; preds = %bb.ag
  %i.az = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqTrue___closed__5, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqTrue___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqTrue___closed__5) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ah, %bb.ai
  %.0.i2402 = phi ptr [ %i.ay, %bb.ah ], [ %i.az, %bb.ai ]
  %i.ba = tail call zeroext i8 @l___private_Lean_Util_Trace_0__Lean_checkTraceOption_go(ptr noundef %i.av, ptr noundef nonnull %i.aq, ptr noundef %.0.i2402) #5
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %lean_dec_ref.exit2370, label %bb.aj

bb.aj:                                            ; preds = %lean_obj_once.exit
  %i.bc = tail call ptr @l_Lean_Meta_Grind_Order_Cnstr_pp(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #5 ; 13 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = and i64 %i.bd, 1
  %.not.i2403 = icmp eq i64 %i.be, 0              ; 2 uses
  br i1 %.not.i2403, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = trunc i64 %i.bf to i32
  br label %lean_obj_tag.exit2406

bb.al:                                            ; preds = %bb.aj
  %i.bh = getelementptr i8, ptr %i.bc, i64 4
  %.val.i2405 = load i32, ptr %i.bh, align 4
  %i.bi = lshr i32 %.val.i2405, 24
  br label %lean_obj_tag.exit2406

lean_obj_tag.exit2406:                            ; preds = %bb.ak, %bb.al
  %.0.i2404 = phi i32 [ %i.bg, %bb.ak ], [ %i.bi, %bb.al ]
  %i.bj = icmp eq i32 %.0.i2404, 0
  br i1 %i.bj, label %bb.am, label %bb.bt

bb.am:                                            ; preds = %lean_obj_tag.exit2406
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !12 ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, 1
  %.not.i1875 = icmp eq i64 %i.bn, 0
  br i1 %.not.i1875, label %bb.an, label %lean_inc.exit1876

bb.an:                                            ; preds = %bb.am
  %.val.i.i2407 = load i32, ptr %i.bl, align 4, !tbaa !15 ; 3 uses
  %i.bo = icmp sgt i32 %.val.i.i2407, 0
  br i1 %i.bo, label %bb.ao, label %bb.ap, !prof !10

bb.ao:                                            ; preds = %bb.an
  %i.bp = add nuw i32 %.val.i.i2407, 1
  store i32 %i.bp, ptr %i.bl, align 4, !tbaa !15
  br label %lean_inc.exit1876

bb.ap:                                            ; preds = %bb.an
  %.not.i.i2408 = icmp eq i32 %.val.i.i2407, 0
  br i1 %.not.i.i2408, label %lean_inc.exit1876, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bq = atomicrmw sub ptr %i.bl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1876

lean_inc.exit1876:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i2410 = load i32, ptr %i.bc, align 8, !tbaa !15 ; 4 uses
  %i.br = icmp eq i32 %.val.i2410, 1
  br i1 %i.br, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit1876
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !12 ; 4 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, 1
  %.not.i.i2411 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i2411, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bv = load i32, ptr %i.bs, align 4, !tbaa !15 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.as, label %bb.at, !prof !10

bb.as:                                            ; preds = %bb.ar
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bs, align 4, !tbaa !15
  br label %lean_dec.exit.i

end_hunk_1
begin_hunk_2_@l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse:bb.a
  br label %lean_inc.exit1854

bb.kq:                                            ; preds = %bb.ko
  %.not.i.i2503 = icmp eq i32 %.val.i.i2502, 0
  br i1 %.not.i.i2503, label %lean_inc.exit1854, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.pl = atomicrmw sub ptr %i.pg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1854

lean_inc.exit1854:                                ; preds = %bb.kr, %bb.kq, %bb.kp, %lean_inc.exit1856
  %i.pm = load i32, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, 1
  br i1 %i.pn, label %bb.ks, label %bb.kt, !prof !10

bb.ks:                                            ; preds = %lean_inc.exit1854
  %i.po = add nsw i32 %i.pm, -1
  store i32 %i.po, ptr %0, align 8, !tbaa !15
  br label %lean_dec_ref.exit2356

bb.kt:                                            ; preds = %lean_inc.exit1854
  %.not.i2355 = icmp eq i32 %i.pm, 0
  br i1 %.not.i2355, label %lean_dec_ref.exit2356, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit2356

lean_dec_ref.exit2356:                            ; preds = %bb.ks, %bb.kt, %bb.ku
  %i.pp = tail call ptr @l_Lean_Meta_Grind_Order_mkLeLtLinearPrefix(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__18_value, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #5 ; 10 uses
  %i.pq = ptrtoint ptr %i.pp to i64               ; 2 uses
  %i.pr = and i64 %i.pq, 1
  %.not.i2505 = icmp eq i64 %i.pr, 0              ; 2 uses
  br i1 %.not.i2505, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %lean_dec_ref.exit2356
  %i.ps = lshr i64 %i.pq, 1
  %i.pt = trunc i64 %i.ps to i32
  br label %lean_obj_tag.exit2508

bb.kw:                                            ; preds = %lean_dec_ref.exit2356
  %i.pu = getelementptr i8, ptr %i.pp, i64 4
  %.val.i2507 = load i32, ptr %i.pu, align 4
  %i.pv = lshr i32 %.val.i2507, 24
  br label %lean_obj_tag.exit2508

lean_obj_tag.exit2508:                            ; preds = %bb.kv, %bb.kw
  %.0.i2506 = phi i32 [ %i.pt, %bb.kv ], [ %i.pv, %bb.kw ]
  %i.pw = icmp eq i32 %.0.i2506, 0
  br i1 %i.pw, label %bb.kx, label %bb.oi

bb.kx:                                            ; preds = %lean_obj_tag.exit2508
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !12 ; 11 uses
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = and i64 %i.pz, 1
  %.not.i1851 = icmp eq i64 %i.qa, 0              ; 3 uses
  br i1 %.not.i1851, label %bb.ky, label %lean_inc.exit1852

bb.ky:                                            ; preds = %bb.kx
  %.val.i.i2509 = load i32, ptr %i.py, align 4, !tbaa !15 ; 3 uses
  %i.qb = icmp sgt i32 %.val.i.i2509, 0
  br i1 %i.qb, label %bb.kz, label %bb.la, !prof !10

bb.kz:                                            ; preds = %bb.ky
  %i.qc = add nuw i32 %.val.i.i2509, 1
  store i32 %i.qc, ptr %i.py, align 4, !tbaa !15
  br label %lean_inc.exit1852

bb.la:                                            ; preds = %bb.ky
  %.not.i.i2510 = icmp eq i32 %.val.i.i2509, 0
  br i1 %.not.i.i2510, label %lean_inc.exit1852, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.qd = atomicrmw sub ptr %i.py, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1852

lean_inc.exit1852:                                ; preds = %bb.lb, %bb.la, %bb.kz, %bb.kx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.pp, i32 noundef 1)
  %i.qe = tail call ptr @l_Lean_Meta_Grind_Order_getExpr(ptr noundef %i.oz, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #5 ; 10 uses
  %i.qf = ptrtoint ptr %i.qe to i64               ; 2 uses
  %i.qg = and i64 %i.qf, 1
  %.not.i2512 = icmp eq i64 %i.qg, 0              ; 2 uses
  br i1 %.not.i2512, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %lean_inc.exit1852
  %i.qh = lshr i64 %i.qf, 1
  %i.qi = trunc i64 %i.qh to i32
  br label %lean_obj_tag.exit2515

bb.ld:                                            ; preds = %lean_inc.exit1852
  %i.qj = getelementptr i8, ptr %i.qe, i64 4
  %.val.i2514 = load i32, ptr %i.qj, align 4
  %i.qk = lshr i32 %.val.i2514, 24
  br label %lean_obj_tag.exit2515

lean_obj_tag.exit2515:                            ; preds = %bb.lc, %bb.ld
  %.0.i2513 = phi i32 [ %i.qi, %bb.lc ], [ %i.qk, %bb.ld ]
  %i.ql = icmp eq i32 %.0.i2513, 0
  br i1 %i.ql, label %bb.le, label %bb.ne

bb.le:                                            ; preds = %lean_obj_tag.exit2515
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !12 ; 8 uses
  %i.qo = ptrtoint ptr %i.qn to i64
  %i.qp = and i64 %i.qo, 1
  %.not.i1849 = icmp eq i64 %i.qp, 0              ; 2 uses
  br i1 %.not.i1849, label %bb.lf, label %lean_inc.exit1850

bb.lf:                                            ; preds = %bb.le
  %.val.i.i2516 = load i32, ptr %i.qn, align 4, !tbaa !15 ; 3 uses
  %i.qq = icmp sgt i32 %.val.i.i2516, 0
  br i1 %i.qq, label %bb.lg, label %bb.lh, !prof !10

bb.lg:                                            ; preds = %bb.lf
  %i.qr = add nuw i32 %.val.i.i2516, 1
  store i32 %i.qr, ptr %i.qn, align 4, !tbaa !15
  br label %lean_inc.exit1850

bb.lh:                                            ; preds = %bb.lf
  %.not.i.i2517 = icmp eq i32 %.val.i.i2516, 0
  br i1 %.not.i.i2517, label %lean_inc.exit1850, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.qs = atomicrmw sub ptr %i.qn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1850

lean_inc.exit1850:                                ; preds = %bb.li, %bb.lh, %bb.lg, %bb.le
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.qe, i32 noundef 1)
  %i.qt = tail call ptr @l_Lean_Meta_Grind_Order_getExpr(ptr noundef %i.pg, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #5 ; 10 uses
  %i.qu = ptrtoint ptr %i.qt to i64               ; 2 uses
  %i.qv = and i64 %i.qu, 1
  %.not.i2519 = icmp eq i64 %i.qv, 0              ; 2 uses
  br i1 %.not.i2519, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %lean_inc.exit1850
  %i.qw = lshr i64 %i.qu, 1
  %i.qx = trunc i64 %i.qw to i32
  br label %lean_obj_tag.exit2522

bb.lk:                                            ; preds = %lean_inc.exit1850
  %i.qy = getelementptr i8, ptr %i.qt, i64 4
  %.val.i2521 = load i32, ptr %i.qy, align 4
  %i.qz = lshr i32 %.val.i2521, 24
  br label %lean_obj_tag.exit2522

lean_obj_tag.exit2522:                            ; preds = %bb.lj, %bb.lk
  %.0.i2520 = phi i32 [ %i.qx, %bb.lj ], [ %i.qz, %bb.lk ]
  %i.ra = icmp eq i32 %.0.i2520, 0
  br i1 %i.ra, label %bb.ll, label %bb.lw

bb.ll:                                            ; preds = %lean_obj_tag.exit2522
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !12 ; 5 uses
  %i.rd = ptrtoint ptr %i.rc to i64
  %i.re = and i64 %i.rd, 1
  %.not.i1847 = icmp eq i64 %i.re, 0
  br i1 %.not.i1847, label %bb.lm, label %lean_inc.exit1848

bb.lm:                                            ; preds = %bb.ll
  %.val.i.i2523 = load i32, ptr %i.rc, align 4, !tbaa !15 ; 3 uses
  %i.rf = icmp sgt i32 %.val.i.i2523, 0
  br i1 %i.rf, label %bb.ln, label %bb.lo, !prof !10

bb.ln:                                            ; preds = %bb.lm
  %i.rg = add nuw i32 %.val.i.i2523, 1
  store i32 %i.rg, ptr %i.rc, align 4, !tbaa !15
  br label %lean_inc.exit1848

bb.lo:                                            ; preds = %bb.lm
  %.not.i.i2524 = icmp eq i32 %.val.i.i2523, 0
  br i1 %.not.i.i2524, label %lean_inc.exit1848, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.rh = atomicrmw sub ptr %i.rc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1848

lean_inc.exit1848:                                ; preds = %bb.lp, %bb.lo, %bb.ln, %bb.ll
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.qt, i32 noundef 1)
  %i.ri = tail call ptr @l_Lean_mkApp3(ptr noundef %i.py, ptr noundef %i.qn, ptr noundef %i.rc, ptr noundef %.01657) #5
  %i.rj = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4_once seq_cst, align 4, !tbaa !23
  %i.rk = icmp eq i32 %i.rj, 1
  br i1 %i.rk, label %bb.lq, label %bb.lr, !prof !10

bb.lq:                                            ; preds = %lean_inc.exit1848
  %i.rl = load ptr, ptr @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4, align 8, !tbaa !12
  br label %lean_obj_once.exit2527

bb.lr:                                            ; preds = %lean_inc.exit1848
  %i.rm = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__4) #5
  br label %lean_obj_once.exit2527

lean_obj_once.exit2527:                           ; preds = %bb.lq, %bb.lr
  %.0.i2526 = phi ptr [ %i.rl, %bb.lq ], [ %i.rm, %bb.lr ]
  %i.rn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 1) ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %.0.i2526, ptr %i.ro, align 8, !tbaa !12
  br i1 %.not.i1857, label %bb.ls, label %lean_dec.exit2027

bb.ls:                                            ; preds = %lean_obj_once.exit2527
  %i.rp = load i32, ptr %i.oc, align 4, !tbaa !15 ; 3 uses
  %i.rq = icmp sgt i32 %i.rp, 1
  br i1 %i.rq, label %bb.lt, label %bb.lu, !prof !10

bb.lt:                                            ; preds = %bb.ls
  %i.rr = add nsw i32 %i.rp, -1
  store i32 %i.rr, ptr %i.oc, align 4, !tbaa !15
  br label %lean_dec.exit2027

bb.lu:                                            ; preds = %bb.ls
  %.not.i2143 = icmp eq i32 %i.rp, 0
  br i1 %.not.i2143, label %lean_dec.exit2027, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oc) #5
  br label %lean_dec.exit2027

lean_dec.exit2027:                                ; preds = %bb.lv, %bb.lu, %bb.lt, %lean_obj_once.exit2527
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store i8 0, ptr %i.rs, align 8, !tbaa !19
  %i.rt = tail call ptr @l_Lean_Meta_Grind_Order_addEdge(ptr noundef %i.pg, ptr noundef %i.oz, ptr noundef nonnull %i.rn, ptr noundef %i.ri, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13)
  br label %lean_dec.exit2075

bb.lw:                                            ; preds = %lean_obj_tag.exit2522
  br i1 %.not.i1849, label %bb.lx, label %lean_dec.exit2025

bb.lx:                                            ; preds = %bb.lw
  %i.ru = load i32, ptr %i.qn, align 4, !tbaa !15 ; 3 uses
  %i.rv = icmp sgt i32 %i.ru, 1
  br i1 %i.rv, label %bb.ly, label %bb.lz, !prof !10

bb.ly:                                            ; preds = %bb.lx
  %i.rw = add nsw i32 %i.ru, -1
  store i32 %i.rw, ptr %i.qn, align 4, !tbaa !15
  br label %lean_dec.exit2025

bb.lz:                                            ; preds = %bb.lx
  %.not.i2145 = icmp eq i32 %i.ru, 0
  br i1 %.not.i2145, label %lean_dec.exit2025, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qn) #5
  br label %lean_dec.exit2025

lean_dec.exit2025:                                ; preds = %bb.ma, %bb.lz, %bb.ly, %bb.lw
  br i1 %.not.i1851, label %bb.mb, label %lean_dec.exit2023

bb.mb:                                            ; preds = %lean_dec.exit2025
  %i.rx = load i32, ptr %i.py, align 4, !tbaa !15 ; 3 uses
  %i.ry = icmp sgt i32 %i.rx, 1
  br i1 %i.ry, label %bb.mc, label %bb.md, !prof !10

bb.mc:                                            ; preds = %bb.mb
  %i.rz = add nsw i32 %i.rx, -1
  store i32 %i.rz, ptr %i.py, align 4, !tbaa !15
  br label %lean_dec.exit2023

bb.md:                                            ; preds = %bb.mb
  %.not.i2147 = icmp eq i32 %i.rx, 0
  br i1 %.not.i2147, label %lean_dec.exit2023, label %bb.me

bb.me:                                            ; preds = %bb.md
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.py) #5
  br label %lean_dec.exit2023

lean_dec.exit2023:                                ; preds = %bb.me, %bb.md, %bb.mc, %lean_dec.exit2025
  br i1 %.not.i1853, label %bb.mf, label %lean_dec.exit2021

bb.mf:                                            ; preds = %lean_dec.exit2023
  %i.sa = load i32, ptr %i.pg, align 4, !tbaa !15 ; 3 uses
  %i.sb = icmp sgt i32 %i.sa, 1
  br i1 %i.sb, label %bb.mg, label %bb.mh, !prof !10

bb.mg:                                            ; preds = %bb.mf
  %i.sc = add nsw i32 %i.sa, -1
  store i32 %i.sc, ptr %i.pg, align 4, !tbaa !15
  br label %lean_dec.exit2021

bb.mh:                                            ; preds = %bb.mf
  %.not.i2149 = icmp eq i32 %i.sa, 0
  br i1 %.not.i2149, label %lean_dec.exit2021, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pg) #5
  br label %lean_dec.exit2021

lean_dec.exit2021:                                ; preds = %bb.mi, %bb.mh, %bb.mg, %lean_dec.exit2023
  br i1 %.not.i1855, label %bb.mj, label %lean_dec.exit2019

bb.mj:                                            ; preds = %lean_dec.exit2021
  %i.sd = load i32, ptr %i.oz, align 4, !tbaa !15 ; 3 uses
  %i.se = icmp sgt i32 %i.sd, 1
  br i1 %i.se, label %bb.mk, label %bb.ml, !prof !10

bb.mk:                                            ; preds = %bb.mj
  %i.sf = add nsw i32 %i.sd, -1
  store i32 %i.sf, ptr %i.oz, align 4, !tbaa !15
  br label %lean_dec.exit2019

bb.ml:                                            ; preds = %bb.mj
  %.not.i2151 = icmp eq i32 %i.sd, 0
  br i1 %.not.i2151, label %lean_dec.exit2019, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oz) #5
  br label %lean_dec.exit2019

lean_dec.exit2019:                                ; preds = %bb.mm, %bb.ml, %bb.mk, %lean_dec.exit2021
  br i1 %.not.i1857, label %bb.mn, label %lean_dec.exit2017

bb.mn:                                            ; preds = %lean_dec.exit2019
  %i.sg = load i32, ptr %i.oc, align 4, !tbaa !15 ; 3 uses
  %i.sh = icmp sgt i32 %i.sg, 1
  br i1 %i.sh, label %bb.mo, label %bb.mp, !prof !10

bb.mo:                                            ; preds = %bb.mn
  %i.si = add nsw i32 %i.sg, -1
  store i32 %i.si, ptr %i.oc, align 4, !tbaa !15
  br label %lean_dec.exit2017

bb.mp:                                            ; preds = %bb.mn
  %.not.i2153 = icmp eq i32 %i.sg, 0
  br i1 %.not.i2153, label %lean_dec.exit2017, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oc) #5
  br label %lean_dec.exit2017

lean_dec.exit2017:                                ; preds = %bb.mq, %bb.mp, %bb.mo, %lean_dec.exit2019
  %i.sj = load i32, ptr %.01657, align 4, !tbaa !15 ; 3 uses
  %i.sk = icmp sgt i32 %i.sj, 1
  br i1 %i.sk, label %bb.mr, label %bb.ms, !prof !10

bb.mr:                                            ; preds = %lean_dec.exit2017
  %i.sl = add nsw i32 %i.sj, -1
  store i32 %i.sl, ptr %.01657, align 4, !tbaa !15
  br label %lean_dec_ref.exit2354

bb.ms:                                            ; preds = %lean_dec.exit2017
  %.not.i2353 = icmp eq i32 %i.sj, 0
  br i1 %.not.i2353, label %lean_dec_ref.exit2354, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01657) #5
  br label %lean_dec_ref.exit2354

lean_dec_ref.exit2354:                            ; preds = %bb.mr, %bb.ms, %bb.mt
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !12 ; 5 uses
  %.val2394 = load i32, ptr %i.qt, align 8, !tbaa !15
  %i.so = icmp eq i32 %.val2394, 1
  br i1 %i.so, label %lean_dec.exit2075, label %bb.mu

bb.mu:                                            ; preds = %lean_dec_ref.exit2354
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = and i64 %i.sp, 1
  %.not.i1845 = icmp eq i64 %i.sq, 0
  br i1 %.not.i1845, label %bb.mv, label %lean_inc.exit1846

bb.mv:                                            ; preds = %bb.mu
  %.val.i.i2528 = load i32, ptr %i.sn, align 4, !tbaa !15 ; 3 uses
  %i.sr = icmp sgt i32 %.val.i.i2528, 0
  br i1 %i.sr, label %bb.mw, label %bb.mx, !prof !10

bb.mw:                                            ; preds = %bb.mv
  %i.ss = add nuw i32 %.val.i.i2528, 1
  store i32 %i.ss, ptr %i.sn, align 4, !tbaa !15
  br label %lean_inc.exit1846

bb.mx:                                            ; preds = %bb.mv
  %.not.i.i2529 = icmp eq i32 %.val.i.i2528, 0
  br i1 %.not.i.i2529, label %lean_inc.exit1846, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.st = atomicrmw sub ptr %i.sn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1846

lean_inc.exit1846:                                ; preds = %bb.my, %bb.mx, %bb.mw, %bb.mu
  br i1 %.not.i2519, label %bb.mz, label %bb.nd

bb.mz:                                            ; preds = %lean_inc.exit1846
  %i.su = load i32, ptr %i.qt, align 8, !tbaa !15 ; 3 uses
  %i.sv = icmp sgt i32 %i.su, 1
  br i1 %i.sv, label %bb.na, label %bb.nb, !prof !10

bb.na:                                            ; preds = %bb.mz
  %i.sw = add nsw i32 %i.su, -1
  store i32 %i.sw, ptr %i.qt, align 8, !tbaa !15
  br label %bb.nd

bb.nb:                                            ; preds = %bb.mz
  %.not.i2155 = icmp eq i32 %i.su, 0
  br i1 %.not.i2155, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qt) #5
  br label %bb.nd

bb.nd:                                            ; preds = %lean_inc.exit1846, %bb.na, %bb.nb, %bb.nc
  %i.sx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store ptr %i.sn, ptr %i.sy, align 8, !tbaa !12
  br label %lean_dec.exit2075

bb.ne:                                            ; preds = %lean_obj_tag.exit2515
  br i1 %.not.i1851, label %bb.nf, label %lean_dec.exit2013

bb.nf:                                            ; preds = %bb.ne
  %i.sz = load i32, ptr %i.py, align 4, !tbaa !15 ; 3 uses
  %i.ta = icmp sgt i32 %i.sz, 1
  br i1 %i.ta, label %bb.ng, label %bb.nh, !prof !10

bb.ng:                                            ; preds = %bb.nf
  %i.tb = add nsw i32 %i.sz, -1
  store i32 %i.tb, ptr %i.py, align 4, !tbaa !15
  br label %lean_dec.exit2013

bb.nh:                                            ; preds = %bb.nf
  %.not.i2157 = icmp eq i32 %i.sz, 0
  br i1 %.not.i2157, label %lean_dec.exit2013, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.py) #5
  br label %lean_dec.exit2013

lean_dec.exit2013:                                ; preds = %bb.ni, %bb.nh, %bb.ng, %bb.ne
  br i1 %.not.i1853, label %bb.nj, label %lean_dec.exit2011

bb.nj:                                            ; preds = %lean_dec.exit2013
  %i.tc = load i32, ptr %i.pg, align 4, !tbaa !15 ; 3 uses
  %i.td = icmp sgt i32 %i.tc, 1
  br i1 %i.td, label %bb.nk, label %bb.nl, !prof !10

bb.nk:                                            ; preds = %bb.nj
  %i.te = add nsw i32 %i.tc, -1
  store i32 %i.te, ptr %i.pg, align 4, !tbaa !15
  br label %lean_dec.exit2011

bb.nl:                                            ; preds = %bb.nj
  %.not.i2159 = icmp eq i32 %i.tc, 0
  br i1 %.not.i2159, label %lean_dec.exit2011, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pg) #5
  br label %lean_dec.exit2011

lean_dec.exit2011:                                ; preds = %bb.nm, %bb.nl, %bb.nk, %lean_dec.exit2013
  br i1 %.not.i1855, label %bb.nn, label %lean_dec.exit2009

bb.nn:                                            ; preds = %lean_dec.exit2011
  %i.tf = load i32, ptr %i.oz, align 4, !tbaa !15 ; 3 uses
  %i.tg = icmp sgt i32 %i.tf, 1
  br i1 %i.tg, label %bb.no, label %bb.np, !prof !10

bb.no:                                            ; preds = %bb.nn
  %i.th = add nsw i32 %i.tf, -1
  store i32 %i.th, ptr %i.oz, align 4, !tbaa !15
  br label %lean_dec.exit2009

bb.np:                                            ; preds = %bb.nn
  %.not.i2161 = icmp eq i32 %i.tf, 0
  br i1 %.not.i2161, label %lean_dec.exit2009, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oz) #5
  br label %lean_dec.exit2009

lean_dec.exit2009:                                ; preds = %bb.nq, %bb.np, %bb.no, %lean_dec.exit2011
  br i1 %.not.i1857, label %bb.nr, label %lean_dec.exit2007

bb.nr:                                            ; preds = %lean_dec.exit2009
  %i.ti = load i32, ptr %i.oc, align 4, !tbaa !15 ; 3 uses
  %i.tj = icmp sgt i32 %i.ti, 1
  br i1 %i.tj, label %bb.ns, label %bb.nt, !prof !10

bb.ns:                                            ; preds = %bb.nr
  %i.tk = add nsw i32 %i.ti, -1
  store i32 %i.tk, ptr %i.oc, align 4, !tbaa !15
  br label %lean_dec.exit2007

bb.nt:                                            ; preds = %bb.nr
  %.not.i2163 = icmp eq i32 %i.ti, 0
  br i1 %.not.i2163, label %lean_dec.exit2007, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oc) #5
  br label %lean_dec.exit2007

lean_dec.exit2007:                                ; preds = %bb.nu, %bb.nt, %bb.ns, %lean_dec.exit2009
  %i.tl = load i32, ptr %.01657, align 4, !tbaa !15 ; 3 uses
  %i.tm = icmp sgt i32 %i.tl, 1
  br i1 %i.tm, label %bb.nv, label %bb.nw, !prof !10

bb.nv:                                            ; preds = %lean_dec.exit2007
  %i.tn = add nsw i32 %i.tl, -1
  store i32 %i.tn, ptr %.01657, align 4, !tbaa !15
  br label %lean_dec_ref.exit2352

bb.nw:                                            ; preds = %lean_dec.exit2007
  %.not.i2351 = icmp eq i32 %i.tl, 0
  br i1 %.not.i2351, label %lean_dec_ref.exit2352, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01657) #5
  br label %lean_dec_ref.exit2352

lean_dec_ref.exit2352:                            ; preds = %bb.nv, %bb.nw, %bb.nx
  %i.to = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !12 ; 5 uses
  %.val2393 = load i32, ptr %i.qe, align 8, !tbaa !15
  %i.tq = icmp eq i32 %.val2393, 1
  br i1 %i.tq, label %lean_dec.exit2075, label %bb.ny

bb.ny:                                            ; preds = %lean_dec_ref.exit2352
  %i.tr = ptrtoint ptr %i.tp to i64
  %i.ts = and i64 %i.tr, 1
  %.not.i1843 = icmp eq i64 %i.ts, 0
  br i1 %.not.i1843, label %bb.nz, label %lean_inc.exit1844

bb.nz:                                            ; preds = %bb.ny
  %.val.i.i2531 = load i32, ptr %i.tp, align 4, !tbaa !15 ; 3 uses
  %i.tt = icmp sgt i32 %.val.i.i2531, 0
  br i1 %i.tt, label %bb.oa, label %bb.ob, !prof !10

bb.oa:                                            ; preds = %bb.nz
  %i.tu = add nuw i32 %.val.i.i2531, 1
  store i32 %i.tu, ptr %i.tp, align 4, !tbaa !15
  br label %lean_inc.exit1844

bb.ob:                                            ; preds = %bb.nz
  %.not.i.i2532 = icmp eq i32 %.val.i.i2531, 0
  br i1 %.not.i.i2532, label %lean_inc.exit1844, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.tv = atomicrmw sub ptr %i.tp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1844

lean_inc.exit1844:                                ; preds = %bb.oc, %bb.ob, %bb.oa, %bb.ny
  br i1 %.not.i2512, label %bb.od, label %bb.oh

bb.od:                                            ; preds = %lean_inc.exit1844
  %i.tw = load i32, ptr %i.qe, align 8, !tbaa !15 ; 3 uses
  %i.tx = icmp sgt i32 %i.tw, 1
  br i1 %i.tx, label %bb.oe, label %bb.of, !prof !10

bb.oe:                                            ; preds = %bb.od
  %i.ty = add nsw i32 %i.tw, -1
  store i32 %i.ty, ptr %i.qe, align 8, !tbaa !15
  br label %bb.oh

bb.of:                                            ; preds = %bb.od
  %.not.i2165 = icmp eq i32 %i.tw, 0
  br i1 %.not.i2165, label %bb.oh, label %bb.og

bb.og:                                            ; preds = %bb.of
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.qe) #5
  br label %bb.oh

bb.oh:                                            ; preds = %lean_inc.exit1844, %bb.oe, %bb.of, %bb.og
  %i.tz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store ptr %i.tp, ptr %i.ua, align 8, !tbaa !12
  br label %lean_dec.exit2075

bb.oi:                                            ; preds = %lean_obj_tag.exit2508
  br i1 %.not.i1853, label %bb.oj, label %lean_dec.exit2003

bb.oj:                                            ; preds = %bb.oi
  %i.ub = load i32, ptr %i.pg, align 4, !tbaa !15 ; 3 uses
  %i.uc = icmp sgt i32 %i.ub, 1
  br i1 %i.uc, label %bb.ok, label %bb.ol, !prof !10

bb.ok:                                            ; preds = %bb.oj
  %i.ud = add nsw i32 %i.ub, -1
  store i32 %i.ud, ptr %i.pg, align 4, !tbaa !15
  br label %lean_dec.exit2003

bb.ol:                                            ; preds = %bb.oj
  %.not.i2167 = icmp eq i32 %i.ub, 0
  br i1 %.not.i2167, label %lean_dec.exit2003, label %bb.om

bb.om:                                            ; preds = %bb.ol
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pg) #5
  br label %lean_dec.exit2003

lean_dec.exit2003:                                ; preds = %bb.om, %bb.ol, %bb.ok, %bb.oi
  br i1 %.not.i1855, label %bb.on, label %lean_dec.exit2001

bb.on:                                            ; preds = %lean_dec.exit2003
  %i.ue = load i32, ptr %i.oz, align 4, !tbaa !15 ; 3 uses
  %i.uf = icmp sgt i32 %i.ue, 1
  br i1 %i.uf, label %bb.oo, label %bb.op, !prof !10

bb.oo:                                            ; preds = %bb.on
  %i.ug = add nsw i32 %i.ue, -1
  store i32 %i.ug, ptr %i.oz, align 4, !tbaa !15
  br label %lean_dec.exit2001

bb.op:                                            ; preds = %bb.on
  %.not.i2169 = icmp eq i32 %i.ue, 0
  br i1 %.not.i2169, label %lean_dec.exit2001, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oz) #5
  br label %lean_dec.exit2001

lean_dec.exit2001:                                ; preds = %bb.oq, %bb.op, %bb.oo, %lean_dec.exit2003
  br i1 %.not.i1857, label %bb.or, label %lean_dec.exit1999

bb.or:                                            ; preds = %lean_dec.exit2001
  %i.uh = load i32, ptr %i.oc, align 4, !tbaa !15 ; 3 uses
  %i.ui = icmp sgt i32 %i.uh, 1
  br i1 %i.ui, label %bb.os, label %bb.ot, !prof !10

bb.os:                                            ; preds = %bb.or
  %i.uj = add nsw i32 %i.uh, -1
  store i32 %i.uj, ptr %i.oc, align 4, !tbaa !15
  br label %lean_dec.exit1999

bb.ot:                                            ; preds = %bb.or
  %.not.i2171 = icmp eq i32 %i.uh, 0
  br i1 %.not.i2171, label %lean_dec.exit1999, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oc) #5
  br label %lean_dec.exit1999

lean_dec.exit1999:                                ; preds = %bb.ou, %bb.ot, %bb.os, %lean_dec.exit2001
  %i.uk = load i32, ptr %.01657, align 4, !tbaa !15 ; 3 uses
  %i.ul = icmp sgt i32 %i.uk, 1
  br i1 %i.ul, label %bb.ov, label %bb.ow, !prof !10

bb.ov:                                            ; preds = %lean_dec.exit1999
  %i.um = add nsw i32 %i.uk, -1
  store i32 %i.um, ptr %.01657, align 4, !tbaa !15
  br label %lean_dec_ref.exit2350

bb.ow:                                            ; preds = %lean_dec.exit1999
  %.not.i2349 = icmp eq i32 %i.uk, 0
  br i1 %.not.i2349, label %lean_dec_ref.exit2350, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01657) #5
  br label %lean_dec_ref.exit2350

lean_dec_ref.exit2350:                            ; preds = %bb.ov, %bb.ow, %bb.ox
  %i.un = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !12 ; 5 uses
  %.val2392 = load i32, ptr %i.pp, align 8, !tbaa !15
  %i.up = icmp eq i32 %.val2392, 1
  br i1 %i.up, label %lean_dec.exit2075, label %bb.oy

bb.oy:                                            ; preds = %lean_dec_ref.exit2350
  %i.uq = ptrtoint ptr %i.uo to i64
  %i.ur = and i64 %i.uq, 1
  %.not.i1841 = icmp eq i64 %i.ur, 0
  br i1 %.not.i1841, label %bb.oz, label %lean_inc.exit1842

bb.oz:                                            ; preds = %bb.oy
  %.val.i.i2534 = load i32, ptr %i.uo, align 4, !tbaa !15 ; 3 uses
  %i.us = icmp sgt i32 %.val.i.i2534, 0
  br i1 %i.us, label %bb.pa, label %bb.pb, !prof !10

bb.pa:                                            ; preds = %bb.oz
  %i.ut = add nuw i32 %.val.i.i2534, 1
  store i32 %i.ut, ptr %i.uo, align 4, !tbaa !15
  br label %lean_inc.exit1842

bb.pb:                                            ; preds = %bb.oz
  %.not.i.i2535 = icmp eq i32 %.val.i.i2534, 0
  br i1 %.not.i.i2535, label %lean_inc.exit1842, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.uu = atomicrmw sub ptr %i.uo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1842

lean_inc.exit1842:                                ; preds = %bb.pc, %bb.pb, %bb.pa, %bb.oy
  br i1 %.not.i2505, label %bb.pd, label %bb.ph

bb.pd:                                            ; preds = %lean_inc.exit1842
  %i.uv = load i32, ptr %i.pp, align 8, !tbaa !15 ; 3 uses
  %i.uw = icmp sgt i32 %i.uv, 1
  br i1 %i.uw, label %bb.pe, label %bb.pf, !prof !10

bb.pe:                                            ; preds = %bb.pd
  %i.ux = add nsw i32 %i.uv, -1
  store i32 %i.ux, ptr %i.pp, align 8, !tbaa !15
  br label %bb.ph

bb.pf:                                            ; preds = %bb.pd
  %.not.i2173 = icmp eq i32 %i.uv, 0
  br i1 %.not.i2173, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pp) #5
  br label %bb.ph

bb.ph:                                            ; preds = %lean_inc.exit1842, %bb.pe, %bb.pf, %bb.pg
  %i.uy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store ptr %i.uo, ptr %i.uz, align 8, !tbaa !12
  br label %lean_dec.exit2075

bb.pi:                                            ; preds = %bb.ke
  br i1 %.not.i1857, label %bb.pj, label %lean_dec.exit1995

bb.pj:                                            ; preds = %bb.pi
  %i.va = load i32, ptr %i.oc, align 4, !tbaa !15 ; 3 uses
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %bb.pk, label %bb.pl, !prof !10

bb.pk:                                            ; preds = %bb.pj
  %i.vc = add nsw i32 %i.va, -1
  store i32 %i.vc, ptr %i.oc, align 4, !tbaa !15
  br label %lean_dec.exit1995

bb.pl:                                            ; preds = %bb.pj
  %.not.i2175 = icmp eq i32 %i.va, 0
  br i1 %.not.i2175, label %lean_dec.exit1995, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oc) #5
  br label %lean_dec.exit1995

lean_dec.exit1995:                                ; preds = %bb.pm, %bb.pl, %bb.pk, %bb.pi
  %i.vd = load ptr, ptr %i.alq, align 8, !tbaa !12 ; 29 uses
  %i.ve = ptrtoint ptr %i.vd to i64
  %i.vf = and i64 %i.ve, 1
  %.not.i1839 = icmp eq i64 %i.vf, 0              ; 8 uses
  br i1 %.not.i1839, label %bb.pn, label %lean_inc.exit1840

bb.pn:                                            ; preds = %lean_dec.exit1995
  %.val.i.i2537 = load i32, ptr %i.vd, align 4, !tbaa !15 ; 3 uses
  %i.vg = icmp sgt i32 %.val.i.i2537, 0
  br i1 %i.vg, label %bb.po, label %bb.pp, !prof !10

bb.po:                                            ; preds = %bb.pn
  %i.vh = add nuw i32 %.val.i.i2537, 1
  store i32 %i.vh, ptr %i.vd, align 4, !tbaa !15
  br label %lean_inc.exit1840

bb.pp:                                            ; preds = %bb.pn
  %.not.i.i2538 = icmp eq i32 %.val.i.i2537, 0
  br i1 %.not.i.i2538, label %lean_inc.exit1840, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.vi = atomicrmw sub ptr %i.vd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1840

lean_inc.exit1840:                                ; preds = %bb.pq, %bb.pp, %bb.po, %lean_dec.exit1995
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !12 ; 29 uses
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = and i64 %i.vl, 1
  %.not.i1837 = icmp eq i64 %i.vm, 0              ; 8 uses
  br i1 %.not.i1837, label %bb.pr, label %lean_inc.exit1838

bb.pr:                                            ; preds = %lean_inc.exit1840
  %.val.i.i2540 = load i32, ptr %i.vk, align 4, !tbaa !15 ; 3 uses
  %i.vn = icmp sgt i32 %.val.i.i2540, 0
  br i1 %i.vn, label %bb.ps, label %bb.pt, !prof !10

bb.ps:                                            ; preds = %bb.pr
  %i.vo = add nuw i32 %.val.i.i2540, 1
  store i32 %i.vo, ptr %i.vk, align 4, !tbaa !15
  br label %lean_inc.exit1838

bb.pt:                                            ; preds = %bb.pr
  %.not.i.i2541 = icmp eq i32 %.val.i.i2540, 0
  br i1 %.not.i.i2541, label %lean_inc.exit1838, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.vp = atomicrmw sub ptr %i.vk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1838

lean_inc.exit1838:                                ; preds = %bb.pu, %bb.pt, %bb.ps, %lean_inc.exit1840
  %i.vq = load i32, ptr %0, align 8, !tbaa !15    ; 3 uses
  %i.vr = icmp sgt i32 %i.vq, 1
  br i1 %i.vr, label %bb.pv, label %bb.pw, !prof !10

bb.pv:                                            ; preds = %lean_inc.exit1838
  %i.vs = add nsw i32 %i.vq, -1
  store i32 %i.vs, ptr %0, align 8, !tbaa !15
  br label %lean_dec_ref.exit2348

bb.pw:                                            ; preds = %lean_inc.exit1838
  %.not.i2347 = icmp eq i32 %i.vq, 0
  br i1 %.not.i2347, label %lean_dec_ref.exit2348, label %bb.px

bb.px:                                            ; preds = %bb.pw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit2348

lean_dec_ref.exit2348:                            ; preds = %bb.pv, %bb.pw, %bb.px
  %i.vt = tail call ptr @l_Lean_Meta_Grind_Order_hasLt(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #5 ; 11 uses
  %i.vu = ptrtoint ptr %i.vt to i64               ; 2 uses
  %i.vv = and i64 %i.vu, 1
  %.not.i2543 = icmp eq i64 %i.vv, 0              ; 2 uses
  br i1 %.not.i2543, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %lean_dec_ref.exit2348
  %i.vw = lshr i64 %i.vu, 1
  %i.vx = trunc i64 %i.vw to i32
  br label %lean_obj_tag.exit2546

bb.pz:                                            ; preds = %lean_dec_ref.exit2348
  %i.vy = getelementptr i8, ptr %i.vt, i64 4
  %.val.i2545 = load i32, ptr %i.vy, align 4
  %i.vz = lshr i32 %.val.i2545, 24
  br label %lean_obj_tag.exit2546

lean_obj_tag.exit2546:                            ; preds = %bb.py, %bb.pz
  %.0.i2544 = phi i32 [ %i.vx, %bb.py ], [ %i.vz, %bb.pz ]
  %i.wa = icmp eq i32 %.0.i2544, 0
  br i1 %i.wa, label %bb.qa, label %bb.zo

bb.qa:                                            ; preds = %lean_obj_tag.exit2546
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !12 ; 19 uses
  %i.wd = ptrtoint ptr %i.wc to i64               ; 3 uses
  %i.we = and i64 %i.wd, 1
  %.not.i1835 = icmp eq i64 %i.we, 0              ; 5 uses
  br i1 %.not.i1835, label %bb.qb, label %lean_inc.exit1836.thread

bb.qb:                                            ; preds = %bb.qa
  %.val.i.i2547 = load i32, ptr %i.wc, align 4, !tbaa !15 ; 3 uses
  %i.wf = icmp sgt i32 %.val.i.i2547, 0
  br i1 %i.wf, label %bb.qc, label %bb.qd, !prof !10

bb.qc:                                            ; preds = %bb.qb
  %i.wg = add nuw i32 %.val.i.i2547, 1
  store i32 %i.wg, ptr %i.wc, align 4, !tbaa !15
  br label %lean_inc.exit1836

bb.qd:                                            ; preds = %bb.qb
  %.not.i.i2548 = icmp eq i32 %.val.i.i2547, 0
  br i1 %.not.i.i2548, label %lean_inc.exit1836, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.wh = atomicrmw sub ptr %i.wc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1836

lean_inc.exit1836:                                ; preds = %bb.qe, %bb.qd, %bb.qc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.vt, i32 noundef 1)
  %i.wi = and i64 %i.wd, 510
  %i.wj = icmp eq i64 %i.wi, 0
  br i1 %i.wj, label %bb.qf, label %bb.ux

lean_inc.exit1836.thread:                         ; preds = %bb.qa
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.vt, i32 noundef 1)
  %i.wk = and i64 %i.wd, 510
  %i.wl = icmp eq i64 %i.wk, 0
  br i1 %i.wl, label %bb.qf, label %lean_dec.exit1959

bb.qf:                                            ; preds = %lean_inc.exit1836.thread, %lean_inc.exit1836
  %i.wm = and i64 %.pre, 1
  %.not.i1992 = icmp eq i64 %i.wm, 0
  br i1 %.not.i1992, label %bb.qg, label %lean_dec.exit1993

bb.qg:                                            ; preds = %bb.qf
  %i.wn = load i32, ptr %i.j, align 4, !tbaa !15  ; 3 uses
  %i.wo = icmp sgt i32 %i.wn, 1
  br i1 %i.wo, label %bb.qh, label %bb.qi, !prof !10

bb.qh:                                            ; preds = %bb.qg
  %i.wp = add nsw i32 %i.wn, -1
  store i32 %i.wp, ptr %i.j, align 4, !tbaa !15
  br label %lean_dec.exit1993

bb.qi:                                            ; preds = %bb.qg
  %.not.i2177 = icmp eq i32 %i.wn, 0
  br i1 %.not.i2177, label %lean_dec.exit1993, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec.exit1993

lean_dec.exit1993:                                ; preds = %bb.qj, %bb.qi, %bb.qh, %bb.qf
  %i.wq = tail call ptr @l_Lean_Meta_Grind_Order_mkLeLinearPrefix(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Grind_Order_Assert_0__Lean_Meta_Grind_Order_assertIneqFalse___closed__20_value, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13) #5 ; 10 uses
  %i.wr = ptrtoint ptr %i.wq to i64               ; 2 uses
  %i.ws = and i64 %i.wr, 1
  %.not.i2550 = icmp eq i64 %i.ws, 0              ; 2 uses
  br i1 %.not.i2550, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %lean_dec.exit1993
  %i.wt = lshr i64 %i.wr, 1
  %i.wu = trunc i64 %i.wt to i32
  br label %lean_obj_tag.exit2553

bb.ql:                                            ; preds = %lean_dec.exit1993
  %i.wv = getelementptr i8, ptr %i.wq, i64 4
  %.val.i2552 = load i32, ptr %i.wv, align 4
  %i.ww = lshr i32 %.val.i2552, 24
  br label %lean_obj_tag.exit2553

lean_obj_tag.exit2553:                            ; preds = %bb.qk, %bb.ql
  %.0.i2551 = phi i32 [ %i.wu, %bb.qk ], [ %i.ww, %bb.ql ]
  %i.wx = icmp eq i32 %.0.i2551, 0
  br i1 %i.wx, label %bb.qm, label %bb.tx

bb.qm:                                            ; preds = %lean_obj_tag.exit2553
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !12 ; 11 uses
  %i.xa = ptrtoint ptr %i.wz to i64
  %i.xb = and i64 %i.xa, 1
  %.not.i1833 = icmp eq i64 %i.xb, 0              ; 3 uses
  br i1 %.not.i1833, label %bb.qn, label %lean_inc.exit1834

bb.qn:                                            ; preds = %bb.qm
  %.val.i.i2554 = load i32, ptr %i.wz, align 4, !tbaa !15 ; 3 uses
  %i.xc = icmp sgt i32 %.val.i.i2554, 0
  br i1 %i.xc, label %bb.qo, label %bb.qp, !prof !10

bb.qo:                                            ; preds = %bb.qn
end_hunk_2
