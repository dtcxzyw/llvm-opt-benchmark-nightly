Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
  %i.cyn = phi i64 [ %i.cya, %bb.gx ], [ %.pre259.i, %._crit_edge166.loopexit.i ]
  %.0504.lcssa.i = phi ptr [ %i.cxc, %bb.gx ], [ %.2506.i, %._crit_edge166.loopexit.i ] ; 2 uses
  %.0503.lcssa.i = phi ptr [ %i.cxd, %bb.gx ], [ %.2.i, %._crit_edge166.loopexit.i ] ; 7 uses
  %i.cyo = load i64, ptr %.0503.lcssa.i, align 4
  store i64 %i.cyn, ptr %.0503.lcssa.i, align 4
  store i64 %i.cyo, ptr %i.cxa, align 4
  %.not608.i = icmp eq i32 %.1508.i, 0
  br i1 %.not608.i, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %._crit_edge166.i
  %i.cyp = getelementptr inbounds i8, ptr %.0503.lcssa.i, i64 -8
  %i.cyq = icmp eq ptr %i.cxi, %i.cyp
  %i.cyr = icmp eq ptr %i.cxi, %.0503.lcssa.i
  %or.cond640.i = or i1 %i.cyr, %i.cyq
  br i1 %or.cond640.i, label %.preheader54.i, label %bb.hd

.preheader54.i:                                   ; preds = %bb.hb, %bb.hc
  %.0.i = phi ptr [ %i.cyu, %bb.hc ], [ %.0512170.i, %bb.hb ] ; 4 uses
  %i.cys = icmp ult ptr %.0.i, %.0509171.i
  br i1 %i.cys, label %bb.hc, label %.critedge22.i

bb.hc:                                            ; preds = %.preheader54.i
  %i.cyt = load i32, ptr %.0.i, align 4, !tbaa !130
  %i.cyu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.cyv = load i32, ptr %i.cyu, align 4, !tbaa !130
  %.not609.i = icmp ugt i32 %i.cyt, %i.cyv
  br i1 %.not609.i, label %.critedge22.i, label %.preheader54.i, !llvm.loop !300

.critedge22.i:                                    ; preds = %bb.hc, %.preheader54.i
  %i.cyw = icmp eq ptr %.0.i, %.0509171.i
  br i1 %i.cyw, label %.thread49.loopexit.i, label %bb.hd

bb.hd:                                            ; preds = %.critedge22.i, %bb.hb, %._crit_edge166.i
  %i.cyx = ptrtoint ptr %.0503.lcssa.i to i64     ; 2 uses
  %i.cyy = sub i64 %i.cxe, %i.cyx
  %i.cyz = sub i64 %i.cyx, %i.cxf
  %i.cza = icmp slt i64 %i.cyy, %i.cyz
  br i1 %i.cza, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.czb = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv253.i ; 2 uses
  store ptr %.0512170.i, ptr %i.czb, align 16, !tbaa !347
  %i.czc = getelementptr inbounds nuw i8, ptr %i.czb, i64 8
  store ptr %.0504.lcssa.i, ptr %i.czc, align 8, !tbaa !347
  %i.czd = getelementptr inbounds nuw i8, ptr %.0503.lcssa.i, i64 8
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  %i.cze = getelementptr inbounds nuw i8, ptr %.0503.lcssa.i, i64 8
  %i.czf = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv253.i ; 2 uses
  store ptr %i.cze, ptr %i.czf, align 16, !tbaa !347
  %i.czg = getelementptr inbounds nuw i8, ptr %i.czf, i64 8
  store ptr %.0509171.i, ptr %i.czg, align 8, !tbaa !347
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.1513.i = phi ptr [ %i.czd, %bb.he ], [ %.0512170.i, %bb.hf ] ; 2 uses
  %.1510.i = phi ptr [ %.0509171.i, %bb.he ], [ %.0504.lcssa.i, %bb.hf ] ; 2 uses
  %indvars.iv.next254.i = add nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %i.czh = icmp ult ptr %.1513.i, %.1510.i
  br i1 %i.czh, label %.lr.ph173.i, label %.thread49.loopexit.i

bb.hh:                                            ; preds = %.lr.ph173.i
  %i.czi = trunc nsw i64 %indvars.iv253.i to i32  ; 2 uses
  %i.czj = load i32, ptr %.0512170.i, align 4, !tbaa !130
  %i.czk = load i32, ptr %.0509171.i, align 4, !tbaa !130
  %i.czl = icmp ugt i32 %i.czj, %i.czk
  br i1 %i.czl, label %bb.hi, label %.thread49.i

bb.hi:                                            ; preds = %bb.hh
  %i.czm = load i64, ptr %.0509171.i, align 4
  %i.czn = load i64, ptr %.0512170.i, align 4
  store i64 %i.czn, ptr %.0509171.i, align 4
  store i64 %i.czm, ptr %.0512170.i, align 4
  br label %.thread49.i

.thread49.loopexit.i:                             ; preds = %bb.hg, %.critedge22.i, %bb.gw
  %.151666.ph.in.i = phi i64 [ %indvars.iv253.i, %.critedge22.i ], [ %indvars.iv253.i, %bb.gw ], [ %indvars.iv.next254.i, %bb.hg ]
  %.151666.ph.i = trunc i64 %.151666.ph.in.i to i32
  br label %.thread49.i

.thread49.i:                                      ; preds = %.thread49.loopexit.i, %bb.hi, %bb.hh, %bb.gn
  %.151666.i = phi i32 [ %i.czi, %bb.hi ], [ %i.czi, %bb.hh ], [ %i.cwr, %bb.gn ], [ %.151666.ph.i, %.thread49.loopexit.i ] ; 2 uses
  %.not606.i = icmp eq i32 %.151666.i, 0
  br i1 %.not606.i, label %bb.hj, label %bb.gn, !llvm.loop !301

bb.hj:                                            ; preds = %.thread49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %load_rgb_float32_frame.exit

load_rgb_float32_frame.exit:                      ; preds = %bb.gl, %bb.hj
  %i.czo = load i32, ptr %i.aix, align 4, !tbaa !348
  %.fr1067 = freeze i32 %i.czo                    ; 4 uses
  %i.czp = sext i32 %.fr1067 to i64               ; 4 uses
  %i.czq = getelementptr inbounds [4 x i8], ptr @constinit.72, i64 %i.czp
  %i.czr = load i32, ptr %i.czq, align 4, !tbaa !72 ; 2 uses
  %i.czs = load i32, ptr %i.aij, align 4, !tbaa !58
  %i.czt = shl nsw i32 %i.czs, 1
  %i.czu = or disjoint i32 %i.czt, 1
  %i.czv = load i32, ptr %i.aib, align 8, !tbaa !67
  %i.czw = add nsw i32 %i.czu, %i.czv
  %i.czx = icmp sgt i32 %i.czw, 0
  br i1 %i.czx, label %.lr.ph19.preheader.i, label %encode_histogram_remap.exit

.lr.ph19.preheader.i:                             ; preds = %load_rgb_float32_frame.exit
  %i.czy = getelementptr inbounds [4 x i8], ptr @constinit.73, i64 %i.czp
  %i.czz = load i32, ptr %i.czy, align 4, !tbaa !72
  %i.daa = getelementptr inbounds [4 x i8], ptr @constinit.71, i64 %i.czp
  %i.dab = load i32, ptr %i.daa, align 4, !tbaa !72
  %i.dac = getelementptr inbounds [4 x i8], ptr @constinit, i64 %i.czp
  %i.dad = load i32, ptr %i.dac, align 4, !tbaa !72
  %i.dae = load i32, ptr %i.w, align 4, !tbaa !108
  %i.daf = load i32, ptr %i.u, align 8, !tbaa !107
  %i.dag = mul i32 %i.daf, %i.dae                 ; 2 uses
  %i.dah = and i32 %.fr1067, -2
  %.not162.i = icmp eq i32 %i.dah, 4              ; 2 uses
  %i.dai = icmp sgt i32 %i.dag, 0
  %i.daj = icmp eq i32 %.fr1067, 3                ; 2 uses
  %.not163.i = icmp ult i32 %.fr1067, 3
  %i.dak = sext i32 %i.czz to i64                 ; 3 uses
  %i.dal = sext i32 %i.czr to i64                 ; 5 uses
  %i.dam = sext i32 %i.dab to i64
  %i.dan = sext i32 %i.dad to i64
  %wide.trip.count.i635 = zext nneg i32 %i.dag to i64 ; 2 uses
  br label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %._crit_edge20.i, %.lr.ph19.preheader.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph19.preheader.i ], [ %indvars.iv.next50.i, %._crit_edge20.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.dao = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv49.i
  %i.dap = trunc nuw nsw i64 %indvars.iv49.i to i32 ; 2 uses
  br label %bb.hk

._crit_edge20.i:                                  ; preds = %bb.id
  %i.daq = shl nuw i32 1, %spec.select171.i
  %i.dar = sext i32 %spec.select171.i to i64
  %i.das = getelementptr inbounds [4100 x i8], ptr %i.h, i64 %i.dar
  %i.dat = call fastcc i32 @encode_float32_remap_segment(ptr noundef %1, i32 noundef %i.dap, i32 noundef %i.daq, ptr noundef %i.das, i32 noundef 1, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %i.dau = load i32, ptr %i.aij, align 4, !tbaa !58
  %i.dav = shl nsw i32 %i.dau, 1
  %i.daw = or disjoint i32 %i.dav, 1
  %i.dax = load i32, ptr %i.aib, align 8, !tbaa !67
  %i.day = add nsw i32 %i.daw, %i.dax
  %i.daz = sext i32 %i.day to i64
  %i.dba = icmp slt i64 %indvars.iv.next50.i, %i.daz
  br i1 %i.dba, label %.lr.ph19.i, label %encode_histogram_remap.exit, !llvm.loop !302

bb.hk:                                            ; preds = %bb.id, %.lr.ph19.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next47.i, %bb.id ] ; 7 uses
  %.015016.i = phi i32 [ 0, %.lr.ph19.i ], [ %spec.select171.i, %bb.id ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(94300) %i.i, i8 0, i64 94300, i1 false)
  %i.dbb = getelementptr inbounds [4100 x i8], ptr %i.h, i64 %indvars.iv46.i ; 3 uses
  %i.dbc = trunc nsw i64 %indvars.iv46.i to i32   ; 3 uses
  %i.dbd = shl nuw i32 1, %i.dbc                  ; 6 uses
  %i.dbe = shl nsw i32 %i.dbc, 1
  %i.dbf = sitofp nsz i32 %i.dbe to float
  %i.dbg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv46.i ; 3 uses
  %i.dbh = sitofp nsz i32 %i.dbd to float         ; 2 uses
  %i.dbi = fmul nnan nsz float %i.dbh, %i.dbh
  %i.dbj = bitcast float %i.dbi to i32
  %i.dbk = uitofp nsz nneg i32 %i.dbj to float
  %storemerge.i = select i1 %.not162.i, float %i.dbf, float %i.dbk ; 3 uses
  store float %storemerge.i, ptr %i.dbg, align 4, !tbaa !349
  br i1 %i.dai, label %.lr.ph7.split.preheader.i, label %.preheader.i636

.lr.ph7.split.preheader.i:                        ; preds = %bb.hk
  %i.dbl = load ptr, ptr %i.dao, align 8, !tbaa !110 ; 2 uses
  %i.dbm = sext i32 %i.dbd to i64                 ; 4 uses
  %i.dbn = icmp eq i64 %indvars.iv46.i, 9
  %or.cond.i642 = and i1 %i.daj, %i.dbn           ; 2 uses
  %i.dbo = icmp sgt i32 %i.dbd, 1                 ; 2 uses
  br i1 %.not162.i, label %.lr.ph7.split.i.us, label %.lr.ph7.split.i

.lr.ph7.split.i.us:                               ; preds = %.lr.ph7.split.preheader.i, %..loopexit_crit_edge.i.us
  %indvars.iv35.i.us = phi i64 [ %indvars.iv.next36.i.us, %..loopexit_crit_edge.i.us ], [ 0, %.lr.ph7.split.preheader.i ] ; 2 uses
  %.01475.i.us = phi i32 [ %i.dbv, %..loopexit_crit_edge.i.us ], [ -1, %.lr.ph7.split.preheader.i ]
  %.01484.i.us = phi i64 [ %i.dbr, %..loopexit_crit_edge.i.us ], [ -1, %.lr.ph7.split.preheader.i ] ; 4 uses
  %i.dbp = getelementptr inbounds nuw [8 x i8], ptr %i.dbl, i64 %indvars.iv35.i.us
  %i.dbq = load i32, ptr %i.dbp, align 4, !tbaa !130
  %i.dbr = zext i32 %i.dbq to i64                 ; 4 uses
  %i.dbs = add nuw nsw i64 %i.dbr, 1
  %i.dbt = mul nsw i64 %i.dbs, %i.dbm
  %i.dbu = lshr i64 %i.dbt, 32
  %i.dbv = trunc nuw i64 %i.dbu to i32            ; 3 uses
  %.not165.i.us = icmp eq i64 %.01484.i.us, %i.dbr
  br i1 %.not165.i.us, label %..loopexit_crit_edge.i.us, label %.lr.ph.i643.us

.lr.ph.i643.us:                                   ; preds = %.lr.ph7.split.i.us
  %i.dbw = add nsw i64 %.01484.i.us, 1
  %i.dbx = mul nsw i64 %i.dbw, %i.dbm
  %i.dby = ashr i64 %i.dbx, 32
  %i.dbz = getelementptr inbounds [92 x i8], ptr %i.i, i64 %i.dby
  %i.dca = sub nsw i64 %i.dbr, %.01484.i.us       ; 2 uses
  %i.dcb = icmp slt i64 %.01484.i.us, 0
  %i.dcc = add nsw i32 %i.dbv, -111               ; 2 uses
  %or.cond3.i.us = icmp ult i32 %i.dcc, 24
  %i.dcd = lshr i32 8388736, %i.dcc
  %spec.select1.i.us = select i1 %or.cond3.i.us, i32 %i.dcd, i32 1
  %.not167.i.us = icmp eq i32 %.01475.i.us, %i.dbv
  br label %.lr.ph.split.us.i649.us

.lr.ph.split.us.i649.us:                          ; preds = %bb.hq, %.lr.ph.i643.us
  %indvars.iv31.i.us = phi i64 [ %indvars.iv.next32.i.us, %bb.hq ], [ 0, %.lr.ph.i643.us ] ; 4 uses
  br i1 %i.dcb, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.split.us.i649.us
  %i.dce = icmp eq i64 %indvars.iv31.i.us, %i.dal
  %or.cond168.us.i.us = select i1 %or.cond.i642, i1 %i.dce, i1 false
  br i1 %or.cond168.us.i.us, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.dcf = shl i64 65537, %indvars.iv31.i.us
  %i.dcg = lshr i64 %i.dcf, 16
  %i.dch = trunc i64 %i.dcg to i32
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl, %.lr.ph.split.us.i649.us
  %.0144.us.i.us = phi i32 [ %i.dch, %bb.hm ], [ 1, %.lr.ph.split.us.i649.us ], [ %spec.select1.i.us, %bb.hl ] ; 4 uses
  %i.dci = sdiv i32 %.0144.us.i.us, 2
  %i.dcj = sext i32 %i.dci to i64
  %i.dck = add nsw i64 %i.dca, %i.dcj
  %i.dcl = sext i32 %.0144.us.i.us to i64         ; 2 uses
  %i.dcm = sdiv i64 %i.dck, %i.dcl
  %spec.select.us.i.us = call i64 @llvm.smax.i64(i64 %i.dcm, i64 1) ; 2 uses
  %i.dcn = icmp sgt i32 %.0144.us.i.us, 1
  br i1 %i.dcn, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %i.dco = mul nuw nsw i64 %spec.select.us.i.us, %i.dcl
  %i.dcp = sub nsw i64 %i.dca, %i.dco
  %i.dcq = call i64 @llvm.abs.i64(i64 %i.dcp, i1 true)
  %i.dcr = add nuw nsw i64 %i.dcq, 1
  %i.dcs = uitofp nneg i64 %i.dcr to float        ; 3 uses
  br i1 %i.dbo, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.dct = fmul nnan nsz float %i.dcs, %i.dcs
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %bb.hn
  %.0142.us.i.us = phi nsz float [ %i.dct, %bb.hp ], [ %i.dcs, %bb.ho ], [ 1.000000e+00, %bb.hn ]
  %i.dcu = uitofp nneg i64 %spec.select.us.i.us to float
  %i.dcv = fmul nsz float %.0142.us.i.us, %i.dcu  ; 2 uses
  %i.dcw = fmul nsz float %i.dcv, %i.dcv          ; 2 uses
  %i.dcx = sitofp nsz i32 %.0144.us.i.us to float
  %i.dcy = fmul nsz float %i.dcw, %i.dcx
  %.1143.us.i.us = select nsz i1 %.not167.i.us, float %i.dcw, float %i.dcy
  %i.dcz = call nsz float @llvm.log2.f32(float %.1143.us.i.us)
  %i.dda = getelementptr inbounds [4 x i8], ptr %i.dbz, i64 %indvars.iv31.i.us ; 2 uses
  %i.ddb = load float, ptr %i.dda, align 4, !tbaa !349
  %i.ddc = fadd nsz float %i.ddb, %i.dcz
  store float %i.ddc, ptr %i.dda, align 4, !tbaa !349
  %indvars.iv.next32.i.us = add nsw i64 %indvars.iv31.i.us, %i.dak ; 2 uses
  %.not166.us.i.us = icmp sgt i64 %indvars.iv.next32.i.us, %i.dal
  br i1 %.not166.us.i.us, label %..loopexit_crit_edge.i.us, label %.lr.ph.split.us.i649.us, !llvm.loop !303

..loopexit_crit_edge.i.us:                        ; preds = %bb.hq, %.lr.ph7.split.i.us
  %indvars.iv.next36.i.us = add nuw nsw i64 %indvars.iv35.i.us, 1 ; 2 uses
  %exitcond.not.i648.us = icmp eq i64 %indvars.iv.next36.i.us, %wide.trip.count.i635
  br i1 %exitcond.not.i648.us, label %.preheader.i636, label %.lr.ph7.split.i.us, !llvm.loop !304

.preheader.i636:                                  ; preds = %..loopexit_crit_edge.i, %..loopexit_crit_edge.i.us, %bb.hk
  %i.ddd = icmp eq i64 %indvars.iv46.i, 31
  br i1 %i.ddd, label %bb.hx, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.preheader.i636
  %i.dde = icmp eq i64 %indvars.iv46.i, 9
  %or.cond5.i = and i1 %i.daj, %i.dde
  %smax.i637 = call i32 @llvm.smax.i32(i32 %i.dbd, i32 1)
  %wide.trip.count44.i = zext nneg i32 %smax.i637 to i64
  br label %.lr.ph11.preheader.i

.lr.ph7.split.i:                                  ; preds = %.lr.ph7.split.preheader.i, %..loopexit_crit_edge.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %..loopexit_crit_edge.i ], [ 0, %.lr.ph7.split.preheader.i ] ; 2 uses
  %.01475.i = phi i32 [ %i.ddl, %..loopexit_crit_edge.i ], [ -1, %.lr.ph7.split.preheader.i ]
  %.01484.i = phi i64 [ %i.ddh, %..loopexit_crit_edge.i ], [ -1, %.lr.ph7.split.preheader.i ] ; 4 uses
  %i.ddf = getelementptr inbounds nuw [8 x i8], ptr %i.dbl, i64 %indvars.iv35.i
  %i.ddg = load i32, ptr %i.ddf, align 4, !tbaa !130
  %i.ddh = zext i32 %i.ddg to i64                 ; 4 uses
  %i.ddi = add nuw nsw i64 %i.ddh, 1
  %i.ddj = mul nsw i64 %i.ddi, %i.dbm
  %i.ddk = lshr i64 %i.ddj, 32
  %i.ddl = trunc nuw i64 %i.ddk to i32            ; 3 uses
  %.not165.i = icmp eq i64 %.01484.i, %i.ddh
  br i1 %.not165.i, label %..loopexit_crit_edge.i, label %.lr.ph.i643

.lr.ph.i643:                                      ; preds = %.lr.ph7.split.i
  %i.ddm = add nsw i64 %.01484.i, 1
  %i.ddn = mul nsw i64 %i.ddm, %i.dbm
  %i.ddo = ashr i64 %i.ddn, 32
  %i.ddp = getelementptr inbounds [92 x i8], ptr %i.i, i64 %i.ddo
  %i.ddq = sub nsw i64 %i.ddh, %.01484.i          ; 2 uses
  %i.ddr = icmp slt i64 %.01484.i, 0
  %i.dds = add nsw i32 %i.ddl, -111               ; 2 uses
  %or.cond3.i = icmp ult i32 %i.dds, 24
  %i.ddt = lshr i32 8388736, %i.dds
  %spec.select1.i = select i1 %or.cond3.i, i32 %i.ddt, i32 1
  %.not167.i = icmp eq i32 %.01475.i, %i.ddl
  br label %.lr.ph.split.i644

.lr.ph.split.i644:                                ; preds = %.lr.ph.i643, %bb.hw
  %indvars.iv.i645 = phi i64 [ %indvars.iv.next.i647, %bb.hw ], [ 0, %.lr.ph.i643 ] ; 4 uses
  br i1 %i.ddr, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph.split.i644
  %i.ddu = icmp eq i64 %indvars.iv.i645, %i.dal
  %or.cond168.i = select i1 %or.cond.i642, i1 %i.ddu, i1 false
  br i1 %or.cond168.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ddv = shl i64 65537, %indvars.iv.i645
  %i.ddw = lshr i64 %i.ddv, 16
  %i.ddx = trunc i64 %i.ddw to i32
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %.lr.ph.split.i644
  %.0144.i = phi i32 [ %i.ddx, %bb.hs ], [ 1, %.lr.ph.split.i644 ], [ %spec.select1.i, %bb.hr ] ; 4 uses
  %i.ddy = sdiv i32 %.0144.i, 2
  %i.ddz = sext i32 %i.ddy to i64
  %i.dea = add nsw i64 %i.ddq, %i.ddz
  %i.deb = sext i32 %.0144.i to i64               ; 2 uses
  %i.dec = sdiv i64 %i.dea, %i.deb
  %spec.select.i646 = call i64 @llvm.smax.i64(i64 %i.dec, i64 1) ; 2 uses
  %i.ded = icmp sgt i32 %.0144.i, 1
  br i1 %i.ded, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.dee = mul nuw nsw i64 %spec.select.i646, %i.deb
  %i.def = sub nsw i64 %i.ddq, %i.dee
  %i.deg = call i64 @llvm.abs.i64(i64 %i.def, i1 true)
  %i.deh = add nuw nsw i64 %i.deg, 1
  %i.dei = uitofp nneg i64 %i.deh to float        ; 3 uses
  br i1 %i.dbo, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.dej = fmul nnan nsz float %i.dei, %i.dei
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht
  %.0142.i = phi nsz float [ %i.dej, %bb.hv ], [ %i.dei, %bb.hu ], [ 1.000000e+00, %bb.ht ]
  %i.dek = uitofp nneg i64 %spec.select.i646 to float
  %i.del = fmul nsz float %.0142.i, %i.dek        ; 2 uses
  %i.dem = fmul nsz float %i.del, %i.del          ; 2 uses
  %i.den = sitofp nsz i32 %.0144.i to float
  %i.deo = fmul nsz float %i.dem, %i.den
  %.1143.i = select nsz i1 %.not167.i, float %i.dem, float %i.deo
  %i.dep = bitcast float %.1143.i to i32
  %i.deq = uitofp nsz i32 %i.dep to float
  %i.der = getelementptr inbounds [4 x i8], ptr %i.ddp, i64 %indvars.iv.i645 ; 2 uses
  %i.des = load float, ptr %i.der, align 4, !tbaa !349
  %i.det = fadd nsz float %i.des, %i.deq
  store float %i.det, ptr %i.der, align 4, !tbaa !349
  %indvars.iv.next.i647 = add nsw i64 %indvars.iv.i645, %i.dak ; 2 uses
  %.not166.i = icmp sgt i64 %indvars.iv.next.i647, %i.dal
  br i1 %.not166.i, label %..loopexit_crit_edge.i, label %.lr.ph.split.i644, !llvm.loop !303

..loopexit_crit_edge.i:                           ; preds = %bb.hw, %.lr.ph7.split.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond.not.i648 = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count.i635
  br i1 %exitcond.not.i648, label %.preheader.i636, label %.lr.ph7.split.i, !llvm.loop !304

._crit_edge14.i:                                  ; preds = %bb.ib
  store float %i.dft, ptr %i.dbg, align 4, !tbaa !349
  br label %bb.hx

bb.hx:                                            ; preds = %._crit_edge14.i, %.preheader.i636
  %i.deu = phi float [ %i.dft, %._crit_edge14.i ], [ %storemerge.i, %.preheader.i636 ]
  %i.dev = sext i32 %i.dbd to i64
  %i.dew = getelementptr inbounds [4 x i8], ptr %i.dbb, i64 %i.dev
  store i32 1, ptr %i.dew, align 4, !tbaa !72
  br i1 %.not163.i, label %bb.id, label %bb.ic

.lr.ph11.preheader.i:                             ; preds = %bb.ib, %.lr.ph13.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next42.i, %bb.ib ] ; 4 uses
  %i.dex = phi float [ %storemerge.i, %.lr.ph13.i ], [ %i.dft, %bb.ib ]
  %i.dey = getelementptr inbounds nuw [92 x i8], ptr %i.i, i64 %indvars.iv41.i ; 3 uses
  %.pre.i638 = load float, ptr %i.dey, align 4, !tbaa !349
  br label %.lr.ph11.i

._crit_edge.i639:                                 ; preds = %.lr.ph11.i
  %i.dez = icmp eq i32 %spec.select169.i, %i.czr
  %or.cond170.i = select i1 %or.cond5.i, i1 %i.dez, i1 false
  br i1 %or.cond170.i, label %bb.hy, label %bb.ia

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i
  %i.dfa = phi float [ %.pre.i638, %.lr.ph11.preheader.i ], [ %i.dff, %.lr.ph11.i ] ; 2 uses
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next39.i, %.lr.ph11.i ] ; 3 uses
  %.01409.i = phi i32 [ 0, %.lr.ph11.preheader.i ], [ %spec.select169.i, %.lr.ph11.i ]
  %i.dfb = getelementptr inbounds [4 x i8], ptr %i.dey, i64 %indvars.iv38.i
  %i.dfc = load float, ptr %i.dfb, align 4, !tbaa !349 ; 2 uses
  %i.dfd = fcmp nsz olt float %i.dfc, %i.dfa      ; 2 uses
  %i.dfe = trunc nsw i64 %indvars.iv38.i to i32
  %spec.select169.i = select i1 %i.dfd, i32 %i.dfe, i32 %.01409.i ; 4 uses
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, %i.dak ; 2 uses
  %.not164.i = icmp sgt i64 %indvars.iv.next39.i, %i.dal
  %i.dff = select i1 %i.dfd, float %i.dfc, float %i.dfa
  br i1 %.not164.i, label %._crit_edge.i639, label %.lr.ph11.i, !llvm.loop !305

bb.hy:                                            ; preds = %._crit_edge.i639
  %i.dfg = trunc i64 %indvars.iv41.i to i32
  %i.dfh = add i32 %i.dfg, -111                   ; 2 uses
  %or.cond7.i = icmp ult i32 %i.dfh, 24
  br i1 %or.cond7.i, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.dfi = lshr i32 8388736, %i.dfh
  %i.dfj = sub nsw i32 0, %i.dfi
  br label %bb.ib

bb.ia:                                            ; preds = %._crit_edge.i639
  %i.dfk = zext nneg i32 %spec.select169.i to i64
  %i.dfl = shl i64 65537, %i.dfk
  %i.dfm = lshr i64 %i.dfl, 16
  %i.dfn = trunc i64 %i.dfm to i32
  %i.dfo = sub i32 0, %i.dfn
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz, %bb.hy
  %.sink.i640 = phi i32 [ %i.dfj, %bb.hz ], [ %i.dfo, %bb.ia ], [ -1, %bb.hy ]
  %i.dfp = getelementptr inbounds nuw [4 x i8], ptr %i.dbb, i64 %indvars.iv41.i
  store i32 %.sink.i640, ptr %i.dfp, align 4, !tbaa !72
  %i.dfq = sext i32 %spec.select169.i to i64
  %i.dfr = getelementptr inbounds [4 x i8], ptr %i.dey, i64 %i.dfq
  %i.dfs = load float, ptr %i.dfr, align 4, !tbaa !349
  %i.dft = fadd nsz float %i.dex, %i.dfs          ; 3 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %._crit_edge14.i, label %.lr.ph11.preheader.i, !llvm.loop !306

bb.ic:                                            ; preds = %bb.hx
  %i.dfu = call fastcc i32 @encode_float32_remap_segment(ptr noundef %1, i32 noundef %i.dap, i32 noundef %i.dbd, ptr noundef %i.dbb, i32 noundef 0, i32 noundef 0)
  %i.dfv = sitofp nsz i32 %i.dfu to float         ; 2 uses
  store float %i.dfv, ptr %i.dbg, align 4, !tbaa !349
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hx
  %i.dfw = phi float [ %i.dfv, %bb.ic ], [ %i.deu, %bb.hx ]
  %i.dfx = sext i32 %.015016.i to i64
  %i.dfy = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.dfx
  %i.dfz = load float, ptr %i.dfy, align 4, !tbaa !349
  %i.dga = fcmp nsz olt float %i.dfw, %i.dfz
  %spec.select171.i = select i1 %i.dga, i32 %i.dbc, i32 %.015016.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, %i.dam ; 2 uses
  %.not.i641 = icmp sgt i64 %indvars.iv.next47.i, %i.dan
  br i1 %.not.i641, label %._crit_edge20.i, label %bb.hk, !llvm.loop !307

encode_histogram_remap.exit:                      ; preds = %bb.dq, %.lr.ph103.split.i, %._crit_edge20.i, %load_rgb_float32_frame.exit, %load_plane.exit491, %bb.am
  %i.dgb = icmp eq i32 %.0, 0                     ; 8 uses
  br i1 %i.dgb, label %bb.ie, label %bb.ih

bb.ie:                                            ; preds = %encode_histogram_remap.exit
  %i.dgc = load i32, ptr %i.ck, align 8, !tbaa !51
  %i.dgd = icmp sgt i32 %i.dgc, 2                 ; 2 uses
  %brmerge1066 = select i1 %i.dgd, i1 true, i1 %or.cond.not1070
  br i1 %brmerge1066, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.dge = zext i1 %i.dgd to i32
  %i.dgf = call i32 @ff_rac_terminate(ptr noundef nonnull %i.aj, i32 noundef %i.dge) #19
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %i.dgg = phi i32 [ %i.dgf, %bb.if ], [ 0, %bb.ie ] ; 2 uses
  store i32 %i.dgg, ptr %i.aja, align 8, !tbaa !122
  %i.dgh = load ptr, ptr %i.ajc, align 8, !tbaa !120 ; 2 uses
  %i.dgi = sext i32 %i.dgg to i64                 ; 2 uses
  %i.dgj = getelementptr inbounds i8, ptr %i.dgh, i64 %i.dgi
  %i.dgk = load ptr, ptr %i.ajd, align 8, !tbaa !119
  %i.dgl = ptrtoint ptr %i.dgk to i64
  %i.dgm = ptrtoint ptr %i.dgh to i64
  %i.dgn = add i64 %i.dgm, %i.dgi
  %i.dgo = sub i64 %i.dgl, %i.dgn
  %i.dgp = trunc i64 %i.dgo to i32                ; 2 uses
  %i.dgq = icmp slt i32 %i.dgp, 0
  %spec.select.i650 = select i1 %i.dgq, ptr null, ptr %i.dgj ; 3 uses
  %spec.select11.i = call i32 @llvm.smax.i32(i32 %i.dgp, i32 0)
  store ptr %spec.select.i650, ptr %i.aje, align 8, !tbaa !350
  %i.dgr = zext nneg i32 %spec.select11.i to i64
  %i.dgs = getelementptr inbounds nuw i8, ptr %spec.select.i650, i64 %i.dgr
  store ptr %i.dgs, ptr %i.ajf, align 8, !tbaa !132
  store ptr %spec.select.i650, ptr %i.ajg, align 8, !tbaa !133
  store i32 32, ptr %i.ajh, align 4, !tbaa !134
  store i32 0, ptr %i.ajb, align 8, !tbaa !135
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %encode_histogram_remap.exit
  %i.dgt = load i32, ptr %i.aho, align 8, !tbaa !56
  %i.dgu = icmp eq i32 %i.dgt, 0
  %i.dgv = load i32, ptr %i.ae, align 8, !tbaa !96 ; 2 uses
  br i1 %i.dgu, label %bb.ii, label %thread-pre-split801

bb.ii:                                            ; preds = %bb.ih
  switch i32 %i.dgv, label %bb.ij [
    i32 56, label %bb.in
    i32 255, label %bb.in
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.dgw = load i32, ptr %i.ak, align 8, !tbaa !65
  %i.dgx = load i32, ptr %i.ap, align 4, !tbaa !66
  %i.dgy = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.dgz = getelementptr inbounds i8, ptr %i.dgy, i64 %i.aw
  %i.dha = load i32, ptr %i.ay, align 8, !tbaa !72 ; 2 uses
  %i.dhb = mul nsw i32 %i.dha, %i.ab
  %i.dhc = sext i32 %i.dhb to i64
  %i.dhd = getelementptr inbounds i8, ptr %i.dgz, i64 %i.dhc
  %i.dhe = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dhd, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.dha, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %.0) ; 2 uses
  %i.dhf = load i32, ptr %i.aij, align 4, !tbaa !58
  %.not322 = icmp eq i32 %i.dhf, 0
  br i1 %.not322, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.dhg = ashr i32 %i.ab, %i.dgx                 ; 2 uses
  %i.dhh = ashr i32 %i.z, %i.dgw
  %i.dhi = load ptr, ptr %i.be, align 8, !tbaa !71
  %i.dhj = mul nsw i32 %i.dhh, %i.ai
end_hunk_0
