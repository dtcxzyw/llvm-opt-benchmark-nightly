Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_Rasterize:bb.a
  store float %i.arc, ptr %i.ara, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit449.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i:         ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hg, %bb.hf, %bb.he
  %i.ard = fcmp oeq float %i.xh, %i.kk
  br i1 %i.ard, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i
  %i.are = load float, ptr %i.sk, align 4, !tbaa !853 ; 4 uses
  %i.arf = fcmp ogt float %i.xh, %i.are
  br i1 %i.arf, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.arg = load float, ptr %i.sj, align 8, !tbaa !866 ; 4 uses
  %i.arh = fcmp olt float %i.kk, %i.arg
  br i1 %i.arh, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ari = fcmp olt float %i.xh, %i.arg
  br i1 %i.ari, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.arj = fsub float %i.sg, %i.wy
  %i.ark = fsub float %i.arg, %i.xh
  %i.arl = fmul float %i.arj, %i.ark
  %i.arm = fsub float %i.kk, %i.xh
  %i.arn = fdiv float %i.arl, %i.arm
  %i.aro = fadd float %i.arn, %i.wy
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.055.i450.i.i.i = phi float [ %i.aro, %bb.hs ], [ %i.wy, %bb.hr ] ; 4 uses
  %.054.i451.i.i.i = phi float [ %i.arg, %bb.hs ], [ %i.xh, %bb.hr ] ; 3 uses
  %i.arp = fcmp ogt float %i.kk, %i.are
  br i1 %i.arp, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.arq = fsub float %i.sg, %.055.i450.i.i.i
  %i.arr = fsub float %i.are, %i.kk
  %i.ars = fmul float %i.arr, %i.arq
  %i.art = fsub float %i.kk, %.054.i451.i.i.i
  %i.aru = fdiv float %i.ars, %i.art
  %i.arv = fadd float %i.sg, %i.aru
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.053.i452.i.i.i = phi float [ %i.arv, %bb.hu ], [ %i.sg, %bb.ht ] ; 3 uses
  %.0.i453.i.i.i = phi float [ %i.are, %bb.hu ], [ %i.kk, %bb.ht ] ; 2 uses
  %i.arw = fcmp ugt float %.055.i450.i.i.i, %i.wz
  %i.arx = fcmp ugt float %.053.i452.i.i.i, %i.wz
  %or.cond.i454.i.i.i = select i1 %i.arw, i1 true, i1 %i.arx
  br i1 %or.cond.i454.i.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.ary = load float, ptr %i.wv, align 4, !tbaa !855
  %i.arz = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !54
  %i.asc = tail call float @llvm.fmuladd.f32(float %i.ary, float %i.arz, float %i.asb)
  store float %i.asc, ptr %i.asa, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hx:                                            ; preds = %bb.hv
  %i.asd = fcmp ult float %.055.i450.i.i.i, %i.wy
  %i.ase = fcmp ult float %.053.i452.i.i.i, %i.wy
  %or.cond62.i455.i.i.i = select i1 %i.asd, i1 true, i1 %i.ase
  br i1 %or.cond62.i455.i.i.i, label %bb.hy, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.asf = load float, ptr %i.wv, align 4, !tbaa !855
  %i.asg = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.ash = fmul float %i.asg, %i.asf
  %i.asi = fsub float %.055.i450.i.i.i, %i.wz
  %i.asj = fsub float %.053.i452.i.i.i, %i.wz
  %i.ask = fadd float %i.asi, %i.asj
  %i.asl = fmul float %i.ask, 5.000000e-01
  %i.asm = fsub float 1.000000e+00, %i.asl
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !54
  %i.asp = tail call float @llvm.fmuladd.f32(float %i.ash, float %i.asm, float %i.aso)
  store float %i.asp, ptr %i.asn, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hz:                                            ; preds = %bb.hd
  br i1 %i.mv, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.asq = load float, ptr %i.sk, align 4, !tbaa !853 ; 4 uses
  %i.asr = fcmp olt float %i.asq, %i.kj
  br i1 %i.asr, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.ass = load float, ptr %i.sj, align 8, !tbaa !866 ; 4 uses
  %i.ast = fcmp olt float %i.kk, %i.ass
  br i1 %i.ast, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.asu = fcmp ogt float %i.ass, %i.kj           ; 2 uses
  %i.asv = fsub float %i.ass, %i.kj
  %i.asw = fmul float %i.wu, %i.asv
  %i.asx = fdiv float %i.asw, %i.mw
  %i.asy = fadd float %i.nb, %i.asx
  %.055.i457.i.i.i = select i1 %i.asu, float %i.asy, float %i.nb ; 4 uses
  %.054.i458.i.i.i = select i1 %i.asu, float %i.ass, float %i.kj ; 3 uses
  %i.asz = fcmp ogt float %i.kk, %i.asq
  br i1 %i.asz, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.ata = fsub float %i.sg, %.055.i457.i.i.i
  %i.atb = fsub float %i.asq, %i.kk
  %i.atc = fmul float %i.atb, %i.ata
  %i.atd = fsub float %i.kk, %.054.i458.i.i.i
  %i.ate = fdiv float %i.atc, %i.atd
  %i.atf = fadd float %i.sg, %i.ate
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.053.i459.i.i.i = phi float [ %i.atf, %bb.id ], [ %i.sg, %bb.ic ] ; 3 uses
  %.0.i460.i.i.i = phi float [ %i.asq, %bb.id ], [ %i.kk, %bb.ic ] ; 2 uses
  %i.atg = fcmp ugt float %.055.i457.i.i.i, %i.wz
  %i.ath = fcmp ugt float %.053.i459.i.i.i, %i.wz
  %or.cond.i461.i.i.i = select i1 %i.atg, i1 true, i1 %i.ath
  br i1 %or.cond.i461.i.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ati = load float, ptr %i.wv, align 4, !tbaa !855
  %i.atj = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !54
  %i.atm = tail call float @llvm.fmuladd.f32(float %i.ati, float %i.atj, float %i.atl)
  store float %i.atm, ptr %i.atk, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.atn = fcmp ult float %.055.i457.i.i.i, %i.wy
  %i.ato = fcmp ult float %.053.i459.i.i.i, %i.wy
  %or.cond62.i462.i.i.i = select i1 %i.atn, i1 true, i1 %i.ato
  br i1 %or.cond62.i462.i.i.i, label %bb.ih, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ih:                                            ; preds = %bb.ig
  %i.atp = load float, ptr %i.wv, align 4, !tbaa !855
  %i.atq = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.atr = fmul float %i.atq, %i.atp
  %i.ats = fsub float %.055.i457.i.i.i, %i.wz
  %i.att = fsub float %.053.i459.i.i.i, %i.wz
  %i.atu = fadd float %i.ats, %i.att
  %i.atv = fmul float %i.atu, 5.000000e-01
  %i.atw = fsub float 1.000000e+00, %i.atv
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !54
  %i.atz = tail call float @llvm.fmuladd.f32(float %i.atr, float %i.atw, float %i.aty)
  store float %i.atz, ptr %i.atx, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i:         ; preds = %bb.ih, %bb.ig, %bb.if, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hq, %bb.hp, %stbtt__handle_clipped_edge.exit449.i.i.i, %bb.hc, %bb.hb, %bb.ha, %bb.gu, %bb.gt, %stbtt__handle_clipped_edge.exit435.i.i.i, %bb.gg, %bb.gf, %bb.ge, %bb.fy, %bb.fx, %stbtt__handle_clipped_edge.exit421.i.i.i, %bb.fk, %bb.fj, %bb.fi, %bb.fc, %bb.fb, %stbtt__handle_clipped_edge.exit407.i.i.i, %bb.eo, %bb.en, %bb.em, %bb.eg, %bb.ef, %stbtt__handle_clipped_edge.exit393.i.i.i, %bb.di, %bb.dh, %bb.dg, %bb.da, %bb.cz, %stbtt__handle_clipped_edge.exit372.i.i.i
  %exitcond.not.i.i101.i = icmp eq i64 %indvars.iv.next.i.i100.i, %wide.trip.count.i.i96.i
  br i1 %exitcond.not.i.i101.i, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.cd, !llvm.loop !840

stbtt__handle_clipped_edge.exit351.i.i.i:         ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %bb.cc, %._crit_edge.i.i.i, %bb.by, %bb.bu, %bb.bt, %bb.bs, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.ap, %bb.an
  %i.aua = load ptr, ptr %.0293468.i.i.i, align 8, !tbaa !854 ; 2 uses
  %.not.i.i97.i = icmp eq ptr %i.aua, null
  br i1 %.not.i.i97.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.am, !llvm.loop !841

stbtt__fill_active_edges_new.exit.i.i:            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %._crit_edge.i.i
  %i.aub = icmp sgt i32 %.pre145.i.i, 0
  br i1 %i.aub, label %.lr.ph124.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph124.i.i, %stbtt__fill_active_edges_new.exit.i.i
  %i.auc = phi i32 [ %.pre145.i.i, %stbtt__fill_active_edges_new.exit.i.i ], [ %i.auu, %.lr.ph124.i.i ]
  br i1 %.not93.i.i, label %._crit_edge127.i.i, label %.lr.ph126.i.i

.lr.ph124.i.i:                                    ; preds = %stbtt__fill_active_edges_new.exit.i.i, %.lr.ph124.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph124.i.i ], [ 0, %stbtt__fill_active_edges_new.exit.i.i ] ; 4 uses
  %.079123.i.i = phi float [ %i.auf, %.lr.ph124.i.i ], [ 0.000000e+00, %stbtt__fill_active_edges_new.exit.i.i ]
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i.i
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !54
  %i.auf = fadd float %.079123.i.i, %i.aue        ; 2 uses
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i
  %i.auh = load float, ptr %i.aug, align 4, !tbaa !54
  %i.aui = fadd float %i.auh, %i.auf
  %i.auj = tail call float @llvm.fabs.f32(float %i.aui)
  %i.auk = tail call float @llvm.fmuladd.f32(float %i.auj, float 2.550000e+02, float 5.000000e-01)
  %i.aul = fptosi float %i.auk to i32
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.aul, i32 255)
  %i.aum = trunc i32 %spec.store.select.i.i to i8
  %i.aun = load ptr, ptr %i.kg, align 8, !tbaa !299
  %i.auo = load i32, ptr %i.kh, align 8, !tbaa !300
  %i.aup = mul nsw i32 %i.auo, %.078131.i.i
  %i.auq = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.aur = add nsw i32 %i.aup, %i.auq
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds i8, ptr %i.aun, i64 %i.aus
  store i8 %i.aum, ptr %i.aut, align 1, !tbaa !56
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.auu = load i32, ptr %0, align 8, !tbaa !297  ; 2 uses
  %i.auv = sext i32 %i.auu to i64
  %i.auw = icmp slt i64 %indvars.iv.next.i.i, %i.auv
  br i1 %i.auw, label %.lr.ph124.i.i, label %.preheader.i.i, !llvm.loop !842

.lr.ph126.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph126.i.i
  %i.aux = phi ptr [ %i.auz, %.lr.ph126.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %.preheader.i.i ] ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.aux, i64 12
  %13 = load float, ptr %12, align 4, !tbaa !862
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 8 ; 2 uses
  %14 = load float, ptr %i.auy, align 8, !tbaa !864
  %15 = fadd float %13, %14
  store float %15, ptr %i.auy, align 8, !tbaa !864
  %i.auz = load ptr, ptr %i.aux, align 8, !tbaa !851 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.auz, null
  br i1 %.not94.i.i, label %._crit_edge127.i.i, label %.lr.ph126.i.i, !llvm.loop !843

._crit_edge127.i.i:                               ; preds = %.lr.ph126.i.i, %.preheader.i.i
  %i.ava = add nsw i32 %.077132.i.i, 1
  %i.avb = add nuw nsw i32 %.078131.i.i, 1        ; 2 uses
  %i.avc = load i32, ptr %i.ju, align 4, !tbaa !298
  %i.avd = icmp slt i32 %i.avb, %i.avc
  br i1 %i.avd, label %bb.z, label %._crit_edge136.i.i, !llvm.loop !844

._crit_edge136.i.i:                               ; preds = %._crit_edge127.i.i
  %.not1.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i, null
  br i1 %.not1.i.i.i, label %stbtt__hheap_cleanup.exit.i.i, label %.lr.ph.i100.i.i

.lr.ph.i100.i.i:                                  ; preds = %._crit_edge136.i.i
  %i.ave = getelementptr i8, ptr %11, i64 16
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ii, %.lr.ph.i100.i.i
  %.02.i.i.i = phi ptr [ %.sroa.0.1.lcssa.i.i, %.lr.ph.i100.i.i ], [ %i.avf, %bb.ii ] ; 2 uses
  %i.avf = load ptr, ptr %.02.i.i.i, align 8, !tbaa !859 ; 2 uses
  %.val.i.i.i = load ptr, ptr %11, align 8
  %.val6.i.i.i = load ptr, ptr %i.ave, align 8, !tbaa !278
  tail call void %.val6.i.i.i(ptr %.val.i.i.i, ptr noundef nonnull %.02.i.i.i) #50, !inline_history !845
  %.not.i101.i.i = icmp eq ptr %i.avf, null
  br i1 %.not.i101.i.i, label %stbtt__hheap_cleanup.exit.i.i, label %bb.ii, !llvm.loop !846

stbtt__hheap_cleanup.exit.i.i:                    ; preds = %bb.ii, %._crit_edge136.i.i, %bb.y
  %.not.i.i = icmp eq ptr %.082.i.i, %i.b
  br i1 %.not.i.i, label %stbtt__rasterize_sorted_edges.exit.i, label %bb.ij

bb.ij:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i
  %.val97.i.i = load ptr, ptr %11, align 8
  %i.avg = getelementptr i8, ptr %11, i64 16
  %.val98.i.i = load ptr, ptr %i.avg, align 8, !tbaa !278
  call void %.val98.i.i(ptr %.val97.i.i, ptr noundef %.082.i.i) #50, !inline_history !847
  br label %stbtt__rasterize_sorted_edges.exit.i

stbtt__rasterize_sorted_edges.exit.i:             ; preds = %bb.ij, %stbtt__hheap_cleanup.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val94.i = load ptr, ptr %11, align 8
  %i.avh = getelementptr i8, ptr %11, i64 16
  %.val95.i = load ptr, ptr %i.avh, align 8, !tbaa !278
  call void %.val95.i(ptr %.val94.i, ptr noundef nonnull %i.fx) #50, !inline_history !848
  br label %stbtt__rasterize.exit

stbtt__rasterize.exit:                            ; preds = %._crit_edge.loopexit.i, %stbtt__rasterize_sorted_edges.exit.i
  %.val23 = load ptr, ptr %11, align 8
  %i.avi = getelementptr i8, ptr %11, i64 16      ; 2 uses
  %.val24 = load ptr, ptr %i.avi, align 8, !tbaa !278
  call void %.val24(ptr %.val23, ptr noundef nonnull %i.bf) #50, !inline_history !16
  %.val = load ptr, ptr %11, align 8
  %.val22 = load ptr, ptr %i.avi, align 8, !tbaa !278
  call void %.val22(ptr %.val, ptr noundef nonnull %i.dc) #50, !inline_history !16
  br label %bb.ik

bb.ik:                                            ; preds = %stbtt_FlattenCurves.exit.thread, %stbtt__rasterize.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @stbtt_FreeBitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !278
  tail call void %.val2(ptr %.val, ptr noundef %0) #50, !inline_history !16
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbtt_GetGlyphBitmapSubpixel(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.stbtt__bitmap, align 8     ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  %i.f = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %i.e)
  %i.g = insertelement <2 x float> poison, float %1, i64 0
  %i.h = insertelement <2 x float> %i.g, float %2, i64 1 ; 3 uses
  %i.i = fcmp une <2 x float> %i.h, zeroinitializer ; 2 uses
  %i.j = bitcast <2 x i1> %i.i to i2
  %brmerge.not = icmp eq i2 %i.j, 0
  %i.k = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = select <2 x i1> %i.i, <2 x float> %i.h, <2 x float> %i.k ; 4 uses
  br i1 %brmerge.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.n = load ptr, ptr %0, align 8, !tbaa !271    ; 2 uses
  %.val49 = load ptr, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %.val50 = load ptr, ptr %i.o, align 8, !tbaa !278
  tail call void %.val50(ptr %.val49, ptr noundef %i.m) #50, !inline_history !16
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 0, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.p = call i32 @stbtt_GetGlyphBox(ptr noundef readonly %0, i32 noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.a, align 4, !tbaa !55
  %i.r = load i32, ptr %i.d, align 4, !tbaa !55
  %i.s = sub nsw i32 0, %i.r
  %i.t = load i32, ptr %i.c, align 4, !tbaa !55
  %i.u = load i32, ptr %i.b, align 4, !tbaa !55
  %i.v = sub nsw i32 0, %i.u
  %i.w = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.s, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = insertelement <2 x float> poison, float %3, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %4, i64 1 ; 2 uses
  %i.ab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.l, <2 x float> %i.aa)
  %i.ac = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ab)
  %i.ad = insertelement <2 x i32> poison, i32 %i.t, i64 0
  %i.ae = insertelement <2 x i32> %i.ad, i32 %i.v, i64 1
  %i.af = sitofp <2 x i32> %i.ae to <2 x float>
  %i.ag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.l, <2 x float> %i.aa)
  %i.ah = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ag)
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = fptosi <4 x float> %i.ai to <4 x i32>
  br label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.c, %bb.d
  %i.ak = phi <4 x i32> [ %i.aj, %bb.d ], [ zeroinitializer, %bb.c ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.am = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.an = sub nsw <2 x i32> %i.al, %i.am          ; 2 uses
  %i.ao = extractelement <2 x i32> %i.an, i64 1   ; 3 uses
  %i.ap = extractelement <2 x i32> %i.an, i64 0   ; 4 uses
  store i32 %i.ap, ptr %10, align 8, !tbaa !297
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !298
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit
  store i32 %i.ap, ptr %6, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %stbtt_GetGlyphBitmapBoxSubpixel.exit
  %.not42 = icmp eq ptr %7, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.ao, ptr %7, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not43 = icmp eq ptr %8, null
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = extractelement <4 x i32> %i.ak, i64 2
  store i32 %i.as, ptr %8, align 4, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not44 = icmp eq ptr %9, null
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = extractelement <4 x i32> %i.ak, i64 3
  store i32 %i.at, ptr %9, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = extractelement <4 x i32> %i.ak, i64 0
  %i.av = extractelement <4 x i32> %i.ak, i64 2   ; 2 uses
  %i.aw = icmp ne i32 %i.au, %i.av
  %i.ax = extractelement <4 x i32> %i.ak, i64 1
  %i.ay = extractelement <4 x i32> %i.ak, i64 3   ; 2 uses
  %i.az = icmp ne i32 %i.ax, %i.ay
  %or.cond = select i1 %i.aw, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !73
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ba = mul nsw i32 %i.ao, %i.ap
end_hunk_0
begin_hunk_1_@nk_dtoa:bb.a
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 46, ptr %.2, align 1, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.at, %bb.j ], [ %.2, %bb.i ]  ; 6 uses
  %i.au = add nsw i32 %.284111, -1
  %i.av = fcmp ogt double %.389, f0x3D06849B86A12B9B
  %i.aw = icmp sgt i32 %.284111, 0
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.l, !llvm.loop !1278

bb.l:                                             ; preds = %bb.k
  br i1 %i.o, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  store i8 101, ptr %.3, align 1, !tbaa !56
  %i.az = icmp sgt i32 %.079, 0
  br i1 %i.az, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  store i8 43, ptr %i.ay, align 1, !tbaa !56
  %.4133 = getelementptr inbounds nuw i8, ptr %.3, i64 2
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.ba = sub nsw i32 0, %.079
  store i8 45, ptr %i.ay, align 1, !tbaa !56
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  %.not140 = icmp eq i32 %.079, 0
  br i1 %.not140, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.n
  %.5115.ph = phi ptr [ %.4, %bb.n ], [ %.4133, %.thread ]
  %.281114.ph = phi i32 [ %i.ba, %bb.n ], [ %.079, %.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.5115 = phi ptr [ %i.be, %.lr.ph ], [ %.5115.ph, %.lr.ph.preheader ] ; 2 uses
  %.281114 = phi i32 [ %i.bf, %.lr.ph ], [ %.281114.ph, %.lr.ph.preheader ] ; 3 uses
  %.385113 = phi i32 [ %i.bg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.bb = urem i32 %.281114, 10
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %.5115, i64 1 ; 4 uses
  store i8 %i.bd, ptr %.5115, align 1, !tbaa !56
  %i.bf = udiv i32 %.281114, 10
  %i.bg = add nuw nsw i32 %.385113, 1             ; 2 uses
  %.not = icmp samesign ult i32 %.281114, 10
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1279

._crit_edge:                                      ; preds = %.lr.ph
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %i.bi ; 2 uses
  %.not141 = icmp eq i32 %.385113, 0
  br i1 %.not141, label %.loopexit, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %._crit_edge
  %i.bk = zext nneg i32 %.385113 to i64
  br label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %indvars.iv124 = phi i64 [ 0, %.lr.ph121.preheader ], [ %indvars.iv.next125, %.lr.ph121 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph121.preheader ], [ %indvars.iv.next, %.lr.ph121 ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %indvars.iv ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv124 ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !56
  %i.bp = xor i8 %i.bo, %i.bm                     ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !56
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !56
  %i.br = xor i8 %i.bq, %i.bp                     ; 2 uses
  store i8 %i.br, ptr %i.bl, align 1, !tbaa !56
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !56
  %i.bt = xor i8 %i.bs, %i.br
  store i8 %i.bt, ptr %i.bn, align 1, !tbaa !56
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bu = icmp slt i64 %indvars.iv.next125, %indvars.iv.next
  br i1 %i.bu, label %.lr.ph121, label %.loopexit, !llvm.loop !1280

.loopexit:                                        ; preds = %.lr.ph121, %bb.n, %._crit_edge, %bb.l
  %.6 = phi ptr [ %.3, %bb.l ], [ %i.be, %._crit_edge ], [ %.4, %bb.n ], [ %i.be, %.lr.ph121 ]
  store i8 0, ptr %.6, align 1, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.b
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn }
attributes #38 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #49 = { nounwind allocsize(0) }
attributes #50 = { nounwind }
attributes #51 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}
!llvm.errno.tbaa = !{!52}

!0 = distinct !{!0, !57}
!1 = distinct !{!1, !57}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = distinct !{!4, !57}
!5 = distinct !{!5, !57}
!6 = distinct !{!6, !57}
!7 = distinct !{!7, !57}
!8 = distinct !{!8, !57}
!9 = distinct !{!9, !57}
!10 = distinct !{!10, !57}
!11 = distinct !{!11, !57}
!12 = distinct !{!12, !57}
!13 = distinct !{!13, !57}
!14 = distinct !{!14, !57}
!15 = distinct !{!15, !57}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !57}
!19 = distinct !{!19, !57}
!20 = distinct !{!20, !57}
!21 = distinct !{!21, !57}
!22 = distinct !{!22, !57}
!23 = distinct !{!23, !57}
!24 = distinct !{!24, !57}
!25 = distinct !{!25, !57}
!26 = distinct !{!26, !57}
!27 = distinct !{!27, !57}
!28 = distinct !{!28, !57}
!29 = distinct !{!29, !57}
!30 = distinct !{!30, !57}
!31 = distinct !{!31, !57}
!32 = distinct !{!32, !57}
!33 = distinct !{!33, !57}
!34 = distinct !{!34, !57}
!35 = distinct !{!35, !57}
!36 = distinct !{!36, !57}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !57}
!39 = distinct !{null}
!40 = distinct !{!40, !57}
!41 = distinct !{ptr @nk_selectable_text, null}
!42 = distinct !{!42, !57}
!43 = distinct !{!43, !57}
!44 = distinct !{null}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!"omnipotent char", !48, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!"__libc_errno", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"float", !49, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!50, !50, i64 0}
!56 = !{!49, !49, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"any pointer", !49, i64 0}
!59 = !{!"p1 omnipotent char", !58, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!"double", !49, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"nk_allocator", !49, i64 0, !58, i64 8, !58, i64 16}
!65 = !{!"long", !49, i64 0}
!66 = !{!"nk_memory", !58, i64 0, !65, i64 8}
!67 = !{!"nk_buffer", !49, i64 0, !64, i64 32, !50, i64 56, !66, i64 64, !53, i64 80, !65, i64 88, !65, i64 96, !65, i64 104, !65, i64 112}
!68 = !{!67, !50, i64 56}
!69 = !{!67, !58, i64 64}
!70 = !{!67, !65, i64 72}
!71 = !{!67, !65, i64 112}
!72 = !{!67, !53, i64 80}
!73 = !{!58, !58, i64 0}
!74 = !{!64, !58, i64 8}
!75 = !{i64 0, i64 8, !56, i64 8, i64 8, !73, i64 16, i64 8, !73}
!76 = !{!67, !65, i64 96}
!77 = !{!67, !65, i64 88}
!78 = !{!67, !58, i64 48}
!79 = !{!65, !65, i64 0}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!"branch_weights", i32 4, i32 28}
!83 = !{!"branch_weights", i32 8, i32 24}
!84 = !{!"_Bool", !49, i64 0}
!85 = !{!"nk_buffer_marker", !84, i64 0, !65, i64 8}
!86 = !{!85, !84, i64 0}
!87 = !{!85, !65, i64 8}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!"nk_str", !67, i64 0, !50, i64 120}
!91 = !{!90, !50, i64 120}
!92 = !{ptr @nk_buffer_init}
!93 = !{!90, !65, i64 88}
!94 = !{!90, !58, i64 64}
!95 = !{ptr @nk_buffer_free}
!96 = !{!"p1 _ZTS9nk_buffer", !58, i64 0}
!97 = !{!"nk_rect", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!98 = !{!"nk_command_buffer", !96, i64 0, !97, i64 8, !50, i64 24, !49, i64 32, !65, i64 40, !65, i64 48, !65, i64 56}
!99 = !{!98, !96, i64 0}
!100 = !{!98, !65, i64 56}
!101 = !{!"nk_command", !50, i64 0, !65, i64 8}
!102 = !{!101, !50, i64 0}
!103 = !{!101, !65, i64 8}
!104 = !{!98, !65, i64 48}
!105 = !{!"short", !49, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"nk_vec2i", !105, i64 0, !105, i64 2}
!108 = !{!"nk_color", !49, i64 0, !49, i64 1, !49, i64 2, !49, i64 3}
!109 = !{!"nk_command_line", !101, i64 0, !105, i64 16, !107, i64 18, !107, i64 22, !108, i64 26}
!110 = !{!109, !105, i64 24}
!111 = !{!98, !50, i64 24}
!112 = !{!97, !53, i64 0}
!113 = !{!97, !53, i64 8}
!114 = !{!97, !53, i64 4}
!115 = !{!97, !53, i64 12}
!116 = !{!"nk_command_rect_filled", !101, i64 0, !105, i64 16, !105, i64 18, !105, i64 20, !105, i64 22, !105, i64 24, !108, i64 26}
!117 = !{!"nk_command_circle", !101, i64 0, !105, i64 16, !105, i64 18, !105, i64 20, !105, i64 22, !105, i64 24, !108, i64 26}
!118 = !{!"nk_command_arc_filled", !101, i64 0, !105, i64 16, !105, i64 18, !105, i64 20, !49, i64 24, !108, i64 32}
!119 = !{!118, !105, i64 20}
!120 = !{!"nk_command_triangle", !101, i64 0, !105, i64 16, !107, i64 18, !107, i64 22, !107, i64 26, !108, i64 30}
!121 = !{!"nk_command_polygon", !101, i64 0, !108, i64 16, !105, i64 20, !105, i64 22, !49, i64 24}
!122 = !{!121, !105, i64 20}
!123 = !{!121, !105, i64 22}
!124 = !{!"nk_command_polygon_filled", !101, i64 0, !108, i64 16, !105, i64 20, !49, i64 22}
!125 = !{!124, !105, i64 20}
!126 = !{!"nk_command_polyline", !101, i64 0, !108, i64 16, !105, i64 20, !105, i64 22, !49, i64 24}
!127 = !{!126, !105, i64 22}
!128 = !{!126, !105, i64 20}
end_hunk_1
