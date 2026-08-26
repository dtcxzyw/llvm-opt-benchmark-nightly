Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@vp3_decode_frame:bb.a
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.a, i64 61
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.a, i64 85
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  %i.cya = getelementptr inbounds nuw i8, ptr %i.a, i64 109
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.m, i64 156 ; 4 uses
  %i.cye = getelementptr inbounds nuw i8, ptr %i.m, i64 27240
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.m, i64 30016
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.m, i64 648
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.m, i64 29632
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.m, i64 632
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %bb.kj

bb.kf:                                            ; preds = %bb.kd, %bb.ke
  %i.cym = getelementptr inbounds nuw i8, ptr %i.m, i64 28 ; 10 uses
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.m, i64 816 ; 4 uses
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.m, i64 36 ; 10 uses
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.m, i64 956 ; 3 uses
  %i.cyq = load i32, ptr %i.cym, align 4, !tbaa !129 ; 4 uses
  %i.cyr = load i32, ptr %i.cyn, align 16, !tbaa !130
  %.not255 = icmp eq i32 %i.cyr, 0
  br i1 %.not255, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  store i32 0, ptr %i.cyp, align 4, !tbaa !29
  %i.cys = getelementptr inbounds nuw i8, ptr %i.m, i64 960
  store i32 0, ptr %i.cys, align 16, !tbaa !29
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kf
  %i.cyt = add nsw i32 %i.cyq, -1
  %i.cyu = load ptr, ptr %i.lq, align 8, !tbaa !78
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyu, i64 64
  %i.cyw = load i32, ptr %i.cyv, align 4, !tbaa !29
  %i.cyx = mul nsw i32 %i.cyw, %i.cyt
  store i32 %i.cyx, ptr %i.cyp, align 4, !tbaa !29
  %i.cyy = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.cyz = icmp ne i32 %i.cyy, 0
  %i.cza = zext i1 %i.cyz to i32
  %i.czb = ashr i32 %i.cyq, %i.cza
  %i.czc = add nsw i32 %i.czb, -1
  %i.czd = load ptr, ptr %i.lq, align 8, !tbaa !78
  %i.cze = getelementptr inbounds nuw i8, ptr %i.czd, i64 68
  %i.czf = load i32, ptr %i.cze, align 4, !tbaa !29
  %i.czg = mul nsw i32 %i.czf, %i.czc
  %i.czh = getelementptr inbounds nuw i8, ptr %i.m, i64 960
  store i32 %i.czg, ptr %i.czh, align 16, !tbaa !29
  %i.czi = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.czj = icmp ne i32 %i.czi, 0
  %i.czk = zext i1 %i.czj to i32
  %i.czl = ashr i32 %i.cyq, %i.czk
  %i.czm = add nsw i32 %i.czl, -1
  %i.czn = load ptr, ptr %i.lq, align 8, !tbaa !78
  %i.czo = getelementptr inbounds nuw i8, ptr %i.czn, i64 72
  %i.czp = load i32, ptr %i.czo, align 4, !tbaa !29
  %i.czq = mul nsw i32 %i.czp, %i.czm
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.sink669 = phi i32 [ %i.czq, %bb.kh ], [ 0, %bb.kg ]
  %i.czr = getelementptr inbounds nuw i8, ptr %i.m, i64 964
  store i32 %.sink669, ptr %i.czr, align 4, !tbaa !29
  %i.czs = getelementptr inbounds nuw i8, ptr %i.m, i64 820 ; 3 uses
  store i32 0, ptr %i.czs, align 4, !tbaa !131
  %i.czt = getelementptr inbounds nuw i8, ptr %i.m, i64 864 ; 2 uses
  %i.czu = load i32, ptr %i.czt, align 16, !tbaa !132
  %i.czv = icmp sgt i32 %i.czu, 0
  br i1 %i.czv, label %.lr.ph431, label %._crit_edge432

._crit_edge432.loopexit:                          ; preds = %render_slice.exit
  %.pre505.pre = load i32, ptr %i.cym, align 4, !tbaa !129
  br label %._crit_edge432

._crit_edge432:                                   ; preds = %._crit_edge432.loopexit, %bb.ki
  %.pre505 = phi i32 [ %.pre505.pre, %._crit_edge432.loopexit ], [ %i.cyq, %bb.ki ] ; 2 uses
  %i.czw = load i32, ptr %i.rj, align 4, !tbaa !67
  %i.czx = icmp slt i32 %i.czw, 2
  br i1 %i.czx, label %.loopexit.loopexit, label %.loopexit

bb.kj:                                            ; preds = %.lr.ph431, %render_slice.exit
  %.0200429 = phi i32 [ 0, %.lr.ph431 ], [ %i.dae, %render_slice.exit ] ; 3 uses
  %i.czy = load ptr, ptr %i.ln, align 8, !tbaa !133 ; 2 uses
  %.not.i326 = icmp eq ptr %i.czy, null
  br i1 %.not.i326, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.czz = load ptr, ptr %i.lq, align 8, !tbaa !78
  br label %bb.kl

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  %i.daa = phi ptr [ %i.czz, %bb.kk ], [ %i.czy, %bb.kj ]
  %i.dab = load ptr, ptr %i.cxc, align 8, !tbaa !88 ; 2 uses
  %.not268.i = icmp eq ptr %i.dab, null
  br i1 %.not268.i, label %bb.km, label %.preheader326.i

bb.km:                                            ; preds = %bb.kl
  %i.dac = load ptr, ptr %i.lq, align 8, !tbaa !78
  br label %.preheader326.i

.preheader326.i:                                  ; preds = %bb.kl, %bb.km
  %i.dad = phi ptr [ %i.dac, %bb.km ], [ %i.dab, %bb.kl ]
  %i.dae = add nuw nsw i32 %.0200429, 1           ; 4 uses
  br label %bb.ks

bb.kn:                                            ; preds = %._crit_edge381.i
  %i.daf = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.dag = shl i32 32, %i.daf
  %i.dah = mul nsw i32 %i.dag, %i.dae
  %i.dai = load i32, ptr %i.cym, align 4, !tbaa !129 ; 3 uses
  %..i = call i32 @llvm.smin.i32(i32 %i.dah, i32 %i.dai)
  %i.daj = add nsw i32 %..i, -16                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.dak = load ptr, ptr %i.m, align 16, !tbaa !57 ; 2 uses
  %i.dal = getelementptr inbounds nuw i8, ptr %i.dak, i64 664
  %i.dam = load i32, ptr %i.dal, align 8, !tbaa !58
  %i.dan = and i32 %i.dam, 1
  %.not.i.i = icmp eq i32 %i.dan, 0
  br i1 %.not.i.i, label %bb.ko, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.kn
  %i.dao = load i32, ptr %i.cyn, align 16, !tbaa !130
  %.not36.i.i = icmp eq i32 %i.dao, 0
  %i.dap = sub nsw i32 %i.dai, %i.daj
  %i.daq = select i1 %.not36.i.i, i32 %i.daj, i32 %i.dap ; 2 uses
  %i.dar = icmp eq i32 %i.daq, %i.dai
  %i.das = add nsw i32 %i.daq, -1
  %i.dat = select i1 %i.dar, i32 2147483647, i32 %i.das
  call void @ff_progress_frame_report(ptr noundef nonnull %i.lq, i32 noundef %i.dat) #11
  %.pre41.i.i = load ptr, ptr %i.m, align 16, !tbaa !57
  br label %bb.ko

bb.ko:                                            ; preds = %._crit_edge.i.i, %bb.kn
  %i.dau = phi ptr [ %.pre41.i.i, %._crit_edge.i.i ], [ %i.dak, %bb.kn ] ; 2 uses
  %i.dav = getelementptr inbounds nuw i8, ptr %i.dau, i64 184
  %i.daw = load ptr, ptr %i.dav, align 8, !tbaa !134 ; 2 uses
  %.not37.i.i = icmp eq ptr %i.daw, null
  br i1 %.not37.i.i, label %render_slice.exit, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.dax = load i32, ptr %i.czs, align 4, !tbaa !131 ; 2 uses
  %i.day = sub nsw i32 %i.daj, %i.dax
  store i32 %i.daj, ptr %i.czs, align 4, !tbaa !131
  %i.daz = load i32, ptr %i.cyn, align 16, !tbaa !130
  %.not38.i.i = icmp eq i32 %i.daz, 0
  br i1 %.not38.i.i, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.dba = load i32, ptr %i.cym, align 4, !tbaa !129
  %i.dbb = sub i32 %i.dba, %i.daj
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.035.i.i = phi i32 [ %i.dax, %bb.kp ], [ %i.dbb, %bb.kq ] ; 3 uses
  %i.dbc = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.dbd = ashr i32 %.035.i.i, %i.dbc             ; 2 uses
  %i.dbe = load ptr, ptr %i.lq, align 8, !tbaa !78 ; 4 uses
  %i.dbf = getelementptr inbounds nuw i8, ptr %i.dbe, i64 64
  %i.dbg = load i32, ptr %i.dbf, align 8, !tbaa !29
  %i.dbh = mul nsw i32 %i.dbg, %.035.i.i
  store i32 %i.dbh, ptr %i.b, align 16, !tbaa !29
  %i.dbi = getelementptr inbounds nuw i8, ptr %i.dbe, i64 68
  %i.dbj = load i32, ptr %i.dbi, align 4, !tbaa !29
  %i.dbk = mul nsw i32 %i.dbj, %i.dbd
  store i32 %i.dbk, ptr %i.cyk, align 4, !tbaa !29
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbe, i64 72
  %i.dbm = load i32, ptr %i.dbl, align 8, !tbaa !29
  %i.dbn = mul nsw i32 %i.dbm, %i.dbd
  store i32 %i.dbn, ptr %i.cyl, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %scevgep.i.i, i8 0, i64 20, i1 false), !tbaa !29
  call void %i.daw(ptr noundef nonnull %i.dau, ptr noundef %i.dbe, ptr noundef nonnull %i.b, i32 noundef %.035.i.i, i32 noundef 3, i32 noundef %i.day) #11, !inline_history !135
  br label %render_slice.exit

bb.ks:                                            ; preds = %._crit_edge381.i, %.preheader326.i
  %indvars.iv436.i = phi i64 [ 0, %.preheader326.i ], [ %indvars.iv.next437.i, %._crit_edge381.i ] ; 14 uses
  %.0395.i = phi i32 [ -559038737, %.preheader326.i ], [ %.1.lcssa.i, %._crit_edge381.i ] ; 4 uses
  %.0236394.i = phi i32 [ -559038737, %.preheader326.i ], [ %.1237.lcssa.i, %._crit_edge381.i ] ; 4 uses
  %i.dbo = load ptr, ptr %i.lq, align 8, !tbaa !78 ; 2 uses
  %i.dbp = getelementptr inbounds nuw [8 x i8], ptr %i.dbo, i64 %indvars.iv436.i
  %i.dbq = load ptr, ptr %i.dbp, align 8, !tbaa !45
  %i.dbr = getelementptr inbounds nuw [4 x i8], ptr %i.cyp, i64 %indvars.iv436.i
  %i.dbs = load i32, ptr %i.dbr, align 4, !tbaa !29
  %i.dbt = sext i32 %i.dbs to i64                 ; 3 uses
  %i.dbu = getelementptr inbounds i8, ptr %i.dbq, i64 %i.dbt ; 5 uses
  %i.dbv = getelementptr inbounds nuw [8 x i8], ptr %i.daa, i64 %indvars.iv436.i
  %i.dbw = load ptr, ptr %i.dbv, align 8, !tbaa !45 ; 2 uses
  %i.dbx = getelementptr inbounds i8, ptr %i.dbw, i64 %i.dbt
  %i.dby = getelementptr inbounds nuw [8 x i8], ptr %i.dad, i64 %indvars.iv436.i
  %i.dbz = load ptr, ptr %i.dby, align 8, !tbaa !45 ; 2 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dbo, i64 64
  %i.dcb = getelementptr inbounds nuw [4 x i8], ptr %i.dca, i64 %indvars.iv436.i
  %i.dcc = load i32, ptr %i.dcb, align 4, !tbaa !29
  %i.dcd = sext i32 %i.dcc to i64                 ; 2 uses
  %i.dce = load i32, ptr %i.cxd, align 8, !tbaa !136 ; 2 uses
  %.not317.i = icmp ne i64 %indvars.iv436.i, 0    ; 5 uses
  br i1 %.not317.i, label %.thread305.i, label %bb.kt

.thread305.i:                                     ; preds = %bb.ks
  %i.dcf = load i32, ptr %i.cxe, align 16, !tbaa !119
  %i.dcg = icmp ne i32 %i.dcf, 0
  %i.dch = zext i1 %i.dcg to i32
  %i.dci = ashr i32 %i.dce, %i.dch
  %i.dcj = load i32, ptr %i.cym, align 4, !tbaa !129
  %i.dck = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.dcl = icmp ne i32 %i.dck, 0
  %i.dcm = zext i1 %i.dcl to i32
  %i.dcn = ashr i32 %i.dcj, %i.dcm
  br label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.dco = load i32, ptr %i.cym, align 4, !tbaa !129
  %i.dcp = load i32, ptr %i.cyo, align 4, !tbaa !118 ; 2 uses
  %i.dcq = icmp ne i32 %i.dcp, 0
  %i.dcr = zext i1 %i.dcq to i32
  %i.dcs = shl nuw i32 %.0200429, %i.dcr          ; 2 uses
  %.not397.i = icmp eq i32 %i.dcp, 0
  %i.dct = select i1 %.not397.i, i32 1, i32 2
  %i.dcu = add i32 %i.dcs, %i.dct
  %i.dcv = load ptr, ptr %i.m, align 16, !tbaa !57
  %i.dcw = getelementptr inbounds nuw i8, ptr %i.dcv, i64 664
  %i.dcx = load i32, ptr %i.dcw, align 8, !tbaa !58
  %i.dcy = trunc i32 %i.dcx to i1
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %.thread305.i
  %.in318.i = phi ptr [ %i.cxi, %.thread305.i ], [ %i.cxm, %bb.kt ]
  %.in319.i = phi ptr [ %i.cxh, %.thread305.i ], [ %i.cxl, %bb.kt ]
  %.in320.i = phi ptr [ %i.cxg, %.thread305.i ], [ %i.cxk, %bb.kt ]
  %i.dcz = phi i32 [ %i.dae, %.thread305.i ], [ %i.dcu, %bb.kt ] ; 3 uses
  %.in321.i = phi ptr [ %i.cxf, %.thread305.i ], [ %i.cxj, %bb.kt ]
  %i.dda = phi i32 [ %i.dcn, %.thread305.i ], [ %i.dco, %bb.kt ] ; 2 uses
  %i.ddb = phi i32 [ %i.dci, %.thread305.i ], [ %i.dce, %bb.kt ] ; 2 uses
  %i.ddc = phi i32 [ %.0200429, %.thread305.i ], [ %i.dcs, %bb.kt ] ; 3 uses
  %i.ddd = phi i1 [ false, %.thread305.i ], [ %i.dcy, %bb.kt ]
  %i.dde = load ptr, ptr %.in321.i, align 8, !tbaa !45 ; 2 uses
  %i.ddf = load i32, ptr %.in320.i, align 4, !tbaa !29 ; 2 uses
  %i.ddg = load i32, ptr %.in319.i, align 4, !tbaa !29 ; 2 uses
  %i.ddh = load i32, ptr %.in318.i, align 4, !tbaa !29 ; 2 uses
  %.in.i327 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %indvars.iv436.i
  %i.ddi = load i32, ptr %.in.i327, align 4, !tbaa !29
  %i.ddj = load i32, ptr %i.cyn, align 16, !tbaa !130
  %.not271.i = icmp eq i32 %i.ddj, 0
  %i.ddk = sub nsw i64 0, %i.dcd
  %spec.select.i328 = select i1 %.not271.i, i64 %i.ddk, i64 %i.dcd ; 23 uses
  %i.ddl = icmp slt i32 %i.ddc, %i.dcz
  br i1 %i.ddl, label %.preheader325.lr.ph.i, label %._crit_edge381.i

.preheader325.lr.ph.i:                            ; preds = %bb.ku
  %i.ddm = icmp sgt i32 %i.ddf, 0
  %i.ddn = trunc i64 %spec.select.i328 to i32
  %i.ddo = call i64 @llvm.smin.i64(i64 %spec.select.i328, i64 0)
  %.0233.idx.i = mul nsw i64 %i.ddo, -8           ; 2 uses
  %i.ddp = select i1 %.not317.i, i32 3, i32 1     ; 3 uses
  %i.ddq = select i1 %.not317.i, i32 8, i32 16    ; 2 uses
  %i.ddr = sub nsw i64 0, %spec.select.i328       ; 2 uses
  %i.dds = shl nsw i64 %spec.select.i328, 1
  %i.ddt = mul nsw i64 %spec.select.i328, 3
  %i.ddu = shl nsw i64 %spec.select.i328, 2
  %i.ddv = mul nsw i64 %spec.select.i328, 5
  %i.ddw = mul nsw i64 %spec.select.i328, 6
  %i.ddx = mul nsw i64 %spec.select.i328, 7
  %i.ddy = shl nsw i64 %spec.select.i328, 3
  %i.ddz = getelementptr inbounds nuw [512 x i8], ptr %i.cye, i64 %indvars.iv436.i ; 2 uses
  %i.dea = getelementptr inbounds nuw [128 x i8], ptr %i.cyf, i64 %indvars.iv436.i
  %invariant.gep.i329 = getelementptr inbounds nuw [128 x i8], ptr %i.cyi, i64 %indvars.iv436.i ; 2 uses
  %i.deb = add nsw i32 %i.ddh, -1                 ; 2 uses
  br i1 %i.ddm, label %.preheader325.us.preheader.i, label %.preheader325.lr.ph.split.i

.preheader325.us.preheader.i:                     ; preds = %.preheader325.lr.ph.i
  %i.dec = trunc nuw nsw i64 %indvars.iv436.i to i32
  br label %.preheader325.us.i

.preheader325.us.i:                               ; preds = %bb.mx, %.preheader325.us.preheader.i
  %.1380.us.i = phi i32 [ %.7.us.i, %bb.mx ], [ %.0395.i, %.preheader325.us.preheader.i ]
  %.1237379.us.i = phi i32 [ %.7243.us.i, %bb.mx ], [ %.0236394.i, %.preheader325.us.preheader.i ]
  %.0252378.us.i = phi i32 [ %i.doc, %bb.mx ], [ %i.ddc, %.preheader325.us.preheader.i ] ; 3 uses
  %i.ded = shl nsw i32 %.0252378.us.i, 2          ; 3 uses
  br label %.preheader.us.i332

bb.kv:                                            ; preds = %.preheader.us.i332, %bb.mt
  %indvars.iv.i333 = phi i64 [ 0, %.preheader.us.i332 ], [ %indvars.iv.next.i334, %bb.mt ] ; 2 uses
  %.3373.us.i = phi i32 [ %.2376.us.i, %.preheader.us.i332 ], [ %.7.us.i, %bb.mt ] ; 5 uses
  %.3239372.us.i = phi i32 [ %.2238375.us.i, %.preheader.us.i332 ], [ %.7243.us.i, %bb.mt ] ; 5 uses
  %i.dee = getelementptr inbounds nuw [2 x i8], ptr @hilbert_offset, i64 %indvars.iv.i333 ; 2 uses
  %i.def = load i8, ptr %i.dee, align 2, !tbaa !51
  %i.deg = zext i8 %i.def to i32
  %i.deh = add nuw nsw i32 %i.dod, %i.deg         ; 3 uses
  %i.dei = getelementptr inbounds nuw i8, ptr %i.dee, i64 1
  %i.dej = load i8, ptr %i.dei, align 1, !tbaa !51
  %i.dek = zext i8 %i.dej to i32
  %i.del = add nsw i32 %i.ded, %i.dek             ; 4 uses
  %i.dem = mul nsw i32 %i.del, %i.ddg
  %i.den = add nsw i32 %i.dem, %i.deh             ; 3 uses
  %.not274.us.i = icmp slt i32 %i.deh, %i.ddg
  %.not275.us.i = icmp slt i32 %i.del, %i.ddh
  %or.cond288.us.i = select i1 %.not274.us.i, i1 %.not275.us.i, i1 false
  br i1 %or.cond288.us.i, label %bb.kw, label %bb.mt

bb.kw:                                            ; preds = %bb.kv
  %i.deo = add nsw i32 %i.den, %i.ddi
  %i.dep = shl nsw i32 %i.del, 3                  ; 3 uses
  %i.deq = shl nsw i32 %i.deh, 3                  ; 3 uses
  %i.der = mul i32 %i.dep, %i.ddn
  %i.des = add i32 %i.der, %i.deq                 ; 2 uses
  %.pre440.i = load ptr, ptr %i.az, align 8, !tbaa !60 ; 3 uses
  %i.det = sext i32 %i.deo to i64                 ; 4 uses
  br i1 %i.ddd, label %bb.kx, label %._crit_edge.i335

bb.kx:                                            ; preds = %bb.kw
  %i.deu = getelementptr inbounds [4 x i8], ptr %.pre440.i, i64 %i.det
  %i.dev = getelementptr inbounds nuw i8, ptr %i.deu, i64 2
  %i.dew = load i8, ptr %i.dev, align 2, !tbaa !102 ; 2 uses
  %.not276.us.i = icmp eq i8 %i.dew, 1
  br i1 %.not276.us.i, label %._crit_edge.i335, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.dex = sext i32 %i.den to i64
  %i.dey = getelementptr inbounds [2 x i8], ptr %i.dde, i64 %i.dex
  %i.dez = getelementptr inbounds nuw i8, ptr %i.dey, i64 1
  %i.dfa = load i8, ptr %i.dez, align 1, !tbaa !51
  %i.dfb = sext i8 %i.dfa to i32                  ; 2 uses
  %i.dfc = shl nsw i32 %i.del, 4
  %i.dfd = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.dfe = ashr i32 %i.dfc, %i.dfd
  %i.dff = and i32 %i.dfb, 1
  %.off.i.us.i = add i8 %i.dew, -5
  %switch.i.us.i = icmp ult i8 %.off.i.us.i, 2
  %.0.v.i.us.i = select i1 %switch.i.us.i, i64 40, i64 56
  %.0.i.us.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.v.i.us.i
  %i.dfg = ashr i32 %i.dfb, 1
  %i.dfh = add nsw i32 %i.dfe, %i.dfg             ; 2 uses
  %i.dfi = call i32 @llvm.abs.i32(i32 %i.dfh, i1 true)
  %i.dfj = or disjoint i32 %i.dff, 8
  %i.dfk = add i32 %i.dfj, %i.dfh
  %..i.us.i = call i32 @llvm.smax.i32(i32 %i.dfi, i32 %i.dfk)
  call void @ff_progress_frame_await(ptr noundef nonnull %.0.i.us.i, i32 noundef %..i.us.i) #11
  %.pre.i339 = load ptr, ptr %i.az, align 8, !tbaa !60
  br label %._crit_edge.i335

._crit_edge.i335:                                 ; preds = %bb.ky, %bb.kx, %bb.kw
  %i.dfl = phi ptr [ %.pre440.i, %bb.kx ], [ %.pre.i339, %bb.ky ], [ %.pre440.i, %bb.kw ]
  %i.dfm = getelementptr inbounds [4 x i8], ptr %i.dfl, i64 %i.det
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfm, i64 2
  %i.dfo = load i8, ptr %i.dfn, align 2, !tbaa !102 ; 2 uses
  switch i8 %i.dfo, label %bb.la [
    i8 8, label %bb.kz
    i8 5, label %bb.lb
    i8 6, label %bb.lb
  ]

bb.kz:                                            ; preds = %._crit_edge.i335
  %i.dfp = load ptr, ptr %i.cxn, align 16, !tbaa !137
  %i.dfq = sext i32 %i.des to i64                 ; 2 uses
  %i.dfr = getelementptr inbounds i8, ptr %i.dbu, i64 %i.dfq
  %i.dfs = getelementptr inbounds i8, ptr %i.dbx, i64 %i.dfq
  call void %i.dfp(ptr noundef %i.dfr, ptr noundef %i.dfs, i64 noundef %spec.select.i328, i32 noundef 8) #11, !inline_history !138
  br label %bb.mt

bb.la:                                            ; preds = %._crit_edge.i335
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %._crit_edge.i335, %._crit_edge.i335
  %i.dft = phi ptr [ %i.dbw, %bb.la ], [ %i.dbz, %._crit_edge.i335 ], [ %i.dbz, %._crit_edge.i335 ]
  %i.dfu = getelementptr inbounds i8, ptr %i.dft, i64 %i.dbt
  %i.dfv = sext i32 %i.des to i64                 ; 5 uses
  %i.dfw = getelementptr inbounds i8, ptr %i.dfu, i64 %i.dfv ; 4 uses
  switch i8 %i.dfo, label %bb.lc [
    i8 5, label %bb.lt
    i8 1, label %bb.lt
    i8 0, label %bb.lt
  ]

bb.lc:                                            ; preds = %bb.lb
  %i.dfx = sext i32 %i.den to i64
  %i.dfy = getelementptr inbounds [2 x i8], ptr %i.dde, i64 %i.dfx ; 2 uses
  %i.dfz = load i8, ptr %i.dfy, align 1, !tbaa !51 ; 3 uses
  %i.dga = sext i8 %i.dfz to i32                  ; 5 uses
  %i.dgb = getelementptr inbounds nuw i8, ptr %i.dfy, i64 1
  %i.dgc = load i8, ptr %i.dgb, align 1, !tbaa !51 ; 3 uses
  %i.dgd = sext i8 %i.dgc to i32                  ; 5 uses
  %.pre441.i = load i32, ptr %i.rj, align 4, !tbaa !67
  %i.dge = icmp sgt i32 %.pre441.i, 1             ; 2 uses
  %or.cond.i337 = select i1 %.not317.i, i1 %i.dge, i1 false
  br i1 %or.cond.i337, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.dgf = ashr i32 %i.dga, 1
  %i.dgg = and i32 %i.dga, 1
  %i.dgh = or i32 %i.dgf, %i.dgg
  %i.dgi = ashr i32 %i.dgd, 1
  %i.dgj = and i32 %i.dgd, 1
  %i.dgk = or i32 %i.dgi, %i.dgj
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.4240.us.i = phi i32 [ %i.dgk, %bb.ld ], [ %i.dgd, %bb.lc ] ; 5 uses
  %.4.us.i338 = phi i32 [ %i.dgh, %bb.ld ], [ %i.dga, %bb.lc ] ; 5 uses
  %i.dgl = ashr i32 %.4.us.i338, 1                ; 2 uses
  %i.dgm = add nsw i32 %i.dgl, %i.deq             ; 5 uses
  %i.dgn = ashr i32 %.4240.us.i, 1                ; 2 uses
  %i.dgo = add nsw i32 %i.dgn, %i.dep             ; 5 uses
  %i.dgp = and i32 %.4.us.i338, 1
  %i.dgq = sext i32 %i.dgl to i64
  %i.dgr = getelementptr inbounds i8, ptr %i.dfw, i64 %i.dgq
  %i.dgs = shl nsw i32 %.4240.us.i, 1
  %i.dgt = and i32 %i.dgs, 2
  %i.dgu = or disjoint i32 %i.dgp, %i.dgt         ; 3 uses
  %i.dgv = sext i32 %i.dgn to i64
  %i.dgw = mul nsw i64 %spec.select.i328, %i.dgv
  %i.dgx = getelementptr inbounds i8, ptr %i.dgr, i64 %i.dgw ; 4 uses
  br i1 %i.dge, label %bb.lf, label %.thread307.us.i

bb.lf:                                            ; preds = %bb.le
  %i.dgy = load ptr, ptr %i.ly, align 16, !tbaa !85
  %.0233.us.i = getelementptr inbounds nuw i8, ptr %i.dgy, i64 %.0233.idx.i ; 10 uses
  %i.dgz = load i32, ptr %i.cxd, align 8, !tbaa !136 ; 2 uses
  br i1 %.not317.i, label %bb.lg, label %.thread.i.us.i

bb.lg:                                            ; preds = %bb.lf
  %i.dha = load i32, ptr %i.cxe, align 16, !tbaa !119
  %i.dhb = icmp ne i32 %i.dha, 0
  %i.dhc = zext i1 %i.dhb to i32
  %i.dhd = ashr i32 %i.dgz, %i.dhc
  %i.dhe = load i32, ptr %i.cyo, align 4, !tbaa !118
  %i.dhf = icmp ne i32 %i.dhe, 0
  %i.dhg = zext i1 %i.dhf to i32
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.lg, %bb.lf
  %.rhs.trunc.i.us.i = phi i8 [ 4, %bb.lg ], [ 2, %bb.lf ] ; 2 uses
  %i.dhh = phi i32 [ %i.dhd, %bb.lg ], [ %i.dgz, %bb.lf ] ; 3 uses
  %i.dhi = phi i32 [ %i.dhg, %bb.lg ], [ 0, %bb.lf ]
  %i.dhj = load i32, ptr %i.cym, align 4, !tbaa !129
  %i.dhk = ashr i32 %i.dhj, %i.dhi                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dhl = sdiv i8 %i.dfz, %.rhs.trunc.i.us.i
  %.sext.i.us.i = sext i8 %i.dhl to i32           ; 2 uses
  %i.dhm = sdiv i8 %i.dgc, %.rhs.trunc.i.us.i
  %.sext122.i.us.i = sext i8 %i.dhm to i32        ; 2 uses
  %i.dhn = and i32 %i.ddp, %i.dga                 ; 2 uses
  %i.dho = and i32 %i.ddp, %i.dgd                 ; 2 uses
  %i.dhp = or i32 %i.dgd, %i.dga
  %i.dhq = and i32 %i.dhp, %i.ddp
  %or.cond.not.i.us.i = icmp eq i32 %i.dhq, 0
  br i1 %or.cond.not.i.us.i, label %bb.ln, label %bb.lh

bb.lh:                                            ; preds = %.thread.i.us.i
  %.not113.i.us.i = icmp eq i32 %i.dho, 0
  %.not112.i.us.i = icmp eq i32 %i.dhn, 0
  %.inv.i.us.i = icmp sgt i8 %i.dfz, 0
  %i.dhr = or i1 %.inv.i.us.i, %.not112.i.us.i
  %.098.v.i.us.i = select i1 %i.dhr, i32 -1, i32 -2
  %5 = add nsw i32 %.098.v.i.us.i, %i.deq
  %.098.i.us.i = add i32 %5, %.sext.i.us.i        ; 2 uses
  %.inv116.i.us.i = icmp sgt i8 %i.dgc, 0
  %i.dhs = or i1 %.inv116.i.us.i, %.not113.i.us.i
  %.099.v.i.us.i = select i1 %i.dhs, i32 -1, i32 -2
  %6 = add i32 %.099.v.i.us.i, %i.dep
  %.099.i.us.i = add i32 %6, %.sext122.i.us.i     ; 2 uses
  %i.dht = add nsw i32 %.098.i.us.i, %i.ddq       ; 2 uses
  %i.dhu = icmp slt i32 %i.dht, 0
  br i1 %i.dhu, label %.thread311.us.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.dhv = add nsw i32 %.099.i.us.i, %i.ddq       ; 2 uses
  %i.dhw = icmp slt i32 %i.dht, %i.dhh
  %i.dhx = icmp sgt i32 %i.dhv, -1
  %or.cond3.not125.i.us.i = select i1 %i.dhw, i1 %i.dhx, i1 false
  %.not117.i.us.i.a = icmp slt i32 %i.dhv, %i.dhk
  %or.cond.i.us.i = select i1 %or.cond3.not125.i.us.i, i1 %.not117.i.us.i.a, i1 false
  br i1 %or.cond.i.us.i, label %bb.lj, label %.thread311.us.i

bb.lj:                                            ; preds = %bb.li
  %i.dhy = sub i32 6, %.098.i.us.i
  %i.dhz = and i32 %i.dhy, 7
  %i.dia = add nuw nsw i32 %i.dhz, 2              ; 2 uses
  %i.dib = sub i32 6, %.099.i.us.i
  %i.dic = and i32 %i.dib, 7
  %i.did = add nuw nsw i32 %i.dic, 2              ; 2 uses
  %i.die = load ptr, ptr %i.cxp, align 16, !tbaa !139
  %i.dif = getelementptr inbounds i8, ptr %i.dgx, i64 %i.ddr
  %i.dig = getelementptr inbounds i8, ptr %i.dif, i64 -1
  %i.dih = add nsw i32 %i.dgm, -1
  %i.dii = add nsw i32 %i.dgo, -1
  call void %i.die(ptr noundef nonnull %i.a, ptr noundef nonnull %i.dig, i64 noundef 12, i64 noundef range(i64 -2147483648, 2147483649) %spec.select.i328, i32 noundef 12, i32 noundef 12, i32 noundef %i.dih, i32 noundef %i.dii, i32 noundef %i.dhh, i32 noundef %i.dhk) #11, !inline_history !140
  %i.dij = or disjoint i32 %i.dhn, 8
  %.not118.i.us.i = icmp samesign ugt i32 %i.dia, %i.dij
  br i1 %.not118.i.us.i, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.dik = zext nneg i32 %i.dia to i64
  %i.dil = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dik
  call void @ff_vp3dsp_h_loop_filter_12(ptr noundef nonnull %i.dil, i64 noundef 12, ptr noundef nonnull %i.cxo) #11
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj
  %i.dim = or disjoint i32 %i.dho, 8
  %.not119.i.us.i = icmp samesign ugt i32 %i.did, %i.dim
  br i1 %.not119.i.us.i, label %bb.ls, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.din = mul nuw nsw i32 %i.did, 12
  %i.dio = zext nneg i32 %i.din to i64
  %i.dip = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dio
  call void @ff_vp3dsp_v_loop_filter_12(ptr noundef nonnull %i.dip, i64 noundef 12, ptr noundef nonnull %i.cxo) #11
  br label %bb.ls

bb.ln:                                            ; preds = %.thread.i.us.i
  %i.diq = sub nsw i32 0, %.sext.i.us.i           ; 2 uses
  %i.dir = and i32 %i.diq, 7                      ; 2 uses
  %i.dis = sub nsw i32 0, %.sext122.i.us.i        ; 2 uses
  %i.dit = and i32 %i.dis, 7                      ; 2 uses
  %.not115.i.us.i = icmp eq i32 %i.dit, 0
  %7 = or i32 %i.dis, %i.diq
  %8 = and i32 %7, 7
  %or.cond5.not.i.us.i = icmp eq i32 %8, 0
  br i1 %or.cond5.not.i.us.i, label %.thread311.us.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not114.i.us.i = icmp eq i32 %i.dir, 0
  %i.diu = load ptr, ptr %i.cxp, align 16, !tbaa !139
  %i.div = getelementptr inbounds i8, ptr %i.dgx, i64 %i.ddr
  %i.diw = getelementptr inbounds i8, ptr %i.div, i64 -1
  %i.dix = add nsw i32 %i.dgm, -1
  %i.diy = add nsw i32 %i.dgo, -1
  call void %i.diu(ptr noundef nonnull %i.a, ptr noundef nonnull %i.diw, i64 noundef 12, i64 noundef range(i64 -2147483648, 2147483649) %spec.select.i328, i32 noundef 12, i32 noundef 12, i32 noundef %i.dix, i32 noundef %i.diy, i32 noundef %i.dhh, i32 noundef %i.dhk) #11, !inline_history !140
  br i1 %.not114.i.us.i, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.diz = load ptr, ptr %i.cxq, align 8, !tbaa !141
  %i.dja = zext nneg i32 %i.dir to i64
  %i.djb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dja
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 13
  call void %i.diz(ptr noundef nonnull %i.djc, i64 noundef 12, ptr noundef nonnull %i.cxo) #11, !inline_history !140
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  br i1 %.not115.i.us.i, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.djd = load ptr, ptr %i.cxr, align 16, !tbaa !142
  %i.dje = mul nuw nsw i32 %i.dit, 12
  %i.djf = zext nneg i32 %i.dje to i64
  %i.djg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.djf
  %i.djh = getelementptr inbounds nuw i8, ptr %i.djg, i64 13
  call void %i.djd(ptr noundef nonnull %i.djh, i64 noundef 12, ptr noundef nonnull %i.cxo) #11, !inline_history !140
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq, %bb.lm, %bb.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.0233.us.i, ptr noundef nonnull align 1 dereferenceable(9) %i.cxs, i64 9, i1 false)
  %i.dji = getelementptr inbounds i8, ptr %.0233.us.i, i64 %spec.select.i328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dji, ptr noundef nonnull align 1 dereferenceable(9) %i.cxt, i64 9, i1 false)
  %i.djj = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.dds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djj, ptr noundef nonnull align 1 dereferenceable(9) %i.cxu, i64 9, i1 false)
  %i.djk = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.ddt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djk, ptr noundef nonnull align 1 dereferenceable(9) %i.cxv, i64 9, i1 false)
  %i.djl = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.ddu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djl, ptr noundef nonnull align 1 dereferenceable(9) %i.cxw, i64 9, i1 false)
  %i.djm = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.ddv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djm, ptr noundef nonnull align 1 dereferenceable(9) %i.cxx, i64 9, i1 false)
  %i.djn = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.ddw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djn, ptr noundef nonnull align 1 dereferenceable(9) %i.cxy, i64 9, i1 false)
  %i.djo = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.ddx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djo, ptr noundef nonnull align 1 dereferenceable(9) %i.cxz, i64 9, i1 false)
  %i.djp = getelementptr inbounds i8, ptr %.0233.us.i, i64 %i.ddy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.djp, ptr noundef nonnull align 1 dereferenceable(9) %i.cya, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.lt

.thread311.us.i:                                  ; preds = %bb.ln, %bb.li, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread307.us.i

.thread307.us.i:                                  ; preds = %.thread311.us.i, %bb.le
  %9 = icmp sgt i32 %i.dgm, -1
  %10 = icmp sgt i32 %i.dgo, -1
  %or.cond.not324.us.i = select i1 %9, i1 %10, i1 false
  %11 = add nuw nsw i32 %i.dgm, 9
  %.not282.us.i = icmp slt i32 %11, %i.ddb
  %or.cond290.us.i = select i1 %or.cond.not324.us.i, i1 %.not282.us.i, i1 false
  %12 = add nuw nsw i32 %i.dgo, 9
  %.not283.us.i = icmp slt i32 %12, %i.dda
  %or.cond291.us.i = select i1 %or.cond290.us.i, i1 %.not283.us.i, i1 false
  br i1 %or.cond291.us.i, label %bb.lt, label %13

13:                                               ; preds = %.thread307.us.i
  %14 = load ptr, ptr %i.ly, align 16, !tbaa !85
  %.0232.us.i = getelementptr inbounds nuw i8, ptr %14, i64 %.0233.idx.i ; 2 uses
  %15 = load ptr, ptr %i.cxp, align 16, !tbaa !139
  call void %15(ptr noundef %.0232.us.i, ptr noundef %i.dgx, i64 noundef %spec.select.i328, i64 noundef %spec.select.i328, i32 noundef 9, i32 noundef 9, i32 noundef %i.dgm, i32 noundef %i.dgo, i32 noundef %i.ddb, i32 noundef %i.dda) #11, !inline_history !138
  br label %bb.lt

bb.lt:                                            ; preds = %13, %.thread307.us.i, %bb.ls, %bb.lb, %bb.lb, %bb.lb
  %.4249.us.i = phi ptr [ %i.dfw, %bb.lb ], [ %.0232.us.i, %13 ], [ %i.dgx, %.thread307.us.i ], [ %.0233.us.i, %bb.ls ], [ %i.dfw, %bb.lb ], [ %i.dfw, %bb.lb ] ; 3 uses
  %.0244.us.i = phi i32 [ 0, %bb.lb ], [ %i.dgu, %13 ], [ %i.dgu, %.thread307.us.i ], [ %i.dgu, %bb.ls ], [ 0, %bb.lb ], [ 0, %bb.lb ] ; 2 uses
  %.5241.us.i = phi i32 [ %.3239372.us.i, %bb.lb ], [ %.4240.us.i, %13 ], [ %.4240.us.i, %.thread307.us.i ], [ %.4240.us.i, %bb.ls ], [ %.3239372.us.i, %bb.lb ], [ %.3239372.us.i, %bb.lb ] ; 4 uses
  %.5.us.i336 = phi i32 [ %.3373.us.i, %bb.lb ], [ %.4.us.i338, %13 ], [ %.4.us.i338, %.thread307.us.i ], [ %.4.us.i338, %bb.ls ], [ %.3373.us.i, %bb.lb ], [ %.3373.us.i, %bb.lb ] ; 4 uses
  %i.djq = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.djr = getelementptr inbounds [4 x i8], ptr %i.djq, i64 %i.det
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 2
  %i.djt = load i8, ptr %i.djs, align 2, !tbaa !102
  %.not285.us.i = icmp eq i8 %i.djt, 1
  br i1 %.not285.us.i, label %bb.lx, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %.not286.us.i = icmp eq i32 %.0244.us.i, 3
  %i.dju = getelementptr inbounds i8, ptr %i.dbu, i64 %i.dfv ; 2 uses
  br i1 %.not286.us.i, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.djv = zext nneg i32 %.0244.us.i to i64
  %i.djw = getelementptr inbounds nuw [8 x i8], ptr %i.cyb, i64 %i.djv
  %i.djx = load ptr, ptr %i.djw, align 8, !tbaa !137
  call void %i.djx(ptr noundef %i.dju, ptr noundef %.4249.us.i, i64 noundef %spec.select.i328, i32 noundef 8) #11, !inline_history !138
  br label %bb.lx

bb.lw:                                            ; preds = %bb.lu
  %i.djy = xor i32 %.5.us.i336, %.5241.us.i
  %i.djz = ashr i32 %i.djy, 31
  %i.dka = load ptr, ptr %i.cyc, align 16, !tbaa !143
  %i.dkb = sext i32 %i.djz to i64                 ; 2 uses
  %i.dkc = sub nsw i64 0, %i.dkb
  %i.dkd = getelementptr inbounds nuw i8, ptr %.4249.us.i, i64 %i.dkc
  %i.dke = getelementptr inbounds i8, ptr %.4249.us.i, i64 %spec.select.i328
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dke, i64 1
  %i.dkg = getelementptr inbounds i8, ptr %i.dkf, i64 %i.dkb
  call void %i.dka(ptr noundef %i.dju, ptr noundef %i.dkd, ptr noundef nonnull %i.dkg, i64 noundef %spec.select.i328, i32 noundef 8) #11, !inline_history !138
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv, %bb.lt
  %i.dkh = load ptr, ptr %i.az, align 8, !tbaa !60
  %i.dki = getelementptr inbounds [4 x i8], ptr %i.dkh, i64 %i.det ; 4 uses
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dki, i64 2
  %i.dkk = load i8, ptr %i.dkj, align 2, !tbaa !102
  %i.dkl = icmp eq i8 %i.dkk, 1
  %i.dkm = getelementptr inbounds nuw i8, ptr %i.dki, i64 3
  %i.dkn = load i8, ptr %i.dkm, align 1, !tbaa !144
  %i.dko = zext i8 %i.dkn to i64                  ; 2 uses
  br i1 %i.dkl, label %bb.mj, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.dkp = getelementptr inbounds nuw [768 x i8], ptr %i.m, i64 %i.dko
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.dkp, i64 30016
  %i.dkr = getelementptr inbounds nuw [128 x i8], ptr %i.dkq, i64 %indvars.iv436.i ; 2 uses
  br label %bb.lz

bb.lz:                                            ; preds = %bb.md, %bb.ly
  %.053.i294.us.i = phi i32 [ 0, %bb.ly ], [ %.1.i298.us.i, %bb.md ] ; 6 uses
  %i.dks = zext nneg i32 %.053.i294.us.i to i64   ; 2 uses
  %i.dkt = getelementptr inbounds nuw [8 x i8], ptr %i.ddz, i64 %i.dks ; 4 uses
  %i.dku = load ptr, ptr %i.dkt, align 8, !tbaa !145 ; 5 uses
  %i.dkv = load i16, ptr %i.dku, align 2, !tbaa !68 ; 5 uses
  %i.dkw = zext i16 %i.dkv to i32                 ; 2 uses
  %i.dkx = and i32 %i.dkw, 3
  switch i32 %i.dkx, label %default.unreachable [
    i32 0, label %bb.me
    i32 1, label %bb.mb
    i32 2, label %bb.ma
    i32 3, label %vp3_dequant.exit302.us.i
  ]

bb.ma:                                            ; preds = %bb.lz
  %i.dky = ashr i16 %i.dkv, 2
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.cyd, i64 %i.dks
  %i.dla = load i8, ptr %i.dkz, align 1, !tbaa !51
  %i.dlb = zext i8 %i.dla to i64                  ; 2 uses
  %i.dlc = getelementptr inbounds nuw [2 x i8], ptr %i.dkr, i64 %i.dlb
  %i.dld = load i16, ptr %i.dlc, align 2, !tbaa !68
  %i.dle = mul i16 %i.dld, %i.dky
  %i.dlf = getelementptr inbounds nuw [2 x i8], ptr %i.cxb, i64 %i.dlb
  store i16 %i.dle, ptr %i.dlf, align 2, !tbaa !68
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dku, i64 2
  store ptr %i.dlg, ptr %i.dkt, align 8, !tbaa !145
  br label %bb.md

bb.mb:                                            ; preds = %bb.lz
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dku, i64 2
  store ptr %i.dlh, ptr %i.dkt, align 8, !tbaa !145
  %i.dli = lshr i32 %i.dkw, 2
  %i.dlj = and i32 %i.dli, 127
  %i.dlk = add nuw nsw i32 %i.dlj, %.053.i294.us.i ; 3 uses
  %i.dll = icmp sgt i32 %i.dlk, 63
  br i1 %i.dll, label %vp3_dequant.exit302.thread.us.i, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.dlm = ashr i16 %i.dkv, 9
  %i.dln = zext nneg i32 %i.dlk to i64
  %i.dlo = getelementptr inbounds nuw i8, ptr %i.cyd, i64 %i.dln
  %i.dlp = load i8, ptr %i.dlo, align 1, !tbaa !51
  %i.dlq = zext i8 %i.dlp to i64                  ; 2 uses
  %i.dlr = getelementptr inbounds nuw [2 x i8], ptr %i.dkr, i64 %i.dlq
  %i.dls = load i16, ptr %i.dlr, align 2, !tbaa !68
  %i.dlt = mul i16 %i.dls, %i.dlm
  %i.dlu = getelementptr inbounds nuw [2 x i8], ptr %i.cxb, i64 %i.dlq
  store i16 %i.dlt, ptr %i.dlu, align 2, !tbaa !68
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.ma
  %.1.in.i297.us.i = phi i32 [ %i.dlk, %bb.mc ], [ %.053.i294.us.i, %bb.ma ] ; 3 uses
  %.1.i298.us.i = add nuw nsw i32 %.1.in.i297.us.i, 1
  %i.dlv = icmp slt i32 %.1.in.i297.us.i, 63
  br i1 %i.dlv, label %bb.lz, label %.thread64.i299.us.i, !llvm.loop !146

vp3_dequant.exit302.thread.us.i:                  ; preds = %bb.mb
  %i.dlw = load ptr, ptr %i.m, align 16, !tbaa !57
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dlw, i32 noundef 16, ptr noundef nonnull @.str.47) #11
  br label %bb.mh

bb.me:                                            ; preds = %bb.lz
  %i.dlx = icmp slt i16 %i.dkv, 5
  br i1 %i.dlx, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.dly = add nsw i16 %i.dkv, -1
  %i.dlz = and i16 %i.dly, -4
  store i16 %i.dlz, ptr %i.dku, align 2, !tbaa !68
  br label %.thread64.i299.us.i

bb.mg:                                            ; preds = %bb.me
  %i.dma = getelementptr inbounds nuw i8, ptr %i.dku, i64 2
  store ptr %i.dma, ptr %i.dkt, align 8, !tbaa !145
  br label %.thread64.i299.us.i

.thread64.i299.us.i:                              ; preds = %bb.md, %bb.mg, %bb.mf
  %.3.i300.us.i = phi i32 [ %.053.i294.us.i, %bb.mf ], [ %.053.i294.us.i, %bb.mg ], [ %.1.in.i297.us.i, %bb.md ]
  %i.dmb = load i16, ptr %i.dki, align 2, !tbaa !147
  %i.dmc = load i16, ptr %i.dea, align 16, !tbaa !68
  %i.dmd = mul i16 %i.dmc, %i.dmb
  store i16 %i.dmd, ptr %i.cxb, align 16, !tbaa !68
  br label %vp3_dequant.exit302.us.i

vp3_dequant.exit302.us.i:                         ; preds = %bb.lz, %.thread64.i299.us.i
  %.256.i296.us.i = phi i32 [ %.3.i300.us.i, %.thread64.i299.us.i ], [ %.053.i294.us.i, %bb.lz ]
  %.not287.us.i = icmp eq i32 %.256.i296.us.i, 0
  br i1 %.not287.us.i, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %vp3_dequant.exit302.us.i, %vp3_dequant.exit302.thread.us.i
  %i.dme = load ptr, ptr %i.cyg, align 16, !tbaa !148
  %i.dmf = getelementptr inbounds i8, ptr %i.dbu, i64 %i.dfv
  call void %i.dme(ptr noundef %i.dmf, i64 noundef %spec.select.i328, ptr noundef nonnull %i.cxb) #11, !inline_history !138
  br label %bb.mt

bb.mi:                                            ; preds = %vp3_dequant.exit302.us.i
  %i.dmg = load ptr, ptr %i.cyh, align 8, !tbaa !149
  %i.dmh = getelementptr inbounds i8, ptr %i.dbu, i64 %i.dfv
  call void %i.dmg(ptr noundef %i.dmh, i64 noundef %spec.select.i328, ptr noundef nonnull %i.cxb) #11, !inline_history !138
  br label %bb.mt

bb.mj:                                            ; preds = %bb.lx
  %gep.us.i = getelementptr inbounds nuw [768 x i8], ptr %invariant.gep.i329, i64 %i.dko ; 2 uses
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mo, %bb.mj
  %.053.i.us.i = phi i32 [ 0, %bb.mj ], [ %.1.i.us.i, %bb.mo ] ; 3 uses
  %i.dmi = zext nneg i32 %.053.i.us.i to i64      ; 2 uses
  %i.dmj = getelementptr inbounds nuw [8 x i8], ptr %i.ddz, i64 %i.dmi ; 4 uses
  %i.dmk = load ptr, ptr %i.dmj, align 8, !tbaa !145 ; 5 uses
  %i.dml = load i16, ptr %i.dmk, align 2, !tbaa !68 ; 5 uses
  %i.dmm = zext i16 %i.dml to i32                 ; 2 uses
  %i.dmn = and i32 %i.dmm, 3
  switch i32 %i.dmn, label %default.unreachable [
    i32 0, label %bb.mq
    i32 1, label %bb.mm
    i32 2, label %bb.ml
    i32 3, label %vp3_dequant.exit.us.i
  ]

bb.ml:                                            ; preds = %bb.mk
  %i.dmo = ashr i16 %i.dml, 2
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.cyd, i64 %i.dmi
  %i.dmq = load i8, ptr %i.dmp, align 1, !tbaa !51
  %i.dmr = zext i8 %i.dmq to i64                  ; 2 uses
  %i.dms = getelementptr inbounds nuw [2 x i8], ptr %gep.us.i, i64 %i.dmr
  %i.dmt = load i16, ptr %i.dms, align 2, !tbaa !68
  %i.dmu = mul i16 %i.dmt, %i.dmo
  %i.dmv = getelementptr inbounds nuw [2 x i8], ptr %i.cxb, i64 %i.dmr
  store i16 %i.dmu, ptr %i.dmv, align 2, !tbaa !68
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmk, i64 2
  store ptr %i.dmw, ptr %i.dmj, align 8, !tbaa !145
  br label %bb.mo

bb.mm:                                            ; preds = %bb.mk
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dmk, i64 2
  store ptr %i.dmx, ptr %i.dmj, align 8, !tbaa !145
  %i.dmy = lshr i32 %i.dmm, 2
  %i.dmz = and i32 %i.dmy, 127
  %i.dna = add nuw nsw i32 %i.dmz, %.053.i.us.i   ; 3 uses
  %i.dnb = icmp sgt i32 %i.dna, 63
  br i1 %i.dnb, label %bb.mp, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.dnc = ashr i16 %i.dml, 9
  %i.dnd = zext nneg i32 %i.dna to i64
  %i.dne = getelementptr inbounds nuw i8, ptr %i.cyd, i64 %i.dnd
  %i.dnf = load i8, ptr %i.dne, align 1, !tbaa !51
  %i.dng = zext i8 %i.dnf to i64                  ; 2 uses
  %i.dnh = getelementptr inbounds nuw [2 x i8], ptr %gep.us.i, i64 %i.dng
end_hunk_0
