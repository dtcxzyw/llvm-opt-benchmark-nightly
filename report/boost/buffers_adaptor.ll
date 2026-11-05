Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/buffers_adaptor?download=true
inline.NumInlined: 1930
inline.NumDeleted: 564
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_:bb.a
  %i.bsi = load i64, ptr %i.bsh, align 8, !tbaa !41
  %i.bsj = call i64 @llvm.usub.sat.i64(i64 %i.bsi, i64 %.sroa.121667.1) ; 2 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %.sroa.01665.1, i64 16 ; 2 uses
  %i.bsl = icmp eq ptr %i.bsk, %.sroa.61666.2
  br i1 %i.bsl, label %.thread.i.i1269, label %.peel.next.i.i1266

.peel.next.i.i1266:                               ; preds = %.lr.ph.i.i.i1265, %.peel.next.i.i1266
  %.08.i.i.i1267 = phi i64 [ %i.bsq, %.peel.next.i.i1266 ], [ %i.bsj, %.lr.ph.i.i.i1265 ] ; 2 uses
  %.sroa.4.07.i.i.i1268 = phi ptr [ %i.bso, %.peel.next.i.i1266 ], [ %i.bsk, %.lr.ph.i.i.i1265 ] ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i1268, i64 8
  %i.bsn = load i64, ptr %i.bsm, align 8, !tbaa !41 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %.sroa.4.07.i.i.i1268, i64 16 ; 2 uses
  %i.bsp = icmp eq ptr %i.bso, %.sroa.61666.2
  %i.bsq = add i64 %i.bsn, %.08.i.i.i1267
  br i1 %i.bsp, label %.thread.i.i1269, label %.peel.next.i.i1266, !llvm.loop !5

.thread.i.i1269:                                  ; preds = %.peel.next.i.i1266, %.lr.ph.i.i.i1265
  %.08.i.lcssa.i.i1270 = phi i64 [ 0, %.lr.ph.i.i.i1265 ], [ %.08.i.i.i1267, %.peel.next.i.i1266 ]
  %.sroa.6.0.i.i.lcssa.i.i1271 = phi i64 [ %i.bsj, %.lr.ph.i.i.i1265 ], [ %i.bsn, %.peel.next.i.i1266 ]
  %.sroa.speculated.i.i.i.i1272 = call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa.i.i1271, i64 %.sroa.171668.0)
  %i.bsr = add i64 %.sroa.speculated.i.i.i.i1272, %.08.i.lcssa.i.i1270
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1274

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1274: ; preds = %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1234, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1263, %.thread.i.i1269
  %.0.lcssa.i.i.i1273 = phi i64 [ 0, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1263 ], [ %i.bsr, %.thread.i.i1269 ], [ 0, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1234 ]
  %i.bss = icmp eq i64 %.0.lcssa.i.i.i1273, %spec.select
  %i.bst = zext i1 %i.bss to i8
  store i8 %i.bst, ptr %i.al, align 1, !tbaa !125
  %i.bsu = call noundef zeroext i1 @_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci(ptr noundef nonnull align 8 dereferenceable(808) %i.brg, ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull align 1 dereferenceable(1) @.str.6, ptr noundef nonnull @.str.9, i32 noundef 552) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.bsv = load ptr, ptr %i.boh, align 8, !tbaa !113, !noalias !312 ; 7 uses
  %i.bsw = load ptr, ptr %i.bom, align 8, !tbaa !115, !noalias !312 ; 4 uses
  %i.bsx = load i64, ptr %i.boo, align 8, !tbaa !144, !noalias !312 ; 4 uses
  %i.bsy = load i64, ptr %i.boq, align 8, !tbaa !143, !noalias !312 ; 6 uses
  store ptr %i.bsv, ptr %77, align 8, !tbaa !152, !alias.scope !312
  %i.bsz = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 5 uses
  store ptr %i.bsw, ptr %i.bsz, align 8, !tbaa !153, !alias.scope !312
  %i.bta = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 3 uses
  store i64 0, ptr %i.bta, align 8, !tbaa !154, !alias.scope !312
  %i.btb = getelementptr inbounds nuw i8, ptr %77, i64 24 ; 3 uses
  %i.btc = icmp eq i64 %i.bsy, 0
  br i1 %i.btc, label %.thread88.i.i.i1302, label %bb.kw

.thread88.i.i.i1302:                              ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1274
  store ptr %i.bsv, ptr %i.bsz, align 8, !tbaa !153, !alias.scope !312
  br label %bb.kx

bb.kw:                                            ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEvEEmRKT_.exit1274
  %i.btd = icmp eq ptr %i.bsv, %i.bsw
  br i1 %i.btd, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw, %.thread88.i.i.i1302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bta, i8 0, i64 16, i1 false), !alias.scope !312
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303

bb.ky:                                            ; preds = %bb.kw
  %.not.old.i.i.i1275 = icmp eq i64 %i.bsx, 0
  br i1 %.not.old.i.i.i1275, label %.loopexit.i.i.i1289, label %.preheader.i.i.preheader.i1276

.preheader.i.i.preheader.i1276:                   ; preds = %bb.ky
  %i.bte = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8
  %i.btf = load i64, ptr %i.bte, align 8, !tbaa !41, !noalias !312 ; 2 uses
  %.sroa.speculated31.i.i12.i1277 = call i64 @llvm.umin.i64(i64 %i.btf, i64 %i.bsx) ; 2 uses
  %.not21.i.i13.i1278 = icmp ult i64 %i.bsx, %i.btf
  br i1 %.not21.i.i13.i1278, label %.loopexit.i.i.i1289.sink.split, label %.lr.ph.i1279

.preheader.i.i.i1283:                             ; preds = %.lr.ph.i1279
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bti, i64 24
  %i.bth = load i64, ptr %i.btg, align 8, !tbaa !41, !noalias !312 ; 2 uses
  %.sroa.speculated31.i.i.i1284 = call i64 @llvm.umin.i64(i64 %i.bth, i64 %i.btk) ; 2 uses
  %.not21.i.i.i1285 = icmp ult i64 %i.btk, %i.bth
  br i1 %.not21.i.i.i1285, label %.loopexit.i.i.i1289.sink.split, label %.lr.ph.i1279

.lr.ph.i1279:                                     ; preds = %.preheader.i.i.preheader.i1276, %.preheader.i.i.i1283
  %.sroa.speculated31.i.i15.i1280 = phi i64 [ %.sroa.speculated31.i.i.i1284, %.preheader.i.i.i1283 ], [ %.sroa.speculated31.i.i12.i1277, %.preheader.i.i.preheader.i1276 ]
  %.060.i.i14.i1281 = phi i64 [ %i.btk, %.preheader.i.i.i1283 ], [ %i.bsx, %.preheader.i.i.preheader.i1276 ]
  %i.bti = phi ptr [ %i.btj, %.preheader.i.i.i1283 ], [ %i.bsv, %.preheader.i.i.preheader.i1276 ] ; 2 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 16 ; 3 uses
  %i.btk = sub nuw i64 %.060.i.i14.i1281, %.sroa.speculated31.i.i15.i1280 ; 4 uses
  %.not.i.i.i1282 = icmp eq i64 %i.btk, 0
  br i1 %.not.i.i.i1282, label %.loopexit.i.i.i1289.sink.split, label %.preheader.i.i.i1283

.loopexit.i.i.i1289.sink.split:                   ; preds = %.lr.ph.i1279, %.preheader.i.i.i1283, %.preheader.i.i.preheader.i1276
  %.sink3579 = phi ptr [ %i.bsv, %.preheader.i.i.preheader.i1276 ], [ %i.btj, %.preheader.i.i.i1283 ], [ %i.btj, %.lr.ph.i1279 ] ; 2 uses
  %.sink3578 = phi i64 [ %.sroa.speculated31.i.i12.i1277, %.preheader.i.i.preheader.i1276 ], [ 0, %.lr.ph.i1279 ], [ %.sroa.speculated31.i.i.i1284, %.preheader.i.i.i1283 ] ; 2 uses
  store ptr %.sink3579, ptr %77, align 8, !alias.scope !312
  store i64 %.sink3578, ptr %i.bta, align 8, !alias.scope !312
  br label %.loopexit.i.i.i1289

.loopexit.i.i.i1289:                              ; preds = %.loopexit.i.i.i1289.sink.split, %bb.ky
  %i.btl = phi i64 [ 0, %bb.ky ], [ %.sink3578, %.loopexit.i.i.i1289.sink.split ]
  %i.btm = phi ptr [ %i.bsv, %bb.ky ], [ %.sink3579, %.loopexit.i.i.i1289.sink.split ] ; 3 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 8
  %i.bto = load i64, ptr %i.btn, align 8, !tbaa !41, !noalias !312
  %i.btp = sub i64 %i.bto, %i.btl                 ; 3 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btm, i64 16 ; 5 uses
  %i.btr = icmp eq ptr %i.btq, %i.bsw
  br i1 %i.btr, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %.loopexit.i.i.i1289
  %.sroa.speculated.i.i.i1300 = call i64 @llvm.umin.i64(i64 %i.bsy, i64 %i.btp)
  store i64 %.sroa.speculated.i.i.i1300, ptr %i.btb, align 8, !tbaa !155, !alias.scope !312
  store ptr %i.btq, ptr %i.bsz, align 8, !tbaa !153, !alias.scope !312
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303

bb.la:                                            ; preds = %.loopexit.i.i.i1289
  %.not22.i.i.i1290 = icmp ult i64 %i.btp, %i.bsy
  br i1 %.not22.i.i.i1290, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  store ptr %i.btq, ptr %i.bsz, align 8, !tbaa !153, !alias.scope !312
  br label %bb.ld

bb.lc:                                            ; preds = %bb.la
  %i.bts = sub nuw i64 %i.bsy, %i.btp
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %i.btt = phi i64 [ -1, %bb.lc ], [ %i.bsy, %bb.lb ]
  %i.btu = phi ptr [ %i.bsw, %bb.lc ], [ %i.btq, %bb.lb ] ; 2 uses
  %.061.i.i.i1291 = phi i64 [ %i.bts, %bb.lc ], [ %i.bsy, %bb.lb ] ; 2 uses
  %.0.i.i.i1292 = phi ptr [ %i.btq, %bb.lc ], [ %i.btm, %bb.lb ] ; 2 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %.0.i.i.i1292, i64 16 ; 2 uses
  %i.btw = icmp eq ptr %i.btv, %i.btu
  br i1 %i.btw, label %._crit_edge.i.i.i1297, label %.lr.ph.i.i.i1293

._crit_edge.i.i.i1297:                            ; preds = %bb.le, %bb.ld
  %.162.lcssa.i.i.i1298 = phi i64 [ %.061.i.i.i1291, %bb.ld ], [ %i.bua, %bb.le ]
  %.sroa.speculated41.i.i.i1299 = call i64 @llvm.umin.i64(i64 %i.btt, i64 %.162.lcssa.i.i.i1298)
  store i64 %.sroa.speculated41.i.i.i1299, ptr %i.btb, align 8, !tbaa !155, !alias.scope !312
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303

.lr.ph.i.i.i1293:                                 ; preds = %bb.ld, %bb.le
  %i.btx = phi ptr [ %i.bub, %bb.le ], [ %i.btv, %bb.ld ] ; 3 uses
  %.pn.i.i.i1294 = phi ptr [ %i.btx, %bb.le ], [ %.0.i.i.i1292, %bb.ld ]
  %.16270.i.i.i1295 = phi i64 [ %i.bua, %bb.le ], [ %.061.i.i.i1291, %bb.ld ] ; 3 uses
  %.in.i.i.i1296 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i1294, i64 8
  %i.bty = load i64, ptr %.in.i.i.i1296, align 8, !tbaa !41, !noalias !312 ; 2 uses
  %i.btz = icmp ult i64 %i.bty, %.16270.i.i.i1295
  br i1 %i.btz, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %.lr.ph.i.i.i1293
  %i.bua = sub nuw i64 %.16270.i.i.i1295, %i.bty  ; 2 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btx, i64 16 ; 2 uses
  %i.buc = icmp eq ptr %i.bub, %i.btu
  br i1 %i.buc, label %._crit_edge.i.i.i1297, label %.lr.ph.i.i.i1293, !llvm.loop !4

bb.lf:                                            ; preds = %.lr.ph.i.i.i1293
  store i64 %.16270.i.i.i1295, ptr %i.btb, align 8, !tbaa !155, !alias.scope !312
  store ptr %i.btx, ptr %i.bsz, align 8, !tbaa !153, !alias.scope !312
  br label %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303

_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303: ; preds = %bb.kx, %bb.kz, %._crit_edge.i.i.i1297, %bb.lf
  call void @_ZN5boost5beast20test_buffer_sequenceINS0_15buffers_adaptorINS0_14buffers_tripleEE8subrangeILb0EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(32) %77)
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #28
  br i1 %.not.i1156, label %.preheader1763.lr.ph, label %._crit_edge2100

.preheader1763.lr.ph:                             ; preds = %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303
  %i.bud = getelementptr inbounds nuw i8, ptr %78, i64 48 ; 10 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %78, i64 56 ; 6 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %78, i64 64 ; 7 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %78, i64 72 ; 2 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %78, i64 80 ; 6 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %78, i64 88 ; 16 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %78, i64 96 ; 9 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %78, i64 104 ; 5 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 12 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 6 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.buq = add nuw nsw i64 %spec.select, 3
  %xtraiter3843 = and i64 %spec.select, 3         ; 3 uses
  %i.bur = icmp ult i64 %i.blg, 4
  %unroll_iter3847 = and i64 %spec.select, 12
  %lcmp.mod3845.not = icmp eq i64 %xtraiter3843, 0
  %lcmp.mod3846 = icmp ne i64 %xtraiter3843, 0
  br label %.preheader1763

.preheader1763:                                   ; preds = %.preheader1763.lr.ph, %bb.lg
  %indvars.iv2405 = phi i64 [ 4, %.preheader1763.lr.ph ], [ %indvars.iv.next2406, %bb.lg ] ; 3 uses
  %indvars.iv = phi i64 [ 2, %.preheader1763.lr.ph ], [ %indvars.iv.next, %bb.lg ] ; 2 uses
  %.0522099 = phi i64 [ 1, %.preheader1763.lr.ph ], [ %i.but, %bb.lg ] ; 6 uses
  %.02098 = phi i8 [ 1, %.preheader1763.lr.ph ], [ %i.buv, %bb.lg ]
  br label %.preheader.preheader

._crit_edge2100:                                  ; preds = %bb.lg, %_ZNK5boost5beast15buffers_adaptorINS0_14buffers_tripleEE4dataEv.exit1303
  call void @_ZN5boost5beast6detail27test_mutable_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #28
  ret void

.loopexit:                                        ; preds = %bb.lh
  %indvars.iv.next2403 = add nuw nsw i64 %indvars.iv2402, 1 ; 2 uses
  %exitcond2407 = icmp eq i64 %indvars.iv.next2403, %indvars.iv2405
  br i1 %exitcond2407, label %bb.lg, label %.preheader.preheader, !llvm.loop !270

.preheader.preheader:                             ; preds = %.loopexit, %.preheader1763
  %indvars.iv2402 = phi i64 [ 3, %.preheader1763 ], [ %indvars.iv.next2403, %.loopexit ] ; 2 uses
  %storemerge2096 = phi i64 [ 1, %.preheader1763 ], [ %i.bus, %.loopexit ] ; 2 uses
  %.12095 = phi i8 [ %.02098, %.preheader1763 ], [ %i.buv, %.loopexit ]
  %i.bus = add nuw nsw i64 %storemerge2096, 1
  br label %.preheader

bb.lg:                                            ; preds = %.loopexit
  %i.but = add nuw nsw i64 %.0522099, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next2406 = add nuw nsw i64 %indvars.iv2405, 1
  %exitcond2408.not = icmp eq i64 %indvars.iv2405, %i.buq
  br i1 %exitcond2408.not, label %._crit_edge2100, label %.preheader1763, !llvm.loop !271

.preheader:                                       ; preds = %.preheader.preheader, %bb.lh
  %storemerge792093 = phi i64 [ %i.buu, %bb.lh ], [ 1, %.preheader.preheader ] ; 2 uses
  %.22092 = phi i8 [ %i.buv, %bb.lh ], [ %.12095, %.preheader.preheader ]
  br label %.lr.ph.i1305.preheader

bb.lh:                                            ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit1598
  %i.buu = add nuw nsw i64 %storemerge792093, 1   ; 2 uses
  %exitcond2404 = icmp eq i64 %i.buu, %indvars.iv2402
  br i1 %exitcond2404, label %.loopexit, label %.preheader, !llvm.loop !272

.lr.ph.i1305.preheader:                           ; preds = %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit1598, %.preheader
  %.0512090 = phi i64 [ 1, %.preheader ], [ %i.cjg, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit1598 ] ; 5 uses
  %.32089 = phi i8 [ %.22092, %.preheader ], [ %i.buv, %_ZN5boost5beast9unit_test5suite6expectIbA1_cEEbRKT_RKT0_PKci.exit1598 ] ; 3 uses
  %i.buv = add i8 %.32089, 1                      ; 4 uses
  br i1 %i.bur, label %.lr.ph.i1305.epil.preheader, label %.lr.ph.i1305

.lr.ph.i1305:                                     ; preds = %.lr.ph.i1305.preheader, %.lr.ph.i1305
  %.06.i1306 = phi i64 [ %i.bvh, %.lr.ph.i1305 ], [ 0, %.lr.ph.i1305.preheader ] ; 5 uses
  %.045.i1307 = phi i8 [ %i.bve, %.lr.ph.i1305 ], [ %.32089, %.lr.ph.i1305.preheader ] ; 5 uses
  %niter3848 = phi i64 [ %niter3848.next.3, %.lr.ph.i1305 ], [ 0, %.lr.ph.i1305.preheader ]
  %i.buw = add i8 %.045.i1307, 1
  %i.bux = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i1306
  store i8 %.045.i1307, ptr %i.bux, align 1, !tbaa !68
  %i.buy = add i8 %.045.i1307, 2
  %i.buz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i1306
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 1
  store i8 %i.buw, ptr %i.bva, align 1, !tbaa !68
  %i.bvb = add i8 %.045.i1307, 3
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i1306
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 2
  store i8 %i.buy, ptr %i.bvd, align 1, !tbaa !68
  %i.bve = add i8 %.045.i1307, 4                  ; 2 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i1306
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 3
  store i8 %i.bvb, ptr %i.bvg, align 1, !tbaa !68
  %i.bvh = add nuw nsw i64 %.06.i1306, 4          ; 2 uses
  %niter3848.next.3 = add i64 %niter3848, 4       ; 2 uses
  %niter3848.ncmp.3 = icmp eq i64 %niter3848.next.3, %unroll_iter3847
  br i1 %niter3848.ncmp.3, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309.unr-lcssa, label %.lr.ph.i1305, !llvm.loop !264

_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309.unr-lcssa: ; preds = %.lr.ph.i1305
  br i1 %lcmp.mod3845.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309, label %.lr.ph.i1305.epil.preheader

.lr.ph.i1305.epil.preheader:                      ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309.unr-lcssa, %.lr.ph.i1305.preheader
  %.06.i1306.epil.init = phi i64 [ 0, %.lr.ph.i1305.preheader ], [ %i.bvh, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309.unr-lcssa ]
  %.045.i1307.epil.init = phi i8 [ %.32089, %.lr.ph.i1305.preheader ], [ %i.bve, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3846)
  br label %.lr.ph.i1305.epil

.lr.ph.i1305.epil:                                ; preds = %.lr.ph.i1305.epil, %.lr.ph.i1305.epil.preheader
  %.06.i1306.epil = phi i64 [ %i.bvk, %.lr.ph.i1305.epil ], [ %.06.i1306.epil.init, %.lr.ph.i1305.epil.preheader ] ; 2 uses
  %.045.i1307.epil = phi i8 [ %i.bvi, %.lr.ph.i1305.epil ], [ %.045.i1307.epil.init, %.lr.ph.i1305.epil.preheader ] ; 2 uses
  %epil.iter3844 = phi i64 [ %epil.iter3844.next, %.lr.ph.i1305.epil ], [ 0, %.lr.ph.i1305.epil.preheader ]
  %i.bvi = add i8 %.045.i1307.epil, 1
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.06.i1306.epil
  store i8 %.045.i1307.epil, ptr %i.bvj, align 1, !tbaa !68
  %i.bvk = add nuw nsw i64 %.06.i1306.epil, 1
  %epil.iter3844.next = add i64 %epil.iter3844, 1 ; 2 uses
  %epil.iter3844.cmp.not = icmp eq i64 %epil.iter3844.next, %xtraiter3843
  br i1 %epil.iter3844.cmp.not, label %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309, label %.lr.ph.i1305.epil, !llvm.loop !273

_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309: ; preds = %.lr.ph.i1305.epil, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #28
  %i.bvl = load ptr, ptr %i.at, align 8, !tbaa !113
  %i.bvm = ptrtoint ptr %i.bvl to i64
  %i.bvn = sub i64 %i.bvm, %i.co
  %i.bvo = load ptr, ptr %i.cq, align 8, !tbaa !114
  %i.bvp = ptrtoint ptr %i.bvo to i64
  %i.bvq = sub i64 %i.bvp, %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %78, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 48, i1 false), !tbaa.struct !126
  %i.bvr = getelementptr inbounds i8, ptr %78, i64 %i.bvn
  store ptr %i.bvr, ptr %i.bud, align 8, !tbaa !113
  %i.bvs = getelementptr inbounds i8, ptr %78, i64 %i.bvq ; 2 uses
  store ptr %i.bvs, ptr %i.bue, align 8, !tbaa !114
  %i.bvt = load <2 x i64>, ptr %i.de, align 8, !tbaa !30
  store <2 x i64> %i.bvt, ptr %i.bug, align 8, !tbaa !30
  %i.bvu = load <2 x i64>, ptr %i.an, align 8, !tbaa !30
  store <2 x i64> %i.bvu, ptr %i.bui, align 8, !tbaa !30
  %i.bvv = load i64, ptr %i.dm, align 8, !tbaa !127
  store i64 %i.bvv, ptr %i.buk, align 8, !tbaa !127
  br label %bb.li

bb.li:                                            ; preds = %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1406
  %i.bvw = phi ptr [ %i.bvs, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309 ], [ %i.bzf, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1406 ] ; 14 uses
  %.sroa.01646.02072 = phi ptr [ %i.ag, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309 ], [ %i.bzg, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1406 ] ; 3 uses
  %.sroa.71648.02071 = phi i64 [ %.0522099, %_ZZN5boost5beast19test_dynamic_bufferINS0_15buffers_adaptorINS0_14buffers_tripleEEEEEvRKT_ENKUlvE_clEv.exit1309 ], [ %i.bzh, %_ZN5boost5beast15buffers_adaptorINS0_14buffers_tripleEE6commitEm.exit1406 ] ; 3 uses
  %i.bvx = load i64, ptr %i.bug, align 8, !tbaa !116 ; 2 uses
  %i.bvy = load i64, ptr %i.bui, align 8, !tbaa !143 ; 2 uses
  %i.bvz = sub i64 %i.bvx, %i.bvy
  %.sroa.speculated1641 = call i64 @llvm.umin.i64(i64 %i.bvz, i64 %storemerge2096) ; 9 uses
  store ptr %i.bvw, ptr %i.buf, align 8, !tbaa !115, !noalias !313
  %.not.i1319 = icmp eq ptr %i.bvw, %i.bud
  br i1 %.not.i1319, label %bb.lo, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %.sroa.22.0..sroa_idx.i1320 = getelementptr inbounds nuw i8, ptr %i.bvw, i64 8
  %.sroa.22.0.copyload.i1321 = load i64, ptr %.sroa.22.0..sroa_idx.i1320, align 8, !tbaa !30, !noalias !313
  %i.bwa = load i64, ptr %i.buj, align 8, !tbaa !149, !noalias !313 ; 4 uses
  %i.bwb = sub i64 %.sroa.22.0.copyload.i1321, %i.bwa ; 2 uses
  %i.bwc = icmp ugt i64 %.sroa.speculated1641, %i.bwb
  br i1 %i.bwc, label %bb.lk, label %bb.ln

bb.lk:                                            ; preds = %bb.lj
  %i.bwd = sub nuw i64 %.sroa.speculated1641, %i.bwb ; 2 uses
  %i.bwe = getelementptr inbounds nuw i8, ptr %i.bvw, i64 16 ; 3 uses
  %.not2238.i = icmp eq ptr %i.bwe, %i.bud
  br i1 %.not2238.i, label %.loopexit.i, label %.lr.ph.i1345

.lr.ph.i1345:                                     ; preds = %bb.lk, %bb.lm
  %i.bwf = phi ptr [ %i.bwk, %bb.lm ], [ %i.bwe, %bb.lk ] ; 2 uses
  %.039.i = phi i64 [ %i.bwj, %bb.lm ], [ %i.bwd, %bb.lk ] ; 3 uses
  %i.bwg = phi ptr [ %i.bwf, %bb.lm ], [ %i.bvw, %bb.lk ] ; 2 uses
  %.sroa.2.0..sroa_idx.i1346 = getelementptr inbounds nuw i8, ptr %i.bwg, i64 24
  %.sroa.2.0.copyload.i1347 = load i64, ptr %.sroa.2.0..sroa_idx.i1346, align 8, !tbaa !30, !noalias !313 ; 3 uses
  %i.bwh = icmp ult i64 %.039.i, %.sroa.2.0.copyload.i1347
  br i1 %i.bwh, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %.lr.ph.i1345
  store i64 %.039.i, ptr %i.buk, align 8, !tbaa !127, !noalias !313
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwg, i64 32 ; 3 uses
  store ptr %i.bwi, ptr %i.buf, align 8, !tbaa !115, !noalias !313
  br label %.thread.i1322

bb.lm:                                            ; preds = %.lr.ph.i1345
  %i.bwj = sub nuw i64 %.039.i, %.sroa.2.0.copyload.i1347 ; 2 uses
  store i64 %.sroa.2.0.copyload.i1347, ptr %i.buk, align 8, !tbaa !127, !noalias !313
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16 ; 3 uses
  %.not22.i = icmp eq ptr %i.bwk, %i.bud
  br i1 %.not22.i, label %.loopexit.i, label %.lr.ph.i1345, !llvm.loop !10

bb.ln:                                            ; preds = %bb.lj
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bvw, i64 16 ; 3 uses
  store ptr %i.bwl, ptr %i.buf, align 8, !tbaa !115, !noalias !313
  %i.bwm = add i64 %i.bwa, %.sroa.speculated1641
  store i64 %i.bwm, ptr %i.buk, align 8, !tbaa !127, !noalias !313
  br label %.thread.i1322

.loopexit.i:                                      ; preds = %bb.lm, %bb.lk
  %.lcssa36.i = phi ptr [ %i.bwe, %bb.lk ], [ %i.bwk, %bb.lm ] ; 3 uses
  %.0.lcssa.i1348 = phi i64 [ %i.bwd, %bb.lk ], [ %i.bwj, %bb.lm ]
  store ptr %.lcssa36.i, ptr %i.buf, align 8, !tbaa !115, !noalias !313
  br label %bb.lo

bb.lo:                                            ; preds = %.loopexit.i, %bb.li
  %i.bwn = phi ptr [ %i.bvw, %bb.li ], [ %.lcssa36.i, %.loopexit.i ]
  %i.bwo = phi ptr [ %i.bud, %bb.li ], [ %.lcssa36.i, %.loopexit.i ]
  %.2.i = phi i64 [ %.sroa.speculated1641, %bb.li ], [ %.0.lcssa.i1348, %.loopexit.i ]
  %.not23.i1349 = icmp eq i64 %.2.i, 0
  br i1 %.not23.i1349, label %..thread_crit_edge.i1350, label %bb.lp

..thread_crit_edge.i1350:                         ; preds = %bb.lo
  %.pre.i1352 = load i64, ptr %i.buj, align 8, !tbaa !149, !noalias !313
  br label %.thread.i1322

bb.lp:                                            ; preds = %bb.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28, !noalias !313
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28, !noalias !313
  store ptr @.str.1, ptr %21, align 8, !tbaa !52, !noalias !313
  %i.bwp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.2, ptr %i.bwp, align 8, !tbaa !53, !noalias !313
  %i.bwq = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 353, ptr %i.bwq, align 8, !tbaa !54, !noalias !313
  %i.bwr = getelementptr inbounds nuw i8, ptr %21, i64 20
  store i32 40, ptr %i.bwr, align 4, !tbaa !55, !noalias !313
  invoke void @_ZN5boost15throw_exceptionISt12length_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(24) %21) #30
          to label %bb.lq unwind label %bb.lr, !noalias !313

bb.lq:                                            ; preds = %bb.lp
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jr, %bb.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1517, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1478, %bb.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i1563, %bb.mh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %common.resume.i1590, %bb.lr
  %common.resume.op = phi { ptr, i32 } [ %i.bws, %bb.lr ], [ %.pn71.pn, %bb.jr ], [ %eh.lpad-body1603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %eh.lpad-body1610, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i1563 ], [ %i.cjd, %common.resume.i1590 ], [ %i.bzu, %bb.mh ], [ %i.ccx, %bb.mz ], [ %lpad.loopexit.split-lp3582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1478 ], [ %eh.lpad-body1584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1517 ], [ %.pn76, %bb.kb ], [ %lpad.loopexit.split-lp3582, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.lr:                                            ; preds = %bb.lp
  %i.bws = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28, !noalias !313
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #28, !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28, !noalias !313
  br label %common.resume

.thread.i1322:                                    ; preds = %..thread_crit_edge.i1350, %bb.ln, %bb.ll
  %i.bwt = phi ptr [ %i.bwl, %bb.ln ], [ %i.bwi, %bb.ll ], [ %i.bwn, %..thread_crit_edge.i1350 ] ; 2 uses
  %i.bwu = phi i64 [ %i.bwa, %bb.ln ], [ %i.bwa, %bb.ll ], [ %.pre.i1352, %..thread_crit_edge.i1350 ] ; 4 uses
  %i.bwv = phi ptr [ %i.bwl, %bb.ln ], [ %i.bwi, %bb.ll ], [ %i.bwo, %..thread_crit_edge.i1350 ] ; 4 uses
  %i.bww = icmp eq i64 %i.bvx, %i.bvy
  %i.bwx = icmp eq ptr %i.bvw, %i.bwv
  %or.cond3223 = select i1 %i.bww, i1 true, i1 %i.bwx
  br i1 %or.cond3223, label %_ZN5boost4asio11buffer_copyINS_5beast15buffers_adaptorINS2_14buffers_tripleEE8subrangeILb1EEENS0_12const_bufferEEEmRKT_RKT0_.exit1376, label %bb.ls

bb.ls:                                            ; preds = %.thread.i1322
  %.not.old.i.i.i1323 = icmp eq i64 %i.bwu, 0
  br i1 %.not.old.i.i.i1323, label %.loopexit.i.i.i1331, label %.preheader.i.i.preheader.i1324

.preheader.i.i.preheader.i1324:                   ; preds = %bb.ls
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bvw, i64 8
  %i.bwz = load i64, ptr %i.bwy, align 8, !tbaa !41, !noalias !313 ; 2 uses
  %.sroa.speculated31.i.i46.i = call i64 @llvm.umin.i64(i64 %i.bwz, i64 %i.bwu) ; 2 uses
  %.not21.i.i47.i = icmp ult i64 %i.bwu, %i.bwz
  br i1 %.not21.i.i47.i, label %.loopexit.i.i.i1331, label %.lr.ph50.i

end_hunk_0
