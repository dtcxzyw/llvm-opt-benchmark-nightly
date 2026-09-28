Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a
  %.1243379.us.i = phi i32 [ %.7.us.i, %bb.mw ], [ %.0242392.i, %.preheader325.us.preheader.i ]
  %.1248378.us.i = phi i32 [ %.7254.us.i, %bb.mw ], [ %.0247391.i, %.preheader325.us.preheader.i ]
  %i.dds = shl nsw i32 %.0238380.us.i, 2          ; 3 uses
  br label %.preheader.us.i329

bb.kt:                                            ; preds = %.preheader.us.i329, %bb.ms
  %indvars.iv.i330 = phi i64 [ 0, %.preheader.us.i329 ], [ %indvars.iv.next.i331, %bb.ms ] ; 2 uses
  %.3245372.us.i = phi i32 [ %.2244375.us.i, %.preheader.us.i329 ], [ %.7.us.i, %bb.ms ] ; 5 uses
  %.3250371.us.i = phi i32 [ %.2249374.us.i, %.preheader.us.i329 ], [ %.7254.us.i, %bb.ms ] ; 5 uses
  %i.ddt = getelementptr inbounds nuw [2 x i8], ptr @hilbert_offset, i64 %indvars.iv.i330 ; 2 uses
  %i.ddu = load i8, ptr %i.ddt, align 2, !tbaa !49
  %i.ddv = zext i8 %i.ddu to i32
  %i.ddw = add nuw nsw i32 %i.dny, %i.ddv         ; 3 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddt, i64 1
  %i.ddy = load i8, ptr %i.ddx, align 1, !tbaa !49
  %i.ddz = zext i8 %i.ddy to i32
  %i.dea = add nsw i32 %i.dds, %i.ddz             ; 4 uses
  %i.deb = mul nsw i32 %i.dea, %i.dcv
  %i.dec = add nsw i32 %i.deb, %i.ddw             ; 3 uses
  %.not274.us.i = icmp slt i32 %i.ddw, %i.dcv
  %.not275.us.i = icmp slt i32 %i.dea, %i.dcw
  %or.cond288.us.i = select i1 %.not274.us.i, i1 %.not275.us.i, i1 false
  br i1 %or.cond288.us.i, label %bb.ku, label %bb.ms

bb.ku:                                            ; preds = %bb.kt
  %i.ded = add nsw i32 %i.dec, %i.dcx
  %i.dee = shl nsw i32 %i.dea, 3                  ; 3 uses
  %i.def = shl nuw nsw i32 %i.ddw, 3              ; 3 uses
  %i.deg = mul i32 %i.dee, %i.ddc
  %i.deh = add i32 %i.deg, %i.def                 ; 2 uses
  %.pre440.i = load ptr, ptr %i.az, align 8, !tbaa !53 ; 3 uses
  %i.dei = sext i32 %i.ded to i64                 ; 4 uses
  br i1 %i.dcs, label %bb.kv, label %._crit_edge.i332

bb.kv:                                            ; preds = %bb.ku
  %i.dej = getelementptr inbounds [4 x i8], ptr %.pre440.i, i64 %i.dei
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dej, i64 2
  %i.del = load i8, ptr %i.dek, align 2, !tbaa !68 ; 2 uses
  %.not276.us.i = icmp eq i8 %i.del, 1
  br i1 %.not276.us.i, label %._crit_edge.i332, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.dem = sext i32 %i.dec to i64
  %i.den = getelementptr inbounds [2 x i8], ptr %i.dct, i64 %i.dem
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 1
  %i.dep = load i8, ptr %i.deo, align 1, !tbaa !49
  %i.deq = sext i8 %i.dep to i32                  ; 2 uses
  %i.der = shl nsw i32 %i.dea, 4
  %i.des = load i32, ptr %i.cyd, align 4, !tbaa !73
  %i.det = ashr i32 %i.der, %i.des
  %i.deu = and i32 %i.deq, 1
  %.off.i.us.i = add i8 %i.del, -5
  %switch.i.us.i = icmp ult i8 %.off.i.us.i, 2
  %.0.v.i.us.i = select i1 %switch.i.us.i, i64 40, i64 56
  %.0.i.us.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.v.i.us.i
  %i.dev = ashr i32 %i.deq, 1
  %i.dew = add nsw i32 %i.det, %i.dev             ; 2 uses
  %i.dex = call i32 @llvm.abs.i32(i32 %i.dew, i1 true)
  %i.dey = or disjoint i32 %i.deu, 8
  %i.dez = add i32 %i.dey, %i.dew
  %..i.us.i = call i32 @llvm.smax.i32(i32 %i.dex, i32 %i.dez)
  call void @ff_progress_frame_await(ptr noundef nonnull %.0.i.us.i, i32 noundef %..i.us.i) #11
  %.pre.i336 = load ptr, ptr %i.az, align 8, !tbaa !53
  br label %._crit_edge.i332

._crit_edge.i332:                                 ; preds = %bb.kw, %bb.kv, %bb.ku
  %i.dfa = phi ptr [ %.pre440.i, %bb.kv ], [ %.pre.i336, %bb.kw ], [ %.pre440.i, %bb.ku ]
  %i.dfb = getelementptr inbounds [4 x i8], ptr %i.dfa, i64 %i.dei
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dfb, i64 2
  %i.dfd = load i8, ptr %i.dfc, align 2, !tbaa !68 ; 2 uses
  switch i8 %i.dfd, label %bb.ky [
    i8 8, label %bb.kx
    i8 5, label %bb.kz
    i8 6, label %bb.kz
  ]

bb.kx:                                            ; preds = %._crit_edge.i332
  %i.dfe = load ptr, ptr %i.cxc, align 16, !tbaa !166
  %i.dff = sext i32 %i.deh to i64                 ; 2 uses
  %i.dfg = getelementptr inbounds i8, ptr %i.dbj, i64 %i.dff
  %i.dfh = getelementptr inbounds i8, ptr %i.dbm, i64 %i.dff
  call void %i.dfe(ptr noundef %i.dfg, ptr noundef %i.dfh, i64 noundef %spec.select.i325, i32 noundef 8) #11, !inline_history !132
  br label %bb.ms

bb.ky:                                            ; preds = %._crit_edge.i332
  br label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %._crit_edge.i332, %._crit_edge.i332
  %i.dfi = phi ptr [ %i.dbl, %bb.ky ], [ %i.dbo, %._crit_edge.i332 ], [ %i.dbo, %._crit_edge.i332 ]
  %i.dfj = getelementptr inbounds i8, ptr %i.dfi, i64 %i.dbi
  %i.dfk = sext i32 %i.deh to i64                 ; 5 uses
  %i.dfl = getelementptr inbounds i8, ptr %i.dfj, i64 %i.dfk ; 4 uses
  switch i8 %i.dfd, label %bb.la [
    i8 5, label %bb.ls
    i8 1, label %bb.ls
    i8 0, label %bb.ls
  ]

bb.la:                                            ; preds = %bb.kz
  %i.dfm = sext i32 %i.dec to i64
  %i.dfn = getelementptr inbounds [2 x i8], ptr %i.dct, i64 %i.dfm ; 2 uses
  %i.dfo = load i8, ptr %i.dfn, align 1, !tbaa !49 ; 3 uses
  %i.dfp = sext i8 %i.dfo to i32                  ; 5 uses
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfn, i64 1
  %i.dfr = load i8, ptr %i.dfq, align 1, !tbaa !49 ; 3 uses
  %i.dfs = sext i8 %i.dfr to i32                  ; 5 uses
  %.pre441.i = load i32, ptr %i.ri, align 4, !tbaa !54
  %i.dft = icmp sgt i32 %.pre441.i, 1             ; 2 uses
  %or.cond.i335 = select i1 %.not317.i, i1 %i.dft, i1 false
  br i1 %or.cond.i335, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.dfu = ashr i32 %i.dfp, 1
  %i.dfv = and i32 %i.dfp, 1
  %i.dfw = or i32 %i.dfu, %i.dfv
  %i.dfx = ashr i32 %i.dfs, 1
  %i.dfy = and i32 %i.dfs, 1
  %i.dfz = or i32 %i.dfx, %i.dfy
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %.4251.us.i = phi i32 [ %i.dfw, %bb.lb ], [ %i.dfp, %bb.la ] ; 5 uses
  %.4246.us.i = phi i32 [ %i.dfz, %bb.lb ], [ %i.dfs, %bb.la ] ; 5 uses
  %i.dga = ashr i32 %.4251.us.i, 1                ; 2 uses
  %i.dgb = add nsw i32 %i.dga, %i.def             ; 5 uses
  %i.dgc = ashr i32 %.4246.us.i, 1                ; 2 uses
  %i.dgd = add nsw i32 %i.dgc, %i.dee             ; 5 uses
  %i.dge = and i32 %.4251.us.i, 1
  %i.dgf = sext i32 %i.dga to i64
  %i.dgg = getelementptr inbounds i8, ptr %i.dfl, i64 %i.dgf
  %i.dgh = shl nsw i32 %.4246.us.i, 1
  %i.dgi = and i32 %i.dgh, 2
  %i.dgj = or disjoint i32 %i.dgi, %i.dge         ; 3 uses
  %i.dgk = sext i32 %i.dgc to i64
  %i.dgl = mul nsw i64 %spec.select.i325, %i.dgk
  %i.dgm = getelementptr inbounds i8, ptr %i.dgg, i64 %i.dgl ; 4 uses
  br i1 %i.dft, label %bb.ld, label %.thread307.us.i

bb.ld:                                            ; preds = %bb.lc
  %i.dgn = load ptr, ptr %i.lx, align 16, !tbaa !159
  %.0232.us.i = getelementptr inbounds nuw i8, ptr %i.dgn, i64 %.0232.idx.i ; 10 uses
  %i.dgo = load i32, ptr %i.cws, align 8, !tbaa !81 ; 2 uses
  br i1 %.not317.i, label %bb.le, label %.thread.i.us.i

bb.le:                                            ; preds = %bb.ld
  %i.dgp = load i32, ptr %i.cwt, align 16, !tbaa !74
  %i.dgq = icmp ne i32 %i.dgp, 0
  %i.dgr = zext i1 %i.dgq to i32
  %i.dgs = ashr i32 %i.dgo, %i.dgr
  %i.dgt = load i32, ptr %i.cyd, align 4, !tbaa !73
  %i.dgu = icmp ne i32 %i.dgt, 0
  %i.dgv = zext i1 %i.dgu to i32
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.le, %bb.ld
  %.rhs.trunc.i.us.i = phi i8 [ 4, %bb.le ], [ 2, %bb.ld ] ; 2 uses
  %i.dgw = phi i32 [ %i.dgs, %bb.le ], [ %i.dgo, %bb.ld ] ; 3 uses
  %i.dgx = phi i32 [ %i.dgv, %bb.le ], [ 0, %bb.ld ]
  %i.dgy = load i32, ptr %i.cyb, align 4, !tbaa !76
  %i.dgz = ashr i32 %i.dgy, %i.dgx                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dha = sdiv i8 %i.dfo, %.rhs.trunc.i.us.i
  %.sext.i.us.i = sext i8 %i.dha to i32           ; 2 uses
  %i.dhb = sdiv i8 %i.dfr, %.rhs.trunc.i.us.i
  %.sext122.i.us.i = sext i8 %i.dhb to i32        ; 2 uses
  %i.dhc = and i32 %i.dde, %i.dfp                 ; 2 uses
  %i.dhd = and i32 %i.dde, %i.dfs                 ; 2 uses
  %i.dhe = or i32 %i.dfs, %i.dfp
  %i.dhf = and i32 %i.dhe, %i.dde
  %or.cond.not.i.us.i = icmp eq i32 %i.dhf, 0
  br i1 %or.cond.not.i.us.i, label %bb.ll, label %bb.lf

bb.lf:                                            ; preds = %.thread.i.us.i
  %.not113.i.us.i = icmp eq i32 %i.dhd, 0
  %.not112.i.us.i = icmp eq i32 %i.dhc, 0
  %.inv.i.us.i = icmp sgt i8 %i.dfo, 0
  %i.dhg = or i1 %.inv.i.us.i, %.not112.i.us.i
  %.098.v.i.us.i = select i1 %i.dhg, i32 -1, i32 -2
  %i.dhh = add nsw i32 %.098.v.i.us.i, %i.def
  %.098.i.us.i = add i32 %i.dhh, %.sext.i.us.i    ; 2 uses
  %.inv116.i.us.i = icmp sgt i8 %i.dfr, 0
  %i.dhi = or i1 %.inv116.i.us.i, %.not113.i.us.i
  %.097.v.i.us.i = select i1 %i.dhi, i32 -1, i32 -2
  %i.dhj = add i32 %.097.v.i.us.i, %i.dee
  %.097.i.us.i = add i32 %i.dhj, %.sext122.i.us.i ; 2 uses
  %i.dhk = add nsw i32 %.098.i.us.i, %i.ddf       ; 2 uses
  %i.dhl = icmp slt i32 %i.dhk, 0
  br i1 %i.dhl, label %.thread311.us.i, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.dhm = add nsw i32 %.097.i.us.i, %i.ddf       ; 2 uses
  %i.dhn = icmp slt i32 %i.dhk, %i.dgw
  %i.dho = icmp sgt i32 %i.dhm, -1
  %or.cond3.not125.i.us.i = select i1 %i.dhn, i1 %i.dho, i1 false
  %.not117.i.us.i = icmp slt i32 %i.dhm, %i.dgz
  %or.cond.i.us.i = select i1 %or.cond3.not125.i.us.i, i1 %.not117.i.us.i, i1 false
  br i1 %or.cond.i.us.i, label %bb.lh, label %.thread311.us.i

bb.lh:                                            ; preds = %bb.lg
  %i.dhp = sub i32 6, %.098.i.us.i
  %i.dhq = and i32 %i.dhp, 7                      ; 2 uses
  %i.dhr = sub i32 6, %.097.i.us.i
  %i.dhs = and i32 %i.dhr, 7                      ; 2 uses
  %i.dht = load ptr, ptr %i.cxe, align 16, !tbaa !167
  %i.dhu = getelementptr inbounds i8, ptr %i.dgm, i64 %i.ddg
  %i.dhv = getelementptr inbounds i8, ptr %i.dhu, i64 -1
  %i.dhw = add nsw i32 %i.dgb, -1
  %i.dhx = add nsw i32 %i.dgd, -1
  call void %i.dht(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dhv, i64 noundef 12, i64 noundef range(i64 -2147483648, 2147483649) %spec.select.i325, i32 noundef 12, i32 noundef 12, i32 noundef %i.dhw, i32 noundef %i.dhx, i32 noundef %i.dgw, i32 noundef %i.dgz) #11, !inline_history !133
  %5 = add nuw nsw i32 %i.dhc, 6
  %.not118.i.us.i = icmp samesign ugt i32 %i.dhq, %5
  br i1 %.not118.i.us.i, label %bb.lj, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.dhy = zext nneg i32 %i.dhq to i64
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dhy
  %i.dhz = getelementptr inbounds nuw i8, ptr %6, i64 2
  call void @ff_vp3dsp_h_loop_filter_12(ptr noundef nonnull %i.dhz, i64 noundef 12, ptr noundef nonnull %i.cxd) #11
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %7 = add nuw nsw i32 %i.dhd, 6
  %.not119.i.us.i = icmp samesign ugt i32 %i.dhs, %7
  br i1 %.not119.i.us.i, label %bb.lq, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.dia = mul nuw nsw i32 %i.dhs, 12
  %i.dib = zext nneg i32 %i.dia to i64
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dib
  %i.dic = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @ff_vp3dsp_v_loop_filter_12(ptr noundef nonnull %i.dic, i64 noundef 12, ptr noundef nonnull %i.cxd) #11
  br label %bb.lq

bb.ll:                                            ; preds = %.thread.i.us.i
  %i.did = sub nsw i32 0, %.sext.i.us.i           ; 2 uses
  %i.die = and i32 %i.did, 7                      ; 2 uses
  %i.dif = sub nsw i32 0, %.sext122.i.us.i        ; 2 uses
  %i.dig = and i32 %i.dif, 7                      ; 2 uses
  %.not115.i.us.i = icmp eq i32 %i.dig, 0
  %i.dih = or i32 %i.dif, %i.did
  %i.dii = and i32 %i.dih, 7
  %or.cond5.not.i.us.i = icmp eq i32 %i.dii, 0
  br i1 %or.cond5.not.i.us.i, label %.thread311.us.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %.not114.i.us.i = icmp eq i32 %i.die, 0
  %i.dij = load ptr, ptr %i.cxe, align 16, !tbaa !167
  %i.dik = getelementptr inbounds i8, ptr %i.dgm, i64 %i.ddg
  %i.dil = getelementptr inbounds i8, ptr %i.dik, i64 -1
  %i.dim = add nsw i32 %i.dgb, -1
  %i.din = add nsw i32 %i.dgd, -1
  call void %i.dij(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dil, i64 noundef 12, i64 noundef range(i64 -2147483648, 2147483649) %spec.select.i325, i32 noundef 12, i32 noundef 12, i32 noundef %i.dim, i32 noundef %i.din, i32 noundef %i.dgw, i32 noundef %i.dgz) #11, !inline_history !133
  br i1 %.not114.i.us.i, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.dio = load ptr, ptr %i.cxf, align 8, !tbaa !82
  %i.dip = zext nneg i32 %i.die to i64
  %i.diq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dip
  %i.dir = getelementptr inbounds nuw i8, ptr %i.diq, i64 13
  call void %i.dio(ptr noundef nonnull %i.dir, i64 noundef 12, ptr noundef nonnull %i.cxd) #11, !inline_history !133
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  br i1 %.not115.i.us.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.dis = load ptr, ptr %i.cxg, align 16, !tbaa !83
  %i.dit = mul nuw nsw i32 %i.dig, 12
  %i.diu = zext nneg i32 %i.dit to i64
  %i.div = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.diu
  %i.diw = getelementptr inbounds nuw i8, ptr %i.div, i64 13
  call void %i.dis(ptr noundef nonnull %i.diw, i64 noundef 12, ptr noundef nonnull %i.cxd) #11, !inline_history !133
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo, %bb.lk, %bb.lj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.0232.us.i, ptr noundef nonnull align 1 dereferenceable(9) %i.cxh, i64 9, i1 false)
  %i.dix = getelementptr inbounds i8, ptr %.0232.us.i, i64 %spec.select.i325
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dix, ptr noundef nonnull align 1 dereferenceable(9) %i.cxi, i64 9, i1 false)
  %i.diy = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.diy, ptr noundef nonnull align 1 dereferenceable(9) %i.cxj, i64 9, i1 false)
  %i.diz = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.diz, ptr noundef nonnull align 1 dereferenceable(9) %i.cxk, i64 9, i1 false)
  %i.dja = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dja, ptr noundef nonnull align 1 dereferenceable(9) %i.cxl, i64 9, i1 false)
  %i.djb = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djb, ptr noundef nonnull align 1 dereferenceable(9) %i.cxm, i64 9, i1 false)
  %i.djc = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djc, ptr noundef nonnull align 1 dereferenceable(9) %i.cxn, i64 9, i1 false)
  %i.djd = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djd, ptr noundef nonnull align 1 dereferenceable(9) %i.cxo, i64 9, i1 false)
  %i.dje = getelementptr inbounds i8, ptr %.0232.us.i, i64 %i.ddn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dje, ptr noundef nonnull align 1 dereferenceable(9) %i.cxp, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ls

.thread311.us.i:                                  ; preds = %bb.ll, %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread307.us.i

.thread307.us.i:                                  ; preds = %.thread311.us.i, %bb.lc
  %i.djf = icmp sgt i32 %i.dgb, -1
  %i.djg = icmp sgt i32 %i.dgd, -1
  %or.cond.not324.us.i = select i1 %i.djf, i1 %i.djg, i1 false
  %i.djh = add nuw nsw i32 %i.dgb, 9
  %.not282.us.i = icmp slt i32 %i.djh, %i.dcq
  %or.cond290.us.i = select i1 %or.cond.not324.us.i, i1 %.not282.us.i, i1 false
  %i.dji = add nuw nsw i32 %i.dgd, 9
  %.not283.us.i = icmp slt i32 %i.dji, %i.dcp
  %or.cond291.us.i = select i1 %or.cond290.us.i, i1 %.not283.us.i, i1 false
  br i1 %or.cond291.us.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %.thread307.us.i
  %i.djj = load ptr, ptr %i.lx, align 16, !tbaa !159
  %.0.us.i = getelementptr inbounds nuw i8, ptr %i.djj, i64 %.0232.idx.i ; 2 uses
  %i.djk = load ptr, ptr %i.cxe, align 16, !tbaa !167
  call void %i.djk(ptr noundef %.0.us.i, ptr noundef %i.dgm, i64 noundef %spec.select.i325, i64 noundef %spec.select.i325, i32 noundef 9, i32 noundef 9, i32 noundef %i.dgb, i32 noundef %i.dgd, i32 noundef %i.dcq, i32 noundef %i.dcp) #11, !inline_history !132
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %.thread307.us.i, %bb.lq, %bb.kz, %bb.kz, %bb.kz
  %.5252.us.i = phi i32 [ %.3250371.us.i, %bb.kz ], [ %.4251.us.i, %.thread307.us.i ], [ %.4251.us.i, %bb.lr ], [ %.4251.us.i, %bb.lq ], [ %.3250371.us.i, %bb.kz ], [ %.3250371.us.i, %bb.kz ] ; 4 uses
  %.5.us.i333 = phi i32 [ %.3245372.us.i, %bb.kz ], [ %.4246.us.i, %.thread307.us.i ], [ %.4246.us.i, %bb.lr ], [ %.4246.us.i, %bb.lq ], [ %.3245372.us.i, %bb.kz ], [ %.3245372.us.i, %bb.kz ] ; 4 uses
  %.0241.us.i = phi i32 [ 0, %bb.kz ], [ %i.dgj, %.thread307.us.i ], [ %i.dgj, %bb.lr ], [ %i.dgj, %bb.lq ], [ 0, %bb.kz ], [ 0, %bb.kz ] ; 2 uses
  %.4.us.i334 = phi ptr [ %i.dfl, %bb.kz ], [ %i.dgm, %.thread307.us.i ], [ %.0.us.i, %bb.lr ], [ %.0232.us.i, %bb.lq ], [ %i.dfl, %bb.kz ], [ %i.dfl, %bb.kz ] ; 3 uses
  %i.djl = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.djm = getelementptr inbounds [4 x i8], ptr %i.djl, i64 %i.dei
  %i.djn = getelementptr inbounds nuw i8, ptr %i.djm, i64 2
  %i.djo = load i8, ptr %i.djn, align 2, !tbaa !68
  %.not285.us.i = icmp eq i8 %i.djo, 1
  br i1 %.not285.us.i, label %bb.lw, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %.not286.us.i = icmp eq i32 %.0241.us.i, 3
  %i.djp = getelementptr inbounds i8, ptr %i.dbj, i64 %i.dfk ; 2 uses
  br i1 %.not286.us.i, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.djq = zext nneg i32 %.0241.us.i to i64
  %i.djr = getelementptr inbounds nuw [8 x i8], ptr %i.cxq, i64 %i.djq
  %i.djs = load ptr, ptr %i.djr, align 8, !tbaa !166
  call void %i.djs(ptr noundef %i.djp, ptr noundef %.4.us.i334, i64 noundef %spec.select.i325, i32 noundef 8) #11, !inline_history !132
  br label %bb.lw

bb.lv:                                            ; preds = %bb.lt
  %i.djt = xor i32 %.5.us.i333, %.5252.us.i
  %i.dju = ashr i32 %i.djt, 31
  %i.djv = load ptr, ptr %i.cxr, align 16, !tbaa !168
  %i.djw = sext i32 %i.dju to i64                 ; 2 uses
  %i.djx = sub nsw i64 0, %i.djw
  %i.djy = getelementptr inbounds nuw i8, ptr %.4.us.i334, i64 %i.djx
  %i.djz = getelementptr inbounds i8, ptr %.4.us.i334, i64 %spec.select.i325
  %i.dka = getelementptr inbounds nuw i8, ptr %i.djz, i64 1
  %i.dkb = getelementptr inbounds i8, ptr %i.dka, i64 %i.djw
  call void %i.djv(ptr noundef %i.djp, ptr noundef %i.djy, ptr noundef nonnull %i.dkb, i64 noundef %spec.select.i325, i32 noundef 8) #11, !inline_history !132
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu, %bb.ls
  %i.dkc = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.dkd = getelementptr inbounds [4 x i8], ptr %i.dkc, i64 %i.dei ; 4 uses
  %i.dke = getelementptr inbounds nuw i8, ptr %i.dkd, i64 2
  %i.dkf = load i8, ptr %i.dke, align 2, !tbaa !68
  %i.dkg = icmp eq i8 %i.dkf, 1
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkd, i64 3
  %i.dki = load i8, ptr %i.dkh, align 1, !tbaa !84
  %i.dkj = zext i8 %i.dki to i64                  ; 2 uses
  br i1 %i.dkg, label %bb.mi, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.dkk = getelementptr inbounds nuw [768 x i8], ptr %i.m, i64 %i.dkj
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dkk, i64 30016
  %i.dkm = getelementptr inbounds nuw [128 x i8], ptr %i.dkl, i64 %indvars.iv436.i ; 2 uses
  br label %bb.ly

bb.ly:                                            ; preds = %bb.mc, %bb.lx
  %.053.i294.us.i = phi i32 [ 0, %bb.lx ], [ %.1.i298.us.i, %bb.mc ] ; 6 uses
  %i.dkn = zext nneg i32 %.053.i294.us.i to i64   ; 2 uses
  %i.dko = getelementptr inbounds nuw [8 x i8], ptr %i.ddo, i64 %i.dkn ; 4 uses
  %i.dkp = load ptr, ptr %i.dko, align 8, !tbaa !85 ; 5 uses
  %i.dkq = load i16, ptr %i.dkp, align 2, !tbaa !56 ; 5 uses
  %i.dkr = zext i16 %i.dkq to i32                 ; 2 uses
  %i.dks = and i32 %i.dkr, 3
  switch i32 %i.dks, label %default.unreachable [
    i32 0, label %bb.md
    i32 1, label %bb.ma
    i32 2, label %bb.lz
    i32 3, label %vp3_dequant.exit302.us.i
  ]

bb.lz:                                            ; preds = %bb.ly
  %i.dkt = ashr i16 %i.dkq, 2
  %i.dku = getelementptr inbounds nuw i8, ptr %i.cxs, i64 %i.dkn
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !49
  %i.dkw = zext i8 %i.dkv to i64                  ; 2 uses
  %i.dkx = getelementptr inbounds nuw [2 x i8], ptr %i.dkm, i64 %i.dkw
  %i.dky = load i16, ptr %i.dkx, align 2, !tbaa !56
  %i.dkz = mul i16 %i.dky, %i.dkt
  %i.dla = getelementptr inbounds nuw [2 x i8], ptr %i.cwq, i64 %i.dkw
  store i16 %i.dkz, ptr %i.dla, align 2, !tbaa !56
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dkp, i64 2
  store ptr %i.dlb, ptr %i.dko, align 8, !tbaa !85
  br label %bb.mc

bb.ma:                                            ; preds = %bb.ly
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dkp, i64 2
  store ptr %i.dlc, ptr %i.dko, align 8, !tbaa !85
  %i.dld = lshr i32 %i.dkr, 2
  %i.dle = and i32 %i.dld, 127
  %i.dlf = add nuw nsw i32 %i.dle, %.053.i294.us.i ; 3 uses
  %i.dlg = icmp sgt i32 %i.dlf, 63
  br i1 %i.dlg, label %vp3_dequant.exit302.thread.us.i, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.dlh = ashr i16 %i.dkq, 9
  %i.dli = zext nneg i32 %i.dlf to i64
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.cxs, i64 %i.dli
  %i.dlk = load i8, ptr %i.dlj, align 1, !tbaa !49
  %i.dll = zext i8 %i.dlk to i64                  ; 2 uses
  %i.dlm = getelementptr inbounds nuw [2 x i8], ptr %i.dkm, i64 %i.dll
  %i.dln = load i16, ptr %i.dlm, align 2, !tbaa !56
  %i.dlo = mul i16 %i.dln, %i.dlh
  %i.dlp = getelementptr inbounds nuw [2 x i8], ptr %i.cwq, i64 %i.dll
  store i16 %i.dlo, ptr %i.dlp, align 2, !tbaa !56
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.lz
  %.1.in.i297.us.i = phi i32 [ %i.dlf, %bb.mb ], [ %.053.i294.us.i, %bb.lz ] ; 3 uses
  %.1.i298.us.i = add nuw nsw i32 %.1.in.i297.us.i, 1
  %i.dlq = icmp slt i32 %.1.in.i297.us.i, 63
  br i1 %i.dlq, label %bb.ly, label %.thread64.i299.us.i, !llvm.loop !134

vp3_dequant.exit302.thread.us.i:                  ; preds = %bb.ma
end_hunk_0
