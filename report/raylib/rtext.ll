inline.NumInlined: 306
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 46
begin_hunk_0_@LoadFontData:bb.a
  %i.bre = load float, ptr %i.aqw, align 4        ; 4 uses
  %i.brf = fcmp olt float %i.bre, %i.aiz
  br i1 %i.brf, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.brg = load float, ptr %i.aqv, align 8        ; 4 uses
  %i.brh = fcmp olt float %i.aja, %i.brg
  br i1 %i.brh, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bri = fcmp ogt float %i.brg, %i.aiz          ; 2 uses
  %i.brj = fsub float %i.brg, %i.aiz
  %i.brk = fmul float %i.avi, %i.brj
  %i.brl = fdiv float %i.brk, %i.ali
  %i.brm = fadd float %i.alp, %i.brl
  %.055.i457.i.i.i.i.i.i.i = select i1 %i.bri, float %i.brm, float %i.alp ; 4 uses
  %.054.i458.i.i.i.i.i.i.i = select i1 %i.bri, float %i.brg, float %i.aiz ; 3 uses
  %i.brn = fcmp ogt float %i.aja, %i.bre
  br i1 %i.brn, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.bro = fsub float %i.aqs, %.055.i457.i.i.i.i.i.i.i
  %i.brp = fsub float %i.bre, %i.aja
  %i.brq = fmul float %i.brp, %i.bro
  %i.brr = fsub float %i.aja, %.054.i458.i.i.i.i.i.i.i
  %i.brs = fdiv float %i.brq, %i.brr
  %i.brt = fadd float %i.aqs, %i.brs
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %.053.i459.i.i.i.i.i.i.i = phi float [ %i.brt, %bb.ms ], [ %i.aqs, %bb.mr ] ; 3 uses
  %.0.i460.i.i.i.i.i.i.i = phi float [ %i.bre, %bb.ms ], [ %i.aja, %bb.mr ] ; 2 uses
  %i.bru = fcmp ugt float %.055.i457.i.i.i.i.i.i.i, %i.avn
  %i.brv = fcmp ugt float %.053.i459.i.i.i.i.i.i.i, %i.avn
  %or.cond.i461.i.i.i.i.i.i.i = select i1 %i.bru, i1 true, i1 %i.brv
  br i1 %or.cond.i461.i.i.i.i.i.i.i, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.brw = load float, ptr %i.avj, align 4
  %i.brx = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.brz = load float, ptr %i.bry, align 4
  %i.bsa = call float @llvm.fmuladd.f32(float %i.brw, float %i.brx, float %i.brz)
  store float %i.bsa, ptr %i.bry, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mv:                                            ; preds = %bb.mt
  %i.bsb = fcmp ult float %.055.i457.i.i.i.i.i.i.i, %i.avm
  %i.bsc = fcmp ult float %.053.i459.i.i.i.i.i.i.i, %i.avm
  %or.cond62.i462.i.i.i.i.i.i.i = select i1 %i.bsb, i1 true, i1 %i.bsc
  br i1 %or.cond62.i462.i.i.i.i.i.i.i, label %bb.mw, label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

bb.mw:                                            ; preds = %bb.mv
  %i.bsd = load float, ptr %i.avj, align 4
  %i.bse = fsub float %.0.i460.i.i.i.i.i.i.i, %.054.i458.i.i.i.i.i.i.i
  %i.bsf = fmul float %i.bse, %i.bsd
  %i.bsg = fsub float %.055.i457.i.i.i.i.i.i.i, %i.avn
  %i.bsh = fsub float %.053.i459.i.i.i.i.i.i.i, %i.avn
  %i.bsi = fadd float %i.bsg, %i.bsh
  %i.bsj = fmul float %i.bsi, 5.000000e-01
  %i.bsk = fsub float 1.000000e+00, %i.bsj
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i94.i.i.i.i.i ; 2 uses
  %i.bsm = load float, ptr %i.bsl, align 4
  %i.bsn = call float @llvm.fmuladd.f32(float %i.bsf, float %i.bsk, float %i.bsm)
  store float %i.bsn, ptr %i.bsl, align 4
  br label %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i: ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mf, %bb.me, %stbtt__handle_clipped_edge.exit449.i.i.i.i.i.i.i, %bb.lr, %bb.lq, %bb.lp, %bb.lj, %bb.li, %stbtt__handle_clipped_edge.exit435.i.i.i.i.i.i.i, %bb.kv, %bb.ku, %bb.kt, %bb.kn, %bb.km, %stbtt__handle_clipped_edge.exit421.i.i.i.i.i.i.i, %bb.jz, %bb.jy, %bb.jx, %bb.jr, %bb.jq, %stbtt__handle_clipped_edge.exit407.i.i.i.i.i.i.i, %bb.jd, %bb.jc, %bb.jb, %bb.iv, %bb.iu, %stbtt__handle_clipped_edge.exit393.i.i.i.i.i.i.i, %bb.hx, %bb.hw, %bb.hv, %bb.hp, %bb.ho, %stbtt__handle_clipped_edge.exit372.i.i.i.i.i.i.i
  %exitcond.not.i.i96.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i95.i.i.i.i.i, %wide.trip.count.i.i91.i.i.i.i.i
  br i1 %exitcond.not.i.i96.i.i.i.i.i, label %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, label %bb.gs

stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i: ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i.i.i.i.i, %bb.gr, %._crit_edge.i.i.i.i.i.i.i, %bb.gn, %bb.gj, %bb.gi, %bb.gh, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fq, %bb.fp, %bb.fe, %bb.fc
  %i.bso = load ptr, ptr %.0293468.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i92.i.i.i.i.i = icmp eq ptr %i.bso, null
  br i1 %.not.i.i92.i.i.i.i.i, label %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i, label %bb.fb

stbtt__fill_active_edges_new.exit.i.i.i.i.i.i:    ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  br i1 %i.aix, label %.lr.ph22.i.i.i.preheader.i.i.i, label %.preheader.i.i.i.i.i.i

.lr.ph22.i.i.i.preheader.i.i.i:                   ; preds = %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  %i.bsp = mul nuw nsw i32 %.07630.i.i.i.i.i.i, %i.zy
  br label %.lr.ph22.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph22.i.i.i.i.i.i, %stbtt__fill_active_edges_new.exit.i.i.i.i.i.i
  br i1 %.not91.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %.lr.ph22.i.i.i.i.i.i, %.lr.ph22.i.i.i.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph22.i.i.i.i.i.i ], [ 0, %.lr.ph22.i.i.i.preheader.i.i.i ] ; 4 uses
  %.07721.i.i.i.i.i.i = phi float [ %i.bss, %.lr.ph22.i.i.i.i.i.i ], [ 0.000000e+00, %.lr.ph22.i.i.i.preheader.i.i.i ]
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsr = load float, ptr %i.bsq, align 4
  %i.bss = fadd float %.07721.i.i.i.i.i.i, %i.bsr ; 2 uses
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i
  %i.bsu = load float, ptr %i.bst, align 4
  %i.bsv = fadd float %i.bsu, %i.bss
  %i.bsw = call float @llvm.fabs.f32(float %i.bsv)
  %i.bsx = call float @llvm.fmuladd.f32(float %i.bsw, float 2.550000e+02, float 5.000000e-01)
  %i.bsy = fptosi float %i.bsx to i32
  %spec.store.select.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.bsy, i32 255)
  %i.bsz = trunc i32 %spec.store.select.i.i.i.i.i.i to i8
  %i.bta = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.btb = add nsw i32 %i.bsp, %i.bta
  %i.btc = sext i32 %i.btb to i64
  %i.btd = getelementptr inbounds i8, ptr %i.aag, i64 %i.btc
  store i8 %i.bsz, ptr %i.btd, align 1
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.aii
  br i1 %exitcond.not.i.i.i153, label %.preheader.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph25.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph25.i.i.i.i.i.i
  %i.bte = phi ptr [ %i.btl, %.lr.ph25.i.i.i.i.i.i ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0.82.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.224.i.i.i.i.i.i = phi ptr [ %i.btk, %.lr.ph25.i.i.i.i.i.i ], [ %i.f, %.preheader.i.i.i.i.i.i ]
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 12
  %i.btg = load float, ptr %i.btf, align 4
  %i.bth = getelementptr inbounds nuw i8, ptr %i.bte, i64 8 ; 2 uses
  %i.bti = load float, ptr %i.bth, align 8
  %i.btj = fadd float %i.btg, %i.bti
  store float %i.btj, ptr %i.bth, align 8
  %i.btk = load ptr, ptr %.224.i.i.i.i.i.i, align 8 ; 2 uses
  %i.btl = load ptr, ptr %i.btk, align 8          ; 2 uses
  %.not92.i.i.i.i.i.i = icmp eq ptr %i.btl, null
  br i1 %.not92.i.i.i.i.i.i, label %._crit_edge26.i.i.i.i.i.i, label %.lr.ph25.i.i.i.i.i.i

._crit_edge26.i.i.i.i.i.i:                        ; preds = %.lr.ph25.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.btm = add nsw i32 %.07531.i.i.i.i.i.i, 1
  %i.btn = add nuw nsw i32 %.07630.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond61.not.i.i.i = icmp eq i32 %i.btn, %i.aab
  br i1 %exitcond61.not.i.i.i, label %._crit_edge35.i.i.i.i.i.i, label %bb.eo

._crit_edge35.i.i.i.i.i.i:                        ; preds = %._crit_edge26.i.i.i.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

.lr.ph.i94.i.i.i.i.i.i:                           ; preds = %._crit_edge35.i.i.i.i.i.i, %.lr.ph.i94.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i = phi ptr [ %i.bto, %.lr.ph.i94.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i ] ; 2 uses
  %i.bto = load ptr, ptr %.02.i.i.i.i.i.i.i, align 8 ; 2 uses
  call void @free(ptr noundef nonnull %.02.i.i.i.i.i.i.i) #39
  %.not.i95.i.i.i.i.i.i = icmp eq ptr %i.bto, null
  br i1 %.not.i95.i.i.i.i.i.i, label %stbtt__hheap_cleanup.exit.i.i.i.i.i.i, label %.lr.ph.i94.i.i.i.i.i.i

stbtt__hheap_cleanup.exit.i.i.i.i.i.i:            ; preds = %.lr.ph.i94.i.i.i.i.i.i, %._crit_edge35.i.i.i.i.i.i, %bb.en
  %.not.i.i.i.i.i.i = icmp eq ptr %.080.i.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i.i.i.i, label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @free(ptr noundef %.080.i.i.i.i.i.i) #39
  br label %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i

stbtt__rasterize_sorted_edges.exit.i.i.i.i.i:     ; preds = %bb.mx, %stbtt__hheap_cleanup.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @free(ptr noundef %i.agn) #39
  br label %stbtt__rasterize.exit.i.i.i.i

stbtt__rasterize.exit.i.i.i.i:                    ; preds = %stbtt__rasterize_sorted_edges.exit.i.i.i.i.i, %._crit_edge.i27.i.i.i.i
  call void @free(ptr noundef %i.acf) #39
  call void @free(ptr noundef %i.aec) #39
  br label %stbtt_GetCodepointBitmap.exit

stbtt_GetCodepointBitmap.exit:                    ; preds = %bb.do, %bb.dp, %stbtt_FlattenCurves.exit.thread.i.i.i.i, %stbtt__rasterize.exit.i.i.i.i, %bb.dn
  %.1185 = phi i32 [ 0, %bb.dn ], [ %i.zy, %stbtt__rasterize.exit.i.i.i.i ], [ %i.zy, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.zy, %bb.dp ], [ %i.zy, %bb.do ]
  %.1182 = phi i32 [ 0, %bb.dn ], [ %i.aab, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aab, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ %i.aab, %bb.dp ], [ %i.aab, %bb.do ]
  %.0.i.i.i151 = phi ptr [ null, %bb.dn ], [ %i.aag, %stbtt__rasterize.exit.i.i.i.i ], [ %i.aag, %stbtt_FlattenCurves.exit.thread.i.i.i.i ], [ null, %bb.dp ], [ null, %bb.do ]
  %i.btp = load ptr, ptr %i.m, align 8
  call void @free(ptr noundef %i.btp) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #39
  br label %.sink.split

bb.my:                                            ; preds = %bb.dm
  %.not141 = icmp eq i32 %i.zo, 32
  br i1 %.not141, label %bb.pg, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.btq = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.btr = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #39
  br i1 %i.yt, label %stbtt_GetCodepointSDF.exit, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call fastcc void @stbtt_GetGlyphBitmapBoxSubpixel(ptr noundef nonnull readonly %9, i32 noundef %i.zp, float noundef %i.yc, float noundef %i.yc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.bts = load i32, ptr %i.a, align 4            ; 4 uses
  %i.btt = load i32, ptr %i.c, align 4            ; 9 uses
  %i.btu = icmp eq i32 %i.bts, %i.btt
  br i1 %i.btu, label %stbtt_GetCodepointSDF.exit, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.btv = load i32, ptr %i.b, align 4            ; 2 uses
  %i.btw = load i32, ptr %i.d, align 4            ; 2 uses
  %i.btx = icmp eq i32 %i.btv, %i.btw
  br i1 %i.btx, label %stbtt_GetCodepointSDF.exit, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.bty = add i32 %i.bts, -4                     ; 4 uses
  %i.btz = add nsw i32 %i.btv, -4                 ; 7 uses
  %i.bua = add i32 %i.btt, 4                      ; 6 uses
  %i.bub = add i32 %i.btw, 4                      ; 4 uses
  %i.buc = sub i32 %i.bua, %i.bty                 ; 7 uses
  %i.bud = sub nsw i32 %i.bub, %i.btz             ; 2 uses
  store i32 %i.bty, ptr %i.btq, align 4
  store i32 %i.btz, ptr %i.btr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #39
  %i.bue = call fastcc i32 @stbtt_GetGlyphShape(ptr noundef nonnull readonly %9, i32 noundef %i.zp, ptr noundef %i.e) ; 5 uses
  %i.buf = mul nsw i32 %i.bud, %i.buc
  %i.bug = sext i32 %i.buf to i64
  %i.buh = call noalias ptr @malloc(i64 noundef %i.bug) #42 ; 23 uses
  %i.bui = sext i32 %i.bue to i64
  %i.buj = shl nsw i64 %i.bui, 2
  %i.buk = call noalias ptr @malloc(i64 noundef %i.buj) #42 ; 4 uses
  %i.bul = icmp sgt i32 %i.bue, 0                 ; 2 uses
  %.pre.pre.i.i = load ptr, ptr %i.e, align 8     ; 6 uses
  br i1 %i.bul, label %.lr.ph.i.i157, label %.preheader485.i.i

.lr.ph.i.i157:                                    ; preds = %bb.nc
  %i.bum = add nsw i32 %i.bue, -1
  %wide.trip.count.i.i158 = zext nneg i32 %i.bue to i64
  %i.bun = zext nneg i32 %i.bum to i64
  br label %bb.pb

.preheader485.i.i:                                ; preds = %bb.pf, %bb.nc
  %i.buo = icmp slt i32 %i.btz, %i.bub
  br i1 %i.buo, label %.preheader.lr.ph.i.i, label %._crit_edge495.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader485.i.i
  %i.bup = icmp slt i32 %i.bty, %i.bua
  %wide.trip.count.i.i.i156 = zext i32 %i.bue to i64 ; 2 uses
  br i1 %i.bup, label %.preheader.preheader.i.i, label %._crit_edge495.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.buq = zext i32 %i.bty to i64                 ; 10 uses
  %reass.sub.i.i = sub i32 4, %i.bts              ; 2 uses
  br i1 %i.bul, label %.preheader.i.us.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i
  %i.bur = add i32 %i.btt, 7
  %i.bus = sub i32 %i.bur, %i.bts                 ; 9 uses
  %i.but = zext i32 %i.bus to i64
  %i.buu = add nuw nsw i64 %i.but, 1              ; 15 uses
  %i.buv = add i32 %i.btt, 3
  %i.buw = add i32 %i.btt, 3
  %i.bux = add i32 %i.btt, 3
  %min.iters.check672 = icmp ult i32 %i.bus, 7    ; 2 uses
  %min.iters.check700 = icmp ult i32 %i.bus, 31
  %i.buy = and i64 %i.buu, 24
  %n.vec702 = and i64 %i.buu, 8589934560          ; 4 uses
  %i.buz = add nuw nsw i64 %n.vec702, %i.buq
  %cmp.n707 = icmp eq i64 %i.buu, %n.vec702
  %min.epilog.iters.check713 = icmp eq i64 %i.buy, 0
  %n.vec715 = and i64 %i.buu, 8589934584          ; 3 uses
  %i.bva = add nuw nsw i64 %n.vec715, %i.buq
  %cmp.n720 = icmp eq i64 %i.buu, %n.vec715
  %min.iters.check674 = icmp ult i32 %i.bus, 31
  %i.bvb = and i64 %i.buu, 24
  %n.vec676 = and i64 %i.buu, 8589934560          ; 4 uses
  %i.bvc = add nuw nsw i64 %n.vec676, %i.buq
  %cmp.n681 = icmp eq i64 %i.buu, %n.vec676
  %min.epilog.iters.check687 = icmp eq i64 %i.bvb, 0
  %n.vec689 = and i64 %i.buu, 8589934584          ; 3 uses
  %i.bvd = add nuw nsw i64 %n.vec689, %i.buq
  %cmp.n694 = icmp eq i64 %i.buu, %n.vec689
  %min.iters.check646 = icmp ult i32 %i.bus, 7
  %min.iters.check648 = icmp ult i32 %i.bus, 31
  %i.bve = and i64 %i.buu, 24
  %n.vec650 = and i64 %i.buu, 8589934560          ; 4 uses
  %i.bvf = add nuw nsw i64 %n.vec650, %i.buq
  %cmp.n655 = icmp eq i64 %i.buu, %n.vec650
  %min.epilog.iters.check661 = icmp eq i64 %i.bve, 0
  %n.vec663 = and i64 %i.buu, 8589934584          ; 3 uses
  %i.bvg = add nuw nsw i64 %n.vec663, %i.buq
  %cmp.n668 = icmp eq i64 %i.buu, %n.vec663
  br label %.preheader.i.i

.preheader.i.us.i:                                ; preds = %.preheader.preheader.i.i, %._crit_edge493.i.split.us.us.i
  %.0435494.i.us.i = phi i32 [ %i.cnf, %._crit_edge493.i.split.us.us.i ], [ %i.btz, %.preheader.preheader.i.i ] ; 3 uses
  %i.bvh = sitofp i32 %.0435494.i.us.i to float
  %i.bvi = fadd float %i.bvh, 5.000000e-01        ; 8 uses
  %i.bvj = fdiv float %i.bvi, %i.yu               ; 4 uses
  %i.bvk = fpext float %i.bvj to double
  %i.bvl = fadd float %i.bvj, f0xBC23D70A
  %i.bvm = fadd float %i.bvj, f0x3C23D70A
  %i.bvn = sub nsw i32 %.0435494.i.us.i, %i.btz
  %i.bvo = mul nsw i32 %i.bvn, %i.buc
  %.reass.i.us.i = add i32 %i.bvo, %reass.sub.i.i
  br label %bb.nd

bb.nd:                                            ; preds = %bb.pa, %.preheader.i.us.i
  %indvars.iv502.i.us.us.i = phi i64 [ %i.buq, %.preheader.i.us.i ], [ %indvars.iv.next503.i.us.us.i, %bb.pa ] ; 2 uses
  %i.bvp = trunc i64 %indvars.iv502.i.us.us.i to i32 ; 2 uses
  %i.bvq = sitofp i32 %i.bvp to float
  %i.bvr = fadd float %i.bvq, 5.000000e-01        ; 8 uses
  %i.bvs = fdiv float %i.bvr, %i.yc               ; 7 uses
  %i.bvt = call double @fmod(double noundef %i.bvk, double noundef 1.000000e+00) #39 ; 2 uses
  %i.bvu = fcmp olt double %i.bvt, f0x3F847AE130000000
  br i1 %i.bvu, label %.lr.ph.i.i.us.us.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bvv = fcmp ogt double %i.bvt, f0x3FEFAE1490000000
  br i1 %i.bvv, label %bb.nf, label %.lr.ph.i.i.us.us.i

bb.nf:                                            ; preds = %bb.ne
  br label %.lr.ph.i.i.us.us.i

.lr.ph.i.i.us.us.i:                               ; preds = %bb.nf, %bb.ne, %bb.nd
  %.0150.i.i.us.us.i = phi float [ %i.bvj, %bb.ne ], [ %i.bvl, %bb.nf ], [ %i.bvm, %bb.nd ] ; 10 uses
  %i.bvw = fmul float %i.bvs, 0.000000e+00
  %i.bvx = fmul float %.0150.i.i.us.us.i, 0.000000e+00
  %i.bvy = fadd float %i.bvs, %i.bvx
  %i.bvz = fsub float %i.bvw, %.0150.i.i.us.us.i
  br label %bb.ng

bb.ng:                                            ; preds = %.thread.i.i.us.us.i, %.lr.ph.i.i.us.us.i
  %indvars.iv.i.i.us.us.i = phi i64 [ 0, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next.i.i.us.us.i, %.thread.i.i.us.us.i ] ; 2 uses
  %.0197.i.i.us.us.i = phi i32 [ 0, %.lr.ph.i.i.us.us.i ], [ %.9.i.fr.i.us.us.i, %.thread.i.i.us.us.i ] ; 11 uses
  %i.bwa = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i.us.us.i ; 11 uses
  %i.bwb = getelementptr inbounds nuw i8, ptr %i.bwa, i64 12
  %i.bwc = load i8, ptr %i.bwb, align 2
  switch i8 %i.bwc, label %.thread.i.i.us.us.i [
    i8 2, label %bb.nv
    i8 3, label %bb.nh
  ]

bb.nh:                                            ; preds = %bb.ng
  %i.bwd = getelementptr i8, ptr %i.bwa, i64 -14  ; 2 uses
  %i.bwe = getelementptr i8, ptr %i.bwa, i64 -12
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwa, i64 4
  %i.bwg = load i16, ptr %i.bwf, align 2          ; 2 uses
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwa, i64 6
  %i.bwi = load i16, ptr %i.bwh, align 2          ; 3 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwa, i64 2
  %i.bwk = load i16, ptr %i.bwe, align 2          ; 6 uses
  %i.bwl = load i16, ptr %i.bwd, align 2          ; 2 uses
  %i.bwm = sext i16 %i.bwk to i32
  %i.bwn = load i16, ptr %i.bwj, align 2          ; 6 uses
  %i.bwo = load i16, ptr %i.bwa, align 2          ; 2 uses
  %i.bwp = call i16 @llvm.smin.i16(i16 %i.bwg, i16 %i.bwo)
  %..i.i.us.us.i = call i16 @llvm.smin.i16(i16 %i.bwp, i16 %i.bwl)
  %i.bwq = call i16 @llvm.smin.i16(i16 %i.bwi, i16 %i.bwn)
  %i.bwr = call i16 @llvm.smin.i16(i16 %i.bwk, i16 %i.bwq)
  %i.bws = call i16 @llvm.smax.i16(i16 %i.bwi, i16 %i.bwn)
  %i.bwt = call i16 @llvm.smax.i16(i16 %i.bwk, i16 %i.bws)
  %i.bwu = sitofp i16 %i.bwr to float
  %i.bwv = fcmp ogt float %.0150.i.i.us.us.i, %i.bwu
  %i.bww = sitofp i16 %i.bwt to float
  %i.bwx = fcmp olt float %.0150.i.i.us.us.i, %i.bww
  %or.cond162.i.i.us.us.i = and i1 %i.bwv, %i.bwx
  %i.bwy = sitofp i16 %..i.i.us.us.i to float
  %i.bwz = fcmp ogt float %i.bvs, %i.bwy
  %or.cond164.i.i.us.us.i = select i1 %or.cond162.i.i.us.us.i, i1 %i.bwz, i1 false
  br i1 %or.cond164.i.i.us.us.i, label %bb.ni, label %.thread.i.i.us.us.i

bb.ni:                                            ; preds = %bb.nh
  %i.bxa = load <2 x i16>, ptr %i.bwa, align 2    ; 2 uses
  %i.bxb = load <2 x i16>, ptr %i.bwd, align 2    ; 2 uses
  %i.bxc = shufflevector <2 x i16> %i.bxa, <2 x i16> %i.bxb, <2 x i32> <i32 0, i32 2>
  %i.bxd = sitofp <2 x i16> %i.bxc to <2 x float> ; 3 uses
  %i.bxe = shufflevector <2 x i16> %i.bxa, <2 x i16> %i.bxb, <2 x i32> <i32 1, i32 3>
  %i.bxf = sitofp <2 x i16> %i.bxe to <2 x float> ; 3 uses
  %i.bxg = sitofp i16 %i.bwg to float             ; 4 uses
  %i.bxh = sitofp i16 %i.bwi to float             ; 4 uses
  %i.bxi = extractelement <2 x float> %i.bxd, i64 1 ; 3 uses
  %i.bxj = fcmp une float %i.bxi, %i.bxg
  %i.bxk = extractelement <2 x float> %i.bxf, i64 1 ; 3 uses
  %i.bxl = fcmp une float %i.bxk, %i.bxh
  %narrow.i.not.i.i.us.us.i = or i1 %i.bxj, %i.bxl
  br i1 %narrow.i.not.i.i.us.us.i, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bxm = extractelement <2 x float> %i.bxd, i64 0 ; 2 uses
  %i.bxn = fcmp une float %i.bxm, %i.bxg
  %i.bxo = extractelement <2 x float> %i.bxf, i64 0 ; 2 uses
  %i.bxp = fcmp une float %i.bxo, %i.bxh
  %narrow.i182.not.i.i.us.us.i = or i1 %i.bxn, %i.bxp
  br i1 %narrow.i182.not.i.i.us.us.i, label %bb.no, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bxq = sext i16 %i.bwl to i32                 ; 2 uses
  %i.bxr = sext i16 %i.bwo to i32                 ; 2 uses
  %i.bxs = sext i16 %i.bwn to i32
  %i.bxt = icmp slt i16 %i.bwk, %i.bwn
  %i.bxu = call i16 @llvm.smin.i16(i16 %i.bwk, i16 %i.bwn)
  %i.bxv = sitofp i16 %i.bxu to float
  %i.bxw = fcmp ogt float %.0150.i.i.us.us.i, %i.bxv
  br i1 %i.bxw, label %bb.nl, label %.thread.i.i.us.us.i

bb.nl:                                            ; preds = %bb.nk
  %i.bxx = call i16 @llvm.smax.i16(i16 %i.bwk, i16 %i.bwn)
  %i.bxy = sitofp i16 %i.bxx to float
  %i.bxz = fcmp olt float %.0150.i.i.us.us.i, %i.bxy
  br i1 %i.bxz, label %bb.nm, label %.thread.i.i.us.us.i

bb.nm:                                            ; preds = %bb.nl
  %i.bya = call i32 @llvm.smin.i32(i32 %i.bxq, i32 %i.bxr)
  %i.byb = sitofp i32 %i.bya to float
  %i.byc = fcmp ogt float %i.bvs, %i.byb
  br i1 %i.byc, label %bb.nn, label %.thread.i.i.us.us.i

bb.nn:                                            ; preds = %bb.nm
  %i.byd = fsub float %.0150.i.i.us.us.i, %i.bxk
  %i.bye = sub nsw i32 %i.bxs, %i.bwm
  %i.byf = sitofp i32 %i.bye to float
  %i.byg = fdiv float %i.byd, %i.byf
  %i.byh = sub nsw i32 %i.bxr, %i.bxq
  %i.byi = sitofp i32 %i.byh to float
  %i.byj = call float @llvm.fmuladd.f32(float %i.byg, float %i.byi, float %i.bxi)
  %i.byk = fcmp olt float %i.byj, %i.bvs
  %i.byl = select i1 %i.bxt, i32 1, i32 -1
  %i.bym = select i1 %i.byk, i32 %i.byl, i32 0
  %.4.i.i.us.us.i = add nsw i32 %i.bym, %.0197.i.i.us.us.i
  br label %.thread.i.i.us.us.i

bb.no:                                            ; preds = %bb.nj
  %i.byn = fneg float %i.bxi
  %i.byo = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byn)
  %i.byp = fadd float %i.byo, %i.bxk              ; 3 uses
  %i.byq = fneg float %i.bxg
  %i.byr = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byq)
  %i.bys = fadd float %i.byr, %i.bxh              ; 2 uses
  %i.byt = fneg float %i.bxm
  %i.byu = call float @llvm.copysign.f32(float 0.000000e+00, float %i.byt)
  %i.byv = fadd float %i.byu, %i.bxo
  %i.byw = call float @llvm.fmuladd.f32(float %i.bys, float -2.000000e+00, float %i.byp)
  %i.byx = fadd float %i.byw, %i.byv              ; 5 uses
  %i.byy = fsub float %i.bys, %i.byp              ; 7 uses
  %i.byz = fadd float %i.bvz, %i.byp              ; 2 uses
  %i.bza = fcmp une float %i.byx, 0.000000e+00
  br i1 %i.bza, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bzb = fmul float %i.byy, -2.000000e+00
  %i.bzc = fdiv float %i.byz, %i.bzb              ; 3 uses
  %i.bzd = fcmp ult float %i.bzc, 0.000000e+00
  %i.bze = fcmp ugt float %i.bzc, 1.000000e+00
  %or.cond119.i.i.i.us.us.i = or i1 %i.bzd, %i.bze
  br i1 %or.cond119.i.i.i.us.us.i, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i, label %.thread21.i.i.i.us.us.i

bb.nq:                                            ; preds = %bb.no
  %i.bzf = fneg float %i.byz
  %i.bzg = fmul float %i.byx, %i.bzf
  %i.bzh = call float @llvm.fmuladd.f32(float %i.byy, float %i.byy, float %i.bzg) ; 2 uses
  %i.bzi = fcmp ogt float %i.bzh, 0.000000e+00
  br i1 %i.bzi, label %bb.nr, label %stbtt__ray_intersect_bezier.exit.i.i.us.us.i

end_hunk_0
begin_hunk_1_@LoadFontData:bb.a
  %.6.i.us.us.i = phi float [ %sqrt483.i.us.us.i, %bb.or ], [ %.5.i.us.us.i, %bb.oq ], [ %.5.i.us.us.i, %bb.op ] ; 4 uses
  %i.ckn = fcmp oge float %.sroa.11.0.i.us.us.i, 0.000000e+00
  %i.cko = fcmp ole float %.sroa.11.0.i.us.us.i, 1.000000e+00
  %i.ckp = and i1 %i.ckn, %i.cko
  %or.cond19.i.us.us.i = select i1 %i.ciu, i1 %i.ckp, i1 false
  br i1 %or.cond19.i.us.us.i, label %bb.ot, label %.thread.i.us.us.i

bb.ot:                                            ; preds = %bb.os
  %i.ckq = fsub float 1.000000e+00, %.sroa.11.0.i.us.us.i ; 3 uses
  %i.ckr = fmul float %i.ckq, %i.ckq              ; 2 uses
  %i.cks = fmul nnan float %.sroa.11.0.i.us.us.i, 2.000000e+00
  %i.ckt = fmul float %i.cks, %i.ckq              ; 2 uses
  %i.cku = fmul float %i.cds, %i.ckt
  %i.ckv = call float @llvm.fmuladd.f32(float %i.ckr, float %i.cdr, float %i.cku)
  %i.ckw = fmul nnan float %.sroa.11.0.i.us.us.i, %.sroa.11.0.i.us.us.i ; 2 uses
  %i.ckx = call float @llvm.fmuladd.f32(float %i.ckw, float %i.cdy, float %i.ckv)
  %i.cky = fmul float %i.cdv, %i.ckt
  %i.ckz = call float @llvm.fmuladd.f32(float %i.ckr, float %i.cdu, float %i.cky)
  %i.cla = call float @llvm.fmuladd.f32(float %i.ckw, float %i.ceb, float %i.ckz)
  %i.clb = fsub float %i.ckx, %i.bvr              ; 2 uses
  %i.clc = fsub float %i.cla, %i.bvi              ; 2 uses
  %i.cld = fmul float %i.clc, %i.clc
  %i.cle = call float @llvm.fmuladd.f32(float %i.clb, float %i.clb, float %i.cld) ; 2 uses
  %i.clf = fmul float %.6.i.us.us.i, %.6.i.us.us.i
  %i.clg = fcmp olt float %i.cle, %i.clf
  br i1 %i.clg, label %bb.ou, label %.thread.i.us.us.i

bb.ou:                                            ; preds = %bb.ot
  %sqrt484.i.us.us.i = call float @llvm.sqrt.f32(float %i.cle)
  br label %.thread.i.us.us.i

bb.ov:                                            ; preds = %.lr.ph490.i.us.us.i
  %i.clh = getelementptr inbounds nuw [4 x i8], ptr %i.buk, i64 %indvars.iv497.i.us.us.i
  %i.cli = load float, ptr %i.clh, align 4        ; 2 uses
  %i.clj = fcmp une float %i.cli, 0.000000e+00
  br i1 %i.clj, label %bb.ow, label %.thread.i.us.us.i

bb.ow:                                            ; preds = %bb.ov
  %i.clk = getelementptr i8, ptr %i.ccg, i64 -14
  %i.cll = load <2 x i16>, ptr %i.clk, align 2
  %i.clm = sitofp <2 x i16> %i.cll to <2 x float> ; 2 uses
  %i.cln = extractelement <2 x float> %i.clm, i64 0
  %i.clo = fmul float %i.yc, %i.cln
  %i.clp = extractelement <2 x float> %i.clm, i64 1
  %i.clq = fmul float %i.clp, %i.yu
  %i.clr = fmul float %.0428489.i.us.us.i, %.0428489.i.us.us.i
  %i.cls = shufflevector <2 x float> %i.ccj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.clt = insertelement <2 x float> %i.cls, float %i.clq, i64 1
  %i.clu = insertelement <2 x float> %i.ccj, float %i.bvi, i64 0
  %i.clv = fsub <2 x float> %i.clt, %i.clu        ; 5 uses
  %i.clw = insertelement <2 x float> %i.ccj, float %i.clo, i64 1
  %i.clx = shufflevector <2 x float> %i.ccj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cly = insertelement <2 x float> %i.clx, float %i.bvr, i64 0
  %i.clz = fsub <2 x float> %i.clw, %i.cly        ; 5 uses
  %i.cma = fneg <2 x float> %i.clz
  %i.cmb = shufflevector <2 x float> %i.clv, <2 x float> %i.cma, <2 x i32> <i32 0, i32 2>
  %i.cmc = fmul <2 x float> %i.clv, %i.cmb
  %i.cmd = shufflevector <2 x float> %i.clz, <2 x float> %i.clv, <2 x i32> <i32 0, i32 2>
  %i.cme = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.clz, <2 x float> %i.cmd, <2 x float> %i.cmc) ; 2 uses
  %i.cmf = extractelement <2 x float> %i.cme, i64 0 ; 2 uses
  %i.cmg = fcmp olt float %i.cmf, %i.clr
  %sqrt480.i.us.us.i = call float @llvm.sqrt.f32(float %i.cmf)
  %.1429.i.us.us.i = select i1 %i.cmg, float %sqrt480.i.us.us.i, float %.0428489.i.us.us.i ; 3 uses
  %i.cmh = extractelement <2 x float> %i.cme, i64 1
  %i.cmi = call float @llvm.fabs.f32(float %i.cmh)
  %i.cmj = fmul float %i.cli, %i.cmi              ; 2 uses
  %i.cmk = fcmp olt float %i.cmj, %.1429.i.us.us.i
  br i1 %i.cmk, label %bb.ox, label %.thread.i.us.us.i

bb.ox:                                            ; preds = %bb.ow
  %i.cml = shufflevector <2 x float> %i.clv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cmm = fmul <2 x float> %i.cml, %i.clv
  %i.cmn = shufflevector <2 x float> %i.clz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cmo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cmn, <2 x float> %i.clz, <2 x float> %i.cmm) ; 2 uses
  %i.cmp = extractelement <2 x float> %i.cmo, i64 0
  %i.cmq = fneg float %i.cmp
  %i.cmr = extractelement <2 x float> %i.cmo, i64 1
  %i.cms = fdiv float %i.cmq, %i.cmr              ; 2 uses
  %i.cmt = fcmp oge float %i.cms, 0.000000e+00
  %i.cmu = fcmp ole float %i.cms, 1.000000e+00
  %or.cond.i.us.us.i = and i1 %i.cmt, %i.cmu
  %.2430.i.us.us.i = select i1 %or.cond.i.us.us.i, float %i.cmj, float %.1429.i.us.us.i
  br label %.thread.i.us.us.i

.thread.i.us.us.i:                                ; preds = %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.nz, %.lr.ph490.i.us.us.i
  %.9.i.us.us.i = phi float [ %.0428489.i.us.us.i, %.lr.ph490.i.us.us.i ], [ %.1429.i.us.us.i, %bb.ow ], [ %.2430.i.us.us.i, %bb.ox ], [ %.6.i.us.us.i, %bb.os ], [ %.0428489.i.us.us.i, %bb.nz ], [ %sqrt484.i.us.us.i, %bb.ou ], [ %.6.i.us.us.i, %bb.ot ], [ %.0428489.i.us.us.i, %bb.ov ] ; 3 uses
  %indvars.iv.next498.i.us.us.i = add nuw nsw i64 %indvars.iv497.i.us.us.i, 1 ; 2 uses
  %exitcond501.not.i.us.us.i = icmp eq i64 %indvars.iv.next498.i.us.us.i, %wide.trip.count.i.i.i156
  br i1 %exitcond501.not.i.us.us.i, label %._crit_edge.i.us.us.i, label %.lr.ph490.i.us.us.i

._crit_edge.i.us.us.i:                            ; preds = %.thread.i.us.us.i
  %i.cmv = icmp eq i32 %.9.i.fr.i.us.us.i, 0
  %i.cmw = fneg float %.9.i.us.us.i
  %i.cmx = select i1 %i.cmv, float %i.cmw, float %.9.i.us.us.i
  %i.cmy = call float @llvm.fmuladd.f32(float %i.cmx, float 6.400000e+01, float 1.280000e+02) ; 3 uses
  %i.cmz = fcmp olt float %i.cmy, 0.000000e+00
  br i1 %i.cmz, label %bb.pa, label %bb.oy

bb.oy:                                            ; preds = %._crit_edge.i.us.us.i
  %i.cna = fcmp ogt float %i.cmy, 2.550000e+02
  br i1 %i.cna, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy, %._crit_edge.i.us.us.i
  %.0431.i.us.us.i = phi float [ %i.cmy, %bb.oy ], [ 2.550000e+02, %bb.oz ], [ 0.000000e+00, %._crit_edge.i.us.us.i ]
  %i.cnb = fptoui float %.0431.i.us.us.i to i8
  %i.cnc = add i32 %.reass.i.us.i, %i.bvp
  %i.cnd = sext i32 %i.cnc to i64
  %i.cne = getelementptr inbounds i8, ptr %i.buh, i64 %i.cnd
  store i8 %i.cnb, ptr %i.cne, align 1
  %indvars.iv.next503.i.us.us.i = add nuw nsw i64 %indvars.iv502.i.us.us.i, 1 ; 2 uses
  %lftr.wideiv.i.us.us.i = trunc i64 %indvars.iv.next503.i.us.us.i to i32
  %exitcond505.not.i.us.us.i = icmp eq i32 %i.bua, %lftr.wideiv.i.us.us.i
  br i1 %exitcond505.not.i.us.us.i, label %._crit_edge493.i.split.us.us.i, label %bb.nd

._crit_edge493.i.split.us.us.i:                   ; preds = %bb.pa
  %i.cnf = add nsw i32 %.0435494.i.us.i, 1        ; 2 uses
  %exitcond506.not.i.us.i = icmp eq i32 %i.cnf, %i.bub
  br i1 %exitcond506.not.i.us.i, label %._crit_edge495.split.i.i, label %.preheader.i.us.i

bb.pb:                                            ; preds = %bb.pf, %.lr.ph.i.i157
  %indvars.iv.i.i159 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i161, %bb.pf ] ; 4 uses
  %.0432487.i.i = phi i64 [ %i.bun, %.lr.ph.i.i157 ], [ %indvars.iv.i.i159, %bb.pf ] ; 2 uses
  %i.cng = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %indvars.iv.i.i159 ; 4 uses
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cng, i64 12
  %i.cni = load i8, ptr %i.cnh, align 2
  switch i8 %i.cni, label %bb.pf [
    i8 2, label %bb.pc
    i8 3, label %bb.pd
  ]

bb.pc:                                            ; preds = %bb.pb
  %i.cnj = load i16, ptr %i.cng, align 2
  %i.cnk = sitofp i16 %i.cnj to float
  %i.cnl = fmul float %i.yc, %i.cnk
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cng, i64 2
  %i.cnn = load i16, ptr %i.cnm, align 2
  %i.cno = sitofp i16 %i.cnn to float
  %i.cnp = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cnq = load i16, ptr %i.cnp, align 2
  %i.cnr = sitofp i16 %i.cnq to float
  %i.cns = fmul float %i.yc, %i.cnr
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cnp, i64 2
  %i.cnu = load i16, ptr %i.cnt, align 2
  %i.cnv = sitofp i16 %i.cnu to float
  %i.cnw = fsub float %i.cns, %i.cnl              ; 2 uses
  %i.cnx = fmul float %i.yc, %i.cno
  %i.cny = fmul float %i.yc, %i.cnv
  %i.cnz = fsub float %i.cnx, %i.cny              ; 2 uses
  %i.coa = fmul float %i.cnz, %i.cnz
  %i.cob = call float @llvm.fmuladd.f32(float %i.cnw, float %i.cnw, float %i.coa)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.cob) ; 2 uses
  %i.coc = fcmp olt float %sqrt.i.i, f0x3A800000
  %i.cod = fdiv float 1.000000e+00, %sqrt.i.i
  %i.coe = select i1 %i.coc, float 0.000000e+00, float %i.cod
  br label %bb.pf

bb.pd:                                            ; preds = %bb.pb
  %i.cof = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre.i.i, i64 %.0432487.i.i ; 2 uses
  %i.cog = load i16, ptr %i.cof, align 2
  %i.coh = sitofp i16 %i.cog to float
  %i.coi = fmul float %i.yc, %i.coh
  %i.coj = getelementptr inbounds nuw i8, ptr %i.cof, i64 2
  %i.cok = load i16, ptr %i.coj, align 2
  %i.col = sitofp i16 %i.cok to float
  %i.com = load <4 x i16>, ptr %i.cng, align 2
  %i.con = sitofp <4 x i16> %i.com to <4 x float> ; 4 uses
  %i.coo = extractelement <4 x float> %i.con, i64 2
  %i.cop = fmul float %i.yc, %i.coo
  %i.coq = extractelement <4 x float> %i.con, i64 3
  %i.cor = fmul float %i.coq, %i.yu
  %i.cos = extractelement <4 x float> %i.con, i64 0
  %i.cot = fmul float %i.yc, %i.cos
  %i.cou = extractelement <4 x float> %i.con, i64 1
  %i.cov = fmul float %i.cou, %i.yu
  %i.cow = call float @llvm.fmuladd.f32(float %i.cop, float -2.000000e+00, float %i.cot)
  %i.cox = fadd float %i.coi, %i.cow              ; 2 uses
  %i.coy = call float @llvm.fmuladd.f32(float %i.cor, float -2.000000e+00, float %i.cov)
  %i.coz = fmul float %i.yc, %i.col
  %i.cpa = fsub float %i.coy, %i.coz              ; 2 uses
  %i.cpb = fmul float %i.cpa, %i.cpa
  %i.cpc = call float @llvm.fmuladd.f32(float %i.cox, float %i.cox, float %i.cpb) ; 2 uses
  %i.cpd = fcmp ult float %i.cpc, f0x35800000
  br i1 %i.cpd, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.cpe = fdiv float 1.000000e+00, %i.cpc
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pc, %bb.pb
  %.sink.i.i160 = phi float [ %i.cpe, %bb.pe ], [ 0.000000e+00, %bb.pd ], [ %i.coe, %bb.pc ], [ 0.000000e+00, %bb.pb ]
  %i.cpf = getelementptr inbounds nuw [4 x i8], ptr %i.buk, i64 %indvars.iv.i.i159
  store float %.sink.i.i160, ptr %i.cpf, align 4
  %indvars.iv.next.i.i161 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 2 uses
  %exitcond.not.i.i162 = icmp eq i64 %indvars.iv.next.i.i161, %wide.trip.count.i.i158
  br i1 %exitcond.not.i.i162, label %.preheader485.i.i, label %bb.pb

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge493.i.split.i
  %indvar = phi i32 [ 0, %.preheader.i.i.preheader ], [ %indvar.next, %._crit_edge493.i.split.i ] ; 4 uses
  %.0435494.i.i = phi i32 [ %i.btz, %.preheader.i.i.preheader ], [ %i.ctk, %._crit_edge493.i.split.i ] ; 3 uses
  %10 = mul i32 %i.buc, %indvar                   ; 2 uses
  %11 = mul i32 %i.buc, %indvar                   ; 2 uses
  %i.cpg = sitofp i32 %.0435494.i.i to float
  %i.cph = fadd float %i.cpg, 5.000000e-01
  %i.cpi = fdiv float %i.cph, %i.yu
  %i.cpj = fpext float %i.cpi to double
  %i.cpk = sub nsw i32 %.0435494.i.i, %i.btz
  %i.cpl = mul nsw i32 %i.cpk, %i.buc             ; 7 uses
  %.reass.i.i = add i32 %i.cpl, %reass.sub.i.i    ; 15 uses
  %i.cpm = call double @fmod(double noundef %i.cpj, double noundef 1.000000e+00) #39 ; 2 uses
  %i.cpn = fcmp olt double %i.cpm, f0x3F847AE130000000
  br i1 %i.cpn, label %iter.check658, label %.preheader.i.split.split.i

iter.check658:                                    ; preds = %.preheader.i.i
  %12 = mul i32 %i.buc, %indvar                   ; 2 uses
  %i.cpo = add i32 %12, %i.bus
  %i.cpp = icmp slt i32 %i.cpo, %12
  %or.cond723 = select i1 %min.iters.check646, i1 true, i1 %i.cpp
  br i1 %or.cond723, label %._crit_edge.thread.i.us12.i.preheader, label %vector.main.loop.iter.check647

vector.main.loop.iter.check647:                   ; preds = %iter.check658
  br i1 %min.iters.check648, label %vec.epilog.ph662, label %vector.body651

vector.body651:                                   ; preds = %vector.main.loop.iter.check647, %vector.body651
  %index652 = phi i64 [ %index.next653, %vector.body651 ], [ 0, %vector.main.loop.iter.check647 ] ; 2 uses
  %i.cpq = trunc i64 %index652 to i32
  %i.cpr = add i32 %i.cpl, %i.cpq
  %i.cps = sext i32 %i.cpr to i64
  %i.cpt = getelementptr inbounds i8, ptr %i.buh, i64 %i.cps ; 2 uses
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpt, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cpt, align 1
  store <16 x i8> zeroinitializer, ptr %i.cpu, align 1
  %index.next653 = add nuw i64 %index652, 32      ; 2 uses
  %i.cpv = icmp eq i64 %index.next653, %n.vec650
  br i1 %i.cpv, label %middle.block654, label %vector.body651, !llvm.loop !30

middle.block654:                                  ; preds = %vector.body651
  br i1 %cmp.n655, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block654
  br i1 %min.epilog.iters.check661, label %._crit_edge.thread.i.us12.i.preheader, label %vec.epilog.ph662, !prof !31

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check647, %vec.epilog.iter.check660
  %vec.epilog.resume.val656 = phi i64 [ %n.vec650, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check647 ]
  br label %vec.epilog.vector.body664

vec.epilog.vector.body664:                        ; preds = %vec.epilog.vector.body664, %vec.epilog.ph662
  %index665 = phi i64 [ %vec.epilog.resume.val656, %vec.epilog.ph662 ], [ %index.next666, %vec.epilog.vector.body664 ] ; 2 uses
  %i.cpw = trunc i64 %index665 to i32
  %i.cpx = add i32 %i.cpl, %i.cpw
  %i.cpy = sext i32 %i.cpx to i64
  %i.cpz = getelementptr inbounds i8, ptr %i.buh, i64 %i.cpy
  store <8 x i8> zeroinitializer, ptr %i.cpz, align 1
  %index.next666 = add nuw i64 %index665, 8       ; 2 uses
  %i.cqa = icmp eq i64 %index.next666, %n.vec663
  br i1 %i.cqa, label %vec.epilog.middle.block667, label %vec.epilog.vector.body664, !llvm.loop !32

vec.epilog.middle.block667:                       ; preds = %vec.epilog.vector.body664
  br i1 %cmp.n668, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader

._crit_edge.thread.i.us12.i.preheader:            ; preds = %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block667
  %indvars.iv502.i.us11.i.ph = phi i64 [ %i.buq, %iter.check658 ], [ %i.bvf, %vec.epilog.iter.check660 ], [ %i.bvg, %vec.epilog.middle.block667 ] ; 3 uses
  %i.cqb = trunc i64 %indvars.iv502.i.us11.i.ph to i32 ; 2 uses
  %i.cqc = sub i32 %i.btt, %i.cqb
  %i.cqd = sub i32 %i.bux, %i.cqb
  %xtraiter818 = and i32 %i.cqc, 3                ; 2 uses
  %lcmp.mod819.not = icmp eq i32 %xtraiter818, 0
  br i1 %lcmp.mod819.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol

._crit_edge.thread.i.us12.i.prol:                 ; preds = %._crit_edge.thread.i.us12.i.preheader, %._crit_edge.thread.i.us12.i.prol
  %indvars.iv502.i.us11.i.prol = phi i64 [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ], [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ] ; 2 uses
  %prol.iter820 = phi i32 [ %prol.iter820.next, %._crit_edge.thread.i.us12.i.prol ], [ 0, %._crit_edge.thread.i.us12.i.preheader ]
  %i.cqe = trunc i64 %indvars.iv502.i.us11.i.prol to i32
  %i.cqf = add i32 %.reass.i.i, %i.cqe
  %i.cqg = sext i32 %i.cqf to i64
  %i.cqh = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqg
  store i8 0, ptr %i.cqh, align 1
  %indvars.iv.next503.i.us13.i.prol = add nuw nsw i64 %indvars.iv502.i.us11.i.prol, 1 ; 2 uses
  %prol.iter820.next = add i32 %prol.iter820, 1   ; 2 uses
  %prol.iter820.cmp.not = icmp eq i32 %prol.iter820.next, %xtraiter818
  br i1 %prol.iter820.cmp.not, label %._crit_edge.thread.i.us12.i.prol.loopexit, label %._crit_edge.thread.i.us12.i.prol, !llvm.loop !33

._crit_edge.thread.i.us12.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us12.i.prol, %._crit_edge.thread.i.us12.i.preheader
  %indvars.iv502.i.us11.i.unr = phi i64 [ %indvars.iv502.i.us11.i.ph, %._crit_edge.thread.i.us12.i.preheader ], [ %indvars.iv.next503.i.us13.i.prol, %._crit_edge.thread.i.us12.i.prol ]
  %i.cqi = icmp ult i32 %i.cqd, 3
  br i1 %i.cqi, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i.preheader.new

._crit_edge.thread.i.us12.i.preheader.new:        ; preds = %._crit_edge.thread.i.us12.i.prol.loopexit
  %invariant.op870 = add i32 1, %.reass.i.i
  %invariant.op872 = add i32 2, %.reass.i.i
  %invariant.op874 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us12.i

._crit_edge.thread.i.us12.i:                      ; preds = %._crit_edge.thread.i.us12.i, %._crit_edge.thread.i.us12.i.preheader.new
  %indvars.iv502.i.us11.i = phi i64 [ %indvars.iv502.i.us11.i.unr, %._crit_edge.thread.i.us12.i.preheader.new ], [ %indvars.iv.next503.i.us13.i.3, %._crit_edge.thread.i.us12.i ] ; 5 uses
  %i.cqj = trunc i64 %indvars.iv502.i.us11.i to i32
  %i.cqk = add i32 %.reass.i.i, %i.cqj
  %i.cql = sext i32 %i.cqk to i64
  %i.cqm = getelementptr inbounds i8, ptr %i.buh, i64 %i.cql
  store i8 0, ptr %i.cqm, align 1
  %i.cqn = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass871 = add i32 %i.cqn, %invariant.op870
  %i.cqo = sext i32 %.reass871 to i64
  %i.cqp = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqo
  store i8 0, ptr %i.cqp, align 1
  %i.cqq = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass873 = add i32 %i.cqq, %invariant.op872
  %i.cqr = sext i32 %.reass873 to i64
  %i.cqs = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqr
  store i8 0, ptr %i.cqs, align 1
  %i.cqt = trunc i64 %indvars.iv502.i.us11.i to i32
  %.reass875 = add i32 %i.cqt, %invariant.op874
  %i.cqu = sext i32 %.reass875 to i64
  %i.cqv = getelementptr inbounds i8, ptr %i.buh, i64 %i.cqu
  store i8 0, ptr %i.cqv, align 1
  %indvars.iv.next503.i.us13.i.3 = add nuw nsw i64 %indvars.iv502.i.us11.i, 4 ; 2 uses
  %lftr.wideiv.i.us14.i.3 = trunc i64 %indvars.iv.next503.i.us13.i.3 to i32
  %exitcond505.not.i.us15.i.3 = icmp eq i32 %i.bua, %lftr.wideiv.i.us14.i.3
  br i1 %exitcond505.not.i.us15.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us12.i, !llvm.loop !34

.preheader.i.split.split.i:                       ; preds = %.preheader.i.i
  %13 = fcmp ogt double %i.cpm, f0x3FEFAE1490000000
  br i1 %13, label %iter.check684, label %iter.check710.a

iter.check710.a:                                  ; preds = %.preheader.i.split.split.i
  %i.cqw = add i32 %10, %i.bus
  %i.cqx = icmp slt i32 %i.cqw, %10
  %or.cond725 = select i1 %min.iters.check672, i1 true, i1 %i.cqx
  br i1 %or.cond725, label %._crit_edge.thread.i.i.preheader, label %vector.main.loop.iter.check699

vector.main.loop.iter.check699:                   ; preds = %iter.check710.a
  br i1 %min.iters.check700, label %vec.epilog.ph714, label %vector.body703

vector.body703:                                   ; preds = %vector.main.loop.iter.check699, %vector.body703
  %index704 = phi i64 [ %index.next705, %vector.body703 ], [ 0, %vector.main.loop.iter.check699 ] ; 2 uses
  %i.cqy = trunc i64 %index704 to i32
  %i.cqz = add i32 %i.cpl, %i.cqy
  %i.cra = sext i32 %i.cqz to i64
  %i.crb = getelementptr inbounds i8, ptr %i.buh, i64 %i.cra ; 2 uses
  %i.crc = getelementptr inbounds nuw i8, ptr %i.crb, i64 16
  store <16 x i8> zeroinitializer, ptr %i.crb, align 1
  store <16 x i8> zeroinitializer, ptr %i.crc, align 1
  %index.next705 = add nuw i64 %index704, 32      ; 2 uses
  %i.crd = icmp eq i64 %index.next705, %n.vec702
  br i1 %i.crd, label %middle.block706, label %vector.body703, !llvm.loop !35

middle.block706:                                  ; preds = %vector.body703
  br i1 %cmp.n707, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block706
  br i1 %min.epilog.iters.check713, label %._crit_edge.thread.i.i.preheader, label %vec.epilog.ph714, !prof !31

vec.epilog.ph714:                                 ; preds = %vector.main.loop.iter.check699, %vec.epilog.iter.check712
  %vec.epilog.resume.val708 = phi i64 [ %n.vec702, %vec.epilog.iter.check712 ], [ 0, %vector.main.loop.iter.check699 ]
  br label %vec.epilog.vector.body716

vec.epilog.vector.body716:                        ; preds = %vec.epilog.vector.body716, %vec.epilog.ph714
  %index717 = phi i64 [ %vec.epilog.resume.val708, %vec.epilog.ph714 ], [ %index.next718, %vec.epilog.vector.body716 ] ; 2 uses
  %i.cre = trunc i64 %index717 to i32
  %i.crf = add i32 %i.cpl, %i.cre
  %i.crg = sext i32 %i.crf to i64
  %i.crh = getelementptr inbounds i8, ptr %i.buh, i64 %i.crg
  store <8 x i8> zeroinitializer, ptr %i.crh, align 1
  %index.next718 = add nuw i64 %index717, 8       ; 2 uses
  %i.cri = icmp eq i64 %index.next718, %n.vec715
  br i1 %i.cri, label %vec.epilog.middle.block719, label %vec.epilog.vector.body716, !llvm.loop !36

vec.epilog.middle.block719:                       ; preds = %vec.epilog.vector.body716
  br i1 %cmp.n720, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i.preheader

._crit_edge.thread.i.i.preheader:                 ; preds = %iter.check710.a, %vec.epilog.iter.check712, %vec.epilog.middle.block719
  %indvars.iv502.i.i.ph = phi i64 [ %i.buq, %iter.check710.a ], [ %i.buz, %vec.epilog.iter.check712 ], [ %i.bva, %vec.epilog.middle.block719 ] ; 3 uses
  %i.crj = trunc i64 %indvars.iv502.i.i.ph to i32 ; 2 uses
  %i.crk = sub i32 %i.btt, %i.crj
  %i.crl = sub i32 %i.buv, %i.crj
  %xtraiter813 = and i32 %i.crk, 3                ; 2 uses
  %lcmp.mod814.not = icmp eq i32 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol

._crit_edge.thread.i.i.prol:                      ; preds = %._crit_edge.thread.i.i.preheader, %._crit_edge.thread.i.i.prol
  %indvars.iv502.i.i.prol = phi i64 [ %indvars.iv.next503.i.i.prol, %._crit_edge.thread.i.i.prol ], [ %indvars.iv502.i.i.ph, %._crit_edge.thread.i.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %._crit_edge.thread.i.i.prol ], [ 0, %._crit_edge.thread.i.i.preheader ]
  %i.crm = trunc i64 %indvars.iv502.i.i.prol to i32
  %i.crn = add i32 %.reass.i.i, %i.crm
  %i.cro = sext i32 %i.crn to i64
  %i.crp = getelementptr inbounds i8, ptr %i.buh, i64 %i.cro
  store i8 0, ptr %i.crp, align 1
  %indvars.iv.next503.i.i.prol = add nuw nsw i64 %indvars.iv502.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter813
  br i1 %prol.iter.cmp.not, label %._crit_edge.thread.i.i.prol.loopexit, label %._crit_edge.thread.i.i.prol, !llvm.loop !37

._crit_edge.thread.i.i.prol.loopexit:             ; preds = %._crit_edge.thread.i.i.prol, %._crit_edge.thread.i.i.preheader
  %indvars.iv502.i.i.unr = phi i64 [ %indvars.iv502.i.i.ph, %._crit_edge.thread.i.i.preheader ], [ %indvars.iv.next503.i.i.prol, %._crit_edge.thread.i.i.prol ]
  %i.crq = icmp ult i32 %i.crl, 3
  br i1 %i.crq, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i.preheader.new

._crit_edge.thread.i.i.preheader.new:             ; preds = %._crit_edge.thread.i.i.prol.loopexit
  %invariant.op = add i32 1, %.reass.i.i
  %invariant.op860 = add i32 2, %.reass.i.i
  %invariant.op862 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.i

iter.check684:                                    ; preds = %.preheader.i.split.split.i
  %14 = add i32 %11, %i.bus
  %15 = icmp slt i32 %14, %11
  %or.cond727 = select i1 %min.iters.check672, i1 true, i1 %15
  br i1 %or.cond727, label %._crit_edge.thread.i.us17.i.preheader, label %vector.main.loop.iter.check673

vector.main.loop.iter.check673:                   ; preds = %iter.check684
  br i1 %min.iters.check674, label %vec.epilog.ph688, label %vector.body677

vector.body677:                                   ; preds = %vector.main.loop.iter.check673, %vector.body677
  %index678 = phi i64 [ %index.next679, %vector.body677 ], [ 0, %vector.main.loop.iter.check673 ] ; 2 uses
  %i.crr = trunc i64 %index678 to i32
  %i.crs = add i32 %i.cpl, %i.crr
  %i.crt = sext i32 %i.crs to i64
  %i.cru = getelementptr inbounds i8, ptr %i.buh, i64 %i.crt ; 2 uses
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cru, i64 16
  store <16 x i8> zeroinitializer, ptr %i.cru, align 1
  store <16 x i8> zeroinitializer, ptr %i.crv, align 1
  %index.next679 = add nuw i64 %index678, 32      ; 2 uses
  %i.crw = icmp eq i64 %index.next679, %n.vec676
  br i1 %i.crw, label %middle.block680, label %vector.body677, !llvm.loop !38

middle.block680:                                  ; preds = %vector.body677
  br i1 %cmp.n681, label %._crit_edge493.i.split.i, label %vec.epilog.iter.check686

vec.epilog.iter.check686:                         ; preds = %middle.block680
  br i1 %min.epilog.iters.check687, label %._crit_edge.thread.i.us17.i.preheader, label %vec.epilog.ph688, !prof !31

vec.epilog.ph688:                                 ; preds = %vector.main.loop.iter.check673, %vec.epilog.iter.check686
  %vec.epilog.resume.val682 = phi i64 [ %n.vec676, %vec.epilog.iter.check686 ], [ 0, %vector.main.loop.iter.check673 ]
  br label %vec.epilog.vector.body690

vec.epilog.vector.body690:                        ; preds = %vec.epilog.vector.body690, %vec.epilog.ph688
  %index691 = phi i64 [ %vec.epilog.resume.val682, %vec.epilog.ph688 ], [ %index.next692, %vec.epilog.vector.body690 ] ; 2 uses
  %i.crx = trunc i64 %index691 to i32
  %i.cry = add i32 %i.cpl, %i.crx
  %i.crz = sext i32 %i.cry to i64
  %i.csa = getelementptr inbounds i8, ptr %i.buh, i64 %i.crz
  store <8 x i8> zeroinitializer, ptr %i.csa, align 1
  %index.next692 = add nuw i64 %index691, 8       ; 2 uses
  %i.csb = icmp eq i64 %index.next692, %n.vec689
  br i1 %i.csb, label %vec.epilog.middle.block693, label %vec.epilog.vector.body690, !llvm.loop !39

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body690
  br i1 %cmp.n694, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us17.i.preheader

._crit_edge.thread.i.us17.i.preheader:            ; preds = %iter.check684, %vec.epilog.iter.check686, %vec.epilog.middle.block693
  %indvars.iv502.i.us16.i.ph = phi i64 [ %i.buq, %iter.check684 ], [ %i.bvc, %vec.epilog.iter.check686 ], [ %i.bvd, %vec.epilog.middle.block693 ] ; 3 uses
  %i.csc = trunc i64 %indvars.iv502.i.us16.i.ph to i32 ; 2 uses
  %i.csd = sub i32 %i.btt, %i.csc
  %i.cse = sub i32 %i.buw, %i.csc
  %xtraiter815 = and i32 %i.csd, 3                ; 2 uses
  %lcmp.mod816.not = icmp eq i32 %xtraiter815, 0
  br i1 %lcmp.mod816.not, label %._crit_edge.thread.i.us17.i.prol.loopexit, label %._crit_edge.thread.i.us17.i.prol

._crit_edge.thread.i.us17.i.prol:                 ; preds = %._crit_edge.thread.i.us17.i.preheader, %._crit_edge.thread.i.us17.i.prol
  %indvars.iv502.i.us16.i.prol = phi i64 [ %indvars.iv.next503.i.us18.i.prol, %._crit_edge.thread.i.us17.i.prol ], [ %indvars.iv502.i.us16.i.ph, %._crit_edge.thread.i.us17.i.preheader ] ; 2 uses
  %prol.iter817 = phi i32 [ %prol.iter817.next, %._crit_edge.thread.i.us17.i.prol ], [ 0, %._crit_edge.thread.i.us17.i.preheader ]
  %i.csf = trunc i64 %indvars.iv502.i.us16.i.prol to i32
  %i.csg = add i32 %.reass.i.i, %i.csf
  %i.csh = sext i32 %i.csg to i64
  %i.csi = getelementptr inbounds i8, ptr %i.buh, i64 %i.csh
  store i8 0, ptr %i.csi, align 1
  %indvars.iv.next503.i.us18.i.prol = add nuw nsw i64 %indvars.iv502.i.us16.i.prol, 1 ; 2 uses
  %prol.iter817.next = add i32 %prol.iter817, 1   ; 2 uses
  %prol.iter817.cmp.not = icmp eq i32 %prol.iter817.next, %xtraiter815
  br i1 %prol.iter817.cmp.not, label %._crit_edge.thread.i.us17.i.prol.loopexit, label %._crit_edge.thread.i.us17.i.prol, !llvm.loop !40

._crit_edge.thread.i.us17.i.prol.loopexit:        ; preds = %._crit_edge.thread.i.us17.i.prol, %._crit_edge.thread.i.us17.i.preheader
  %indvars.iv502.i.us16.i.unr = phi i64 [ %indvars.iv502.i.us16.i.ph, %._crit_edge.thread.i.us17.i.preheader ], [ %indvars.iv.next503.i.us18.i.prol, %._crit_edge.thread.i.us17.i.prol ]
  %i.csj = icmp ult i32 %i.cse, 3
  br i1 %i.csj, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us17.i.preheader.new

._crit_edge.thread.i.us17.i.preheader.new:        ; preds = %._crit_edge.thread.i.us17.i.prol.loopexit
  %invariant.op864 = add i32 1, %.reass.i.i
  %invariant.op866 = add i32 2, %.reass.i.i
  %invariant.op868 = add i32 3, %.reass.i.i
  br label %._crit_edge.thread.i.us17.i

._crit_edge.thread.i.us17.i:                      ; preds = %._crit_edge.thread.i.us17.i, %._crit_edge.thread.i.us17.i.preheader.new
  %indvars.iv502.i.us16.i = phi i64 [ %indvars.iv502.i.us16.i.unr, %._crit_edge.thread.i.us17.i.preheader.new ], [ %indvars.iv.next503.i.us18.i.3, %._crit_edge.thread.i.us17.i ] ; 5 uses
  %i.csk = trunc i64 %indvars.iv502.i.us16.i to i32
  %i.csl = add i32 %.reass.i.i, %i.csk
  %i.csm = sext i32 %i.csl to i64
  %i.csn = getelementptr inbounds i8, ptr %i.buh, i64 %i.csm
  store i8 0, ptr %i.csn, align 1
  %i.cso = trunc i64 %indvars.iv502.i.us16.i to i32
  %.reass865 = add i32 %i.cso, %invariant.op864
  %i.csp = sext i32 %.reass865 to i64
  %i.csq = getelementptr inbounds i8, ptr %i.buh, i64 %i.csp
  store i8 0, ptr %i.csq, align 1
  %i.csr = trunc i64 %indvars.iv502.i.us16.i to i32
  %.reass867 = add i32 %i.csr, %invariant.op866
  %i.css = sext i32 %.reass867 to i64
  %i.cst = getelementptr inbounds i8, ptr %i.buh, i64 %i.css
  store i8 0, ptr %i.cst, align 1
  %i.csu = trunc i64 %indvars.iv502.i.us16.i to i32
  %.reass869 = add i32 %i.csu, %invariant.op868
  %i.csv = sext i32 %.reass869 to i64
  %i.csw = getelementptr inbounds i8, ptr %i.buh, i64 %i.csv
  store i8 0, ptr %i.csw, align 1
  %indvars.iv.next503.i.us18.i.3 = add nuw nsw i64 %indvars.iv502.i.us16.i, 4 ; 2 uses
  %lftr.wideiv.i.us19.i.3 = trunc i64 %indvars.iv.next503.i.us18.i.3 to i32
  %exitcond505.not.i.us20.i.3 = icmp eq i32 %i.bua, %lftr.wideiv.i.us19.i.3
  br i1 %exitcond505.not.i.us20.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.us17.i, !llvm.loop !41

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i, %._crit_edge.thread.i.i.preheader.new
  %indvars.iv502.i.i = phi i64 [ %indvars.iv502.i.i.unr, %._crit_edge.thread.i.i.preheader.new ], [ %indvars.iv.next503.i.i.3, %._crit_edge.thread.i.i ] ; 5 uses
  %i.csx = trunc i64 %indvars.iv502.i.i to i32
  %i.csy = add i32 %.reass.i.i, %i.csx
  %i.csz = sext i32 %i.csy to i64
  %i.cta = getelementptr inbounds i8, ptr %i.buh, i64 %i.csz
  store i8 0, ptr %i.cta, align 1
  %i.ctb = trunc i64 %indvars.iv502.i.i to i32
  %.reass = add i32 %i.ctb, %invariant.op
  %i.ctc = sext i32 %.reass to i64
  %i.ctd = getelementptr inbounds i8, ptr %i.buh, i64 %i.ctc
  store i8 0, ptr %i.ctd, align 1
  %i.cte = trunc i64 %indvars.iv502.i.i to i32
  %.reass861 = add i32 %i.cte, %invariant.op860
  %i.ctf = sext i32 %.reass861 to i64
  %i.ctg = getelementptr inbounds i8, ptr %i.buh, i64 %i.ctf
  store i8 0, ptr %i.ctg, align 1
  %i.cth = trunc i64 %indvars.iv502.i.i to i32
  %.reass863 = add i32 %i.cth, %invariant.op862
  %i.cti = sext i32 %.reass863 to i64
  %i.ctj = getelementptr inbounds i8, ptr %i.buh, i64 %i.cti
  store i8 0, ptr %i.ctj, align 1
  %indvars.iv.next503.i.i.3 = add nuw nsw i64 %indvars.iv502.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.3 = trunc i64 %indvars.iv.next503.i.i.3 to i32
  %exitcond505.not.i.i.3 = icmp eq i32 %i.bua, %lftr.wideiv.i.i.3
  br i1 %exitcond505.not.i.i.3, label %._crit_edge493.i.split.i, label %._crit_edge.thread.i.i, !llvm.loop !42

._crit_edge493.i.split.i:                         ; preds = %._crit_edge.thread.i.i.prol.loopexit, %._crit_edge.thread.i.i, %._crit_edge.thread.i.us17.i.prol.loopexit, %._crit_edge.thread.i.us17.i, %._crit_edge.thread.i.us12.i.prol.loopexit, %._crit_edge.thread.i.us12.i, %middle.block706, %vec.epilog.middle.block719, %middle.block680, %vec.epilog.middle.block693, %middle.block654, %vec.epilog.middle.block667
  %i.ctk = add nsw i32 %.0435494.i.i, 1           ; 2 uses
  %exitcond506.not.i.i = icmp eq i32 %i.ctk, %i.bub
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond506.not.i.i, label %._crit_edge495.split.i.i, label %.preheader.i.i

._crit_edge495.split.i.i:                         ; preds = %._crit_edge493.i.split.i, %._crit_edge493.i.split.us.us.i, %.preheader.lr.ph.i.i, %.preheader485.i.i
  call void @free(ptr noundef %i.buk) #39
  call void @free(ptr noundef %.pre.pre.i.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  br label %stbtt_GetCodepointSDF.exit

stbtt_GetCodepointSDF.exit:                       ; preds = %bb.mz, %bb.na, %bb.nb, %._crit_edge495.split.i.i
  %.2186 = phi i32 [ 0, %bb.mz ], [ 0, %bb.na ], [ 0, %bb.nb ], [ %i.buc, %._crit_edge495.split.i.i ]
  %.2183 = phi i32 [ 0, %bb.mz ], [ 0, %bb.na ], [ 0, %bb.nb ], [ %i.bud, %._crit_edge495.split.i.i ]
  %.0.i.i = phi ptr [ null, %bb.mz ], [ null, %bb.na ], [ null, %bb.nb ], [ %i.buh, %._crit_edge495.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %.sink.split

.sink.split:                                      ; preds = %stbtt_GetCodepointBitmap.exit, %stbtt_GetCodepointSDF.exit
  %.0.i.i.sink = phi ptr [ %.0.i.i, %stbtt_GetCodepointSDF.exit ], [ %.0.i.i.i151, %stbtt_GetCodepointBitmap.exit ]
  %.0184.ph = phi i32 [ %.2186, %stbtt_GetCodepointSDF.exit ], [ %.1185, %stbtt_GetCodepointBitmap.exit ]
  %.0181.ph = phi i32 [ %.2183, %stbtt_GetCodepointSDF.exit ], [ %.1182, %stbtt_GetCodepointBitmap.exit ]
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  store ptr %.0.i.i.sink, ptr %i.ctl, align 8
  br label %bb.pg

bb.pg:                                            ; preds = %.sink.split, %bb.dm, %bb.my
  %.0184 = phi i32 [ 0, %bb.dm ], [ 0, %bb.my ], [ %.0184.ph, %.sink.split ] ; 2 uses
  %.0181 = phi i32 [ 0, %bb.dm ], [ 0, %bb.my ], [ %.0181.ph, %.sink.split ] ; 4 uses
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.zs, i64 16 ; 2 uses
  %i.ctn = load ptr, ptr %i.ctm, align 8          ; 2 uses
  %.not142 = icmp eq ptr %i.ctn, null
  br i1 %.not142, label %bb.pj, label %stbtt_GetCodepointHMetrics.exit

stbtt_GetCodepointHMetrics.exit:                  ; preds = %bb.pg
  %i.cto = getelementptr inbounds nuw i8, ptr %i.zs, i64 12
  %.val.i163 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val4.i = load i32, ptr %i.wb, align 8
  %i.ctp = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val.i163, i32 %.val4.i, i32 noundef %i.zo) ; 2 uses
  %i.ctq = load i32, ptr %i.fp, align 4
  %i.ctr = sext i32 %i.ctq to i64
  %i.cts = getelementptr inbounds i8, ptr %.val.i163, i64 %i.ctr ; 2 uses
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cts, i64 34
  %.val.i.i164 = load i8, ptr %i.ctt, align 1
  %i.ctu = getelementptr i8, ptr %i.cts, i64 35
  %.val31.i.i = load i8, ptr %i.ctu, align 1
  %i.ctv = zext i8 %.val.i.i164 to i32
  %i.ctw = shl nuw nsw i32 %i.ctv, 8
  %i.ctx = zext i8 %.val31.i.i to i32
  %i.cty = or disjoint i32 %i.ctw, %i.ctx         ; 2 uses
  %i.ctz = icmp slt i32 %i.ctp, %i.cty            ; 2 uses
  %i.cua = load i32, ptr %i.fr, align 8
  %i.cub = sext i32 %i.cua to i64
  %i.cuc = getelementptr inbounds i8, ptr %.val.i163, i64 %i.cub ; 2 uses
  %i.cud = shl nuw nsw i32 %i.cty, 2
  %i.cue = zext nneg i32 %i.cud to i64
  %i.cuf = getelementptr i8, ptr %i.cuc, i64 %i.cue ; 2 uses
  %i.cug = getelementptr i8, ptr %i.cuf, i64 -4
  %i.cuh = getelementptr i8, ptr %i.cuf, i64 -3
  %i.cui = shl nsw i32 %i.ctp, 2
  %i.cuj = sext i32 %i.cui to i64
  %i.cuk = getelementptr inbounds i8, ptr %i.cuc, i64 %i.cuj ; 2 uses
  %i.cul = getelementptr i8, ptr %i.cuk, i64 1
  %.val32.sink.in.i.i = select i1 %i.ctz, ptr %i.cuk, ptr %i.cug
  %.val33.sink.in.i.i = select i1 %i.ctz, ptr %i.cul, ptr %i.cuh
  %.val33.sink.i.i = load i8, ptr %.val33.sink.in.i.i, align 1
  %.val32.sink.i.i = load i8, ptr %.val32.sink.in.i.i, align 1
  %i.cum = zext i8 %.val32.sink.i.i to i16
  %i.cun = shl nuw i16 %i.cum, 8
  %i.cuo = zext i8 %.val33.sink.i.i to i16
  %i.cup = or disjoint i16 %i.cun, %i.cuo
  %i.cuq = sitofp i16 %i.cup to float
  %i.cur = fmul float %i.yc, %i.cuq
  %i.cus = fptosi float %i.cur to i32
  store i32 %i.cus, ptr %i.cto, align 4
  %i.cut = icmp sgt i32 %.0181, %2
  %or.cond = select i1 %.not143, i1 %i.cut, i1 false
  br i1 %or.cond, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %stbtt_GetCodepointHMetrics.exit
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %i.zo, i32 noundef %.0181, i32 noundef %2) #39
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %stbtt_GetCodepointHMetrics.exit
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.zs, i64 24
  store i32 %.0184, ptr %i.cuu, align 8
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.zs, i64 28
  store i32 %.0181, ptr %i.cuv, align 4
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  store i32 1, ptr %i.cuw, align 8
  %i.cux = getelementptr inbounds nuw i8, ptr %i.zs, i64 36
  store i32 1, ptr %i.cux, align 4
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.zs, i64 8 ; 2 uses
  %i.cuz = load i32, ptr %i.cuy, align 8
  %i.cva = add nsw i32 %i.cuz, %i.za
  store i32 %i.cva, ptr %i.cuy, align 8
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.pg
  switch i32 %i.zo, label %bb.pn [
    i32 12288, label %stbtt_GetCodepointHMetrics.exit175
    i32 32, label %stbtt_GetCodepointHMetrics.exit175
  ]

stbtt_GetCodepointHMetrics.exit175:               ; preds = %bb.pj, %bb.pj
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.zs, i64 12 ; 2 uses
  %.val.i166 = load ptr, ptr %i.r, align 8        ; 3 uses
  %.val4.i167 = load i32, ptr %i.wb, align 8
  %i.cvc = call fastcc i32 @stbtt_FindGlyphIndex(ptr %.val.i166, i32 %.val4.i167, i32 noundef %i.zo) ; 2 uses
  %i.cvd = load i32, ptr %i.fp, align 4
  %i.cve = sext i32 %i.cvd to i64
  %i.cvf = getelementptr inbounds i8, ptr %.val.i166, i64 %i.cve ; 2 uses
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cvf, i64 34
  %.val.i.i168 = load i8, ptr %i.cvg, align 1
  %i.cvh = getelementptr i8, ptr %i.cvf, i64 35
  %.val31.i.i169 = load i8, ptr %i.cvh, align 1
  %i.cvi = zext i8 %.val.i.i168 to i32
  %i.cvj = shl nuw nsw i32 %i.cvi, 8
  %i.cvk = zext i8 %.val31.i.i169 to i32
  %i.cvl = or disjoint i32 %i.cvj, %i.cvk         ; 2 uses
  %i.cvm = icmp slt i32 %i.cvc, %i.cvl            ; 2 uses
  %i.cvn = load i32, ptr %i.fr, align 8
  %i.cvo = sext i32 %i.cvn to i64
  %i.cvp = getelementptr inbounds i8, ptr %.val.i166, i64 %i.cvo ; 2 uses
  %i.cvq = shl nuw nsw i32 %i.cvl, 2
  %i.cvr = zext nneg i32 %i.cvq to i64
  %i.cvs = getelementptr i8, ptr %i.cvp, i64 %i.cvr ; 2 uses
  %i.cvt = getelementptr i8, ptr %i.cvs, i64 -4
  %i.cvu = getelementptr i8, ptr %i.cvs, i64 -3
  %i.cvv = shl nsw i32 %i.cvc, 2
  %i.cvw = sext i32 %i.cvv to i64
  %i.cvx = getelementptr inbounds i8, ptr %i.cvp, i64 %i.cvw ; 2 uses
  %i.cvy = getelementptr i8, ptr %i.cvx, i64 1
  %.val32.sink.in.i.i171 = select i1 %i.cvm, ptr %i.cvx, ptr %i.cvt
  %.val33.sink.in.i.i172 = select i1 %i.cvm, ptr %i.cvy, ptr %i.cvu
  %.val33.sink.i.i173 = load i8, ptr %.val33.sink.in.i.i172, align 1
  %.val32.sink.i.i174 = load i8, ptr %.val32.sink.in.i.i171, align 1
  %i.cvz = zext i8 %.val32.sink.i.i174 to i16
  %i.cwa = shl nuw i16 %i.cvz, 8
  %i.cwb = zext i8 %.val33.sink.i.i173 to i16
  %i.cwc = or disjoint i16 %i.cwa, %i.cwb
  %i.cwd = sitofp i16 %i.cwc to float
  %i.cwe = fmul float %i.yc, %i.cwd
  %i.cwf = fptosi float %i.cwe to i32             ; 4 uses
  store i32 %i.cwf, ptr %i.cvb, align 4
  %i.cwg = icmp sgt i32 %i.cwf, 0
  br i1 %i.cwg, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %stbtt_GetCodepointHMetrics.exit175
  %i.cwh = mul nsw i32 %2, %i.cwf
  %i.cwi = sext i32 %i.cwh to i64
  %i.cwj = call noalias ptr @calloc(i64 noundef %i.cwi, i64 noundef 1) #40
  br label %bb.pm

bb.pl:                                            ; preds = %stbtt_GetCodepointHMetrics.exit175
  store i32 0, ptr %i.cvb, align 4
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %.sroa.0.0 = phi ptr [ %i.cwj, %bb.pk ], [ null, %bb.pl ] ; 2 uses
  store ptr %.sroa.0.0, ptr %i.ctm, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 24
  store i32 %i.cwf, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 28
  store i32 %2, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 36
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pj, %bb.pm
  %i.cwk = phi ptr [ %i.ctn, %bb.pj ], [ %.sroa.0.0, %bb.pm ] ; 3 uses
  br i1 %i.zb, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.pn
  %i.cwl = mul nsw i32 %.0181, %.0184             ; 4 uses
  %i.cwm = icmp sgt i32 %i.cwl, 0
  br i1 %i.cwm, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %wide.trip.count328 = zext nneg i32 %i.cwl to i64 ; 6 uses
  %min.iters.check602 = icmp ult i32 %i.cwl, 4
  br i1 %min.iters.check602, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check603 = icmp ult i32 %i.cwl, 32
  br i1 %min.iters.check603, label %vec.epilog.ph, label %vector.ph604

vector.ph604:                                     ; preds = %vector.main.loop.iter.check
  %i.cwn = and i64 %wide.trip.count328, 28
  %n.vec605 = and i64 %wide.trip.count328, 2147483616 ; 4 uses
  br label %vector.body606

vector.body606:                                   ; preds = %vector.body606, %vector.ph604
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next609, %vector.body606 ] ; 2 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwk, i64 %index607 ; 3 uses
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwo, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.cwo, align 1
  %wide.load608 = load <16 x i8>, ptr %i.cwp, align 1
end_hunk_1
