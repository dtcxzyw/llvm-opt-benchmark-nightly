inline.NumInlined: 14
inline.NumDeleted: 8
begin_hunk_0_@best_huffman_divide
define dso_local void @best_huffman_divide(i32 noundef %0, i32 noundef %1, ptr noundef captures(none) %2, ptr noundef readonly captures(address) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [25 x i32], align 16              ; 76 uses
  %i.c = alloca [25 x i32], align 16              ; 31 uses
  %4 = alloca %struct.gr_info, align 8            ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
end_hunk_0
begin_hunk_1_@best_huffman_divide:bb.a
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l ; 21 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 8), align 4, !tbaa !4 ; 2 uses
  %i.o = icmp sgt i32 %i.n, %i.f
  %.0.lcssa.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.lcssa.sroa.gep108 = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %.0.lcssa.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.0.lcssa.sroa.gep111 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.0.lcssa.sroa.gep112 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %.0.lcssa.sroa.gep113 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.0.lcssa.sroa.gep114 = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %.0.lcssa.sroa.gep115 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.0.lcssa.sroa.gep116 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.0.lcssa.sroa.gep117 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.0.lcssa.sroa.gep118 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.0.lcssa.sroa.gep119 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.0.lcssa.sroa.gep120 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.0.lcssa.sroa.gep121 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %.0.lcssa.sroa.gep122 = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.0.lcssa.sroa.gep123 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.0.lcssa.sroa.gep124 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.0.lcssa.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.0.lcssa.sroa.gep126 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.0.lcssa.sroa.gep127 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.0.lcssa.sroa.gep128 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %.0.lcssa.sroa.gep.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.lcssa.sroa.gep108.a = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %.0.lcssa.sroa.gep110.a = getelementptr inbounds nuw i8, ptr %i.b, i64 88
end_hunk_1
begin_hunk_2_@best_huffman_divide:bb.a
  br i1 %i.o, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.lcssa.sroa.gep132 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.lcssa.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.p, align 8, !tbaa !4
end_hunk_2
begin_hunk_3_@best_huffman_divide:bb.a
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.lcssa.sroa.phi = phi ptr [ %.0.lcssa.sroa.gep, %bb.a ], [ %.0.lcssa.sroa.gep108, %bb.v ], [ %.0.lcssa.sroa.gep109, %bb.b ], [ %.0.lcssa.sroa.gep110, %bb.u ], [ %.0.lcssa.sroa.gep111, %bb.c ], [ %.0.lcssa.sroa.gep112, %bb.l ], [ %.0.lcssa.sroa.gep113, %bb.d ], [ %.0.lcssa.sroa.gep114, %bb.t ], [ %.0.lcssa.sroa.gep115, %bb.e ], [ %.0.lcssa.sroa.gep116, %bb.p ], [ %.0.lcssa.sroa.gep117, %bb.f ], [ %.0.lcssa.sroa.gep118, %bb.s ], [ %.0.lcssa.sroa.gep119, %bb.g ], [ %.0.lcssa.sroa.gep120, %bb.m ], [ %.0.lcssa.sroa.gep121, %bb.h ], [ %.0.lcssa.sroa.gep122, %bb.r ], [ %.0.lcssa.sroa.gep123, %bb.i ], [ %.0.lcssa.sroa.gep124, %bb.o ], [ %.0.lcssa.sroa.gep125, %bb.j ], [ %.0.lcssa.sroa.gep126, %bb.q ], [ %.0.lcssa.sroa.gep127, %bb.k ], [ %.0.lcssa.sroa.gep128, %bb.n ] ; 2 uses
  %.0.lcssa.sroa.phi.a = phi ptr [ %.0.lcssa.sroa.gep.a, %bb.a ], [ %.0.lcssa.sroa.gep108.a, %bb.v ], [ %.0.lcssa.sroa.gep132, %bb.b ], [ %.0.lcssa.sroa.gep110.a, %bb.u ], [ %.0.lcssa.sroa.gep111.a, %bb.c ], [ %.0.lcssa.sroa.gep112.a, %bb.l ], [ %.0.lcssa.sroa.gep113.a, %bb.d ], [ %.0.lcssa.sroa.gep114.a, %bb.t ], [ %.0.lcssa.sroa.gep115.a, %bb.e ], [ %.0.lcssa.sroa.gep116.a, %bb.p ], [ %.0.lcssa.sroa.gep117.a, %bb.f ], [ %.0.lcssa.sroa.gep118.a, %bb.s ], [ %.0.lcssa.sroa.gep119.a, %bb.g ], [ %.0.lcssa.sroa.gep120.a, %bb.m ], [ %.0.lcssa.sroa.gep121.a, %bb.h ], [ %.0.lcssa.sroa.gep122.a, %bb.r ], [ %.0.lcssa.sroa.gep123.a, %bb.i ], [ %.0.lcssa.sroa.gep124.a, %bb.o ], [ %.0.lcssa.sroa.gep125.a, %bb.j ], [ %.0.lcssa.sroa.gep126.a, %bb.q ], [ %.0.lcssa.sroa.gep127.a, %bb.k ], [ %.0.lcssa.sroa.gep128.a, %bb.n ] ; 2 uses
  %.0.lcssa = phi i64 [ 2, %bb.a ], [ 23, %bb.v ], [ 3, %bb.b ], [ 22, %bb.u ], [ 4, %bb.c ], [ 13, %bb.l ], [ 5, %bb.d ], [ 21, %bb.t ], [ 6, %bb.e ], [ 17, %bb.p ], [ 7, %bb.f ], [ 20, %bb.s ], [ 8, %bb.g ], [ 14, %bb.m ], [ 9, %bb.h ], [ 19, %bb.r ], [ 10, %bb.i ], [ 16, %bb.o ], [ 11, %bb.j ], [ 18, %bb.q ], [ 12, %bb.k ], [ 15, %bb.n ] ; 3 uses
  %i.fe = sub nsw i64 25, %.0.lcssa               ; 3 uses
  %min.iters.check = icmp ult i64 %i.fe, 8
end_hunk_3
begin_hunk_4_@best_huffman_divide:bb.a
vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.fe, -8                      ; 3 uses
  %i.ff = add nsw i64 %.0.lcssa, %n.vec
  %5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.sroa.phi, i64 16
  store <4 x i32> splat (i32 100000), ptr %.0.lcssa.sroa.phi, align 4, !tbaa !4
  store <4 x i32> splat (i32 100000), ptr %5, align 4, !tbaa !4
  %6 = icmp eq i64 %n.vec, 8
  br i1 %6, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.ph
  %7 = getelementptr i8, ptr %.0.lcssa.sroa.phi.a, i64 32
  %i.fg = getelementptr i8, ptr %.0.lcssa.sroa.phi.a, i64 48
  store <4 x i32> splat (i32 100000), ptr %7, align 4, !tbaa !4
  store <4 x i32> splat (i32 100000), ptr %i.fg, align 4, !tbaa !4
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %vector.ph
  %cmp.n = icmp eq i64 %i.fe, %n.vec
  br i1 %cmp.n, label %.preheader49, label %.lr.ph.preheader107

end_hunk_4
begin_hunk_5_@best_huffman_divide:bb.a
  store i32 100000, ptr %i.fm, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %.preheader49, label %.lr.ph, !llvm.loop !50

bb.w:                                             ; preds = %.preheader49, %.loopexit
  %indvars.iv60 = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next61, %.loopexit ] ; 10 uses
end_hunk_5
begin_hunk_6_@best_huffman_divide:bb.a
  %i.fs = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fr ; 9 uses
  %i.ft = call fastcc i32 @choose_table(ptr noundef %3, ptr noundef %i.fs, ptr noundef %i.a)
  store i32 %i.ft, ptr %i.fi, align 8, !tbaa !4
  %i.fu = load i32, ptr %2, align 8, !tbaa !51    ; 3 uses
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !4   ; 9 uses
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.av, label %.preheader
end_hunk_6
begin_hunk_7_@best_huffman_divide:bb.a
  %i.gf = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ge
  %i.gg = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.gf, ptr noundef %4)
  store i32 %i.gg, ptr %i.fj, align 4, !tbaa !4
  %i.gh = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.gi = load i32, ptr %4, align 8, !tbaa !4
  %i.gj = icmp slt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.aa, label %bb.z
end_hunk_7
begin_hunk_8_@best_huffman_divide:bb.a
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  store i32 %i.gl, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.preheader, %bb.z
end_hunk_8
begin_hunk_9_@best_huffman_divide:bb.a
  %i.gv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gu
  %i.gw = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.gv, ptr noundef %4)
  store i32 %i.gw, ptr %i.fj, align 4, !tbaa !4
  %i.gx = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.gy = load i32, ptr %4, align 8, !tbaa !4
  %i.gz = icmp slt i32 %i.gx, %i.gy
  br i1 %i.gz, label %bb.ad, label %bb.ac
end_hunk_9
begin_hunk_10_@best_huffman_divide:bb.a
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  store i32 %i.hb, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre64 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
end_hunk_10
begin_hunk_11_@best_huffman_divide:bb.a
  %i.hl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hk
  %i.hm = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.hl, ptr noundef %4)
  store i32 %i.hm, ptr %i.fj, align 4, !tbaa !4
  %i.hn = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ho = load i32, ptr %4, align 8, !tbaa !4
  %i.hp = icmp slt i32 %i.hn, %i.ho
  br i1 %i.hp, label %bb.ag, label %bb.af
end_hunk_11
begin_hunk_12_@best_huffman_divide:bb.a
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  store i32 %i.hr, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre65 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
end_hunk_12
begin_hunk_13_@best_huffman_divide:bb.a
  %i.ib = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ia
  %i.ic = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.ib, ptr noundef %4)
  store i32 %i.ic, ptr %i.fj, align 4, !tbaa !4
  %i.id = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ie = load i32, ptr %4, align 8, !tbaa !4
  %i.if = icmp slt i32 %i.id, %i.ie
  br i1 %i.if, label %bb.aj, label %bb.ai
end_hunk_13
begin_hunk_14_@best_huffman_divide:bb.a
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !4
  store i32 %i.ih, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre66 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
end_hunk_14
begin_hunk_15_@best_huffman_divide:bb.a
  %i.ir = getelementptr inbounds [4 x i8], ptr %3, i64 %i.iq
  %i.is = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.ir, ptr noundef %4)
  store i32 %i.is, ptr %i.fj, align 4, !tbaa !4
  %i.it = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.iu = load i32, ptr %4, align 8, !tbaa !4
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.am, label %bb.al
end_hunk_15
begin_hunk_16_@best_huffman_divide:bb.a
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  store i32 %i.ix, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre67 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
end_hunk_16
begin_hunk_17_@best_huffman_divide:bb.a
  %i.jh = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jg
  %i.ji = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.jh, ptr noundef %4)
  store i32 %i.ji, ptr %i.fj, align 4, !tbaa !4
  %i.jj = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.jk = load i32, ptr %4, align 8, !tbaa !4
  %i.jl = icmp slt i32 %i.jj, %i.jk
  br i1 %i.jl, label %bb.ap, label %bb.ao
end_hunk_17
begin_hunk_18_@best_huffman_divide:bb.a
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4
  store i32 %i.jn, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre68 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
end_hunk_18
begin_hunk_19_@best_huffman_divide:bb.a
  %i.jx = getelementptr inbounds [4 x i8], ptr %3, i64 %i.jw
  %i.jy = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.jx, ptr noundef %4)
  store i32 %i.jy, ptr %i.fj, align 4, !tbaa !4
  %i.jz = load i32, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.ka = load i32, ptr %4, align 8, !tbaa !4
  %i.kb = icmp slt i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.as, label %bb.ar
end_hunk_19
begin_hunk_20_@best_huffman_divide:bb.a
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4
  store i32 %i.kd, ptr %i.fl, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(120) %4, i64 120, i1 false)
  %.pre69 = load i32, ptr %2, align 8, !tbaa !51
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
end_hunk_20
begin_hunk_21_@best_huffman_divide:bb.a
  %i.kn = getelementptr inbounds [4 x i8], ptr %3, i64 %i.km
  %i.ko = call fastcc i32 @choose_table(ptr noundef %i.fs, ptr noundef %i.kn, ptr noundef %4)
  store i32 %i.ko, ptr %i.fj, align 4, !tbaa !4
  %i.kp = load i32, ptr %2, align 8, !tbaa !51
  %i.kq = load i32, ptr %4, align 8, !tbaa !4
  %i.kr = icmp slt i32 %i.kp, %i.kq
  br i1 %i.kr, label %.loopexit, label %bb.au
end_hunk_21
begin_hunk_22_@best_huffman_divide:bb.a

.loopexit:                                        ; preds = %bb.au, %bb.at, %bb.as
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 16
  br i1 %exitcond63.not, label %bb.av, label %bb.w, !llvm.loop !52

bb.av:                                            ; preds = %bb.x, %bb.w, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
end_hunk_22
begin_hunk_23_@choose_table:bb.a
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.m, <4 x i32> %strided.vec132) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.o)
end_hunk_23
begin_hunk_24_@choose_table:bb.a
  %i.u = load i32, ptr %i.r, align 4, !tbaa !4
  %.2.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.u) ; 2 uses
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %.lr.ph.i, label %ix_max.exit, !llvm.loop !54

ix_max.exit:                                      ; preds = %.lr.ph.i, %middle.block
  %.2.i.lcssa = phi i32 [ %i.q, %middle.block ], [ %.2.i, %.lr.ph.i ] ; 5 uses
end_hunk_24
begin_hunk_25_@choose_table:bb.a
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %.022.i, %i.at          ; 2 uses
  %i.av = icmp ult ptr %i.aj, %1
  br i1 %i.av, label %bb.e, label %count_bit_noESC.exit, !llvm.loop !55

count_bit_noESC.exit:                             ; preds = %bb.e
  store ptr %i.ap, ptr @cb_esc_end, align 8, !tbaa !45
end_hunk_25
begin_hunk_26_@choose_table:bb.a
  %i.ey = zext i8 %i.ex to i32
  %i.ez = add nsw i32 %.4.i, %i.ey                ; 3 uses
  %i.fa = icmp ult ptr %i.ee, %1
  br i1 %i.fa, label %bb.ab, label %count_bit_ESC.exit, !llvm.loop !56

count_bit_ESC.exit:                               ; preds = %bb.af
  %i.fb = icmp sgt i32 %i.ev, %i.ez
end_hunk_26
begin_hunk_27_@best_scalefac_store:bb.a
  %i.d = sext i32 %2 to i64                       ; 11 uses
  %i.e = getelementptr inbounds [120 x i8], ptr %i.c, i64 %i.d ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %.not192 = icmp eq i32 %i.g, 0
  br i1 %.not192, label %.preheader156, label %.lr.ph162

end_hunk_27
begin_hunk_28_@best_scalefac_store:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88 ; 3 uses
  %i.p = getelementptr inbounds [4608 x i8], ptr %3, i64 %i.b
  %i.q = getelementptr inbounds [2304 x i8], ptr %i.p, i64 %i.d ; 3 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !58   ; 2 uses
  %i.s = icmp slt i32 %i.r, 12
  br i1 %i.s, label %.lr.ph172, label %.split.us

end_hunk_28
begin_hunk_29_@best_scalefac_store:bb.a
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !59

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = trunc nsw i64 %indvars.iv to i32
end_hunk_29
begin_hunk_30_@best_scalefac_store:bb.a

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  store i32 0, ptr %i.u, align 4, !tbaa !4
  %.pre = load i32, ptr %i.f, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %._crit_edge.thread, %._crit_edge
end_hunk_30
begin_hunk_31_@best_scalefac_store:bb.a
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next199, %i.ai
  br i1 %i.aj, label %bb.b, label %.preheader156, !llvm.loop !60

.lr.ph172:                                        ; preds = %.preheader156
  %i.ak = sext i32 %i.r to i64
end_hunk_31
begin_hunk_32_@best_scalefac_store:bb.a
  %indvars.iv.next202 = add nsw i64 %indvars.iv201, 1 ; 2 uses
  %lftr.wideiv204 = trunc i64 %indvars.iv.next202 to i32
  %exitcond205.not = icmp eq i32 %i.aq, %lftr.wideiv204
  br i1 %exitcond205.not, label %._crit_edge166.thread, label %.lr.ph165, !llvm.loop !61

._crit_edge166.loopexit:                          ; preds = %.lr.ph165
  %i.av = trunc nsw i64 %indvars.iv201 to i32
end_hunk_32
begin_hunk_33_@best_scalefac_store:bb.a
  %indvars.iv.next207 = add nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ax = and i64 %indvars.iv.next207, 4294967295
  %exitcond210.not = icmp eq i64 %i.ax, 12
  br i1 %exitcond210.not, label %._crit_edge173, label %bb.f, !llvm.loop !62

._crit_edge173:                                   ; preds = %bb.i
  %.pre240 = load i32, ptr %i.l, align 4, !tbaa !58 ; 2 uses
  %i.ay = icmp slt i32 %.pre240, 12
  br i1 %i.ay, label %.lr.ph172.1, label %.split.us

end_hunk_33
begin_hunk_34_@best_scalefac_store:bb.a
  %indvars.iv.next202.1 = add nsw i64 %indvars.iv201.1, 1 ; 2 uses
  %lftr.wideiv204.1 = trunc i64 %indvars.iv.next202.1 to i32
  %exitcond205.1.not = icmp eq i32 %i.bf, %lftr.wideiv204.1
  br i1 %exitcond205.1.not, label %._crit_edge166.1.thread, label %.lr.ph165.1, !llvm.loop !61

._crit_edge166.1.loopexit:                        ; preds = %.lr.ph165.1
  %i.bl = trunc nsw i64 %indvars.iv201.1 to i32
end_hunk_34
begin_hunk_35_@best_scalefac_store:bb.a
  %indvars.iv.next207.1 = add nsw i64 %indvars.iv206.1, 1 ; 2 uses
  %i.bn = and i64 %indvars.iv.next207.1, 4294967295
  %exitcond210.1.not = icmp eq i64 %i.bn, 12
  br i1 %exitcond210.1.not, label %._crit_edge173.1, label %bb.j, !llvm.loop !62

._crit_edge173.1:                                 ; preds = %bb.m
  %.pre241 = load i32, ptr %i.l, align 4, !tbaa !58 ; 2 uses
  %i.bo = icmp slt i32 %.pre241, 12
  br i1 %i.bo, label %.lr.ph172.2, label %.split.us

end_hunk_35
begin_hunk_36_@best_scalefac_store:bb.a
  %indvars.iv.next202.2 = add nsw i64 %indvars.iv201.2, 1 ; 2 uses
  %lftr.wideiv204.2 = trunc i64 %indvars.iv.next202.2 to i32
  %exitcond205.2.not = icmp eq i32 %i.bv, %lftr.wideiv204.2
  br i1 %exitcond205.2.not, label %._crit_edge166.2.thread, label %.lr.ph165.2, !llvm.loop !61

._crit_edge166.2.loopexit:                        ; preds = %.lr.ph165.2
  %i.cb = trunc nsw i64 %indvars.iv201.2 to i32
end_hunk_36
begin_hunk_37_@best_scalefac_store:bb.a
  %indvars.iv.next207.2 = add nsw i64 %indvars.iv206.2, 1 ; 2 uses
  %i.cd = and i64 %indvars.iv.next207.2, 4294967295
  %exitcond210.2.not = icmp eq i64 %i.cd, 12
  br i1 %exitcond210.2.not, label %.split.us, label %bb.n, !llvm.loop !62

.split.us:                                        ; preds = %bb.q, %._crit_edge173, %._crit_edge173.1, %.preheader156
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 76 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !63
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !51
  %i.ch = sub i32 %i.cg, %i.cf
  store i32 %i.ch, ptr %i.e, align 8, !tbaa !51
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !64
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.split.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !65
  %.not138 = icmp eq i32 %i.cl, 0
  br i1 %.not138, label %.preheader155, label %bb.u

.preheader155:                                    ; preds = %bb.r
  %i.cm = load i32, ptr %i.f, align 8, !tbaa !57  ; 3 uses
  %.not193 = icmp eq i32 %i.cm, 0                 ; 2 uses
  br i1 %.not193, label %._crit_edge178, label %.lr.ph177

end_hunk_37
begin_hunk_38_@best_scalefac_store:bb.a
  %i.cq = or <4 x i32> %wide.load317, %vec.phi316 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.cq, %i.cp
end_hunk_38
begin_hunk_39_@best_scalefac_store:bb.a
  %i.cv = or i32 %i.cu, %.0176                    ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count
  br i1 %exitcond218.not, label %._crit_edge178, label %scalar.ph, !llvm.loop !67

._crit_edge178:                                   ; preds = %scalar.ph, %middle.block, %.preheader155
  %.0.lcssa = phi i32 [ 0, %.preheader155 ], [ %i.cs, %middle.block ], [ %i.cv, %scalar.ph ] ; 2 uses
  %i.cw = load i32, ptr %i.l, align 4, !tbaa !58  ; 3 uses
  %i.cx = icmp ult i32 %i.cw, 12
  br i1 %i.cx, label %.preheader154.lr.ph, label %._crit_edge184

end_hunk_39
begin_hunk_40_@best_scalefac_store:bb.a
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %i.di = and i64 %indvars.iv.next224, 4294967295
  %exitcond227.not = icmp eq i64 %i.di, 12
  br i1 %exitcond227.not, label %._crit_edge184, label %.preheader154, !llvm.loop !68

._crit_edge184:                                   ; preds = %.preheader154, %._crit_edge178
  %.1.lcssa = phi i32 [ %.0.lcssa, %._crit_edge178 ], [ %i.dh, %.preheader154 ] ; 2 uses
end_hunk_40
begin_hunk_41_@best_scalefac_store:bb.a
  %i.do = sdiv i32 %i.dn, 2
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !4
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !57
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next229, %i.dq
  br i1 %i.dr, label %.lr.ph187, label %._crit_edge188.loopexit, !llvm.loop !69

._crit_edge188.loopexit:                          ; preds = %.lr.ph187
  %.pre242 = load i32, ptr %i.l, align 4, !tbaa !58
  br label %._crit_edge188

._crit_edge188:                                   ; preds = %._crit_edge188.loopexit, %.preheader153
end_hunk_41
begin_hunk_42_@best_scalefac_store:bb.a
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.eb = and i64 %indvars.iv.next236, 4294967295
  %exitcond239.not = icmp eq i64 %i.eb, 12
  br i1 %exitcond239.not, label %._crit_edge191, label %.preheader, !llvm.loop !70

._crit_edge191:                                   ; preds = %.preheader, %._crit_edge188
  store i32 1, ptr %i.ci, align 4, !tbaa !64
  store i32 99999999, ptr %i.ce, align 4, !tbaa !63
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !71
  %i.ee = icmp eq i32 %i.ed, 2
  br i1 %i.ee, label %bb.s, label %bb.t

end_hunk_42
begin_hunk_43_@best_scalefac_store:bb.a

bb.u:                                             ; preds = %._crit_edge184, %bb.t, %bb.s, %bb.r, %.split.us
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !71
  %i.ej = icmp eq i32 %i.ei, 2
  %i.ek = icmp eq i32 %1, 1
  %or.cond3 = and i1 %i.ek, %i.ej
end_hunk_43
begin_hunk_44_@best_scalefac_store:bb.a
bb.v:                                             ; preds = %bb.u
  %i.el = getelementptr inbounds [120 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !72
  %.not139 = icmp eq i32 %i.en, 2
  br i1 %.not139, label %scfsi_calc.exit, label %bb.w

end_hunk_44
begin_hunk_45_@best_scalefac_store:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.ep = getelementptr inbounds [120 x i8], ptr %i.eo, i64 %i.d ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !72
  %.not140 = icmp eq i32 %i.er, 2
  br i1 %.not140, label %scfsi_calc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 68
  %i.et = load i32, ptr %i.es, align 4, !tbaa !74
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 68
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !74
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %bb.y, label %scfsi_calc.exit

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !75
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !75
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.z, label %scfsi_calc.exit

end_hunk_45
begin_hunk_46_@best_scalefac_store:bb.a
  br i1 %i.lv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.lw = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, %.178.9.i
  br i1 %i.lx, label %bb.ac, label %.thread147.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %.178.9.i, ptr %i.ls, align 4, !tbaa !63
  store i32 1, ptr %i.lt, align 8, !tbaa !76
  br label %.thread147.i

bb.ad:                                            ; preds = %bb.aa
end_hunk_46
begin_hunk_47_@best_scalefac_store:bb.a
  br i1 %i.ly, label %..thread147.i_crit_edge, label %bb.af

..thread147.i_crit_edge:                          ; preds = %bb.ad
  %.pre243 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread147.i

.thread147.i:                                     ; preds = %..thread147.i_crit_edge, %bb.ac, %bb.ab
end_hunk_47
begin_hunk_48_@best_scalefac_store:bb.a
  br i1 %i.mb, label %bb.ae, label %.thread151.i

bb.ae:                                            ; preds = %.thread147.i
  store i32 %i.ma, ptr %i.ls, align 4, !tbaa !63
  store i32 2, ptr %i.lt, align 8, !tbaa !76
  br label %.thread151.i

bb.af:                                            ; preds = %bb.ad
end_hunk_48
begin_hunk_49_@best_scalefac_store:bb.a
  br i1 %i.mc, label %..thread151.i_crit_edge, label %scfsi_calc.exit

..thread151.i_crit_edge:                          ; preds = %bb.af
  %.pre244 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread151.i

.thread151.i:                                     ; preds = %..thread151.i_crit_edge, %bb.ae, %.thread147.i
end_hunk_49
begin_hunk_50_@best_scalefac_store:bb.a
  br i1 %i.mf, label %bb.ag, label %.thread153.i

bb.ag:                                            ; preds = %.thread151.i
  store i32 %i.me, ptr %i.ls, align 4, !tbaa !63
  store i32 3, ptr %i.lt, align 8, !tbaa !76
  br label %.thread153.i

bb.ah:                                            ; preds = %._crit_edge.3.thread.i
end_hunk_50
begin_hunk_51_@best_scalefac_store:bb.a

bb.ai:                                            ; preds = %.thread153.i
  %i.mi = mul nuw nsw i32 %.180.10.i, 3           ; 2 uses
  %i.mj = load i32, ptr %i.ls, align 4, !tbaa !63
  %i.mk = icmp sgt i32 %i.mj, %i.mi
  br i1 %i.mk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.mi, ptr %i.ls, align 4, !tbaa !63
  store i32 4, ptr %i.lt, align 8, !tbaa !76
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.thread153.i
end_hunk_51
begin_hunk_52_@best_scalefac_store:bb.a

bb.am:                                            ; preds = %bb.al
  %i.mn = add nuw nsw i32 %.178.9.i, %.180.10.i   ; 3 uses
  %i.mo = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.mp = icmp sgt i32 %i.mo, %i.mn
  br i1 %i.mp, label %bb.an, label %.thread158.i

bb.an:                                            ; preds = %bb.am
  store i32 %i.mn, ptr %i.ls, align 4, !tbaa !63
  store i32 5, ptr %i.lt, align 8, !tbaa !76
  br label %.thread158.i

bb.ao:                                            ; preds = %bb.al
end_hunk_52
begin_hunk_53_@best_scalefac_store:bb.a
  br i1 %i.mq, label %..thread158.i_crit_edge, label %bb.aq

..thread158.i_crit_edge:                          ; preds = %bb.ao
  %.pre245 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread158.i

.thread158.i:                                     ; preds = %..thread158.i_crit_edge, %bb.an, %bb.am
end_hunk_53
begin_hunk_54_@best_scalefac_store:bb.a
  br i1 %i.mu, label %bb.ap, label %.thread162.i

bb.ap:                                            ; preds = %.thread158.i
  store i32 %i.mt, ptr %i.ls, align 4, !tbaa !63
  store i32 6, ptr %i.lt, align 8, !tbaa !76
  br label %.thread162.i

bb.aq:                                            ; preds = %bb.ao
end_hunk_54
begin_hunk_55_@best_scalefac_store:bb.a
  br i1 %i.mv, label %..thread162.i_crit_edge, label %scfsi_calc.exit

..thread162.i_crit_edge:                          ; preds = %bb.aq
  %.pre246 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread162.i

.thread162.i:                                     ; preds = %..thread162.i_crit_edge, %bb.ap, %.thread158.i
end_hunk_55
begin_hunk_56_@best_scalefac_store:bb.a
  br i1 %i.mz, label %bb.ar, label %.thread164.i

bb.ar:                                            ; preds = %.thread162.i
  store i32 %i.my, ptr %i.ls, align 4, !tbaa !63
  store i32 7, ptr %i.lt, align 8, !tbaa !76
  br label %.thread164.i

bb.as:                                            ; preds = %bb.ak
end_hunk_56
begin_hunk_57_@best_scalefac_store:bb.a
bb.at:                                            ; preds = %.thread164.i
  %i.nc = shl nuw nsw i32 %.180.10.i, 1
  %i.nd = add nuw nsw i32 %.178.9.i, %i.nc        ; 3 uses
  %i.ne = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, %i.nd
  br i1 %i.nf, label %bb.au, label %.thread167.i

bb.au:                                            ; preds = %bb.at
  store i32 %i.nd, ptr %i.ls, align 4, !tbaa !63
  store i32 8, ptr %i.lt, align 8, !tbaa !76
  br label %.thread167.i

bb.av:                                            ; preds = %.thread164.i
end_hunk_57
begin_hunk_58_@best_scalefac_store:bb.a
  br i1 %i.ng, label %..thread167.i_crit_edge, label %bb.ax

..thread167.i_crit_edge:                          ; preds = %bb.av
  %.pre247 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread167.i

.thread167.i:                                     ; preds = %..thread167.i_crit_edge, %bb.at, %bb.au
end_hunk_58
begin_hunk_59_@best_scalefac_store:bb.a
  br i1 %i.nk, label %bb.aw, label %.thread172.i

bb.aw:                                            ; preds = %.thread167.i
  store i32 %i.nj, ptr %i.ls, align 4, !tbaa !63
  store i32 9, ptr %i.lt, align 8, !tbaa !76
  br label %.thread172.i

bb.ax:                                            ; preds = %bb.av
end_hunk_59
begin_hunk_60_@best_scalefac_store:bb.a
  br i1 %i.nl, label %..thread172.i_crit_edge, label %scfsi_calc.exit

..thread172.i_crit_edge:                          ; preds = %bb.ax
  %.pre248 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread172.i

.thread172.i:                                     ; preds = %..thread172.i_crit_edge, %bb.aw, %.thread167.i
end_hunk_60
begin_hunk_61_@best_scalefac_store:bb.a
  br i1 %i.nq, label %bb.ay, label %.thread170.i

bb.ay:                                            ; preds = %.thread172.i
  store i32 %i.np, ptr %i.ls, align 4, !tbaa !63
  store i32 10, ptr %i.lt, align 8, !tbaa !76
  br label %.thread170.i

.thread170.i:                                     ; preds = %.thread172.i, %bb.ay, %bb.as
end_hunk_61
begin_hunk_62_@best_scalefac_store:bb.a
bb.az:                                            ; preds = %.thread170.i
  %i.ns = mul nuw nsw i32 %.180.10.i, 3           ; 3 uses
  %i.nt = add nuw nsw i32 %.178.9.i, %i.ns        ; 3 uses
  %i.nu = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, %i.nt
  br i1 %i.nv, label %bb.ba, label %.thread176.i

bb.ba:                                            ; preds = %bb.az
  store i32 %i.nt, ptr %i.ls, align 4, !tbaa !63
  store i32 11, ptr %i.lt, align 8, !tbaa !76
  br label %.thread176.i

bb.bb:                                            ; preds = %.thread170.i
end_hunk_62
begin_hunk_63_@best_scalefac_store:bb.a
  br i1 %i.nw, label %..thread176.i_crit_edge, label %bb.bd

..thread176.i_crit_edge:                          ; preds = %bb.bb
  %.pre249 = load i32, ptr %i.ls, align 4, !tbaa !63
  %.pre252 = mul nuw nsw i32 %.180.10.i, 3
  br label %.thread176.i

end_hunk_63
begin_hunk_64_@best_scalefac_store:bb.a
  br i1 %i.oa, label %bb.bc, label %.thread180.i

bb.bc:                                            ; preds = %.thread176.i
  store i32 %i.nz, ptr %i.ls, align 4, !tbaa !63
  store i32 12, ptr %i.lt, align 8, !tbaa !76
  br label %.thread180.i

bb.bd:                                            ; preds = %bb.bb
end_hunk_64
begin_hunk_65_@best_scalefac_store:bb.a
  br i1 %i.ob, label %..thread180.i_crit_edge, label %scfsi_calc.exit

..thread180.i_crit_edge:                          ; preds = %bb.bd
  %.pre250 = load i32, ptr %i.ls, align 4, !tbaa !63
  br label %.thread180.i

.thread180.i:                                     ; preds = %..thread180.i_crit_edge, %bb.bc, %.thread176.i
end_hunk_65
begin_hunk_66_@best_scalefac_store:bb.a
  br i1 %i.of, label %bb.be, label %.thread182.i

bb.be:                                            ; preds = %.thread180.i
  store i32 %i.oe, ptr %i.ls, align 4, !tbaa !63
  store i32 13, ptr %i.lt, align 8, !tbaa !76
  br label %.thread182.i

.thread170.thread.i:                              ; preds = %bb.ah
end_hunk_66
begin_hunk_67_@best_scalefac_store:bb.a
  %i.oi = shl nuw nsw i32 %.180.10.i, 2           ; 3 uses
  %i.oj = shl nuw nsw i32 %.178.9.i, 1
  %i.ok = add nuw nsw i32 %i.oj, %i.oi            ; 3 uses
  %i.ol = load i32, ptr %i.ls, align 4, !tbaa !63 ; 2 uses
  %i.om = icmp sgt i32 %i.ol, %i.ok
  br i1 %i.om, label %bb.bg, label %.thread184.i

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.ok, ptr %i.ls, align 4, !tbaa !63
  store i32 14, ptr %i.lt, align 8, !tbaa !76
  br label %.thread184.i

bb.bh:                                            ; preds = %.thread182.i
end_hunk_67
begin_hunk_68_@best_scalefac_store:bb.a
  br i1 %i.on, label %..thread184.i_crit_edge, label %scfsi_calc.exit

..thread184.i_crit_edge:                          ; preds = %bb.bh
  %.pre251 = load i32, ptr %i.ls, align 4, !tbaa !63
  %.pre253 = shl nuw nsw i32 %.180.10.i, 2
  br label %.thread184.i

end_hunk_68
begin_hunk_69_@best_scalefac_store:bb.a
  br i1 %i.or, label %bb.bi, label %scfsi_calc.exit

bb.bi:                                            ; preds = %.thread184.i
  store i32 %i.oq, ptr %i.ls, align 4, !tbaa !63
  store i32 15, ptr %i.lt, align 8, !tbaa !76
  br label %scfsi_calc.exit

scfsi_calc.exit:                                  ; preds = %bb.af, %bb.aq, %bb.ax, %bb.bd, %bb.bi, %.thread184.i, %bb.bh, %.thread170.thread.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.os = load i32, ptr %i.ce, align 4, !tbaa !63
  %i.ot = load i32, ptr %i.e, align 8, !tbaa !51
  %i.ou = add i32 %i.ot, %i.os
  store i32 %i.ou, ptr %i.e, align 8, !tbaa !51
  ret void
}

end_hunk_69
begin_hunk_70_@llvm.vector.reduce.or.v4i32
!47 = !{!42, !5, i64 4}
!48 = !{!42, !5, i64 0}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15, !39, !38}
!51 = !{!9, !5, i64 0}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15, !38, !39}
!54 = distinct !{!54, !15, !39, !38}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = !{!9, !5, i64 80}
!58 = !{!9, !5, i64 84}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = !{!9, !5, i64 76}
!64 = !{!9, !5, i64 68}
!65 = !{!9, !5, i64 64}
!66 = distinct !{!66, !15, !38, !39}
!67 = distinct !{!67, !15, !39, !38}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = !{!17, !5, i64 200}
!72 = !{!73, !5, i64 24}
!73 = !{!"gr_info_ss", !9, i64 0}
!74 = !{!73, !5, i64 68}
!75 = !{!73, !5, i64 64}
!76 = !{!9, !5, i64 16}
end_hunk_70
