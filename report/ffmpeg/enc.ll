Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/enc?download=true
inline.NumInlined: 21
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@opus_encode_frame:bb.a

bb.ag:                                            ; preds = %bb.ah
  store float %i.ka, ptr %i.jf, align 16, !tbaa !61
  %indvars.iv.next27.i.i = add nuw nsw i64 %indvars.iv26.i.i, 1 ; 2 uses
  %exitcond29.not.i.i = icmp eq i64 %indvars.iv.next27.i.i, %wide.trip.count.i87.i
  br i1 %exitcond29.not.i.i, label %.preheader1.i.i, label %bb.af, !llvm.loop !110

bb.ah:                                            ; preds = %bb.ah, %bb.af
  %indvars.iv.i88.i = phi i64 [ 0, %bb.af ], [ %indvars.iv.next.i89.i.3, %bb.ah ] ; 5 uses
  %.0522.i.i = phi float [ %i.jg, %bb.af ], [ %i.ka, %bb.ah ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i88.i ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !51 ; 2 uses
  %i.jk = fsub nsz float %i.jj, %.0522.i.i
  store float %i.jk, ptr %i.ji, align 4, !tbaa !51
  %i.jl = fmul nsz float %i.ha, %i.jj
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i88.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !51 ; 2 uses
  %i.jp = fsub nsz float %i.jo, %i.jl
  store float %i.jp, ptr %i.jn, align 4, !tbaa !51
  %i.jq = fmul nsz float %i.ha, %i.jo
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i88.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !51 ; 2 uses
  %i.ju = fsub nsz float %i.jt, %i.jq
  store float %i.ju, ptr %i.js, align 4, !tbaa !51
  %i.jv = fmul nsz float %i.ha, %i.jt
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i88.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !51 ; 2 uses
  %i.jz = fsub nsz float %i.jy, %i.jv
  store float %i.jz, ptr %i.jx, align 4, !tbaa !51
  %i.ka = fmul nsz float %i.ha, %i.jy             ; 2 uses
  %indvars.iv.next.i89.i.3 = add nuw nsw i64 %indvars.iv.i88.i, 4 ; 2 uses
  %exitcond.not.i90.i.3 = icmp eq i64 %indvars.iv.next.i89.i.3, 120
  br i1 %exitcond.not.i90.i.3, label %bb.ag, label %bb.ah, !llvm.loop !111

celt_apply_preemph_filter.exit.i:                 ; preds = %._crit_edge11.split.us.us.i.i, %.preheader1.i.i, %bb.ac
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cs, i64 33928
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !73
  %.not71.i = icmp eq i32 %i.kc, 0
  br i1 %.not71.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %celt_apply_preemph_filter.exit.i
  call void @ff_opus_rc_enc_log(ptr noundef %i.cr, i32 noundef 0, i32 noundef 15) #9
  call fastcc void @celt_enc_quant_pfilter(ptr noundef %i.cr, ptr noundef nonnull %i.cs)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %celt_apply_preemph_filter.exit.i
  call fastcc void @celt_frame_mdct(ptr noundef %i.c, ptr noundef nonnull %i.cs)
  %i.kd = call i32 @ff_opus_psy_celt_frame_process(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.cs, i32 noundef %i.ct) #9
  %.not72143.i = icmp eq i32 %i.kd, 0
  br i1 %.not72143.i, label %._crit_edge.i, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %bb.aj, %.lr.ph144.i
  call fastcc void @celt_frame_mdct(ptr noundef nonnull %i.c, ptr noundef nonnull %i.cs)
  %i.ke = call i32 @ff_opus_psy_celt_frame_process(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.cs, i32 noundef %i.ct) #9
  %.not72.i = icmp eq i32 %i.ke, 0
  br i1 %.not72.i, label %._crit_edge.i, label %.lr.ph144.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %.lr.ph144.i, %bb.aj
  call void @ff_opus_rc_enc_init(ptr noundef %i.cr) #9
  call void @ff_opus_rc_enc_log(ptr noundef %i.cr, i32 noundef 0, i32 noundef 15) #9
  %i.kf = getelementptr inbounds nuw i8, ptr %i.cs, i64 33912 ; 6 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !74
  %.not73.i = icmp eq i32 %i.kg, 0
  br i1 %.not73.i, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %._crit_edge.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !78
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !79 ; 3 uses
  %.not.i.i78.i = icmp ult i32 %i.kk, 65536       ; 2 uses
  %i.kl = lshr i32 %i.kk, 16
  %spec.select.i.i79.i = select i1 %.not.i.i78.i, i32 %i.kk, i32 %i.kl ; 3 uses
  %spec.select12.i.i80.neg.i = select i1 %.not.i.i78.i, i32 0, i32 -16 ; 2 uses
  %.not11.i.i81.i = icmp samesign ult i32 %spec.select.i.i79.i, 256 ; 2 uses
  %i.km = lshr i32 %spec.select.i.i79.i, 8
  %.neg148.i = add nsw i32 %spec.select12.i.i80.neg.i, -8
  %.110.i.i82.i = select i1 %.not11.i.i81.i, i32 %spec.select.i.i79.i, i32 %i.km
  %.1.i.i83.neg149.i = select i1 %.not11.i.i81.i, i32 %spec.select12.i.i80.neg.i, i32 %.neg148.i
  %i.kn = zext nneg i32 %.110.i.i82.i to i64
  %i.ko = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !47
  %i.kq = zext i8 %i.kp to i32
  %.neg123.i = add i32 %i.ki, 15
  %i.kr = sub i32 %.neg123.i, %i.kq
  %i.ks = add i32 %i.kr, %.1.i.i83.neg149.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.cs, i64 34084
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !71
  %.not74.i = icmp ugt i32 %i.ks, %i.ku
  br i1 %.not74.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call fastcc void @celt_enc_quant_pfilter(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.cs, i64 33908 ; 4 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !80
  %.not75.i = icmp eq i32 %i.kw, 0
  br i1 %.not75.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kx = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !78
  %i.kz = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !79 ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.la, 65536         ; 2 uses
  %i.lb = lshr i32 %i.la, 16
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.la, i32 %i.lb ; 3 uses
  %spec.select12.i.i.neg.i = select i1 %.not.i.i.i, i32 0, i32 -16 ; 2 uses
  %.not11.i.i.i = icmp samesign ult i32 %spec.select.i.i.i, 256 ; 2 uses
  %i.lc = lshr i32 %spec.select.i.i.i, 8
  %.neg.i = add nsw i32 %spec.select12.i.i.neg.i, -8
  %.110.i.i.i = select i1 %.not11.i.i.i, i32 %spec.select.i.i.i, i32 %i.lc
  %.1.i.i.neg150.i = select i1 %.not11.i.i.i, i32 %spec.select12.i.i.neg.i, i32 %.neg.i
  %i.ld = zext nneg i32 %.110.i.i.i to i64
  %i.le = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !47
  %i.lg = zext i8 %i.lf to i32
  %.neg125.i = add i32 %i.ky, 2
  %i.lh = sub i32 %.neg125.i, %i.lg
  %i.li = add i32 %i.lh, %.1.i.i.neg150.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.cs, i64 34084
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !71
  %.not76.i = icmp ugt i32 %i.li, %i.lk
  br i1 %.not76.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ll = getelementptr inbounds nuw i8, ptr %i.cs, i64 33924
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !81
  call void @ff_opus_rc_enc_log(ptr noundef nonnull %i.cr, i32 noundef %i.lm, i32 noundef 3) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ln = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 7 uses
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !78
  %i.lp = getelementptr inbounds nuw i8, ptr %i.cr, i64 48 ; 7 uses
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !79 ; 4 uses
  %.not.i.i28.i.i = icmp ult i32 %i.lq, 65536     ; 2 uses
  %i.lr = lshr i32 %i.lq, 16
  %spec.select.i.i29.i.i = select i1 %.not.i.i28.i.i, i32 %i.lq, i32 %i.lr ; 3 uses
  %spec.select12.i.i30.i.i = select i1 %.not.i.i28.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i31.i.i = icmp samesign ult i32 %spec.select.i.i29.i.i, 256 ; 2 uses
  %i.ls = lshr i32 %spec.select.i.i29.i.i, 8
  %i.lt = or disjoint i32 %spec.select12.i.i30.i.i, 8
  %.110.i.i32.i.i = select i1 %.not11.i.i31.i.i, i32 %spec.select.i.i29.i.i, i32 %i.ls
  %.1.i.i33.i.i = select i1 %.not11.i.i31.i.i, i32 %spec.select12.i.i30.i.i, i32 %i.lt
  %i.lu = zext nneg i32 %.110.i.i32.i.i to i64
  %i.lv = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !47
  %i.lx = zext i8 %i.lw to i32
  %i.ly = add nuw nsw i32 %.1.i.i33.i.i, %i.lx    ; 2 uses
  %i.lz = add nsw i32 %i.ly, -15
  %i.ma = lshr i32 %i.lq, %i.lz                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %4, ptr noundef nonnull align 8 dereferenceable(1376) %i.cr, i64 1376, i1 false), !tbaa.struct !131
  call fastcc void @exp_quant_coarse(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs, ptr noundef nonnull readonly %i.ci, i32 noundef 1)
  %i.mb = load i32, ptr %i.ln, align 8, !tbaa !78
  %i.mc = load i32, ptr %i.lp, align 8, !tbaa !79 ; 4 uses
  %.not.i.i18.i.i = icmp ult i32 %i.mc, 65536     ; 2 uses
  %i.md = lshr i32 %i.mc, 16
  %spec.select.i.i19.i.i = select i1 %.not.i.i18.i.i, i32 %i.mc, i32 %i.md ; 3 uses
  %spec.select12.i.i20.i.i = select i1 %.not.i.i18.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i21.i.i = icmp samesign ult i32 %spec.select.i.i19.i.i, 256 ; 2 uses
  %i.me = lshr i32 %spec.select.i.i19.i.i, 8
  %i.mf = or disjoint i32 %spec.select12.i.i20.i.i, 8
  %.110.i.i22.i.i = select i1 %.not11.i.i21.i.i, i32 %spec.select.i.i19.i.i, i32 %i.me
  %.1.i.i23.i.i = select i1 %.not11.i.i21.i.i, i32 %spec.select12.i.i20.i.i, i32 %i.mf
  %i.mg = zext nneg i32 %.110.i.i22.i.i to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !47
  %i.mj = zext i8 %i.mi to i32
  %i.mk = add nuw nsw i32 %.1.i.i23.i.i, %i.mj    ; 2 uses
  %i.ml = add nsw i32 %i.mk, -15
  %i.mm = lshr i32 %i.mc, %i.ml                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %i.cr, ptr noundef nonnull align 8 dereferenceable(1376) %4, i64 1376, i1 false)
  call fastcc void @exp_quant_coarse(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs, ptr noundef nonnull readonly %i.ci, i32 noundef 0)
  %i.mn = load i32, ptr %i.ln, align 8, !tbaa !78
  %i.mo = load i32, ptr %i.lp, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i.i = icmp ult i32 %i.mo, 65536       ; 2 uses
  %i.mp = lshr i32 %i.mo, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.mo, i32 %i.mp ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.mq = lshr i32 %spec.select.i.i.i.i, 8
  %i.mr = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.mq
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.mr
  %i.ms = zext nneg i32 %.110.i.i.i.i to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !47
  %i.mv = zext i8 %i.mu to i32
  %i.mw = add nuw nsw i32 %.1.i.i.i.i, %i.mv      ; 2 uses
  %i.mx = add nsw i32 %i.mw, -15
  %i.my = lshr i32 %i.mo, %i.mx                   ; 2 uses
  %i.mz = mul i32 %i.my, %i.my                    ; 3 uses
  %i.na = lshr i32 %i.mz, 15
  %.neg163.i = ashr i32 %i.mz, 31
  %i.nb = lshr i32 %i.mz, 31
  %.neg164.i = mul i32 %i.mw, 1073741822
  %.neg165.i = add i32 %.neg164.i, 1073741822
  %.neg166.i = add i32 %.neg165.i, %.neg163.i
  %i.nc = lshr i32 %i.na, %i.nb                   ; 2 uses
  %i.nd = mul i32 %i.nc, %i.nc                    ; 3 uses
  %i.ne = lshr i32 %i.nd, 15
  %i.nf = lshr i32 %i.nd, 31
  %i.ng = lshr i32 %i.ne, %i.nf                   ; 2 uses
  %i.nh = mul i32 %i.ng, %i.ng
  %.neg169.i = ashr i32 %i.nh, 31
  %.neg167.i = shl i32 %.neg166.i, 2
  %i.ni = ashr i32 %i.nd, 30
  %i.nj = and i32 %i.ni, -2
  %5 = mul i32 %i.mm, %i.mm                       ; 3 uses
  %6 = lshr i32 %5, 15
  %i.nk = ashr i32 %5, 31
  %7 = lshr i32 %5, 31
  %i.nl = mul i32 %i.mk, 1073741822
  %.neg156.i = add i32 %i.nl, 1073741822
  %.neg157.i = add i32 %.neg156.i, %i.nk
  %i.nm = lshr i32 %6, %7                         ; 2 uses
  %i.nn = mul i32 %i.nm, %i.nm                    ; 3 uses
  %i.no = lshr i32 %i.nn, 15
  %i.np = lshr i32 %i.nn, 31
  %i.nq = lshr i32 %i.no, %i.np                   ; 2 uses
  %i.nr = mul i32 %i.nq, %i.nq
  %i.ns = ashr i32 %i.nr, 31
  %.neg158.i = shl i32 %.neg157.i, 2
  %i.nt = ashr i32 %i.nn, 30
  %.neg153.i = and i32 %i.nt, -2
  %i.nu = mul i32 %i.ma, %i.ma                    ; 2 uses
  %i.nv = lshr i32 %i.nu, 15
  %i.nw = lshr i32 %i.nu, 31                      ; 2 uses
  %i.nx = shl nuw nsw i32 %i.ly, 1
  %i.ny = add nuw nsw i32 %i.nx, 2
  %i.nz = or disjoint i32 %i.nw, %i.ny
  %i.oa = lshr i32 %i.nv, %i.nw                   ; 2 uses
  %i.ob = mul i32 %i.oa, %i.oa                    ; 2 uses
  %i.oc = lshr i32 %i.ob, 15
  %i.od = lshr i32 %i.ob, 31                      ; 2 uses
  %i.oe = lshr i32 %i.oc, %i.od                   ; 2 uses
  %i.of = mul i32 %i.oe, %i.oe
  %i.og = lshr i32 %i.of, 31
  %i.oh = shl nuw nsw i32 %i.nz, 2
  %i.oi = shl nuw nsw i32 %i.od, 1
  %i.oj = shl i32 %i.lo, 3
  %i.ok = sub i32 %i.oh, %i.oj
  %i.ol = or disjoint i32 %i.ok, %i.oi
  %.neg49.i.i = or disjoint i32 %i.og, %i.ol      ; 2 uses
  %i.om = shl i32 %i.mb, 3
  %.neg159.i = add i32 %.neg49.i.i, %i.om
  %.neg129.i = add i32 %.neg159.i, %.neg158.i
  %.neg38.i.i = add i32 %.neg129.i, %.neg153.i
  %i.on = add i32 %.neg38.i.i, %i.ns
  %i.oo = shl i32 %i.mn, 3
  %.neg167.i.a = add i32 %.neg49.i.i, %i.oo
  %.neg132.i = add i32 %.neg167.i.a, %.neg167.i
  %.neg39.i.i = add i32 %.neg132.i, %i.nj
  %i.op = add i32 %.neg39.i.i, %.neg169.i
  %i.oq = icmp ugt i32 %i.op, %i.on
  br i1 %i.oq, label %bb.aq, label %celt_quant_coarse.exit.i

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %i.cr, ptr noundef nonnull align 8 dereferenceable(1376) %4, i64 1376, i1 false)
  call fastcc void @exp_quant_coarse(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cs, ptr noundef nonnull readonly %i.ci, i32 noundef 1)
  br label %celt_quant_coarse.exit.i

celt_quant_coarse.exit.i:                         ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.or = getelementptr inbounds nuw i8, ptr %i.cs, i64 33924 ; 3 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !81 ; 3 uses
  %.not.i91.i = icmp eq i32 %i.os, 0
  %i.ot = select i1 %.not.i91.i, i32 4, i32 2     ; 2 uses
  %i.ou = load i32, ptr %i.kv, align 4, !tbaa !80
  %.not50.i.i = icmp eq i32 %i.ou, 0
  br i1 %.not50.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %celt_quant_coarse.exit.i
  %i.ov = load i32, ptr %i.ln, align 8, !tbaa !78
  %i.ow = load i32, ptr %i.lp, align 8, !tbaa !79 ; 3 uses
  %.not.i.i54.i.i = icmp ult i32 %i.ow, 65536     ; 2 uses
  %i.ox = lshr i32 %i.ow, 16
  %spec.select.i.i55.i.i = select i1 %.not.i.i54.i.i, i32 %i.ow, i32 %i.ox ; 3 uses
  %spec.select12.i.i56.i.i = select i1 %.not.i.i54.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i57.i.i = icmp samesign ult i32 %spec.select.i.i55.i.i, 256 ; 2 uses
  %i.oy = lshr i32 %spec.select.i.i55.i.i, 8
  %i.oz = or disjoint i32 %spec.select12.i.i56.i.i, 8
  %.110.i.i58.i.i = select i1 %.not11.i.i57.i.i, i32 %spec.select.i.i55.i.i, i32 %i.oy
  %.1.i.i59.i.i = select i1 %.not11.i.i57.i.i, i32 %spec.select12.i.i56.i.i, i32 %i.oz
  %i.pa = zext nneg i32 %.110.i.i58.i.i to i64
  %i.pb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !47
  %i.pd = zext i8 %i.pc to i32
  %i.pe = add nuw nsw i32 %.1.i.i59.i.i, %i.pd
  %i.pf = xor i32 %i.pe, -1
  %i.pg = or disjoint i32 %i.ot, 1
  %i.ph = add i32 %i.pg, %i.ov
  %i.pi = add i32 %i.ph, %i.pf
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cs, i64 34084
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !71
  %i.pl = icmp ule i32 %i.pi, %i.pk
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %celt_quant_coarse.exit.i
  %i.pm = phi i1 [ false, %celt_quant_coarse.exit.i ], [ %i.pl, %bb.ar ] ; 2 uses
  %i.pn = zext i1 %i.pm to i32
  %i.po = load i32, ptr %i.kf, align 8, !tbaa !74 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.cs, i64 33916 ; 9 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !83 ; 3 uses
  %i.pr = icmp slt i32 %i.po, %i.pq
  br i1 %i.pr, label %.lr.ph.i93.i, label %._crit_edge.i92.i

.lr.ph.i93.i:                                     ; preds = %bb.as
  %i.ps = getelementptr inbounds nuw i8, ptr %i.cs, i64 34084
  %i.pt = getelementptr inbounds nuw i8, ptr %i.cs, i64 34432
  %i.pu = sext i32 %i.po to i64
  br label %bb.at

._crit_edge.loopexit.i.i:                         ; preds = %bb.av
  %i.pv = zext nneg i32 %.1.i.i to i64
  br label %._crit_edge.i92.i

._crit_edge.i92.i:                                ; preds = %._crit_edge.loopexit.i.i, %bb.as
  %i.pw = phi i32 [ %i.pq, %bb.as ], [ %i.qw, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.px = phi i32 [ %i.os, %bb.as ], [ %i.qx, %._crit_edge.loopexit.i.i ]
  %.047.lcssa.i.i = phi i64 [ 0, %bb.as ], [ %i.pv, %._crit_edge.loopexit.i.i ] ; 2 uses
  br i1 %i.pm, label %bb.aw, label %bb.ay

bb.at:                                            ; preds = %bb.av, %.lr.ph.i93.i
  %i.py = phi i32 [ %i.pq, %.lr.ph.i93.i ], [ %i.qw, %bb.av ]
  %i.pz = phi i32 [ %i.os, %.lr.ph.i93.i ], [ %i.qx, %bb.av ]
  %indvars.iv.i94.i = phi i64 [ %i.pu, %.lr.ph.i93.i ], [ %indvars.iv.next.i102.i, %bb.av ] ; 2 uses
  %.04662.i.i = phi i32 [ %i.ot, %.lr.ph.i93.i ], [ %i.qy, %bb.av ] ; 2 uses
  %.04761.i.i = phi i32 [ 0, %.lr.ph.i93.i ], [ %.1.i.i, %bb.av ] ; 2 uses
  %.04860.i.i = phi i32 [ 0, %.lr.ph.i93.i ], [ %.149.i.i, %bb.av ] ; 3 uses
  %i.qa = load i32, ptr %i.ln, align 8, !tbaa !78
  %i.qb = load i32, ptr %i.lp, align 8, !tbaa !79 ; 3 uses
  %.not.i.i.i95.i = icmp ult i32 %i.qb, 65536     ; 2 uses
  %i.qc = lshr i32 %i.qb, 16
  %spec.select.i.i.i96.i = select i1 %.not.i.i.i95.i, i32 %i.qb, i32 %i.qc ; 3 uses
  %spec.select12.i.i.i97.i = select i1 %.not.i.i.i95.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i98.i = icmp samesign ult i32 %spec.select.i.i.i96.i, 256 ; 2 uses
  %i.qd = lshr i32 %spec.select.i.i.i96.i, 8
  %i.qe = or disjoint i32 %spec.select12.i.i.i97.i, 8
  %.110.i.i.i99.i = select i1 %.not11.i.i.i98.i, i32 %spec.select.i.i.i96.i, i32 %i.qd
  %.1.i.i.i100.i = select i1 %.not11.i.i.i98.i, i32 %spec.select12.i.i.i97.i, i32 %i.qe
  %i.qf = zext nneg i32 %.110.i.i.i99.i to i64
  %i.qg = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.qf
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !47
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add nuw nsw i32 %.1.i.i.i100.i, %i.qi
  %i.qk = xor i32 %i.qj, -1
  %i.ql = add nuw nsw i32 %.04662.i.i, %i.pn
  %i.qm = add i32 %i.ql, %i.qa
  %i.qn = add i32 %i.qm, %i.qk
  %i.qo = load i32, ptr %i.ps, align 4, !tbaa !71
  %.not52.i.i = icmp ugt i32 %i.qn, %i.qo
  br i1 %.not52.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %indvars.iv.i94.i
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !82
  %i.qr = xor i32 %i.qq, %.04860.i.i
  %i.qs = icmp eq i32 %i.qr, 1
  %i.qt = zext i1 %i.qs to i32                    ; 2 uses
  call void @ff_opus_rc_enc_log(ptr noundef nonnull %i.cr, i32 noundef %i.qt, i32 noundef %.04662.i.i) #9
  %i.qu = xor i32 %.04860.i.i, %i.qt              ; 2 uses
  %i.qv = or i32 %i.qu, %.04761.i.i
  %.pre.i101.i = load i32, ptr %i.or, align 4, !tbaa !81
  %.pre72.i.i = load i32, ptr %i.pp, align 4, !tbaa !83
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.qw = phi i32 [ %.pre72.i.i, %bb.au ], [ %i.py, %bb.at ] ; 3 uses
  %i.qx = phi i32 [ %.pre.i101.i, %bb.au ], [ %i.pz, %bb.at ] ; 3 uses
  %.149.i.i = phi i32 [ %i.qu, %bb.au ], [ %.04860.i.i, %bb.at ]
  %.1.i.i = phi i32 [ %i.qv, %bb.au ], [ %.04761.i.i, %bb.at ] ; 2 uses
  %.not53.i.i = icmp eq i32 %i.qx, 0
  %i.qy = select i1 %.not53.i.i, i32 5, i32 4
  %indvars.iv.next.i102.i = add nsw i64 %indvars.iv.i94.i, 1 ; 2 uses
  %i.qz = sext i32 %i.qw to i64
  %i.ra = icmp slt i64 %indvars.iv.next.i102.i, %i.qz
  br i1 %i.ra, label %bb.at, label %._crit_edge.loopexit.i.i, !llvm.loop !113

bb.aw:                                            ; preds = %._crit_edge.i92.i
  %i.rb = load i32, ptr %i.kv, align 4, !tbaa !80
  %i.rc = zext i32 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_tf_select, i64 %i.rc
  %i.re = sext i32 %i.px to i64
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.re ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %.047.lcssa.i.i
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !47
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %.047.lcssa.i.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !47
  %.not51.i.i = icmp eq i8 %i.rh, %i.rk
  br i1 %.not51.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rl = getelementptr inbounds nuw i8, ptr %i.cs, i64 33936 ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 16, !tbaa !132
  call void @ff_opus_rc_enc_log(ptr noundef nonnull %i.cr, i32 noundef %i.rm, i32 noundef 1) #9
  %i.rn = load i32, ptr %i.rl, align 16, !tbaa !132
  %i.ro = sext i32 %i.rn to i64
  %.pre73.i.i = load i32, ptr %i.pp, align 4, !tbaa !83
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.i92.i
  %i.rp = phi i32 [ %.pre73.i.i, %bb.ax ], [ %i.pw, %bb.aw ], [ %i.pw, %._crit_edge.i92.i ]
  %.044.i.i = phi i64 [ %i.ro, %bb.ax ], [ 0, %bb.aw ], [ 0, %._crit_edge.i92.i ]
  %i.rq = load i32, ptr %i.kf, align 8, !tbaa !74 ; 2 uses
  %i.rr = icmp slt i32 %i.rq, %i.rp
  br i1 %i.rr, label %.lr.ph66.i.i, label %celt_enc_tf.exit.i

.lr.ph66.i.i:                                     ; preds = %bb.ay
  %i.rs = getelementptr inbounds nuw i8, ptr %i.cs, i64 34432
  %i.rt = sext i32 %i.rq to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph66.i.i
  %indvars.iv69.i.i = phi i64 [ %i.rt, %.lr.ph66.i.i ], [ %indvars.iv.next70.i.i, %bb.az ] ; 2 uses
  %i.ru = load i32, ptr %i.kv, align 4, !tbaa !80
  %i.rv = zext i32 %i.ru to i64
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr @ff_celt_tf_select, i64 %i.rv
  %i.rx = load i32, ptr %i.or, align 4, !tbaa !81
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.ry
  %i.sa = getelementptr inbounds [2 x i8], ptr %i.rz, i64 %.044.i.i
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %indvars.iv69.i.i ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !82
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds i8, ptr %i.sa, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !47
  %i.sg = sext i8 %i.sf to i32
  store i32 %i.sg, ptr %i.sb, align 4, !tbaa !82
  %indvars.iv.next70.i.i = add nsw i64 %indvars.iv69.i.i, 1 ; 2 uses
  %i.sh = load i32, ptr %i.pp, align 4, !tbaa !83
  %i.si = sext i32 %i.sh to i64
  %i.sj = icmp slt i64 %indvars.iv.next70.i.i, %i.si
  br i1 %i.sj, label %bb.az, label %celt_enc_tf.exit.i, !llvm.loop !114

celt_enc_tf.exit.i:                               ; preds = %bb.az, %bb.ay
  call void @ff_celt_bitalloc(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.cr, i32 noundef 1) #9
  %i.sk = load i32, ptr %i.kf, align 8, !tbaa !74 ; 2 uses
  %i.sl = load i32, ptr %i.pp, align 4, !tbaa !83 ; 2 uses
  %i.sm = icmp slt i32 %i.sk, %i.sl
  br i1 %i.sm, label %.lr.ph30.i.i, label %celt_quant_fine.exit.i

.lr.ph30.i.i:                                     ; preds = %celt_enc_tf.exit.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.cs, i64 34180
  %i.so = sext i32 %i.sk to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit.i.i, %.lr.ph30.i.i
  %i.sp = phi i32 [ %i.sl, %.lr.ph30.i.i ], [ %i.tv, %.loopexit.i.i ] ; 2 uses
  %indvars.iv32.i.i = phi i64 [ %i.so, %.lr.ph30.i.i ], [ %indvars.iv.next33.i.i, %.loopexit.i.i ] ; 3 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %indvars.iv32.i.i ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !82 ; 2 uses
end_hunk_0
