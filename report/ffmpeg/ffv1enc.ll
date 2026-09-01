Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffv1enc?download=true
inline.NumInlined: 336
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 53
begin_hunk_0_@encode_slice:bb.a
  %i.cye = load i32, ptr %.1158.i, align 4, !tbaa !288
  %i.cyf = icmp ult i32 %i.cye, %i.cyd
  br i1 %i.cyf, label %bb.gz, label %.critedge18.i

bb.gz:                                            ; preds = %bb.gy
  %i.cyg = getelementptr inbounds nuw i8, ptr %.1158.i, i64 8 ; 3 uses
  %.not610.i = icmp ugt ptr %i.cyg, %.0504164.i
  br i1 %.not610.i, label %.critedge18.i, label %bb.gy, !llvm.loop !309

.critedge18.i:                                    ; preds = %bb.gz, %bb.gy
  %.1.lcssa.i = phi ptr [ %i.cyg, %bb.gz ], [ %.1158.i, %bb.gy ] ; 7 uses
  %.not611159.i = icmp ugt ptr %.1.lcssa.i, %.0504164.i
  br i1 %.not611159.i, label %.critedge639.i, label %.lr.ph161.i

.lr.ph161.i:                                      ; preds = %.critedge18.i, %bb.ha
  %.1505160.i = phi ptr [ %i.cyj, %bb.ha ], [ %.0504164.i, %.critedge18.i ] ; 5 uses
  %i.cyh = load i32, ptr %.1505160.i, align 4, !tbaa !288
  %i.cyi = icmp ugt i32 %i.cyh, %i.cyd
  br i1 %i.cyi, label %bb.ha, label %.critedge20.i

bb.ha:                                            ; preds = %.lr.ph161.i
  %i.cyj = getelementptr inbounds i8, ptr %.1505160.i, i64 -8 ; 3 uses
  %.not611.i = icmp ugt ptr %.1.lcssa.i, %i.cyj
  br i1 %.not611.i, label %.critedge639.i, label %.lr.ph161.i, !llvm.loop !310

.critedge20.i:                                    ; preds = %.lr.ph161.i
  %i.cyk = load i64, ptr %.1505160.i, align 4
  %i.cyl = load i64, ptr %.1.lcssa.i, align 4
  store i64 %i.cyl, ptr %.1505160.i, align 4
  store i64 %i.cyk, ptr %.1.lcssa.i, align 4
  %i.cym = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 8
  %i.cyn = getelementptr inbounds i8, ptr %.1505160.i, i64 -8
  br label %.critedge639.i

.critedge639.i:                                   ; preds = %bb.ha, %.critedge20.i, %.critedge18.i
  %.2506.i = phi ptr [ %i.cyn, %.critedge20.i ], [ %.0504164.i, %.critedge18.i ], [ %i.cyj, %bb.ha ] ; 3 uses
  %.2.i = phi ptr [ %i.cym, %.critedge20.i ], [ %.1.lcssa.i, %.critedge18.i ], [ %.1.lcssa.i, %bb.ha ] ; 3 uses
  %.not607.i = icmp ugt ptr %.2.i, %.2506.i
  br i1 %.not607.i, label %._crit_edge166.loopexit.i, label %.preheader.i626, !llvm.loop !311

._crit_edge166.loopexit.i:                        ; preds = %.critedge639.i
  %.pre259.i = load i64, ptr %i.cxb, align 4
  br label %._crit_edge166.i

._crit_edge166.i:                                 ; preds = %._crit_edge166.loopexit.i, %bb.gx
  %i.cyo = phi i64 [ %i.cyb, %bb.gx ], [ %.pre259.i, %._crit_edge166.loopexit.i ]
  %.0504.lcssa.i = phi ptr [ %i.cxd, %bb.gx ], [ %.2506.i, %._crit_edge166.loopexit.i ] ; 2 uses
  %.0503.lcssa.i = phi ptr [ %i.cxe, %bb.gx ], [ %.2.i, %._crit_edge166.loopexit.i ] ; 7 uses
  %i.cyp = load i64, ptr %.0503.lcssa.i, align 4
  store i64 %i.cyo, ptr %.0503.lcssa.i, align 4
  store i64 %i.cyp, ptr %i.cxb, align 4
  %.not608.i = icmp eq i32 %.1508.i, 0
  br i1 %.not608.i, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %._crit_edge166.i
  %i.cyq = getelementptr inbounds i8, ptr %.0503.lcssa.i, i64 -8
  %i.cyr = icmp eq ptr %i.cxj, %i.cyq
  %i.cys = icmp eq ptr %i.cxj, %.0503.lcssa.i
  %or.cond640.i = or i1 %i.cys, %i.cyr
  br i1 %or.cond640.i, label %.preheader54.i, label %bb.hd

.preheader54.i:                                   ; preds = %bb.hb, %bb.hc
  %.0.i = phi ptr [ %i.cyv, %bb.hc ], [ %.0512170.i, %bb.hb ] ; 4 uses
  %i.cyt = icmp ult ptr %.0.i, %.0509171.i
  br i1 %i.cyt, label %bb.hc, label %.critedge22.i

bb.hc:                                            ; preds = %.preheader54.i
  %i.cyu = load i32, ptr %.0.i, align 4, !tbaa !288
  %i.cyv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.cyw = load i32, ptr %i.cyv, align 4, !tbaa !288
  %.not609.i = icmp ugt i32 %i.cyu, %i.cyw
  br i1 %.not609.i, label %.critedge22.i, label %.preheader54.i, !llvm.loop !312

.critedge22.i:                                    ; preds = %bb.hc, %.preheader54.i
  %i.cyx = icmp eq ptr %.0.i, %.0509171.i
  br i1 %i.cyx, label %.thread49.loopexit.i, label %bb.hd

bb.hd:                                            ; preds = %.critedge22.i, %bb.hb, %._crit_edge166.i
  %i.cyy = ptrtoint ptr %.0503.lcssa.i to i64     ; 2 uses
  %i.cyz = sub i64 %i.cxf, %i.cyy
  %i.cza = sub i64 %i.cyy, %i.cxg
  %i.czb = icmp slt i64 %i.cyz, %i.cza
  br i1 %i.czb, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.czc = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv253.i ; 2 uses
  store ptr %.0512170.i, ptr %i.czc, align 16, !tbaa !293
  %i.czd = getelementptr inbounds nuw i8, ptr %i.czc, i64 8
  store ptr %.0504.lcssa.i, ptr %i.czd, align 8, !tbaa !293
  %i.cze = getelementptr inbounds nuw i8, ptr %.0503.lcssa.i, i64 8
  br label %bb.hg

bb.hf:                                            ; preds = %bb.hd
  %i.czf = getelementptr inbounds nuw i8, ptr %.0503.lcssa.i, i64 8
  %i.czg = getelementptr inbounds [16 x i8], ptr %i.m, i64 %indvars.iv253.i ; 2 uses
  store ptr %i.czf, ptr %i.czg, align 16, !tbaa !293
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 8
  store ptr %.0509171.i, ptr %i.czh, align 8, !tbaa !293
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  %.1513.i = phi ptr [ %i.cze, %bb.he ], [ %.0512170.i, %bb.hf ] ; 2 uses
  %.1510.i = phi ptr [ %.0509171.i, %bb.he ], [ %.0504.lcssa.i, %bb.hf ] ; 2 uses
  %indvars.iv.next254.i = add nsw i64 %indvars.iv253.i, 1 ; 2 uses
  %i.czi = icmp ult ptr %.1513.i, %.1510.i
  br i1 %i.czi, label %.lr.ph173.i, label %.thread49.loopexit.i

bb.hh:                                            ; preds = %.lr.ph173.i
  %i.czj = trunc nsw i64 %indvars.iv253.i to i32  ; 2 uses
  %i.czk = load i32, ptr %.0512170.i, align 4, !tbaa !288
  %i.czl = load i32, ptr %.0509171.i, align 4, !tbaa !288
  %i.czm = icmp ugt i32 %i.czk, %i.czl
  br i1 %i.czm, label %bb.hi, label %.thread49.i

bb.hi:                                            ; preds = %bb.hh
  %i.czn = load i64, ptr %.0509171.i, align 4
  %i.czo = load i64, ptr %.0512170.i, align 4
  store i64 %i.czo, ptr %.0509171.i, align 4
  store i64 %i.czn, ptr %.0512170.i, align 4
  br label %.thread49.i

.thread49.loopexit.i:                             ; preds = %bb.hg, %.critedge22.i, %bb.gw
  %.151666.ph.in.i = phi i64 [ %indvars.iv253.i, %.critedge22.i ], [ %indvars.iv253.i, %bb.gw ], [ %indvars.iv.next254.i, %bb.hg ]
  %.151666.ph.i = trunc i64 %.151666.ph.in.i to i32
  br label %.thread49.i

.thread49.i:                                      ; preds = %.thread49.loopexit.i, %bb.hi, %bb.hh, %bb.gn
  %.151666.i = phi i32 [ %i.czj, %bb.hi ], [ %i.czj, %bb.hh ], [ %i.cws, %bb.gn ], [ %.151666.ph.i, %.thread49.loopexit.i ] ; 2 uses
  %.not606.i = icmp eq i32 %.151666.i, 0
  br i1 %.not606.i, label %bb.hj, label %bb.gn, !llvm.loop !313

bb.hj:                                            ; preds = %.thread49.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br label %load_rgb_float32_frame.exit

load_rgb_float32_frame.exit:                      ; preds = %bb.gl, %bb.hj
  %i.czp = load i32, ptr %i.aix, align 4, !tbaa !314
  %.fr1067 = freeze i32 %i.czp                    ; 4 uses
  %i.czq = sext i32 %.fr1067 to i64               ; 4 uses
  %i.czr = getelementptr inbounds [4 x i8], ptr @constinit.72, i64 %i.czq
  %i.czs = load i32, ptr %i.czr, align 4, !tbaa !63 ; 2 uses
  %i.czt = load i32, ptr %i.aij, align 4, !tbaa !46
  %i.czu = shl nsw i32 %i.czt, 1
  %i.czv = or disjoint i32 %i.czu, 1
  %i.czw = load i32, ptr %i.aib, align 8, !tbaa !56
  %i.czx = add nsw i32 %i.czv, %i.czw
  %i.czy = icmp sgt i32 %i.czx, 0
  br i1 %i.czy, label %.lr.ph19.preheader.i, label %encode_histogram_remap.exit

.lr.ph19.preheader.i:                             ; preds = %load_rgb_float32_frame.exit
  %i.czz = getelementptr inbounds [4 x i8], ptr @constinit.73, i64 %i.czq
  %i.daa = load i32, ptr %i.czz, align 4, !tbaa !63
  %i.dab = getelementptr inbounds [4 x i8], ptr @constinit.71, i64 %i.czq
  %i.dac = load i32, ptr %i.dab, align 4, !tbaa !63
  %i.dad = getelementptr inbounds [4 x i8], ptr @constinit, i64 %i.czq
  %i.dae = load i32, ptr %i.dad, align 4, !tbaa !63
  %i.daf = load i32, ptr %i.w, align 4, !tbaa !144
  %i.dag = load i32, ptr %i.u, align 8, !tbaa !143
  %i.dah = mul i32 %i.dag, %i.daf                 ; 2 uses
  %i.dai = and i32 %.fr1067, -2
  %.not162.i = icmp eq i32 %i.dai, 4              ; 2 uses
  %i.daj = icmp sgt i32 %i.dah, 0
  %i.dak = icmp eq i32 %.fr1067, 3                ; 2 uses
  %.not163.i = icmp ult i32 %.fr1067, 3
  %i.dal = sext i32 %i.daa to i64                 ; 3 uses
  %i.dam = sext i32 %i.czs to i64                 ; 5 uses
  %i.dan = sext i32 %i.dac to i64
  %i.dao = sext i32 %i.dae to i64
  %wide.trip.count.i635 = zext nneg i32 %i.dah to i64 ; 2 uses
  br label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %._crit_edge20.i, %.lr.ph19.preheader.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph19.preheader.i ], [ %indvars.iv.next50.i, %._crit_edge20.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.dap = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %indvars.iv49.i
  %i.daq = trunc nuw nsw i64 %indvars.iv49.i to i32 ; 2 uses
  br label %bb.hk

._crit_edge20.i:                                  ; preds = %bb.id
  %i.dar = shl nuw i32 1, %spec.select171.i
  %i.das = sext i32 %spec.select171.i to i64
  %i.dat = getelementptr inbounds [4100 x i8], ptr %i.h, i64 %i.das
  %i.dau = call fastcc i32 @encode_float32_remap_segment(ptr noundef %1, i32 noundef %i.daq, i32 noundef %i.dar, ptr noundef %i.dat, i32 noundef 1, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %i.dav = load i32, ptr %i.aij, align 4, !tbaa !46
  %i.daw = shl nsw i32 %i.dav, 1
  %i.dax = or disjoint i32 %i.daw, 1
  %i.day = load i32, ptr %i.aib, align 8, !tbaa !56
  %i.daz = add nsw i32 %i.dax, %i.day
  %i.dba = sext i32 %i.daz to i64
  %i.dbb = icmp slt i64 %indvars.iv.next50.i, %i.dba
  br i1 %i.dbb, label %.lr.ph19.i, label %encode_histogram_remap.exit, !llvm.loop !315

bb.hk:                                            ; preds = %bb.id, %.lr.ph19.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next47.i, %bb.id ] ; 7 uses
  %.015016.i = phi i32 [ 0, %.lr.ph19.i ], [ %spec.select171.i, %bb.id ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(94300) %i.i, i8 0, i64 94300, i1 false)
  %i.dbc = getelementptr inbounds [4100 x i8], ptr %i.h, i64 %indvars.iv46.i ; 3 uses
  %3 = trunc nsw i64 %indvars.iv46.i to i32       ; 3 uses
  %4 = shl nuw i32 1, %3                          ; 6 uses
  %i.dbd = shl nsw i32 %3, 1
  %i.dbe = sitofp nsz i32 %i.dbd to float
  %i.dbf = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv46.i ; 3 uses
  %i.dbg = sitofp nsz i32 %4 to float             ; 2 uses
  %i.dbh = fmul nnan nsz float %i.dbg, %i.dbg
  %i.dbi = bitcast float %i.dbh to i32
  %i.dbj = uitofp nsz nneg i32 %i.dbi to float
  %storemerge.i = select i1 %.not162.i, float %i.dbe, float %i.dbj ; 3 uses
  store float %storemerge.i, ptr %i.dbf, align 4, !tbaa !316
  br i1 %i.daj, label %.lr.ph7.split.preheader.i, label %.preheader.i636

.lr.ph7.split.preheader.i:                        ; preds = %bb.hk
  %i.dbk = load ptr, ptr %i.dap, align 8, !tbaa !145 ; 2 uses
  %5 = sext i32 %4 to i64                         ; 4 uses
  %i.dbl = icmp eq i64 %indvars.iv46.i, 9
  %or.cond.i642 = and i1 %i.dak, %i.dbl           ; 2 uses
  %i.dbm = icmp sgt i32 %4, 1                     ; 2 uses
  br i1 %.not162.i, label %.lr.ph7.split.i.us, label %.lr.ph7.split.i

.lr.ph7.split.i.us:                               ; preds = %.lr.ph7.split.preheader.i, %..loopexit_crit_edge.i.us
  %indvars.iv35.i.us = phi i64 [ %indvars.iv.next36.i.us, %..loopexit_crit_edge.i.us ], [ 0, %.lr.ph7.split.preheader.i ] ; 2 uses
  %.01475.i.us = phi i32 [ %i.dbt, %..loopexit_crit_edge.i.us ], [ -1, %.lr.ph7.split.preheader.i ]
  %.01484.i.us = phi i64 [ %i.dbp, %..loopexit_crit_edge.i.us ], [ -1, %.lr.ph7.split.preheader.i ] ; 4 uses
  %i.dbn = getelementptr inbounds nuw [8 x i8], ptr %i.dbk, i64 %indvars.iv35.i.us
  %i.dbo = load i32, ptr %i.dbn, align 4, !tbaa !288
  %i.dbp = zext i32 %i.dbo to i64                 ; 4 uses
  %i.dbq = add nuw nsw i64 %i.dbp, 1
  %i.dbr = mul nsw i64 %i.dbq, %5
  %i.dbs = lshr i64 %i.dbr, 32
  %i.dbt = trunc nuw i64 %i.dbs to i32            ; 3 uses
  %.not165.i.us = icmp eq i64 %.01484.i.us, %i.dbp
  br i1 %.not165.i.us, label %..loopexit_crit_edge.i.us, label %.lr.ph.i643.us

.lr.ph.i643.us:                                   ; preds = %.lr.ph7.split.i.us
  %i.dbu = add nsw i64 %.01484.i.us, 1
  %i.dbv = mul nsw i64 %i.dbu, %5
  %i.dbw = ashr i64 %i.dbv, 32
  %i.dbx = getelementptr inbounds [92 x i8], ptr %i.i, i64 %i.dbw
  %i.dby = sub nsw i64 %i.dbp, %.01484.i.us       ; 2 uses
  %i.dbz = icmp slt i64 %.01484.i.us, 0
  %i.dca = add nsw i32 %i.dbt, -111               ; 2 uses
  %or.cond3.i.us = icmp ult i32 %i.dca, 24
  %i.dcb = lshr i32 8388736, %i.dca
  %spec.select1.i.us = select i1 %or.cond3.i.us, i32 %i.dcb, i32 1
  %.not167.i.us = icmp eq i32 %.01475.i.us, %i.dbt
  br label %.lr.ph.split.us.i649.us

.lr.ph.split.us.i649.us:                          ; preds = %.lr.ph.i643.us, %bb.hq
  %indvars.iv31.i.us = phi i64 [ %indvars.iv.next32.i.us, %bb.hq ], [ 0, %.lr.ph.i643.us ] ; 4 uses
  br i1 %i.dbz, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.split.us.i649.us
  %i.dcc = icmp eq i64 %indvars.iv31.i.us, %i.dam
  %or.cond168.us.i.us = select i1 %or.cond.i642, i1 %i.dcc, i1 false
  br i1 %or.cond168.us.i.us, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.dcd = shl i64 65537, %indvars.iv31.i.us
  %i.dce = lshr i64 %i.dcd, 16
  %i.dcf = trunc i64 %i.dce to i32
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl, %.lr.ph.split.us.i649.us
  %.0144.us.i.us = phi i32 [ %i.dcf, %bb.hm ], [ 1, %.lr.ph.split.us.i649.us ], [ %spec.select1.i.us, %bb.hl ] ; 4 uses
  %i.dcg = sdiv i32 %.0144.us.i.us, 2
  %i.dch = sext i32 %i.dcg to i64
  %i.dci = add nsw i64 %i.dby, %i.dch
  %i.dcj = sext i32 %.0144.us.i.us to i64         ; 2 uses
  %i.dck = sdiv i64 %i.dci, %i.dcj
  %spec.select.us.i.us = call i64 @llvm.smax.i64(i64 %i.dck, i64 1) ; 2 uses
  %i.dcl = icmp sgt i32 %.0144.us.i.us, 1
  br i1 %i.dcl, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %i.dcm = mul nuw nsw i64 %spec.select.us.i.us, %i.dcj
  %i.dcn = sub nsw i64 %i.dby, %i.dcm
  %i.dco = call i64 @llvm.abs.i64(i64 %i.dcn, i1 true)
  %i.dcp = add nuw nsw i64 %i.dco, 1
  %i.dcq = uitofp nneg i64 %i.dcp to float        ; 3 uses
  br i1 %i.dbm, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.dcr = fmul nnan nsz float %i.dcq, %i.dcq
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho, %bb.hn
  %.0142.us.i.us = phi nsz float [ %i.dcr, %bb.hp ], [ %i.dcq, %bb.ho ], [ 1.000000e+00, %bb.hn ]
  %i.dcs = uitofp nneg i64 %spec.select.us.i.us to float
  %i.dct = fmul nsz float %.0142.us.i.us, %i.dcs  ; 2 uses
  %i.dcu = fmul nsz float %i.dct, %i.dct          ; 2 uses
  %i.dcv = sitofp nsz i32 %.0144.us.i.us to float
  %i.dcw = fmul nsz float %i.dcu, %i.dcv
  %.1143.us.i.us = select nsz i1 %.not167.i.us, float %i.dcu, float %i.dcw
  %i.dcx = call nsz float @llvm.log2.f32(float %.1143.us.i.us)
  %i.dcy = getelementptr inbounds [4 x i8], ptr %i.dbx, i64 %indvars.iv31.i.us ; 2 uses
  %i.dcz = load float, ptr %i.dcy, align 4, !tbaa !316
  %i.dda = fadd nsz float %i.dcz, %i.dcx
  store float %i.dda, ptr %i.dcy, align 4, !tbaa !316
  %indvars.iv.next32.i.us = add nsw i64 %indvars.iv31.i.us, %i.dal ; 2 uses
  %.not166.us.i.us = icmp sgt i64 %indvars.iv.next32.i.us, %i.dam
  br i1 %.not166.us.i.us, label %..loopexit_crit_edge.i.us, label %.lr.ph.split.us.i649.us, !llvm.loop !317

..loopexit_crit_edge.i.us:                        ; preds = %bb.hq, %.lr.ph7.split.i.us
  %indvars.iv.next36.i.us = add nuw nsw i64 %indvars.iv35.i.us, 1 ; 2 uses
  %exitcond.not.i648.us = icmp eq i64 %indvars.iv.next36.i.us, %wide.trip.count.i635
  br i1 %exitcond.not.i648.us, label %.preheader.i636, label %.lr.ph7.split.i.us, !llvm.loop !318

.preheader.i636:                                  ; preds = %..loopexit_crit_edge.i, %..loopexit_crit_edge.i.us, %bb.hk
  %i.ddb = icmp eq i64 %indvars.iv46.i, 31
  br i1 %i.ddb, label %bb.hx, label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.preheader.i636
  %i.ddc = icmp eq i64 %indvars.iv46.i, 9
  %or.cond5.i = and i1 %i.dak, %i.ddc
  %smax.i637 = call i32 @llvm.smax.i32(i32 %4, i32 1)
  %wide.trip.count44.i = zext nneg i32 %smax.i637 to i64
  br label %.lr.ph11.preheader.i

.lr.ph7.split.i:                                  ; preds = %.lr.ph7.split.preheader.i, %..loopexit_crit_edge.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %..loopexit_crit_edge.i ], [ 0, %.lr.ph7.split.preheader.i ] ; 2 uses
  %.01475.i = phi i32 [ %i.ddj, %..loopexit_crit_edge.i ], [ -1, %.lr.ph7.split.preheader.i ]
  %.01484.i = phi i64 [ %i.ddf, %..loopexit_crit_edge.i ], [ -1, %.lr.ph7.split.preheader.i ] ; 4 uses
  %i.ddd = getelementptr inbounds nuw [8 x i8], ptr %i.dbk, i64 %indvars.iv35.i
  %i.dde = load i32, ptr %i.ddd, align 4, !tbaa !288
  %i.ddf = zext i32 %i.dde to i64                 ; 4 uses
  %i.ddg = add nuw nsw i64 %i.ddf, 1
  %i.ddh = mul nsw i64 %i.ddg, %5
  %i.ddi = lshr i64 %i.ddh, 32
  %i.ddj = trunc nuw i64 %i.ddi to i32            ; 3 uses
  %.not165.i = icmp eq i64 %.01484.i, %i.ddf
  br i1 %.not165.i, label %..loopexit_crit_edge.i, label %.lr.ph.i643

.lr.ph.i643:                                      ; preds = %.lr.ph7.split.i
  %i.ddk = add nsw i64 %.01484.i, 1
  %i.ddl = mul nsw i64 %i.ddk, %5
  %i.ddm = ashr i64 %i.ddl, 32
  %i.ddn = getelementptr inbounds [92 x i8], ptr %i.i, i64 %i.ddm
  %i.ddo = sub nsw i64 %i.ddf, %.01484.i          ; 2 uses
  %i.ddp = icmp slt i64 %.01484.i, 0
  %i.ddq = add nsw i32 %i.ddj, -111               ; 2 uses
  %or.cond3.i = icmp ult i32 %i.ddq, 24
  %i.ddr = lshr i32 8388736, %i.ddq
  %spec.select1.i = select i1 %or.cond3.i, i32 %i.ddr, i32 1
  %.not167.i = icmp eq i32 %.01475.i, %i.ddj
  br label %.lr.ph.split.i644

.lr.ph.split.i644:                                ; preds = %.lr.ph.i643, %bb.hw
  %indvars.iv.i645 = phi i64 [ %indvars.iv.next.i647, %bb.hw ], [ 0, %.lr.ph.i643 ] ; 4 uses
  br i1 %i.ddp, label %bb.ht, label %bb.hr

bb.hr:                                            ; preds = %.lr.ph.split.i644
  %i.dds = icmp eq i64 %indvars.iv.i645, %i.dam
  %or.cond168.i = select i1 %or.cond.i642, i1 %i.dds, i1 false
  br i1 %or.cond168.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ddt = shl i64 65537, %indvars.iv.i645
  %i.ddu = lshr i64 %i.ddt, 16
  %i.ddv = trunc i64 %i.ddu to i32
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %.lr.ph.split.i644
  %.0144.i = phi i32 [ %i.ddv, %bb.hs ], [ 1, %.lr.ph.split.i644 ], [ %spec.select1.i, %bb.hr ] ; 4 uses
  %i.ddw = sdiv i32 %.0144.i, 2
  %i.ddx = sext i32 %i.ddw to i64
  %i.ddy = add nsw i64 %i.ddo, %i.ddx
  %i.ddz = sext i32 %.0144.i to i64               ; 2 uses
  %i.dea = sdiv i64 %i.ddy, %i.ddz
  %spec.select.i646 = call i64 @llvm.smax.i64(i64 %i.dea, i64 1) ; 2 uses
  %i.deb = icmp sgt i32 %.0144.i, 1
  br i1 %i.deb, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.dec = mul nuw nsw i64 %spec.select.i646, %i.ddz
  %i.ded = sub nsw i64 %i.ddo, %i.dec
  %i.dee = call i64 @llvm.abs.i64(i64 %i.ded, i1 true)
  %i.def = add nuw nsw i64 %i.dee, 1
  %i.deg = uitofp nneg i64 %i.def to float        ; 3 uses
  br i1 %i.dbm, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.deh = fmul nnan nsz float %i.deg, %i.deg
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht
  %.0142.i = phi nsz float [ %i.deh, %bb.hv ], [ %i.deg, %bb.hu ], [ 1.000000e+00, %bb.ht ]
  %i.dei = uitofp nneg i64 %spec.select.i646 to float
  %i.dej = fmul nsz float %.0142.i, %i.dei        ; 2 uses
  %i.dek = fmul nsz float %i.dej, %i.dej          ; 2 uses
  %i.del = sitofp nsz i32 %.0144.i to float
  %i.dem = fmul nsz float %i.dek, %i.del
  %.1143.i = select nsz i1 %.not167.i, float %i.dek, float %i.dem
  %i.den = bitcast float %.1143.i to i32
  %i.deo = uitofp nsz i32 %i.den to float
  %i.dep = getelementptr inbounds [4 x i8], ptr %i.ddn, i64 %indvars.iv.i645 ; 2 uses
  %i.deq = load float, ptr %i.dep, align 4, !tbaa !316
  %i.der = fadd nsz float %i.deq, %i.deo
  store float %i.der, ptr %i.dep, align 4, !tbaa !316
  %indvars.iv.next.i647 = add nsw i64 %indvars.iv.i645, %i.dal ; 2 uses
  %.not166.i = icmp sgt i64 %indvars.iv.next.i647, %i.dam
  br i1 %.not166.i, label %..loopexit_crit_edge.i, label %.lr.ph.split.i644, !llvm.loop !317

..loopexit_crit_edge.i:                           ; preds = %bb.hw, %.lr.ph7.split.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond.not.i648 = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count.i635
  br i1 %exitcond.not.i648, label %.preheader.i636, label %.lr.ph7.split.i, !llvm.loop !318

._crit_edge14.i:                                  ; preds = %bb.ib
  store float %i.dfq, ptr %i.dbf, align 4, !tbaa !316
  br label %bb.hx

bb.hx:                                            ; preds = %._crit_edge14.i, %.preheader.i636
  %i.des = phi float [ %i.dfq, %._crit_edge14.i ], [ %storemerge.i, %.preheader.i636 ]
  %6 = sext i32 %4 to i64
  %i.det = getelementptr inbounds [4 x i8], ptr %i.dbc, i64 %6
  store i32 1, ptr %i.det, align 4, !tbaa !63
  br i1 %.not163.i, label %bb.id, label %bb.ic

.lr.ph11.preheader.i:                             ; preds = %bb.ib, %.lr.ph13.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next42.i, %bb.ib ] ; 4 uses
  %i.deu = phi float [ %storemerge.i, %.lr.ph13.i ], [ %i.dfq, %bb.ib ]
  %i.dev = getelementptr inbounds nuw [92 x i8], ptr %i.i, i64 %indvars.iv41.i ; 3 uses
  %.pre.i638 = load float, ptr %i.dev, align 4, !tbaa !316
  br label %.lr.ph11.i

._crit_edge.i639:                                 ; preds = %.lr.ph11.i
  %i.dew = icmp eq i32 %spec.select169.i, %i.czs
  %or.cond170.i = select i1 %or.cond5.i, i1 %i.dew, i1 false
  br i1 %or.cond170.i, label %bb.hy, label %bb.ia

.lr.ph11.i:                                       ; preds = %.lr.ph11.i, %.lr.ph11.preheader.i
  %i.dex = phi float [ %.pre.i638, %.lr.ph11.preheader.i ], [ %i.dfc, %.lr.ph11.i ] ; 2 uses
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph11.preheader.i ], [ %indvars.iv.next39.i, %.lr.ph11.i ] ; 3 uses
  %.01409.i = phi i32 [ 0, %.lr.ph11.preheader.i ], [ %spec.select169.i, %.lr.ph11.i ]
  %i.dey = getelementptr inbounds [4 x i8], ptr %i.dev, i64 %indvars.iv38.i
  %i.dez = load float, ptr %i.dey, align 4, !tbaa !316 ; 2 uses
  %i.dfa = fcmp nsz olt float %i.dez, %i.dex      ; 2 uses
  %i.dfb = trunc nsw i64 %indvars.iv38.i to i32
  %spec.select169.i = select i1 %i.dfa, i32 %i.dfb, i32 %.01409.i ; 4 uses
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, %i.dal ; 2 uses
  %.not164.i = icmp sgt i64 %indvars.iv.next39.i, %i.dam
  %i.dfc = select i1 %i.dfa, float %i.dez, float %i.dex
  br i1 %.not164.i, label %._crit_edge.i639, label %.lr.ph11.i, !llvm.loop !319

bb.hy:                                            ; preds = %._crit_edge.i639
  %i.dfd = trunc i64 %indvars.iv41.i to i32
  %i.dfe = add i32 %i.dfd, -111                   ; 2 uses
  %or.cond7.i = icmp ult i32 %i.dfe, 24
  br i1 %or.cond7.i, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.dff = lshr i32 8388736, %i.dfe
  %i.dfg = sub nsw i32 0, %i.dff
  br label %bb.ib

bb.ia:                                            ; preds = %._crit_edge.i639
  %i.dfh = zext nneg i32 %spec.select169.i to i64
  %i.dfi = shl i64 65537, %i.dfh
  %i.dfj = lshr i64 %i.dfi, 16
  %i.dfk = trunc i64 %i.dfj to i32
  %i.dfl = sub i32 0, %i.dfk
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz, %bb.hy
  %.sink.i640 = phi i32 [ %i.dfg, %bb.hz ], [ %i.dfl, %bb.ia ], [ -1, %bb.hy ]
  %i.dfm = getelementptr inbounds nuw [4 x i8], ptr %i.dbc, i64 %indvars.iv41.i
  store i32 %.sink.i640, ptr %i.dfm, align 4, !tbaa !63
  %i.dfn = sext i32 %spec.select169.i to i64
  %i.dfo = getelementptr inbounds [4 x i8], ptr %i.dev, i64 %i.dfn
  %i.dfp = load float, ptr %i.dfo, align 4, !tbaa !316
  %i.dfq = fadd nsz float %i.deu, %i.dfp          ; 3 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %._crit_edge14.i, label %.lr.ph11.preheader.i, !llvm.loop !320

bb.ic:                                            ; preds = %bb.hx
  %i.dfr = call fastcc i32 @encode_float32_remap_segment(ptr noundef %1, i32 noundef %i.daq, i32 noundef %4, ptr noundef %i.dbc, i32 noundef 0, i32 noundef 0)
  %i.dfs = sitofp nsz i32 %i.dfr to float         ; 2 uses
  store float %i.dfs, ptr %i.dbf, align 4, !tbaa !316
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hx
  %i.dft = phi float [ %i.dfs, %bb.ic ], [ %i.des, %bb.hx ]
  %i.dfu = sext i32 %.015016.i to i64
  %i.dfv = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.dfu
  %i.dfw = load float, ptr %i.dfv, align 4, !tbaa !316
  %i.dfx = fcmp nsz olt float %i.dft, %i.dfw
  %spec.select171.i = select i1 %i.dfx, i32 %3, i32 %.015016.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, %i.dan ; 2 uses
  %.not.i641 = icmp sgt i64 %indvars.iv.next47.i, %i.dao
  br i1 %.not.i641, label %._crit_edge20.i, label %bb.hk, !llvm.loop !321

encode_histogram_remap.exit:                      ; preds = %bb.dq, %.lr.ph103.split.i, %._crit_edge20.i, %load_rgb_float32_frame.exit, %load_plane.exit491, %bb.am
  %i.dfy = icmp eq i32 %.0, 0                     ; 8 uses
  br i1 %i.dfy, label %bb.ie, label %bb.ih

bb.ie:                                            ; preds = %encode_histogram_remap.exit
  %i.dfz = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.dga = icmp sgt i32 %i.dfz, 2                 ; 2 uses
  %brmerge1066 = select i1 %i.dga, i1 true, i1 %or.cond.not1070
  br i1 %brmerge1066, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.dgb = zext i1 %i.dga to i32
  %i.dgc = call i32 @ff_rac_terminate(ptr noundef nonnull %i.aj, i32 noundef %i.dgb) #19
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ie, %bb.if
  %i.dgd = phi i32 [ %i.dgc, %bb.if ], [ 0, %bb.ie ] ; 2 uses
  store i32 %i.dgd, ptr %i.aja, align 8, !tbaa !192
  %i.dge = load ptr, ptr %i.ajc, align 8, !tbaa !187 ; 2 uses
  %i.dgf = sext i32 %i.dgd to i64                 ; 2 uses
  %i.dgg = getelementptr inbounds i8, ptr %i.dge, i64 %i.dgf
  %i.dgh = load ptr, ptr %i.ajd, align 8, !tbaa !186
  %i.dgi = ptrtoint ptr %i.dgh to i64
  %i.dgj = ptrtoint ptr %i.dge to i64
  %i.dgk = add i64 %i.dgj, %i.dgf
  %i.dgl = sub i64 %i.dgi, %i.dgk
  %i.dgm = trunc i64 %i.dgl to i32                ; 2 uses
  %i.dgn = icmp slt i32 %i.dgm, 0
  %spec.select.i650 = select i1 %i.dgn, ptr null, ptr %i.dgg ; 3 uses
  %spec.select11.i = call i32 @llvm.smax.i32(i32 %i.dgm, i32 0)
  store ptr %spec.select.i650, ptr %i.aje, align 8, !tbaa !322
  %i.dgo = zext nneg i32 %spec.select11.i to i64
  %i.dgp = getelementptr inbounds nuw i8, ptr %spec.select.i650, i64 %i.dgo
  store ptr %i.dgp, ptr %i.ajf, align 8, !tbaa !323
  store ptr %spec.select.i650, ptr %i.ajg, align 8, !tbaa !324
  store i32 32, ptr %i.ajh, align 4, !tbaa !325
  store i32 0, ptr %i.ajb, align 8, !tbaa !326
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %encode_histogram_remap.exit
  %i.dgq = load i32, ptr %i.aho, align 8, !tbaa !44
  %i.dgr = icmp eq i32 %i.dgq, 0
  %i.dgs = load i32, ptr %i.ae, align 8, !tbaa !130 ; 2 uses
  br i1 %i.dgr, label %bb.ii, label %thread-pre-split801

bb.ii:                                            ; preds = %bb.ih
  switch i32 %i.dgs, label %bb.ij [
    i32 56, label %bb.in
    i32 255, label %bb.in
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.dgt = load i32, ptr %i.ak, align 8, !tbaa !54
  %i.dgu = load i32, ptr %i.ap, align 4, !tbaa !55
  %i.dgv = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.dgw = getelementptr inbounds i8, ptr %i.dgv, i64 %i.aw
  %i.dgx = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.dgy = mul nsw i32 %i.dgx, %i.ab
  %i.dgz = sext i32 %i.dgy to i64
  %i.dha = getelementptr inbounds i8, ptr %i.dgw, i64 %i.dgz
  %i.dhb = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dha, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.dgx, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %.0) ; 2 uses
  %i.dhc = load i32, ptr %i.aij, align 4, !tbaa !46
  %.not322 = icmp eq i32 %i.dhc, 0
  br i1 %.not322, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.dhd = ashr i32 %i.ab, %i.dgu                 ; 2 uses
  %i.dhe = ashr i32 %i.z, %i.dgt
  %i.dhf = load ptr, ptr %i.be, align 8, !tbaa !62
  %i.dhg = mul nsw i32 %i.dhe, %i.ai
  %i.dhh = sext i32 %i.dhg to i64                 ; 2 uses
  %i.dhi = getelementptr inbounds i8, ptr %i.dhf, i64 %i.dhh
  %i.dhj = load i32, ptr %i.aii, align 4, !tbaa !63 ; 2 uses
  %i.dhk = mul nsw i32 %i.dhj, %i.dhd
  %i.dhl = sext i32 %i.dhk to i64
  %i.dhm = getelementptr inbounds i8, ptr %i.dhi, i64 %i.dhl
  %i.dhn = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dhm, i32 noundef %i.ao, i32 noundef %i.at, i32 noundef %i.dhj, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %.0)
  %i.dho = load ptr, ptr %i.bo, align 8, !tbaa !62
  %i.dhp = getelementptr inbounds i8, ptr %i.dho, i64 %i.dhh
  %i.dhq = load i32, ptr %i.aih, align 8, !tbaa !63 ; 2 uses
  %i.dhr = mul nsw i32 %i.dhq, %i.dhd
  %i.dhs = sext i32 %i.dhr to i64
  %i.dht = getelementptr inbounds i8, ptr %i.dhp, i64 %i.dhs
  %i.dhu = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dht, i32 noundef %i.ao, i32 noundef %i.at, i32 noundef %i.dhq, i32 noundef 1, i32 noundef 2, i32 noundef 1, i32 noundef %.0)
  %i.dhv = or i32 %i.dhn, %i.dhu
  %i.dhw = or i32 %i.dhv, %i.dhb
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %.0298 = phi i32 [ %i.dhw, %bb.ik ], [ %i.dhb, %bb.ij ] ; 2 uses
  %i.dhx = load i32, ptr %i.aib, align 8, !tbaa !56
  %.not323 = icmp eq i32 %i.dhx, 0
  br i1 %.not323, label %bb.vg, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.dhy = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.dhz = getelementptr inbounds i8, ptr %i.dhy, i64 %i.aw
  %i.dia = load i32, ptr %i.aie, align 4, !tbaa !63 ; 2 uses
  %i.dib = mul nsw i32 %i.dia, %i.ab
  %i.dic = sext i32 %i.dib to i64
  %i.did = getelementptr inbounds i8, ptr %i.dhz, i64 %i.dic
  %i.die = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.did, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.dia, i32 noundef 2, i32 noundef 3, i32 noundef 1, i32 noundef %.0)
  %i.dif = or i32 %i.die, %.0298
  br label %bb.vg

thread-pre-split801:                              ; preds = %bb.ih
  switch i32 %i.dgs, label %bb.io [
    i32 56, label %bb.in
    i32 255, label %bb.in
  ]

bb.in:                                            ; preds = %bb.ii, %bb.ii, %thread-pre-split801, %thread-pre-split801
  %i.dig = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.dih = getelementptr inbounds i8, ptr %i.dig, i64 %i.aw
  %i.dii = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.dij = mul nsw i32 %i.dii, %i.ab
  %i.dik = sext i32 %i.dij to i64
  %i.dil = getelementptr inbounds i8, ptr %i.dih, i64 %i.dik
  %i.dim = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dil, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.dii, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef %.0)
  %i.din = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.dio = getelementptr inbounds i8, ptr %i.din, i64 %i.ahy
  %i.dip = getelementptr inbounds i8, ptr %i.dio, i64 %i.aw
  %i.diq = load i32, ptr %i.ay, align 8, !tbaa !63 ; 2 uses
  %i.dir = mul nsw i32 %i.diq, %i.ab
  %i.dis = sext i32 %i.dir to i64
  %i.dit = getelementptr inbounds i8, ptr %i.dip, i64 %i.dis
  %i.diu = call fastcc i32 @encode_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef %i.dit, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.diq, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef %.0)
  %i.div = or i32 %i.diu, %i.dim
  br label %bb.vg

bb.io:                                            ; preds = %thread-pre-split801
  %i.diw = load i32, ptr %i.ahs, align 4, !tbaa !45 ; 2 uses
  %i.dix = icmp eq i32 %i.diw, 32
  br i1 %i.dix, label %bb.ip, label %bb.ow

bb.ip:                                            ; preds = %bb.io
  %i.diy = load i32, ptr %i.ahj, align 4, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.diz = load ptr, ptr %i.ajj, align 8, !tbaa !29
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 64
  %i.djb = load i32, ptr %i.dja, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.djc = load i32, ptr %i.aib, align 8, !tbaa !56 ; 3 uses
  call void @ff_ffv1_compute_bits_per_plane(ptr noundef nonnull %i.t, ptr noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef null, i32 noundef 32) #19
  store i32 0, ptr %i.ajk, align 8, !tbaa !327
  %i.djd = load ptr, ptr %i.ajl, align 8, !tbaa !328 ; 5 uses
  store ptr %i.djd, ptr %i.akb, align 16, !tbaa !147
  store ptr %i.djd, ptr %i.akc, align 8, !tbaa !147
  store ptr %i.djd, ptr %i.akd, align 16, !tbaa !147
  store ptr %i.djd, ptr %i.ake, align 8, !tbaa !147
  %.not.i651 = icmp eq i32 %i.diy, 0              ; 2 uses
  %i.dje = select i1 %.not.i651, i32 2, i32 3     ; 5 uses
  %i.djf = mul i32 %i.akg, %i.dje
  %i.djg = sext i32 %i.djf to i64
  %i.djh = shl nsw i64 %i.djg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.djd, i8 0, i64 %i.djh, i1 false)
  br i1 %i.ahu, label %.preheader37.lr.ph.i, label %encode_float32_rgb_frame.exit

.preheader37.lr.ph.i:                             ; preds = %bb.ip
  %i.dji = mul i32 %i.dje, %i.akf                 ; 3 uses
  %.not111.i = icmp eq i32 %i.djc, 0
  %i.djj = icmp sgt i32 %i.djc, -3
  %i.djk = and i32 %i.djb, 512
  %.not132.i.i = icmp eq i32 %i.djk, 0
  %i.djl = add i32 %i.djc, 2
  %smax.i652 = call i32 @llvm.smax.i32(i32 %i.djl, i32 0)
  %i.djm = add nuw i32 %smax.i652, 1
  %i.djn = sext i32 %i.dji to i64                 ; 3 uses
  %i.djo = shl i32 %i.dji, 1
  %i.djp = sext i32 %i.djo to i64                 ; 3 uses
  %i.djq = mul i32 %i.dji, 3
  %i.djr = sext i32 %i.djq to i64                 ; 3 uses
  %wide.trip.count164.i = zext i32 %i.djm to i64
  br label %.preheader37.i

.preheader37.i:                                   ; preds = %._crit_edge101.i, %.preheader37.lr.ph.i
  %indvars.iv166.i = phi i64 [ 0, %.preheader37.lr.ph.i ], [ %indvars.iv.next167.i, %._crit_edge101.i ] ; 3 uses
  %i.djs = load ptr, ptr %i.ajl, align 8, !tbaa !328 ; 3 uses
  %i.djt = trunc i64 %indvars.iv166.i to i32
  %i.dju = sub i32 %i.x, %i.djt                   ; 3 uses
  %i.djv = srem i32 %i.dju, %i.dje
  %i.djw = mul nsw i32 %i.djv, %i.akf
  %i.djx = sext i32 %i.djw to i64
  %invariant.gep.i655 = getelementptr [4 x i8], ptr %i.djs, i64 %i.djx ; 4 uses
  %i.djy = getelementptr inbounds nuw i8, ptr %invariant.gep.i655, i64 12 ; 2 uses
  store ptr %i.djy, ptr %i.d, align 16, !tbaa !147
  %gep.1.i = getelementptr [4 x i8], ptr %invariant.gep.i655, i64 %i.djn
  %i.djz = getelementptr inbounds nuw i8, ptr %gep.1.i, i64 12 ; 2 uses
  store ptr %i.djz, ptr %gep44.1.i, align 8, !tbaa !147
  %gep.2.i = getelementptr [4 x i8], ptr %invariant.gep.i655, i64 %i.djp
  %i.dka = getelementptr inbounds nuw i8, ptr %gep.2.i, i64 12 ; 2 uses
  store ptr %i.dka, ptr %gep44.2.i, align 16, !tbaa !147
  %gep.3.i = getelementptr [4 x i8], ptr %invariant.gep.i655, i64 %i.djr
  %i.dkb = getelementptr inbounds nuw i8, ptr %gep.3.i, i64 12 ; 2 uses
  store ptr %i.dkb, ptr %gep44.3.i, align 8, !tbaa !147
  %i.dkc = add i32 %i.dju, 1
end_hunk_0
