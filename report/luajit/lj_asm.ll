Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@lj_asm_trace:bb.a
  %i.ava = and i32 %i.asc, 7
  %i.avb = or disjoint i32 %i.auz, %i.ava
  %i.avc = trunc i32 %i.avb to i8
  %i.avd = or i8 %i.avc, -64
  %i.ave = getelementptr inbounds i8, ptr %i.auy, i64 -1
  store i8 %i.avd, ptr %i.ave, align 1, !tbaa !25
  %i.avf = getelementptr inbounds i8, ptr %i.auy, i64 -3 ; 2 uses
  store i16 10255, ptr %i.avf, align 2, !tbaa !69
  %i.avg = lshr i32 %i.asl, 1
  %i.avh = and i32 %i.avg, 4
  %i.avi = lshr i32 %i.asc, 3
  %i.avj = and i32 %i.avi, 1
  %i.avk = or disjoint i32 %i.avh, %i.avj         ; 2 uses
  %.not.i.i7.i.i.i.i = icmp eq i32 %i.avk, 0
  br i1 %.not.i.i7.i.i.i.i, label %emit_movrr.exit.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.avl = trunc nuw nsw i32 %i.avk to i8
  %i.avm = or disjoint i8 %i.avl, 64
  %i.avn = getelementptr inbounds i8, ptr %i.auy, i64 -4 ; 2 uses
  store i8 %i.avm, ptr %i.avn, align 1, !tbaa !25
  br label %emit_movrr.exit.i.i.i

emit_movrr.exit.i.i.i:                            ; preds = %bb.hr, %bb.hq, %bb.hp, %bb.ho
  %i.avo = phi ptr [ %i.aux, %bb.hp ], [ %i.aun, %bb.ho ], [ %i.avf, %bb.hq ], [ %i.avn, %bb.hr ] ; 2 uses
  store ptr %i.avo, ptr %i.bw, align 16, !tbaa !52
  %i.avp = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.avq = getelementptr inbounds nuw [8 x i8], ptr %i.avp, i64 %i.atk
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 7
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !25
  %.not.i.i.i1091 = icmp eq i8 %i.avs, 0
  br i1 %.not.i.i.i1091, label %bb.hs, label %ra_rename.exit.i.i

bb.hs:                                            ; preds = %emit_movrr.exit.i.i.i
  %i.avt = load i32, ptr %i.li, align 4, !tbaa !66
  %i.avu = load i32, ptr %i.lj, align 4, !tbaa !67
  %i.avv = add i32 %i.avu, %i.avt
  %i.avw = load ptr, ptr %i.au, align 8, !tbaa !44 ; 4 uses
  %i.avx = trunc i32 %i.atg to i16
  %i.avy = trunc i32 %i.avv to i16
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avw, i64 184
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avw, i64 188
  store i16 5120, ptr %i.awa, align 4, !tbaa !25
  store i16 %i.avx, ptr %i.avz, align 8, !tbaa !25
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avw, i64 186
  store i16 %i.avy, ptr %i.awb, align 2, !tbaa !25
  %i.awc = call i32 @lj_ir_emit(ptr noundef %i.avw) #14
  %i.awd = and i32 %i.awc, 65535
  %i.awe = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 32
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !43
  %i.awh = zext nneg i32 %i.awd to i64            ; 2 uses
  %i.awi = getelementptr inbounds nuw [8 x i8], ptr %i.awg, i64 %i.awh
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 6
  store i8 %i.ask, ptr %i.awj, align 2, !tbaa !25
  %i.awk = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 32
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !43
  %i.awn = getelementptr inbounds nuw [8 x i8], ptr %i.awm, i64 %i.awh
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 7
  store i8 0, ptr %i.awo, align 1, !tbaa !25
  %.pre.i.i1092 = load ptr, ptr %i.bw, align 16, !tbaa !52
  br label %ra_rename.exit.i.i

ra_rename.exit.i.i:                               ; preds = %bb.hs, %emit_movrr.exit.i.i.i
  %i.awp = phi ptr [ %i.avo, %emit_movrr.exit.i.i.i ], [ %.pre.i.i1092, %bb.hs ]
  %i.awq = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.awr = icmp ult ptr %i.awp, %i.awq
  br i1 %i.awr, label %bb.ht, label %checkmclim.exit107.i.i, !prof !80

bb.ht:                                            ; preds = %ra_rename.exit.i.i
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

checkmclim.exit107.i.i:                           ; preds = %ra_rename.exit.i.i, %checkmclim.exit108.i.i, %checkmclim.exit108.thread.i.i, %.lr.ph.checkmclim.exit107_crit_edge.i.i
  %.pre-phi.i.i1064 = phi i32 [ %.pre148.i.i, %.lr.ph.checkmclim.exit107_crit_edge.i.i ], [ %i.asn, %ra_rename.exit.i.i ], [ %i.asn, %checkmclim.exit108.thread.i.i ], [ %i.asn, %checkmclim.exit108.i.i ]
  %.4.i.i = phi i32 [ %.087139.i.i, %.lr.ph.checkmclim.exit107_crit_edge.i.i ], [ %.087139.i.i, %ra_rename.exit.i.i ], [ %.188.i.i, %checkmclim.exit108.thread.i.i ], [ %.087139.i.i, %checkmclim.exit108.i.i ] ; 2 uses
  %.3.i.i = phi i32 [ %.080141.i.i, %.lr.ph.checkmclim.exit107_crit_edge.i.i ], [ %.080141.i.i, %ra_rename.exit.i.i ], [ %i.asx, %checkmclim.exit108.thread.i.i ], [ %.080141.i.i, %checkmclim.exit108.i.i ] ; 5 uses
  %i.aws = xor i32 %.pre-phi.i.i1064, -1
  %i.awt = and i32 %.086140.i.i, %i.aws           ; 2 uses
  %.not.i.i1065 = icmp eq i32 %i.awt, 0
  br i1 %.not.i.i1065, label %._crit_edge.i.i1066, label %.lr.ph.i.i1063.backedge

.lr.ph.i.i1063.backedge:                          ; preds = %checkmclim.exit107.i.i, %checkmclim.exit106.i.i
  %.080141.i.i.be = phi i32 [ %.3.i.i, %checkmclim.exit107.i.i ], [ 0, %checkmclim.exit106.i.i ]
  %.086140.i.i.be = phi i32 [ %i.awt, %checkmclim.exit107.i.i ], [ %i.axx, %checkmclim.exit106.i.i ]
  %.087139.i.i.be = phi i32 [ %.4.i.i, %checkmclim.exit107.i.i ], [ 0, %checkmclim.exit106.i.i ]
  br label %.lr.ph.i.i1063, !llvm.loop !103

._crit_edge.i.i1066:                              ; preds = %checkmclim.exit107.i.i
  %i.awu = xor i32 %.4.i.i, -1                    ; 2 uses
  %.not93.i.i1067 = icmp eq i32 %.3.i.i, 0
  br i1 %.not93.i.i1067, label %._crit_edge.i.._crit_edge.thread.i.loopexit_crit_edge.i, label %bb.hu

._crit_edge.i.._crit_edge.thread.i.loopexit_crit_edge.i: ; preds = %._crit_edge.i.i1066
  %.pre.pre.i = load i32, ptr %i.kq, align 4, !tbaa !148
  br label %._crit_edge.thread.i.i

bb.hu:                                            ; preds = %._crit_edge.i.i1066
  %i.awv = load i32, ptr %i.kn, align 8, !tbaa !83 ; 2 uses
  %i.aww = and i32 %i.awv, %.3.i.i
  %.not94.i.i = icmp eq i32 %i.aww, 0
  br i1 %.not94.i.i, label %bb.hv, label %checkmclim.exit106.i.i

bb.hv:                                            ; preds = %bb.hu
  %i.awx = and i32 %.3.i.i, 49135                 ; 4 uses
  %.not.i110.i.i = icmp eq i32 %i.awx, 0
  br i1 %.not.i110.i.i, label %asm_phi_break.exit.i.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.awy = xor i32 %i.awx, 49135                  ; 2 uses
  %i.awz = and i32 %i.awv, %i.awy                 ; 2 uses
  %.not.i.i111.i.i = icmp eq i32 %i.awz, 0
  br i1 %.not.i.i111.i.i, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.axa = call fastcc i32 @ra_evict(ptr noundef nonnull %5, i32 noundef %i.awy)
  br label %ra_pick.exit.i.i.i

bb.hy:                                            ; preds = %bb.hw
  %i.axb = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.awz)
  %i.axc = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.axb, i1 true)
  %i.axd = xor i32 %i.axc, 7
  br label %ra_pick.exit.i.i.i

ra_pick.exit.i.i.i:                               ; preds = %bb.hy, %bb.hx
  %.0.i.i.i.i1089 = phi i32 [ %i.axd, %bb.hy ], [ %i.axa, %bb.hx ]
  %i.axe = and i32 %i.awx, %i.awu                 ; 2 uses
  %.not15.i.i.i = icmp eq i32 %i.axe, 0
  %spec.select.i.i.i1090 = select i1 %.not15.i.i.i, i32 %i.awx, i32 %i.axe
  %i.axf = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %spec.select.i.i.i1090)
  %i.axg = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.axf, i1 true)
  %i.axh = xor i32 %i.axg, 7
  call fastcc void @ra_rename(ptr noundef nonnull %5, i32 noundef %i.axh, i32 noundef %.0.i.i.i.i1089)
  br label %asm_phi_break.exit.i.i

asm_phi_break.exit.i.i:                           ; preds = %ra_pick.exit.i.i.i, %bb.hv
  %i.axi = and i32 %.3.i.i, -65536                ; 4 uses
  %.not.i112.i.i = icmp eq i32 %i.axi, 0
  br i1 %.not.i112.i.i, label %asm_phi_break.exit118.i.i, label %bb.hz

bb.hz:                                            ; preds = %asm_phi_break.exit.i.i
  %i.axj = xor i32 %i.axi, -65536                 ; 2 uses
  %i.axk = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.axl = and i32 %i.axk, %i.axj                 ; 2 uses
  %.not.i.i113.i.i = icmp eq i32 %i.axl, 0
  br i1 %.not.i.i113.i.i, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.axm = call fastcc i32 @ra_evict(ptr noundef nonnull %5, i32 noundef %i.axj)
  br label %ra_pick.exit.i114.i.i

bb.ib:                                            ; preds = %bb.hz
  %i.axn = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %i.axl)
  %i.axo = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.axn, i1 true)
  %i.axp = xor i32 %i.axo, 7
  br label %ra_pick.exit.i114.i.i

ra_pick.exit.i114.i.i:                            ; preds = %bb.ib, %bb.ia
  %.0.i.i115.i.i = phi i32 [ %i.axp, %bb.ib ], [ %i.axm, %bb.ia ]
  %i.axq = and i32 %i.axi, %i.awu                 ; 2 uses
  %.not15.i116.i.i = icmp eq i32 %i.axq, 0
  %spec.select.i117.i.i = select i1 %.not15.i116.i.i, i32 %i.axi, i32 %i.axq
  %i.axr = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %spec.select.i117.i.i)
  %i.axs = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.axr, i1 true)
  %i.axt = xor i32 %i.axs, 7
  call fastcc void @ra_rename(ptr noundef nonnull %5, i32 noundef %i.axt, i32 noundef %.0.i.i115.i.i)
  br label %asm_phi_break.exit118.i.i

asm_phi_break.exit118.i.i:                        ; preds = %ra_pick.exit.i114.i.i, %asm_phi_break.exit.i.i
  %i.axu = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.axv = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.axw = icmp ult ptr %i.axu, %i.axv
  br i1 %i.axw, label %bb.ic, label %checkmclim.exit106.i.i, !prof !80

bb.ic:                                            ; preds = %asm_phi_break.exit118.i.i
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

checkmclim.exit106.i.i:                           ; preds = %asm_phi_break.exit118.i.i, %bb.hu
  %i.axx = load i32, ptr %i.kq, align 4, !tbaa !148 ; 2 uses
  %.not138.i.i = icmp eq i32 %i.axx, 0
  br i1 %.not138.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i1063.backedge

._crit_edge.thread.i.i:                           ; preds = %checkmclim.exit106.i.i, %._crit_edge.i.._crit_edge.thread.i.loopexit_crit_edge.i, %bb.hi
  %i.axy = phi i32 [ 0, %bb.hi ], [ %.pre.pre.i, %._crit_edge.i.._crit_edge.thread.i.loopexit_crit_edge.i ], [ 0, %checkmclim.exit106.i.i ]
  %i.axz = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.aya = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.ayb = or i32 %i.aya, %i.axy
  %i.ayc = xor i32 %i.ayb, -1
  %i.ayd = and i32 %i.axz, -65536
  %i.aye = and i32 %i.ayd, %i.ayc
  br label %checkmclim.exit105.i.i

checkmclim.exit105.i.i:                           ; preds = %bb.id, %._crit_edge.thread.i.i
  %.0.i.i1068 = phi i32 [ %i.aye, %._crit_edge.thread.i.i ], [ %i.ayn, %bb.id ] ; 3 uses
  %.not95.i.i = icmp eq i32 %.0.i.i1068, 0
  br i1 %.not95.i.i, label %bb.if, label %bb.id

bb.id:                                            ; preds = %checkmclim.exit105.i.i
  %i.ayf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i.i1068, i1 true) ; 2 uses
  %i.ayg = zext nneg i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ayg
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !26
  %i.ayj = and i32 %i.ayi, 65535
  %i.ayk = call fastcc i32 @ra_restore(ptr noundef nonnull %5, i32 noundef %i.ayj) ; 0 uses
  %i.ayl = shl nuw i32 1, %i.ayf
  %i.aym = xor i32 %i.ayl, -1
  %i.ayn = and i32 %.0.i.i1068, %i.aym
  %i.ayo = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.ayp = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.ayq = icmp ult ptr %i.ayo, %i.ayp
  br i1 %i.ayq, label %bb.ie, label %checkmclim.exit105.i.i, !prof !80, !llvm.loop !104

bb.ie:                                            ; preds = %bb.id
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

bb.if:                                            ; preds = %checkmclim.exit105.i.i
  %i.ayr = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.ays = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.ayt = load i32, ptr %i.kq, align 4, !tbaa !148
  %i.ayu = or i32 %i.ayt, %i.ays
  %i.ayv = xor i32 %i.ayu, -1
  %i.ayw = and i32 %i.ayr, %i.ayv
  br label %checkmclim.exit104.i.i

checkmclim.exit104.i.i:                           ; preds = %bb.ig, %bb.if
  %.1.i.i1069 = phi i32 [ %i.ayw, %bb.if ], [ %i.azf, %bb.ig ] ; 3 uses
  %.not96.i.i = icmp eq i32 %.1.i.i1069, 0
  br i1 %.not96.i.i, label %bb.ii, label %bb.ig

bb.ig:                                            ; preds = %checkmclim.exit104.i.i
  %i.ayx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.1.i.i1069, i1 true) ; 2 uses
  %i.ayy = zext nneg i32 %i.ayx to i64
  %i.ayz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ayy
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !26
  %i.azb = and i32 %i.aza, 65535
  %i.azc = call fastcc i32 @ra_restore(ptr noundef nonnull %5, i32 noundef %i.azb) ; 0 uses
  %i.azd = shl nuw i32 1, %i.ayx
  %i.aze = xor i32 %i.azd, -1
  %i.azf = and i32 %.1.i.i1069, %i.aze
  %i.azg = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.azh = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.azi = icmp ult ptr %i.azg, %i.azh
  br i1 %i.azi, label %bb.ih, label %checkmclim.exit104.i.i, !prof !80, !llvm.loop !105

bb.ih:                                            ; preds = %bb.ig
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

bb.ii:                                            ; preds = %checkmclim.exit104.i.i
  %i.azj = load i32, ptr %i.kq, align 4, !tbaa !148 ; 2 uses
  %.not97143.i.i = icmp eq i32 %i.azj, 0
  br i1 %.not97143.i.i, label %asm_phi_shuffle.exit.i, label %.lr.ph146.i.i

.lr.ph146.i.i:                                    ; preds = %bb.ii, %checkmclim.exit.i.i1076
  %.2144.i.i = phi i32 [ %i.bck, %checkmclim.exit.i.i1076 ], [ %i.azj, %bb.ii ] ; 2 uses
  %i.azk = call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.2144.i.i) ; 2 uses
  %i.azl = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.azk, i1 true) ; 3 uses
  %i.azm = xor i32 %i.azl, 7                      ; 5 uses
  %i.azn = zext nneg i32 %i.azm to i64
  %i.azo = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.azn
  %i.azp = load i16, ptr %i.azo, align 2, !tbaa !69 ; 2 uses
  %i.azq = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.azr = zext i16 %i.azp to i64                 ; 2 uses
  %i.azs = getelementptr inbounds nuw [8 x i8], ptr %i.azq, i64 %i.azr ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azs, i64 7 ; 2 uses
  %i.azu = load i8, ptr %i.azt, align 1, !tbaa !25
  %.not98.i.i = icmp eq i8 %i.azu, 0
  br i1 %.not98.i.i, label %checkmclim.exit.i.i1076, label %bb.ij

bb.ij:                                            ; preds = %.lr.ph146.i.i
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azs, i64 4 ; 3 uses
  %i.azw = load i8, ptr %i.azv, align 4, !tbaa !25
  %i.azx = and i8 %i.azw, -33
  store i8 %i.azx, ptr %i.azv, align 4, !tbaa !25
  %i.azy = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr %i.azy, i64 %i.azr
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 6
  %i.bab = load i8, ptr %i.baa, align 2, !tbaa !25 ; 2 uses
  %i.bac = zext nneg i8 %i.bab to i32
  %.not.i119.i.i = icmp sgt i8 %i.bab, -1
  br i1 %.not.i119.i.i, label %ra_alloc1.exit.i.i1070, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bad = zext i16 %i.azp to i32
  %i.bae = shl nuw i32 1, %i.azm
  %i.baf = call fastcc i32 @ra_allocref(ptr noundef nonnull %5, i32 noundef %i.bad, i32 noundef %i.bae)
  br label %ra_alloc1.exit.i.i1070

ra_alloc1.exit.i.i1070:                           ; preds = %bb.ik, %bb.ij
  %.0.i.i.i1071 = phi i32 [ %i.baf, %bb.ik ], [ %i.bac, %bb.ij ]
  %i.bag = shl nuw i32 1, %.0.i.i.i1071
  %i.bah = xor i32 %i.bag, -1
  %i.bai = load i32, ptr %i.kp, align 16, !tbaa !82
  %i.baj = and i32 %i.bai, %i.bah
  store i32 %i.baj, ptr %i.kp, align 16, !tbaa !82
  %.val.i.i1072 = load i8, ptr %i.azv, align 4, !tbaa !25
  %.val109.i.i = load i8, ptr %i.azt, align 1, !tbaa !25 ; 5 uses
  %i.bak = zext i8 %.val109.i.i to i32
  %i.bal = shl nuw nsw i32 %i.bak, 2              ; 4 uses
  %i.bam = icmp ugt i32 %i.azk, 65535
  %i.ban = and i8 %.val.i.i1072, 31               ; 2 uses
  br i1 %i.bam, label %bb.il, label %bb.ir

bb.il:                                            ; preds = %ra_alloc1.exit.i.i1070
  %i.bao = zext nneg i8 %i.ban to i32
  %i.bap = shl nuw i32 1, %i.bao
  %i.baq = and i32 %i.bap, 6315993
  %.not.i.i122.i.i = icmp eq i32 %i.baq, 0
  %i.bar = select i1 %.not.i.i122.i.i, i32 0, i32 524800 ; 2 uses
  %i.bas = or disjoint i32 %i.bar, %i.azl
  %i.bat = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 3 uses
  %.not1.i.i.i = icmp eq i8 %.val109.i.i, 0
  br i1 %.not1.i.i.i, label %bb.ip, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bau = icmp ult i8 %.val109.i.i, 32
  br i1 %i.bau, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.bav = trunc nuw nsw i32 %i.bal to i8
  %i.baw = getelementptr inbounds i8, ptr %i.bat, i64 -1 ; 2 uses
  store i8 %i.bav, ptr %i.baw, align 1, !tbaa !25
  br label %bb.ip

bb.io:                                            ; preds = %bb.im
  %i.bax = getelementptr inbounds i8, ptr %i.bat, i64 -4 ; 2 uses
  store i32 %i.bal, ptr %i.bax, align 4, !tbaa !26
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in, %bb.il
  %.029.i.i.i.i.i = phi ptr [ %i.bat, %bb.il ], [ %i.bax, %bb.io ], [ %i.baw, %bb.in ] ; 4 uses
  %.0.i.i.i.i.i1088 = phi i32 [ 0, %bb.il ], [ 128, %bb.io ], [ 64, %bb.in ]
  %i.bay = getelementptr inbounds i8, ptr %.029.i.i.i.i.i, i64 -1
  store i8 36, ptr %i.bay, align 1, !tbaa !25
  %i.baz = shl nuw nsw i32 %i.azm, 3
  %i.bba = and i32 %i.baz, 56
  %i.bbb = or disjoint i32 %.0.i.i.i.i.i1088, %i.bba
  %i.bbc = trunc nuw i32 %i.bbb to i8
  %i.bbd = or disjoint i8 %i.bbc, 4
  %i.bbe = getelementptr inbounds i8, ptr %.029.i.i.i.i.i, i64 -2
  store i8 %i.bbd, ptr %i.bbe, align 1, !tbaa !25
  %i.bbf = getelementptr i8, ptr %.029.i.i.i.i.i, i64 -3 ; 2 uses
  store i8 -119, ptr %i.bbf, align 1, !tbaa !25
  %i.bbg = lshr i32 %i.bas, 1
  %i.bbh = and i32 %i.bbg, 260                    ; 2 uses
  %.not.i.i.i.i123.i.i = icmp eq i32 %i.bbh, 0
  br i1 %.not.i.i.i.i123.i.i, label %ra_save.exit.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bbi = lshr i32 %i.bar, 16
  %i.bbj = or disjoint i32 %i.bbh, %i.bbi
  %i.bbk = trunc i32 %i.bbj to i8
  %i.bbl = or disjoint i8 %i.bbk, 64
  %i.bbm = getelementptr i8, ptr %.029.i.i.i.i.i, i64 -4 ; 2 uses
  store i8 %i.bbl, ptr %i.bbm, align 1, !tbaa !25
  br label %ra_save.exit.i.i

bb.ir:                                            ; preds = %ra_alloc1.exit.i.i1070
  %i.bbn = icmp eq i8 %i.ban, 14
  %i.bbo = select i1 %i.bbn, i32 286257916, i32 286258172 ; 2 uses
  %i.bbp = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 3 uses
  %.not.i120.i.i = icmp eq i8 %.val109.i.i, 0
  br i1 %.not.i120.i.i, label %bb.iv, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.bbq = icmp ult i8 %.val109.i.i, 32
  br i1 %i.bbq, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.bbr = trunc nuw nsw i32 %i.bal to i8
  %i.bbs = getelementptr inbounds i8, ptr %i.bbp, i64 -1 ; 2 uses
  store i8 %i.bbr, ptr %i.bbs, align 1, !tbaa !25
  br label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.bbt = getelementptr inbounds i8, ptr %i.bbp, i64 -4 ; 2 uses
  store i32 %i.bal, ptr %i.bbt, align 4, !tbaa !26
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it, %bb.ir
  %.029.i.i.i.i1073 = phi ptr [ %i.bbp, %bb.ir ], [ %i.bbt, %bb.iu ], [ %i.bbs, %bb.it ] ; 4 uses
  %.0.i.i121.i.i = phi i32 [ 0, %bb.ir ], [ 128, %bb.iu ], [ 64, %bb.it ]
  %i.bbu = getelementptr inbounds i8, ptr %.029.i.i.i.i1073, i64 -1
  store i8 36, ptr %i.bbu, align 1, !tbaa !25
  %i.bbv = shl nuw nsw i32 %i.azm, 3
  %i.bbw = and i32 %i.bbv, 56
  %i.bbx = or disjoint i32 %.0.i.i121.i.i, %i.bbw
  %i.bby = trunc nuw i32 %i.bbx to i8
  %i.bbz = or disjoint i8 %i.bby, 4
  %i.bca = getelementptr inbounds i8, ptr %.029.i.i.i.i1073, i64 -2
  store i8 %i.bbz, ptr %i.bca, align 1, !tbaa !25
  %i.bcb = getelementptr inbounds i8, ptr %.029.i.i.i.i1073, i64 -6 ; 3 uses
  store i32 %i.bbo, ptr %i.bcb, align 4, !tbaa !26
  %i.bcc = getelementptr inbounds i8, ptr %.029.i.i.i.i1073, i64 -5 ; 2 uses
  %i.bcd = and i32 %i.azl, 8
  %.not.i.i.i.i.i1074 = icmp eq i32 %i.bcd, 0
  br i1 %.not.i.i.i.i.i1074, label %ra_save.exit.i.i, label %bb.iw

end_hunk_0
begin_hunk_1_@lj_asm_trace:bb.a
  %i.iii = load i16, ptr %i.iib, align 8, !tbaa !25
  %i.iij = zext i16 %i.iii to i64
  %i.iik = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i308, i64 %i.iij ; 3 uses
  %i.iil = getelementptr inbounds nuw i8, ptr %i.iik, i64 2
  %i.iim = load i16, ptr %i.iil, align 2, !tbaa !25 ; 2 uses
  %i.iin = icmp eq i16 %i.iim, 32767
  %narrow1.i.i.1 = select i1 %i.iin, i16 0, i16 %i.iim
  %spec.select.i.i.1 = zext i16 %narrow1.i.i.1 to i32
  %i.iio = getelementptr inbounds nuw [4 x i8], ptr %.013.i.i, i64 %i.iih
  store i32 %spec.select.i.i.1, ptr %i.iio, align 4, !tbaa !26
  %.wide.i.i.1 = icmp ugt i64 %i.iih, 1
  br i1 %.wide.i.i.1, label %.lr.ph.i23.i.new, label %asm_collectargs.exit.loopexit.i, !llvm.loop !97

asm_collectargs.exit.loopexit.i:                  ; preds = %.lr.ph.i23.i.new, %.prol.loopexit2075
  %.lcssa2038 = phi ptr [ %.lcssa2038.unr, %.prol.loopexit2075 ], [ %i.iik, %.lr.ph.i23.i.new ]
  %.pre.i320 = load i16, ptr %.lcssa2038, align 8, !tbaa !25
  br label %asm_collectargs.exit.i

asm_collectargs.exit.i:                           ; preds = %asm_collectargs.exit.loopexit.i, %bb.ayj
  %i.iip = phi i16 [ %i.iga, %bb.ayj ], [ %.pre.i320, %asm_collectargs.exit.loopexit.i ] ; 2 uses
  %i.iiq = icmp eq i16 %i.iip, 32767
  %narrow.i.i315 = select i1 %i.iiq, i16 0, i16 %i.iip
  %spec.select17.i.i = zext i16 %narrow.i.i315 to i32
  store i32 %spec.select17.i.i, ptr %.013.i.i, align 4, !tbaa !26
  call fastcc void @asm_setupresult(ptr noundef nonnull %5, ptr noundef nonnull %i.anc, ptr noundef nonnull %2)
  %i.iir = load i16, ptr %i.igj, align 2, !tbaa !25 ; 2 uses
  %i.iis = load ptr, ptr %i.kc, align 16, !tbaa !57 ; 3 uses
  %i.iit = zext i16 %i.iir to i64
  %i.iiu = getelementptr inbounds nuw [8 x i8], ptr %i.iis, i64 %i.iit ; 3 uses
  %i.iiv = getelementptr inbounds nuw i8, ptr %i.iiu, i64 5
  %i.iiw = load i8, ptr %i.iiv, align 1, !tbaa !25
  %i.iix = icmp eq i8 %i.iiw, 100
  br i1 %i.iix, label %bb.ayk, label %bb.ayl

bb.ayk:                                           ; preds = %asm_collectargs.exit.i
  %i.iiy = load i16, ptr %i.iiu, align 8, !tbaa !25 ; 2 uses
  %i.iiz = zext i16 %i.iiy to i64
  %i.ija = getelementptr inbounds nuw [8 x i8], ptr %i.iis, i64 %i.iiz
  br label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk, %asm_collectargs.exit.i
  %.021.i = phi ptr [ %i.ija, %bb.ayk ], [ %i.iiu, %asm_collectargs.exit.i ] ; 3 uses
  %.0.in.i = phi i16 [ %i.iiy, %bb.ayk ], [ %i.iir, %asm_collectargs.exit.i ] ; 3 uses
  %.0.i316 = zext i16 %.0.in.i to i32
  %i.ijb = icmp sgt i16 %.0.in.i, -1
  br i1 %i.ijb, label %bb.aym, label %asm_callx_func.exit.thread.i

bb.aym:                                           ; preds = %bb.ayl
  %i.ijc = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  %i.ijd = load i8, ptr %i.ijc, align 1, !tbaa !25
  %i.ije = icmp eq i8 %i.ijd, 29
  br i1 %i.ije, label %bb.ayn, label %bb.ayo

bb.ayn:                                           ; preds = %bb.aym
  %i.ijf = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.ijg = load i64, ptr %i.ijf, align 8, !tbaa !25
  br label %bb.ayp

bb.ayo:                                           ; preds = %bb.aym
  %i.ijh = load i32, ptr %.021.i, align 8, !tbaa !25
  %i.iji = zext i32 %i.ijh to i64
  br label %bb.ayp

bb.ayp:                                           ; preds = %bb.ayo, %bb.ayn
  %.08.in.i.i = phi i64 [ %i.ijg, %bb.ayn ], [ %i.iji, %bb.ayo ] ; 3 uses
  %i.ijj = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.ijk = ptrtoint ptr %i.ijj to i64
  %i.ijl = add i64 %.08.in.i.i, -2147483648
  %i.ijm = sub i64 %i.ijl, %i.ijk
  %i.ijn = icmp ult i64 %i.ijm, -4294967296
  br i1 %i.ijn, label %asm_callx_func.exit.thread.i, label %asm_callx_func.exit.i

asm_callx_func.exit.thread.i:                     ; preds = %bb.ayp, %bb.ayl
  store ptr null, ptr %2, align 8, !tbaa !89
  br label %bb.ayq

asm_callx_func.exit.i:                            ; preds = %bb.ayp
  %.08.i.i = inttoptr i64 %.08.in.i.i to ptr
  store ptr %.08.i.i, ptr %2, align 8, !tbaa !89
  %.not.i318 = icmp eq i64 %.08.in.i.i, 0
  br i1 %.not.i318, label %bb.ayq, label %asm_callx.exit

bb.ayq:                                           ; preds = %asm_callx_func.exit.i, %asm_callx_func.exit.thread.i
  %i.ijo = zext i16 %.0.in.i to i64
  %i.ijp = getelementptr inbounds nuw [8 x i8], ptr %i.iis, i64 %i.ijo
  %i.ijq = getelementptr inbounds nuw i8, ptr %i.ijp, i64 6
  %i.ijr = load i8, ptr %i.ijq, align 2, !tbaa !25 ; 2 uses
  %i.ijs = zext nneg i8 %i.ijr to i32
  %.not.i25.i = icmp sgt i8 %i.ijr, -1
  br i1 %.not.i25.i, label %ra_alloc1.exit.i, label %bb.ayr

bb.ayr:                                           ; preds = %bb.ayq
  %i.ijt = call fastcc i32 @ra_allocref(ptr noundef nonnull %5, i32 noundef %.0.i316, i32 noundef 45096)
  br label %ra_alloc1.exit.i

ra_alloc1.exit.i:                                 ; preds = %bb.ayr, %bb.ayq
  %.0.i26.i = phi i32 [ %i.ijt, %bb.ayr ], [ %i.ijs, %bb.ayq ] ; 3 uses
  %i.iju = shl nuw i32 1, %.0.i26.i
  %i.ijv = xor i32 %i.iju, -1
  %i.ijw = load i32, ptr %i.kp, align 16, !tbaa !82
  %i.ijx = and i32 %i.ijw, %i.ijv
  store i32 %i.ijx, ptr %i.kp, align 16, !tbaa !82
  %i.ijy = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 3 uses
  %i.ijz = trunc nuw i32 %.0.i26.i to i8
  %i.ika = and i8 %i.ijz, 7
  %i.ikb = or disjoint i8 %i.ika, -48
  %i.ikc = getelementptr inbounds i8, ptr %i.ijy, i64 -1
  store i8 %i.ikb, ptr %i.ikc, align 1, !tbaa !25
  %i.ikd = getelementptr i8, ptr %i.ijy, i64 -2   ; 2 uses
  store i8 -1, ptr %i.ikd, align 1, !tbaa !25
  %i.ike = and i32 %.0.i26.i, 8
  %.not.i.i.i317 = icmp eq i32 %i.ike, 0
  br i1 %.not.i.i.i317, label %emit_rr.exit.i, label %bb.ays

bb.ays:                                           ; preds = %ra_alloc1.exit.i
  %i.ikf = getelementptr i8, ptr %i.ijy, i64 -3   ; 2 uses
  store i8 65, ptr %i.ikf, align 1, !tbaa !25
  br label %emit_rr.exit.i

emit_rr.exit.i:                                   ; preds = %bb.ays, %ra_alloc1.exit.i
  %.046.i.i.i = phi ptr [ %i.ikd, %ra_alloc1.exit.i ], [ %i.ikf, %bb.ays ]
  store ptr %.046.i.i.i, ptr %i.bw, align 16, !tbaa !52
  br label %asm_callx.exit

asm_callx.exit:                                   ; preds = %asm_callx_func.exit.i, %emit_rr.exit.i
  call fastcc void @asm_gencall(ptr noundef nonnull %5, ptr noundef nonnull %2, ptr noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  br label %asm_ir.exit

bb.ayt:                                           ; preds = %checkmclim.exit151
  %i.ikg = load ptr, ptr %i.au, align 8, !tbaa !44 ; 2 uses
  %i.ikh = getelementptr inbounds nuw i8, ptr %i.ikg, i64 3104
  %i.iki = uitofp i8 %i.arw to double
  store double %i.iki, ptr %i.ikh, align 8, !tbaa !25
  call void @lj_trace_err_info(ptr noundef %i.ikg, i32 noundef 32) #15
  unreachable

asm_ir.exit:                                      ; preds = %asm_callx.exit, %asm_call.exit.i, %asm_strto.exit, %asm_tostr.exit, %asm_obar.exit, %asm_tbar.exit, %bb.asj, %asm_bufput.exit, %asm_bufhdr.exit, %asm_cnew.exit.i, %bb.anf, %asm_tnew.exit, %bb.amz, %bb.amy, %bb.amx, %emit_mrm.exit, %emit_mrm.exit495, %bb.alb, %ra_alloc1.exit.i180.i, %bb.akf, %bb.ake, %bb.afr, %bb.afq, %emit_mrm.exit583, %emit_mrm.exit600, %emit_mrm.exit617, %emit_mrm.exit634, %bb.acn, %bb.acm, %asm_lref.exit, %asm_tmpref.exit, %asm_fref.exit, %emit_rmro.exit78.i.i216, %bb.yn, %bb.xh, %asm_newref.exit, %bb.ul, %bb.tv, %bb.tu, %bb.tt, %asm_tobit.exit, %asm_ldexp.exit, %bb.qm, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %asm_bswap.exit, %bb.nn, %asm_retf.exit, %bb.mw, %bb.mv, %bb.ms, %asm_prof.exit, %asm_gcstep.exit, %ra_alloc1.exit, %checkmclim.exit151, %checkmclim.exit151, %checkmclim.exit151, %asm_loop_fixup.exit.i, %bb.ky, %bb.lb, %emit_movrr.exit.i1048, %bb.lm, %ra_spill.exit.i, %bb.mc, %.thread.i1045, %bb.md, %bb.me, %bb.ok, %asm_lea.exit.i, %asm_lea.exit.thread.i, %bb.pv, %bb.pw, %bb.py, %bb.pz, %bb.qb, %bb.qc, %bb.qe, %bb.qf, %bb.qh, %bb.qi, %bb.qk, %bb.ql, %ra_dest.exit.i925, %bb.rz, %emit_call_.exit.i, %bb.ss, %bb.to, %bb.tp, %bb.tr, %bb.ts, %bb.ui, %bb.uj, %bb.uk, %bb.wi, %emit_rmro.exit86.i, %emit_rr.exit.i.i687, %bb.aba, %emit_gri.exit.i, %bb.abf, %emit_rmro.exit142.i, %emit_rmro.exit161.i, %bb.aia, %bb.aid, %emit_rmro.exit183.i, %emit_rmro.exit196.i, %emit_rmro.exit209.i, %emit_rmro.exit232.i, %bb.auh, %emit_rr.exit.i357, %ra_alloc1.exit161.i, %bb.avp, %bb.avq, %bb.awh, %bb.aww, %bb.awx, %bb.axl, %bb.axm, %bb.gn
  %i.ikj = load i32, ptr %i.kd, align 8, !tbaa !58
  %storemerge = add i32 %i.ikj, -1                ; 3 uses
  store i32 %storemerge, ptr %i.kd, align 8, !tbaa !58
  %i.ikk = load i32, ptr %i.lk, align 4, !tbaa !68
  %i.ikl = icmp ugt i32 %storemerge, %i.ikk
  br i1 %i.ikl, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %asm_ir.exit, %asm_tail_link.exit
  %i.ikm = load ptr, ptr %i.bg, align 16, !tbaa !49 ; 2 uses
  %.not139 = icmp eq ptr %i.ikm, null
  br i1 %.not139, label %bb.ayv, label %bb.ayu

bb.ayu:                                           ; preds = %._crit_edge
  %i.ikn = load ptr, ptr %i.az, align 8, !tbaa !125 ; 2 uses
  %i.iko = getelementptr inbounds nuw i8, ptr %i.ikn, i64 12
  %i.ikp = load i32, ptr %i.iko, align 4, !tbaa !28
  %i.ikq = load i32, ptr %i.x, align 4, !tbaa !28
  %.not140 = icmp ult i32 %i.ikp, %i.ikq
  br i1 %.not140, label %bb.ayv, label %.backedge.backedge

bb.ayv:                                           ; preds = %bb.ayu, %._crit_edge
  %i.ikr = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.iks = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.ikt = icmp ult ptr %i.ikr, %i.iks
  br i1 %i.ikt, label %bb.ayw, label %checkmclim.exit, !prof !80

bb.ayw:                                           ; preds = %bb.ayv
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

checkmclim.exit:                                  ; preds = %bb.ayv
  %i.iku = load i32, ptr %i.kk, align 8, !tbaa !61
  %i.ikv = icmp sgt i32 %i.iku, 0
  br i1 %i.ikv, label %bb.ayx, label %bb.ayy

bb.ayx:                                           ; preds = %checkmclim.exit
  %i.ikw = load ptr, ptr %i.av, align 16, !tbaa !45
  %i.ikx = getelementptr inbounds nuw i8, ptr %i.ikw, i64 48
  %i.iky = load ptr, ptr %i.ikx, align 8, !tbaa !75
  %i.ikz = getelementptr inbounds nuw i8, ptr %i.iky, i64 4
  %i.ila = load i16, ptr %i.ikz, align 4, !tbaa !145
  %i.ilb = zext i16 %i.ila to i32
  store i32 %i.ilb, ptr %i.kd, align 8, !tbaa !58
  call fastcc void @asm_snap_prep(ptr noundef %5)
  call fastcc void @asm_gc_check(ptr noundef %5)
  %i.ilc = load i32, ptr %i.lk, align 4, !tbaa !68
  store i32 %i.ilc, ptr %i.kd, align 8, !tbaa !58
  br label %bb.ayy

bb.ayy:                                           ; preds = %bb.ayx, %checkmclim.exit
  %i.ild = load i32, ptr %i.kn, align 8, !tbaa !83 ; 3 uses
  %.not30.i = icmp ugt i32 %i.ild, -65537
  br i1 %.not30.i, label %._crit_edge.i240, label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %bb.ayy
  %i.ile = and i32 %i.ild, -65536
  %i.ilf = xor i32 %i.ile, -65536
  br label %bb.ayz

bb.ayz:                                           ; preds = %checkmclim.exit29.i, %.lr.ph.i236
  %.031.i = phi i32 [ %i.ilf, %.lr.ph.i236 ], [ %i.ilr, %checkmclim.exit29.i ] ; 2 uses
  %i.ilg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.031.i, i1 true) ; 2 uses
  %i.ilh = zext nneg i32 %i.ilg to i64
  %i.ili = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ilh
  %i.ilj = load i32, ptr %i.ili, align 4, !tbaa !26
  %i.ilk = and i32 %i.ilj, 65535                  ; 2 uses
  %or.cond.i237 = icmp samesign ult i32 %i.ilk, 32768
  br i1 %or.cond.i237, label %bb.aza, label %checkmclim.exit29.i

bb.aza:                                           ; preds = %bb.ayz
  %i.ill = call fastcc i32 @ra_rematk(ptr noundef nonnull %5, i32 noundef %i.ilk) ; 0 uses
  %i.ilm = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.iln = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.ilo = icmp ult ptr %i.ilm, %i.iln
  br i1 %i.ilo, label %bb.azb, label %checkmclim.exit29.i, !prof !80

bb.azb:                                           ; preds = %bb.aza
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

checkmclim.exit29.i:                              ; preds = %bb.aza, %bb.ayz
  %i.ilp = shl nuw i32 1, %i.ilg
  %i.ilq = xor i32 %i.ilp, -1
  %i.ilr = and i32 %.031.i, %i.ilq                ; 2 uses
  %.not.i238 = icmp eq i32 %i.ilr, 0
  br i1 %.not.i238, label %._crit_edge.loopexit.i, label %bb.ayz, !llvm.loop !113

._crit_edge.loopexit.i:                           ; preds = %checkmclim.exit29.i
  %.pre.i239 = load i32, ptr %i.kn, align 8, !tbaa !83
  br label %._crit_edge.i240

._crit_edge.i240:                                 ; preds = %._crit_edge.loopexit.i, %bb.ayy
  %i.ils = phi i32 [ %.pre.i239, %._crit_edge.loopexit.i ], [ %i.ild, %bb.ayy ]
  %i.ilt = and i32 %i.ils, 49135                  ; 2 uses
  %.not2832.i = icmp eq i32 %i.ilt, 49135
  br i1 %.not2832.i, label %ra_evictk.exit, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %._crit_edge.i240
  %i.ilu = xor i32 %i.ilt, 49135
  br label %bb.azc

bb.azc:                                           ; preds = %checkmclim.exit.i241, %.lr.ph35.i
  %.133.i = phi i32 [ %i.ilu, %.lr.ph35.i ], [ %i.img, %checkmclim.exit.i241 ] ; 2 uses
  %i.ilv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.133.i, i1 true) ; 2 uses
  %i.ilw = zext nneg i32 %i.ilv to i64
  %i.ilx = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ilw
  %i.ily = load i32, ptr %i.ilx, align 4, !tbaa !26
  %i.ilz = and i32 %i.ily, 65535                  ; 2 uses
  %or.cond3.i = icmp samesign ult i32 %i.ilz, 32768
  br i1 %or.cond3.i, label %bb.azd, label %checkmclim.exit.i241

bb.azd:                                           ; preds = %bb.azc
  %i.ima = call fastcc i32 @ra_rematk(ptr noundef nonnull %5, i32 noundef %i.ilz) ; 0 uses
  %i.imb = load ptr, ptr %i.bw, align 16, !tbaa !52
  %i.imc = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.imd = icmp ult ptr %i.imb, %i.imc
  br i1 %i.imd, label %bb.aze, label %checkmclim.exit.i241, !prof !80

bb.aze:                                           ; preds = %bb.azd
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

checkmclim.exit.i241:                             ; preds = %bb.azd, %bb.azc
  %i.ime = shl nuw nsw i32 1, %i.ilv
  %i.imf = xor i32 %i.ime, -1
  %i.img = and i32 %.133.i, %i.imf                ; 2 uses
  %.not28.i242 = icmp eq i32 %i.img, 0
  br i1 %.not28.i242, label %ra_evictk.exit, label %bb.azc, !llvm.loop !114

ra_evictk.exit:                                   ; preds = %checkmclim.exit.i241, %._crit_edge.i240
  %i.imh = load ptr, ptr %i.br, align 8, !tbaa !131 ; 3 uses
  %.not141 = icmp eq ptr %i.imh, null
  br i1 %.not141, label %bb.bcz, label %bb.azf

bb.azf:                                           ; preds = %ra_evictk.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.imi = getelementptr inbounds nuw i8, ptr %i.imh, i64 32
  %i.imj = load ptr, ptr %i.imi, align 8, !tbaa !29 ; 2 uses
  %i.imk = getelementptr inbounds nuw i8, ptr %i.imj, i64 262144
  %i.iml = load i32, ptr %i.li, align 4, !tbaa !66
  %.not.i243 = icmp eq i32 %i.iml, 0
  br i1 %.not.i243, label %asm_snap_alloc.exit.i244, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
  %i.imm = load i32, ptr %i.kj, align 4, !tbaa !138
  %i.imn = getelementptr inbounds nuw i8, ptr %i.imh, i64 115
  %i.imo = load i8, ptr %i.imn, align 1, !tbaa !175
  %i.imp = zext i8 %i.imo to i32
  %i.imq = icmp ugt i32 %i.imm, %i.imp
  br i1 %i.imq, label %bb.azh, label %asm_snap_alloc.exit.i244

bb.azh:                                           ; preds = %bb.azg
  %i.imr = load ptr, ptr %i.av, align 16, !tbaa !45 ; 2 uses
  %i.ims = getelementptr inbounds nuw i8, ptr %i.imr, i64 48
  %i.imt = load ptr, ptr %i.ims, align 8, !tbaa !75 ; 2 uses
  %i.imu = getelementptr inbounds nuw i8, ptr %i.imr, i64 56
  %i.imv = load ptr, ptr %i.imu, align 8, !tbaa !79
  %i.imw = load i32, ptr %i.imt, align 4, !tbaa !77
  %i.imx = zext i32 %i.imw to i64
  %i.imy = getelementptr inbounds nuw [4 x i8], ptr %i.imv, i64 %i.imx
  %i.imz = getelementptr inbounds nuw i8, ptr %i.imt, i64 10
  %i.ina = load i8, ptr %i.imz, align 2, !tbaa !78 ; 2 uses
  %.not.i.i267 = icmp eq i8 %i.ina, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, i8 0, i64 16, i1 false)
  br i1 %.not.i.i267, label %asm_snap_alloc.exit.i244, label %.lr.ph.preheader.i.i268

.lr.ph.preheader.i.i268:                          ; preds = %bb.azh
  %wide.trip.count.i.i269 = zext i8 %i.ina to i64
  br label %.lr.ph.i.i270

.lr.ph.i.i270:                                    ; preds = %bb.azj, %.lr.ph.preheader.i.i268
  %indvars.iv.i.i271 = phi i64 [ 0, %.lr.ph.preheader.i.i268 ], [ %indvars.iv.next.i.i272, %bb.azj ] ; 2 uses
  %i.inb = getelementptr inbounds nuw [4 x i8], ptr %i.imy, i64 %indvars.iv.i.i271
  %i.inc = load i32, ptr %i.inb, align 4, !tbaa !26
  %i.ind = and i32 %i.inc, 65535                  ; 2 uses
  %i.ine = icmp samesign ult i32 %i.ind, 32768
  br i1 %i.ine, label %bb.azj, label %bb.azi

bb.azi:                                           ; preds = %.lr.ph.i.i270
  call fastcc void @asm_snap_alloc1(ptr noundef nonnull %5, i32 noundef %i.ind)
  br label %bb.azj

bb.azj:                                           ; preds = %bb.azi, %.lr.ph.i.i270
  %indvars.iv.next.i.i272 = add nuw nsw i64 %indvars.iv.i.i271, 1 ; 2 uses
  %exitcond.not.i.i273 = icmp eq i64 %indvars.iv.next.i.i272, %wide.trip.count.i.i269
  br i1 %exitcond.not.i.i273, label %asm_snap_alloc.exit.i244, label %.lr.ph.i.i270, !llvm.loop !0

asm_snap_alloc.exit.i244:                         ; preds = %bb.azj, %bb.azh, %bb.azg, %bb.azf
  %i.inf = load ptr, ptr %i.kc, align 16, !tbaa !57 ; 2 uses
  %i.ing = getelementptr inbounds nuw i8, ptr %i.inf, i64 262150 ; 2 uses
  %i.inh = load i8, ptr %i.ing, align 2, !tbaa !25 ; 5 uses
  %i.ini = zext i8 %i.inh to i32                  ; 3 uses
  %.not.i238.i = icmp sgt i8 %i.inh, -1
  br i1 %.not.i238.i, label %bb.azk, label %asm_head_side_base.exit.i

bb.azk:                                           ; preds = %asm_snap_alloc.exit.i244
  %i.inj = shl nuw i32 1, %i.ini                  ; 2 uses
  %i.ink = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.inl = or i32 %i.ink, %i.inj                  ; 2 uses
  store i32 %i.inl, ptr %i.kn, align 8, !tbaa !83
  %i.inm = load i32, ptr %i.ko, align 4, !tbaa !71
  %i.inn = and i32 %i.inm, %i.inj
  %.not24.i.i = icmp eq i32 %i.inn, 0
  br i1 %.not24.i.i, label %bb.azl, label %bb.azm

bb.azl:                                           ; preds = %bb.azk
  %i.ino = getelementptr inbounds nuw i8, ptr %i.inf, i64 262148
  %i.inp = load i8, ptr %i.ino, align 4, !tbaa !25
  %i.inq = and i8 %i.inp, 32
  %.not25.i.i = icmp eq i8 %i.inq, 0
  br i1 %.not25.i.i, label %bb.azn, label %bb.azm

bb.azm:                                           ; preds = %bb.azl, %bb.azk
  store i8 -1, ptr %i.ing, align 2, !tbaa !25
  br label %bb.azn

bb.azn:                                           ; preds = %bb.azm, %bb.azl
  %i.inr = getelementptr inbounds nuw i8, ptr %i.imj, i64 262150 ; 2 uses
  %i.ins = load i8, ptr %i.inr, align 2, !tbaa !25 ; 5 uses
  %i.int = zext nneg i8 %i.ins to i32
  %i.inu = icmp eq i8 %i.ins, %i.inh
  br i1 %i.inu, label %asm_head_side_base.exit.i, label %bb.azo

bb.azo:                                           ; preds = %bb.azn
  %.not26.i.i = icmp sgt i8 %i.ins, -1
  br i1 %.not26.i.i, label %bb.azp, label %bb.azr

bb.azp:                                           ; preds = %bb.azo
  %i.inv = shl nuw i32 1, %i.int
  %i.inw = and i32 %i.inl, %i.inv
  %.not27.i.i = icmp eq i32 %i.inw, 0
  br i1 %.not27.i.i, label %bb.azr, label %bb.azq

bb.azq:                                           ; preds = %bb.azp
  %i.inx = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 3 uses
  %i.iny = shl i8 %i.inh, 3
  %i.inz = and i8 %i.ins, 7
  %i.ioa = or disjoint i8 %i.inz, %i.iny
  %i.iob = or i8 %i.ioa, -64
  %i.ioc = getelementptr inbounds i8, ptr %i.inx, i64 -1
  store i8 %i.iob, ptr %i.ioc, align 1, !tbaa !25
  %i.iod = getelementptr i8, ptr %i.inx, i64 -2
  store i8 -117, ptr %i.iod, align 1, !tbaa !25
  %i.ioe = lshr i8 %i.inh, 1
  %i.iof = and i8 %i.ioe, 4
  %i.iog = lshr i8 %i.ins, 3
  %i.ioh = and i8 %i.iog, 1
  %i.ioi = or disjoint i8 %i.iof, %i.ioh
  %i.ioj = or disjoint i8 %i.ioi, 72
  %i.iok = getelementptr i8, ptr %i.inx, i64 -3   ; 2 uses
  store i8 %i.ioj, ptr %i.iok, align 1, !tbaa !25
  store ptr %i.iok, ptr %i.bw, align 16, !tbaa !52
  %i.iol = load i8, ptr %i.inr, align 2, !tbaa !25
  %i.iom = zext i8 %i.iol to i32
  br label %asm_head_side_base.exit.i

bb.azr:                                           ; preds = %bb.azp, %bb.azo
  %i.ion = or disjoint i32 %i.ini, 524800
  %i.ioo = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.iop = getelementptr inbounds i8, ptr %i.ioo, i64 -360
  call fastcc void @emit_rma(ptr noundef nonnull %5, i32 noundef -1962934018, i32 noundef %i.ion, ptr noundef nonnull %i.iop)
  br label %asm_head_side_base.exit.i
end_hunk_1
begin_hunk_2_@lj_asm_trace:bb.a
  %.0182289.i = phi i32 [ 0, %.lr.ph.i255 ], [ %.1183.i, %bb.bao ] ; 4 uses
  %.0190288.i = phi i32 [ 0, %.lr.ph.i255 ], [ %.1191.i, %bb.bao ] ; 3 uses
  %i.iow = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.iox = getelementptr inbounds nuw [8 x i8], ptr %i.iow, i64 %indvars.iv.i ; 6 uses
  %i.ioy = getelementptr [2 x i8], ptr %i.mp, i64 %indvars.iv.i
  %i.ioz = load i16, ptr %i.ioy, align 2, !tbaa !69 ; 4 uses
  %i.ipa = zext i16 %i.ioz to i32                 ; 4 uses
  %i.ipb = getelementptr inbounds nuw i8, ptr %i.iox, i64 6 ; 2 uses
  %i.ipc = load i8, ptr %i.ipb, align 2, !tbaa !25 ; 5 uses
  %i.ipd = zext i8 %i.ipc to i32                  ; 6 uses
  %.not219.i = icmp sgt i8 %i.ipc, -1
  br i1 %.not219.i, label %bb.azt, label %bb.bag

bb.azt:                                           ; preds = %bb.azs
  %i.ipe = shl nuw i32 1, %i.ipd
  %i.ipf = xor i32 %i.ipe, -1
  %i.ipg = and i32 %.1293.i, %i.ipf               ; 2 uses
  %i.iph = getelementptr inbounds nuw i8, ptr %i.iox, i64 7
  %i.ipi = load i8, ptr %i.iph, align 1, !tbaa !25 ; 4 uses
  %.not220.i = icmp eq i8 %i.ipi, 0
  br i1 %.not220.i, label %checkmclim.exit233.i, label %bb.azu

bb.azu:                                           ; preds = %bb.azt
  %i.ipj = getelementptr i8, ptr %i.iox, i64 4
  %.val235.i = load i8, ptr %i.ipj, align 4, !tbaa !25
  %i.ipk = zext i8 %i.ipi to i32
  %i.ipl = shl nuw nsw i32 %i.ipk, 2              ; 4 uses
  %i.ipm = icmp samesign ult i8 %i.ipc, 16
  %i.ipn = and i8 %.val235.i, 31                  ; 2 uses
  br i1 %i.ipm, label %bb.azv, label %bb.baa

bb.azv:                                           ; preds = %bb.azu
  %i.ipo = zext nneg i8 %i.ipn to i32
  %i.ipp = shl nuw i32 1, %i.ipo
  %i.ipq = and i32 %i.ipp, 6315993
  %.not.i.i.i263 = icmp eq i32 %i.ipq, 0
  %i.ipr = select i1 %.not.i.i.i263, i32 0, i32 524800 ; 2 uses
  %i.ips = or disjoint i32 %i.ipr, %i.ipd
  %i.ipt = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 2 uses
  %i.ipu = icmp ult i8 %i.ipi, 32
  br i1 %i.ipu, label %bb.azw, label %bb.azx

bb.azw:                                           ; preds = %bb.azv
  %i.ipv = trunc nuw nsw i32 %i.ipl to i8
  %i.ipw = getelementptr inbounds i8, ptr %i.ipt, i64 -1 ; 2 uses
  store i8 %i.ipv, ptr %i.ipw, align 1, !tbaa !25
  br label %bb.azy

bb.azx:                                           ; preds = %bb.azv
  %i.ipx = getelementptr inbounds i8, ptr %i.ipt, i64 -4 ; 2 uses
  store i32 %i.ipl, ptr %i.ipx, align 4, !tbaa !26
  br label %bb.azy

bb.azy:                                           ; preds = %bb.azx, %bb.azw
  %.029.i.i.i.i264 = phi ptr [ %i.ipw, %bb.azw ], [ %i.ipx, %bb.azx ] ; 4 uses
  %.0.i.i.i.i265 = phi i8 [ 64, %bb.azw ], [ -128, %bb.azx ]
  %i.ipy = getelementptr inbounds i8, ptr %.029.i.i.i.i264, i64 -1
  store i8 36, ptr %i.ipy, align 1, !tbaa !25
  %i.ipz = shl nuw nsw i8 %i.ipc, 3
  %i.iqa = and i8 %i.ipz, 56
  %i.iqb = or disjoint i8 %i.iqa, %.0.i.i.i.i265
  %i.iqc = or disjoint i8 %i.iqb, 4
  %i.iqd = getelementptr inbounds i8, ptr %.029.i.i.i.i264, i64 -2
  store i8 %i.iqc, ptr %i.iqd, align 1, !tbaa !25
  %i.iqe = getelementptr i8, ptr %.029.i.i.i.i264, i64 -3 ; 2 uses
  store i8 -119, ptr %i.iqe, align 1, !tbaa !25
  %i.iqf = lshr i32 %i.ips, 1
  %i.iqg = and i32 %i.iqf, 260                    ; 2 uses
  %.not.i.i.i.i.i266 = icmp eq i32 %i.iqg, 0
  br i1 %.not.i.i.i.i.i266, label %ra_save.exit.i, label %bb.azz

bb.azz:                                           ; preds = %bb.azy
  %i.iqh = lshr i32 %i.ipr, 16
  %i.iqi = or disjoint i32 %i.iqg, %i.iqh
  %i.iqj = trunc i32 %i.iqi to i8
  %i.iqk = or disjoint i8 %i.iqj, 64
  %i.iql = getelementptr i8, ptr %.029.i.i.i.i264, i64 -4 ; 2 uses
  store i8 %i.iqk, ptr %i.iql, align 1, !tbaa !25
  br label %ra_save.exit.i

bb.baa:                                           ; preds = %bb.azu
  %i.iqm = icmp eq i8 %i.ipn, 14
  %i.iqn = select i1 %i.iqm, i32 286257916, i32 286258172 ; 2 uses
  %i.iqo = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 2 uses
  %i.iqp = icmp ult i8 %i.ipi, 32
  br i1 %i.iqp, label %bb.bab, label %bb.bac

bb.bab:                                           ; preds = %bb.baa
  %i.iqq = trunc nuw nsw i32 %i.ipl to i8
  %i.iqr = getelementptr inbounds i8, ptr %i.iqo, i64 -1 ; 2 uses
  store i8 %i.iqq, ptr %i.iqr, align 1, !tbaa !25
  br label %bb.bad

bb.bac:                                           ; preds = %bb.baa
  %i.iqs = getelementptr inbounds i8, ptr %i.iqo, i64 -4 ; 2 uses
  store i32 %i.ipl, ptr %i.iqs, align 4, !tbaa !26
  br label %bb.bad

bb.bad:                                           ; preds = %bb.bac, %bb.bab
  %.029.i.i.i259 = phi ptr [ %i.iqr, %bb.bab ], [ %i.iqs, %bb.bac ] ; 4 uses
  %.0.i.i.i260 = phi i8 [ 64, %bb.bab ], [ -128, %bb.bac ]
  %i.iqt = getelementptr inbounds i8, ptr %.029.i.i.i259, i64 -1
  store i8 36, ptr %i.iqt, align 1, !tbaa !25
  %i.iqu = shl i8 %i.ipc, 3
  %i.iqv = and i8 %i.iqu, 56
  %i.iqw = or disjoint i8 %i.iqv, %.0.i.i.i260
  %i.iqx = or disjoint i8 %i.iqw, 4
  %i.iqy = getelementptr inbounds i8, ptr %.029.i.i.i259, i64 -2
  store i8 %i.iqx, ptr %i.iqy, align 1, !tbaa !25
  %i.iqz = getelementptr inbounds i8, ptr %.029.i.i.i259, i64 -6 ; 3 uses
  store i32 %i.iqn, ptr %i.iqz, align 4, !tbaa !26
  %i.ira = getelementptr inbounds i8, ptr %.029.i.i.i259, i64 -5 ; 2 uses
  %i.irb = and i32 %i.ipd, 8
  %.not.i.i.i.i261 = icmp eq i32 %i.irb, 0
  br i1 %.not.i.i.i.i261, label %ra_save.exit.i, label %bb.bae

bb.bae:                                           ; preds = %bb.bad
  store i8 68, ptr %i.ira, align 1, !tbaa !25
  %i.irc = lshr i32 %i.iqn, 8
  %i.ird = trunc i32 %i.irc to i8
  store i8 %i.ird, ptr %i.iqz, align 2, !tbaa !25
  br label %ra_save.exit.i

ra_save.exit.i:                                   ; preds = %bb.bae, %bb.bad, %bb.azz, %bb.azy
  %storemerge352.i = phi ptr [ %i.iql, %bb.azz ], [ %i.iqe, %bb.azy ], [ %i.ira, %bb.bad ], [ %i.iqz, %bb.bae ] ; 2 uses
  store ptr %storemerge352.i, ptr %i.bw, align 16, !tbaa !52
  %i.ire = load ptr, ptr %i.bz, align 8, !tbaa !54
  %i.irf = icmp ult ptr %storemerge352.i, %i.ire
  br i1 %i.irf, label %bb.baf, label %ra_save.exit.checkmclim.exit233_crit_edge.i, !prof !80

ra_save.exit.checkmclim.exit233_crit_edge.i:      ; preds = %ra_save.exit.i
  %.pre.i262 = load i8, ptr %i.ipb, align 2, !tbaa !25 ; 2 uses
  %.pre320.i = zext i8 %.pre.i262 to i32
  %i.irg = icmp sgt i8 %.pre.i262, -1
  br label %checkmclim.exit233.i

bb.baf:                                           ; preds = %ra_save.exit.i
  call fastcc void @asm_mclimit(ptr noundef nonnull %5) #16
  unreachable

bb.bag:                                           ; preds = %bb.azs
  %i.irh = getelementptr inbounds nuw i8, ptr %i.iox, i64 7
  %i.iri = load i8, ptr %i.irh, align 1, !tbaa !25
  %.not221.i = icmp eq i8 %i.iri, 0
  br i1 %.not221.i, label %checkmclim.exit233.i, label %bb.bah

bb.bah:                                           ; preds = %bb.bag
  %i.irj = getelementptr inbounds nuw i8, ptr %i.iox, i64 4 ; 2 uses
  %i.irk = load i8, ptr %i.irj, align 4, !tbaa !25
  %i.irl = or i8 %i.irk, 32
  store i8 %i.irl, ptr %i.irj, align 4, !tbaa !25
  br label %checkmclim.exit233.i

checkmclim.exit233.i:                             ; preds = %bb.bah, %bb.bag, %ra_save.exit.checkmclim.exit233_crit_edge.i, %bb.azt
  %.pre-phi.i = phi i32 [ %.pre320.i, %ra_save.exit.checkmclim.exit233_crit_edge.i ], [ %i.ipd, %bb.bag ], [ %i.ipd, %bb.bah ], [ %i.ipd, %bb.azt ]
  %.not223.i = phi i1 [ %i.irg, %ra_save.exit.checkmclim.exit233_crit_edge.i ], [ false, %bb.bag ], [ false, %bb.bah ], [ true, %bb.azt ] ; 2 uses
  %.1191.i = phi i32 [ %.0190288.i, %ra_save.exit.checkmclim.exit233_crit_edge.i ], [ %.0190288.i, %bb.bag ], [ 1, %bb.bah ], [ %.0190288.i, %bb.azt ] ; 2 uses
  %.2.i256 = phi i32 [ %i.ipg, %ra_save.exit.checkmclim.exit233_crit_edge.i ], [ %.1293.i, %bb.bag ], [ %.1293.i, %bb.bah ], [ %i.ipg, %bb.azt ] ; 2 uses
  %i.irm = icmp eq i32 %.pre-phi.i, %i.ipa
  br i1 %i.irm, label %bb.bai, label %bb.baj

bb.bai:                                           ; preds = %checkmclim.exit233.i
  %i.irn = shl nuw i32 1, %i.ipa
  %i.iro = load i32, ptr %i.kn, align 8, !tbaa !83
  %i.irp = or i32 %i.iro, %i.irn
  store i32 %i.irp, ptr %i.kn, align 8, !tbaa !83
  br label %bb.bao

bb.baj:                                           ; preds = %checkmclim.exit233.i
  %.not222.i = icmp ult i16 %i.ioz, 256
  br i1 %.not222.i, label %bb.bal, label %bb.bak

bb.bak:                                           ; preds = %bb.baj
  %spec.select.i257 = select i1 %.not223.i, i32 1, i32 %.0182289.i
  br label %bb.bao

bb.bal:                                           ; preds = %bb.baj
  br i1 %.not223.i, label %bb.ban, label %bb.bam

bb.bam:                                           ; preds = %bb.bal
  %i.irq = getelementptr inbounds nuw i8, ptr %i.iox, i64 7
  %i.irr = load i8, ptr %i.irq, align 1, !tbaa !25
  %.not224.i = icmp eq i8 %i.irr, 0
  br i1 %.not224.i, label %bb.bao, label %bb.ban

bb.ban:                                           ; preds = %bb.bam, %bb.bal
  %i.irs = trunc i64 %indvars.iv.i to i16
  %i.irt = zext nneg i16 %i.ioz to i64
  %i.iru = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.irt
  store i16 %i.irs, ptr %i.iru, align 2, !tbaa !69
  %i.irv = shl nuw i32 1, %i.ipa
  %i.irw = or i32 %i.irv, %.0164292.i
  br label %bb.bao

bb.bao:                                           ; preds = %bb.ban, %bb.bam, %bb.bak, %bb.bai
  %.1183.i = phi i32 [ %.0182289.i, %bb.bai ], [ %spec.select.i257, %bb.bak ], [ %.0182289.i, %bb.bam ], [ %.0182289.i, %bb.ban ] ; 2 uses
  %.1165.i = phi i32 [ %.0164292.i, %bb.bai ], [ %.0164292.i, %bb.bak ], [ %.0164292.i, %bb.bam ], [ %i.irw, %bb.ban ] ; 2 uses
  %.not226.i = icmp ult i16 %i.ioz, 256
  %i.irx = shl nuw i32 1, %i.ipa
  %i.iry = xor i32 %i.irx, -1
  %i.irz = select i1 %.not226.i, i32 %i.iry, i32 -1
  %.2176.i = and i32 %i.irz, %.1175291.i          ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.isa = icmp ugt i32 %indvars.i, 32768
  br i1 %i.isa, label %bb.azs, label %._crit_edge.loopexit.i258, !llvm.loop !115

._crit_edge.loopexit.i258:                        ; preds = %bb.bao
  %i.isb = icmp eq i32 %.1191.i, 0
  br label %._crit_edge.i247

._crit_edge.i247:                                 ; preds = %._crit_edge.loopexit.i258, %asm_head_side_base.exit.i
  %.0190.lcssa.i = phi i1 [ true, %asm_head_side_base.exit.i ], [ %i.isb, %._crit_edge.loopexit.i258 ]
  %.0182.lcssa.i = phi i32 [ 0, %asm_head_side_base.exit.i ], [ %.1183.i, %._crit_edge.loopexit.i258 ] ; 3 uses
  %.1175.lcssa.i = phi i32 [ %.0174.i, %asm_head_side_base.exit.i ], [ %.2176.i, %._crit_edge.loopexit.i258 ]
  %.0164.lcssa.i = phi i32 [ 0, %asm_head_side_base.exit.i ], [ %.1165.i, %._crit_edge.loopexit.i258 ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.i246, %asm_head_side_base.exit.i ], [ %.2.i256, %._crit_edge.loopexit.i258 ] ; 3 uses
  %.val237.i = load i32, ptr %i.lm, align 16, !tbaa !70 ; 2 uses
  %i.isc = icmp slt i32 %.val237.i, 3
  %i.isd = shl i32 %.val237.i, 2
  %i.ise = add i32 %i.isd, 4
  %i.isf = and i32 %i.ise, -16
  %.0.i240.i = select i1 %i.isc, i32 0, i32 %i.isf ; 2 uses
  %i.isg = load ptr, ptr %i.br, align 8, !tbaa !131
  %i.ish = getelementptr inbounds nuw i8, ptr %i.isg, i64 102
  %i.isi = load i16, ptr %i.ish, align 2, !tbaa !176 ; 2 uses
  %i.isj = zext i16 %i.isi to i32
  %i.isk = sub nsw i32 %.0.i240.i, %i.isj         ; 4 uses
  %i.isl = icmp slt i32 %i.isk, 0
  %spec.select228.i = call i32 @llvm.smax.i32(i32 %i.isk, i32 0) ; 2 uses
  %i.ism = trunc i32 %.0.i240.i to i16
  %i.isn = select i1 %i.isl, i16 %i.isi, i16 %i.ism
  %i.iso = load ptr, ptr %i.av, align 16, !tbaa !45 ; 3 uses
  %i.isp = getelementptr inbounds nuw i8, ptr %i.iso, i64 102
  store i16 %i.isn, ptr %i.isp, align 2, !tbaa !176
  br i1 %.0190.lcssa.i, label %.loopexit271.i, label %bb.bap

bb.bap:                                           ; preds = %._crit_edge.i247
  %i.isq = load i32, ptr %i.lk, align 4, !tbaa !68 ; 2 uses
  %i.isr = icmp ugt i32 %i.isq, 32768
  br i1 %i.isr, label %.lr.ph303.i, label %.loopexit271.i

.lr.ph303.i:                                      ; preds = %bb.bap
  %i.iss = zext i32 %i.isq to i64
  br label %bb.baq

bb.baq:                                           ; preds = %checkmclim.exit232.i, %.lr.ph303.i
  %indvars.iv315.i = phi i64 [ %i.iss, %.lr.ph303.i ], [ %indvars.iv.next316.i, %checkmclim.exit232.i ] ; 4 uses
  %.3301.i = phi i32 [ %.1.lcssa.i, %.lr.ph303.i ], [ %.6.i, %checkmclim.exit232.i ] ; 4 uses
  %.2166300.i = phi i32 [ %.0164.lcssa.i, %.lr.ph303.i ], [ %.6170.i, %checkmclim.exit232.i ] ; 4 uses
  %.2184298.i = phi i32 [ %.0182.lcssa.i, %.lr.ph303.i ], [ %.6188.i, %checkmclim.exit232.i ] ; 4 uses
  %i.ist = load ptr, ptr %i.kc, align 16, !tbaa !57
  %i.isu = getelementptr inbounds nuw [8 x i8], ptr %i.ist, i64 %indvars.iv315.i ; 4 uses
  %i.isv = getelementptr inbounds nuw i8, ptr %i.isu, i64 4 ; 3 uses
  %i.isw = load i8, ptr %i.isv, align 4, !tbaa !25 ; 3 uses
  %i.isx = and i8 %i.isw, 32
  %.not217.i = icmp eq i8 %i.isx, 0
  br i1 %.not217.i, label %checkmclim.exit232.i, label %bb.bar

bb.bar:                                           ; preds = %bb.baq
  %i.isy = and i8 %i.isw, -33
  store i8 %i.isy, ptr %i.isv, align 4, !tbaa !25
  %i.isz = getelementptr [2 x i8], ptr %i.mp, i64 %indvars.iv315.i
  %i.ita = load i16, ptr %i.isz, align 2, !tbaa !69 ; 2 uses
  %i.itb = zext i16 %i.ita to i32                 ; 2 uses
  %i.itc = lshr i32 %i.itb, 8                     ; 2 uses
  %.not218.i = icmp eq i32 %i.itc, 0              ; 2 uses
  br i1 %.not218.i, label %bb.bas, label %bb.bat

bb.bas:                                           ; preds = %bb.bar
  %i.itd = trunc i16 %i.ita to i8
  %i.ite = or i8 %i.itd, -128
  %i.itf = getelementptr inbounds nuw i8, ptr %i.isu, i64 6
  store i8 %i.ite, ptr %i.itf, align 2, !tbaa !25
  br label %bb.bau

bb.bat:                                           ; preds = %bb.bar
  %i.itg = shl nuw nsw i32 %i.itc, 2
  %i.ith = add nuw nsw i32 %i.itg, %spec.select228.i
  %i.iti = getelementptr inbounds nuw i8, ptr %i.isu, i64 7
  %i.itj = load i8, ptr %i.iti, align 1, !tbaa !25
  %i.itk = zext i8 %i.itj to i32
  %i.itl = shl nuw nsw i32 %i.itk, 2
  %i.itm = icmp eq i32 %i.ith, %i.itl
  br i1 %i.itm, label %checkmclim.exit232.i, label %bb.bau

bb.bau:                                           ; preds = %bb.bat, %bb.bas
  %i.itn = and i8 %i.isw, 31
  %i.ito = add nsw i8 %i.itn, -13
  %i.itp = icmp ult i8 %i.ito, 2
  %i.itq = select i1 %i.itp, i32 -65536, i32 49135
  %i.itr = and i32 %i.itq, %.3301.i               ; 2 uses
  %i.its = icmp eq i32 %i.itr, 0
  br i1 %i.its, label %bb.bav, label %bb.baw

bb.bav:                                           ; preds = %bb.bau
  %i.itt = load ptr, ptr %i.au, align 8, !tbaa !44
  call void @lj_trace_err(ptr noundef %i.itt, i32 noundef 34) #15
  unreachable

bb.baw:                                           ; preds = %bb.bau
  %i.itu = trunc nuw i64 %indvars.iv315.i to i32
  %i.itv = call fastcc i32 @ra_allocref(ptr noundef nonnull %5, i32 noundef %i.itu, i32 noundef %i.itr) ; 7 uses
  %.val.i254 = load i8, ptr %i.isv, align 4, !tbaa !25
  %i.itw = getelementptr i8, ptr %i.isu, i64 7
  %.val234.i = load i8, ptr %i.itw, align 1, !tbaa !25 ; 5 uses
  %i.itx = zext i8 %.val234.i to i32
  %i.ity = shl nuw nsw i32 %i.itx, 2              ; 4 uses
  %i.itz = icmp samesign ult i32 %i.itv, 16
  %i.iua = and i8 %.val.i254, 31                  ; 2 uses
  br i1 %i.itz, label %bb.bax, label %bb.bbd

bb.bax:                                           ; preds = %bb.baw
  %i.iub = zext nneg i8 %i.iua to i32
  %i.iuc = shl nuw i32 1, %i.iub
  %i.iud = and i32 %i.iuc, 6315993
  %.not.i.i247.i = icmp eq i32 %i.iud, 0
  %i.iue = select i1 %.not.i.i247.i, i32 0, i32 524800 ; 2 uses
  %i.iuf = or disjoint i32 %i.iue, %i.itv
  %i.iug = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 3 uses
  %.not1.i248.i = icmp eq i8 %.val234.i, 0
  br i1 %.not1.i248.i, label %bb.bbb, label %bb.bay

bb.bay:                                           ; preds = %bb.bax
  %i.iuh = icmp ult i8 %.val234.i, 32
  br i1 %i.iuh, label %bb.baz, label %bb.bba

bb.baz:                                           ; preds = %bb.bay
  %i.iui = trunc nuw nsw i32 %i.ity to i8
  %i.iuj = getelementptr inbounds i8, ptr %i.iug, i64 -1 ; 2 uses
  store i8 %i.iui, ptr %i.iuj, align 1, !tbaa !25
  br label %bb.bbb

bb.bba:                                           ; preds = %bb.bay
  %i.iuk = getelementptr inbounds i8, ptr %i.iug, i64 -4 ; 2 uses
  store i32 %i.ity, ptr %i.iuk, align 4, !tbaa !26
  br label %bb.bbb

bb.bbb:                                           ; preds = %bb.bba, %bb.baz, %bb.bax
  %.029.i.i.i249.i = phi ptr [ %i.iug, %bb.bax ], [ %i.iuk, %bb.bba ], [ %i.iuj, %bb.baz ] ; 4 uses
  %.0.i.i.i250.i = phi i32 [ 0, %bb.bax ], [ 128, %bb.bba ], [ 64, %bb.baz ]
  %i.iul = getelementptr inbounds i8, ptr %.029.i.i.i249.i, i64 -1
  store i8 36, ptr %i.iul, align 1, !tbaa !25
  %i.ium = shl nuw nsw i32 %i.itv, 3
  %i.iun = and i32 %i.ium, 56
  %i.iuo = or disjoint i32 %.0.i.i.i250.i, %i.iun
  %i.iup = trunc nuw i32 %i.iuo to i8
  %i.iuq = or disjoint i8 %i.iup, 4
  %i.iur = getelementptr inbounds i8, ptr %.029.i.i.i249.i, i64 -2
  store i8 %i.iuq, ptr %i.iur, align 1, !tbaa !25
  %i.ius = getelementptr i8, ptr %.029.i.i.i249.i, i64 -3 ; 2 uses
  store i8 -119, ptr %i.ius, align 1, !tbaa !25
  %i.iut = lshr i32 %i.iuf, 1
  %i.iuu = and i32 %i.iut, 260                    ; 2 uses
  %.not.i.i.i.i251.i = icmp eq i32 %i.iuu, 0
  br i1 %.not.i.i.i.i251.i, label %ra_save.exit254.i, label %bb.bbc

bb.bbc:                                           ; preds = %bb.bbb
  %i.iuv = lshr i32 %i.iue, 16
  %i.iuw = or disjoint i32 %i.iuu, %i.iuv
  %i.iux = trunc i32 %i.iuw to i8
  %i.iuy = or disjoint i8 %i.iux, 64
  %i.iuz = getelementptr i8, ptr %.029.i.i.i249.i, i64 -4 ; 2 uses
  store i8 %i.iuy, ptr %i.iuz, align 1, !tbaa !25
  br label %ra_save.exit254.i

bb.bbd:                                           ; preds = %bb.baw
  %i.iva = icmp eq i8 %i.iua, 14
  %i.ivb = select i1 %i.iva, i32 286257916, i32 286258172 ; 2 uses
  %i.ivc = load ptr, ptr %i.bw, align 16, !tbaa !52 ; 3 uses
  %.not.i241.i = icmp eq i8 %.val234.i, 0
  br i1 %.not.i241.i, label %bb.bbh, label %bb.bbe

bb.bbe:                                           ; preds = %bb.bbd
  %i.ivd = icmp ult i8 %.val234.i, 32
  br i1 %i.ivd, label %bb.bbf, label %bb.bbg

bb.bbf:                                           ; preds = %bb.bbe
  %i.ive = trunc nuw nsw i32 %i.ity to i8
  %i.ivf = getelementptr inbounds i8, ptr %i.ivc, i64 -1 ; 2 uses
  store i8 %i.ive, ptr %i.ivf, align 1, !tbaa !25
  br label %bb.bbh

bb.bbg:                                           ; preds = %bb.bbe
  %i.ivg = getelementptr inbounds i8, ptr %i.ivc, i64 -4 ; 2 uses
  store i32 %i.ity, ptr %i.ivg, align 4, !tbaa !26
  br label %bb.bbh

bb.bbh:                                           ; preds = %bb.bbg, %bb.bbf, %bb.bbd
  %.029.i.i242.i = phi ptr [ %i.ivc, %bb.bbd ], [ %i.ivg, %bb.bbg ], [ %i.ivf, %bb.bbf ] ; 4 uses
  %.0.i.i243.i = phi i32 [ 0, %bb.bbd ], [ 128, %bb.bbg ], [ 64, %bb.bbf ]
  %i.ivh = getelementptr inbounds i8, ptr %.029.i.i242.i, i64 -1
  store i8 36, ptr %i.ivh, align 1, !tbaa !25
  %i.ivi = shl nuw nsw i32 %i.itv, 3
  %i.ivj = and i32 %i.ivi, 56
  %i.ivk = or disjoint i32 %.0.i.i243.i, %i.ivj
  %i.ivl = trunc nuw i32 %i.ivk to i8
  %i.ivm = or disjoint i8 %i.ivl, 4
  %i.ivn = getelementptr inbounds i8, ptr %.029.i.i242.i, i64 -2
  store i8 %i.ivm, ptr %i.ivn, align 1, !tbaa !25
  %i.ivo = getelementptr inbounds i8, ptr %.029.i.i242.i, i64 -6 ; 3 uses
end_hunk_2
begin_hunk_3_@asm_gencall:bb.a
emit_rr.exit9.i:                                  ; preds = %bb.y, %bb.x
  %.046.i.i8.i = phi ptr [ %i.dj, %bb.x ], [ %i.dr, %bb.y ]
  store ptr %.046.i.i8.i, ptr %i.y, align 8, !tbaa !52
  br label %emit_loadi.exit

bb.z:                                             ; preds = %bb.t
  %i.ds = shl nuw i32 1, %.0113
  %i.dt = tail call fastcc i32 @ra_allocref(ptr noundef %0, i32 noundef %i.ab, i32 noundef %i.ds) ; 0 uses
  br label %emit_loadi.exit

.thread101:                                       ; preds = %select.unfold, %bb.i
  %.2100104 = phi i32 [ %.061125, %bb.i ], [ 1, %select.unfold ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !25  ; 2 uses
  %i.dw = zext nneg i8 %i.dv to i32
  %.not.i82 = icmp sgt i8 %i.dv, -1
  br i1 %.not.i82, label %ra_alloc1.exit, label %bb.aa

bb.aa:                                            ; preds = %.thread101
  %i.dx = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef -65536)
  br label %ra_alloc1.exit

ra_alloc1.exit:                                   ; preds = %.thread101, %bb.aa
  %.0.i83 = phi i32 [ %i.dx, %bb.aa ], [ %i.dw, %.thread101 ] ; 3 uses
  %i.dy = shl nuw i32 1, %.0.i83
  %i.dz = xor i32 %i.dy, -1
  %i.ea = load i32, ptr %i.x, align 8, !tbaa !82
  %i.eb = and i32 %i.ea, %i.dz
  store i32 %i.eb, ptr %i.x, align 8, !tbaa !82
  %i.ec = load i8, ptr %i.af, align 4, !tbaa !25
  %i.ed = and i8 %i.ec, 31
  %i.ee = icmp eq i8 %i.ed, 14
  %i.ef = select i1 %i.ee, i32 286257916, i32 286258172 ; 2 uses
  %i.eg = load ptr, ptr %i.y, align 8, !tbaa !52  ; 3 uses
  %.not120 = icmp eq i32 %.064123, 0
  br i1 %.not120, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %ra_alloc1.exit
  %i.eh = add i32 %.064123, 128
  %i.ei = icmp ult i32 %i.eh, 256
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = trunc nsw i32 %.064123 to i8
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -1 ; 2 uses
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !25
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  store i32 %.064123, ptr %i.el, align 4, !tbaa !26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %ra_alloc1.exit
  %.029.i = phi ptr [ %i.eg, %ra_alloc1.exit ], [ %i.el, %bb.ad ], [ %i.ek, %bb.ac ] ; 4 uses
  %.0.i84 = phi i32 [ 0, %ra_alloc1.exit ], [ 128, %bb.ad ], [ 64, %bb.ac ]
  %i.em = getelementptr inbounds i8, ptr %.029.i, i64 -1
  store i8 36, ptr %i.em, align 1, !tbaa !25
  %i.en = shl nuw nsw i32 %.0.i83, 3
  %i.eo = and i32 %i.en, 56
  %i.ep = or disjoint i32 %.0.i84, %i.eo
  %i.eq = trunc nuw i32 %i.ep to i8
  %i.er = or disjoint i8 %i.eq, 4
  %i.es = getelementptr inbounds i8, ptr %.029.i, i64 -2
  store i8 %i.er, ptr %i.es, align 1, !tbaa !25
  %i.et = getelementptr inbounds i8, ptr %.029.i, i64 -6 ; 3 uses
  store i32 %i.ef, ptr %i.et, align 4, !tbaa !26
  %i.eu = getelementptr inbounds i8, ptr %.029.i, i64 -5 ; 2 uses
  %i.ev = and i32 %.0.i83, 8
  %.not.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i, label %emit_rmro.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 68, ptr %i.eu, align 1, !tbaa !25
  %i.ew = lshr i32 %i.ef, 8
  %i.ex = trunc i32 %i.ew to i8
  store i8 %i.ex, ptr %i.et, align 2, !tbaa !25
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %bb.ae, %bb.af
  %.046.i.i = phi ptr [ %i.eu, %bb.ae ], [ %i.et, %bb.af ]
  store ptr %.046.i.i, ptr %i.y, align 8, !tbaa !52
  %i.ey = add nsw i32 %.064123, 8
  br label %emit_loadi.exit

.thread114:                                       ; preds = %.thread106
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.fa = load i8, ptr %i.ez, align 2, !tbaa !25  ; 2 uses
  %i.fb = zext nneg i8 %i.fa to i32
  %.not.i85 = icmp sgt i8 %i.fa, -1
  br i1 %.not.i85, label %ra_alloc1.exit87, label %bb.ag

bb.ag:                                            ; preds = %.thread114
  %i.fc = tail call fastcc i32 @ra_allocref(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef 49135)
  br label %ra_alloc1.exit87

ra_alloc1.exit87:                                 ; preds = %.thread114, %bb.ag
  %.0.i86 = phi i32 [ %i.fc, %bb.ag ], [ %i.fb, %.thread114 ] ; 3 uses
  %i.fd = shl nuw i32 1, %.0.i86
  %i.fe = xor i32 %i.fd, -1
  %i.ff = load i32, ptr %i.x, align 8, !tbaa !82
  %i.fg = and i32 %i.ff, %i.fe
  store i32 %i.fg, ptr %i.x, align 8, !tbaa !82
  %i.fh = load ptr, ptr %i.y, align 8, !tbaa !52  ; 3 uses
  %.not119 = icmp eq i32 %.064123, 0
  br i1 %.not119, label %emit_rmro.exit92, label %bb.ah

bb.ah:                                            ; preds = %ra_alloc1.exit87
  %i.fi = add i32 %.064123, 128
  %i.fj = icmp ult i32 %i.fi, 256
  br i1 %i.fj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fk = trunc nsw i32 %.064123 to i8
  %i.fl = getelementptr inbounds i8, ptr %i.fh, i64 -1 ; 2 uses
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !25
  br label %emit_rmro.exit92

bb.aj:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds i8, ptr %i.fh, i64 -4 ; 2 uses
  store i32 %.064123, ptr %i.fm, align 4, !tbaa !26
  br label %emit_rmro.exit92

emit_rmro.exit92:                                 ; preds = %ra_alloc1.exit87, %bb.ai, %bb.aj
  %.029.i88 = phi ptr [ %i.fh, %ra_alloc1.exit87 ], [ %i.fm, %bb.aj ], [ %i.fl, %bb.ai ] ; 4 uses
  %.0.i89 = phi i32 [ 0, %ra_alloc1.exit87 ], [ 128, %bb.aj ], [ 64, %bb.ai ]
  %i.fn = getelementptr inbounds i8, ptr %.029.i88, i64 -1
  store i8 36, ptr %i.fn, align 1, !tbaa !25
  %i.fo = shl nuw nsw i32 %.0.i86, 3
  %i.fp = and i32 %i.fo, 56
  %i.fq = or disjoint i32 %.0.i89, %i.fp
  %i.fr = trunc nuw i32 %i.fq to i8
  %i.fs = or disjoint i8 %i.fr, 4
  %i.ft = getelementptr inbounds i8, ptr %.029.i88, i64 -2
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !25
  %i.fu = getelementptr i8, ptr %.029.i88, i64 -3
  store i8 -119, ptr %i.fu, align 1, !tbaa !25
  %i.fv = trunc nuw i32 %.0.i86 to i8
  %i.fw = lshr i8 %i.fv, 1
  %i.fx = and i8 %i.fw, 4
  %i.fy = or disjoint i8 %i.fx, 72
  %i.fz = getelementptr i8, ptr %.029.i88, i64 -4 ; 2 uses
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !25
  store ptr %i.fz, ptr %i.y, align 8, !tbaa !52
  %i.ga = add i32 %.064123, 8
  br label %emit_loadi.exit

emit_loadi.exit:                                  ; preds = %emit_rr.exit9.i, %emit_rr.exit.i80, %bb.s, %emit_rr.exit.i, %emit_rmro.exit, %emit_rmro.exit92, %bb.l, %bb.z
  %.299 = phi i32 [ %.061125, %emit_rmro.exit92 ], [ %.2112, %bb.l ], [ %.2112, %bb.z ], [ %.2112, %bb.s ], [ %.2100104, %emit_rmro.exit ], [ %.2112, %emit_rr.exit.i ], [ %.2112, %emit_rr.exit.i80 ], [ %.2112, %emit_rr.exit9.i ] ; 2 uses
  %.16397 = phi i32 [ %i.al, %emit_rmro.exit92 ], [ %.163111, %bb.l ], [ %.163111, %bb.z ], [ %.163111, %bb.s ], [ %.062124, %emit_rmro.exit ], [ %.163111, %emit_rr.exit.i ], [ %.163111, %emit_rr.exit.i80 ], [ %.163111, %emit_rr.exit9.i ]
  %.165 = phi i32 [ %i.ga, %emit_rmro.exit92 ], [ %.064123, %bb.l ], [ %.064123, %bb.z ], [ %.064123, %bb.s ], [ %i.ey, %emit_rmro.exit ], [ %.064123, %emit_rr.exit.i ], [ %.064123, %emit_rr.exit.i80 ], [ %.064123, %emit_rr.exit9.i ]
  %i.gb = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.gc = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.gd = icmp ult ptr %i.gb, %i.gc
  br i1 %i.gd, label %bb.ak, label %bb.g, !prof !80

bb.ak:                                            ; preds = %emit_loadi.exit
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.ge = trunc i32 %.299 to i8
  %i.gf = add i8 %i.ge, -16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.061.lcssa = phi i8 [ 0, %bb.f ], [ %i.gf, %._crit_edge.loopexit ]
  %.not72 = icmp eq ptr %.060, null
  br i1 %.not72, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  store i8 %.061.lcssa, ptr %.060, align 1, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ra_evictset(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !83
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %1, -65536
  %i.h = and i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %checkmclim.exit22

checkmclim.exit22:                                ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.a ], [ %i.s, %bb.b ]  ; 3 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %checkmclim.exit22
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0, i1 true) ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = and i32 %i.n, 65535
  %i.p = tail call fastcc i32 @ra_restore(ptr noundef %0, i32 noundef %i.o) ; 0 uses
  %i.q = shl nuw i32 1, %i.k
  %i.r = xor i32 %i.q, -1
  %i.s = and i32 %.0, %i.r
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.v = icmp ult ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %checkmclim.exit22, !prof !80, !llvm.loop !185

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

bb.d:                                             ; preds = %checkmclim.exit22
  %i.w = load i32, ptr %i.d, align 8, !tbaa !83
  %i.x = xor i32 %i.w, -1
  %i.y = and i32 %1, %i.x
  br label %checkmclim.exit

checkmclim.exit:                                  ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.y, %bb.d ], [ %i.ah, %bb.e ] ; 3 uses
  %.not21 = icmp eq i32 %.1, 0
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %checkmclim.exit
  %i.z = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.1, i1 true) ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = and i32 %i.ac, 65535
  %i.ae = tail call fastcc i32 @ra_restore(ptr noundef %0, i32 noundef %i.ad) ; 0 uses
  %i.af = shl nuw i32 1, %i.z
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %.1, %i.ag
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !52
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !54
  %i.ak = icmp ult ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %checkmclim.exit, !prof !80, !llvm.loop !186

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @asm_mclimit(ptr noundef nonnull %0) #16
  unreachable

bb.g:                                             ; preds = %checkmclim.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ra_destreg(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 17) %2) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %2                    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !25    ; 3 uses
  %i.d = zext i8 %i.c to i32                      ; 3 uses
  %.not.i = icmp sgt i8 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw i32 1, %i.d                      ; 2 uses
  %i.h = or i32 %i.g, %i.f
  store i32 %i.h, ptr %i.e, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = or i32 %i.j, %i.g
  store i32 %i.k, ptr %i.i, align 4, !tbaa !71
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i8 %i.c, -3
  br i1 %i.l, label %bb.d, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.c
  %.pre = and i32 %i.f, %i.a
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.m = and i32 %i.d, 127                        ; 2 uses
  %i.n = shl nuw i32 1, %i.m                      ; 2 uses
  %i.o = and i32 %i.f, %i.a                       ; 2 uses
  %i.p = and i32 %i.o, %i.n
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge.i_crit_edge ], [ %i.o, %bb.d ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre-phi, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.q = tail call fastcc i32 @ra_evict(ptr noundef nonnull %0, i32 noundef %i.a)
  br label %ra_scratch.exit.i

bb.f:                                             ; preds = %._crit_edge.i
  %i.r = tail call i32 @llvm.bswap.i32(i32 range(i32 1, 0) %.pre-phi)
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 7
  br label %ra_scratch.exit.i

ra_scratch.exit.i:                                ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.t, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.u = shl nuw i32 1, %.0.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %ra_scratch.exit.i, %bb.d
  %.sink30.i = phi i32 [ %i.u, %ra_scratch.exit.i ], [ %i.n, %bb.d ]
  %.0.i = phi i32 [ %.0.i.i.i, %ra_scratch.exit.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !71
  %i.x = or i32 %i.w, %.sink30.i
  store i32 %i.x, ptr %i.v, align 4, !tbaa !71
  %i.y = trunc nuw i32 %.0.i to i8
  store i8 %i.y, ptr %i.b, align 2, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.g ], [ %i.d, %bb.b ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !25   ; 2 uses
  %.not23.i = icmp eq i8 %i.aa, 0
  br i1 %.not23.i, label %ra_dest.exit, label %bb.i, !prof !39

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %1, i64 4
  %.val.i = load i8, ptr %i.ab, align 4, !tbaa !25
  tail call fastcc void @ra_save(ptr noundef nonnull %0, i8 %.val.i, i8 %i.aa, i32 noundef %.1.i)
  br label %ra_dest.exit

ra_dest.exit:                                     ; preds = %bb.h, %bb.i
  %.not = icmp eq i32 %.1.i, %2
  br i1 %.not, label %emit_movrr.exit, label %bb.j

bb.j:                                             ; preds = %ra_dest.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.ae = or i32 %i.ad, %i.a
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !71
  %i.af = icmp samesign ult i32 %.1.i, 16
  br i1 %i.af, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !25
  %i.ai = and i8 %i.ah, 31
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ak, 6315993
  %.not.i11 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i11, i32 0, i32 524800  ; 2 uses
  %i.an = or disjoint i32 %i.am, %.1.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  %i.aq = shl nuw nsw i32 %.1.i, 3
  %i.ar = and i32 %2, 7
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = trunc nuw nsw i32 %i.as to i8
  %i.au = or i8 %i.at, -64
  %i.av = getelementptr inbounds i8, ptr %i.ap, i64 -1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !25
  %i.aw = getelementptr i8, ptr %i.ap, i64 -2     ; 2 uses
  store i8 -117, ptr %i.aw, align 1, !tbaa !25
  %i.ax = lshr i32 %i.an, 1
  %i.ay = and i32 %i.ax, 260
  %i.az = lshr i32 %2, 3
  %i.ba = and i32 %i.az, 1
  %i.bb = or disjoint i32 %i.ay, %i.ba            ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i12, label %emit_rr.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = lshr i32 %i.am, 16
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i8
  %i.bf = or disjoint i8 %i.be, 64
  %i.bg = getelementptr i8, ptr %i.ap, i64 -3     ; 2 uses
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !25
  br label %emit_rr.exit.i

emit_rr.exit.i:                                   ; preds = %bb.l, %bb.k
  %.046.i.i.i = phi ptr [ %i.aw, %bb.k ], [ %i.bg, %bb.l ]
  store ptr %.046.i.i.i, ptr %i.ao, align 8, !tbaa !52
  br label %emit_movrr.exit

bb.m:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !52 ; 3 uses
  %i.bj = shl nuw nsw i32 %.1.i, 3
  %i.bk = and i32 %2, 7
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = or i8 %i.bm, -64
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 -1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !25
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 -3 ; 2 uses
  store i16 10255, ptr %i.bp, align 2, !tbaa !69
end_hunk_3
