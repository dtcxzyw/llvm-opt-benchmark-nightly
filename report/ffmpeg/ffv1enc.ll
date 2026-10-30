Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
.lr.ph161.i:                                      ; preds = %.critedge18.i, %bb.ha
  %.1505160.i = phi ptr [ %i.cyv, %bb.ha ], [ %.0504164.i, %.critedge18.i ] ; 5 uses
  %i.cyt = load i32, ptr %.1505160.i, align 4, !tbaa !130
  %i.cyu = icmp ugt i32 %i.cyt, %i.cyo
  br i1 %i.cyu, label %bb.ha, label %.critedge20.i

bb.ha:                                            ; preds = %.lr.ph161.i
  %i.cyv = getelementptr inbounds i8, ptr %.1505160.i, i64 -8 ; 3 uses
  %.not611.i = icmp ugt ptr %.1.lcssa.i, %i.cyv
  br i1 %.not611.i, label %.critedge639.i, label %.lr.ph161.i, !llvm.loop !298

.critedge20.i:                                    ; preds = %.lr.ph161.i
  %i.cyw = load i64, ptr %.1505160.i, align 4, !tbaa !72
  %i.cyx = load i64, ptr %.1.lcssa.i, align 4, !tbaa !72
  store i64 %i.cyx, ptr %.1505160.i, align 4, !tbaa !72
  store i64 %i.cyw, ptr %.1.lcssa.i, align 4, !tbaa !72
  %i.cyy = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 8
  %i.cyz = getelementptr inbounds i8, ptr %.1505160.i, i64 -8
  %.pre265.i = load i32, ptr %i.cxl, align 4, !tbaa !130 ; 2 uses
  br label %.critedge639.i

.critedge639.i:                                   ; preds = %bb.ha, %.critedge20.i, %.critedge18.i
  %i.cza = phi i32 [ %.pre265.i, %.critedge20.i ], [ %i.cyo, %.critedge18.i ], [ %i.cyo, %bb.ha ]
  %i.czb = phi i32 [ %.pre265.i, %.critedge20.i ], [ %i.cyp, %.critedge18.i ], [ %i.cyo, %bb.ha ]
  %.2506.i = phi ptr [ %i.cyz, %.critedge20.i ], [ %.0504164.i, %.critedge18.i ], [ %i.cyv, %bb.ha ] ; 3 uses
  %.2.i = phi ptr [ %i.cyy, %.critedge20.i ], [ %.1.lcssa.i, %.critedge18.i ], [ %.1.lcssa.i, %bb.ha ] ; 3 uses
  %.not607.i = icmp ugt ptr %.2.i, %.2506.i
  br i1 %.not607.i, label %._crit_edge166.loopexit.i, label %.preheader.i626, !llvm.loop !299

._crit_edge166.loopexit.i:                        ; preds = %.critedge639.i
  %.pre267.i = load i64, ptr %i.cxl, align 4, !tbaa !72
  br label %._crit_edge166.i

._crit_edge166.i:                                 ; preds = %._crit_edge166.loopexit.i, %bb.gx
  %i.czc = phi i64 [ %i.cyl, %bb.gx ], [ %.pre267.i, %._crit_edge166.loopexit.i ]
  %.0504.lcssa.i = phi ptr [ %i.cxn, %bb.gx ], [ %.2506.i, %._crit_edge166.loopexit.i ] ; 2 uses
  %.0503.lcssa.i = phi ptr [ %i.cxo, %bb.gx ], [ %.2.i, %._crit_edge166.loopexit.i ] ; 7 uses
  %i.czd = load i64, ptr %.0503.lcssa.i, align 4, !tbaa !72
  store i64 %i.czc, ptr %.0503.lcssa.i, align 4, !tbaa !72
  store i64 %i.czd, ptr %i.cxl, align 4, !tbaa !72
  %.not608.i = icmp eq i32 %.1508.i, 0
  br i1 %.not608.i, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %._crit_edge166.i
  %i.cze = getelementptr inbounds i8, ptr %.0503.lcssa.i, i64 -8
  %i.czf = icmp eq ptr %i.cxt, %i.cze
  %i.czg = icmp eq ptr %i.cxt, %.0503.lcssa.i
  %or.cond640.i = or i1 %i.czg, %i.czf
  br i1 %or.cond640.i, label %.preheader54.i, label %bb.hd

.preheader54.i:                                   ; preds = %bb.hb, %bb.hc
  %.0.i = phi ptr [ %i.czj, %bb.hc ], [ %.0512170.i, %bb.hb ] ; 4 uses
  %i.czh = icmp ult ptr %.0.i, %.0509171.i
  br i1 %i.czh, label %bb.hc, label %.critedge22.i

bb.hc:                                            ; preds = %.preheader54.i
  %i.czi = load i32, ptr %.0.i, align 4, !tbaa !130
  %i.czj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.czk = load i32, ptr %i.czj, align 4, !tbaa !130
  %.not609.i = icmp ugt i32 %i.czi, %i.czk
  br i1 %.not609.i, label %.critedge22.i, label %.preheader54.i, !llvm.loop !300

.critedge22.i:                                    ; preds = %bb.hc, %.preheader54.i
  %i.czl = icmp eq ptr %.0.i, %.0509171.i
  br i1 %i.czl, label %.thread49.loopexit.i, label %bb.hd

bb.hd:                                            ; preds = %.critedge22.i, %bb.hb, %._crit_edge166.i
  %i.czm = ptrtoint ptr %.0503.lcssa.i to i64     ; 2 uses
  %i.czn = sub i64 %i.cxp, %i.czm
  %i.czo = sub i64 %i.czm, %i.cxq
  %i.czp = icmp slt i64 %i.czn, %i.czo
  br i1 %i.czp, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.czq = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv253.i ; 2 uses
  store ptr %.0512170.i, ptr %i.czq, align 16, !tbaa !347
  %i.czr = getelementptr inbounds nuw i8, ptr %i.czq, i64 8
  store ptr %.0504.lcssa.i, ptr %i.czr, align 8, !tbaa !347
  %i.czs = getelementptr inbounds nuw i8, ptr %.0503.lcssa.i, i64 8
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  %i.czt = getelementptr inbounds nuw i8, ptr %.0503.lcssa.i, i64 8
  %i.czu = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv253.i ; 2 uses
  store ptr %i.czt, ptr %i.czu, align 16, !tbaa !347
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czu, i64 8
  store ptr %.0509171.i, ptr %i.czv, align 8, !tbaa !347
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.1513.i = phi ptr [ %i.czs, %bb.he ], [ %.0512170.i, %bb.hf ] ; 2 uses
  %.1510.i = phi ptr [ %.0509171.i, %bb.he ], [ %.0504.lcssa.i, %bb.hf ] ; 2 uses
  %indvars.iv.next254.i = add nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %i.czw = icmp ult ptr %.1513.i, %.1510.i
  br i1 %i.czw, label %.lr.ph173.i, label %.thread49.loopexit.i

bb.hh:                                            ; preds = %.lr.ph173.i
  %i.czx = trunc nsw i64 %indvars.iv253.i to i32  ; 2 uses
  %i.czy = load i32, ptr %.0512170.i, align 4, !tbaa !130
  %i.czz = load i32, ptr %.0509171.i, align 4, !tbaa !130
  %i.daa = icmp ugt i32 %i.czy, %i.czz
  br i1 %i.daa, label %bb.hi, label %.thread49.i

bb.hi:                                            ; preds = %bb.hh
  %i.dab = load i64, ptr %.0509171.i, align 4, !tbaa !72
  %i.dac = load i64, ptr %.0512170.i, align 4, !tbaa !72
  store i64 %i.dac, ptr %.0509171.i, align 4, !tbaa !72
  store i64 %i.dab, ptr %.0512170.i, align 4, !tbaa !72
  br label %.thread49.i

.thread49.loopexit.i:                             ; preds = %bb.hg, %.critedge22.i, %bb.gw
  %.151666.ph.in.i = phi i64 [ %indvars.iv253.i, %.critedge22.i ], [ %indvars.iv253.i, %bb.gw ], [ %indvars.iv.next254.i, %bb.hg ]
  %.151666.ph.i = trunc i64 %.151666.ph.in.i to i32
  br label %.thread49.i

.thread49.i:                                      ; preds = %.thread49.loopexit.i, %bb.hi, %bb.hh, %bb.gn
  %.151666.i = phi i32 [ %i.czx, %bb.hi ], [ %i.czx, %bb.hh ], [ %i.cxc, %bb.gn ], [ %.151666.ph.i, %.thread49.loopexit.i ] ; 2 uses
  %.not606.i = icmp eq i32 %.151666.i, 0
  br i1 %.not606.i, label %bb.hj, label %bb.gn, !llvm.loop !301

bb.hj:                                            ; preds = %.thread49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %load_rgb_float32_frame.exit

load_rgb_float32_frame.exit:                      ; preds = %bb.gl, %bb.hj
  %i.dad = load i32, ptr %i.aiw, align 4, !tbaa !348
  %.fr1066 = freeze i32 %i.dad                    ; 4 uses
  %i.dae = sext i32 %.fr1066 to i64               ; 4 uses
  %i.daf = getelementptr inbounds [4 x i8], ptr @constinit.72, i64 %i.dae
  %i.dag = load i32, ptr %i.daf, align 4, !tbaa !72 ; 2 uses
  %i.dah = load i32, ptr %i.aii, align 4, !tbaa !58
  %i.dai = shl nsw i32 %i.dah, 1
  %i.daj = or disjoint i32 %i.dai, 1
  %i.dak = load i32, ptr %i.aia, align 8, !tbaa !67
  %i.dal = add nsw i32 %i.daj, %i.dak
  %i.dam = icmp sgt i32 %i.dal, 0
  br i1 %i.dam, label %.lr.ph19.preheader.i, label %encode_histogram_remap.exit

.lr.ph19.preheader.i:                             ; preds = %load_rgb_float32_frame.exit
  %i.dan = getelementptr inbounds [4 x i8], ptr @constinit.73, i64 %i.dae
  %i.dao = load i32, ptr %i.dan, align 4, !tbaa !72
  %i.dap = getelementptr inbounds [4 x i8], ptr @constinit.71, i64 %i.dae
  %i.daq = load i32, ptr %i.dap, align 4, !tbaa !72
  %i.dar = getelementptr inbounds [4 x i8], ptr @constinit, i64 %i.dae
  %i.das = load i32, ptr %i.dar, align 4, !tbaa !72
  %i.dat = load i32, ptr %i.w, align 4, !tbaa !108
  %i.dau = load i32, ptr %i.u, align 8, !tbaa !107
  %i.dav = mul i32 %i.dau, %i.dat                 ; 2 uses
  %i.daw = and i32 %.fr1066, -2
  %.not162.i = icmp eq i32 %i.daw, 4              ; 2 uses
  %i.dax = icmp sgt i32 %i.dav, 0
  %i.day = icmp eq i32 %.fr1066, 3                ; 2 uses
  %.not163.i = icmp ult i32 %.fr1066, 3
  %i.daz = sext i32 %i.dao to i64                 ; 3 uses
  %i.dba = sext i32 %i.dag to i64                 ; 5 uses
  %i.dbb = sext i32 %i.daq to i64
  %i.dbc = sext i32 %i.das to i64
  %wide.trip.count.i635 = zext nneg i32 %i.dav to i64 ; 2 uses
  br label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %._crit_edge20.i, %.lr.ph19.preheader.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph19.preheader.i ], [ %indvars.iv.next50.i, %._crit_edge20.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.dbd = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %indvars.iv49.i
  %i.dbe = trunc nuw nsw i64 %indvars.iv49.i to i32 ; 2 uses
  br label %bb.hk

._crit_edge20.i:                                  ; preds = %bb.id
  %i.dbf = shl nuw i32 1, %spec.select171.i
  %i.dbg = sext i32 %spec.select171.i to i64
  %i.dbh = getelementptr inbounds [4100 x i8], ptr %i.h, i64 %i.dbg
  %i.dbi = call fastcc i32 @encode_float32_remap_segment(ptr noundef %1, i32 noundef %i.dbe, i32 noundef %i.dbf, ptr noundef %i.dbh, i32 noundef 1, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %i.dbj = load i32, ptr %i.aii, align 4, !tbaa !58
  %i.dbk = shl nsw i32 %i.dbj, 1
  %i.dbl = or disjoint i32 %i.dbk, 1
  %i.dbm = load i32, ptr %i.aia, align 8, !tbaa !67
  %i.dbn = add nsw i32 %i.dbl, %i.dbm
  %i.dbo = sext i32 %i.dbn to i64
  %i.dbp = icmp slt i64 %indvars.iv.next50.i, %i.dbo
  br i1 %i.dbp, label %.lr.ph19.i, label %encode_histogram_remap.exit, !llvm.loop !302

bb.hk:                                            ; preds = %bb.id, %.lr.ph19.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next47.i, %bb.id ] ; 7 uses
  %.015016.i = phi i32 [ 0, %.lr.ph19.i ], [ %spec.select171.i, %bb.id ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(94300) %i.i, i8 0, i64 94300, i1 false)
  %i.dbq = getelementptr inbounds [4100 x i8], ptr %i.h, i64 %indvars.iv46.i ; 3 uses
  %i.dbr = trunc nsw i64 %indvars.iv46.i to i32   ; 3 uses
  %i.dbs = shl nuw i32 1, %i.dbr                  ; 6 uses
  %i.dbt = shl nsw i32 %i.dbr, 1
  %i.dbu = sitofp nsz i32 %i.dbt to float
  %i.dbv = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv46.i ; 3 uses
  %i.dbw = sitofp nsz i32 %i.dbs to float         ; 2 uses
  %i.dbx = fmul nnan nsz float %i.dbw, %i.dbw
  %i.dby = bitcast float %i.dbx to i32
  %i.dbz = uitofp nsz i32 %i.dby to float
  %storemerge.i = select i1 %.not162.i, float %i.dbu, float %i.dbz ; 3 uses
  store float %storemerge.i, ptr %i.dbv, align 4, !tbaa !349
  br i1 %i.dax, label %.lr.ph7.split.preheader.i, label %.preheader.i636

.lr.ph7.split.preheader.i:                        ; preds = %bb.hk
  %i.dca = load ptr, ptr %i.dbd, align 8, !tbaa !110 ; 2 uses
  %i.dcb = sext i32 %i.dbs to i64                 ; 4 uses
  %i.dcc = icmp eq i64 %indvars.iv46.i, 9
  %or.cond.i642 = and i1 %i.day, %i.dcc           ; 2 uses
  %i.dcd = icmp sgt i32 %i.dbs, 1                 ; 2 uses
  br i1 %.not162.i, label %.lr.ph7.split.i.us, label %.lr.ph7.split.i

.lr.ph7.split.i.us:                               ; preds = %.lr.ph7.split.preheader.i, %..loopexit_crit_edge.i.us
  %indvars.iv35.i.us = phi i64 [ %indvars.iv.next36.i.us, %..loopexit_crit_edge.i.us ], [ 0, %.lr.ph7.split.preheader.i ] ; 2 uses
  %.01475.i.us = phi i32 [ %i.dck, %..loopexit_crit_edge.i.us ], [ -1, %.lr.ph7.split.preheader.i ]
  %.01484.i.us = phi i64 [ %i.dcg, %..loopexit_crit_edge.i.us ], [ -1, %.lr.ph7.split.preheader.i ] ; 4 uses
  %i.dce = getelementptr inbounds nuw [8 x i8], ptr %i.dca, i64 %indvars.iv35.i.us
  %i.dcf = load i32, ptr %i.dce, align 4, !tbaa !130
  %i.dcg = zext i32 %i.dcf to i64                 ; 4 uses
  %i.dch = add nuw nsw i64 %i.dcg, 1
  %i.dci = mul nsw i64 %i.dch, %i.dcb
  %i.dcj = lshr i64 %i.dci, 32
  %i.dck = trunc nuw i64 %i.dcj to i32            ; 3 uses
  %.not165.i.us = icmp eq i64 %.01484.i.us, %i.dcg
  br i1 %.not165.i.us, label %..loopexit_crit_edge.i.us, label %.lr.ph.i643.us

.lr.ph.i643.us:                                   ; preds = %.lr.ph7.split.i.us
  %i.dcl = add nsw i64 %.01484.i.us, 1
  %i.dcm = mul nsw i64 %i.dcl, %i.dcb
  %i.dcn = ashr i64 %i.dcm, 32
  %i.dco = getelementptr inbounds [92 x i8], ptr %i.i, i64 %i.dcn
  %i.dcp = sub nsw i64 %i.dcg, %.01484.i.us       ; 2 uses
  %i.dcq = icmp slt i64 %.01484.i.us, 0
  %i.dcr = add nsw i32 %i.dck, -111               ; 2 uses
  %or.cond3.i.us = icmp ult i32 %i.dcr, 24
  %i.dcs = lshr i32 8388736, %i.dcr
  %spec.select1.i.us = select i1 %or.cond3.i.us, i32 %i.dcs, i32 1
  %.not167.i.us = icmp eq i32 %.01475.i.us, %i.dck
  br label %.lr.ph.split.us.i649.us

.lr.ph.split.us.i649.us:                          ; preds = %bb.hq, %.lr.ph.i643.us
  %indvars.iv31.i.us = phi i64 [ %indvars.iv.next32.i.us, %bb.hq ], [ 0, %.lr.ph.i643.us ] ; 4 uses
  br i1 %i.dcq, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.split.us.i649.us
  %i.dct = icmp eq i64 %indvars.iv31.i.us, %i.dba
  %or.cond168.us.i.us = select i1 %or.cond.i642, i1 %i.dct, i1 false
  br i1 %or.cond168.us.i.us, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.dcu = shl i64 65537, %indvars.iv31.i.us
  %i.dcv = lshr i64 %i.dcu, 16
  %i.dcw = trunc i64 %i.dcv to i32
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl, %.lr.ph.split.us.i649.us
  %.0144.us.i.us = phi i32 [ %i.dcw, %bb.hm ], [ 1, %.lr.ph.split.us.i649.us ], [ %spec.select1.i.us, %bb.hl ] ; 4 uses
  %i.dcx = sdiv i32 %.0144.us.i.us, 2
  %i.dcy = sext i32 %i.dcx to i64
  %i.dcz = add nsw i64 %i.dcp, %i.dcy
  %i.dda = sext i32 %.0144.us.i.us to i64         ; 2 uses
  %i.ddb = sdiv i64 %i.dcz, %i.dda
  %spec.select.us.i.us = call i64 @llvm.smax.i64(i64 %i.ddb, i64 1) ; 2 uses
  %i.ddc = icmp sgt i32 %.0144.us.i.us, 1
  br i1 %i.ddc, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %i.ddd = mul nuw nsw i64 %spec.select.us.i.us, %i.dda
  %i.dde = sub nsw i64 %i.dcp, %i.ddd
  %i.ddf = call i64 @llvm.abs.i64(i64 %i.dde, i1 true)
  %i.ddg = add nuw nsw i64 %i.ddf, 1
  %i.ddh = uitofp nneg i64 %i.ddg to float        ; 3 uses
  br i1 %i.dcd, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.ddi = fmul nnan nsz float %i.ddh, %i.ddh
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %bb.hn
  %.0142.us.i.us = phi nsz float [ %i.ddi, %bb.hp ], [ %i.ddh, %bb.ho ], [ 1.000000e+00, %bb.hn ]
  %i.ddj = uitofp nneg i64 %spec.select.us.i.us to float
  %i.ddk = fmul nsz float %.0142.us.i.us, %i.ddj  ; 2 uses
  %i.ddl = fmul nsz float %i.ddk, %i.ddk          ; 2 uses
  %i.ddm = sitofp nsz i32 %.0144.us.i.us to float
  %i.ddn = fmul nsz float %i.ddl, %i.ddm
  %.1143.us.i.us = select nsz i1 %.not167.i.us, float %i.ddl, float %i.ddn
  %i.ddo = call nsz float @llvm.log2.f32(float %.1143.us.i.us)
  %i.ddp = getelementptr inbounds [4 x i8], ptr %i.dco, i64 %indvars.iv31.i.us ; 2 uses
  %i.ddq = load float, ptr %i.ddp, align 4, !tbaa !349
  %i.ddr = fadd nsz float %i.ddq, %i.ddo
  store float %i.ddr, ptr %i.ddp, align 4, !tbaa !349
  %indvars.iv.next32.i.us = add nsw i64 %indvars.iv31.i.us, %i.daz ; 2 uses
  %.not166.us.i.us = icmp sgt i64 %indvars.iv.next32.i.us, %i.dba
  br i1 %.not166.us.i.us, label %..loopexit_crit_edge.i.us, label %.lr.ph.split.us.i649.us, !llvm.loop !303

..loopexit_crit_edge.i.us:                        ; preds = %bb.hq, %.lr.ph7.split.i.us
  %indvars.iv.next36.i.us = add nuw nsw i64 %indvars.iv35.i.us, 1 ; 2 uses
  %exitcond.not.i648.us = icmp eq i64 %indvars.iv.next36.i.us, %wide.trip.count.i635
  br i1 %exitcond.not.i648.us, label %.preheader.i636, label %.lr.ph7.split.i.us, !llvm.loop !304

.preheader.i636:                                  ; preds = %..loopexit_crit_edge.i, %..loopexit_crit_edge.i.us, %bb.hk
  %i.dds = icmp eq i64 %indvars.iv46.i, 31
  br i1 %i.dds, label %bb.hx, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.preheader.i636
  %i.ddt = icmp eq i64 %indvars.iv46.i, 9
  %or.cond5.i = and i1 %i.day, %i.ddt
  %smax.i637 = call i32 @llvm.smax.i32(i32 %i.dbs, i32 1)
  %wide.trip.count44.i = zext nneg i32 %smax.i637 to i64
  br label %.lr.ph11.preheader.i

.lr.ph7.split.i:                                  ; preds = %.lr.ph7.split.preheader.i, %..loopexit_crit_edge.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %..loopexit_crit_edge.i ], [ 0, %.lr.ph7.split.preheader.i ] ; 2 uses
  %.01475.i = phi i32 [ %i.dea, %..loopexit_crit_edge.i ], [ -1, %.lr.ph7.split.preheader.i ]
  %.01484.i = phi i64 [ %i.ddw, %..loopexit_crit_edge.i ], [ -1, %.lr.ph7.split.preheader.i ] ; 4 uses
  %i.ddu = getelementptr inbounds nuw [8 x i8], ptr %i.dca, i64 %indvars.iv35.i
  %i.ddv = load i32, ptr %i.ddu, align 4, !tbaa !130
  %i.ddw = zext i32 %i.ddv to i64                 ; 4 uses
  %i.ddx = add nuw nsw i64 %i.ddw, 1
  %i.ddy = mul nsw i64 %i.ddx, %i.dcb
  %i.ddz = lshr i64 %i.ddy, 32
  %i.dea = trunc nuw i64 %i.ddz to i32            ; 3 uses
  %.not165.i = icmp eq i64 %.01484.i, %i.ddw
  br i1 %.not165.i, label %..loopexit_crit_edge.i, label %.lr.ph.i643

.lr.ph.i643:                                      ; preds = %.lr.ph7.split.i
  %i.deb = add nsw i64 %.01484.i, 1
  %i.dec = mul nsw i64 %i.deb, %i.dcb
  %i.ded = ashr i64 %i.dec, 32
  %i.dee = getelementptr inbounds [92 x i8], ptr %i.i, i64 %i.ded
  %i.def = sub nsw i64 %i.ddw, %.01484.i          ; 2 uses
  %i.deg = icmp slt i64 %.01484.i, 0
  %i.deh = add nsw i32 %i.dea, -111               ; 2 uses
  %or.cond3.i = icmp ult i32 %i.deh, 24
  %i.dei = lshr i32 8388736, %i.deh
  %spec.select1.i = select i1 %or.cond3.i, i32 %i.dei, i32 1
  %.not167.i = icmp eq i32 %.01475.i, %i.dea
  br label %.lr.ph.split.i644

.lr.ph.split.i644:                                ; preds = %.lr.ph.i643, %bb.hw
  %indvars.iv.i645 = phi i64 [ %indvars.iv.next.i647, %bb.hw ], [ 0, %.lr.ph.i643 ] ; 4 uses
  br i1 %i.deg, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph.split.i644
  %i.dej = icmp eq i64 %indvars.iv.i645, %i.dba
  %or.cond168.i = select i1 %or.cond.i642, i1 %i.dej, i1 false
  br i1 %or.cond168.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.dek = shl i64 65537, %indvars.iv.i645
  %i.del = lshr i64 %i.dek, 16
  %i.dem = trunc i64 %i.del to i32
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %.lr.ph.split.i644
  %.0144.i = phi i32 [ %i.dem, %bb.hs ], [ 1, %.lr.ph.split.i644 ], [ %spec.select1.i, %bb.hr ] ; 4 uses
  %i.den = sdiv i32 %.0144.i, 2
  %i.deo = sext i32 %i.den to i64
  %i.dep = add nsw i64 %i.def, %i.deo
  %i.deq = sext i32 %.0144.i to i64               ; 2 uses
  %i.der = sdiv i64 %i.dep, %i.deq
  %spec.select.i646 = call i64 @llvm.smax.i64(i64 %i.der, i64 1) ; 2 uses
  %i.des = icmp sgt i32 %.0144.i, 1
  br i1 %i.des, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.det = mul nuw nsw i64 %spec.select.i646, %i.deq
  %i.deu = sub nsw i64 %i.def, %i.det
  %i.dev = call i64 @llvm.abs.i64(i64 %i.deu, i1 true)
  %i.dew = add nuw nsw i64 %i.dev, 1
  %i.dex = uitofp nneg i64 %i.dew to float        ; 3 uses
  br i1 %i.dcd, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.dey = fmul nnan nsz float %i.dex, %i.dex
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht
  %.0142.i = phi nsz float [ %i.dey, %bb.hv ], [ %i.dex, %bb.hu ], [ 1.000000e+00, %bb.ht ]
  %i.dez = uitofp nneg i64 %spec.select.i646 to float
  %i.dfa = fmul nsz float %.0142.i, %i.dez        ; 2 uses
  %i.dfb = fmul nsz float %i.dfa, %i.dfa          ; 2 uses
  %i.dfc = sitofp nsz i32 %.0144.i to float
  %i.dfd = fmul nsz float %i.dfb, %i.dfc
  %.1143.i = select nsz i1 %.not167.i, float %i.dfb, float %i.dfd
  %i.dfe = bitcast float %.1143.i to i32
  %i.dff = uitofp nsz i32 %i.dfe to float
  %i.dfg = getelementptr inbounds [4 x i8], ptr %i.dee, i64 %indvars.iv.i645 ; 2 uses
  %i.dfh = load float, ptr %i.dfg, align 4, !tbaa !349
  %i.dfi = fadd nsz float %i.dfh, %i.dff
  store float %i.dfi, ptr %i.dfg, align 4, !tbaa !349
  %indvars.iv.next.i647 = add nsw i64 %indvars.iv.i645, %i.daz ; 2 uses
  %.not166.i = icmp sgt i64 %indvars.iv.next.i647, %i.dba
  br i1 %.not166.i, label %..loopexit_crit_edge.i, label %.lr.ph.split.i644, !llvm.loop !303

..loopexit_crit_edge.i:                           ; preds = %bb.hw, %.lr.ph7.split.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond.not.i648 = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count.i635
  br i1 %exitcond.not.i648, label %.preheader.i636, label %.lr.ph7.split.i, !llvm.loop !304

end_hunk_0
