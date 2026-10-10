Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iff?download=true
inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_frame:bb.a
  %.057165.us.us.i = phi i32 [ %i.cbm, %bytestream2_put_byte.exit93.us.us.i ], [ %.057165.us.us.i.ph, %bytestream2_seek_p.exit84.us.us.i.preheader ]
  %.159164.us.us.i = phi i32 [ %i.cbl, %bytestream2_put_byte.exit93.us.us.i ], [ %.159164.us.us.i.ph, %bytestream2_seek_p.exit84.us.us.i.preheader ] ; 4 uses
  %i.cbg = icmp slt i32 %i.bsi, %.159164.us.us.i
  %i.cbh = icmp slt i32 %.159164.us.us.i, 0
  %..i.us.us.i = tail call i32 @llvm.smin.i32(i32 %.159164.us.us.i, i32 %i.bsi)
  %.0.i85.us.us.i = select i1 %i.cbh, i32 0, i32 %..i.us.us.i ; 2 uses
  %i.cbi = icmp sle i32 %i.bsi, %.0.i85.us.us.i
  %or.cond147.not.us.us.i = or i1 %i.cbg, %i.cbi
  br i1 %or.cond147.not.us.us.i, label %bytestream2_put_byte.exit93.us.us.i, label %bb.gn

bb.gn:                                            ; preds = %bytestream2_seek_p.exit84.us.us.i
  %i.cbj = sext i32 %.0.i85.us.us.i to i64
  %i.cbk = getelementptr inbounds i8, ptr %i.bsa, i64 %i.cbj
  store i8 %.0.i75.us.i, ptr %i.cbk, align 1, !tbaa !33
  br label %bytestream2_put_byte.exit93.us.us.i

bytestream2_put_byte.exit93.us.us.i:              ; preds = %bb.gn, %bytestream2_seek_p.exit84.us.us.i
  %i.cbl = add i32 %.159164.us.us.i, %i.bsm       ; 2 uses
  %i.cbm = add nsw i32 %.057165.us.us.i, -1       ; 2 uses
  %.not67.us.us.i = icmp eq i32 %i.cbm, 0
  br i1 %.not67.us.us.i, label %.loopexit157.us.i, label %bytestream2_seek_p.exit84.us.us.i, !llvm.loop !124

bytestream2_seek_p.exit84.us179.i:                ; preds = %bytestream2_seek_p.exit84.lr.ph.us.i, %bytestream2_put_byte.exit93.us185.i
  %.057165.us180.i = phi i32 [ %i.cby, %bytestream2_put_byte.exit93.us185.i ], [ %.0.i77.us.i, %bytestream2_seek_p.exit84.lr.ph.us.i ]
  %.159164.us181.i = phi i32 [ %i.cbx, %bytestream2_put_byte.exit93.us185.i ], [ %.058168.us.i, %bytestream2_seek_p.exit84.lr.ph.us.i ] ; 6 uses
  %i.cbn = icmp slt i32 %.159164.us181.i, 0
  %..i.us182.i = tail call i32 @llvm.smin.i32(i32 %.159164.us181.i, i32 %i.bsi)
  %.0.i85.us183.i = select i1 %i.cbn, i32 0, i32 %..i.us182.i ; 3 uses
  %i.cbo = sext i32 %.0.i85.us183.i to i64
  %i.cbp = getelementptr inbounds i8, ptr %i.bsa, i64 %i.cbo
  %i.cbq = icmp ult i32 %.159164.us181.i, %i.bsi
  br i1 %i.cbq, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bytestream2_seek_p.exit84.us179.i
  %i.cbr = icmp slt i32 %i.bsi, %.159164.us181.i
  %i.cbs = icmp sle i32 %i.bsi, %.0.i85.us183.i
  %or.cond147.not.us184.i = or i1 %i.cbr, %i.cbs
  br i1 %or.cond147.not.us184.i, label %bytestream2_put_byte.exit93.us185.i, label %bytestream2_put_byte.exit93.us185.sink.split.i

bb.gp:                                            ; preds = %bytestream2_seek_p.exit84.us179.i
  %.not191.i = icmp sgt i32 %i.bsi, %.0.i85.us183.i
  br i1 %.not191.i, label %bb.gq, label %bytestream2_put_byte.exit93.us185.i

bb.gq:                                            ; preds = %bb.gp
  %i.cbt = zext nneg i32 %.159164.us181.i to i64
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.bsa, i64 %i.cbt
  %i.cbv = load i8, ptr %i.cbu, align 1, !tbaa !33
  %i.cbw = xor i8 %i.cbv, %.0.i75.us.i
  br label %bytestream2_put_byte.exit93.us185.sink.split.i

bytestream2_put_byte.exit93.us185.sink.split.i:   ; preds = %bb.gq, %bb.go
  %.sink.i = phi i8 [ %i.cbw, %bb.gq ], [ %.0.i75.us.i, %bb.go ]
  store i8 %.sink.i, ptr %i.cbp, align 1, !tbaa !33
  br label %bytestream2_put_byte.exit93.us185.i

bytestream2_put_byte.exit93.us185.i:              ; preds = %bytestream2_put_byte.exit93.us185.sink.split.i, %bb.gp, %bb.go
  %i.cbx = add i32 %.159164.us181.i, %i.bsm       ; 2 uses
  %i.cby = add nsw i32 %.057165.us180.i, -1       ; 2 uses
  %.not67.us186.i = icmp eq i32 %i.cby, 0
  br i1 %.not67.us186.i, label %.loopexit157.us.i, label %bytestream2_seek_p.exit84.us179.i, !llvm.loop !125

.loopexit157.us.i:                                ; preds = %bytestream2_put_byte.exit89.us.i, %bytestream2_put_byte.exit93.us.us.i, %bytestream2_put_byte.exit93.us185.i, %middle.block2092, %vec.epilog.middle.block, %bytestream2_get_byte.exit76.us.i, %bb.gk, %bb.gf
  %.sroa.0118.4.us.i = phi ptr [ %.sroa.0118.7.us.i, %middle.block2092 ], [ %i.buq, %bb.gk ], [ %i.buq, %bb.gf ], [ %.sroa.0118.7.us.i, %bytestream2_get_byte.exit76.us.i ], [ %.sroa.0118.7.us.i, %bytestream2_put_byte.exit93.us185.i ], [ %.sroa.0118.7.us.i, %bytestream2_put_byte.exit93.us.us.i ], [ %.sroa.0118.7.us.i, %vec.epilog.middle.block ], [ %.sroa.0118.3.us.i, %bytestream2_put_byte.exit89.us.i ] ; 2 uses
  %.3.us.i = phi i32 [ %i.bwg, %middle.block2092 ], [ %i.bvt, %bb.gk ], [ %.058168.us.i, %bb.gf ], [ %.058168.us.i, %bytestream2_get_byte.exit76.us.i ], [ %i.cbx, %bytestream2_put_byte.exit93.us185.i ], [ %i.cbl, %bytestream2_put_byte.exit93.us.us.i ], [ %i.bzv, %vec.epilog.middle.block ], [ %i.bvq, %bytestream2_put_byte.exit89.us.i ]
  %i.cbz = add nsw i32 %.056169.us.i, -1
  %i.cca = icmp sgt i32 %.056169.us.i, 1
  br i1 %i.cca, label %.lr.ph.us.i, label %._crit_edge.us.i, !llvm.loop !126

._crit_edge.us.i:                                 ; preds = %.loopexit157.us.i, %bytestream2_get_byte.exit82.us.i, %bb.gd
  %.sroa.0118.1.lcssa.us.i = phi ptr [ %i.buj, %bytestream2_get_byte.exit82.us.i ], [ %i.bud, %bb.gd ], [ %.sroa.0118.4.us.i, %.loopexit157.us.i ]
  %i.ccb = add nuw nsw i32 %.055172.us.i, 1       ; 2 uses
  %exitcond198.not.i = icmp eq i32 %i.ccb, %smax.i
  br i1 %exitcond198.not.i, label %bytestream2_get_be32.exit.thread.us.i, label %bb.gd, !llvm.loop !127

bytestream2_get_be32.exit.thread.us.i:            ; preds = %._crit_edge.us.i, %bb.gb, %bytestream2_get_be32.exit.us.i, %.lr.ph177.split.us.i
  %.sroa.0135.1140.us.i = phi ptr [ %i.btu, %bytestream2_get_be32.exit.us.i ], [ %i.bsq, %.lr.ph177.split.us.i ], [ %i.btu, %bb.gb ], [ %i.btu, %._crit_edge.us.i ]
  %i.ccc = add nuw nsw i32 %.0175.us.i, 1         ; 2 uses
  %exitcond199.not.i = icmp eq i32 %i.ccc, %i.bsg
  br i1 %exitcond199.not.i, label %decode_short_horizontal_delta.exit, label %.lr.ph177.split.us.i, !llvm.loop !128

bb.gr:                                            ; preds = %bytestream2_init.exit71.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 151) #10
  tail call void @abort() #11
  unreachable

.lr.ph177.split.i:                                ; preds = %.lr.ph177.i, %bytestream2_get_be32.exit.thread.i1003
  %.0175.i = phi i32 [ %i.ccn, %bytestream2_get_be32.exit.thread.i1003 ], [ 0, %.lr.ph177.i ]
  %.sroa.0135.0174.i = phi ptr [ %.sroa.0135.1140.i, %bytestream2_get_be32.exit.thread.i1003 ], [ %i.dz, %.lr.ph177.i ] ; 3 uses
  %i.ccd = ptrtoint ptr %.sroa.0135.0174.i to i64
  %i.cce = sub i64 %i.bsu, %i.ccd
  %i.ccf = icmp slt i64 %i.cce, 4
  br i1 %i.ccf, label %bytestream2_get_be32.exit.thread.i1003, label %bytestream2_get_be32.exit.i1001

bytestream2_get_be32.exit.i1001:                  ; preds = %.lr.ph177.split.i
  %i.ccg = getelementptr inbounds nuw i8, ptr %.sroa.0135.0174.i, i64 4 ; 3 uses
  %i.cch = load i32, ptr %.sroa.0135.0174.i, align 1, !tbaa !33 ; 2 uses
  %.not.i1002 = icmp eq i32 %i.cch, 0
  br i1 %.not.i1002, label %bytestream2_get_be32.exit.thread.i1003, label %bb.gs

bb.gs:                                            ; preds = %bytestream2_get_be32.exit.i1001
  %i.cci = tail call i32 @llvm.bswap.i32(i32 %i.cch)
  %i.ccj = zext i32 %i.cci to i64                 ; 2 uses
  %.not64.i = icmp sgt i64 %gepdiff1134, %i.ccj
  br i1 %.not64.i, label %bb.gt, label %bytestream2_get_be32.exit.thread.i1003

bb.gt:                                            ; preds = %bb.gs
  %i.cck = add i64 %i.dw, %i.ccj
  %gepdiff1135 = sub i64 %i.g, %i.cck
  %i.ccl = and i64 %gepdiff1135, 2147483648
  %i.ccm = icmp eq i64 %i.ccl, 0
  br i1 %i.ccm, label %bytestream2_get_be32.exit.thread.i1003, label %.split.us.i

.split.us.i:                                      ; preds = %bb.gt, %bb.gc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_get_be32.exit.thread.i1003:           ; preds = %bb.gt, %bb.gs, %bytestream2_get_be32.exit.i1001, %.lr.ph177.split.i
  %.sroa.0135.1140.i = phi ptr [ %i.ccg, %bytestream2_get_be32.exit.i1001 ], [ %i.bsq, %.lr.ph177.split.i ], [ %i.ccg, %bb.gs ], [ %i.ccg, %bb.gt ]
  %i.ccn = add nuw nsw i32 %.0175.i, 1            ; 2 uses
  %exitcond.not.i1004 = icmp eq i32 %i.ccn, %i.bsg
  br i1 %exitcond.not.i1004, label %decode_short_horizontal_delta.exit, label %.lr.ph177.split.i, !llvm.loop !128

bb.gu:                                            ; preds = %thread-pre-split, %thread-pre-split
  %i.cco = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !165
  %.not807 = icmp eq i32 %i.ccp, 0
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !43 ; 12 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cct = load i32, ptr %i.ccs, align 8, !tbaa !36 ; 2 uses
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ccv = load i32, ptr %i.ccu, align 8, !tbaa !41 ; 5 uses
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ccx = load i32, ptr %i.ccw, align 8, !tbaa !42 ; 9 uses
  br i1 %.not807, label %bb.hq, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ccy = add i32 %i.cct, 15
  %i.ccz = ashr i32 %i.ccy, 4                     ; 4 uses
  %i.cda = shl i32 %i.ccv, 1
  %i.cdb = mul i32 %i.cda, %i.ccz                 ; 11 uses
  %gepdiff1129 = sub nsw i64 %i.g, %i.dy          ; 8 uses
  %i.cdc = icmp slt i64 %gepdiff1129, 65
  br i1 %i.cdc, label %decode_short_horizontal_delta.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.cdd = and i64 %gepdiff1129, 2147483648
  %i.cde = icmp eq i64 %i.cdd, 0
  br i1 %i.cde, label %bytestream2_init.exit75.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit75.i:                        ; preds = %bb.gw
  %i.cdf = and i64 %gepdiff1129, 2147483647
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cdf ; 3 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 3 uses
  %i.cdi = add nuw nsw i64 %gepdiff1129, 4294967264
  %i.cdj = and i64 %i.cdi, 4294967295
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.cdh, i64 %i.cdj ; 3 uses
  %i.cdl = icmp ne ptr %i.ccr, null
  %i.cdm = icmp sgt i32 %i.ccx, -1
  %or.cond.i88.i = and i1 %i.cdl, %i.cdm
  br i1 %or.cond.i88.i, label %bytestream2_init_writer.exit.i1007, label %bb.gy

bb.gy:                                            ; preds = %bytestream2_init.exit75.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 151) #10
  tail call void @abort() #11
  unreachable

bytestream2_init_writer.exit.i1007:               ; preds = %bytestream2_init.exit75.i
  %i.cdn = icmp sgt i32 %i.ccv, 0
  br i1 %i.cdn, label %.lr.ph166.i1008, label %decode_short_horizontal_delta.exit

.lr.ph166.i1008:                                  ; preds = %bytestream2_init_writer.exit.i1007
  %i.cdo = zext nneg i32 %i.ccx to i64
  %i.cdp = ptrtoint ptr %i.cdg to i64             ; 2 uses
  %i.cdq = ptrtoint ptr %i.cdk to i64             ; 2 uses
  %i.cdr = icmp sgt i32 %i.ccz, 0
  %invariant.op.i = add nsw i64 %i.cdo, -1        ; 3 uses
  br i1 %i.cdr, label %.lr.ph166.split.us.i.preheader, label %.lr.ph166.split.i

.lr.ph166.split.us.i.preheader:                   ; preds = %.lr.ph166.i1008
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ccx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2018 = insertelement <8 x i64> poison, i64 %invariant.op.i, i64 0
  %broadcast.splat2019 = shufflevector <8 x i64> %broadcast.splatinsert2018, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2022 = insertelement <8 x i32> poison, i32 %i.cdb, i64 0
  %broadcast.splat2023 = shufflevector <8 x i32> %broadcast.splatinsert2022, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cds = mul <8 x i32> %broadcast.splat2023, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cdt = shl i32 %i.cdb, 3
  %broadcast.splatinsert2024 = insertelement <8 x i32> poison, i32 %i.cdt, i64 0
  %broadcast.splat2025 = shufflevector <8 x i32> %broadcast.splatinsert2024, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cdu = insertelement <4 x i32> poison, i32 %i.ccx, i64 0
  %i.cdv = shufflevector <4 x i32> %i.cdu, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cdw = insertelement <4 x i32> poison, i32 %i.cdb, i64 0
  %i.cdx = shufflevector <4 x i32> %i.cdw, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = insertelement <4 x i32> poison, i32 %i.cdb, i64 0
  %i.cdy = shl i32 %i.cdb, 1
  %6 = insertelement <4 x i32> %5, i32 %i.cdy, i64 1
  %i.cdz = mul i32 %i.cdb, 3
  %i.cea = mul <4 x i32> %i.cdx, <i32 4, i32 5, i32 6, i32 7>
  br label %.lr.ph166.split.us.i

.lr.ph166.split.us.i:                             ; preds = %.lr.ph166.split.us.i.preheader, %..loopexit140_crit_edge.us.i
  %.0164.us.i = phi i32 [ %i.cjd, %..loopexit140_crit_edge.us.i ], [ 0, %.lr.ph166.split.us.i.preheader ] ; 2 uses
  %.sroa.0116.0163.us.i = phi ptr [ %.sroa.0116.1.us.i, %..loopexit140_crit_edge.us.i ], [ %i.cdh, %.lr.ph166.split.us.i.preheader ] ; 3 uses
  %.sroa.0126.0162.us.i = phi ptr [ %.sroa.0126.1.us.i, %..loopexit140_crit_edge.us.i ], [ %i.dz, %.lr.ph166.split.us.i.preheader ] ; 3 uses
  %i.ceb = ptrtoint ptr %.sroa.0126.0162.us.i to i64
  %i.cec = sub i64 %i.cdp, %i.ceb
  %i.ced = icmp slt i64 %i.cec, 4
  br i1 %i.ced, label %bytestream2_get_be32.exit79.us.i, label %bb.gz

bb.gz:                                            ; preds = %.lr.ph166.split.us.i
  %i.cee = getelementptr inbounds nuw i8, ptr %.sroa.0126.0162.us.i, i64 4
  %i.cef = load i32, ptr %.sroa.0126.0162.us.i, align 1, !tbaa !33
  %i.ceg = tail call i32 @llvm.bswap.i32(i32 %i.cef)
  br label %bytestream2_get_be32.exit79.us.i

bytestream2_get_be32.exit79.us.i:                 ; preds = %bb.gz, %.lr.ph166.split.us.i
  %.sroa.0126.1.us.i = phi ptr [ %i.cee, %bb.gz ], [ %i.cdg, %.lr.ph166.split.us.i ]
  %.0.i78.us.i = phi i32 [ %i.ceg, %bb.gz ], [ 0, %.lr.ph166.split.us.i ] ; 2 uses
  %i.ceh = ptrtoint ptr %.sroa.0116.0163.us.i to i64
  %i.cei = sub i64 %i.cdq, %i.ceh
  %i.cej = icmp slt i64 %i.cei, 4
  br i1 %i.cej, label %bytestream2_get_be32.exit.us.i1016, label %bb.ha

bb.ha:                                            ; preds = %bytestream2_get_be32.exit79.us.i
  %i.cek = getelementptr inbounds nuw i8, ptr %.sroa.0116.0163.us.i, i64 4
  %i.cel = load i32, ptr %.sroa.0116.0163.us.i, align 1, !tbaa !33
  %i.cem = tail call i32 @llvm.bswap.i32(i32 %i.cel)
  %i.cen = zext i32 %i.cem to i64
  br label %bytestream2_get_be32.exit.us.i1016

bytestream2_get_be32.exit.us.i1016:               ; preds = %bb.ha, %bytestream2_get_be32.exit79.us.i
  %.sroa.0116.1.us.i = phi ptr [ %i.cek, %bb.ha ], [ %i.cdk, %bytestream2_get_be32.exit79.us.i ]
  %.0.i.us.i = phi i64 [ %i.cen, %bb.ha ], [ 0, %bytestream2_get_be32.exit79.us.i ] ; 3 uses
  %.not.us.i1017 = icmp eq i32 %.0.i78.us.i, 0
  br i1 %.not.us.i1017, label %..loopexit140_crit_edge.us.i, label %bb.hb

bb.hb:                                            ; preds = %bytestream2_get_be32.exit.us.i1016
  %i.ceo = zext i32 %.0.i78.us.i to i64           ; 3 uses
  %.not68.us.i = icmp sgt i64 %gepdiff1129, %i.ceo
  %.not69.us.i = icmp samesign ugt i64 %gepdiff1129, %.0.i.us.i
  %or.cond138.us.i = select i1 %.not68.us.i, i1 %.not69.us.i, i1 false
  br i1 %or.cond138.us.i, label %bb.hc, label %decode_short_horizontal_delta.exit

bb.hc:                                            ; preds = %bb.hb
  %i.cep = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ceo ; 2 uses
  %i.ceq = add nsw i64 %i.dy, %i.ceo
  %gepdiff1132 = sub nsw i64 %i.g, %i.ceq         ; 2 uses
  %i.cer = and i64 %gepdiff1132, 2147483648
  %i.ces = icmp eq i64 %i.cer, 0
  br i1 %i.ces, label %bytestream2_init.exit73.us.i, label %.split.us.i1013

bytestream2_init.exit73.us.i:                     ; preds = %bb.hc
  %i.cet = and i64 %gepdiff1132, 2147483647
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cep, i64 %i.cet ; 4 uses
  %i.cev = add nsw i64 %i.dy, %.0.i.us.i
  %gepdiff1133 = sub nsw i64 %i.g, %i.cev         ; 2 uses
  %i.cew = and i64 %gepdiff1133, 2147483648
  %i.cex = icmp eq i64 %i.cew, 0
  br i1 %i.cex, label %bytestream2_init.exit.us.i1018, label %.split169.us.i

bytestream2_init.exit.us.i1018:                   ; preds = %bytestream2_init.exit73.us.i
  %i.cey = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.0.i.us.i ; 2 uses
  %i.cez = and i64 %gepdiff1133, 2147483647
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cey, i64 %i.cez ; 3 uses
  %i.cfb = mul nuw nsw i32 %.0164.us.i, %i.ccz
  %i.cfc = ptrtoint ptr %i.ceu to i64             ; 4 uses
  %i.cfd = ptrtoint ptr %i.cfa to i64             ; 2 uses
  br label %bb.hd

bb.hd:                                            ; preds = %._crit_edge.us.i1023, %bytestream2_init.exit.us.i1018
  %.057160.us.i = phi i32 [ 0, %bytestream2_init.exit.us.i1018 ], [ %i.cjc, %._crit_edge.us.i1023 ] ; 2 uses
  %.sroa.0111.0159.us.i = phi ptr [ %i.cey, %bytestream2_init.exit.us.i1018 ], [ %.sroa.0111.1.lcssa.us.i, %._crit_edge.us.i1023 ] ; 3 uses
  %.sroa.0118.0158.us.i = phi ptr [ %i.cep, %bytestream2_init.exit.us.i1018 ], [ %.sroa.0118.1.lcssa.us.i1024, %._crit_edge.us.i1023 ] ; 3 uses
  %i.cfe = ptrtoint ptr %.sroa.0118.0158.us.i to i64
  %i.cff = sub i64 %i.cfc, %i.cfe
  %i.cfg = icmp slt i64 %i.cff, 1
  br i1 %i.cfg, label %._crit_edge.us.i1023, label %bytestream2_get_byte.exit84.us.i

bytestream2_get_byte.exit84.us.i:                 ; preds = %bb.hd
  %i.cfh = getelementptr inbounds nuw i8, ptr %.sroa.0118.0158.us.i, i64 1 ; 2 uses
  %i.cfi = load i8, ptr %.sroa.0118.0158.us.i, align 1, !tbaa !33 ; 2 uses
  %.not171.i = icmp eq i8 %i.cfi, 0
  br i1 %.not171.i, label %._crit_edge.us.i1023, label %.lr.ph.us.i1019.preheader

.lr.ph.us.i1019.preheader:                        ; preds = %bytestream2_get_byte.exit84.us.i
  %i.cfj = zext i8 %i.cfi to i32
  %i.cfk = add nuw nsw i32 %.057160.us.i, %i.cfb
  %i.cfl = shl nuw nsw i32 %i.cfk, 1
  br label %.lr.ph.us.i1019

.lr.ph.us.i1019:                                  ; preds = %.lr.ph.us.i1019.preheader, %.loopexit.us.i
  %.058155.us.i = phi i32 [ %i.cja, %.loopexit.us.i ], [ %i.cfj, %.lr.ph.us.i1019.preheader ] ; 2 uses
  %.060154.us.i = phi i32 [ %.3.us.i1022, %.loopexit.us.i ], [ %i.cfl, %.lr.ph.us.i1019.preheader ] ; 8 uses
  %.sroa.0111.1153.us.i = phi ptr [ %.sroa.0111.3.us.i, %.loopexit.us.i ], [ %.sroa.0111.0159.us.i, %.lr.ph.us.i1019.preheader ] ; 6 uses
  %.sroa.0118.1152.us.i = phi ptr [ %.sroa.0118.2.us.i, %.loopexit.us.i ], [ %i.cfh, %.lr.ph.us.i1019.preheader ] ; 3 uses
  %i.cfm = ptrtoint ptr %.sroa.0118.1152.us.i to i64
  %i.cfn = sub i64 %i.cfc, %i.cfm
  %i.cfo = icmp slt i64 %i.cfn, 1
  br i1 %i.cfo, label %bytestream2_get_byte.exit82.thread.us.i, label %bytestream2_get_byte.exit82.us.i1020

bytestream2_get_byte.exit82.us.i1020:             ; preds = %.lr.ph.us.i1019
  %i.cfp = getelementptr inbounds nuw i8, ptr %.sroa.0118.1152.us.i, i64 1 ; 5 uses
  %i.cfq = load i8, ptr %.sroa.0118.1152.us.i, align 1, !tbaa !33 ; 3 uses
  %i.cfr = zext i8 %i.cfq to i32                  ; 2 uses
  %i.cfs = icmp eq i8 %i.cfq, 0
  br i1 %i.cfs, label %bytestream2_get_byte.exit82.us.bytestream2_get_byte.exit82.thread.us_crit_edge.i, label %bb.he

bytestream2_get_byte.exit82.us.bytestream2_get_byte.exit82.thread.us_crit_edge.i: ; preds = %bytestream2_get_byte.exit82.us.i1020
  %.pre.i1025 = ptrtoint ptr %i.cfp to i64
  br label %bytestream2_get_byte.exit82.thread.us.i

bb.he:                                            ; preds = %bytestream2_get_byte.exit82.us.i1020
  %i.cft = icmp sgt i8 %i.cfq, -1
  br i1 %i.cft, label %bb.hi, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.cfu = and i32 %i.cfr, 127                    ; 2 uses
  %.not70142.us.i = icmp eq i32 %i.cfu, 0
  br i1 %.not70142.us.i, label %.loopexit.us.i, label %bytestream2_seek_p.exit.us.i1021

bytestream2_seek_p.exit.us.i1021:                 ; preds = %bb.hf, %bytestream2_put_be16.exit.us.i
  %.1145.us.i = phi i32 [ %i.cgg, %bytestream2_put_be16.exit.us.i ], [ %i.cfu, %bb.hf ]
  %.2144.us.i = phi i32 [ %i.cgf, %bytestream2_put_be16.exit.us.i ], [ %.060154.us.i, %bb.hf ] ; 4 uses
  %.sroa.0111.2143.us.i = phi ptr [ %.sroa.0111.4.us.i, %bytestream2_put_be16.exit.us.i ], [ %.sroa.0111.1153.us.i, %bb.hf ] ; 3 uses
  %i.cfv = icmp sge i32 %i.ccx, %.2144.us.i
  %i.cfw = icmp slt i32 %.2144.us.i, 0
  %..i93.us.i = tail call i32 @llvm.smin.i32(i32 %.2144.us.i, i32 %i.ccx)
  %.0.i94.us.i = select i1 %i.cfw, i32 0, i32 %..i93.us.i
  %i.cfx = sext i32 %.0.i94.us.i to i64           ; 2 uses
  %i.cfy = getelementptr inbounds i8, ptr %i.ccr, i64 %i.cfx
  %i.cfz = ptrtoint ptr %.sroa.0111.2143.us.i to i64
  %i.cga = sub i64 %i.cfd, %i.cfz
  %i.cgb = icmp slt i64 %i.cga, 2
  br i1 %i.cgb, label %bytestream2_get_be16.exit.us.i, label %bb.hg

bb.hg:                                            ; preds = %bytestream2_seek_p.exit.us.i1021
  %i.cgc = getelementptr inbounds nuw i8, ptr %.sroa.0111.2143.us.i, i64 2
  %i.cgd = load i16, ptr %.sroa.0111.2143.us.i, align 1, !tbaa !33
  br label %bytestream2_get_be16.exit.us.i

bytestream2_get_be16.exit.us.i:                   ; preds = %bb.hg, %bytestream2_seek_p.exit.us.i1021
  %.sroa.0111.4.us.i = phi ptr [ %i.cgc, %bb.hg ], [ %i.cfa, %bytestream2_seek_p.exit.us.i1021 ] ; 2 uses
  %.0.i85.us.i = phi i16 [ %i.cgd, %bb.hg ], [ 0, %bytestream2_seek_p.exit.us.i1021 ]
  %i.cge = icmp sgt i64 %invariant.op.i, %i.cfx
  %or.cond136.us.i = select i1 %i.cfv, i1 %i.cge, i1 false
  br i1 %or.cond136.us.i, label %bb.hh, label %bytestream2_put_be16.exit.us.i

bb.hh:                                            ; preds = %bytestream2_get_be16.exit.us.i
  store i16 %.0.i85.us.i, ptr %i.cfy, align 1, !tbaa !33
  br label %bytestream2_put_be16.exit.us.i

bytestream2_put_be16.exit.us.i:                   ; preds = %bb.hh, %bytestream2_get_be16.exit.us.i
  %i.cgf = add i32 %.2144.us.i, %i.cdb            ; 2 uses
  %i.cgg = add nsw i32 %.1145.us.i, -1            ; 2 uses
  %.not70.us.i = icmp eq i32 %i.cgg, 0
  br i1 %.not70.us.i, label %.loopexit.us.i, label %bytestream2_seek_p.exit.us.i1021, !llvm.loop !129

bb.hi:                                            ; preds = %bb.he
  %i.cgh = mul i32 %i.cdb, %i.cfr
  %i.cgi = add i32 %i.cgh, %.060154.us.i
  br label %.loopexit.us.i

bytestream2_get_byte.exit82.thread.us.i:          ; preds = %bytestream2_get_byte.exit82.us.bytestream2_get_byte.exit82.thread.us_crit_edge.i, %.lr.ph.us.i1019
  %.pre-phi.i1026 = phi i64 [ %.pre.i1025, %bytestream2_get_byte.exit82.us.bytestream2_get_byte.exit82.thread.us_crit_edge.i ], [ %i.cfc, %.lr.ph.us.i1019 ]
  %.sroa.0118.4132.us.i = phi ptr [ %i.cfp, %bytestream2_get_byte.exit82.us.bytestream2_get_byte.exit82.thread.us_crit_edge.i ], [ %i.ceu, %.lr.ph.us.i1019 ] ; 2 uses
  %i.cgj = sub i64 %i.cfc, %.pre-phi.i1026
  %i.cgk = icmp slt i64 %i.cgj, 1
  br i1 %i.cgk, label %bytestream2_get_byte.exit.us.i1027, label %bb.hj

bb.hj:                                            ; preds = %bytestream2_get_byte.exit82.thread.us.i
  %i.cgl = getelementptr inbounds nuw i8, ptr %.sroa.0118.4132.us.i, i64 1
  %i.cgm = load i8, ptr %.sroa.0118.4132.us.i, align 1, !tbaa !33
  %i.cgn = zext i8 %i.cgm to i32
  br label %bytestream2_get_byte.exit.us.i1027

bytestream2_get_byte.exit.us.i1027:               ; preds = %bb.hj, %bytestream2_get_byte.exit82.thread.us.i
  %.sroa.0118.3.us.i1028 = phi ptr [ %i.cgl, %bb.hj ], [ %i.ceu, %bytestream2_get_byte.exit82.thread.us.i ] ; 3 uses
  %.0.i80.us.i = phi i32 [ %i.cgn, %bb.hj ], [ 0, %bytestream2_get_byte.exit82.thread.us.i ] ; 6 uses
  %i.cgo = ptrtoint ptr %.sroa.0111.1153.us.i to i64
  %i.cgp = sub i64 %i.cfd, %i.cgo
  %i.cgq = icmp slt i64 %i.cgp, 2
  br i1 %i.cgq, label %bytestream2_get_be16.exit87.us.i, label %bb.hk

bb.hk:                                            ; preds = %bytestream2_get_byte.exit.us.i1027
  %i.cgr = getelementptr inbounds nuw i8, ptr %.sroa.0111.1153.us.i, i64 2
  %i.cgs = load i16, ptr %.sroa.0111.1153.us.i, align 1, !tbaa !33
  br label %bytestream2_get_be16.exit87.us.i

bytestream2_get_be16.exit87.us.i:                 ; preds = %bb.hk, %bytestream2_get_byte.exit.us.i1027
  %.sroa.0111.5.us.i = phi ptr [ %i.cgr, %bb.hk ], [ %i.cfa, %bytestream2_get_byte.exit.us.i1027 ] ; 3 uses
  %.0.i86.us.i = phi i16 [ %i.cgs, %bb.hk ], [ 0, %bytestream2_get_byte.exit.us.i1027 ] ; 9 uses
  %.not71148.us.i = icmp eq i32 %.0.i80.us.i, 0
  br i1 %.not71148.us.i, label %.loopexit.us.i, label %bytestream2_seek_p.exit89.us.i.preheader

bytestream2_seek_p.exit89.us.i.preheader:         ; preds = %bytestream2_get_be16.exit87.us.i
  %min.iters.check = icmp samesign ult i32 %.0.i80.us.i, 8
  br i1 %min.iters.check, label %bytestream2_seek_p.exit89.us.i.preheader2197, label %vector.ph

vector.ph:                                        ; preds = %bytestream2_seek_p.exit89.us.i.preheader
  %n.vec = and i32 %.0.i80.us.i, 248              ; 3 uses
  %i.cgt = and i32 %.0.i80.us.i, 7
  %i.cgu = mul i32 %n.vec, %i.cdb
  %i.cgv = add i32 %.060154.us.i, %i.cgu          ; 2 uses
  %broadcast.splatinsert2020 = insertelement <8 x i32> poison, i32 %.060154.us.i, i64 0
  %broadcast.splat2021 = shufflevector <8 x i32> %broadcast.splatinsert2020, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat2021, %i.cds
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue2039, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %pred.store.continue2039 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %pred.store.continue2039 ] ; 2 uses
  %i.cgw = mul i32 %index, %i.cdb
  %i.cgx = add i32 %.060154.us.i, %i.cgw          ; 3 uses
  %7 = insertelement <2 x i32> poison, i32 %i.cgx, i64 0
  %i.cgy = add i32 %i.cgx, %i.cdz
  %8 = icmp sge <8 x i32> %broadcast.splat, %vec.ind
  %9 = insertelement <4 x i32> poison, i32 %i.cgx, i64 0 ; 2 uses
  %10 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %11 = add <4 x i32> %10, %6
  %12 = shufflevector <4 x i32> %9, <4 x i32> %11, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.cgz = insertelement <4 x i32> %12, i32 %i.cgy, i64 3 ; 2 uses
  %i.cha = icmp slt <4 x i32> %i.cgz, zeroinitializer
  %i.chb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cgz, <4 x i32> %i.cdv)
  %i.chc = select <4 x i1> %i.cha, <4 x i32> zeroinitializer, <4 x i32> %i.chb ; 5 uses
  %i.chd = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.che = add <4 x i32> %i.chd, %i.cea           ; 2 uses
  %i.chf = icmp slt <4 x i32> %i.che, zeroinitializer
  %i.chg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.che, <4 x i32> %i.cdv)
  %i.chh = select <4 x i1> %i.chf, <4 x i32> zeroinitializer, <4 x i32> %i.chg ; 5 uses
  %i.chi = shufflevector <4 x i32> %i.chc, <4 x i32> %i.chh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.chj = sext <8 x i32> %i.chi to <8 x i64>
  %i.chk = icmp sgt <8 x i64> %broadcast.splat2019, %i.chj
  %i.chl = select <8 x i1> %8, <8 x i1> %i.chk, <8 x i1> zeroinitializer ; 8 uses
  %i.chm = extractelement <8 x i1> %i.chl, i64 0
  br i1 %i.chm, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.chn = extractelement <4 x i32> %i.chc, i64 0
  %i.cho = sext i32 %i.chn to i64
  %i.chp = getelementptr inbounds i8, ptr %i.ccr, i64 %i.cho
  store i16 %.0.i86.us.i, ptr %i.chp, align 1, !tbaa !33
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.chq = extractelement <8 x i1> %i.chl, i64 1
  br i1 %i.chq, label %pred.store.if2026, label %pred.store.continue2027

pred.store.if2026:                                ; preds = %pred.store.continue
  %i.chr = extractelement <4 x i32> %i.chc, i64 1
  %i.chs = sext i32 %i.chr to i64
  %i.cht = getelementptr inbounds i8, ptr %i.ccr, i64 %i.chs
  store i16 %.0.i86.us.i, ptr %i.cht, align 1, !tbaa !33
  br label %pred.store.continue2027

pred.store.continue2027:                          ; preds = %pred.store.if2026, %pred.store.continue
  %i.chu = extractelement <8 x i1> %i.chl, i64 2
  br i1 %i.chu, label %pred.store.if2028, label %pred.store.continue2029

pred.store.if2028:                                ; preds = %pred.store.continue2027
  %i.chv = extractelement <4 x i32> %i.chc, i64 2
  %i.chw = sext i32 %i.chv to i64
  %i.chx = getelementptr inbounds i8, ptr %i.ccr, i64 %i.chw
  store i16 %.0.i86.us.i, ptr %i.chx, align 1, !tbaa !33
  br label %pred.store.continue2029

pred.store.continue2029:                          ; preds = %pred.store.if2028, %pred.store.continue2027
  %i.chy = extractelement <8 x i1> %i.chl, i64 3
  br i1 %i.chy, label %pred.store.if2030, label %pred.store.continue2031

pred.store.if2030:                                ; preds = %pred.store.continue2029
  %i.chz = extractelement <4 x i32> %i.chc, i64 3
  %i.cia = sext i32 %i.chz to i64
  %i.cib = getelementptr inbounds i8, ptr %i.ccr, i64 %i.cia
  store i16 %.0.i86.us.i, ptr %i.cib, align 1, !tbaa !33
  br label %pred.store.continue2031

pred.store.continue2031:                          ; preds = %pred.store.if2030, %pred.store.continue2029
  %i.cic = extractelement <8 x i1> %i.chl, i64 4
  br i1 %i.cic, label %pred.store.if2032, label %pred.store.continue2033

pred.store.if2032:                                ; preds = %pred.store.continue2031
  %i.cid = extractelement <4 x i32> %i.chh, i64 0
  %i.cie = sext i32 %i.cid to i64
  %i.cif = getelementptr inbounds i8, ptr %i.ccr, i64 %i.cie
  store i16 %.0.i86.us.i, ptr %i.cif, align 1, !tbaa !33
  br label %pred.store.continue2033

pred.store.continue2033:                          ; preds = %pred.store.if2032, %pred.store.continue2031
  %i.cig = extractelement <8 x i1> %i.chl, i64 5
  br i1 %i.cig, label %pred.store.if2034, label %pred.store.continue2035

pred.store.if2034:                                ; preds = %pred.store.continue2033
  %i.cih = extractelement <4 x i32> %i.chh, i64 1
  %i.cii = sext i32 %i.cih to i64
  %i.cij = getelementptr inbounds i8, ptr %i.ccr, i64 %i.cii
  store i16 %.0.i86.us.i, ptr %i.cij, align 1, !tbaa !33
  br label %pred.store.continue2035

pred.store.continue2035:                          ; preds = %pred.store.if2034, %pred.store.continue2033
  %i.cik = extractelement <8 x i1> %i.chl, i64 6
  br i1 %i.cik, label %pred.store.if2036, label %pred.store.continue2037

pred.store.if2036:                                ; preds = %pred.store.continue2035
  %i.cil = extractelement <4 x i32> %i.chh, i64 2
  %i.cim = sext i32 %i.cil to i64
  %i.cin = getelementptr inbounds i8, ptr %i.ccr, i64 %i.cim
  store i16 %.0.i86.us.i, ptr %i.cin, align 1, !tbaa !33
  br label %pred.store.continue2037

pred.store.continue2037:                          ; preds = %pred.store.if2036, %pred.store.continue2035
  %i.cio = extractelement <8 x i1> %i.chl, i64 7
  br i1 %i.cio, label %pred.store.if2038, label %pred.store.continue2039

pred.store.if2038:                                ; preds = %pred.store.continue2037
  %i.cip = extractelement <4 x i32> %i.chh, i64 3
  %i.ciq = sext i32 %i.cip to i64
  %i.cir = getelementptr inbounds i8, ptr %i.ccr, i64 %i.ciq
  store i16 %.0.i86.us.i, ptr %i.cir, align 1, !tbaa !33
  br label %pred.store.continue2039

pred.store.continue2039:                          ; preds = %pred.store.if2038, %pred.store.continue2037
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, %broadcast.splat2025
  %i.cis = icmp eq i32 %index.next, %n.vec
  br i1 %i.cis, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %pred.store.continue2039
  %cmp.n = icmp eq i32 %.0.i80.us.i, %n.vec
  br i1 %cmp.n, label %.loopexit.us.i, label %bytestream2_seek_p.exit89.us.i.preheader2197

bytestream2_seek_p.exit89.us.i.preheader2197:     ; preds = %bytestream2_seek_p.exit89.us.i.preheader, %middle.block
  %.059150.us.i.ph = phi i32 [ %.0.i80.us.i, %bytestream2_seek_p.exit89.us.i.preheader ], [ %i.cgt, %middle.block ]
  %.161149.us.i.ph = phi i32 [ %.060154.us.i, %bytestream2_seek_p.exit89.us.i.preheader ], [ %i.cgv, %middle.block ]
  br label %bytestream2_seek_p.exit89.us.i

bytestream2_seek_p.exit89.us.i:                   ; preds = %bytestream2_seek_p.exit89.us.i.preheader2197, %bytestream2_put_be16.exit91.us.i
  %.059150.us.i = phi i32 [ %i.ciz, %bytestream2_put_be16.exit91.us.i ], [ %.059150.us.i.ph, %bytestream2_seek_p.exit89.us.i.preheader2197 ]
  %.161149.us.i = phi i32 [ %i.ciy, %bytestream2_put_be16.exit91.us.i ], [ %.161149.us.i.ph, %bytestream2_seek_p.exit89.us.i.preheader2197 ] ; 4 uses
  %i.cit = icmp sge i32 %i.ccx, %.161149.us.i
  %i.ciu = icmp slt i32 %.161149.us.i, 0
  %..i.us.i = tail call i32 @llvm.smin.i32(i32 %.161149.us.i, i32 %i.ccx)
  %.0.i92.us.i = select i1 %i.ciu, i32 0, i32 %..i.us.i
  %i.civ = sext i32 %.0.i92.us.i to i64           ; 2 uses
  %i.ciw = icmp sgt i64 %invariant.op.i, %i.civ
  %or.cond.us.i = select i1 %i.cit, i1 %i.ciw, i1 false
  br i1 %or.cond.us.i, label %bb.hl, label %bytestream2_put_be16.exit91.us.i

bb.hl:                                            ; preds = %bytestream2_seek_p.exit89.us.i
  %i.cix = getelementptr inbounds i8, ptr %i.ccr, i64 %i.civ
  store i16 %.0.i86.us.i, ptr %i.cix, align 1, !tbaa !33
  br label %bytestream2_put_be16.exit91.us.i

bytestream2_put_be16.exit91.us.i:                 ; preds = %bb.hl, %bytestream2_seek_p.exit89.us.i
  %i.ciy = add i32 %.161149.us.i, %i.cdb          ; 2 uses
  %i.ciz = add nsw i32 %.059150.us.i, -1          ; 2 uses
  %.not71.us.i = icmp eq i32 %i.ciz, 0
  br i1 %.not71.us.i, label %.loopexit.us.i, label %bytestream2_seek_p.exit89.us.i, !llvm.loop !131

.loopexit.us.i:                                   ; preds = %bytestream2_put_be16.exit.us.i, %bytestream2_put_be16.exit91.us.i, %middle.block, %bytestream2_get_be16.exit87.us.i, %bb.hi, %bb.hf
  %.sroa.0118.2.us.i = phi ptr [ %.sroa.0118.3.us.i1028, %bytestream2_get_be16.exit87.us.i ], [ %i.cfp, %bb.hi ], [ %.sroa.0118.3.us.i1028, %middle.block ], [ %i.cfp, %bb.hf ], [ %.sroa.0118.3.us.i1028, %bytestream2_put_be16.exit91.us.i ], [ %i.cfp, %bytestream2_put_be16.exit.us.i ] ; 2 uses
  %.sroa.0111.3.us.i = phi ptr [ %.sroa.0111.5.us.i, %bytestream2_get_be16.exit87.us.i ], [ %.sroa.0111.1153.us.i, %bb.hi ], [ %.sroa.0111.5.us.i, %middle.block ], [ %.sroa.0111.1153.us.i, %bb.hf ], [ %.sroa.0111.5.us.i, %bytestream2_put_be16.exit91.us.i ], [ %.sroa.0111.4.us.i, %bytestream2_put_be16.exit.us.i ] ; 2 uses
  %.3.us.i1022 = phi i32 [ %.060154.us.i, %bytestream2_get_be16.exit87.us.i ], [ %i.cgi, %bb.hi ], [ %i.cgv, %middle.block ], [ %.060154.us.i, %bb.hf ], [ %i.ciy, %bytestream2_put_be16.exit91.us.i ], [ %i.cgf, %bytestream2_put_be16.exit.us.i ]
  %i.cja = add nsw i32 %.058155.us.i, -1
  %i.cjb = icmp sgt i32 %.058155.us.i, 1
  br i1 %i.cjb, label %.lr.ph.us.i1019, label %._crit_edge.us.i1023, !llvm.loop !132

._crit_edge.us.i1023:                             ; preds = %.loopexit.us.i, %bytestream2_get_byte.exit84.us.i, %bb.hd
  %.sroa.0118.1.lcssa.us.i1024 = phi ptr [ %i.cfh, %bytestream2_get_byte.exit84.us.i ], [ %i.ceu, %bb.hd ], [ %.sroa.0118.2.us.i, %.loopexit.us.i ]
  %.sroa.0111.1.lcssa.us.i = phi ptr [ %.sroa.0111.0159.us.i, %bytestream2_get_byte.exit84.us.i ], [ %.sroa.0111.0159.us.i, %bb.hd ], [ %.sroa.0111.3.us.i, %.loopexit.us.i ]
  %i.cjc = add nuw nsw i32 %.057160.us.i, 1       ; 2 uses
  %exitcond177.not.i = icmp eq i32 %i.cjc, %i.ccz
  br i1 %exitcond177.not.i, label %..loopexit140_crit_edge.us.i, label %bb.hd, !llvm.loop !133

..loopexit140_crit_edge.us.i:                     ; preds = %._crit_edge.us.i1023, %bytestream2_get_be32.exit.us.i1016
  %i.cjd = add nuw nsw i32 %.0164.us.i, 1         ; 2 uses
  %exitcond178.not.i = icmp eq i32 %i.cjd, %i.ccv
  br i1 %exitcond178.not.i, label %decode_short_horizontal_delta.exit, label %.lr.ph166.split.us.i, !llvm.loop !134

.lr.ph166.split.i:                                ; preds = %.lr.ph166.i1008, %bytestream2_init.exit.i1014
  %.0164.i = phi i32 [ %i.cjy, %bytestream2_init.exit.i1014 ], [ 0, %.lr.ph166.i1008 ]
  %.sroa.0116.0163.i = phi ptr [ %.sroa.0116.1.i, %bytestream2_init.exit.i1014 ], [ %i.cdh, %.lr.ph166.i1008 ] ; 3 uses
  %.sroa.0126.0162.i = phi ptr [ %.sroa.0126.1.i, %bytestream2_init.exit.i1014 ], [ %i.dz, %.lr.ph166.i1008 ] ; 3 uses
  %i.cje = ptrtoint ptr %.sroa.0126.0162.i to i64
  %i.cjf = sub i64 %i.cdp, %i.cje
  %i.cjg = icmp slt i64 %i.cjf, 4
  br i1 %i.cjg, label %bytestream2_get_be32.exit79.i, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph166.split.i
  %i.cjh = getelementptr inbounds nuw i8, ptr %.sroa.0126.0162.i, i64 4
  %i.cji = load i32, ptr %.sroa.0126.0162.i, align 1, !tbaa !33
  %i.cjj = tail call i32 @llvm.bswap.i32(i32 %i.cji)
  br label %bytestream2_get_be32.exit79.i

bytestream2_get_be32.exit79.i:                    ; preds = %bb.hm, %.lr.ph166.split.i
  %.sroa.0126.1.i = phi ptr [ %i.cjh, %bb.hm ], [ %i.cdg, %.lr.ph166.split.i ]
  %.0.i78.i1009 = phi i32 [ %i.cjj, %bb.hm ], [ 0, %.lr.ph166.split.i ] ; 2 uses
  %i.cjk = ptrtoint ptr %.sroa.0116.0163.i to i64
  %i.cjl = sub i64 %i.cdq, %i.cjk
  %i.cjm = icmp slt i64 %i.cjl, 4
  br i1 %i.cjm, label %bytestream2_get_be32.exit.i1010, label %bb.hn

bb.hn:                                            ; preds = %bytestream2_get_be32.exit79.i
  %i.cjn = getelementptr inbounds nuw i8, ptr %.sroa.0116.0163.i, i64 4
  %i.cjo = load i32, ptr %.sroa.0116.0163.i, align 1, !tbaa !33
  %i.cjp = tail call i32 @llvm.bswap.i32(i32 %i.cjo)
  %i.cjq = zext i32 %i.cjp to i64
  br label %bytestream2_get_be32.exit.i1010

bytestream2_get_be32.exit.i1010:                  ; preds = %bb.hn, %bytestream2_get_be32.exit79.i
  %.sroa.0116.1.i = phi ptr [ %i.cjn, %bb.hn ], [ %i.cdk, %bytestream2_get_be32.exit79.i ]
  %.0.i.i1011 = phi i64 [ %i.cjq, %bb.hn ], [ 0, %bytestream2_get_be32.exit79.i ] ; 2 uses
  %.not.i1012 = icmp eq i32 %.0.i78.i1009, 0
  br i1 %.not.i1012, label %bytestream2_init.exit.i1014, label %bb.ho

bb.ho:                                            ; preds = %bytestream2_get_be32.exit.i1010
  %i.cjr = zext i32 %.0.i78.i1009 to i64          ; 2 uses
  %.not68.i = icmp sgt i64 %gepdiff1129, %i.cjr
  %.not69.i = icmp samesign ugt i64 %gepdiff1129, %.0.i.i1011
  %or.cond138.i = select i1 %.not68.i, i1 %.not69.i, i1 false
  br i1 %or.cond138.i, label %bb.hp, label %decode_short_horizontal_delta.exit

bb.hp:                                            ; preds = %bb.ho
  %i.cjs = add i64 %i.dw, %i.cjr
  %gepdiff1130 = sub i64 %i.g, %i.cjs
  %i.cjt = and i64 %gepdiff1130, 2147483648
  %i.cju = icmp eq i64 %i.cjt, 0
  br i1 %i.cju, label %bytestream2_init.exit73.i, label %.split.us.i1013

.split.us.i1013:                                  ; preds = %bb.hp, %bb.hc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

end_hunk_0
begin_hunk_1_@decode_deep_tvdc32:bb.a
  %i.ab = lshr i8 %i.z, 4
  %.in80 = select i1 %.not, i8 %i.aa, i8 %i.ab
  %narrow = add nuw nsw i8 %.in80, 1
  %i.ac = zext nneg i8 %narrow to i32
  %i.ad = add nsw i32 %.05290, 2                  ; 2 uses
  %i.ae = sub nsw i32 %3, %.06585                 ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.ac) ; 4 uses
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.ah = mul nsw i32 %.06186, %5
  %i.ai = add i32 %.05787, %i.ah                  ; 3 uses
  %i.aj = sext i32 %.06585 to i64                 ; 2 uses
  %xtraiter = and i32 %i.af, 1
  %i.ak = icmp eq i32 %i.af, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.af, 30
  %invariant.op = add i32 4, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.al = shl nsw i32 %indvars.iv.tr, 2
  %i.am = add i32 %i.ai, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  store i8 %.05389, ptr %i.ao, align 1, !tbaa !33
  %i.ap = trunc i64 %indvars.iv to i32
  %indvars.iv.tr.1 = shl i32 %i.ap, 2
  %.reass = add i32 %indvars.iv.tr.1, %invariant.op
  %i.aq = sext i32 %.reass to i64
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  store i8 %.05389, ptr %i.ar, align 1, !tbaa !33
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !203

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.aj, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod98 = trunc i32 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
  %indvars.iv.tr.epil = trunc nsw i64 %indvars.iv.epil.init to i32
  %i.as = shl nsw i32 %indvars.iv.tr.epil, 2
  %i.at = add i32 %i.ai, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  store i8 %.05389, ptr %i.av, align 1, !tbaa !33
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil.init, 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.epil.preheader ]
  %i.aw = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.b
  %.267 = phi i32 [ %i.v, %bb.b ], [ %.06585, %bb.d ], [ %i.aw, %.loopexit.loopexit ] ; 2 uses
  %.154 = phi i8 [ %i.o, %bb.b ], [ %.05389, %bb.d ], [ %.05389, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.m, %bb.b ], [ %i.ad, %bb.d ], [ %i.ad, %.loopexit.loopexit ] ; 2 uses
  %.not81 = icmp slt i32 %.267, %3
  br i1 %.not81, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ax = add nsw i32 %.05787, 1
  %i.ay = icmp sgt i32 %.05787, 2
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = add nsw i32 %.06186, 1                  ; 2 uses
  %.not82 = icmp slt i32 %i.az, %4
  br i1 %.not82, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.f
  %.162 = phi i32 [ %.06186, %bb.f ], [ %i.az, %bb.g ]
  %.158 = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.g ]
  %i.ba = add nsw i32 %.1, 1
  %i.bb = and i32 %i.ba, -2
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  %.4 = phi i32 [ 0, %bb.h ], [ %.267, %.loopexit ]
  %.364 = phi i32 [ %.162, %bb.h ], [ %.06186, %.loopexit ]
  %.360 = phi i32 [ %.158, %bb.h ], [ %.05787, %.loopexit ]
  %.356 = phi i8 [ 0, %bb.h ], [ %.154, %.loopexit ]
  %.3 = phi i32 [ %i.bb, %bb.h ], [ %.1, %.loopexit ] ; 2 uses
  %i.bc = icmp slt i32 %.3, %i.a
  br i1 %i.bc, label %.lr.ph91, label %.critedge, !llvm.loop !204

.critedge:                                        ; preds = %bb.i, %bb.g, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_long_vertical_delta(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = add i32 %3, 31                           ; 2 uses
  %i.b = ashr i32 %i.a, 5                         ; 4 uses
  %i.c = add nsw i32 %3, 15
  %i.d = sdiv i32 %i.c, 16
  %i.e = shl nsw i32 %i.d, 1                      ; 2 uses
  %i.f = mul i32 %i.e, %4                         ; 21 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = icmp slt i64 %i.i, 65
  br i1 %i.j, label %.loopexit208, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv i32 %i.a, 32
  %i.l = shl nsw i32 %i.k, 2
  %.not.not = icmp ne i32 %i.e, %i.l              ; 2 uses
  %i.m = trunc i64 %i.i to i32                    ; 2 uses
  %i.n = icmp ne ptr %1, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i101 = and i1 %i.n, %i.o
  br i1 %or.cond.i101, label %bytestream2_init.exit102, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit102:                         ; preds = %bb.b
  %i.p = and i64 %i.i, 2147483647
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = icmp samesign ugt i32 %i.m, 31
  br i1 %i.s, label %bytestream2_init.exit100, label %bb.d

bb.d:                                             ; preds = %bytestream2_init.exit102
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit100:                         ; preds = %bytestream2_init.exit102
  %i.t = add nuw i64 %i.i, 4294967264
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u ; 3 uses
  %i.w = icmp ne ptr %0, null
  %i.x = icmp sgt i32 %5, -1
  %or.cond.i118 = and i1 %i.w, %i.x
  br i1 %or.cond.i118, label %bytestream2_init_writer.exit, label %bb.e

bb.e:                                             ; preds = %bytestream2_init.exit100
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 151) #10
  tail call void @abort() #11
  unreachable

bytestream2_init_writer.exit:                     ; preds = %bytestream2_init.exit100
  %i.y = icmp sgt i32 %4, 0
  br i1 %i.y, label %.lr.ph241, label %.loopexit208

.lr.ph241:                                        ; preds = %bytestream2_init_writer.exit
  %i.z = zext nneg i32 %5 to i64                  ; 3 uses
  %i.aa = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ac = icmp sgt i32 %i.b, 0
  %invariant.op = add nsw i64 %i.z, -4            ; 3 uses
  %invariant.op213 = add nsw i64 %i.z, -2         ; 3 uses
  %i.ad = add nsw i32 %i.b, -1
  %i.ae = sext i32 %i.f to i64
  br i1 %i.ac, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %broadcast.splatinsert353 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat354 = shufflevector <4 x i32> %broadcast.splatinsert353, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert355 = insertelement <4 x i64> poison, i64 %invariant.op, i64 0
  %broadcast.splat356 = shufflevector <4 x i64> %broadcast.splatinsert355, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat360 = shufflevector <4 x i32> %broadcast.splatinsert359, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.af = mul <4 x i32> %broadcast.splat360, <i32 0, i32 1, i32 2, i32 3>
  %i.ag = shl i32 %i.f, 2
  %broadcast.splatinsert362 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat363 = shufflevector <4 x i32> %broadcast.splatinsert362, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ah = shl i32 %i.f, 1
  %i.ai = mul i32 %i.f, 3
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %invariant.op213, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert330 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat331 = shufflevector <8 x i32> %broadcast.splatinsert330, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aj = mul <8 x i32> %broadcast.splat331, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ak = shl i32 %i.f, 3
  %broadcast.splatinsert332 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat333 = shufflevector <8 x i32> %broadcast.splatinsert332, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.al = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.am = shufflevector <4 x i32> %i.al, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.ap = shl i32 %i.f, 1
  %7 = insertelement <4 x i32> %6, i32 %i.ap, i64 1
  %i.aq = mul i32 %i.f, 3
  %i.ar = mul <4 x i32> %i.ao, <i32 4, i32 5, i32 6, i32 7>
  br label %.lr.ph241.split.us

.lr.ph241.split.us:                               ; preds = %.lr.ph241.split.us.preheader, %..loopexit209_crit_edge.us
  %.0239.us = phi i32 [ %i.ix, %..loopexit209_crit_edge.us ], [ 0, %.lr.ph241.split.us.preheader ] ; 3 uses
  %.sroa.0172.0238.us = phi ptr [ %.sroa.0172.1.us, %..loopexit209_crit_edge.us ], [ %i.r, %.lr.ph241.split.us.preheader ] ; 3 uses
  %.sroa.0183.0237.us = phi ptr [ %.sroa.0183.1.us, %..loopexit209_crit_edge.us ], [ %1, %.lr.ph241.split.us.preheader ] ; 3 uses
  %i.as = ptrtoint ptr %.sroa.0183.0237.us to i64
  %i.at = sub i64 %i.aa, %i.as
  %i.au = icmp slt i64 %i.at, 4
  br i1 %i.au, label %bytestream2_get_be32.exit109.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph241.split.us
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0183.0237.us, i64 4
  %i.aw = load i32, ptr %.sroa.0183.0237.us, align 1, !tbaa !33
  %i.ax = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  br label %bytestream2_get_be32.exit109.us

bytestream2_get_be32.exit109.us:                  ; preds = %bb.f, %.lr.ph241.split.us
  %.sroa.0183.1.us = phi ptr [ %i.av, %bb.f ], [ %i.q, %.lr.ph241.split.us ]
  %.0.i108.us = phi i32 [ %i.ax, %bb.f ], [ 0, %.lr.ph241.split.us ] ; 2 uses
  %i.ay = ptrtoint ptr %.sroa.0172.0238.us to i64
  %i.az = sub i64 %i.ab, %i.ay
  %i.ba = icmp slt i64 %i.az, 4
  br i1 %i.ba, label %bytestream2_get_be32.exit107.us, label %bb.g

bb.g:                                             ; preds = %bytestream2_get_be32.exit109.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238.us, i64 4
  %i.bc = load i32, ptr %.sroa.0172.0238.us, align 1, !tbaa !33
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = zext i32 %i.bd to i64
  br label %bytestream2_get_be32.exit107.us

bytestream2_get_be32.exit107.us:                  ; preds = %bb.g, %bytestream2_get_be32.exit109.us
  %.sroa.0172.1.us = phi ptr [ %i.bb, %bb.g ], [ %i.v, %bytestream2_get_be32.exit109.us ]
  %.0.i106.us = phi i64 [ %i.be, %bb.g ], [ 0, %bytestream2_get_be32.exit109.us ] ; 2 uses
  %.not86.us = icmp eq i32 %.0.i108.us, 0
  br i1 %.not86.us, label %..loopexit209_crit_edge.us, label %bb.h

bb.h:                                             ; preds = %bytestream2_get_be32.exit107.us
  %i.bf = zext i32 %.0.i108.us to i64             ; 2 uses
  %.not87.us = icmp sgt i64 %i.i, %i.bf
  %.not88.us = icmp samesign ugt i64 %i.i, %.0.i106.us
  %or.cond206.us = select i1 %.not87.us, i1 %.not88.us, i1 false
  br i1 %or.cond206.us, label %bb.i, label %.loopexit208

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.g, %i.bh                     ; 2 uses
  %i.bj = and i64 %i.bi, 2147483648
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bytestream2_init.exit98.us, label %.split.us

bytestream2_init.exit98.us:                       ; preds = %bb.i
  %i.bl = and i64 %i.bi, 2147483647
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i106.us ; 3 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.g, %i.bo                     ; 2 uses
  %i.bq = and i64 %i.bp, 2147483648
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bytestream2_init.exit.us, label %.split265.us

bytestream2_init.exit.us:                         ; preds = %bytestream2_init.exit98.us
  %i.bs = and i64 %i.bp, 2147483647
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs ; 5 uses
  %i.bu = mul nuw nsw i32 %.0239.us, %i.b
  %i.bv = shl nuw nsw i32 %.0239.us, 1
  %i.bw = select i1 %.not.not, i32 %i.bv, i32 0
  %i.bx = ptrtoint ptr %i.bm to i64               ; 4 uses
  %i.by = ptrtoint ptr %i.bt to i64               ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %bytestream2_init.exit.us, %._crit_edge.us
  %.074235.us = phi i32 [ 0, %bytestream2_init.exit.us ], [ %i.iw, %._crit_edge.us ] ; 3 uses
  %.sroa.0155.0234.us = phi ptr [ %i.bn, %bytestream2_init.exit.us ], [ %.sroa.0155.1.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.sroa.0174.0233.us = phi ptr [ %i.bg, %bytestream2_init.exit.us ], [ %.sroa.0174.1.lcssa.us, %._crit_edge.us ] ; 3 uses
  %i.bz = add nuw nsw i32 %.074235.us, %i.bu
  %i.ca = shl nsw i32 %i.bz, 2
  %i.cb = sub nsw i32 %i.ca, %i.bw
  %i.cc = ptrtoint ptr %.sroa.0174.0233.us to i64
  %i.cd = sub i64 %i.bx, %i.cc
  %i.ce = icmp slt i64 %i.cd, 1
  br i1 %i.ce, label %._crit_edge.us, label %bytestream2_get_byte.exit114.us

bytestream2_get_byte.exit114.us:                  ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0174.0233.us, i64 1 ; 2 uses
  %i.cg = load i8, ptr %.sroa.0174.0233.us, align 1, !tbaa !33 ; 2 uses
  %.not = icmp eq i8 %i.cg, 0
  br i1 %.not, label %._crit_edge.us, label %.lr.ph.us

bb.k:                                             ; preds = %.lr.ph.us, %.loopexit207.us
  %.075230.us = phi i32 [ %i.iy, %.lr.ph.us ], [ %i.iu, %.loopexit207.us ] ; 2 uses
  %.078229.us = phi i32 [ %i.cb, %.lr.ph.us ], [ %.3.us, %.loopexit207.us ] ; 14 uses
  %.sroa.0155.1228.us = phi ptr [ %.sroa.0155.0234.us, %.lr.ph.us ], [ %.sroa.0155.5.us, %.loopexit207.us ] ; 9 uses
  %.sroa.0174.1227.us = phi ptr [ %i.cf, %.lr.ph.us ], [ %.sroa.0174.2.us, %.loopexit207.us ] ; 3 uses
  %i.ch = ptrtoint ptr %.sroa.0174.1227.us to i64
  %i.ci = sub i64 %i.bx, %i.ch
  %i.cj = icmp slt i64 %i.ci, 1
  br i1 %i.cj, label %bytestream2_get_byte.exit112.thread.us, label %bytestream2_get_byte.exit112.us

bytestream2_get_byte.exit112.us:                  ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0174.1227.us, i64 1 ; 6 uses
  %i.cl = load i8, ptr %.sroa.0174.1227.us, align 1, !tbaa !33 ; 3 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp eq i8 %i.cl, 0
  br i1 %i.cn, label %bytestream2_get_byte.exit112.us.bytestream2_get_byte.exit112.thread.us_crit_edge, label %bb.l

bytestream2_get_byte.exit112.us.bytestream2_get_byte.exit112.thread.us_crit_edge: ; preds = %bytestream2_get_byte.exit112.us
  %.pre280 = ptrtoint ptr %i.ck to i64
  br label %bytestream2_get_byte.exit112.thread.us

bb.l:                                             ; preds = %bytestream2_get_byte.exit112.us
  %i.co = icmp sgt i8 %i.cl, -1
  br i1 %i.co, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = and i32 %i.cm, 127                      ; 3 uses
  %.not214.us = icmp eq i32 %i.cp, 0
  br i1 %.not214.us, label %.loopexit207.us, label %bytestream2_seek_p.exit.lr.ph.us

bytestream2_seek_p.exit.lr.ph.us:                 ; preds = %bb.m
  br i1 %or.cond96.us, label %bytestream2_seek_p.exit.us.us, label %bytestream2_seek_p.exit.us244

bytestream2_seek_p.exit.us244:                    ; preds = %bytestream2_seek_p.exit.lr.ph.us, %bytestream2_put_be32.exit.us
  %.1217.us245 = phi i32 [ %i.db, %bytestream2_put_be32.exit.us ], [ %i.cp, %bytestream2_seek_p.exit.lr.ph.us ]
  %.2216.us246 = phi i32 [ %i.da, %bytestream2_put_be32.exit.us ], [ %.078229.us, %bytestream2_seek_p.exit.lr.ph.us ] ; 4 uses
  %.sroa.0155.3215.us247 = phi ptr [ %.sroa.0155.6.us, %bytestream2_put_be32.exit.us ], [ %.sroa.0155.1228.us, %bytestream2_seek_p.exit.lr.ph.us ] ; 3 uses
  %i.cq = icmp slt i32 %5, %.2216.us246
  %i.cr = icmp slt i32 %.2216.us246, 0
  %..i124.us248 = tail call i32 @llvm.smin.i32(i32 %.2216.us246, i32 %5)
  %.0.i125.us249 = select i1 %i.cr, i32 0, i32 %..i124.us248
  %i.cs = sext i32 %.0.i125.us249 to i64          ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  %i.cu = ptrtoint ptr %.sroa.0155.3215.us247 to i64
  %i.cv = sub i64 %i.by, %i.cu
  %i.cw = icmp slt i64 %i.cv, 4
  br i1 %i.cw, label %bytestream2_get_be32.exit.us, label %bb.n

bb.n:                                             ; preds = %bytestream2_seek_p.exit.us244
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0155.3215.us247, i64 4
  %i.cy = load i32, ptr %.sroa.0155.3215.us247, align 1, !tbaa !33
  br label %bytestream2_get_be32.exit.us

bytestream2_get_be32.exit.us:                     ; preds = %bb.n, %bytestream2_seek_p.exit.us244
  %.sroa.0155.6.us = phi ptr [ %i.cx, %bb.n ], [ %i.bt, %bytestream2_seek_p.exit.us244 ] ; 2 uses
  %.0.i.us = phi i32 [ %i.cy, %bb.n ], [ 0, %bytestream2_seek_p.exit.us244 ]
  %i.cz = icmp slt i64 %invariant.op, %i.cs
  %or.cond198.not.us = select i1 %i.cq, i1 true, i1 %i.cz
  br i1 %or.cond198.not.us, label %bytestream2_put_be32.exit.us, label %bb.o

bb.o:                                             ; preds = %bytestream2_get_be32.exit.us
  store i32 %.0.i.us, ptr %i.ct, align 1, !tbaa !33
  br label %bytestream2_put_be32.exit.us

bytestream2_put_be32.exit.us:                     ; preds = %bb.o, %bytestream2_get_be32.exit.us
  %i.da = add i32 %.2216.us246, %i.f              ; 2 uses
  %i.db = add nsw i32 %.1217.us245, -1            ; 2 uses
  %.not.us250 = icmp eq i32 %i.db, 0
  br i1 %.not.us250, label %.loopexit207.us, label %bytestream2_seek_p.exit.us244, !llvm.loop !205

bytestream2_seek_p.exit.us.us:                    ; preds = %bytestream2_seek_p.exit.lr.ph.us, %bytestream2_put_be16.exit.us.us
  %.1217.us.us = phi i32 [ %i.dq, %bytestream2_put_be16.exit.us.us ], [ %i.cp, %bytestream2_seek_p.exit.lr.ph.us ]
  %.2216.us.us = phi i32 [ %i.dp, %bytestream2_put_be16.exit.us.us ], [ %.078229.us, %bytestream2_seek_p.exit.lr.ph.us ] ; 4 uses
  %.sroa.0155.3215.us.us = phi ptr [ %i.do, %bytestream2_put_be16.exit.us.us ], [ %.sroa.0155.1228.us, %bytestream2_seek_p.exit.lr.ph.us ] ; 3 uses
  %i.dc = icmp slt i32 %5, %.2216.us.us
  %i.dd = icmp slt i32 %.2216.us.us, 0
  %..i124.us.us = tail call i32 @llvm.smin.i32(i32 %.2216.us.us, i32 %5)
  %.0.i125.us.us = select i1 %i.dd, i32 0, i32 %..i124.us.us
  %i.de = sext i32 %.0.i125.us.us to i64          ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %0, i64 %i.de
  %i.dg = ptrtoint ptr %.sroa.0155.3215.us.us to i64
  %i.dh = sub i64 %i.by, %i.dg
  %i.di = icmp slt i64 %i.dh, 2
  br i1 %i.di, label %bytestream2_get_be16.exit.us.us, label %bb.p

bb.p:                                             ; preds = %bytestream2_seek_p.exit.us.us
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0155.3215.us.us, i64 2
  %i.dk = load i16, ptr %.sroa.0155.3215.us.us, align 1, !tbaa !33
  br label %bytestream2_get_be16.exit.us.us

bytestream2_get_be16.exit.us.us:                  ; preds = %bb.p, %bytestream2_seek_p.exit.us.us
  %.sroa.0155.8.us.us = phi ptr [ %i.dj, %bb.p ], [ %i.bt, %bytestream2_seek_p.exit.us.us ] ; 2 uses
  %.0.i115.us.us = phi i16 [ %i.dk, %bb.p ], [ 0, %bytestream2_seek_p.exit.us.us ]
  %i.dl = icmp slt i64 %invariant.op213, %i.de
  %or.cond196.not.us.us = select i1 %i.dc, i1 true, i1 %i.dl
  br i1 %or.cond196.not.us.us, label %bytestream2_put_be16.exit.us.us, label %bb.q

bb.q:                                             ; preds = %bytestream2_get_be16.exit.us.us
  store i16 %.0.i115.us.us, ptr %i.df, align 1, !tbaa !33
  br label %bytestream2_put_be16.exit.us.us

bytestream2_put_be16.exit.us.us:                  ; preds = %bb.q, %bytestream2_get_be16.exit.us.us
  %i.dm = ptrtoint ptr %.sroa.0155.8.us.us to i64
  %i.dn = sub i64 %i.by, %i.dm
  %..i.us.us = tail call i64 @llvm.smin.i64(i64 %i.dn, i64 2)
  %i.do = getelementptr inbounds i8, ptr %.sroa.0155.8.us.us, i64 %..i.us.us ; 2 uses
  %i.dp = add i32 %.2216.us.us, %i.f              ; 2 uses
  %i.dq = add nsw i32 %.1217.us.us, -1            ; 2 uses
  %.not.us.us = icmp eq i32 %i.dq, 0
  br i1 %.not.us.us, label %.loopexit207.us, label %bytestream2_seek_p.exit.us.us, !llvm.loop !205

bb.r:                                             ; preds = %bb.l
  %i.dr = mul i32 %i.f, %i.cm
  %i.ds = add i32 %i.dr, %.078229.us
  br label %.loopexit207.us

bytestream2_get_byte.exit112.thread.us:           ; preds = %bytestream2_get_byte.exit112.us.bytestream2_get_byte.exit112.thread.us_crit_edge, %bb.k
  %.pre-phi281 = phi i64 [ %.pre280, %bytestream2_get_byte.exit112.us.bytestream2_get_byte.exit112.thread.us_crit_edge ], [ %i.bx, %bb.k ]
  %.sroa.0174.4189.us = phi ptr [ %i.ck, %bytestream2_get_byte.exit112.us.bytestream2_get_byte.exit112.thread.us_crit_edge ], [ %i.bm, %bb.k ] ; 2 uses
  %i.dt = sub i64 %i.bx, %.pre-phi281
  %i.du = icmp slt i64 %i.dt, 1
  br i1 %i.du, label %bytestream2_get_byte.exit.us, label %bb.s

bb.s:                                             ; preds = %bytestream2_get_byte.exit112.thread.us
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0174.4189.us, i64 1
  %i.dw = load i8, ptr %.sroa.0174.4189.us, align 1, !tbaa !33
  %i.dx = zext i8 %i.dw to i32
  br label %bytestream2_get_byte.exit.us

bytestream2_get_byte.exit.us:                     ; preds = %bb.s, %bytestream2_get_byte.exit112.thread.us
  %.sroa.0174.3.us = phi ptr [ %i.dv, %bb.s ], [ %i.bm, %bytestream2_get_byte.exit112.thread.us ] ; 5 uses
  %.0.i110.us = phi i32 [ %i.dx, %bb.s ], [ 0, %bytestream2_get_byte.exit112.thread.us ] ; 12 uses
  %i.dy = ptrtoint ptr %.sroa.0155.1228.us to i64
  %i.dz = sub i64 %i.by, %i.dy                    ; 2 uses
  br i1 %or.cond96.us, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bytestream2_get_byte.exit.us
  %i.ea = icmp slt i64 %i.dz, 4
  br i1 %i.ea, label %bytestream2_get_be32.exit105.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0155.1228.us, i64 4
  %i.ec = load i32, ptr %.sroa.0155.1228.us, align 1, !tbaa !33
  %i.ed = tail call i32 @llvm.bswap.i32(i32 %i.ec)
  br label %bytestream2_get_be32.exit105.us

bb.v:                                             ; preds = %bytestream2_get_byte.exit.us
  %i.ee = icmp slt i64 %i.dz, 2
  br i1 %i.ee, label %bytestream2_get_be16.exit117.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0155.1228.us, i64 2 ; 2 uses
  %i.eg = load i16, ptr %.sroa.0155.1228.us, align 1, !tbaa !33
  %i.eh = tail call i16 @llvm.bswap.i16(i16 %i.eg)
  %i.ei = zext i16 %i.eh to i32
  %.pre = ptrtoint ptr %i.ef to i64
  br label %bytestream2_get_be16.exit117.us

bytestream2_get_be16.exit117.us:                  ; preds = %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre, %bb.w ], [ %i.by, %bb.v ]
  %.sroa.0155.9.us = phi ptr [ %i.ef, %bb.w ], [ %i.bt, %bb.v ]
  %.0.i116.us = phi i32 [ %i.ei, %bb.w ], [ 0, %bb.v ]
  %i.ej = sub i64 %i.by, %.pre-phi
  %..i103.us = tail call i64 @llvm.smin.i64(i64 %i.ej, i64 2)
  %i.ek = getelementptr inbounds i8, ptr %.sroa.0155.9.us, i64 %..i103.us
  br label %bytestream2_get_be32.exit105.us

bytestream2_get_be32.exit105.us:                  ; preds = %bytestream2_get_be16.exit117.us, %bb.u, %bb.t
  %.sroa.0155.2.us = phi ptr [ %i.ek, %bytestream2_get_be16.exit117.us ], [ %i.eb, %bb.u ], [ %i.bt, %bb.t ] ; 5 uses
  %.076.us = phi i32 [ %.0.i116.us, %bytestream2_get_be16.exit117.us ], [ %i.ed, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.el = zext i32 %.078229.us to i64
  %i.em = zext nneg i32 %.0.i110.us to i64
  %i.en = add nsw i64 %i.em, -1
  %i.eo = mul nsw i64 %i.en, %i.ae
  %i.ep = add nsw i64 %i.eo, %i.el
  %i.eq = icmp sgt i64 %i.ep, %i.z
  br i1 %i.eq, label %.loopexit208, label %.preheader.us

.preheader.us:                                    ; preds = %bytestream2_get_be32.exit105.us
  %.not89222.us = icmp eq i32 %.0.i110.us, 0
  br i1 %.not89222.us, label %.loopexit207.us, label %bytestream2_seek_p.exit119.lr.ph.us

bytestream2_seek_p.exit119.lr.ph.us:              ; preds = %.preheader.us
  %i.er = tail call i32 @llvm.bswap.i32(i32 %.076.us) ; 5 uses
  %i.es = trunc i32 %.076.us to i16
  %i.et = tail call i16 @llvm.bswap.i16(i16 %i.es) ; 9 uses
  br i1 %or.cond96.us, label %bytestream2_seek_p.exit119.us.us.preheader, label %bytestream2_seek_p.exit119.us255.preheader

bytestream2_seek_p.exit119.us255.preheader:       ; preds = %bytestream2_seek_p.exit119.lr.ph.us
  %min.iters.check350 = icmp samesign ult i32 %.0.i110.us, 4
  br i1 %min.iters.check350, label %bytestream2_seek_p.exit119.us255.preheader388, label %vector.ph351

vector.ph351:                                     ; preds = %bytestream2_seek_p.exit119.us255.preheader
  %n.vec352 = and i32 %.0.i110.us, 252            ; 3 uses
  %i.eu = and i32 %.0.i110.us, 3
  %i.ev = mul i32 %n.vec352, %i.f
  %i.ew = add i32 %.078229.us, %i.ev              ; 2 uses
  %broadcast.splatinsert357 = insertelement <4 x i32> poison, i32 %.078229.us, i64 0
  %broadcast.splat358 = shufflevector <4 x i32> %broadcast.splatinsert357, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction361 = add <4 x i32> %broadcast.splat358, %i.af
  br label %vector.body364

vector.body364:                                   ; preds = %pred.store.continue374, %vector.ph351
  %index365 = phi i32 [ 0, %vector.ph351 ], [ %index.next375, %pred.store.continue374 ] ; 2 uses
  %vec.ind366 = phi <4 x i32> [ %induction361, %vector.ph351 ], [ %vec.ind.next376, %pred.store.continue374 ] ; 2 uses
  %i.ex = mul i32 %index365, %i.f
  %i.ey = add i32 %.078229.us, %i.ex              ; 5 uses
  %i.ez = add i32 %i.ey, %i.f                     ; 2 uses
  %i.fa = add i32 %i.ey, %i.ah                    ; 2 uses
  %i.fb = add i32 %i.ey, %i.ai                    ; 2 uses
  %i.fc = icmp sge <4 x i32> %broadcast.splat354, %vec.ind366
  %i.fd = icmp slt i32 %i.ey, 0
  %i.fe = icmp slt i32 %i.ez, 0
  %i.ff = icmp slt i32 %i.fa, 0
  %i.fg = icmp slt i32 %i.fb, 0
  %i.fh = tail call i32 @llvm.smin.i32(i32 %i.ey, i32 %5)
  %i.fi = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 %5)
  %i.fj = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 %5)
  %i.fk = tail call i32 @llvm.smin.i32(i32 %i.fb, i32 %5)
  %i.fl = select i1 %i.fd, i32 0, i32 %i.fh
  %i.fm = select i1 %i.fe, i32 0, i32 %i.fi
  %i.fn = select i1 %i.ff, i32 0, i32 %i.fj
  %i.fo = select i1 %i.fg, i32 0, i32 %i.fk
  %i.fp = sext i32 %i.fl to i64                   ; 2 uses
  %i.fq = sext i32 %i.fm to i64                   ; 2 uses
  %i.fr = sext i32 %i.fn to i64                   ; 2 uses
  %i.fs = sext i32 %i.fo to i64                   ; 2 uses
  %i.ft = insertelement <4 x i64> poison, i64 %i.fp, i64 0
  %i.fu = insertelement <4 x i64> %i.ft, i64 %i.fq, i64 1
  %i.fv = insertelement <4 x i64> %i.fu, i64 %i.fr, i64 2
  %i.fw = insertelement <4 x i64> %i.fv, i64 %i.fs, i64 3
  %i.fx = icmp sge <4 x i64> %broadcast.splat356, %i.fw
  %.not383 = select <4 x i1> %i.fc, <4 x i1> %i.fx, <4 x i1> zeroinitializer ; 4 uses
  %i.fy = extractelement <4 x i1> %.not383, i64 0
  br i1 %i.fy, label %pred.store.if367, label %pred.store.continue368

pred.store.if367:                                 ; preds = %vector.body364
  %i.fz = getelementptr inbounds i8, ptr %0, i64 %i.fp
  store i32 %i.er, ptr %i.fz, align 1, !tbaa !33
  br label %pred.store.continue368

pred.store.continue368:                           ; preds = %pred.store.if367, %vector.body364
  %i.ga = extractelement <4 x i1> %.not383, i64 1
  br i1 %i.ga, label %pred.store.if369, label %pred.store.continue370

pred.store.if369:                                 ; preds = %pred.store.continue368
  %i.gb = getelementptr inbounds i8, ptr %0, i64 %i.fq
  store i32 %i.er, ptr %i.gb, align 1, !tbaa !33
  br label %pred.store.continue370

pred.store.continue370:                           ; preds = %pred.store.if369, %pred.store.continue368
  %i.gc = extractelement <4 x i1> %.not383, i64 2
  br i1 %i.gc, label %pred.store.if371, label %pred.store.continue372

pred.store.if371:                                 ; preds = %pred.store.continue370
  %i.gd = getelementptr inbounds i8, ptr %0, i64 %i.fr
  store i32 %i.er, ptr %i.gd, align 1, !tbaa !33
  br label %pred.store.continue372

pred.store.continue372:                           ; preds = %pred.store.if371, %pred.store.continue370
  %i.ge = extractelement <4 x i1> %.not383, i64 3
  br i1 %i.ge, label %pred.store.if373, label %pred.store.continue374

pred.store.if373:                                 ; preds = %pred.store.continue372
  %i.gf = getelementptr inbounds i8, ptr %0, i64 %i.fs
  store i32 %i.er, ptr %i.gf, align 1, !tbaa !33
  br label %pred.store.continue374

pred.store.continue374:                           ; preds = %pred.store.if373, %pred.store.continue372
  %index.next375 = add nuw i32 %index365, 4       ; 2 uses
  %vec.ind.next376 = add <4 x i32> %vec.ind366, %broadcast.splat363
  %i.gg = icmp eq i32 %index.next375, %n.vec352
  br i1 %i.gg, label %middle.block377, label %vector.body364, !llvm.loop !206

middle.block377:                                  ; preds = %pred.store.continue374
  %cmp.n378 = icmp eq i32 %.0.i110.us, %n.vec352
  br i1 %cmp.n378, label %.loopexit207.us, label %bytestream2_seek_p.exit119.us255.preheader388

bytestream2_seek_p.exit119.us255.preheader388:    ; preds = %bytestream2_seek_p.exit119.us255.preheader, %middle.block377
  %.077224.us256.ph = phi i32 [ %.0.i110.us, %bytestream2_seek_p.exit119.us255.preheader ], [ %i.eu, %middle.block377 ]
  %.179223.us257.ph = phi i32 [ %.078229.us, %bytestream2_seek_p.exit119.us255.preheader ], [ %i.ew, %middle.block377 ]
  br label %bytestream2_seek_p.exit119.us255

bytestream2_seek_p.exit119.us.us.preheader:       ; preds = %bytestream2_seek_p.exit119.lr.ph.us
  %min.iters.check = icmp samesign ult i32 %.0.i110.us, 8
  br i1 %min.iters.check, label %bytestream2_seek_p.exit119.us.us.preheader387, label %vector.ph

vector.ph:                                        ; preds = %bytestream2_seek_p.exit119.us.us.preheader
  %n.vec = and i32 %.0.i110.us, 248               ; 3 uses
  %i.gh = and i32 %.0.i110.us, 7
  %i.gi = mul i32 %n.vec, %i.f
  %i.gj = add i32 %.078229.us, %i.gi              ; 2 uses
  %broadcast.splatinsert328 = insertelement <8 x i32> poison, i32 %.078229.us, i64 0
  %broadcast.splat329 = shufflevector <8 x i32> %broadcast.splatinsert328, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat329, %i.aj
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue347, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %pred.store.continue347 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %pred.store.continue347 ] ; 2 uses
  %i.gk = mul i32 %index, %i.f
  %i.gl = add i32 %.078229.us, %i.gk              ; 3 uses
  %8 = insertelement <2 x i32> poison, i32 %i.gl, i64 0
  %i.gm = add i32 %i.gl, %i.aq
  %9 = icmp sge <8 x i32> %broadcast.splat, %vec.ind
  %10 = insertelement <4 x i32> poison, i32 %i.gl, i64 0 ; 2 uses
  %11 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %12 = add <4 x i32> %11, %7
  %13 = shufflevector <4 x i32> %10, <4 x i32> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gn = insertelement <4 x i32> %13, i32 %i.gm, i64 3 ; 2 uses
  %i.go = icmp slt <4 x i32> %i.gn, zeroinitializer
  %i.gp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gn, <4 x i32> %i.am)
  %i.gq = select <4 x i1> %i.go, <4 x i32> zeroinitializer, <4 x i32> %i.gp ; 5 uses
  %i.gr = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gs = add <4 x i32> %i.gr, %i.ar              ; 2 uses
  %i.gt = icmp slt <4 x i32> %i.gs, zeroinitializer
  %i.gu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gs, <4 x i32> %i.am)
  %i.gv = select <4 x i1> %i.gt, <4 x i32> zeroinitializer, <4 x i32> %i.gu ; 5 uses
  %i.gw = shufflevector <4 x i32> %i.gq, <4 x i32> %i.gv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gx = sext <8 x i32> %i.gw to <8 x i64>
  %i.gy = icmp sge <8 x i64> %broadcast.splat327, %i.gx
  %.not386 = select <8 x i1> %9, <8 x i1> %i.gy, <8 x i1> zeroinitializer ; 8 uses
  %i.gz = extractelement <8 x i1> %.not386, i64 0
  br i1 %i.gz, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ha = extractelement <4 x i32> %i.gq, i64 0
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds i8, ptr %0, i64 %i.hb
  store i16 %i.et, ptr %i.hc, align 1, !tbaa !33
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.hd = extractelement <8 x i1> %.not386, i64 1
  br i1 %i.hd, label %pred.store.if334, label %pred.store.continue335

pred.store.if334:                                 ; preds = %pred.store.continue
  %i.he = extractelement <4 x i32> %i.gq, i64 1
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %0, i64 %i.hf
  store i16 %i.et, ptr %i.hg, align 1, !tbaa !33
  br label %pred.store.continue335

pred.store.continue335:                           ; preds = %pred.store.if334, %pred.store.continue
  %i.hh = extractelement <8 x i1> %.not386, i64 2
  br i1 %i.hh, label %pred.store.if336, label %pred.store.continue337

pred.store.if336:                                 ; preds = %pred.store.continue335
  %i.hi = extractelement <4 x i32> %i.gq, i64 2
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %0, i64 %i.hj
  store i16 %i.et, ptr %i.hk, align 1, !tbaa !33
  br label %pred.store.continue337

pred.store.continue337:                           ; preds = %pred.store.if336, %pred.store.continue335
  %i.hl = extractelement <8 x i1> %.not386, i64 3
  br i1 %i.hl, label %pred.store.if338, label %pred.store.continue339

pred.store.if338:                                 ; preds = %pred.store.continue337
  %i.hm = extractelement <4 x i32> %i.gq, i64 3
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds i8, ptr %0, i64 %i.hn
  store i16 %i.et, ptr %i.ho, align 1, !tbaa !33
  br label %pred.store.continue339

pred.store.continue339:                           ; preds = %pred.store.if338, %pred.store.continue337
  %i.hp = extractelement <8 x i1> %.not386, i64 4
  br i1 %i.hp, label %pred.store.if340, label %pred.store.continue341

pred.store.if340:                                 ; preds = %pred.store.continue339
  %i.hq = extractelement <4 x i32> %i.gv, i64 0
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %0, i64 %i.hr
  store i16 %i.et, ptr %i.hs, align 1, !tbaa !33
  br label %pred.store.continue341

pred.store.continue341:                           ; preds = %pred.store.if340, %pred.store.continue339
  %i.ht = extractelement <8 x i1> %.not386, i64 5
  br i1 %i.ht, label %pred.store.if342, label %pred.store.continue343

pred.store.if342:                                 ; preds = %pred.store.continue341
  %i.hu = extractelement <4 x i32> %i.gv, i64 1
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds i8, ptr %0, i64 %i.hv
  store i16 %i.et, ptr %i.hw, align 1, !tbaa !33
  br label %pred.store.continue343

pred.store.continue343:                           ; preds = %pred.store.if342, %pred.store.continue341
  %i.hx = extractelement <8 x i1> %.not386, i64 6
  br i1 %i.hx, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue343
  %i.hy = extractelement <4 x i32> %i.gv, i64 2
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %0, i64 %i.hz
  store i16 %i.et, ptr %i.ia, align 1, !tbaa !33
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue343
  %i.ib = extractelement <8 x i1> %.not386, i64 7
  br i1 %i.ib, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  %i.ic = extractelement <4 x i32> %i.gv, i64 3
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %0, i64 %i.id
  store i16 %i.et, ptr %i.ie, align 1, !tbaa !33
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, %broadcast.splat333
  %i.if = icmp eq i32 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %pred.store.continue347
  %cmp.n = icmp eq i32 %.0.i110.us, %n.vec
  br i1 %cmp.n, label %.loopexit207.us, label %bytestream2_seek_p.exit119.us.us.preheader387

bytestream2_seek_p.exit119.us.us.preheader387:    ; preds = %bytestream2_seek_p.exit119.us.us.preheader, %middle.block
  %.077224.us.us.ph = phi i32 [ %.0.i110.us, %bytestream2_seek_p.exit119.us.us.preheader ], [ %i.gh, %middle.block ]
  %.179223.us.us.ph = phi i32 [ %.078229.us, %bytestream2_seek_p.exit119.us.us.preheader ], [ %i.gj, %middle.block ]
  br label %bytestream2_seek_p.exit119.us.us

bytestream2_seek_p.exit119.us255:                 ; preds = %bytestream2_seek_p.exit119.us255.preheader388, %bytestream2_put_be16.exit121.us260
  %.077224.us256 = phi i32 [ %i.im, %bytestream2_put_be16.exit121.us260 ], [ %.077224.us256.ph, %bytestream2_seek_p.exit119.us255.preheader388 ]
  %.179223.us257 = phi i32 [ %i.il, %bytestream2_put_be16.exit121.us260 ], [ %.179223.us257.ph, %bytestream2_seek_p.exit119.us255.preheader388 ] ; 4 uses
  %i.ig = icmp slt i32 %5, %.179223.us257
  %i.ih = icmp slt i32 %.179223.us257, 0
  %..i122.us258 = tail call i32 @llvm.smin.i32(i32 %.179223.us257, i32 %5)
  %.0.i123.us259 = select i1 %i.ih, i32 0, i32 %..i122.us258
  %i.ii = sext i32 %.0.i123.us259 to i64          ; 2 uses
  %i.ij = icmp slt i64 %invariant.op, %i.ii
  %or.cond193.not.us = select i1 %i.ig, i1 true, i1 %i.ij
  br i1 %or.cond193.not.us, label %bytestream2_put_be16.exit121.us260, label %bb.x

bb.x:                                             ; preds = %bytestream2_seek_p.exit119.us255
  %i.ik = getelementptr inbounds i8, ptr %0, i64 %i.ii
  store i32 %i.er, ptr %i.ik, align 1, !tbaa !33
  br label %bytestream2_put_be16.exit121.us260

bytestream2_put_be16.exit121.us260:               ; preds = %bb.x, %bytestream2_seek_p.exit119.us255
  %i.il = add i32 %.179223.us257, %i.f            ; 2 uses
  %i.im = add nsw i32 %.077224.us256, -1          ; 2 uses
  %.not89.us261 = icmp eq i32 %i.im, 0
  br i1 %.not89.us261, label %.loopexit207.us, label %bytestream2_seek_p.exit119.us255, !llvm.loop !208

bytestream2_seek_p.exit119.us.us:                 ; preds = %bytestream2_seek_p.exit119.us.us.preheader387, %bytestream2_put_be16.exit121.us.us
  %.077224.us.us = phi i32 [ %i.it, %bytestream2_put_be16.exit121.us.us ], [ %.077224.us.us.ph, %bytestream2_seek_p.exit119.us.us.preheader387 ]
  %.179223.us.us = phi i32 [ %i.is, %bytestream2_put_be16.exit121.us.us ], [ %.179223.us.us.ph, %bytestream2_seek_p.exit119.us.us.preheader387 ] ; 4 uses
  %i.in = icmp slt i32 %5, %.179223.us.us
  %i.io = icmp slt i32 %.179223.us.us, 0
  %..i122.us.us = tail call i32 @llvm.smin.i32(i32 %.179223.us.us, i32 %5)
  %.0.i123.us.us = select i1 %i.io, i32 0, i32 %..i122.us.us
  %i.ip = sext i32 %.0.i123.us.us to i64          ; 2 uses
  %i.iq = icmp slt i64 %invariant.op213, %i.ip
  %or.cond191.not.us.us = select i1 %i.in, i1 true, i1 %i.iq
  br i1 %or.cond191.not.us.us, label %bytestream2_put_be16.exit121.us.us, label %bb.y

bb.y:                                             ; preds = %bytestream2_seek_p.exit119.us.us
  %i.ir = getelementptr inbounds i8, ptr %0, i64 %i.ip
  store i16 %i.et, ptr %i.ir, align 1, !tbaa !33
  br label %bytestream2_put_be16.exit121.us.us

bytestream2_put_be16.exit121.us.us:               ; preds = %bb.y, %bytestream2_seek_p.exit119.us.us
  %i.is = add i32 %.179223.us.us, %i.f            ; 2 uses
  %i.it = add nsw i32 %.077224.us.us, -1          ; 2 uses
  %.not89.us.us = icmp eq i32 %i.it, 0
  br i1 %.not89.us.us, label %.loopexit207.us, label %bytestream2_seek_p.exit119.us.us, !llvm.loop !209

.loopexit207.us:                                  ; preds = %bytestream2_put_be32.exit.us, %bytestream2_put_be16.exit.us.us, %bytestream2_put_be16.exit121.us260, %bytestream2_put_be16.exit121.us.us, %middle.block377, %middle.block, %.preheader.us, %bb.m, %bb.r
  %.sroa.0174.2.us = phi ptr [ %i.ck, %bb.m ], [ %i.ck, %bb.r ], [ %.sroa.0174.3.us, %middle.block ], [ %.sroa.0174.3.us, %bytestream2_put_be16.exit121.us.us ], [ %.sroa.0174.3.us, %middle.block377 ], [ %.sroa.0174.3.us, %.preheader.us ], [ %.sroa.0174.3.us, %bytestream2_put_be16.exit121.us260 ], [ %i.ck, %bytestream2_put_be16.exit.us.us ], [ %i.ck, %bytestream2_put_be32.exit.us ] ; 2 uses
  %.sroa.0155.5.us = phi ptr [ %.sroa.0155.1228.us, %bb.m ], [ %.sroa.0155.1228.us, %bb.r ], [ %.sroa.0155.2.us, %middle.block ], [ %.sroa.0155.2.us, %bytestream2_put_be16.exit121.us.us ], [ %.sroa.0155.2.us, %middle.block377 ], [ %.sroa.0155.2.us, %.preheader.us ], [ %.sroa.0155.2.us, %bytestream2_put_be16.exit121.us260 ], [ %i.do, %bytestream2_put_be16.exit.us.us ], [ %.sroa.0155.6.us, %bytestream2_put_be32.exit.us ] ; 2 uses
  %.3.us = phi i32 [ %.078229.us, %bb.m ], [ %i.ds, %bb.r ], [ %i.gj, %middle.block ], [ %i.is, %bytestream2_put_be16.exit121.us.us ], [ %i.ew, %middle.block377 ], [ %.078229.us, %.preheader.us ], [ %i.il, %bytestream2_put_be16.exit121.us260 ], [ %i.dp, %bytestream2_put_be16.exit.us.us ], [ %i.da, %bytestream2_put_be32.exit.us ]
  %i.iu = add nsw i32 %.075230.us, -1
  %i.iv = icmp sgt i32 %.075230.us, 1
  br i1 %i.iv, label %bb.k, label %._crit_edge.us, !llvm.loop !210

._crit_edge.us:                                   ; preds = %.loopexit207.us, %bb.j, %bytestream2_get_byte.exit114.us
  %.sroa.0174.1.lcssa.us = phi ptr [ %i.cf, %bytestream2_get_byte.exit114.us ], [ %i.bm, %bb.j ], [ %.sroa.0174.2.us, %.loopexit207.us ]
  %.sroa.0155.1.lcssa.us = phi ptr [ %.sroa.0155.0234.us, %bytestream2_get_byte.exit114.us ], [ %.sroa.0155.0234.us, %bb.j ], [ %.sroa.0155.5.us, %.loopexit207.us ]
  %i.iw = add nuw nsw i32 %.074235.us, 1          ; 2 uses
  %exitcond278.not = icmp eq i32 %i.iw, %i.b
  br i1 %exitcond278.not, label %..loopexit209_crit_edge.us, label %bb.j, !llvm.loop !211

..loopexit209_crit_edge.us:                       ; preds = %._crit_edge.us, %bytestream2_get_be32.exit107.us
  %i.ix = add nuw nsw i32 %.0239.us, 1            ; 2 uses
  %exitcond279.not = icmp eq i32 %i.ix, %4
  br i1 %exitcond279.not, label %.loopexit208, label %.lr.ph241.split.us, !llvm.loop !212

.lr.ph.us:                                        ; preds = %bytestream2_get_byte.exit114.us
  %i.iy = zext i8 %i.cg to i32
  %i.iz = icmp eq i32 %.074235.us, %i.ad
  %or.cond96.us = select i1 %.not.not, i1 %i.iz, i1 false ; 3 uses
  br label %bb.k

.lr.ph241.split:                                  ; preds = %.lr.ph241, %bytestream2_init.exit
  %.0239 = phi i32 [ %i.jy, %bytestream2_init.exit ], [ 0, %.lr.ph241 ]
  %.sroa.0172.0238 = phi ptr [ %.sroa.0172.1, %bytestream2_init.exit ], [ %i.r, %.lr.ph241 ] ; 3 uses
  %.sroa.0183.0237 = phi ptr [ %.sroa.0183.1, %bytestream2_init.exit ], [ %1, %.lr.ph241 ] ; 3 uses
  %i.ja = ptrtoint ptr %.sroa.0183.0237 to i64
  %i.jb = sub i64 %i.aa, %i.ja
  %i.jc = icmp slt i64 %i.jb, 4
  br i1 %i.jc, label %bytestream2_get_be32.exit109, label %bb.z

bb.z:                                             ; preds = %.lr.ph241.split
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0183.0237, i64 4
  %i.je = load i32, ptr %.sroa.0183.0237, align 1, !tbaa !33
  %i.jf = tail call i32 @llvm.bswap.i32(i32 %i.je)
  br label %bytestream2_get_be32.exit109

bytestream2_get_be32.exit109:                     ; preds = %.lr.ph241.split, %bb.z
  %.sroa.0183.1 = phi ptr [ %i.jd, %bb.z ], [ %i.q, %.lr.ph241.split ]
  %.0.i108 = phi i32 [ %i.jf, %bb.z ], [ 0, %.lr.ph241.split ] ; 2 uses
  %i.jg = ptrtoint ptr %.sroa.0172.0238 to i64
  %i.jh = sub i64 %i.ab, %i.jg
  %i.ji = icmp slt i64 %i.jh, 4
  br i1 %i.ji, label %bytestream2_get_be32.exit107, label %bb.aa

bb.aa:                                            ; preds = %bytestream2_get_be32.exit109
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0172.0238, i64 4
  %i.jk = load i32, ptr %.sroa.0172.0238, align 1, !tbaa !33
end_hunk_1
