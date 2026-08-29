Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.split3303:                                       ; preds = %bb.ig, %bb.ie
  %.03171 = phi i64 [ %i.aew, %bb.ie ], [ %i.afm, %bb.ig ] ; 2 uses
  %i.afn = icmp sgt i64 %.03171, -1               ; 2 uses
  %.neg674.i395 = sext i1 %i.afn to i32
  %i.afo = zext i1 %i.afn to i64
  %i.afp = shl i64 %.03171, %i.afo                ; 2 uses
  %i.afq = and i64 %i.afp, 1024
  %i.afr = add i64 %i.afq, %i.afp                 ; 2 uses
  %i.afs = icmp ult i64 %i.afr, 1024
  %spec.select3575.v = select i1 %i.afs, i32 65, i32 64
  %i.aft = lshr i64 %i.afr, 11
  %reass.sub5859 = sub nsw i32 %i.aeo, %i.aeq
  %i.afu = add nsw i32 %reass.sub5859, 1086
  %spec.select3575 = add nsw i32 %i.afu, %.neg674.i395
  %i.afv = add nsw i32 %spec.select3575, %spec.select3575.v
  %i.afw = zext nneg i32 %i.afv to i64
  %i.afx = shl nuw nsw i64 %i.afw, 52
  %i.afy = and i64 %i.aft, 4503599627370495
  %i.afz = or disjoint i64 %i.afx, %i.afy
  store i64 20, ptr %.5454.i, align 8, !tbaa !79
  %i.aga = select i1 %i.fx, i64 -9223372036854775808, i64 0
  %i.agb = or disjoint i64 %i.afz, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store i64 %i.agb, ptr %i.agc, align 8, !tbaa !81
  store ptr %.73180, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.preheader4227

.critedge689.i394:                                ; preds = %..critedge689.i394_crit_edge, %bb.if
  %.pre-phi6948 = phi i32 [ %.pre6947, %..critedge689.i394_crit_edge ], [ %i.aeq, %bb.if ]
  %.pre-phi6946 = phi i128 [ %.pre6945, %..critedge689.i394_crit_edge ], [ %i.aes, %bb.if ]
  %.pre-phi6944 = phi i32 [ %.pre6943, %..critedge689.i394_crit_edge ], [ %i.aeo, %bb.if ]
  %.pre-phi6938 = phi i32 [ %.pre6937, %..critedge689.i394_crit_edge ], [ %i.aeh, %bb.if ] ; 2 uses
  %.pre-phi6934 = phi i64 [ %.pre6933, %..critedge689.i394_crit_edge ], [ %i.aep, %bb.if ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.agd = select i1 %i.aed, i64 0, i64 4
  %i.age = shl i64 %i.agd, %.pre-phi6934          ; 2 uses
  %i.agf = add i32 %.pre-phi6938, 686
  %i.agg = sext i32 %i.agf to i64
  %i.agh = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.agg
  %i.agi = load i64, ptr %i.agh, align 16, !tbaa !91
  %i.agj = add i32 %.pre-phi6938, 687
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.agk
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !91
  %i.agn = lshr i64 %i.agm, 63
  %i.ago = add i64 %i.agn, %i.agi
  %i.agp = zext i64 %i.ago to i128
  %i.agq = mul nuw i128 %.pre-phi6946, %i.agp     ; 2 uses
  %i.agr = lshr i128 %i.agq, 64
  %i.ags = trunc nuw i128 %i.agr to i64
  %i.agt = trunc i128 %i.agq to i64
  %i.agu = lshr i64 %i.agt, 63
  %i.agv = add nuw i64 %i.agu, %i.ags             ; 2 uses
  %.not677.i373 = icmp eq i64 %i.age, 0
  %i.agw = select i1 %.not677.i373, i64 8, i64 9
  %i.agx = add i64 %i.agw, %i.age
  %i.agy = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.agv, i1 true) ; 3 uses
  %i.agz = trunc nuw nsw i64 %i.agy to i32
  %i.aha = shl i64 %i.agv, %i.agy                 ; 3 uses
  %i.ahb = add nsw i32 %.pre-phi6944, 64
  %i.ahc = add nuw nsw i32 %.pre-phi6948, %i.agz
  %i.ahd = sub nsw i32 %i.ahb, %i.ahc             ; 7 uses
  %i.ahe = shl i64 %i.agx, %i.agy                 ; 3 uses
  %i.ahf = icmp sgt i32 %i.ahd, -1086
  br i1 %i.ahf, label %.thread3269, label %bb.ih, !prof !24

bb.ih:                                            ; preds = %.critedge689.i394
  %i.ahg = icmp samesign ult i32 %i.ahd, -1137
  br i1 %i.ahg, label %.thread3266, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ahh = sub nuw nsw i32 -1074, %i.ahd          ; 2 uses
  %i.ahi = icmp samesign ult i32 %i.ahd, -1134
  br i1 %i.ahi, label %.thread3266, label %.thread3269, !prof !121

.thread3266:                                      ; preds = %bb.ih, %bb.ii
  %.0603.i3763268 = phi i32 [ %i.ahh, %bb.ii ], [ 64, %bb.ih ]
  %i.ahj = add nsw i32 %.0603.i3763268, -60       ; 2 uses
  %i.ahk = zext nneg i32 %i.ahj to i64            ; 2 uses
  %i.ahl = lshr i64 %i.aha, %i.ahk
  %i.ahm = add nsw i32 %i.ahj, %i.ahd
  %i.ahn = lshr i64 %i.ahe, %i.ahk
  %i.aho = add nuw i64 %i.ahn, 9
  br label %.thread3269

.thread3269:                                      ; preds = %.critedge689.i394, %.thread3266, %bb.ii
  %.0604.i377 = phi i64 [ %i.aho, %.thread3266 ], [ %i.ahe, %bb.ii ], [ %i.ahe, %.critedge689.i394 ] ; 2 uses
  %.0602.i378 = phi i32 [ 60, %.thread3266 ], [ %i.ahh, %bb.ii ], [ 11, %.critedge689.i394 ] ; 3 uses
  %.sroa.19.0.in.i379 = phi i32 [ %i.ahm, %.thread3266 ], [ %i.ahd, %bb.ii ], [ %i.ahd, %.critedge689.i394 ]
  %.sroa.029.0.i380 = phi i64 [ %i.ahl, %.thread3266 ], [ %i.aha, %bb.ii ], [ %i.aha, %.critedge689.i394 ] ; 2 uses
  %i.ahp = zext nneg i32 %.0602.i378 to i64       ; 2 uses
  %notmask.i381 = shl nsw i64 -1, %i.ahp
  %i.ahq = xor i64 %notmask.i381, -1
  %i.ahr = and i64 %.sroa.029.0.i380, %i.ahq
  %i.ahs = shl nuw nsw i64 %i.ahr, 3              ; 2 uses
  %i.aht = add nsw i32 %.0602.i378, -1
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = shl nuw nsw i64 8, %i.ahu              ; 2 uses
  %i.ahw = lshr i64 %.sroa.029.0.i380, %i.ahp
  %i.ahx = add i64 %i.ahv, %.0604.i377
  %i.ahy = icmp uge i64 %i.ahs, %i.ahx            ; 2 uses
  %i.ahz = zext i1 %i.ahy to i64
  %i.aia = add nuw nsw i64 %i.ahw, %i.ahz         ; 3 uses
  %i.aib = icmp eq i64 %i.aia, 0
  br i1 %i.aib, label %bb.iu, label %bb.ij, !prof !7

bb.ij:                                            ; preds = %.thread3269
  %i.aic = add nsw i32 %.sroa.19.0.in.i379, %.0602.i378
  %i.aid = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.aia, i1 true) ; 2 uses
  %i.aie = trunc nuw nsw i64 %i.aid to i32
  %i.aif = shl i64 %i.aia, %i.aid
  %i.aig = lshr i64 %i.aif, 11                    ; 2 uses
  %i.aih = sub nsw i32 %i.aic, %i.aie             ; 5 uses
  %i.aii = icmp sgt i32 %i.aih, 960
  br i1 %i.aii, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1206, label %bb.ik, !prof !7

bb.ik:                                            ; preds = %bb.ij
  %i.aij = icmp sgt i32 %i.aih, -1086
  br i1 %i.aij, label %bb.il, label %bb.im, !prof !24

bb.il:                                            ; preds = %bb.ik
  %i.aik = add nsw i32 %i.aih, 1086
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = shl nuw nsw i64 %i.ail, 52
  %i.ain = and i64 %i.aig, 4503599627370495
  %i.aio = or disjoint i64 %i.aim, %i.ain
  br label %bb.iu

bb.im:                                            ; preds = %bb.ik
  %i.aip = icmp samesign ugt i32 %i.aih, -1138
  br i1 %i.aip, label %bb.in, label %bb.iu, !prof !24

bb.in:                                            ; preds = %bb.im
  %i.aiq = sub nuw nsw i32 -1085, %i.aih
  %i.air = zext nneg i32 %i.aiq to i64
  %i.ais = lshr i64 %i.aig, %i.air
  br label %bb.iu

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1206: ; preds = %bb.ij
  br i1 %.not4017, label %bb.ir, label %bb.io, !prof !24

bb.io:                                            ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1206
  %i.ait = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not682.i393 = icmp eq ptr %i.ait, null
  br i1 %.not682.i393, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  store i8 0, ptr %i.ait, align 1, !tbaa !81
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.aiu = ptrtoint ptr %.73180 to i64
  %i.aiv = ptrtoint ptr %i.fs to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv
  %i.aix = shl i64 %i.aiw, 8
  %i.aiy = or disjoint i64 %i.aix, 1
  store i64 %i.aiy, ptr %.5454.i, align 8, !tbaa !79
  %i.aiz = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store ptr %i.fs, ptr %i.aiz, align 8, !tbaa !81
  store ptr %.73180, ptr %i.j, align 8, !tbaa !92
  br label %.split3304

bb.ir:                                            ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1206
  br i1 %.not4014, label %bb.it, label %bb.is, !prof !24

bb.is:                                            ; preds = %bb.ir
  store i64 20, ptr %.5454.i, align 8, !tbaa !79
  %i.aja = select i1 %i.fx, i64 -4503599627370496, i64 9218868437227405312
  %i.ajb = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store i64 %i.aja, ptr %i.ajb, align 8, !tbaa !81
  br label %.split3304

bb.it:                                            ; preds = %bb.ir
  store ptr @.str.82, ptr %i.i, align 8, !tbaa !92
  br label %.split3304.thread

bb.iu:                                            ; preds = %.thread3269, %bb.il, %bb.in, %bb.im
  %.0.i1205.ph = phi i64 [ 0, %bb.im ], [ %i.ais, %bb.in ], [ %i.aio, %bb.il ], [ 0, %.thread3269 ] ; 7 uses
  %i.ajc = sub i64 %i.ahv, %.0604.i377
  %.not678.i383 = icmp ule i64 %i.ahs, %i.ajc
  %spec.select.i384 = or i1 %.not678.i383, %i.ahy
  br i1 %spec.select.i384, label %bb.iv, label %bb.iw, !prof !24

bb.iv:                                            ; preds = %bb.iu
  store i64 20, ptr %.5454.i, align 8, !tbaa !79
  %i.ajd = select i1 %i.fx, i64 -9223372036854775808, i64 0
  %i.aje = or disjoint i64 %.0.i1205.ph, %i.ajd
  %i.ajf = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store i64 %i.aje, ptr %i.ajf, align 8, !tbaa !81
  br label %.split3304

bb.iw:                                            ; preds = %bb.iu
  %.not679.i385 = icmp samesign ult i64 %.0.i1205.ph, 4503599627370496 ; 2 uses
  %i.ajg = and i64 %.0.i1205.ph, 4503599627370495
  %i.ajh = or disjoint i64 %i.ajg, 4503599627370496
  %i.aji = lshr i64 %.0.i1205.ph, 52
  %i.ajj = trunc nuw nsw i64 %i.aji to i32
  %i.ajk = add nsw i32 %i.ajj, -1076
  %.sroa.9.0.i386 = select i1 %.not679.i385, i32 -1075, i32 %i.ajk ; 4 uses
  %.sroa.022.0.i387 = select i1 %.not679.i385, i64 %.0.i1205.ph, i64 %i.ajh
  %i.ajl = shl nuw nsw i64 %.sroa.022.0.i387, 1
  %i.ajm = or disjoint i64 %i.ajl, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %7, i64 noundef %.22596.i365, ptr noundef %i.b, ptr noundef %.3565.i368, ptr noundef %.3569.i367, ptr noundef %.23.i366)
  %i.ajn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 29 uses
  store i64 %i.ajm, ptr %i.ajn, align 8, !tbaa !91
  %i.ajo = load i32, ptr %i.b, align 4, !tbaa !3  ; 6 uses
  %i.ajp = icmp sgt i32 %i.ajo, -1
  br i1 %i.ajp, label %.preheader4213, label %bb.je

.preheader4213:                                   ; preds = %bb.iw
  %.promoted5082 = load i32, ptr %7, align 8      ; 2 uses
  %i.ajq = icmp samesign ugt i32 %i.ajo, 18
  br i1 %i.ajq, label %.lr.ph5085, label %._crit_edge5086

.lr.ph5085:                                       ; preds = %.preheader4213
  %i.ajr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  br label %bb.ix

bb.ix:                                            ; preds = %.lr.ph5085, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393
  %.0.i12165084 = phi i32 [ %i.ajo, %.lr.ph5085 ], [ %i.alf, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393 ] ; 2 uses
  %i.ajs = phi i32 [ %.promoted5082, %.lr.ph5085 ], [ %i.ale, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393 ] ; 9 uses
  %.not5857 = icmp eq i32 %i.ajs, 0
  br i1 %.not5857, label %._crit_edge5072, label %.lr.ph5071.preheader

.lr.ph5071.preheader:                             ; preds = %bb.ix
  %wide.trip.count6436 = zext i32 %i.ajs to i64
  br label %.lr.ph5071

.lr.ph5071:                                       ; preds = %.lr.ph5071.preheader, %bb.iy
  %indvars.iv6433 = phi i64 [ 0, %.lr.ph5071.preheader ], [ %indvars.iv.next6434, %bb.iy ] ; 3 uses
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv6433
  %i.aju = load i64, ptr %i.ajt, align 8, !tbaa !91
  %.not.i1392 = icmp eq i64 %i.aju, 0
  br i1 %.not.i1392, label %bb.iy, label %._crit_edge5072.loopexit

bb.iy:                                            ; preds = %.lr.ph5071
  %indvars.iv.next6434 = add nuw nsw i64 %indvars.iv6433, 1 ; 2 uses
  %exitcond6437.not = icmp eq i64 %indvars.iv.next6434, %wide.trip.count6436
  br i1 %exitcond6437.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393, label %.lr.ph5071, !llvm.loop !174

._crit_edge5072.loopexit:                         ; preds = %.lr.ph5071
  %i.ajv = trunc nuw i64 %indvars.iv6433 to i32
  br label %._crit_edge5072

._crit_edge5072:                                  ; preds = %._crit_edge5072.loopexit, %bb.ix
  %.018.i1388.lcssa = phi i32 [ 0, %bb.ix ], [ %i.ajv, %._crit_edge5072.loopexit ] ; 2 uses
  %i.ajw = icmp ult i32 %.018.i1388.lcssa, %i.ajs
  br i1 %i.ajw, label %.lr.ph5079.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393

.lr.ph5079.preheader:                             ; preds = %._crit_edge5072
  %i.ajx = zext i32 %.018.i1388.lcssa to i64      ; 4 uses
  %wide.trip.count6441 = zext i32 %i.ajs to i64   ; 2 uses
  %i.ajy = sub nsw i64 %wide.trip.count6441, %i.ajx ; 3 uses
  %xtraiter12258.a = and i64 %i.ajy, 1
  %i.ajz = add nsw i64 %wide.trip.count6441, -1
  %i.aka = icmp eq i64 %i.ajz, %i.ajx
  br i1 %i.aka, label %.lr.ph5079.epil.preheader, label %.lr.ph5079.preheader.new

.lr.ph5079.preheader.new:                         ; preds = %.lr.ph5079.preheader
  %unroll_iter12263.a = and i64 %i.ajy, -2
  br label %.lr.ph5079

.lr.ph5079:                                       ; preds = %.lr.ph5079, %.lr.ph5079.preheader.new
  %indvars.iv6438 = phi i64 [ %i.ajx, %.lr.ph5079.preheader.new ], [ %indvars.iv.next6439.1, %.lr.ph5079 ] ; 3 uses
  %.0.i13905077 = phi i64 [ 0, %.lr.ph5079.preheader.new ], [ %i.akq, %.lr.ph5079 ]
  %niter12264.a = phi i64 [ 0, %.lr.ph5079.preheader.new ], [ %niter12264.next.1.a, %.lr.ph5079 ]
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv6438 ; 2 uses
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !91
  %i.akd = zext i64 %i.akc to i128
  %i.ake = mul nuw i128 %i.akd, 10000000000000000000
  %i.akf = zext i64 %.0.i13905077 to i128
  %i.akg = add nuw i128 %i.ake, %i.akf            ; 2 uses
  %i.akh = lshr i128 %i.akg, 64
  %i.aki = trunc i128 %i.akg to i64
  store i64 %i.aki, ptr %i.akb, align 8, !tbaa !91
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv6438
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8 ; 2 uses
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !91
  %i.akm = zext i64 %i.akl to i128
  %i.akn = mul nuw i128 %i.akm, 10000000000000000000
  %i.ako = add nuw i128 %i.akn, %i.akh            ; 2 uses
  %i.akp = lshr i128 %i.ako, 64                   ; 2 uses
  %i.akq = trunc nuw i128 %i.akp to i64           ; 3 uses
  %i.akr = trunc i128 %i.ako to i64
  store i64 %i.akr, ptr %i.akk, align 8, !tbaa !91
  %indvars.iv.next6439.1 = add nuw nsw i64 %indvars.iv6438, 2 ; 2 uses
  %niter12264.next.1.a = add i64 %niter12264.a, 2 ; 2 uses
  %niter12264.ncmp.1.a = icmp eq i64 %niter12264.next.1.a, %unroll_iter12263.a
  br i1 %niter12264.ncmp.1.a, label %._crit_edge5080.unr-lcssa, label %.lr.ph5079, !llvm.loop !175

._crit_edge5080.unr-lcssa:                        ; preds = %.lr.ph5079
  %lcmp.mod12259.not.a = icmp eq i64 %xtraiter12258.a, 0
  br i1 %lcmp.mod12259.not.a, label %._crit_edge5080, label %.lr.ph5079.epil.preheader

.lr.ph5079.epil.preheader:                        ; preds = %._crit_edge5080.unr-lcssa, %.lr.ph5079.preheader
  %indvars.iv6438.epil.init = phi i64 [ %i.ajx, %.lr.ph5079.preheader ], [ %indvars.iv.next6439.1, %._crit_edge5080.unr-lcssa ]
  %.0.i13905077.epil.init = phi i64 [ 0, %.lr.ph5079.preheader ], [ %i.akq, %._crit_edge5080.unr-lcssa ]
  %lcmp.mod12262.a = trunc i64 %i.ajy to i1
  tail call void @llvm.assume(i1 %lcmp.mod12262.a)
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv6438.epil.init ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !91
  %i.aku = zext i64 %i.akt to i128
  %i.akv = mul nuw i128 %i.aku, 10000000000000000000
  %i.akw = zext i64 %.0.i13905077.epil.init to i128
  %i.akx = add nuw i128 %i.akv, %i.akw            ; 2 uses
  %i.aky = lshr i128 %i.akx, 64                   ; 2 uses
  %i.akz = trunc nuw i128 %i.aky to i64
  %i.ala = trunc i128 %i.akx to i64
  store i64 %i.ala, ptr %i.aks, align 8, !tbaa !91
  br label %._crit_edge5080

._crit_edge5080:                                  ; preds = %._crit_edge5080.unr-lcssa, %.lr.ph5079.epil.preheader
  %.lcssa11449 = phi i128 [ %i.akp, %._crit_edge5080.unr-lcssa ], [ %i.aky, %.lr.ph5079.epil.preheader ]
  %.lcssa11448 = phi i64 [ %i.akq, %._crit_edge5080.unr-lcssa ], [ %i.akz, %.lr.ph5079.epil.preheader ]
  %.not19.i1391 = icmp eq i128 %.lcssa11449, 0
  br i1 %.not19.i1391, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393, label %bb.iz

bb.iz:                                            ; preds = %._crit_edge5080
  %i.alb = add i32 %i.ajs, 1
  %i.alc = zext i32 %i.ajs to i64
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %i.alc
  store i64 %.lcssa11448, ptr %i.ald, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393: ; preds = %bb.iy, %._crit_edge5072, %._crit_edge5080, %bb.iz
  %i.ale = phi i32 [ %i.ajs, %._crit_edge5080 ], [ %i.alb, %bb.iz ], [ %i.ajs, %._crit_edge5072 ], [ %i.ajs, %bb.iy ] ; 2 uses
  %i.alf = add nsw i32 %.0.i12165084, -19         ; 2 uses
  %i.alg = icmp sgt i32 %.0.i12165084, 37
  br i1 %i.alg, label %bb.ix, label %._crit_edge5086, !llvm.loop !176

._crit_edge5086:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393, %.preheader4213
  %i.alh = phi i32 [ %.promoted5082, %.preheader4213 ], [ %i.ale, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393 ] ; 7 uses
  %.0.i1216.lcssa = phi i32 [ %i.ajo, %.preheader4213 ], [ %i.alf, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1393 ] ; 2 uses
  store i32 %i.alh, ptr %7, align 8
  %.not.i1217 = icmp eq i32 %.0.i1216.lcssa, 0
  br i1 %.not.i1217, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218, label %bb.ja

bb.ja:                                            ; preds = %._crit_edge5086
  %i.ali = sext i32 %.0.i1216.lcssa to i64
  %i.alj = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.ali
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !91
  %i.all = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %.not5858 = icmp eq i32 %i.alh, 0
  br i1 %.not5858, label %._crit_edge5092, label %.lr.ph5091.preheader

.lr.ph5091.preheader:                             ; preds = %bb.ja
  %wide.trip.count6446 = zext i32 %i.alh to i64
  br label %.lr.ph5091

.lr.ph5091:                                       ; preds = %.lr.ph5091.preheader, %bb.jb
  %indvars.iv6443 = phi i64 [ 0, %.lr.ph5091.preheader ], [ %indvars.iv.next6444, %bb.jb ] ; 3 uses
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.all, i64 %indvars.iv6443
  %i.aln = load i64, ptr %i.alm, align 8, !tbaa !91
  %.not.i1398 = icmp eq i64 %i.aln, 0
  br i1 %.not.i1398, label %bb.jb, label %._crit_edge5092.loopexit

bb.jb:                                            ; preds = %.lr.ph5091
  %indvars.iv.next6444 = add nuw nsw i64 %indvars.iv6443, 1 ; 2 uses
  %exitcond6447.not = icmp eq i64 %indvars.iv.next6444, %wide.trip.count6446
  br i1 %exitcond6447.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218, label %.lr.ph5091, !llvm.loop !174

._crit_edge5092.loopexit:                         ; preds = %.lr.ph5091
  %i.alo = trunc nuw i64 %indvars.iv6443 to i32
  br label %._crit_edge5092

._crit_edge5092:                                  ; preds = %._crit_edge5092.loopexit, %bb.ja
  %.018.i1394.lcssa = phi i32 [ 0, %bb.ja ], [ %i.alo, %._crit_edge5092.loopexit ] ; 2 uses
  %i.alp = icmp ult i32 %.018.i1394.lcssa, %i.alh
  br i1 %i.alp, label %.lr.ph5099, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218

.lr.ph5099:                                       ; preds = %._crit_edge5092
  %i.alq = zext i64 %i.alk to i128                ; 3 uses
  %i.alr = zext i32 %.018.i1394.lcssa to i64      ; 4 uses
  %wide.trip.count6451 = zext i32 %i.alh to i64   ; 2 uses
  %i.als = sub nsw i64 %wide.trip.count6451, %i.alr ; 3 uses
  %xtraiter12266.a = and i64 %i.als, 1
  %i.alt = add nsw i64 %wide.trip.count6451, -1
  %i.alu = icmp eq i64 %i.alt, %i.alr
  br i1 %i.alu, label %.epil.preheader12265.a, label %.lr.ph5099.new

.lr.ph5099.new:                                   ; preds = %.lr.ph5099
  %unroll_iter12271.a = and i64 %i.als, -2
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jc, %.lr.ph5099.new
  %indvars.iv6448 = phi i64 [ %i.alr, %.lr.ph5099.new ], [ %indvars.iv.next6449.1, %bb.jc ] ; 3 uses
  %.0.i13965097 = phi i64 [ 0, %.lr.ph5099.new ], [ %i.amk, %bb.jc ]
  %niter12272.a = phi i64 [ 0, %.lr.ph5099.new ], [ %niter12272.next.1.a, %bb.jc ]
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.all, i64 %indvars.iv6448 ; 2 uses
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !91
  %i.alx = zext i64 %i.alw to i128
  %i.aly = mul nuw i128 %i.alx, %i.alq
  %i.alz = zext i64 %.0.i13965097 to i128
  %i.ama = add nuw i128 %i.aly, %i.alz            ; 2 uses
  %i.amb = lshr i128 %i.ama, 64
  %i.amc = trunc i128 %i.ama to i64
  store i64 %i.amc, ptr %i.alv, align 8, !tbaa !91
  %i.amd = getelementptr inbounds nuw [8 x i8], ptr %i.all, i64 %indvars.iv6448
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.lr.ph5045:                                       ; preds = %.lr.ph5045, %.lr.ph5045.preheader.new
  %indvars.iv6418 = phi i64 [ %i.ang, %.lr.ph5045.preheader.new ], [ %indvars.iv.next6419.1, %.lr.ph5045 ] ; 3 uses
  %.0.i13785043 = phi i64 [ 0, %.lr.ph5045.preheader.new ], [ %i.anz, %.lr.ph5045 ]
  %niter12249 = phi i64 [ 0, %.lr.ph5045.preheader.new ], [ %niter12249.next.1, %.lr.ph5045 ]
  %i.ank = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6418 ; 2 uses
  %i.anl = load i64, ptr %i.ank, align 8, !tbaa !91
  %i.anm = zext i64 %i.anl to i128
  %i.ann = mul nuw i128 %i.anm, 10000000000000000000
  %i.ano = zext i64 %.0.i13785043 to i128
  %i.anp = add nuw i128 %i.ann, %i.ano            ; 2 uses
  %i.anq = lshr i128 %i.anp, 64
  %i.anr = trunc i128 %i.anp to i64
  store i64 %i.anr, ptr %i.ank, align 8, !tbaa !91
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6418
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 8 ; 2 uses
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !91
  %i.anv = zext i64 %i.anu to i128
  %i.anw = mul nuw i128 %i.anv, 10000000000000000000
  %i.anx = add nuw i128 %i.anw, %i.anq            ; 2 uses
  %i.any = lshr i128 %i.anx, 64                   ; 2 uses
  %i.anz = trunc nuw i128 %i.any to i64           ; 3 uses
  %i.aoa = trunc i128 %i.anx to i64
  store i64 %i.aoa, ptr %i.ant, align 8, !tbaa !91
  %indvars.iv.next6419.1 = add nuw nsw i64 %indvars.iv6418, 2 ; 2 uses
  %niter12249.next.1 = add i64 %niter12249, 2     ; 2 uses
  %niter12249.ncmp.1 = icmp eq i64 %niter12249.next.1, %unroll_iter12248
  br i1 %niter12249.ncmp.1, label %._crit_edge5046.unr-lcssa, label %.lr.ph5045, !llvm.loop !175

._crit_edge5046.unr-lcssa:                        ; preds = %.lr.ph5045
  %lcmp.mod12244.not = icmp eq i64 %xtraiter12243, 0
  br i1 %lcmp.mod12244.not, label %._crit_edge5046, label %.lr.ph5045.epil.preheader

.lr.ph5045.epil.preheader:                        ; preds = %._crit_edge5046.unr-lcssa, %.lr.ph5045.preheader
  %indvars.iv6418.epil.init = phi i64 [ %i.ang, %.lr.ph5045.preheader ], [ %indvars.iv.next6419.1, %._crit_edge5046.unr-lcssa ]
  %.0.i13785043.epil.init = phi i64 [ 0, %.lr.ph5045.preheader ], [ %i.anz, %._crit_edge5046.unr-lcssa ]
  %lcmp.mod12247 = trunc i64 %i.anh to i1
  tail call void @llvm.assume(i1 %lcmp.mod12247)
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6418.epil.init ; 2 uses
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !91
  %i.aod = zext i64 %i.aoc to i128
  %i.aoe = mul nuw i128 %i.aod, 10000000000000000000
  %i.aof = zext i64 %.0.i13785043.epil.init to i128
  %i.aog = add nuw i128 %i.aoe, %i.aof            ; 2 uses
  %i.aoh = lshr i128 %i.aog, 64                   ; 2 uses
  %i.aoi = trunc nuw i128 %i.aoh to i64
  %i.aoj = trunc i128 %i.aog to i64
  store i64 %i.aoj, ptr %i.aob, align 8, !tbaa !91
  br label %._crit_edge5046

._crit_edge5046:                                  ; preds = %._crit_edge5046.unr-lcssa, %.lr.ph5045.epil.preheader
  %.lcssa11458 = phi i128 [ %i.any, %._crit_edge5046.unr-lcssa ], [ %i.aoh, %.lr.ph5045.epil.preheader ]
  %.lcssa11457 = phi i64 [ %i.anz, %._crit_edge5046.unr-lcssa ], [ %i.aoi, %.lr.ph5045.epil.preheader ]
  %.not19.i1379 = icmp eq i128 %.lcssa11458, 0
  br i1 %.not19.i1379, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1381, label %bb.jg

bb.jg:                                            ; preds = %._crit_edge5046
  %i.aok = add i32 %i.anb, 1
  %i.aol = zext i32 %i.anb to i64
  %i.aom = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.aol
  store i64 %.lcssa11457, ptr %i.aom, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1381

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1381: ; preds = %bb.jf, %._crit_edge5038, %._crit_edge5046, %bb.jg
  %i.aon = phi i32 [ %i.anb, %._crit_edge5046 ], [ %i.aok, %bb.jg ], [ %i.anb, %._crit_edge5038 ], [ %i.anb, %bb.jf ] ; 5 uses
  %i.aoo = add nsw i32 %.0.i12195050, -19         ; 3 uses
  %i.aop = icmp sgt i32 %.0.i12195050, 37
  br i1 %i.aop, label %.lr.ph5052, label %._crit_edge5053, !llvm.loop !176

._crit_edge5053:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1381
  store i32 %i.aon, ptr %8, align 8
  %.not.i1220 = icmp eq i32 %i.aoo, 0
  br i1 %.not.i1220, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218, label %bb.jh

bb.jh:                                            ; preds = %._crit_edge5053
  %i.aoq = sext i32 %i.aoo to i64
  %i.aor = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.aoq
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !91 ; 2 uses
  %.not5856 = icmp eq i32 %i.aon, 0
  br i1 %.not5856, label %._crit_edge5059, label %.lr.ph5058.preheader

.lr.ph5058.preheader:                             ; preds = %.thread7434, %bb.jh
  %i.aot = phi i64 [ %i.ana, %.thread7434 ], [ %i.aos, %bb.jh ]
  %i.aou = phi i32 [ 1, %.thread7434 ], [ %i.aon, %bb.jh ] ; 3 uses
  %wide.trip.count6426 = zext i32 %i.aou to i64
  br label %.lr.ph5058

.lr.ph5058:                                       ; preds = %.lr.ph5058.preheader, %bb.ji
  %indvars.iv6423 = phi i64 [ 0, %.lr.ph5058.preheader ], [ %indvars.iv.next6424, %bb.ji ] ; 3 uses
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6423
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !91
  %.not.i1386 = icmp eq i64 %i.aow, 0
  br i1 %.not.i1386, label %bb.ji, label %._crit_edge5059.loopexit

bb.ji:                                            ; preds = %.lr.ph5058
  %indvars.iv.next6424 = add nuw nsw i64 %indvars.iv6423, 1 ; 2 uses
  %exitcond6427.not = icmp eq i64 %indvars.iv.next6424, %wide.trip.count6426
  br i1 %exitcond6427.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218, label %.lr.ph5058, !llvm.loop !174

._crit_edge5059.loopexit:                         ; preds = %.lr.ph5058
  %i.aox = trunc nuw i64 %indvars.iv6423 to i32
  br label %._crit_edge5059

._crit_edge5059:                                  ; preds = %._crit_edge5059.loopexit, %bb.jh
  %i.aoy = phi i64 [ %i.aos, %bb.jh ], [ %i.aot, %._crit_edge5059.loopexit ]
  %i.aoz = phi i32 [ 0, %bb.jh ], [ %i.aou, %._crit_edge5059.loopexit ] ; 6 uses
  %.018.i1382.lcssa = phi i32 [ 0, %bb.jh ], [ %i.aox, %._crit_edge5059.loopexit ] ; 2 uses
  %i.apa = icmp ult i32 %.018.i1382.lcssa, %i.aoz
  br i1 %i.apa, label %.lr.ph5066, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218

.lr.ph5066:                                       ; preds = %._crit_edge5059
  %i.apb = zext i64 %i.aoy to i128                ; 3 uses
  %i.apc = zext i32 %.018.i1382.lcssa to i64      ; 4 uses
  %wide.trip.count6431 = zext i32 %i.aoz to i64   ; 2 uses
  %i.apd = sub nsw i64 %wide.trip.count6431, %i.apc ; 3 uses
  %xtraiter12251.a = and i64 %i.apd, 1
  %i.ape = add nsw i64 %wide.trip.count6431, -1
  %i.apf = icmp eq i64 %i.ape, %i.apc
  br i1 %i.apf, label %.epil.preheader12250, label %.lr.ph5066.new

.lr.ph5066.new:                                   ; preds = %.lr.ph5066
  %unroll_iter12256.a = and i64 %i.apd, -2
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jj, %.lr.ph5066.new
  %indvars.iv6428 = phi i64 [ %i.apc, %.lr.ph5066.new ], [ %indvars.iv.next6429.1, %bb.jj ] ; 3 uses
  %.0.i13845064 = phi i64 [ 0, %.lr.ph5066.new ], [ %i.apv, %bb.jj ]
  %niter12257.a = phi i64 [ 0, %.lr.ph5066.new ], [ %niter12257.next.1.a, %bb.jj ]
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6428 ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !91
  %i.api = zext i64 %i.aph to i128
  %i.apj = mul nuw i128 %i.api, %i.apb
  %i.apk = zext i64 %.0.i13845064 to i128
  %i.apl = add nuw i128 %i.apj, %i.apk            ; 2 uses
  %i.apm = lshr i128 %i.apl, 64
  %i.apn = trunc i128 %i.apl to i64
  store i64 %i.apn, ptr %i.apg, align 8, !tbaa !91
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6428
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8 ; 2 uses
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !91
  %i.apr = zext i64 %i.apq to i128
  %i.aps = mul nuw i128 %i.apr, %i.apb
  %i.apt = add nuw i128 %i.aps, %i.apm            ; 2 uses
  %i.apu = lshr i128 %i.apt, 64                   ; 2 uses
  %i.apv = trunc nuw i128 %i.apu to i64           ; 3 uses
  %i.apw = trunc i128 %i.apt to i64
  store i64 %i.apw, ptr %i.app, align 8, !tbaa !91
  %indvars.iv.next6429.1 = add nuw nsw i64 %indvars.iv6428, 2 ; 2 uses
  %niter12257.next.1.a = add i64 %niter12257.a, 2 ; 2 uses
  %niter12257.ncmp.1.a = icmp eq i64 %niter12257.next.1.a, %unroll_iter12256.a
  br i1 %niter12257.ncmp.1.a, label %._crit_edge5067.unr-lcssa, label %bb.jj, !llvm.loop !175

._crit_edge5067.unr-lcssa:                        ; preds = %bb.jj
  %lcmp.mod12252.not.a = icmp eq i64 %xtraiter12251.a, 0
  br i1 %lcmp.mod12252.not.a, label %._crit_edge5067, label %.epil.preheader12250

.epil.preheader12250:                             ; preds = %._crit_edge5067.unr-lcssa, %.lr.ph5066
  %indvars.iv6428.epil.init = phi i64 [ %i.apc, %.lr.ph5066 ], [ %indvars.iv.next6429.1, %._crit_edge5067.unr-lcssa ]
  %.0.i13845064.epil.init = phi i64 [ 0, %.lr.ph5066 ], [ %i.apv, %._crit_edge5067.unr-lcssa ]
  %lcmp.mod12255.a = trunc i64 %i.apd to i1
  tail call void @llvm.assume(i1 %lcmp.mod12255.a)
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6428.epil.init ; 2 uses
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !91
  %i.apz = zext i64 %i.apy to i128
  %i.aqa = mul nuw i128 %i.apz, %i.apb
  %i.aqb = zext i64 %.0.i13845064.epil.init to i128
  %i.aqc = add nuw i128 %i.aqa, %i.aqb            ; 2 uses
  %i.aqd = lshr i128 %i.aqc, 64                   ; 2 uses
  %i.aqe = trunc nuw i128 %i.aqd to i64
  %i.aqf = trunc i128 %i.aqc to i64
  store i64 %i.aqf, ptr %i.apx, align 8, !tbaa !91
  br label %._crit_edge5067

._crit_edge5067:                                  ; preds = %._crit_edge5067.unr-lcssa, %.epil.preheader12250
  %.lcssa11453 = phi i128 [ %i.apu, %._crit_edge5067.unr-lcssa ], [ %i.aqd, %.epil.preheader12250 ]
  %.lcssa11452 = phi i64 [ %i.apv, %._crit_edge5067.unr-lcssa ], [ %i.aqe, %.epil.preheader12250 ]
  %.not19.i1385 = icmp eq i128 %.lcssa11453, 0
  br i1 %.not19.i1385, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218, label %bb.jk

bb.jk:                                            ; preds = %._crit_edge5067
  %i.aqg = add i32 %i.aoz, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218.sink.split: ; preds = %bb.jd, %bb.jk
  %.sink = phi i32 [ %i.aoz, %bb.jk ], [ %i.alh, %bb.jd ]
  %i.aqh = phi ptr [ %8, %bb.jk ], [ %7, %bb.jd ]
  %.lcssa7825.sink = phi i64 [ %.lcssa11452, %bb.jk ], [ %.lcssa11444, %bb.jd ]
  %.ph8492 = phi i32 [ %i.aqg, %bb.jk ], [ 1, %bb.jd ]
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.aqj = zext i32 %.sink to i64
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.aqi, i64 %i.aqj
  store i64 %.lcssa7825.sink, ptr %i.aqk, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218: ; preds = %bb.ji, %bb.jb, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218.sink.split, %._crit_edge5059, %._crit_edge5092, %._crit_edge5053, %._crit_edge5067, %._crit_edge5086, %._crit_edge5100
  %i.aql = phi i32 [ %i.aon, %._crit_edge5053 ], [ %i.aoz, %._crit_edge5067 ], [ %i.aoz, %._crit_edge5059 ], [ 1, %._crit_edge5086 ], [ 1, %._crit_edge5100 ], [ 1, %bb.jb ], [ %.ph8492, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218.sink.split ], [ 1, %._crit_edge5092 ], [ %i.aou, %bb.ji ] ; 16 uses
  %i.aqm = icmp sgt i32 %.sroa.9.0.i386, 0
  br i1 %i.aqm, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218
  %i.aqn = and i32 %.sroa.9.0.i386, 63            ; 3 uses
  %i.aqo = lshr i32 %.sroa.9.0.i386, 6            ; 15 uses
  %i.aqp = icmp eq i32 %i.aqn, 0
  br i1 %i.aqp, label %.preheader4208, label %bb.jm, !prof !7

.preheader4208:                                   ; preds = %bb.jl
  %.not46.i12515128 = icmp eq i32 %i.aql, 0
  br i1 %.not46.i12515128, label %.lr.ph5135.preheader, label %.lr.ph5130

.lr.ph5130:                                       ; preds = %.preheader4208
  %i.aqq = add nsw i32 %i.aqo, -1                 ; 6 uses
  %i.aqr = zext i32 %i.aql to i64                 ; 9 uses
  %min.iters.check10429 = icmp ult i32 %i.aql, 30
  br i1 %min.iters.check10429, label %scalar.ph10428.preheader, label %vector.scevcheck10425

vector.scevcheck10425:                            ; preds = %.lr.ph5130
  %i.aqs = add nsw i64 %i.aqr, -1                 ; 2 uses
  %i.aqt = add i32 %i.aql, %i.aqo
  %i.aqu = add i32 %i.aqt, -1
  %i.aqv = trunc i64 %i.aqs to i32
  %i.aqw = icmp ult i32 %i.aqu, %i.aqv
  %i.aqx = icmp ugt i64 %i.aqs, 4294967295
  %i.aqy = or i1 %i.aqw, %i.aqx
  br i1 %i.aqy, label %scalar.ph10428.preheader, label %vector.memcheck10426

vector.memcheck10426:                             ; preds = %vector.scevcheck10425
  %i.aqz = add i32 %i.aql, %i.aqo
  %i.ara = add i32 %i.aqz, -1
  %i.arb = zext i32 %i.ara to i64
  %i.arc = sub nsw i64 %i.aqr, %i.arb
  %i.ard = shl nsw i64 %i.arc, 3
  %i.are = add nsw i64 %i.ard, -9
  %diff.check10427 = icmp ult i64 %i.are, 31
  br i1 %diff.check10427, label %scalar.ph10428.preheader, label %vector.ph10430

vector.ph10430:                                   ; preds = %vector.memcheck10426
  %n.vec10431 = and i64 %i.aqr, 4294967292        ; 2 uses
  %i.arf = and i64 %i.aqr, 3
  br label %vector.body10432

vector.body10432:                                 ; preds = %vector.body10432, %vector.ph10430
  %index10433 = phi i64 [ 0, %vector.ph10430 ], [ %index.next10436, %vector.body10432 ] ; 2 uses
  %i.arg = sub i64 %i.aqr, %index10433            ; 2 uses
  %i.arh = getelementptr [8 x i8], ptr %8, i64 %i.arg ; 2 uses
  %i.ari = getelementptr i8, ptr %i.arh, i64 -8
  %i.arj = getelementptr i8, ptr %i.arh, i64 -24
  %wide.load10434 = load <2 x i64>, ptr %i.ari, align 8, !tbaa !91
  %wide.load10435 = load <2 x i64>, ptr %i.arj, align 8, !tbaa !91
  %i.ark = trunc nuw i64 %i.arg to i32
  %i.arl = add i32 %i.aqq, %i.ark
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.arm ; 2 uses
  %i.aro = getelementptr inbounds i8, ptr %i.arn, i64 -8
  %i.arp = getelementptr inbounds i8, ptr %i.arn, i64 -24
  store <2 x i64> %wide.load10434, ptr %i.aro, align 8, !tbaa !91
  store <2 x i64> %wide.load10435, ptr %i.arp, align 8, !tbaa !91
  %index.next10436 = add nuw i64 %index10433, 4   ; 2 uses
  %i.arq = icmp eq i64 %index.next10436, %n.vec10431
  br i1 %i.arq, label %middle.block10437, label %vector.body10432, !llvm.loop !179

middle.block10437:                                ; preds = %vector.body10432
  %cmp.n10438 = icmp eq i64 %n.vec10431, %i.aqr
  br i1 %cmp.n10438, label %.lr.ph5135.preheader, label %scalar.ph10428.preheader

scalar.ph10428.preheader:                         ; preds = %vector.memcheck10426, %vector.scevcheck10425, %.lr.ph5130, %middle.block10437
  %indvars.iv6468.ph = phi i64 [ %i.aqr, %vector.memcheck10426 ], [ %i.aqr, %vector.scevcheck10425 ], [ %i.aqr, %.lr.ph5130 ], [ %i.arf, %middle.block10437 ] ; 4 uses
  %i.arr = add nsw i64 %indvars.iv6468.ph, -1
  %xtraiter12282 = and i64 %indvars.iv6468.ph, 3  ; 2 uses
  %lcmp.mod12283.not = icmp eq i64 %xtraiter12282, 0
  br i1 %lcmp.mod12283.not, label %scalar.ph10428.prol.loopexit, label %scalar.ph10428.prol

scalar.ph10428.prol:                              ; preds = %scalar.ph10428.preheader, %scalar.ph10428.prol
  %indvars.iv6468.prol = phi i64 [ %i.ars, %scalar.ph10428.prol ], [ %indvars.iv6468.ph, %scalar.ph10428.preheader ] ; 3 uses
  %prol.iter12284 = phi i64 [ %prol.iter12284.next, %scalar.ph10428.prol ], [ 0, %scalar.ph10428.preheader ]
  %i.ars = add nsw i64 %indvars.iv6468.prol, -1   ; 2 uses
  %i.art = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6468.prol
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !91
  %i.arv = trunc nuw i64 %indvars.iv6468.prol to i32
  %i.arw = add i32 %i.aqq, %i.arv
  %i.arx = zext i32 %i.arw to i64
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.arx
  store i64 %i.aru, ptr %i.ary, align 8, !tbaa !91
  %prol.iter12284.next = add i64 %prol.iter12284, 1 ; 2 uses
  %prol.iter12284.cmp.not = icmp eq i64 %prol.iter12284.next, %xtraiter12282
  br i1 %prol.iter12284.cmp.not, label %scalar.ph10428.prol.loopexit, label %scalar.ph10428.prol, !llvm.loop !182

scalar.ph10428.prol.loopexit:                     ; preds = %scalar.ph10428.prol, %scalar.ph10428.preheader
  %indvars.iv6468.unr = phi i64 [ %indvars.iv6468.ph, %scalar.ph10428.preheader ], [ %i.ars, %scalar.ph10428.prol ]
  %i.arz = icmp ult i64 %i.arr, 3
  br i1 %i.arz, label %.lr.ph5135.preheader, label %scalar.ph10428

scalar.ph10428:                                   ; preds = %scalar.ph10428.prol.loopexit, %scalar.ph10428
  %indvars.iv6468 = phi i64 [ %i.asv, %scalar.ph10428 ], [ %indvars.iv6468.unr, %scalar.ph10428.prol.loopexit ] ; 6 uses
  %i.asa = add nsw i64 %indvars.iv6468, -1        ; 2 uses
  %i.asb = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6468
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !91
  %i.asd = trunc nuw i64 %indvars.iv6468 to i32
  %i.ase = add i32 %i.aqq, %i.asd
  %i.asf = zext i32 %i.ase to i64
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.asf
  store i64 %i.asc, ptr %i.asg, align 8, !tbaa !91
  %i.ash = add nsw i64 %indvars.iv6468, -2        ; 2 uses
  %i.asi = getelementptr [8 x i8], ptr %8, i64 %i.asa
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !91
  %i.ask = trunc nuw i64 %i.asa to i32
  %i.asl = add i32 %i.aqq, %i.ask
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.asm
  store i64 %i.asj, ptr %i.asn, align 8, !tbaa !91
  %i.aso = add nsw i64 %indvars.iv6468, -3        ; 2 uses
  %i.asp = getelementptr [8 x i8], ptr %8, i64 %i.ash
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !91
  %i.asr = trunc nuw i64 %i.ash to i32
  %i.ass = add i32 %i.aqq, %i.asr
  %i.ast = zext i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ast
  store i64 %i.asq, ptr %i.asu, align 8, !tbaa !91
  %i.asv = add nsw i64 %indvars.iv6468, -4        ; 2 uses
  %i.asw = getelementptr [8 x i8], ptr %8, i64 %i.aso
  %i.asx = load i64, ptr %i.asw, align 8, !tbaa !91
  %i.asy = trunc nuw i64 %i.aso to i32
  %i.asz = add i32 %i.aqq, %i.asy
  %i.ata = zext i32 %i.asz to i64
  %i.atb = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ata
  store i64 %i.asx, ptr %i.atb, align 8, !tbaa !91
  %.not46.i1251.wide.3 = icmp eq i64 %i.asv, 0
  br i1 %.not46.i1251.wide.3, label %.lr.ph5135.preheader, label %scalar.ph10428, !llvm.loop !183

.lr.ph5135.preheader:                             ; preds = %scalar.ph10428.prol.loopexit, %scalar.ph10428, %middle.block10437, %.preheader4208
  %i.atc = add i32 %i.aql, %i.aqo                 ; 2 uses
  store i32 %i.atc, ptr %8, align 8, !tbaa !177
  br label %.lr.ph5110.preheader

bb.jm:                                            ; preds = %bb.jl
  %i.atd = zext i32 %i.aql to i64                 ; 10 uses
  %i.ate = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.atd
  store i64 0, ptr %i.ate, align 8, !tbaa !91
  %.not.i12475119 = icmp eq i32 %i.aql, 0
  %.pre6949 = zext nneg i32 %i.aqn to i64         ; 5 uses
  br i1 %.not.i12475119, label %._crit_edge5123, label %.lr.ph5122

.lr.ph5122:                                       ; preds = %bb.jm
  %i.atf = sub nuw nsw i32 64, %i.aqn
  %i.atg = zext nneg i32 %i.atf to i64            ; 4 uses
  %min.iters.check10408 = icmp ult i32 %i.aql, 20
  br i1 %min.iters.check10408, label %scalar.ph10407.preheader, label %vector.scevcheck10402

vector.scevcheck10402:                            ; preds = %.lr.ph5122
  %i.ath = add nsw i64 %i.atd, -1                 ; 2 uses
  %i.ati = add i32 %i.aql, %i.aqo
  %i.atj = trunc i64 %i.ath to i32
  %i.atk = icmp ult i32 %i.ati, %i.atj
  %i.atl = icmp ugt i64 %i.ath, 4294967295
  %i.atm = or i1 %i.atk, %i.atl
  br i1 %i.atm, label %scalar.ph10407.preheader, label %vector.memcheck10403

vector.memcheck10403:                             ; preds = %vector.scevcheck10402
  %i.atn = shl nuw nsw i64 %i.atd, 3              ; 2 uses
  %i.ato = add i32 %i.aql, %i.aqo
  %i.atp = zext i32 %i.ato to i64
  %i.atq = shl nuw nsw i64 %i.atp, 3              ; 2 uses
  %i.atr = sub nsw i64 %i.atq, %i.atn
  %diff.check10404 = icmp ugt i64 %i.atr, -32
  %i.ats = sub nsw i64 %i.atn, %i.atq
  %i.att = add nsw i64 %i.ats, -9
  %diff.check10405 = icmp ult i64 %i.att, 31
  %conflict.rdx10406 = or i1 %diff.check10404, %diff.check10405
  br i1 %conflict.rdx10406, label %scalar.ph10407.preheader, label %vector.ph10409

vector.ph10409:                                   ; preds = %vector.memcheck10403
  %n.vec10410 = and i64 %i.atd, 4294967292        ; 2 uses
  %i.atu = and i64 %i.atd, 3
  %broadcast.splatinsert10411 = insertelement <2 x i64> poison, i64 %i.atg, i64 0
  %broadcast.splat10412 = shufflevector <2 x i64> %broadcast.splatinsert10411, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10413.a = insertelement <2 x i64> poison, i64 %.pre6949, i64 0
  %broadcast.splat10414.a = shufflevector <2 x i64> %broadcast.splatinsert10413.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10415

vector.body10415:                                 ; preds = %vector.body10415, %vector.ph10409
  %index10416 = phi i64 [ 0, %vector.ph10409 ], [ %index.next10421, %vector.body10415 ] ; 2 uses
  %i.atv = sub i64 %i.atd, %index10416            ; 3 uses
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.atv ; 2 uses
  %i.atx = getelementptr inbounds i8, ptr %i.atw, i64 -8
  %i.aty = getelementptr inbounds i8, ptr %i.atw, i64 -24
  %wide.load10417 = load <2 x i64>, ptr %i.atx, align 8, !tbaa !91
  %wide.load10418 = load <2 x i64>, ptr %i.aty, align 8, !tbaa !91
  %i.atz = shl <2 x i64> %wide.load10417, %broadcast.splat10414.a
  %i.aua = shl <2 x i64> %wide.load10418, %broadcast.splat10414.a
  %i.aub = getelementptr [8 x i8], ptr %8, i64 %i.atv ; 2 uses
  %i.auc = getelementptr i8, ptr %i.aub, i64 -8
  %i.aud = getelementptr i8, ptr %i.aub, i64 -24
  %wide.load10419.a = load <2 x i64>, ptr %i.auc, align 8, !tbaa !91
  %wide.load10420.a = load <2 x i64>, ptr %i.aud, align 8, !tbaa !91
  %i.aue = lshr <2 x i64> %wide.load10419.a, %broadcast.splat10412
  %i.auf = lshr <2 x i64> %wide.load10420.a, %broadcast.splat10412
  %i.aug = or <2 x i64> %i.aue, %i.atz
  %i.auh = or <2 x i64> %i.auf, %i.aua
  %i.aui = trunc nuw i64 %i.atv to i32
  %i.auj = add i32 %i.aqo, %i.aui
  %i.auk = zext i32 %i.auj to i64
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.auk ; 2 uses
  %i.aum = getelementptr inbounds i8, ptr %i.aul, i64 -8
  %i.aun = getelementptr inbounds i8, ptr %i.aul, i64 -24
  store <2 x i64> %i.aug, ptr %i.aum, align 8, !tbaa !91
  store <2 x i64> %i.auh, ptr %i.aun, align 8, !tbaa !91
  %index.next10421 = add nuw i64 %index10416, 4   ; 2 uses
  %i.auo = icmp eq i64 %index.next10421, %n.vec10410
  br i1 %i.auo, label %middle.block10422, label %vector.body10415, !llvm.loop !184

middle.block10422:                                ; preds = %vector.body10415
  %cmp.n10423 = icmp eq i64 %n.vec10410, %i.atd
  br i1 %cmp.n10423, label %._crit_edge5123, label %scalar.ph10407.preheader

scalar.ph10407.preheader:                         ; preds = %vector.memcheck10403, %vector.scevcheck10402, %.lr.ph5122, %middle.block10422
  %indvars.iv6463.ph = phi i64 [ %i.atd, %vector.memcheck10403 ], [ %i.atd, %vector.scevcheck10402 ], [ %i.atd, %.lr.ph5122 ], [ %i.atu, %middle.block10422 ] ; 7 uses
  %xtraiter12279 = and i64 %indvars.iv6463.ph, 1
  %lcmp.mod12280.not = icmp eq i64 %xtraiter12279, 0
  br i1 %lcmp.mod12280.not, label %scalar.ph10407.prol.loopexit, label %scalar.ph10407.prol

scalar.ph10407.prol:                              ; preds = %scalar.ph10407.preheader
  %i.aup = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6463.ph
  %i.auq = load i64, ptr %i.aup, align 8, !tbaa !91
  %i.aur = shl i64 %i.auq, %.pre6949
  %i.aus = add nsw i64 %indvars.iv6463.ph, -1
  %i.aut = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6463.ph
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !91
  %i.auv = lshr i64 %i.auu, %i.atg
  %i.auw = or i64 %i.auv, %i.aur
  %i.aux = trunc nuw i64 %indvars.iv6463.ph to i32
  %i.auy = add i32 %i.aqo, %i.aux
  %i.auz = zext i32 %i.auy to i64
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.auz
  store i64 %i.auw, ptr %i.ava, align 8, !tbaa !91
  br label %scalar.ph10407.prol.loopexit

scalar.ph10407.prol.loopexit:                     ; preds = %scalar.ph10407.prol, %scalar.ph10407.preheader
  %indvars.iv6463.unr = phi i64 [ %indvars.iv6463.ph, %scalar.ph10407.preheader ], [ %i.aus, %scalar.ph10407.prol ]
  %i.avb = icmp eq i64 %indvars.iv6463.ph, 1
  br i1 %i.avb, label %._crit_edge5123, label %scalar.ph10407

scalar.ph10407:                                   ; preds = %scalar.ph10407.prol.loopexit, %scalar.ph10407
  %indvars.iv6463 = phi i64 [ %i.avr, %scalar.ph10407 ], [ %indvars.iv6463.unr, %scalar.ph10407.prol.loopexit ] ; 6 uses
  %i.avc = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %indvars.iv6463
  %i.avd = load i64, ptr %i.avc, align 8, !tbaa !91
  %i.ave = shl i64 %i.avd, %.pre6949
  %i.avf = add nsw i64 %indvars.iv6463, -1        ; 2 uses
  %i.avg = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6463
  %i.avh = load i64, ptr %i.avg, align 8, !tbaa !91
  %i.avi = lshr i64 %i.avh, %i.atg
  %i.avj = or i64 %i.avi, %i.ave
  %i.avk = trunc nuw i64 %indvars.iv6463 to i32
  %i.avl = add i32 %i.aqo, %i.avk
  %i.avm = zext i32 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.avm
  store i64 %i.avj, ptr %i.avn, align 8, !tbaa !91
  %i.avo = getelementptr [8 x i8], ptr %8, i64 %indvars.iv6463
  %i.avp = load i64, ptr %i.avo, align 8, !tbaa !91
  %i.avq = shl i64 %i.avp, %.pre6949
  %i.avr = add nsw i64 %indvars.iv6463, -2        ; 2 uses
  %i.avs = getelementptr [8 x i8], ptr %8, i64 %i.avf
  %i.avt = load i64, ptr %i.avs, align 8, !tbaa !91
  %i.avu = lshr i64 %i.avt, %i.atg
  %i.avv = or i64 %i.avu, %i.avq
  %i.avw = trunc nuw i64 %i.avf to i32
  %i.avx = add i32 %i.aqo, %i.avw
  %i.avy = zext i32 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.avy
  store i64 %i.avv, ptr %i.avz, align 8, !tbaa !91
  %.not.i1247.wide.1 = icmp eq i64 %i.avr, 0
  br i1 %.not.i1247.wide.1, label %._crit_edge5123, label %scalar.ph10407, !llvm.loop !185

._crit_edge5123:                                  ; preds = %scalar.ph10407.prol.loopexit, %scalar.ph10407, %middle.block10422, %bb.jm
  %i.awa = load i64, ptr %i.ajn, align 8, !tbaa !91
  %i.awb = shl i64 %i.awa, %.pre6949
  %i.awc = zext nneg i32 %i.aqo to i64
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.awc
  store i64 %i.awb, ptr %i.awd, align 8, !tbaa !91
  %i.awe = add i32 %i.aql, %i.aqo                 ; 2 uses
  %i.awf = zext i32 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.awf
  %i.awh = load i64, ptr %i.awg, align 8, !tbaa !91
  %i.awi = icmp ne i64 %i.awh, 0
  %i.awj = zext i1 %i.awi to i32
  %i.awk = add i32 %i.awe, %i.awj                 ; 2 uses
  %.not45.i12495124 = icmp eq i32 %i.aqo, 0
  br i1 %.not45.i12495124, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254, label %.lr.ph5110.preheader

bb.jn:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1218
  %i.awl = sub nsw i32 0, %.sroa.9.0.i386         ; 2 uses
  %i.awm = and i32 %i.awl, 63                     ; 3 uses
  %i.awn = lshr i32 %i.awl, 6                     ; 16 uses
  %i.awo = load i32, ptr %7, align 8, !tbaa !177  ; 12 uses
  %i.awp = icmp eq i32 %i.awm, 0
  br i1 %i.awp, label %.preheader4211, label %bb.jo, !prof !7

.preheader4211:                                   ; preds = %bb.jn
  %.not46.i12605111 = icmp eq i32 %i.awo, 0
  br i1 %.not46.i12605111, label %._crit_edge5114, label %.lr.ph5113

.lr.ph5113:                                       ; preds = %.preheader4211
  %i.awq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.awr = add nsw i32 %i.awn, -1                 ; 6 uses
  %i.aws = zext i32 %i.awo to i64                 ; 9 uses
  %min.iters.check10391 = icmp ult i32 %i.awo, 30
  br i1 %min.iters.check10391, label %scalar.ph10390.preheader, label %vector.scevcheck10387

vector.scevcheck10387:                            ; preds = %.lr.ph5113
  %i.awt = add nsw i64 %i.aws, -1                 ; 2 uses
  %i.awu = add i32 %i.awo, %i.awn
  %i.awv = add i32 %i.awu, -1
  %i.aww = trunc i64 %i.awt to i32
  %i.awx = icmp ult i32 %i.awv, %i.aww
  %i.awy = icmp ugt i64 %i.awt, 4294967295
  %i.awz = or i1 %i.awx, %i.awy
  br i1 %i.awz, label %scalar.ph10390.preheader, label %vector.memcheck10388

vector.memcheck10388:                             ; preds = %vector.scevcheck10387
  %i.axa = add i32 %i.awo, %i.awn
  %i.axb = add i32 %i.axa, -1
  %i.axc = zext i32 %i.axb to i64
  %i.axd = sub nsw i64 %i.aws, %i.axc
  %i.axe = shl nsw i64 %i.axd, 3
  %i.axf = add nsw i64 %i.axe, -9
  %diff.check10389 = icmp ult i64 %i.axf, 31
  br i1 %diff.check10389, label %scalar.ph10390.preheader, label %vector.ph10392

vector.ph10392:                                   ; preds = %vector.memcheck10388
  %n.vec10393 = and i64 %i.aws, 4294967292        ; 2 uses
  %i.axg = and i64 %i.aws, 3
  br label %vector.body10394

vector.body10394:                                 ; preds = %vector.body10394, %vector.ph10392
  %index10395 = phi i64 [ 0, %vector.ph10392 ], [ %index.next10398, %vector.body10394 ] ; 2 uses
  %i.axh = sub i64 %i.aws, %index10395            ; 2 uses
  %i.axi = getelementptr [8 x i8], ptr %7, i64 %i.axh ; 2 uses
  %i.axj = getelementptr i8, ptr %i.axi, i64 -8
  %i.axk = getelementptr i8, ptr %i.axi, i64 -24
  %wide.load10396 = load <2 x i64>, ptr %i.axj, align 8, !tbaa !91
  %wide.load10397 = load <2 x i64>, ptr %i.axk, align 8, !tbaa !91
  %i.axl = trunc nuw i64 %i.axh to i32
  %i.axm = add i32 %i.awr, %i.axl
  %i.axn = zext i32 %i.axm to i64
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.axn ; 2 uses
  %i.axp = getelementptr inbounds i8, ptr %i.axo, i64 -8
  %i.axq = getelementptr inbounds i8, ptr %i.axo, i64 -24
  store <2 x i64> %wide.load10396, ptr %i.axp, align 8, !tbaa !91
  store <2 x i64> %wide.load10397, ptr %i.axq, align 8, !tbaa !91
  %index.next10398 = add nuw i64 %index10395, 4   ; 2 uses
  %i.axr = icmp eq i64 %index.next10398, %n.vec10393
  br i1 %i.axr, label %middle.block10399, label %vector.body10394, !llvm.loop !186

middle.block10399:                                ; preds = %vector.body10394
  %cmp.n10400 = icmp eq i64 %n.vec10393, %i.aws
  br i1 %cmp.n10400, label %._crit_edge5114, label %scalar.ph10390.preheader

scalar.ph10390.preheader:                         ; preds = %vector.memcheck10388, %vector.scevcheck10387, %.lr.ph5113, %middle.block10399
  %indvars.iv6458.ph = phi i64 [ %i.aws, %vector.memcheck10388 ], [ %i.aws, %vector.scevcheck10387 ], [ %i.aws, %.lr.ph5113 ], [ %i.axg, %middle.block10399 ] ; 4 uses
  %i.axs = add nsw i64 %indvars.iv6458.ph, -1
  %xtraiter12276 = and i64 %indvars.iv6458.ph, 3  ; 2 uses
  %lcmp.mod12277.not = icmp eq i64 %xtraiter12276, 0
  br i1 %lcmp.mod12277.not, label %scalar.ph10390.prol.loopexit, label %scalar.ph10390.prol

scalar.ph10390.prol:                              ; preds = %scalar.ph10390.preheader, %scalar.ph10390.prol
  %indvars.iv6458.prol = phi i64 [ %i.axt, %scalar.ph10390.prol ], [ %indvars.iv6458.ph, %scalar.ph10390.preheader ] ; 3 uses
  %prol.iter12278 = phi i64 [ %prol.iter12278.next, %scalar.ph10390.prol ], [ 0, %scalar.ph10390.preheader ]
  %i.axt = add nsw i64 %indvars.iv6458.prol, -1   ; 2 uses
  %i.axu = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6458.prol
  %i.axv = load i64, ptr %i.axu, align 8, !tbaa !91
  %i.axw = trunc nuw i64 %indvars.iv6458.prol to i32
  %i.axx = add i32 %i.awr, %i.axw
  %i.axy = zext i32 %i.axx to i64
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.axy
  store i64 %i.axv, ptr %i.axz, align 8, !tbaa !91
  %prol.iter12278.next = add i64 %prol.iter12278, 1 ; 2 uses
  %prol.iter12278.cmp.not = icmp eq i64 %prol.iter12278.next, %xtraiter12276
  br i1 %prol.iter12278.cmp.not, label %scalar.ph10390.prol.loopexit, label %scalar.ph10390.prol, !llvm.loop !187

scalar.ph10390.prol.loopexit:                     ; preds = %scalar.ph10390.prol, %scalar.ph10390.preheader
  %indvars.iv6458.unr = phi i64 [ %indvars.iv6458.ph, %scalar.ph10390.preheader ], [ %i.axt, %scalar.ph10390.prol ]
  %i.aya = icmp ult i64 %i.axs, 3
  br i1 %i.aya, label %._crit_edge5114, label %scalar.ph10390

scalar.ph10390:                                   ; preds = %scalar.ph10390.prol.loopexit, %scalar.ph10390
  %indvars.iv6458 = phi i64 [ %i.ayw, %scalar.ph10390 ], [ %indvars.iv6458.unr, %scalar.ph10390.prol.loopexit ] ; 6 uses
  %i.ayb = add nsw i64 %indvars.iv6458, -1        ; 2 uses
  %i.ayc = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6458
  %i.ayd = load i64, ptr %i.ayc, align 8, !tbaa !91
  %i.aye = trunc nuw i64 %indvars.iv6458 to i32
  %i.ayf = add i32 %i.awr, %i.aye
  %i.ayg = zext i32 %i.ayf to i64
  %i.ayh = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.ayg
  store i64 %i.ayd, ptr %i.ayh, align 8, !tbaa !91
  %i.ayi = add nsw i64 %indvars.iv6458, -2        ; 2 uses
  %i.ayj = getelementptr [8 x i8], ptr %7, i64 %i.ayb
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !91
  %i.ayl = trunc nuw i64 %i.ayb to i32
  %i.aym = add i32 %i.awr, %i.ayl
  %i.ayn = zext i32 %i.aym to i64
  %i.ayo = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.ayn
  store i64 %i.ayk, ptr %i.ayo, align 8, !tbaa !91
  %i.ayp = add nsw i64 %indvars.iv6458, -3        ; 2 uses
  %i.ayq = getelementptr [8 x i8], ptr %7, i64 %i.ayi
  %i.ayr = load i64, ptr %i.ayq, align 8, !tbaa !91
  %i.ays = trunc nuw i64 %i.ayi to i32
  %i.ayt = add i32 %i.awr, %i.ays
  %i.ayu = zext i32 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.ayu
  store i64 %i.ayr, ptr %i.ayv, align 8, !tbaa !91
  %i.ayw = add nsw i64 %indvars.iv6458, -4        ; 2 uses
  %i.ayx = getelementptr [8 x i8], ptr %7, i64 %i.ayp
  %i.ayy = load i64, ptr %i.ayx, align 8, !tbaa !91
  %i.ayz = trunc nuw i64 %i.ayp to i32
  %i.aza = add i32 %i.awr, %i.ayz
  %i.azb = zext i32 %i.aza to i64
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.awq, i64 %i.azb
  store i64 %i.ayy, ptr %i.azc, align 8, !tbaa !91
  %.not46.i1260.wide.3 = icmp eq i64 %i.ayw, 0
  br i1 %.not46.i1260.wide.3, label %._crit_edge5114, label %scalar.ph10390, !llvm.loop !188

._crit_edge5114:                                  ; preds = %scalar.ph10390.prol.loopexit, %scalar.ph10390, %middle.block10399, %.preheader4211
  %i.azd = add i32 %i.awo, %i.awn
  store i32 %i.azd, ptr %7, align 8, !tbaa !177
  %.not47.i12625115 = icmp eq i32 %i.awn, 0
  br i1 %.not47.i12625115, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254, label %.lr.ph5118

.lr.ph5118:                                       ; preds = %._crit_edge5114
  %i.aze = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %.lr.ph5110.preheader

bb.jo:                                            ; preds = %bb.jn
  %i.azf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.azg = zext i32 %i.awo to i64                 ; 10 uses
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.azg
  store i64 0, ptr %i.azh, align 8, !tbaa !91
  %.not.i12565102 = icmp eq i32 %i.awo, 0
  %.pre6951 = zext nneg i32 %i.awm to i64         ; 5 uses
  br i1 %.not.i12565102, label %._crit_edge5106, label %.lr.ph5105

.lr.ph5105:                                       ; preds = %bb.jo
  %i.azi = sub nuw nsw i32 64, %i.awm
  %i.azj = zext nneg i32 %i.azi to i64            ; 4 uses
  %min.iters.check10370 = icmp ult i32 %i.awo, 20
  br i1 %min.iters.check10370, label %scalar.ph10369.preheader, label %vector.scevcheck10364

vector.scevcheck10364:                            ; preds = %.lr.ph5105
  %i.azk = add nsw i64 %i.azg, -1                 ; 2 uses
  %i.azl = add i32 %i.awo, %i.awn
  %i.azm = trunc i64 %i.azk to i32
  %i.azn = icmp ult i32 %i.azl, %i.azm
  %i.azo = icmp ugt i64 %i.azk, 4294967295
  %i.azp = or i1 %i.azn, %i.azo
  br i1 %i.azp, label %scalar.ph10369.preheader, label %vector.memcheck10365

vector.memcheck10365:                             ; preds = %vector.scevcheck10364
  %i.azq = shl nuw nsw i64 %i.azg, 3              ; 2 uses
  %i.azr = add i32 %i.awo, %i.awn
  %i.azs = zext i32 %i.azr to i64
  %i.azt = shl nuw nsw i64 %i.azs, 3              ; 2 uses
  %i.azu = sub nsw i64 %i.azt, %i.azq
  %diff.check10366 = icmp ugt i64 %i.azu, -32
  %i.azv = sub nsw i64 %i.azq, %i.azt
  %i.azw = add nsw i64 %i.azv, -9
  %diff.check10367 = icmp ult i64 %i.azw, 31
  %conflict.rdx10368 = or i1 %diff.check10366, %diff.check10367
  br i1 %conflict.rdx10368, label %scalar.ph10369.preheader, label %vector.ph10371

vector.ph10371:                                   ; preds = %vector.memcheck10365
  %n.vec10372 = and i64 %i.azg, 4294967292        ; 2 uses
  %i.azx = and i64 %i.azg, 3
  %broadcast.splatinsert10373 = insertelement <2 x i64> poison, i64 %i.azj, i64 0
  %broadcast.splat10374 = shufflevector <2 x i64> %broadcast.splatinsert10373, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10375.a = insertelement <2 x i64> poison, i64 %.pre6951, i64 0
  %broadcast.splat10376.a = shufflevector <2 x i64> %broadcast.splatinsert10375.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10377

vector.body10377:                                 ; preds = %vector.body10377, %vector.ph10371
  %index10378 = phi i64 [ 0, %vector.ph10371 ], [ %index.next10383, %vector.body10377 ] ; 2 uses
  %i.azy = sub i64 %i.azg, %index10378            ; 3 uses
  %i.azz = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.azy ; 2 uses
  %i.baa = getelementptr inbounds i8, ptr %i.azz, i64 -8
  %i.bab = getelementptr inbounds i8, ptr %i.azz, i64 -24
  %wide.load10379 = load <2 x i64>, ptr %i.baa, align 8, !tbaa !91
  %wide.load10380 = load <2 x i64>, ptr %i.bab, align 8, !tbaa !91
  %i.bac = shl <2 x i64> %wide.load10379, %broadcast.splat10376.a
  %i.bad = shl <2 x i64> %wide.load10380, %broadcast.splat10376.a
  %i.bae = getelementptr [8 x i8], ptr %7, i64 %i.azy ; 2 uses
  %i.baf = getelementptr i8, ptr %i.bae, i64 -8
  %i.bag = getelementptr i8, ptr %i.bae, i64 -24
  %wide.load10381.a = load <2 x i64>, ptr %i.baf, align 8, !tbaa !91
  %wide.load10382.a = load <2 x i64>, ptr %i.bag, align 8, !tbaa !91
  %i.bah = lshr <2 x i64> %wide.load10381.a, %broadcast.splat10374
  %i.bai = lshr <2 x i64> %wide.load10382.a, %broadcast.splat10374
  %i.baj = or <2 x i64> %i.bah, %i.bac
  %i.bak = or <2 x i64> %i.bai, %i.bad
  %i.bal = trunc nuw i64 %i.azy to i32
  %i.bam = add i32 %i.awn, %i.bal
  %i.ban = zext i32 %i.bam to i64
  %i.bao = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.ban ; 2 uses
  %i.bap = getelementptr inbounds i8, ptr %i.bao, i64 -8
  %i.baq = getelementptr inbounds i8, ptr %i.bao, i64 -24
  store <2 x i64> %i.baj, ptr %i.bap, align 8, !tbaa !91
  store <2 x i64> %i.bak, ptr %i.baq, align 8, !tbaa !91
  %index.next10383 = add nuw i64 %index10378, 4   ; 2 uses
  %i.bar = icmp eq i64 %index.next10383, %n.vec10372
  br i1 %i.bar, label %middle.block10384, label %vector.body10377, !llvm.loop !189

middle.block10384:                                ; preds = %vector.body10377
  %cmp.n10385 = icmp eq i64 %n.vec10372, %i.azg
  br i1 %cmp.n10385, label %._crit_edge5106, label %scalar.ph10369.preheader

scalar.ph10369.preheader:                         ; preds = %vector.memcheck10365, %vector.scevcheck10364, %.lr.ph5105, %middle.block10384
  %indvars.iv6453.ph = phi i64 [ %i.azg, %vector.memcheck10365 ], [ %i.azg, %vector.scevcheck10364 ], [ %i.azg, %.lr.ph5105 ], [ %i.azx, %middle.block10384 ] ; 7 uses
  %xtraiter12273.a = and i64 %indvars.iv6453.ph, 1
  %lcmp.mod12274.not.a = icmp eq i64 %xtraiter12273.a, 0
  br i1 %lcmp.mod12274.not.a, label %scalar.ph10369.prol.loopexit, label %scalar.ph10369.prol

scalar.ph10369.prol:                              ; preds = %scalar.ph10369.preheader
  %i.bas = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv6453.ph
  %i.bat = load i64, ptr %i.bas, align 8, !tbaa !91
  %i.bau = shl i64 %i.bat, %.pre6951
  %i.bav = add nsw i64 %indvars.iv6453.ph, -1
  %i.baw = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6453.ph
  %i.bax = load i64, ptr %i.baw, align 8, !tbaa !91
  %i.bay = lshr i64 %i.bax, %i.azj
  %i.baz = or i64 %i.bay, %i.bau
  %i.bba = trunc nuw i64 %indvars.iv6453.ph to i32
  %i.bbb = add i32 %i.awn, %i.bba
  %i.bbc = zext i32 %i.bbb to i64
  %i.bbd = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.bbc
  store i64 %i.baz, ptr %i.bbd, align 8, !tbaa !91
  br label %scalar.ph10369.prol.loopexit

scalar.ph10369.prol.loopexit:                     ; preds = %scalar.ph10369.prol, %scalar.ph10369.preheader
  %indvars.iv6453.unr = phi i64 [ %indvars.iv6453.ph, %scalar.ph10369.preheader ], [ %i.bav, %scalar.ph10369.prol ]
  %i.bbe = icmp eq i64 %indvars.iv6453.ph, 1
  br i1 %i.bbe, label %._crit_edge5106, label %scalar.ph10369

scalar.ph10369:                                   ; preds = %scalar.ph10369.prol.loopexit, %scalar.ph10369
  %indvars.iv6453 = phi i64 [ %i.bbu, %scalar.ph10369 ], [ %indvars.iv6453.unr, %scalar.ph10369.prol.loopexit ] ; 6 uses
  %i.bbf = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %indvars.iv6453
  %i.bbg = load i64, ptr %i.bbf, align 8, !tbaa !91
  %i.bbh = shl i64 %i.bbg, %.pre6951
  %i.bbi = add nsw i64 %indvars.iv6453, -1        ; 2 uses
  %i.bbj = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6453
  %i.bbk = load i64, ptr %i.bbj, align 8, !tbaa !91
  %i.bbl = lshr i64 %i.bbk, %i.azj
  %i.bbm = or i64 %i.bbl, %i.bbh
  %i.bbn = trunc nuw i64 %indvars.iv6453 to i32
  %i.bbo = add i32 %i.awn, %i.bbn
  %i.bbp = zext i32 %i.bbo to i64
  %i.bbq = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.bbp
  store i64 %i.bbm, ptr %i.bbq, align 8, !tbaa !91
  %i.bbr = getelementptr [8 x i8], ptr %7, i64 %indvars.iv6453
  %i.bbs = load i64, ptr %i.bbr, align 8, !tbaa !91
  %i.bbt = shl i64 %i.bbs, %.pre6951
  %i.bbu = add nsw i64 %indvars.iv6453, -2        ; 2 uses
  %i.bbv = getelementptr [8 x i8], ptr %7, i64 %i.bbi
  %i.bbw = load i64, ptr %i.bbv, align 8, !tbaa !91
  %i.bbx = lshr i64 %i.bbw, %i.azj
  %i.bby = or i64 %i.bbx, %i.bbt
  %i.bbz = trunc nuw i64 %i.bbi to i32
  %i.bca = add i32 %i.awn, %i.bbz
  %i.bcb = zext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.bcb
  store i64 %i.bby, ptr %i.bcc, align 8, !tbaa !91
  %.not.i1256.wide.1 = icmp eq i64 %i.bbu, 0
  br i1 %.not.i1256.wide.1, label %._crit_edge5106, label %scalar.ph10369, !llvm.loop !190

._crit_edge5106:                                  ; preds = %scalar.ph10369.prol.loopexit, %scalar.ph10369, %middle.block10384, %bb.jo
  %i.bcd = load i64, ptr %i.azf, align 8, !tbaa !91
  %i.bce = shl i64 %i.bcd, %.pre6951
  %i.bcf = zext nneg i32 %i.awn to i64
  %i.bcg = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.bcf
  store i64 %i.bce, ptr %i.bcg, align 8, !tbaa !91
  %i.bch = add i32 %i.awo, %i.awn                 ; 2 uses
  %i.bci = zext i32 %i.bch to i64
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %i.azf, i64 %i.bci
  %i.bck = load i64, ptr %i.bcj, align 8, !tbaa !91
  %i.bcl = icmp ne i64 %i.bck, 0
  %i.bcm = zext i1 %i.bcl to i32
  %i.bcn = add i32 %i.bch, %i.bcm
  store i32 %i.bcn, ptr %7, align 8, !tbaa !177
  %.not45.i12585107 = icmp eq i32 %i.awn, 0
  br i1 %.not45.i12585107, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254, label %.lr.ph5110.preheader

.lr.ph5110.preheader:                             ; preds = %._crit_edge5106, %._crit_edge5123, %.lr.ph5135.preheader, %.lr.ph5118
  %.sink8513 = phi i32 [ %i.aqo, %._crit_edge5123 ], [ %i.awn, %.lr.ph5118 ], [ %i.aqo, %.lr.ph5135.preheader ], [ %i.awn, %._crit_edge5106 ]
  %.sink8508 = phi ptr [ %i.ajn, %._crit_edge5123 ], [ %i.aze, %.lr.ph5118 ], [ %i.ajn, %.lr.ph5135.preheader ], [ %i.azf, %._crit_edge5106 ]
  %.ph8507 = phi i32 [ %i.awk, %._crit_edge5123 ], [ %i.aql, %.lr.ph5118 ], [ %i.atc, %.lr.ph5135.preheader ], [ %i.aql, %._crit_edge5106 ]
  %15 = add nsw i32 %.sink8513, -1
  %i.bco = zext i32 %15 to i64
  %16 = shl nuw nsw i64 %i.bco, 3
  %17 = add nuw nsw i64 %16, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink8508, i8 0, i64 %17, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254: ; preds = %.lr.ph5110.preheader, %._crit_edge5106, %._crit_edge5114, %._crit_edge5123
  %18 = phi i32 [ %i.awk, %._crit_edge5123 ], [ %i.aql, %._crit_edge5106 ], [ %i.aql, %._crit_edge5114 ], [ %.ph8507, %.lr.ph5110.preheader ] ; 2 uses
  %i.bcp = load i32, ptr %7, align 8, !tbaa !177  ; 4 uses
  %i.bcq = icmp ult i32 %i.bcp, %18
  br i1 %i.bcq, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread, label %bb.jp

bb.jp:                                            ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254
  %i.bcr = icmp ugt i32 %i.bcp, %18
  br i1 %i.bcr, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread, label %.preheader4207

.preheader4207:                                   ; preds = %bb.jp
  %.not.i130610241 = icmp eq i32 %i.bcp, 0
  br i1 %.not.i130610241, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread3276, label %.lr.ph10244

.lr.ph10244:                                      ; preds = %.preheader4207
  %i.bcs = zext i32 %i.bcp to i64
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jr
  %i.bct = add nsw i64 %indvars.iv647110242, -1   ; 2 uses
  %.not.i1306 = icmp eq i64 %i.bct, 0
  br i1 %.not.i1306, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread3276, label %bb.jr, !llvm.loop !191

bb.jr:                                            ; preds = %.lr.ph10244, %bb.jq
  %.016.i130410243 = phi i32 [ undef, %.lr.ph10244 ], [ %.1.i1309, %bb.jq ]
  %indvars.iv647110242 = phi i64 [ %i.bcs, %.lr.ph10244 ], [ %i.bct, %bb.jq ] ; 3 uses
  %i.bcu = getelementptr [8 x i8], ptr %7, i64 %indvars.iv647110242
  %i.bcv = load i64, ptr %i.bcu, align 8, !tbaa !91 ; 3 uses
  %i.bcw = getelementptr [8 x i8], ptr %8, i64 %indvars.iv647110242
  %i.bcx = load i64, ptr %i.bcw, align 8, !tbaa !91 ; 3 uses
  %.not4063 = icmp ult i64 %i.bcv, %i.bcx
  %.not4064 = icmp ugt i64 %i.bcv, %i.bcx
  %..016.i1307 = select i1 %.not4064, i32 1, i32 %.016.i130410243
  %.1.i1309 = select i1 %.not4063, i32 -1, i32 %..016.i1307 ; 3 uses
  %cond.i1310 = icmp eq i64 %i.bcv, %i.bcx
  br i1 %cond.i1310, label %bb.jq, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312: ; preds = %bb.jr
  %.not680.i388 = icmp eq i32 %.1.i1309, 0
  br i1 %.not680.i388, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread3276, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254, %bb.jp, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312
  %.2.i13113275 = phi i32 [ %.1.i1309, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1254 ], [ 1, %bb.jp ]
  %i.bcy = icmp sgt i32 %.2.i13113275, 0
  %i.bcz = zext i1 %i.bcy to i64
  br label %bb.js

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread3276: ; preds = %bb.jq, %.preheader4207, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312
  %i.bda = and i64 %.0.i1205.ph, 1
  br label %bb.js

bb.js:                                            ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread3276, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread
  %.pn.i389 = phi i64 [ %i.bcz, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread ], [ %i.bda, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1312.thread3276 ]
  %.0601.i390 = add nuw nsw i64 %.pn.i389, %.0.i1205.ph ; 2 uses
  %i.bdb = icmp eq i64 %.0601.i390, 9218868437227405312
  br i1 %i.bdb, label %bb.jt, label %bb.ka, !prof !7

bb.jt:                                            ; preds = %bb.js
  br i1 %.not4017, label %bb.jx, label %bb.ju, !prof !24

bb.ju:                                            ; preds = %bb.jt
  %i.bdc = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not681.i392 = icmp eq ptr %i.bdc, null
  br i1 %.not681.i392, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  store i8 0, ptr %i.bdc, align 1, !tbaa !81
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %i.bdd = ptrtoint ptr %.73180 to i64
  %i.bde = ptrtoint ptr %i.fs to i64
  %i.bdf = sub i64 %i.bdd, %i.bde
  %i.bdg = shl i64 %i.bdf, 8
  %i.bdh = or disjoint i64 %i.bdg, 1
  store i64 %i.bdh, ptr %.5454.i, align 8, !tbaa !79
  %i.bdi = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store ptr %i.fs, ptr %i.bdi, align 8, !tbaa !81
  store ptr %.73180, ptr %i.j, align 8, !tbaa !92
  br label %.split3304

bb.jx:                                            ; preds = %bb.jt
  br i1 %.not4014, label %bb.jz, label %bb.jy, !prof !24

bb.jy:                                            ; preds = %bb.jx
  store i64 20, ptr %.5454.i, align 8, !tbaa !79
  %i.bdj = select i1 %i.fx, i64 -4503599627370496, i64 9218868437227405312
  %i.bdk = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store i64 %i.bdj, ptr %i.bdk, align 8, !tbaa !81
  br label %.split3304

bb.jz:                                            ; preds = %bb.jx
  store ptr @.str.82, ptr %i.i, align 8, !tbaa !92
  store ptr %i.fs, ptr %i.h, align 8, !tbaa !92
  br label %.split3304.thread

bb.ka:                                            ; preds = %bb.js
  store i64 20, ptr %.5454.i, align 8, !tbaa !79
  %i.bdl = select i1 %i.fx, i64 -9223372036854775808, i64 0
  %i.bdm = or disjoint i64 %.0601.i390, %i.bdl
  %i.bdn = getelementptr inbounds nuw i8, ptr %.5454.i, i64 8
  store i64 %i.bdm, ptr %i.bdn, align 8, !tbaa !81
  br label %.split3304

.split3304.thread:                                ; preds = %bb.it, %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.aik

.split3304:                                       ; preds = %bb.ka, %bb.jy, %bb.jw, %bb.iv, %bb.is, %bb.iq
  store ptr %.73180, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.preheader4227

.preheader4227:                                   ; preds = %bb.or, %bb.os, %bb.pa, %bb.oz, %bb.nx, %bb.nw, %bb.po, %bb.aib, %.split, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848, %.split3295, %.split3290, %.split3289, %.split3288, %.split3294, %.split3296, %.split3297, %.split3299, %.split3301, %.split3280, %.split3281, %.split3282, %.split3283, %.split3284, %.split3285, %.split3286, %.split3287, %.split3293, %.split3292, %.split3291, %.split3300, %.split3298, %.split3302, %.split3303, %.split3304
  %.9545.i.ph = phi i64 [ %.3539.i, %.split3303 ], [ %.3539.i, %.split3302 ], [ %.3539.i, %.split3301 ], [ %.3539.i, %.split3300 ], [ %.3539.i, %.split3299 ], [ %.3539.i, %.split3298 ], [ %.3539.i, %.split3297 ], [ %.3539.i, %.split3296 ], [ %.3539.i, %.split3295 ], [ %.3539.i, %.split3294 ], [ %.3539.i, %.split3293 ], [ %.3539.i, %.split3292 ], [ %.3539.i, %.split3291 ], [ %.3539.i, %.split3290 ], [ %.3539.i, %.split3289 ], [ %.3539.i, %.split3288 ], [ %.3539.i, %.split3287 ], [ %.3539.i, %.split3286 ], [ %.3539.i, %.split3285 ], [ %.3539.i, %.split3284 ], [ %.3539.i, %.split3283 ], [ %.3539.i, %.split3282 ], [ %.3539.i, %.split3281 ], [ %.3539.i, %.split3280 ], [ %.3539.i, %.split ], [ %.3539.i, %.split3304 ], [ %.7543.i, %bb.nx ], [ %.10546.i, %bb.po ], [ %.16552.i, %bb.aib ], [ %.7543.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.6542.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.5541.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.4540.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756 ], [ %.3539.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458 ], [ %.7543.i, %bb.nw ], [ %.8544.i, %bb.oz ], [ %.8544.i, %bb.pa ], [ %.8544.i, %bb.os ], [ %.8544.i, %bb.or ] ; 3 uses
  %.2530.i.ph = phi i64 [ %i.ft, %.split3303 ], [ %i.ft, %.split3302 ], [ %i.ft, %.split3301 ], [ %i.ft, %.split3300 ], [ %i.ft, %.split3299 ], [ %i.ft, %.split3298 ], [ %i.ft, %.split3297 ], [ %i.ft, %.split3296 ], [ %i.ft, %.split3295 ], [ %i.ft, %.split3294 ], [ %i.ft, %.split3293 ], [ %i.ft, %.split3292 ], [ %i.ft, %.split3291 ], [ %i.ft, %.split3290 ], [ %i.ft, %.split3289 ], [ %i.ft, %.split3288 ], [ %i.ft, %.split3287 ], [ %i.ft, %.split3286 ], [ %i.ft, %.split3285 ], [ %i.ft, %.split3284 ], [ %i.ft, %.split3283 ], [ %i.ft, %.split3282 ], [ %i.ft, %.split3281 ], [ %i.ft, %.split3280 ], [ %i.ft, %.split ], [ %i.ft, %.split3304 ], [ %i.byk, %bb.nx ], [ %i.ccq, %bb.po ], [ %i.fuf, %bb.aib ], [ %i.byk, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %i.bxs, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %i.bwy, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %i.beh, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756 ], [ %i.ft, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458 ], [ %i.byk, %bb.nw ], [ %i.cac, %bb.oz ], [ %i.cac, %bb.pa ], [ %i.cac, %bb.os ], [ %i.cac, %bb.or ] ; 3 uses
  %.16517.i.ph = phi ptr [ %.5506.i, %.split3303 ], [ %.5506.i, %.split3302 ], [ %.5506.i, %.split3301 ], [ %.5506.i, %.split3300 ], [ %.5506.i, %.split3299 ], [ %.5506.i, %.split3298 ], [ %.5506.i, %.split3297 ], [ %.5506.i, %.split3296 ], [ %.5506.i, %.split3295 ], [ %.5506.i, %.split3294 ], [ %.5506.i, %.split3293 ], [ %.5506.i, %.split3292 ], [ %.5506.i, %.split3291 ], [ %.5506.i, %.split3290 ], [ %.5506.i, %.split3289 ], [ %.5506.i, %.split3288 ], [ %.5506.i, %.split3287 ], [ %.5506.i, %.split3286 ], [ %.5506.i, %.split3285 ], [ %.5506.i, %.split3284 ], [ %.5506.i, %.split3283 ], [ %.5506.i, %.split3282 ], [ %.5506.i, %.split3281 ], [ %.5506.i, %.split3280 ], [ %.5506.i, %.split ], [ %.5506.i, %.split3304 ], [ %.13514.i, %bb.nx ], [ %.17518.i, %bb.po ], [ %.25526.i, %bb.aib ], [ %.13514.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.11512.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.9510.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.7508.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756 ], [ %.5506.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458 ], [ %.13514.i, %bb.nw ], [ %.15516.i, %bb.oz ], [ %.15516.i, %bb.pa ], [ %.15516.i, %bb.os ], [ %.15516.i, %bb.or ] ; 6 uses
  %.16491.i.ph = phi ptr [ %.5480.i, %.split3303 ], [ %.5480.i, %.split3302 ], [ %.5480.i, %.split3301 ], [ %.5480.i, %.split3300 ], [ %.5480.i, %.split3299 ], [ %.5480.i, %.split3298 ], [ %.5480.i, %.split3297 ], [ %.5480.i, %.split3296 ], [ %.5480.i, %.split3295 ], [ %.5480.i, %.split3294 ], [ %.5480.i, %.split3293 ], [ %.5480.i, %.split3292 ], [ %.5480.i, %.split3291 ], [ %.5480.i, %.split3290 ], [ %.5480.i, %.split3289 ], [ %.5480.i, %.split3288 ], [ %.5480.i, %.split3287 ], [ %.5480.i, %.split3286 ], [ %.5480.i, %.split3285 ], [ %.5480.i, %.split3284 ], [ %.5480.i, %.split3283 ], [ %.5480.i, %.split3282 ], [ %.5480.i, %.split3281 ], [ %.5480.i, %.split3280 ], [ %.5480.i, %.split ], [ %.5480.i, %.split3304 ], [ %.13488.i, %bb.nx ], [ %.17492.i, %bb.po ], [ %.25500.i, %bb.aib ], [ %.13488.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.11486.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.9484.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.7482.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756 ], [ %.5480.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458 ], [ %.13488.i, %bb.nw ], [ %.15490.i, %bb.oz ], [ %.15490.i, %bb.pa ], [ %.15490.i, %bb.os ], [ %.15490.i, %bb.or ] ; 3 uses
  %.16465.i.ph = phi ptr [ %.5454.i, %.split3303 ], [ %.5454.i, %.split3302 ], [ %.5454.i, %.split3301 ], [ %.5454.i, %.split3300 ], [ %.5454.i, %.split3299 ], [ %.5454.i, %.split3298 ], [ %.5454.i, %.split3297 ], [ %.5454.i, %.split3296 ], [ %.5454.i, %.split3295 ], [ %.5454.i, %.split3294 ], [ %.5454.i, %.split3293 ], [ %.5454.i, %.split3292 ], [ %.5454.i, %.split3291 ], [ %.5454.i, %.split3290 ], [ %.5454.i, %.split3289 ], [ %.5454.i, %.split3288 ], [ %.5454.i, %.split3287 ], [ %.5454.i, %.split3286 ], [ %.5454.i, %.split3285 ], [ %.5454.i, %.split3284 ], [ %.5454.i, %.split3283 ], [ %.5454.i, %.split3282 ], [ %.5454.i, %.split3281 ], [ %.5454.i, %.split3280 ], [ %.5454.i, %.split ], [ %.5454.i, %.split3304 ], [ %.13462.i, %bb.nx ], [ %.17466.i, %bb.po ], [ %.25474.i, %bb.aib ], [ %.13462.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.11460.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.9458.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.7456.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756 ], [ %.5454.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458 ], [ %.13462.i, %bb.nw ], [ %.15464.i, %bb.oz ], [ %.15464.i, %bb.pa ], [ %.15464.i, %bb.os ], [ %.15464.i, %bb.or ] ; 3 uses
  %.16.i.ph = phi ptr [ %.5445.i, %.split3303 ], [ %.5445.i, %.split3302 ], [ %.5445.i, %.split3301 ], [ %.5445.i, %.split3300 ], [ %.5445.i, %.split3299 ], [ %.5445.i, %.split3298 ], [ %.5445.i, %.split3297 ], [ %.5445.i, %.split3296 ], [ %.5445.i, %.split3295 ], [ %.5445.i, %.split3294 ], [ %.5445.i, %.split3293 ], [ %.5445.i, %.split3292 ], [ %.5445.i, %.split3291 ], [ %.5445.i, %.split3290 ], [ %.5445.i, %.split3289 ], [ %.5445.i, %.split3288 ], [ %.5445.i, %.split3287 ], [ %.5445.i, %.split3286 ], [ %.5445.i, %.split3285 ], [ %.5445.i, %.split3284 ], [ %.5445.i, %.split3283 ], [ %.5445.i, %.split3282 ], [ %.5445.i, %.split3281 ], [ %.5445.i, %.split3280 ], [ %.5445.i, %.split ], [ %.5445.i, %.split3304 ], [ %.13.i, %bb.nx ], [ %i.cch, %bb.po ], [ %i.ftw, %bb.aib ], [ %.13.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit848 ], [ %.11.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit845 ], [ %.9.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842 ], [ %.7447.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit756 ], [ %.5445.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458 ], [ %.13.i, %bb.nw ], [ %.15.i, %bb.oz ], [ %.15.i, %bb.pa ], [ %.15.i, %bb.os ], [ %.15.i, %bb.or ] ; 3 uses
  %i.bdo = load ptr, ptr %i.h, align 8, !tbaa !92 ; 3 uses
  %.sroa.01.0.copyload.i6095000 = load i16, ptr %i.bdo, align 1 ; 2 uses
  %i.bdp = icmp eq i16 %.sroa.01.0.copyload.i6095000, 2604
  br i1 %i.bdp, label %._crit_edge5002, label %.lr.ph5001

.lr.ph5001:                                       ; preds = %.preheader4227
  %i.bdq = and i32 %2, 8
  %.not3974 = icmp eq i32 %i.bdq, 0
  br label %bb.pe

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit873, %bb.ca, %bb.he, %bb.hn, %bb.hy, %bb.gx, %bb.ha, %bb.ce, %bb.cg, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.aik

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit458: ; preds = %bb.bv, %bb.bu, %bb.bm, %bb.bn, %bb.bx, %bb.dp, %bb.ds, %bb.dv, %bb.dy, %bb.eb, %bb.hg, %bb.hk, %bb.hm, %bb.hq, %bb.hv, %bb.hx
  %.343207.ph.sink = phi ptr [ %.113184, %bb.hx ], [ %i.hm, %bb.bx ], [ %i.kf, %bb.dp ], [ %i.km, %bb.ds ], [ %i.kt, %bb.dv ], [ %i.la, %bb.dy ], [ %i.lh, %bb.eb ], [ %.103183.lcssa, %bb.hg ], [ %.103183.lcssa, %bb.hk ], [ %.103183.lcssa, %bb.hm ], [ %.113184, %bb.hq ], [ %.113184, %bb.hv ], [ %i.hg, %bb.bu ], [ %i.hg, %bb.bv ], [ %.0.i1173, %bb.bm ], [ %.0.i1173, %bb.bn ]
  store ptr %.343207.ph.sink, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.preheader4227

bb.kb:                                            ; preds = %bb.au
  switch i8 %i.ey, label %bb.oa [
    i8 34, label %bb.kc
    i8 116, label %bb.ng
    i8 102, label %bb.nj
    i8 110, label %bb.nm
    i8 93, label %bb.ny
  ]

bb.kc:                                            ; preds = %bb.kb
  %i.bdr = getelementptr inbounds nuw i8, ptr %.3452.i.ph, i64 16 ; 3 uses
  %.not610.i = icmp ult ptr %i.bdr, %.3478.i.ph
  br i1 %.not610.i, label %bb.ke, label %bb.kd, !prof !24

bb.kd:                                            ; preds = %bb.kc
  %i.bds = lshr i64 %.2538.i.ph, 1
  %i.bdt = add i64 %i.bds, %.2538.i.ph            ; 3 uses
  %i.bdu = shl i64 %.2538.i.ph, 4
  %i.bdv = shl i64 %i.bdt, 4
  %i.bdw = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3504.i.ph, i64 noundef %i.bdu, i64 noundef %i.bdv), !inline_history !158 ; 5 uses
  %.not611.i = icmp eq ptr %i.bdw, null
  %.pre6812 = load ptr, ptr %i.h, align 8, !tbaa !92 ; 2 uses
  br i1 %.not611.i, label %bb.aio, label %.thread3305

.thread3305:                                      ; preds = %bb.kd
  %i.bdx = ptrtoint ptr %i.bdr to i64
  %i.bdy = ptrtoint ptr %.3504.i.ph to i64        ; 2 uses
  %i.bdz = sub i64 %i.bdx, %i.bdy
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdw, i64 %i.bdz
  %i.beb = ptrtoint ptr %.3443.i.ph to i64
  %i.bec = sub i64 %i.beb, %i.bdy
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bdw, i64 %i.bec
  %i.bee = getelementptr [16 x i8], ptr %i.bdw, i64 %i.bdt
  %i.bef = getelementptr i8, ptr %i.bee, i64 -32
  br label %bb.ke

bb.ke:                                            ; preds = %.thread3305, %bb.kc
  %i.beg = phi ptr [ %.pre6812, %.thread3305 ], [ %.promoted5024, %bb.kc ]
  %.4540.i = phi i64 [ %i.bdt, %.thread3305 ], [ %.2538.i.ph, %bb.kc ]
  %.7508.i = phi ptr [ %i.bdw, %.thread3305 ], [ %.3504.i.ph, %bb.kc ] ; 11 uses
  %.7482.i = phi ptr [ %i.bef, %.thread3305 ], [ %.3478.i.ph, %bb.kc ]
  %.7456.i = phi ptr [ %i.bea, %.thread3305 ], [ %i.bdr, %bb.kc ] ; 3 uses
  %.7447.i = phi ptr [ %i.bed, %.thread3305 ], [ %.3443.i.ph, %bb.kc ]
  %i.beh = add i64 %.1529.i.ph, 1
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beg, i64 1 ; 3 uses
  br label %.backedge4203

.backedge4203:                                    ; preds = %.backedge4203.backedge, %bb.ke
  %.0269.i715 = phi ptr [ %i.bei, %bb.ke ], [ %.0269.i715.be, %.backedge4203.backedge ] ; 3 uses
  %i.bej = load i8, ptr %.0269.i715, align 1, !tbaa !81 ; 2 uses
  %i.bek = zext i8 %i.bej to i64
  %i.bel = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.bek
  %i.bem = load i8, ptr %i.bel, align 1, !tbaa !81
  %i.ben = and i8 %i.bem, 12
  %.not39795184 = icmp eq i8 %i.ben, 0
  br i1 %.not39795184, label %.lr.ph5187, label %.split.loop.exit5168, !prof !159

.lr.ph5187:                                       ; preds = %.backedge4203, %bb.kt
  %.1270.i7165185 = phi ptr [ %i.bia, %bb.kt ], [ %.0269.i715, %.backedge4203 ] ; 31 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %.1270.i7165185, i64 1
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !81 ; 2 uses
  %i.beq = zext i8 %i.bep to i64
  %i.ber = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.beq
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !81
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.split3398:                                       ; preds = %bb.aeh, %bb.aef
  %.03210 = phi i64 [ %i.ero, %bb.aef ], [ %i.ese, %bb.aeh ] ; 2 uses
  %i.esf = icmp sgt i64 %.03210, -1               ; 2 uses
  %.neg674.i500 = sext i1 %i.esf to i32
  %i.esg = zext i1 %i.esf to i64
  %i.esh = shl i64 %.03210, %i.esg                ; 2 uses
  %i.esi = and i64 %i.esh, 1024
  %i.esj = add i64 %i.esi, %i.esh                 ; 2 uses
  %i.esk = icmp ult i64 %i.esj, 1024
  %spec.select3579.v = select i1 %i.esk, i32 65, i32 64
  %i.esl = lshr i64 %i.esj, 11
  %reass.sub5852 = sub nsw i32 %i.erg, %i.eri
  %i.esm = add nsw i32 %reass.sub5852, 1086
  %spec.select3579 = add nsw i32 %i.esm, %.neg674.i500
  %i.esn = add nsw i32 %spec.select3579, %spec.select3579.v
  %i.eso = zext nneg i32 %i.esn to i64
  %i.esp = shl nuw nsw i64 %i.eso, 52
  %i.esq = and i64 %i.esl, 4503599627370495
  %i.esr = or disjoint i64 %i.esp, %i.esq
  store i64 20, ptr %i.dsl, align 8, !tbaa !79
  %i.ess = select i1 %i.dsp, i64 -9223372036854775808, i64 0
  %i.est = or disjoint i64 %i.esr, %i.ess
  %i.esu = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store i64 %i.est, ptr %i.esu, align 8, !tbaa !81
  store ptr %.73219, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.preheader4232

.critedge689.i499:                                ; preds = %..critedge689.i499_crit_edge, %bb.aeg
  %.pre-phi6970 = phi i32 [ %.pre6969, %..critedge689.i499_crit_edge ], [ %i.eri, %bb.aeg ]
  %.pre-phi6968 = phi i128 [ %.pre6967, %..critedge689.i499_crit_edge ], [ %i.erk, %bb.aeg ]
  %.pre-phi6966 = phi i32 [ %.pre6965, %..critedge689.i499_crit_edge ], [ %i.erg, %bb.aeg ]
  %.pre-phi6960 = phi i32 [ %.pre6959, %..critedge689.i499_crit_edge ], [ %i.eqz, %bb.aeg ] ; 2 uses
  %.pre-phi6956 = phi i64 [ %.pre6955, %..critedge689.i499_crit_edge ], [ %i.erh, %bb.aeg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.esv = select i1 %i.eqv, i64 0, i64 4
  %i.esw = shl i64 %i.esv, %.pre-phi6956          ; 2 uses
  %i.esx = add i32 %.pre-phi6960, 686
  %i.esy = sext i32 %i.esx to i64
  %i.esz = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.esy
  %i.eta = load i64, ptr %i.esz, align 16, !tbaa !91
  %i.etb = add i32 %.pre-phi6960, 687
  %i.etc = sext i32 %i.etb to i64
  %i.etd = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.etc
  %i.ete = load i64, ptr %i.etd, align 8, !tbaa !91
  %i.etf = lshr i64 %i.ete, 63
  %i.etg = add i64 %i.etf, %i.eta
  %i.eth = zext i64 %i.etg to i128
  %i.eti = mul nuw i128 %.pre-phi6968, %i.eth     ; 2 uses
  %i.etj = lshr i128 %i.eti, 64
  %i.etk = trunc nuw i128 %i.etj to i64
  %i.etl = trunc i128 %i.eti to i64
  %i.etm = lshr i64 %i.etl, 63
  %i.etn = add nuw i64 %i.etm, %i.etk             ; 2 uses
  %.not677.i478 = icmp eq i64 %i.esw, 0
  %i.eto = select i1 %.not677.i478, i64 8, i64 9
  %i.etp = add i64 %i.eto, %i.esw
  %i.etq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.etn, i1 true) ; 3 uses
  %i.etr = trunc nuw nsw i64 %i.etq to i32
  %i.ets = shl i64 %i.etn, %i.etq                 ; 3 uses
  %i.ett = add nsw i32 %.pre-phi6966, 64
  %i.etu = add nuw nsw i32 %.pre-phi6970, %i.etr
  %i.etv = sub nsw i32 %i.ett, %i.etu             ; 7 uses
  %i.etw = shl i64 %i.etp, %i.etq                 ; 3 uses
  %i.etx = icmp sgt i32 %i.etv, -1086
  br i1 %i.etx, label %.thread3363, label %bb.aei, !prof !24

bb.aei:                                           ; preds = %.critedge689.i499
  %i.ety = icmp samesign ult i32 %i.etv, -1137
  br i1 %i.ety, label %.thread3360, label %bb.aej

bb.aej:                                           ; preds = %bb.aei
  %i.etz = sub nuw nsw i32 -1074, %i.etv          ; 2 uses
  %i.eua = icmp samesign ult i32 %i.etv, -1134
  br i1 %i.eua, label %.thread3360, label %.thread3363, !prof !121

.thread3360:                                      ; preds = %bb.aei, %bb.aej
  %.0603.i4813362 = phi i32 [ %i.etz, %bb.aej ], [ 64, %bb.aei ]
  %i.eub = add nsw i32 %.0603.i4813362, -60       ; 2 uses
  %i.euc = zext nneg i32 %i.eub to i64            ; 2 uses
  %i.eud = lshr i64 %i.ets, %i.euc
  %i.eue = add nsw i32 %i.eub, %i.etv
  %i.euf = lshr i64 %i.etw, %i.euc
  %i.eug = add nuw i64 %i.euf, 9
  br label %.thread3363

.thread3363:                                      ; preds = %.critedge689.i499, %.thread3360, %bb.aej
  %.0604.i482 = phi i64 [ %i.eug, %.thread3360 ], [ %i.etw, %bb.aej ], [ %i.etw, %.critedge689.i499 ] ; 2 uses
  %.0602.i483 = phi i32 [ 60, %.thread3360 ], [ %i.etz, %bb.aej ], [ 11, %.critedge689.i499 ] ; 3 uses
  %.sroa.19.0.in.i484 = phi i32 [ %i.eue, %.thread3360 ], [ %i.etv, %bb.aej ], [ %i.etv, %.critedge689.i499 ]
  %.sroa.029.0.i485 = phi i64 [ %i.eud, %.thread3360 ], [ %i.ets, %bb.aej ], [ %i.ets, %.critedge689.i499 ] ; 2 uses
  %i.euh = zext nneg i32 %.0602.i483 to i64       ; 2 uses
  %notmask.i486 = shl nsw i64 -1, %i.euh
  %i.eui = xor i64 %notmask.i486, -1
  %i.euj = and i64 %.sroa.029.0.i485, %i.eui
  %i.euk = shl nuw nsw i64 %i.euj, 3              ; 2 uses
  %i.eul = add nsw i32 %.0602.i483, -1
  %i.eum = zext nneg i32 %i.eul to i64
  %i.eun = shl nuw nsw i64 8, %i.eum              ; 2 uses
  %i.euo = lshr i64 %.sroa.029.0.i485, %i.euh
  %i.eup = add i64 %i.eun, %.0604.i482
  %i.euq = icmp uge i64 %i.euk, %i.eup            ; 2 uses
  %i.eur = zext i1 %i.euq to i64
  %i.eus = add nuw nsw i64 %i.euo, %i.eur         ; 3 uses
  %i.eut = icmp eq i64 %i.eus, 0
  br i1 %i.eut, label %bb.aev, label %bb.aek, !prof !7

bb.aek:                                           ; preds = %.thread3363
  %i.euu = add nsw i32 %.sroa.19.0.in.i484, %.0602.i483
  %i.euv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.eus, i1 true) ; 2 uses
  %i.euw = trunc nuw nsw i64 %i.euv to i32
  %i.eux = shl i64 %i.eus, %i.euv
  %i.euy = lshr i64 %i.eux, 11                    ; 2 uses
  %i.euz = sub nsw i32 %i.euu, %i.euw             ; 5 uses
  %i.eva = icmp sgt i32 %i.euz, 960
  br i1 %i.eva, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit, label %bb.ael, !prof !7

bb.ael:                                           ; preds = %bb.aek
  %i.evb = icmp sgt i32 %i.euz, -1086
  br i1 %i.evb, label %bb.aem, label %bb.aen, !prof !24

bb.aem:                                           ; preds = %bb.ael
  %i.evc = add nsw i32 %i.euz, 1086
  %i.evd = zext nneg i32 %i.evc to i64
  %i.eve = shl nuw nsw i64 %i.evd, 52
  %i.evf = and i64 %i.euy, 4503599627370495
  %i.evg = or disjoint i64 %i.eve, %i.evf
  br label %bb.aev

bb.aen:                                           ; preds = %bb.ael
  %i.evh = icmp samesign ugt i32 %i.euz, -1138
  br i1 %i.evh, label %bb.aeo, label %bb.aev, !prof !24

bb.aeo:                                           ; preds = %bb.aen
  %i.evi = sub nuw nsw i32 -1085, %i.euz
  %i.evj = zext nneg i32 %i.evi to i64
  %i.evk = lshr i64 %i.euy, %i.evj
  br label %bb.aev

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit: ; preds = %bb.aek
  br i1 %.not3885, label %bb.aes, label %bb.aep, !prof !24

bb.aep:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit
  %i.evl = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not682.i498 = icmp eq ptr %i.evl, null
  br i1 %.not682.i498, label %bb.aer, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  store i8 0, ptr %i.evl, align 1, !tbaa !81
  br label %bb.aer

bb.aer:                                           ; preds = %bb.aeq, %bb.aep
  %i.evm = ptrtoint ptr %.73219 to i64
  %i.evn = ptrtoint ptr %i.dsg to i64
  %i.evo = sub i64 %i.evm, %i.evn
  %i.evp = shl i64 %i.evo, 8
  %i.evq = or disjoint i64 %i.evp, 1
  store i64 %i.evq, ptr %i.dsl, align 8, !tbaa !79
  %i.evr = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store ptr %i.dsg, ptr %i.evr, align 8, !tbaa !81
  store ptr %.73219, ptr %i.j, align 8, !tbaa !92
  br label %.split3399

bb.aes:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit
  br i1 %.not3882, label %bb.aeu, label %bb.aet, !prof !24

bb.aet:                                           ; preds = %bb.aes
  store i64 20, ptr %i.dsl, align 8, !tbaa !79
  %i.evs = select i1 %i.dsp, i64 -4503599627370496, i64 9218868437227405312
  %i.evt = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store i64 %i.evs, ptr %i.evt, align 8, !tbaa !81
  br label %.split3399

bb.aeu:                                           ; preds = %bb.aes
  store ptr @.str.82, ptr %i.i, align 8, !tbaa !92
  br label %.split3399.thread

bb.aev:                                           ; preds = %.thread3363, %bb.aem, %bb.aeo, %bb.aen
  %.0.i1204.ph = phi i64 [ 0, %bb.aen ], [ %i.evk, %bb.aeo ], [ %i.evg, %bb.aem ], [ 0, %.thread3363 ] ; 7 uses
  %i.evu = sub i64 %i.eun, %.0604.i482
  %.not678.i488 = icmp ule i64 %i.euk, %i.evu
  %spec.select.i489 = or i1 %.not678.i488, %i.euq
  br i1 %spec.select.i489, label %bb.aew, label %bb.aex, !prof !24

bb.aew:                                           ; preds = %bb.aev
  store i64 20, ptr %i.dsl, align 8, !tbaa !79
  %i.evv = select i1 %i.dsp, i64 -9223372036854775808, i64 0
  %i.evw = or disjoint i64 %.0.i1204.ph, %i.evv
  %i.evx = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store i64 %i.evw, ptr %i.evx, align 8, !tbaa !81
  br label %.split3399

bb.aex:                                           ; preds = %bb.aev
  %.not679.i490 = icmp samesign ult i64 %.0.i1204.ph, 4503599627370496 ; 2 uses
  %i.evy = and i64 %.0.i1204.ph, 4503599627370495
  %i.evz = or disjoint i64 %i.evy, 4503599627370496
  %i.ewa = lshr i64 %.0.i1204.ph, 52
  %i.ewb = trunc nuw nsw i64 %i.ewa to i32
  %i.ewc = add nsw i32 %i.ewb, -1076
  %.sroa.9.0.i491 = select i1 %.not679.i490, i32 -1075, i32 %i.ewc ; 4 uses
  %.sroa.022.0.i492 = select i1 %.not679.i490, i64 %.0.i1204.ph, i64 %i.evz
  %i.ewd = shl nuw nsw i64 %.sroa.022.0.i492, 1
  %i.ewe = or disjoint i64 %i.ewd, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %5, i64 noundef %.22596.i470, ptr noundef %i.a, ptr noundef %.3565.i473, ptr noundef %.3569.i472, ptr noundef %.23.i471)
  %i.ewf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.ewe, ptr %i.ewf, align 8, !tbaa !91
  %i.ewg = load i32, ptr %i.a, align 4, !tbaa !3  ; 6 uses
  %i.ewh = icmp sgt i32 %i.ewg, -1
  br i1 %i.ewh, label %.preheader4252, label %bb.aff

.preheader4252:                                   ; preds = %bb.aex
  %.promoted4825 = load i32, ptr %5, align 8      ; 2 uses
  %i.ewi = icmp samesign ugt i32 %i.ewg, 18
  br i1 %i.ewi, label %.lr.ph4828, label %._crit_edge4829

.lr.ph4828:                                       ; preds = %.preheader4252
  %i.ewj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.aey

bb.aey:                                           ; preds = %.lr.ph4828, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417
  %.0.i12114827 = phi i32 [ %i.ewg, %.lr.ph4828 ], [ %i.exx, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417 ] ; 2 uses
  %i.ewk = phi i32 [ %.promoted4825, %.lr.ph4828 ], [ %i.exw, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417 ] ; 9 uses
  %.not5850 = icmp eq i32 %i.ewk, 0
  br i1 %.not5850, label %._crit_edge4815, label %.lr.ph4814.preheader

.lr.ph4814.preheader:                             ; preds = %bb.aey
  %wide.trip.count6375 = zext i32 %i.ewk to i64
  br label %.lr.ph4814

.lr.ph4814:                                       ; preds = %.lr.ph4814.preheader, %bb.aez
  %indvars.iv6372 = phi i64 [ 0, %.lr.ph4814.preheader ], [ %indvars.iv.next6373, %bb.aez ] ; 3 uses
  %i.ewl = getelementptr inbounds nuw [8 x i8], ptr %i.ewj, i64 %indvars.iv6372
  %i.ewm = load i64, ptr %i.ewl, align 8, !tbaa !91
  %.not.i1416 = icmp eq i64 %i.ewm, 0
  br i1 %.not.i1416, label %bb.aez, label %._crit_edge4815.loopexit

bb.aez:                                           ; preds = %.lr.ph4814
  %indvars.iv.next6373 = add nuw nsw i64 %indvars.iv6372, 1 ; 2 uses
  %exitcond6376.not = icmp eq i64 %indvars.iv.next6373, %wide.trip.count6375
  br i1 %exitcond6376.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417, label %.lr.ph4814, !llvm.loop !174

._crit_edge4815.loopexit:                         ; preds = %.lr.ph4814
  %i.ewn = trunc nuw i64 %indvars.iv6372 to i32
  br label %._crit_edge4815

._crit_edge4815:                                  ; preds = %._crit_edge4815.loopexit, %bb.aey
  %.018.i1412.lcssa = phi i32 [ 0, %bb.aey ], [ %i.ewn, %._crit_edge4815.loopexit ] ; 2 uses
  %i.ewo = icmp ult i32 %.018.i1412.lcssa, %i.ewk
  br i1 %i.ewo, label %.lr.ph4822.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417

.lr.ph4822.preheader:                             ; preds = %._crit_edge4815
  %i.ewp = zext i32 %.018.i1412.lcssa to i64      ; 4 uses
  %wide.trip.count6380 = zext i32 %i.ewk to i64   ; 2 uses
  %i.ewq = sub nsw i64 %wide.trip.count6380, %i.ewp ; 3 uses
  %xtraiter12218 = and i64 %i.ewq, 1
  %i.ewr = add nsw i64 %wide.trip.count6380, -1
  %i.ews = icmp eq i64 %i.ewr, %i.ewp
  br i1 %i.ews, label %.lr.ph4822.epil.preheader, label %.lr.ph4822.preheader.new

.lr.ph4822.preheader.new:                         ; preds = %.lr.ph4822.preheader
  %unroll_iter12223 = and i64 %i.ewq, -2
  br label %.lr.ph4822

.lr.ph4822:                                       ; preds = %.lr.ph4822, %.lr.ph4822.preheader.new
  %indvars.iv6377 = phi i64 [ %i.ewp, %.lr.ph4822.preheader.new ], [ %indvars.iv.next6378.1, %.lr.ph4822 ] ; 3 uses
  %.0.i14144820 = phi i64 [ 0, %.lr.ph4822.preheader.new ], [ %i.exi, %.lr.ph4822 ]
  %niter12224 = phi i64 [ 0, %.lr.ph4822.preheader.new ], [ %niter12224.next.1, %.lr.ph4822 ]
  %i.ewt = getelementptr inbounds nuw [8 x i8], ptr %i.ewj, i64 %indvars.iv6377 ; 2 uses
  %i.ewu = load i64, ptr %i.ewt, align 8, !tbaa !91
  %i.ewv = zext i64 %i.ewu to i128
  %i.eww = mul nuw i128 %i.ewv, 10000000000000000000
  %i.ewx = zext i64 %.0.i14144820 to i128
  %i.ewy = add nuw i128 %i.eww, %i.ewx            ; 2 uses
  %i.ewz = lshr i128 %i.ewy, 64
  %i.exa = trunc i128 %i.ewy to i64
  store i64 %i.exa, ptr %i.ewt, align 8, !tbaa !91
  %i.exb = getelementptr inbounds nuw [8 x i8], ptr %i.ewj, i64 %indvars.iv6377
  %i.exc = getelementptr inbounds nuw i8, ptr %i.exb, i64 8 ; 2 uses
  %i.exd = load i64, ptr %i.exc, align 8, !tbaa !91
  %i.exe = zext i64 %i.exd to i128
  %i.exf = mul nuw i128 %i.exe, 10000000000000000000
  %i.exg = add nuw i128 %i.exf, %i.ewz            ; 2 uses
  %i.exh = lshr i128 %i.exg, 64                   ; 2 uses
  %i.exi = trunc nuw i128 %i.exh to i64           ; 3 uses
  %i.exj = trunc i128 %i.exg to i64
  store i64 %i.exj, ptr %i.exc, align 8, !tbaa !91
  %indvars.iv.next6378.1 = add nuw nsw i64 %indvars.iv6377, 2 ; 2 uses
  %niter12224.next.1 = add i64 %niter12224, 2     ; 2 uses
  %niter12224.ncmp.1 = icmp eq i64 %niter12224.next.1, %unroll_iter12223
  br i1 %niter12224.ncmp.1, label %._crit_edge4823.unr-lcssa, label %.lr.ph4822, !llvm.loop !175

._crit_edge4823.unr-lcssa:                        ; preds = %.lr.ph4822
  %lcmp.mod12219.not = icmp eq i64 %xtraiter12218, 0
  br i1 %lcmp.mod12219.not, label %._crit_edge4823, label %.lr.ph4822.epil.preheader

.lr.ph4822.epil.preheader:                        ; preds = %._crit_edge4823.unr-lcssa, %.lr.ph4822.preheader
  %indvars.iv6377.epil.init = phi i64 [ %i.ewp, %.lr.ph4822.preheader ], [ %indvars.iv.next6378.1, %._crit_edge4823.unr-lcssa ]
  %.0.i14144820.epil.init = phi i64 [ 0, %.lr.ph4822.preheader ], [ %i.exi, %._crit_edge4823.unr-lcssa ]
  %lcmp.mod12222 = trunc i64 %i.ewq to i1
  tail call void @llvm.assume(i1 %lcmp.mod12222)
  %i.exk = getelementptr inbounds nuw [8 x i8], ptr %i.ewj, i64 %indvars.iv6377.epil.init ; 2 uses
  %i.exl = load i64, ptr %i.exk, align 8, !tbaa !91
  %i.exm = zext i64 %i.exl to i128
  %i.exn = mul nuw i128 %i.exm, 10000000000000000000
  %i.exo = zext i64 %.0.i14144820.epil.init to i128
  %i.exp = add nuw i128 %i.exn, %i.exo            ; 2 uses
  %i.exq = lshr i128 %i.exp, 64                   ; 2 uses
  %i.exr = trunc nuw i128 %i.exq to i64
  %i.exs = trunc i128 %i.exp to i64
  store i64 %i.exs, ptr %i.exk, align 8, !tbaa !91
  br label %._crit_edge4823

._crit_edge4823:                                  ; preds = %._crit_edge4823.unr-lcssa, %.lr.ph4822.epil.preheader
  %.lcssa11830 = phi i128 [ %i.exh, %._crit_edge4823.unr-lcssa ], [ %i.exq, %.lr.ph4822.epil.preheader ]
  %.lcssa11829 = phi i64 [ %i.exi, %._crit_edge4823.unr-lcssa ], [ %i.exr, %.lr.ph4822.epil.preheader ]
  %.not19.i1415 = icmp eq i128 %.lcssa11830, 0
  br i1 %.not19.i1415, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417, label %bb.afa

bb.afa:                                           ; preds = %._crit_edge4823
  %i.ext = add i32 %i.ewk, 1
  %i.exu = zext i32 %i.ewk to i64
  %i.exv = getelementptr inbounds nuw [8 x i8], ptr %i.ewj, i64 %i.exu
  store i64 %.lcssa11829, ptr %i.exv, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417: ; preds = %bb.aez, %._crit_edge4815, %._crit_edge4823, %bb.afa
  %i.exw = phi i32 [ %i.ewk, %._crit_edge4823 ], [ %i.ext, %bb.afa ], [ %i.ewk, %._crit_edge4815 ], [ %i.ewk, %bb.aez ] ; 2 uses
  %i.exx = add nsw i32 %.0.i12114827, -19         ; 2 uses
  %i.exy = icmp sgt i32 %.0.i12114827, 37
  br i1 %i.exy, label %bb.aey, label %._crit_edge4829, !llvm.loop !176

._crit_edge4829:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417, %.preheader4252
  %i.exz = phi i32 [ %.promoted4825, %.preheader4252 ], [ %i.exw, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417 ] ; 7 uses
  %.0.i1211.lcssa = phi i32 [ %i.ewg, %.preheader4252 ], [ %i.exx, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1417 ] ; 2 uses
  store i32 %i.exz, ptr %5, align 8
  %.not.i1212 = icmp eq i32 %.0.i1211.lcssa, 0
  br i1 %.not.i1212, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.afb

bb.afb:                                           ; preds = %._crit_edge4829
  %i.eya = sext i32 %.0.i1211.lcssa to i64
  %i.eyb = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.eya
  %i.eyc = load i64, ptr %i.eyb, align 8, !tbaa !91
  %i.eyd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not5851 = icmp eq i32 %i.exz, 0
  br i1 %.not5851, label %._crit_edge4835, label %.lr.ph4834.preheader

.lr.ph4834.preheader:                             ; preds = %bb.afb
  %wide.trip.count6385 = zext i32 %i.exz to i64
  br label %.lr.ph4834

.lr.ph4834:                                       ; preds = %.lr.ph4834.preheader, %bb.afc
  %indvars.iv6382 = phi i64 [ 0, %.lr.ph4834.preheader ], [ %indvars.iv.next6383, %bb.afc ] ; 3 uses
  %i.eye = getelementptr inbounds nuw [8 x i8], ptr %i.eyd, i64 %indvars.iv6382
  %i.eyf = load i64, ptr %i.eye, align 8, !tbaa !91
  %.not.i1422 = icmp eq i64 %i.eyf, 0
  br i1 %.not.i1422, label %bb.afc, label %._crit_edge4835.loopexit

bb.afc:                                           ; preds = %.lr.ph4834
  %indvars.iv.next6383 = add nuw nsw i64 %indvars.iv6382, 1 ; 2 uses
  %exitcond6386.not = icmp eq i64 %indvars.iv.next6383, %wide.trip.count6385
  br i1 %exitcond6386.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %.lr.ph4834, !llvm.loop !174

._crit_edge4835.loopexit:                         ; preds = %.lr.ph4834
  %i.eyg = trunc nuw i64 %indvars.iv6382 to i32
  br label %._crit_edge4835

._crit_edge4835:                                  ; preds = %._crit_edge4835.loopexit, %bb.afb
  %.018.i1418.lcssa = phi i32 [ 0, %bb.afb ], [ %i.eyg, %._crit_edge4835.loopexit ] ; 2 uses
  %i.eyh = icmp ult i32 %.018.i1418.lcssa, %i.exz
  br i1 %i.eyh, label %.lr.ph4842, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

.lr.ph4842:                                       ; preds = %._crit_edge4835
  %i.eyi = zext i64 %i.eyc to i128                ; 3 uses
  %i.eyj = zext i32 %.018.i1418.lcssa to i64      ; 4 uses
  %wide.trip.count6390 = zext i32 %i.exz to i64   ; 2 uses
  %i.eyk = sub nsw i64 %wide.trip.count6390, %i.eyj ; 3 uses
  %xtraiter12226 = and i64 %i.eyk, 1
  %i.eyl = add nsw i64 %wide.trip.count6390, -1
  %i.eym = icmp eq i64 %i.eyl, %i.eyj
  br i1 %i.eym, label %.epil.preheader12225, label %.lr.ph4842.new

.lr.ph4842.new:                                   ; preds = %.lr.ph4842
  %unroll_iter12231 = and i64 %i.eyk, -2
  br label %bb.afd

bb.afd:                                           ; preds = %bb.afd, %.lr.ph4842.new
  %indvars.iv6387 = phi i64 [ %i.eyj, %.lr.ph4842.new ], [ %indvars.iv.next6388.1, %bb.afd ] ; 3 uses
  %.0.i14204840 = phi i64 [ 0, %.lr.ph4842.new ], [ %i.ezc, %bb.afd ]
  %niter12232 = phi i64 [ 0, %.lr.ph4842.new ], [ %niter12232.next.1, %bb.afd ]
  %i.eyn = getelementptr inbounds nuw [8 x i8], ptr %i.eyd, i64 %indvars.iv6387 ; 2 uses
  %i.eyo = load i64, ptr %i.eyn, align 8, !tbaa !91
  %i.eyp = zext i64 %i.eyo to i128
  %i.eyq = mul nuw i128 %i.eyp, %i.eyi
  %i.eyr = zext i64 %.0.i14204840 to i128
  %i.eys = add nuw i128 %i.eyq, %i.eyr            ; 2 uses
  %i.eyt = lshr i128 %i.eys, 64
  %i.eyu = trunc i128 %i.eys to i64
  store i64 %i.eyu, ptr %i.eyn, align 8, !tbaa !91
  %i.eyv = getelementptr inbounds nuw [8 x i8], ptr %i.eyd, i64 %indvars.iv6387
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.eyv, i64 8 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.lr.ph4788:                                       ; preds = %.lr.ph4788, %.lr.ph4788.preheader.new
  %indvars.iv6357 = phi i64 [ %i.ezy, %.lr.ph4788.preheader.new ], [ %indvars.iv.next6358.1, %.lr.ph4788 ] ; 3 uses
  %.0.i14024786 = phi i64 [ 0, %.lr.ph4788.preheader.new ], [ %i.far, %.lr.ph4788 ]
  %niter = phi i64 [ 0, %.lr.ph4788.preheader.new ], [ %niter.next.1, %.lr.ph4788 ]
  %i.fac = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6357 ; 2 uses
  %i.fad = load i64, ptr %i.fac, align 8, !tbaa !91
  %i.fae = zext i64 %i.fad to i128
  %i.faf = mul nuw i128 %i.fae, 10000000000000000000
  %i.fag = zext i64 %.0.i14024786 to i128
  %i.fah = add nuw i128 %i.faf, %i.fag            ; 2 uses
  %i.fai = lshr i128 %i.fah, 64
  %i.faj = trunc i128 %i.fah to i64
  store i64 %i.faj, ptr %i.fac, align 8, !tbaa !91
  %i.fak = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6357
  %i.fal = getelementptr inbounds nuw i8, ptr %i.fak, i64 8 ; 2 uses
  %i.fam = load i64, ptr %i.fal, align 8, !tbaa !91
  %i.fan = zext i64 %i.fam to i128
  %i.fao = mul nuw i128 %i.fan, 10000000000000000000
  %i.fap = add nuw i128 %i.fao, %i.fai            ; 2 uses
  %i.faq = lshr i128 %i.fap, 64                   ; 2 uses
  %i.far = trunc nuw i128 %i.faq to i64           ; 3 uses
  %i.fas = trunc i128 %i.fap to i64
  store i64 %i.fas, ptr %i.fal, align 8, !tbaa !91
  %indvars.iv.next6358.1 = add nuw nsw i64 %indvars.iv6357, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge4789.unr-lcssa, label %.lr.ph4788, !llvm.loop !175

._crit_edge4789.unr-lcssa:                        ; preds = %.lr.ph4788
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge4789, label %.lr.ph4788.epil.preheader

.lr.ph4788.epil.preheader:                        ; preds = %._crit_edge4789.unr-lcssa, %.lr.ph4788.preheader
  %indvars.iv6357.epil.init = phi i64 [ %i.ezy, %.lr.ph4788.preheader ], [ %indvars.iv.next6358.1, %._crit_edge4789.unr-lcssa ]
  %.0.i14024786.epil.init = phi i64 [ 0, %.lr.ph4788.preheader ], [ %i.far, %._crit_edge4789.unr-lcssa ]
  %lcmp.mod12210 = trunc i64 %i.ezz to i1
  tail call void @llvm.assume(i1 %lcmp.mod12210)
  %i.fat = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6357.epil.init ; 2 uses
  %i.fau = load i64, ptr %i.fat, align 8, !tbaa !91
  %i.fav = zext i64 %i.fau to i128
  %i.faw = mul nuw i128 %i.fav, 10000000000000000000
  %i.fax = zext i64 %.0.i14024786.epil.init to i128
  %i.fay = add nuw i128 %i.faw, %i.fax            ; 2 uses
  %i.faz = lshr i128 %i.fay, 64                   ; 2 uses
  %i.fba = trunc nuw i128 %i.faz to i64
  %i.fbb = trunc i128 %i.fay to i64
  store i64 %i.fbb, ptr %i.fat, align 8, !tbaa !91
  br label %._crit_edge4789

._crit_edge4789:                                  ; preds = %._crit_edge4789.unr-lcssa, %.lr.ph4788.epil.preheader
  %.lcssa11839 = phi i128 [ %i.faq, %._crit_edge4789.unr-lcssa ], [ %i.faz, %.lr.ph4788.epil.preheader ]
  %.lcssa11838 = phi i64 [ %i.far, %._crit_edge4789.unr-lcssa ], [ %i.fba, %.lr.ph4788.epil.preheader ]
  %.not19.i1403 = icmp eq i128 %.lcssa11839, 0
  br i1 %.not19.i1403, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1405, label %bb.afh

bb.afh:                                           ; preds = %._crit_edge4789
  %i.fbc = add i32 %i.ezt, 1
  %i.fbd = zext i32 %i.ezt to i64
  %i.fbe = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fbd
  store i64 %.lcssa11838, ptr %i.fbe, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1405

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1405: ; preds = %bb.afg, %._crit_edge4781, %._crit_edge4789, %bb.afh
  %i.fbf = phi i32 [ %i.ezt, %._crit_edge4789 ], [ %i.fbc, %bb.afh ], [ %i.ezt, %._crit_edge4781 ], [ %i.ezt, %bb.afg ] ; 5 uses
  %i.fbg = add nsw i32 %.0.i12134793, -19         ; 3 uses
  %i.fbh = icmp sgt i32 %.0.i12134793, 37
  br i1 %i.fbh, label %.lr.ph4795, label %._crit_edge4796, !llvm.loop !176

._crit_edge4796:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1405
  store i32 %i.fbf, ptr %6, align 8
  %.not.i1214 = icmp eq i32 %i.fbg, 0
  br i1 %.not.i1214, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.afi

bb.afi:                                           ; preds = %._crit_edge4796
  %i.fbi = sext i32 %i.fbg to i64
  %i.fbj = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.fbi
  %i.fbk = load i64, ptr %i.fbj, align 8, !tbaa !91 ; 2 uses
  %.not5849 = icmp eq i32 %i.fbf, 0
  br i1 %.not5849, label %._crit_edge4802, label %.lr.ph4801.preheader

.lr.ph4801.preheader:                             ; preds = %.thread7458, %bb.afi
  %i.fbl = phi i64 [ %i.ezs, %.thread7458 ], [ %i.fbk, %bb.afi ]
  %i.fbm = phi i32 [ 1, %.thread7458 ], [ %i.fbf, %bb.afi ] ; 3 uses
  %wide.trip.count6365 = zext i32 %i.fbm to i64
  br label %.lr.ph4801

.lr.ph4801:                                       ; preds = %.lr.ph4801.preheader, %bb.afj
  %indvars.iv6362 = phi i64 [ 0, %.lr.ph4801.preheader ], [ %indvars.iv.next6363, %bb.afj ] ; 3 uses
  %i.fbn = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6362
  %i.fbo = load i64, ptr %i.fbn, align 8, !tbaa !91
  %.not.i1410 = icmp eq i64 %i.fbo, 0
  br i1 %.not.i1410, label %bb.afj, label %._crit_edge4802.loopexit

bb.afj:                                           ; preds = %.lr.ph4801
  %indvars.iv.next6363 = add nuw nsw i64 %indvars.iv6362, 1 ; 2 uses
  %exitcond6366.not = icmp eq i64 %indvars.iv.next6363, %wide.trip.count6365
  br i1 %exitcond6366.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %.lr.ph4801, !llvm.loop !174

._crit_edge4802.loopexit:                         ; preds = %.lr.ph4801
  %i.fbp = trunc nuw i64 %indvars.iv6362 to i32
  br label %._crit_edge4802

._crit_edge4802:                                  ; preds = %._crit_edge4802.loopexit, %bb.afi
  %i.fbq = phi i64 [ %i.fbk, %bb.afi ], [ %i.fbl, %._crit_edge4802.loopexit ]
  %i.fbr = phi i32 [ 0, %bb.afi ], [ %i.fbm, %._crit_edge4802.loopexit ] ; 6 uses
  %.018.i1406.lcssa = phi i32 [ 0, %bb.afi ], [ %i.fbp, %._crit_edge4802.loopexit ] ; 2 uses
  %i.fbs = icmp ult i32 %.018.i1406.lcssa, %i.fbr
  br i1 %i.fbs, label %.lr.ph4809, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

.lr.ph4809:                                       ; preds = %._crit_edge4802
  %i.fbt = zext i64 %i.fbq to i128                ; 3 uses
  %i.fbu = zext i32 %.018.i1406.lcssa to i64      ; 4 uses
  %wide.trip.count6370 = zext i32 %i.fbr to i64   ; 2 uses
  %i.fbv = sub nsw i64 %wide.trip.count6370, %i.fbu ; 3 uses
  %xtraiter12211 = and i64 %i.fbv, 1
  %i.fbw = add nsw i64 %wide.trip.count6370, -1
  %i.fbx = icmp eq i64 %i.fbw, %i.fbu
  br i1 %i.fbx, label %.epil.preheader, label %.lr.ph4809.new

.lr.ph4809.new:                                   ; preds = %.lr.ph4809
  %unroll_iter12216 = and i64 %i.fbv, -2
  br label %bb.afk

bb.afk:                                           ; preds = %bb.afk, %.lr.ph4809.new
  %indvars.iv6367 = phi i64 [ %i.fbu, %.lr.ph4809.new ], [ %indvars.iv.next6368.1, %bb.afk ] ; 3 uses
  %.0.i14084807 = phi i64 [ 0, %.lr.ph4809.new ], [ %i.fcn, %bb.afk ]
  %niter12217 = phi i64 [ 0, %.lr.ph4809.new ], [ %niter12217.next.1, %bb.afk ]
  %i.fby = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6367 ; 2 uses
  %i.fbz = load i64, ptr %i.fby, align 8, !tbaa !91
  %i.fca = zext i64 %i.fbz to i128
  %i.fcb = mul nuw i128 %i.fca, %i.fbt
  %i.fcc = zext i64 %.0.i14084807 to i128
  %i.fcd = add nuw i128 %i.fcb, %i.fcc            ; 2 uses
  %i.fce = lshr i128 %i.fcd, 64
  %i.fcf = trunc i128 %i.fcd to i64
  store i64 %i.fcf, ptr %i.fby, align 8, !tbaa !91
  %i.fcg = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6367
  %i.fch = getelementptr inbounds nuw i8, ptr %i.fcg, i64 8 ; 2 uses
  %i.fci = load i64, ptr %i.fch, align 8, !tbaa !91
  %i.fcj = zext i64 %i.fci to i128
  %i.fck = mul nuw i128 %i.fcj, %i.fbt
  %i.fcl = add nuw i128 %i.fck, %i.fce            ; 2 uses
  %i.fcm = lshr i128 %i.fcl, 64                   ; 2 uses
  %i.fcn = trunc nuw i128 %i.fcm to i64           ; 3 uses
  %i.fco = trunc i128 %i.fcl to i64
  store i64 %i.fco, ptr %i.fch, align 8, !tbaa !91
  %indvars.iv.next6368.1 = add nuw nsw i64 %indvars.iv6367, 2 ; 2 uses
  %niter12217.next.1 = add i64 %niter12217, 2     ; 2 uses
  %niter12217.ncmp.1 = icmp eq i64 %niter12217.next.1, %unroll_iter12216
  br i1 %niter12217.ncmp.1, label %._crit_edge4810.unr-lcssa, label %bb.afk, !llvm.loop !175

._crit_edge4810.unr-lcssa:                        ; preds = %bb.afk
  %lcmp.mod12212.not = icmp eq i64 %xtraiter12211, 0
  br i1 %lcmp.mod12212.not, label %._crit_edge4810, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge4810.unr-lcssa, %.lr.ph4809
  %indvars.iv6367.epil.init = phi i64 [ %i.fbu, %.lr.ph4809 ], [ %indvars.iv.next6368.1, %._crit_edge4810.unr-lcssa ]
  %.0.i14084807.epil.init = phi i64 [ 0, %.lr.ph4809 ], [ %i.fcn, %._crit_edge4810.unr-lcssa ]
  %lcmp.mod12215 = trunc i64 %i.fbv to i1
  tail call void @llvm.assume(i1 %lcmp.mod12215)
  %i.fcp = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6367.epil.init ; 2 uses
  %i.fcq = load i64, ptr %i.fcp, align 8, !tbaa !91
  %i.fcr = zext i64 %i.fcq to i128
  %i.fcs = mul nuw i128 %i.fcr, %i.fbt
  %i.fct = zext i64 %.0.i14084807.epil.init to i128
  %i.fcu = add nuw i128 %i.fcs, %i.fct            ; 2 uses
  %i.fcv = lshr i128 %i.fcu, 64                   ; 2 uses
  %i.fcw = trunc nuw i128 %i.fcv to i64
  %i.fcx = trunc i128 %i.fcu to i64
  store i64 %i.fcx, ptr %i.fcp, align 8, !tbaa !91
  br label %._crit_edge4810

._crit_edge4810:                                  ; preds = %._crit_edge4810.unr-lcssa, %.epil.preheader
  %.lcssa11834 = phi i128 [ %i.fcm, %._crit_edge4810.unr-lcssa ], [ %i.fcv, %.epil.preheader ]
  %.lcssa11833 = phi i64 [ %i.fcn, %._crit_edge4810.unr-lcssa ], [ %i.fcw, %.epil.preheader ]
  %.not19.i1409 = icmp eq i128 %.lcssa11834, 0
  br i1 %.not19.i1409, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.afl

bb.afl:                                           ; preds = %._crit_edge4810
  %i.fcy = add i32 %i.fbr, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split: ; preds = %bb.afe, %bb.afl
  %.sink8523 = phi i32 [ %i.fbr, %bb.afl ], [ %i.exz, %bb.afe ]
  %i.fcz = phi ptr [ %6, %bb.afl ], [ %5, %bb.afe ]
  %.lcssa7923.sink = phi i64 [ %.lcssa11833, %bb.afl ], [ %.lcssa11825, %bb.afe ]
  %.ph8519 = phi i32 [ %i.fcy, %bb.afl ], [ 1, %bb.afe ]
  %i.fda = getelementptr inbounds nuw i8, ptr %i.fcz, i64 8
  %i.fdb = zext i32 %.sink8523 to i64
  %i.fdc = getelementptr inbounds nuw [8 x i8], ptr %i.fda, i64 %i.fdb
  store i64 %.lcssa7923.sink, ptr %i.fdc, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit: ; preds = %bb.afj, %bb.afc, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split, %._crit_edge4802, %._crit_edge4835, %._crit_edge4796, %._crit_edge4810, %._crit_edge4829, %._crit_edge4843
  %i.fdd = phi i32 [ %i.fbf, %._crit_edge4796 ], [ %i.fbr, %._crit_edge4810 ], [ %i.fbr, %._crit_edge4802 ], [ 1, %._crit_edge4829 ], [ 1, %._crit_edge4843 ], [ 1, %bb.afc ], [ %.ph8519, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split ], [ 1, %._crit_edge4835 ], [ %i.fbm, %bb.afj ] ; 16 uses
  %i.fde = icmp sgt i32 %.sroa.9.0.i491, 0
  br i1 %i.fde, label %bb.afm, label %bb.afo

bb.afm:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.fdf = and i32 %.sroa.9.0.i491, 63            ; 3 uses
  %i.fdg = lshr i32 %.sroa.9.0.i491, 6            ; 15 uses
  %i.fdh = icmp eq i32 %i.fdf, 0
  br i1 %i.fdh, label %.preheader4247, label %bb.afn, !prof !7

.preheader4247:                                   ; preds = %bb.afm
  %.not46.i4871 = icmp eq i32 %i.fdd, 0
  br i1 %.not46.i4871, label %.lr.ph4878.preheader, label %.lr.ph4873

.lr.ph4873:                                       ; preds = %.preheader4247
  %i.fdi = add nsw i32 %i.fdg, -1                 ; 6 uses
  %i.fdj = zext i32 %i.fdd to i64                 ; 9 uses
  %min.iters.check10353 = icmp ult i32 %i.fdd, 30
  br i1 %min.iters.check10353, label %scalar.ph10352.preheader, label %vector.scevcheck10349

vector.scevcheck10349:                            ; preds = %.lr.ph4873
  %i.fdk = add nsw i64 %i.fdj, -1                 ; 2 uses
  %i.fdl = add i32 %i.fdd, %i.fdg
  %i.fdm = add i32 %i.fdl, -1
  %i.fdn = trunc i64 %i.fdk to i32
  %i.fdo = icmp ult i32 %i.fdm, %i.fdn
  %i.fdp = icmp ugt i64 %i.fdk, 4294967295
  %i.fdq = or i1 %i.fdo, %i.fdp
  br i1 %i.fdq, label %scalar.ph10352.preheader, label %vector.memcheck10350

vector.memcheck10350:                             ; preds = %vector.scevcheck10349
  %i.fdr = add i32 %i.fdd, %i.fdg
  %i.fds = add i32 %i.fdr, -1
  %i.fdt = zext i32 %i.fds to i64
  %i.fdu = sub nsw i64 %i.fdj, %i.fdt
  %i.fdv = shl nsw i64 %i.fdu, 3
  %i.fdw = add nsw i64 %i.fdv, -9
  %diff.check10351 = icmp ult i64 %i.fdw, 31
  br i1 %diff.check10351, label %scalar.ph10352.preheader, label %vector.ph10354

vector.ph10354:                                   ; preds = %vector.memcheck10350
  %n.vec10355 = and i64 %i.fdj, 4294967292        ; 2 uses
  %i.fdx = and i64 %i.fdj, 3
  br label %vector.body10356

vector.body10356:                                 ; preds = %vector.body10356, %vector.ph10354
  %index10357 = phi i64 [ 0, %vector.ph10354 ], [ %index.next10360, %vector.body10356 ] ; 2 uses
  %i.fdy = sub i64 %i.fdj, %index10357            ; 2 uses
  %i.fdz = getelementptr [8 x i8], ptr %6, i64 %i.fdy ; 2 uses
  %i.fea = getelementptr i8, ptr %i.fdz, i64 -8
  %i.feb = getelementptr i8, ptr %i.fdz, i64 -24
  %wide.load10358 = load <2 x i64>, ptr %i.fea, align 8, !tbaa !91
  %wide.load10359 = load <2 x i64>, ptr %i.feb, align 8, !tbaa !91
  %i.fec = trunc nuw i64 %i.fdy to i32
  %i.fed = add i32 %i.fdi, %i.fec
  %i.fee = zext i32 %i.fed to i64
  %i.fef = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fee ; 2 uses
  %i.feg = getelementptr inbounds i8, ptr %i.fef, i64 -8
  %i.feh = getelementptr inbounds i8, ptr %i.fef, i64 -24
  store <2 x i64> %wide.load10358, ptr %i.feg, align 8, !tbaa !91
  store <2 x i64> %wide.load10359, ptr %i.feh, align 8, !tbaa !91
  %index.next10360 = add nuw i64 %index10357, 4   ; 2 uses
  %i.fei = icmp eq i64 %index.next10360, %n.vec10355
  br i1 %i.fei, label %middle.block10361, label %vector.body10356, !llvm.loop !206

middle.block10361:                                ; preds = %vector.body10356
  %cmp.n10362 = icmp eq i64 %n.vec10355, %i.fdj
  br i1 %cmp.n10362, label %.lr.ph4878.preheader, label %scalar.ph10352.preheader

scalar.ph10352.preheader:                         ; preds = %vector.memcheck10350, %vector.scevcheck10349, %.lr.ph4873, %middle.block10361
  %indvars.iv6407.ph = phi i64 [ %i.fdj, %vector.memcheck10350 ], [ %i.fdj, %vector.scevcheck10349 ], [ %i.fdj, %.lr.ph4873 ], [ %i.fdx, %middle.block10361 ] ; 4 uses
  %i.fej = add nsw i64 %indvars.iv6407.ph, -1
  %xtraiter12240 = and i64 %indvars.iv6407.ph, 3  ; 2 uses
  %lcmp.mod12241.not = icmp eq i64 %xtraiter12240, 0
  br i1 %lcmp.mod12241.not, label %scalar.ph10352.prol.loopexit, label %scalar.ph10352.prol

scalar.ph10352.prol:                              ; preds = %scalar.ph10352.preheader, %scalar.ph10352.prol
  %indvars.iv6407.prol = phi i64 [ %i.fek, %scalar.ph10352.prol ], [ %indvars.iv6407.ph, %scalar.ph10352.preheader ] ; 3 uses
  %prol.iter12242 = phi i64 [ %prol.iter12242.next, %scalar.ph10352.prol ], [ 0, %scalar.ph10352.preheader ]
  %i.fek = add nsw i64 %indvars.iv6407.prol, -1   ; 2 uses
  %i.fel = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6407.prol
  %i.fem = load i64, ptr %i.fel, align 8, !tbaa !91
  %i.fen = trunc nuw i64 %indvars.iv6407.prol to i32
  %i.feo = add i32 %i.fdi, %i.fen
  %i.fep = zext i32 %i.feo to i64
  %i.feq = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fep
  store i64 %i.fem, ptr %i.feq, align 8, !tbaa !91
  %prol.iter12242.next = add i64 %prol.iter12242, 1 ; 2 uses
  %prol.iter12242.cmp.not = icmp eq i64 %prol.iter12242.next, %xtraiter12240
  br i1 %prol.iter12242.cmp.not, label %scalar.ph10352.prol.loopexit, label %scalar.ph10352.prol, !llvm.loop !207

scalar.ph10352.prol.loopexit:                     ; preds = %scalar.ph10352.prol, %scalar.ph10352.preheader
  %indvars.iv6407.unr = phi i64 [ %indvars.iv6407.ph, %scalar.ph10352.preheader ], [ %i.fek, %scalar.ph10352.prol ]
  %i.fer = icmp ult i64 %i.fej, 3
  br i1 %i.fer, label %.lr.ph4878.preheader, label %scalar.ph10352

scalar.ph10352:                                   ; preds = %scalar.ph10352.prol.loopexit, %scalar.ph10352
  %indvars.iv6407 = phi i64 [ %i.ffn, %scalar.ph10352 ], [ %indvars.iv6407.unr, %scalar.ph10352.prol.loopexit ] ; 6 uses
  %i.fes = add nsw i64 %indvars.iv6407, -1        ; 2 uses
  %i.fet = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6407
  %i.feu = load i64, ptr %i.fet, align 8, !tbaa !91
  %i.fev = trunc nuw i64 %indvars.iv6407 to i32
  %i.few = add i32 %i.fdi, %i.fev
  %i.fex = zext i32 %i.few to i64
  %i.fey = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fex
  store i64 %i.feu, ptr %i.fey, align 8, !tbaa !91
  %i.fez = add nsw i64 %indvars.iv6407, -2        ; 2 uses
  %i.ffa = getelementptr [8 x i8], ptr %6, i64 %i.fes
  %i.ffb = load i64, ptr %i.ffa, align 8, !tbaa !91
  %i.ffc = trunc nuw i64 %i.fes to i32
  %i.ffd = add i32 %i.fdi, %i.ffc
  %i.ffe = zext i32 %i.ffd to i64
  %i.fff = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.ffe
  store i64 %i.ffb, ptr %i.fff, align 8, !tbaa !91
  %i.ffg = add nsw i64 %indvars.iv6407, -3        ; 2 uses
  %i.ffh = getelementptr [8 x i8], ptr %6, i64 %i.fez
  %i.ffi = load i64, ptr %i.ffh, align 8, !tbaa !91
  %i.ffj = trunc nuw i64 %i.fez to i32
  %i.ffk = add i32 %i.fdi, %i.ffj
  %i.ffl = zext i32 %i.ffk to i64
  %i.ffm = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.ffl
  store i64 %i.ffi, ptr %i.ffm, align 8, !tbaa !91
  %i.ffn = add nsw i64 %indvars.iv6407, -4        ; 2 uses
  %i.ffo = getelementptr [8 x i8], ptr %6, i64 %i.ffg
  %i.ffp = load i64, ptr %i.ffo, align 8, !tbaa !91
  %i.ffq = trunc nuw i64 %i.ffg to i32
  %i.ffr = add i32 %i.fdi, %i.ffq
  %i.ffs = zext i32 %i.ffr to i64
  %i.fft = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.ffs
  store i64 %i.ffp, ptr %i.fft, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.ffn, 0
  br i1 %.not46.i.wide.3, label %.lr.ph4878.preheader, label %scalar.ph10352, !llvm.loop !208

.lr.ph4878.preheader:                             ; preds = %scalar.ph10352.prol.loopexit, %scalar.ph10352, %middle.block10361, %.preheader4247
  %i.ffu = add i32 %i.fdd, %i.fdg                 ; 2 uses
  store i32 %i.ffu, ptr %6, align 8, !tbaa !177
  br label %.lr.ph4853.preheader

bb.afn:                                           ; preds = %bb.afm
  %i.ffv = zext i32 %i.fdd to i64                 ; 10 uses
  %i.ffw = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.ffv
  store i64 0, ptr %i.ffw, align 8, !tbaa !91
  %.not.i12354862 = icmp eq i32 %i.fdd, 0
  %.pre6971 = zext nneg i32 %i.fdf to i64         ; 5 uses
  br i1 %.not.i12354862, label %._crit_edge4866, label %.lr.ph4865

.lr.ph4865:                                       ; preds = %bb.afn
  %i.ffx = sub nuw nsw i32 64, %i.fdf
  %i.ffy = zext nneg i32 %i.ffx to i64            ; 4 uses
  %min.iters.check10332 = icmp ult i32 %i.fdd, 20
  br i1 %min.iters.check10332, label %scalar.ph10331.preheader, label %vector.scevcheck10326

vector.scevcheck10326:                            ; preds = %.lr.ph4865
  %i.ffz = add nsw i64 %i.ffv, -1                 ; 2 uses
  %i.fga = add i32 %i.fdd, %i.fdg
  %i.fgb = trunc i64 %i.ffz to i32
  %i.fgc = icmp ult i32 %i.fga, %i.fgb
  %i.fgd = icmp ugt i64 %i.ffz, 4294967295
  %i.fge = or i1 %i.fgc, %i.fgd
  br i1 %i.fge, label %scalar.ph10331.preheader, label %vector.memcheck10327

vector.memcheck10327:                             ; preds = %vector.scevcheck10326
  %i.fgf = shl nuw nsw i64 %i.ffv, 3              ; 2 uses
  %i.fgg = add i32 %i.fdd, %i.fdg
  %i.fgh = zext i32 %i.fgg to i64
  %i.fgi = shl nuw nsw i64 %i.fgh, 3              ; 2 uses
  %i.fgj = sub nsw i64 %i.fgi, %i.fgf
  %diff.check10328 = icmp ugt i64 %i.fgj, -32
  %i.fgk = sub nsw i64 %i.fgf, %i.fgi
  %i.fgl = add nsw i64 %i.fgk, -9
  %diff.check10329 = icmp ult i64 %i.fgl, 31
  %conflict.rdx10330 = or i1 %diff.check10328, %diff.check10329
  br i1 %conflict.rdx10330, label %scalar.ph10331.preheader, label %vector.ph10333

vector.ph10333:                                   ; preds = %vector.memcheck10327
  %n.vec10334 = and i64 %i.ffv, 4294967292        ; 2 uses
  %i.fgm = and i64 %i.ffv, 3
  %broadcast.splatinsert10335 = insertelement <2 x i64> poison, i64 %i.ffy, i64 0
  %broadcast.splat10336 = shufflevector <2 x i64> %broadcast.splatinsert10335, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10337 = insertelement <2 x i64> poison, i64 %.pre6971, i64 0
  %broadcast.splat10338 = shufflevector <2 x i64> %broadcast.splatinsert10337, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10339

vector.body10339:                                 ; preds = %vector.body10339, %vector.ph10333
  %index10340 = phi i64 [ 0, %vector.ph10333 ], [ %index.next10345, %vector.body10339 ] ; 2 uses
  %i.fgn = sub i64 %i.ffv, %index10340            ; 3 uses
  %i.fgo = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fgn ; 2 uses
  %i.fgp = getelementptr inbounds i8, ptr %i.fgo, i64 -8
  %i.fgq = getelementptr inbounds i8, ptr %i.fgo, i64 -24
  %wide.load10341 = load <2 x i64>, ptr %i.fgp, align 8, !tbaa !91
  %wide.load10342 = load <2 x i64>, ptr %i.fgq, align 8, !tbaa !91
  %i.fgr = shl <2 x i64> %wide.load10341, %broadcast.splat10338
  %i.fgs = shl <2 x i64> %wide.load10342, %broadcast.splat10338
  %i.fgt = getelementptr [8 x i8], ptr %6, i64 %i.fgn ; 2 uses
  %i.fgu = getelementptr i8, ptr %i.fgt, i64 -8
  %i.fgv = getelementptr i8, ptr %i.fgt, i64 -24
  %wide.load10343 = load <2 x i64>, ptr %i.fgu, align 8, !tbaa !91
  %wide.load10344 = load <2 x i64>, ptr %i.fgv, align 8, !tbaa !91
  %i.fgw = lshr <2 x i64> %wide.load10343, %broadcast.splat10336
  %i.fgx = lshr <2 x i64> %wide.load10344, %broadcast.splat10336
  %i.fgy = or <2 x i64> %i.fgw, %i.fgr
  %i.fgz = or <2 x i64> %i.fgx, %i.fgs
  %i.fha = trunc nuw i64 %i.fgn to i32
  %i.fhb = add i32 %i.fdg, %i.fha
  %i.fhc = zext i32 %i.fhb to i64
  %i.fhd = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fhc ; 2 uses
  %i.fhe = getelementptr inbounds i8, ptr %i.fhd, i64 -8
  %i.fhf = getelementptr inbounds i8, ptr %i.fhd, i64 -24
  store <2 x i64> %i.fgy, ptr %i.fhe, align 8, !tbaa !91
  store <2 x i64> %i.fgz, ptr %i.fhf, align 8, !tbaa !91
  %index.next10345 = add nuw i64 %index10340, 4   ; 2 uses
  %i.fhg = icmp eq i64 %index.next10345, %n.vec10334
  br i1 %i.fhg, label %middle.block10346, label %vector.body10339, !llvm.loop !209

middle.block10346:                                ; preds = %vector.body10339
  %cmp.n10347 = icmp eq i64 %n.vec10334, %i.ffv
  br i1 %cmp.n10347, label %._crit_edge4866, label %scalar.ph10331.preheader

scalar.ph10331.preheader:                         ; preds = %vector.memcheck10327, %vector.scevcheck10326, %.lr.ph4865, %middle.block10346
  %indvars.iv6402.ph = phi i64 [ %i.ffv, %vector.memcheck10327 ], [ %i.ffv, %vector.scevcheck10326 ], [ %i.ffv, %.lr.ph4865 ], [ %i.fgm, %middle.block10346 ] ; 7 uses
  %xtraiter12237 = and i64 %indvars.iv6402.ph, 1
  %lcmp.mod12238.not = icmp eq i64 %xtraiter12237, 0
  br i1 %lcmp.mod12238.not, label %scalar.ph10331.prol.loopexit, label %scalar.ph10331.prol

scalar.ph10331.prol:                              ; preds = %scalar.ph10331.preheader
  %i.fhh = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6402.ph
  %i.fhi = load i64, ptr %i.fhh, align 8, !tbaa !91
  %i.fhj = shl i64 %i.fhi, %.pre6971
  %i.fhk = add nsw i64 %indvars.iv6402.ph, -1
  %i.fhl = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6402.ph
  %i.fhm = load i64, ptr %i.fhl, align 8, !tbaa !91
  %i.fhn = lshr i64 %i.fhm, %i.ffy
  %i.fho = or i64 %i.fhn, %i.fhj
  %i.fhp = trunc nuw i64 %indvars.iv6402.ph to i32
  %i.fhq = add i32 %i.fdg, %i.fhp
  %i.fhr = zext i32 %i.fhq to i64
  %i.fhs = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fhr
  store i64 %i.fho, ptr %i.fhs, align 8, !tbaa !91
  br label %scalar.ph10331.prol.loopexit

scalar.ph10331.prol.loopexit:                     ; preds = %scalar.ph10331.prol, %scalar.ph10331.preheader
  %indvars.iv6402.unr = phi i64 [ %indvars.iv6402.ph, %scalar.ph10331.preheader ], [ %i.fhk, %scalar.ph10331.prol ]
  %i.fht = icmp eq i64 %indvars.iv6402.ph, 1
  br i1 %i.fht, label %._crit_edge4866, label %scalar.ph10331

scalar.ph10331:                                   ; preds = %scalar.ph10331.prol.loopexit, %scalar.ph10331
  %indvars.iv6402 = phi i64 [ %i.fij, %scalar.ph10331 ], [ %indvars.iv6402.unr, %scalar.ph10331.prol.loopexit ] ; 6 uses
  %i.fhu = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %indvars.iv6402
  %i.fhv = load i64, ptr %i.fhu, align 8, !tbaa !91
  %i.fhw = shl i64 %i.fhv, %.pre6971
  %i.fhx = add nsw i64 %indvars.iv6402, -1        ; 2 uses
  %i.fhy = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6402
  %i.fhz = load i64, ptr %i.fhy, align 8, !tbaa !91
  %i.fia = lshr i64 %i.fhz, %i.ffy
  %i.fib = or i64 %i.fia, %i.fhw
  %i.fic = trunc nuw i64 %indvars.iv6402 to i32
  %i.fid = add i32 %i.fdg, %i.fic
  %i.fie = zext i32 %i.fid to i64
  %i.fif = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fie
  store i64 %i.fib, ptr %i.fif, align 8, !tbaa !91
  %i.fig = getelementptr [8 x i8], ptr %6, i64 %indvars.iv6402
  %i.fih = load i64, ptr %i.fig, align 8, !tbaa !91
  %i.fii = shl i64 %i.fih, %.pre6971
  %i.fij = add nsw i64 %indvars.iv6402, -2        ; 2 uses
  %i.fik = getelementptr [8 x i8], ptr %6, i64 %i.fhx
  %i.fil = load i64, ptr %i.fik, align 8, !tbaa !91
  %i.fim = lshr i64 %i.fil, %i.ffy
  %i.fin = or i64 %i.fim, %i.fii
  %i.fio = trunc nuw i64 %i.fhx to i32
  %i.fip = add i32 %i.fdg, %i.fio
  %i.fiq = zext i32 %i.fip to i64
  %i.fir = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fiq
  store i64 %i.fin, ptr %i.fir, align 8, !tbaa !91
  %.not.i1235.wide.1 = icmp eq i64 %i.fij, 0
  br i1 %.not.i1235.wide.1, label %._crit_edge4866, label %scalar.ph10331, !llvm.loop !210

._crit_edge4866:                                  ; preds = %scalar.ph10331.prol.loopexit, %scalar.ph10331, %middle.block10346, %bb.afn
  %i.fis = load i64, ptr %i.ewf, align 8, !tbaa !91
  %i.fit = shl i64 %i.fis, %.pre6971
  %i.fiu = zext nneg i32 %i.fdg to i64
  %i.fiv = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fiu
  store i64 %i.fit, ptr %i.fiv, align 8, !tbaa !91
  %i.fiw = add i32 %i.fdd, %i.fdg                 ; 2 uses
  %i.fix = zext i32 %i.fiw to i64
  %i.fiy = getelementptr inbounds nuw [8 x i8], ptr %i.ewf, i64 %i.fix
  %i.fiz = load i64, ptr %i.fiy, align 8, !tbaa !91
  %i.fja = icmp ne i64 %i.fiz, 0
  %i.fjb = zext i1 %i.fja to i32
  %i.fjc = add i32 %i.fiw, %i.fjb                 ; 2 uses
  %.not45.i4867 = icmp eq i32 %i.fdg, 0
  br i1 %.not45.i4867, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph4853.preheader

bb.afo:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.fjd = sub nsw i32 0, %.sroa.9.0.i491         ; 2 uses
  %i.fje = and i32 %i.fjd, 63                     ; 3 uses
  %i.fjf = lshr i32 %i.fjd, 6                     ; 16 uses
  %i.fjg = load i32, ptr %5, align 8, !tbaa !177  ; 12 uses
  %i.fjh = icmp eq i32 %i.fje, 0
  br i1 %i.fjh, label %.preheader4250, label %bb.afp, !prof !7

.preheader4250:                                   ; preds = %bb.afo
  %.not46.i12424854 = icmp eq i32 %i.fjg, 0
  br i1 %.not46.i12424854, label %._crit_edge4857, label %.lr.ph4856

.lr.ph4856:                                       ; preds = %.preheader4250
  %i.fji = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.fjj = add nsw i32 %i.fjf, -1                 ; 6 uses
  %i.fjk = zext i32 %i.fjg to i64                 ; 9 uses
  %min.iters.check10315 = icmp ult i32 %i.fjg, 30
  br i1 %min.iters.check10315, label %scalar.ph10314.preheader, label %vector.scevcheck10311

vector.scevcheck10311:                            ; preds = %.lr.ph4856
  %i.fjl = add nsw i64 %i.fjk, -1                 ; 2 uses
  %i.fjm = add i32 %i.fjg, %i.fjf
  %i.fjn = add i32 %i.fjm, -1
  %i.fjo = trunc i64 %i.fjl to i32
  %i.fjp = icmp ult i32 %i.fjn, %i.fjo
  %i.fjq = icmp ugt i64 %i.fjl, 4294967295
  %i.fjr = or i1 %i.fjp, %i.fjq
  br i1 %i.fjr, label %scalar.ph10314.preheader, label %vector.memcheck10312

vector.memcheck10312:                             ; preds = %vector.scevcheck10311
  %i.fjs = add i32 %i.fjg, %i.fjf
  %i.fjt = add i32 %i.fjs, -1
  %i.fju = zext i32 %i.fjt to i64
  %i.fjv = sub nsw i64 %i.fjk, %i.fju
  %i.fjw = shl nsw i64 %i.fjv, 3
  %i.fjx = add nsw i64 %i.fjw, -9
  %diff.check10313 = icmp ult i64 %i.fjx, 31
  br i1 %diff.check10313, label %scalar.ph10314.preheader, label %vector.ph10316

vector.ph10316:                                   ; preds = %vector.memcheck10312
  %n.vec10317 = and i64 %i.fjk, 4294967292        ; 2 uses
  %i.fjy = and i64 %i.fjk, 3
  br label %vector.body10318

vector.body10318:                                 ; preds = %vector.body10318, %vector.ph10316
  %index10319 = phi i64 [ 0, %vector.ph10316 ], [ %index.next10322, %vector.body10318 ] ; 2 uses
  %i.fjz = sub i64 %i.fjk, %index10319            ; 2 uses
  %i.fka = getelementptr [8 x i8], ptr %5, i64 %i.fjz ; 2 uses
  %i.fkb = getelementptr i8, ptr %i.fka, i64 -8
  %i.fkc = getelementptr i8, ptr %i.fka, i64 -24
  %wide.load10320 = load <2 x i64>, ptr %i.fkb, align 8, !tbaa !91
  %wide.load10321 = load <2 x i64>, ptr %i.fkc, align 8, !tbaa !91
  %i.fkd = trunc nuw i64 %i.fjz to i32
  %i.fke = add i32 %i.fjj, %i.fkd
  %i.fkf = zext i32 %i.fke to i64
  %i.fkg = getelementptr inbounds nuw [8 x i8], ptr %i.fji, i64 %i.fkf ; 2 uses
  %i.fkh = getelementptr inbounds i8, ptr %i.fkg, i64 -8
  %i.fki = getelementptr inbounds i8, ptr %i.fkg, i64 -24
  store <2 x i64> %wide.load10320, ptr %i.fkh, align 8, !tbaa !91
  store <2 x i64> %wide.load10321, ptr %i.fki, align 8, !tbaa !91
  %index.next10322 = add nuw i64 %index10319, 4   ; 2 uses
  %i.fkj = icmp eq i64 %index.next10322, %n.vec10317
  br i1 %i.fkj, label %middle.block10323, label %vector.body10318, !llvm.loop !211

middle.block10323:                                ; preds = %vector.body10318
  %cmp.n10324 = icmp eq i64 %n.vec10317, %i.fjk
  br i1 %cmp.n10324, label %._crit_edge4857, label %scalar.ph10314.preheader

scalar.ph10314.preheader:                         ; preds = %vector.memcheck10312, %vector.scevcheck10311, %.lr.ph4856, %middle.block10323
  %indvars.iv6397.ph = phi i64 [ %i.fjk, %vector.memcheck10312 ], [ %i.fjk, %vector.scevcheck10311 ], [ %i.fjk, %.lr.ph4856 ], [ %i.fjy, %middle.block10323 ] ; 4 uses
  %i.fkk = add nsw i64 %indvars.iv6397.ph, -1
  %xtraiter12235 = and i64 %indvars.iv6397.ph, 3  ; 2 uses
  %lcmp.mod12236.not = icmp eq i64 %xtraiter12235, 0
  br i1 %lcmp.mod12236.not, label %scalar.ph10314.prol.loopexit, label %scalar.ph10314.prol

scalar.ph10314.prol:                              ; preds = %scalar.ph10314.preheader, %scalar.ph10314.prol
  %indvars.iv6397.prol = phi i64 [ %i.fkl, %scalar.ph10314.prol ], [ %indvars.iv6397.ph, %scalar.ph10314.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph10314.prol ], [ 0, %scalar.ph10314.preheader ]
  %i.fkl = add nsw i64 %indvars.iv6397.prol, -1   ; 2 uses
  %i.fkm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6397.prol
  %i.fkn = load i64, ptr %i.fkm, align 8, !tbaa !91
  %i.fko = trunc nuw i64 %indvars.iv6397.prol to i32
  %i.fkp = add i32 %i.fjj, %i.fko
  %i.fkq = zext i32 %i.fkp to i64
  %i.fkr = getelementptr inbounds nuw [8 x i8], ptr %i.fji, i64 %i.fkq
  store i64 %i.fkn, ptr %i.fkr, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter12235
  br i1 %prol.iter.cmp.not, label %scalar.ph10314.prol.loopexit, label %scalar.ph10314.prol, !llvm.loop !212

scalar.ph10314.prol.loopexit:                     ; preds = %scalar.ph10314.prol, %scalar.ph10314.preheader
  %indvars.iv6397.unr = phi i64 [ %indvars.iv6397.ph, %scalar.ph10314.preheader ], [ %i.fkl, %scalar.ph10314.prol ]
  %i.fks = icmp ult i64 %i.fkk, 3
  br i1 %i.fks, label %._crit_edge4857, label %scalar.ph10314

scalar.ph10314:                                   ; preds = %scalar.ph10314.prol.loopexit, %scalar.ph10314
  %indvars.iv6397 = phi i64 [ %i.flo, %scalar.ph10314 ], [ %indvars.iv6397.unr, %scalar.ph10314.prol.loopexit ] ; 6 uses
  %i.fkt = add nsw i64 %indvars.iv6397, -1        ; 2 uses
  %i.fku = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6397
  %i.fkv = load i64, ptr %i.fku, align 8, !tbaa !91
  %i.fkw = trunc nuw i64 %indvars.iv6397 to i32
  %i.fkx = add i32 %i.fjj, %i.fkw
  %i.fky = zext i32 %i.fkx to i64
  %i.fkz = getelementptr inbounds nuw [8 x i8], ptr %i.fji, i64 %i.fky
  store i64 %i.fkv, ptr %i.fkz, align 8, !tbaa !91
  %i.fla = add nsw i64 %indvars.iv6397, -2        ; 2 uses
  %i.flb = getelementptr [8 x i8], ptr %5, i64 %i.fkt
  %i.flc = load i64, ptr %i.flb, align 8, !tbaa !91
  %i.fld = trunc nuw i64 %i.fkt to i32
  %i.fle = add i32 %i.fjj, %i.fld
  %i.flf = zext i32 %i.fle to i64
  %i.flg = getelementptr inbounds nuw [8 x i8], ptr %i.fji, i64 %i.flf
  store i64 %i.flc, ptr %i.flg, align 8, !tbaa !91
  %i.flh = add nsw i64 %indvars.iv6397, -3        ; 2 uses
  %i.fli = getelementptr [8 x i8], ptr %5, i64 %i.fla
  %i.flj = load i64, ptr %i.fli, align 8, !tbaa !91
  %i.flk = trunc nuw i64 %i.fla to i32
  %i.fll = add i32 %i.fjj, %i.flk
  %i.flm = zext i32 %i.fll to i64
  %i.fln = getelementptr inbounds nuw [8 x i8], ptr %i.fji, i64 %i.flm
  store i64 %i.flj, ptr %i.fln, align 8, !tbaa !91
  %i.flo = add nsw i64 %indvars.iv6397, -4        ; 2 uses
  %i.flp = getelementptr [8 x i8], ptr %5, i64 %i.flh
  %i.flq = load i64, ptr %i.flp, align 8, !tbaa !91
  %i.flr = trunc nuw i64 %i.flh to i32
  %i.fls = add i32 %i.fjj, %i.flr
  %i.flt = zext i32 %i.fls to i64
  %i.flu = getelementptr inbounds nuw [8 x i8], ptr %i.fji, i64 %i.flt
  store i64 %i.flq, ptr %i.flu, align 8, !tbaa !91
  %.not46.i1242.wide.3 = icmp eq i64 %i.flo, 0
  br i1 %.not46.i1242.wide.3, label %._crit_edge4857, label %scalar.ph10314, !llvm.loop !213

._crit_edge4857:                                  ; preds = %scalar.ph10314.prol.loopexit, %scalar.ph10314, %middle.block10323, %.preheader4250
  %i.flv = add i32 %i.fjg, %i.fjf
  store i32 %i.flv, ptr %5, align 8, !tbaa !177
  %.not47.i12444858 = icmp eq i32 %i.fjf, 0
  br i1 %.not47.i12444858, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph4861

.lr.ph4861:                                       ; preds = %._crit_edge4857
  %i.flw = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph4853.preheader

bb.afp:                                           ; preds = %bb.afo
  %i.flx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.fly = zext i32 %i.fjg to i64                 ; 10 uses
  %i.flz = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fly
  store i64 0, ptr %i.flz, align 8, !tbaa !91
  %.not.i12384845 = icmp eq i32 %i.fjg, 0
  %.pre6973 = zext nneg i32 %i.fje to i64         ; 5 uses
  br i1 %.not.i12384845, label %._crit_edge4849, label %.lr.ph4848

.lr.ph4848:                                       ; preds = %bb.afp
  %i.fma = sub nuw nsw i32 64, %i.fje
  %i.fmb = zext nneg i32 %i.fma to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.fjg, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph4848
  %i.fmc = add nsw i64 %i.fly, -1                 ; 2 uses
  %i.fmd = add i32 %i.fjg, %i.fjf
  %i.fme = trunc i64 %i.fmc to i32
  %i.fmf = icmp ult i32 %i.fmd, %i.fme
  %i.fmg = icmp ugt i64 %i.fmc, 4294967295
  %i.fmh = or i1 %i.fmf, %i.fmg
  br i1 %i.fmh, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.fmi = shl nuw nsw i64 %i.fly, 3              ; 2 uses
  %i.fmj = add i32 %i.fjg, %i.fjf
  %i.fmk = zext i32 %i.fmj to i64
  %i.fml = shl nuw nsw i64 %i.fmk, 3              ; 2 uses
  %i.fmm = sub nsw i64 %i.fml, %i.fmi
  %diff.check = icmp ugt i64 %i.fmm, -32
  %i.fmn = sub nsw i64 %i.fmi, %i.fml
  %i.fmo = add nsw i64 %i.fmn, -9
  %diff.check10305 = icmp ult i64 %i.fmo, 31
  %conflict.rdx = or i1 %diff.check, %diff.check10305
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fly, 4294967292             ; 2 uses
  %i.fmp = and i64 %i.fly, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.fmb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10306 = insertelement <2 x i64> poison, i64 %.pre6973, i64 0
  %broadcast.splat10307 = shufflevector <2 x i64> %broadcast.splatinsert10306, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fmq = sub i64 %i.fly, %index                 ; 3 uses
  %i.fmr = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fmq ; 2 uses
  %i.fms = getelementptr inbounds i8, ptr %i.fmr, i64 -8
  %i.fmt = getelementptr inbounds i8, ptr %i.fmr, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fms, align 8, !tbaa !91
  %wide.load10308 = load <2 x i64>, ptr %i.fmt, align 8, !tbaa !91
  %i.fmu = shl <2 x i64> %wide.load, %broadcast.splat10307
  %i.fmv = shl <2 x i64> %wide.load10308, %broadcast.splat10307
  %i.fmw = getelementptr [8 x i8], ptr %5, i64 %i.fmq ; 2 uses
  %i.fmx = getelementptr i8, ptr %i.fmw, i64 -8
  %i.fmy = getelementptr i8, ptr %i.fmw, i64 -24
  %wide.load10309 = load <2 x i64>, ptr %i.fmx, align 8, !tbaa !91
  %wide.load10310 = load <2 x i64>, ptr %i.fmy, align 8, !tbaa !91
  %i.fmz = lshr <2 x i64> %wide.load10309, %broadcast.splat
  %i.fna = lshr <2 x i64> %wide.load10310, %broadcast.splat
  %i.fnb = or <2 x i64> %i.fmz, %i.fmu
  %i.fnc = or <2 x i64> %i.fna, %i.fmv
  %i.fnd = trunc nuw i64 %i.fmq to i32
  %i.fne = add i32 %i.fjf, %i.fnd
  %i.fnf = zext i32 %i.fne to i64
  %i.fng = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fnf ; 2 uses
  %i.fnh = getelementptr inbounds i8, ptr %i.fng, i64 -8
  %i.fni = getelementptr inbounds i8, ptr %i.fng, i64 -24
  store <2 x i64> %i.fnb, ptr %i.fnh, align 8, !tbaa !91
  store <2 x i64> %i.fnc, ptr %i.fni, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fnj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fnj, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.fly
  br i1 %cmp.n, label %._crit_edge4849, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph4848, %middle.block
  %indvars.iv6392.ph = phi i64 [ %i.fly, %vector.memcheck ], [ %i.fly, %vector.scevcheck ], [ %i.fly, %.lr.ph4848 ], [ %i.fmp, %middle.block ] ; 7 uses
  %xtraiter12233 = and i64 %indvars.iv6392.ph, 1
  %lcmp.mod12234.not = icmp eq i64 %xtraiter12233, 0
  br i1 %lcmp.mod12234.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fnk = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %indvars.iv6392.ph
  %i.fnl = load i64, ptr %i.fnk, align 8, !tbaa !91
  %i.fnm = shl i64 %i.fnl, %.pre6973
  %i.fnn = add nsw i64 %indvars.iv6392.ph, -1
  %i.fno = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6392.ph
  %i.fnp = load i64, ptr %i.fno, align 8, !tbaa !91
  %i.fnq = lshr i64 %i.fnp, %i.fmb
  %i.fnr = or i64 %i.fnq, %i.fnm
  %i.fns = trunc nuw i64 %indvars.iv6392.ph to i32
  %i.fnt = add i32 %i.fjf, %i.fns
  %i.fnu = zext i32 %i.fnt to i64
  %i.fnv = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fnu
  store i64 %i.fnr, ptr %i.fnv, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv6392.unr = phi i64 [ %indvars.iv6392.ph, %scalar.ph.preheader ], [ %i.fnn, %scalar.ph.prol ]
  %i.fnw = icmp eq i64 %indvars.iv6392.ph, 1
  br i1 %i.fnw, label %._crit_edge4849, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv6392 = phi i64 [ %i.fom, %scalar.ph ], [ %indvars.iv6392.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fnx = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %indvars.iv6392
  %i.fny = load i64, ptr %i.fnx, align 8, !tbaa !91
  %i.fnz = shl i64 %i.fny, %.pre6973
  %i.foa = add nsw i64 %indvars.iv6392, -1        ; 2 uses
  %i.fob = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6392
  %i.foc = load i64, ptr %i.fob, align 8, !tbaa !91
  %i.fod = lshr i64 %i.foc, %i.fmb
  %i.foe = or i64 %i.fod, %i.fnz
  %i.fof = trunc nuw i64 %indvars.iv6392 to i32
  %i.fog = add i32 %i.fjf, %i.fof
  %i.foh = zext i32 %i.fog to i64
  %i.foi = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.foh
  store i64 %i.foe, ptr %i.foi, align 8, !tbaa !91
  %i.foj = getelementptr [8 x i8], ptr %5, i64 %indvars.iv6392
  %i.fok = load i64, ptr %i.foj, align 8, !tbaa !91
  %i.fol = shl i64 %i.fok, %.pre6973
  %i.fom = add nsw i64 %indvars.iv6392, -2        ; 2 uses
  %i.fon = getelementptr [8 x i8], ptr %5, i64 %i.foa
  %i.foo = load i64, ptr %i.fon, align 8, !tbaa !91
  %i.fop = lshr i64 %i.foo, %i.fmb
  %i.foq = or i64 %i.fop, %i.fol
  %i.for = trunc nuw i64 %i.foa to i32
  %i.fos = add i32 %i.fjf, %i.for
  %i.fot = zext i32 %i.fos to i64
  %i.fou = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fot
  store i64 %i.foq, ptr %i.fou, align 8, !tbaa !91
  %.not.i1238.wide.1 = icmp eq i64 %i.fom, 0
  br i1 %.not.i1238.wide.1, label %._crit_edge4849, label %scalar.ph, !llvm.loop !215

._crit_edge4849:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.afp
  %i.fov = load i64, ptr %i.flx, align 8, !tbaa !91
  %i.fow = shl i64 %i.fov, %.pre6973
  %i.fox = zext nneg i32 %i.fjf to i64
  %i.foy = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fox
  store i64 %i.fow, ptr %i.foy, align 8, !tbaa !91
  %i.foz = add i32 %i.fjg, %i.fjf                 ; 2 uses
  %i.fpa = zext i32 %i.foz to i64
  %i.fpb = getelementptr inbounds nuw [8 x i8], ptr %i.flx, i64 %i.fpa
  %i.fpc = load i64, ptr %i.fpb, align 8, !tbaa !91
  %i.fpd = icmp ne i64 %i.fpc, 0
  %i.fpe = zext i1 %i.fpd to i32
  %i.fpf = add i32 %i.foz, %i.fpe
  store i32 %i.fpf, ptr %5, align 8, !tbaa !177
  %.not45.i12404850 = icmp eq i32 %i.fjf, 0
  br i1 %.not45.i12404850, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph4853.preheader

.lr.ph4853.preheader:                             ; preds = %._crit_edge4849, %._crit_edge4866, %.lr.ph4878.preheader, %.lr.ph4861
  %.sink8549 = phi i32 [ %i.fdg, %._crit_edge4866 ], [ %i.fjf, %.lr.ph4861 ], [ %i.fdg, %.lr.ph4878.preheader ], [ %i.fjf, %._crit_edge4849 ]
  %.sink8544 = phi ptr [ %i.ewf, %._crit_edge4866 ], [ %i.flw, %.lr.ph4861 ], [ %i.ewf, %.lr.ph4878.preheader ], [ %i.flx, %._crit_edge4849 ]
  %.ph8543 = phi i32 [ %i.fjc, %._crit_edge4866 ], [ %i.fdd, %.lr.ph4861 ], [ %i.ffu, %.lr.ph4878.preheader ], [ %i.fdd, %._crit_edge4849 ]
  %19 = add nsw i32 %.sink8549, -1
  %i.fpg = zext i32 %19 to i64
  %20 = shl nuw nsw i64 %i.fpg, 3
  %21 = add nuw nsw i64 %20, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink8544, i8 0, i64 %21, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit: ; preds = %.lr.ph4853.preheader, %._crit_edge4849, %._crit_edge4857, %._crit_edge4866
  %22 = phi i32 [ %i.fjc, %._crit_edge4866 ], [ %i.fdd, %._crit_edge4849 ], [ %i.fdd, %._crit_edge4857 ], [ %.ph8543, %.lr.ph4853.preheader ] ; 2 uses
  %i.fph = load i32, ptr %5, align 8, !tbaa !177  ; 4 uses
  %i.fpi = icmp ult i32 %i.fph, %22
  br i1 %i.fpi, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %bb.afq

bb.afq:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit
  %i.fpj = icmp ugt i32 %i.fph, %22
  br i1 %i.fpj, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %.preheader4246

.preheader4246:                                   ; preds = %bb.afq
  %.not.i130010221 = icmp eq i32 %i.fph, 0
  br i1 %.not.i130010221, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3370, label %.lr.ph10224

.lr.ph10224:                                      ; preds = %.preheader4246
  %i.fpk = zext i32 %i.fph to i64
  br label %bb.afs

bb.afr:                                           ; preds = %bb.afs
  %i.fpl = add nsw i64 %indvars.iv641010222, -1   ; 2 uses
  %.not.i1300 = icmp eq i64 %i.fpl, 0
  br i1 %.not.i1300, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3370, label %bb.afs, !llvm.loop !191

bb.afs:                                           ; preds = %.lr.ph10224, %bb.afr
  %.016.i10223 = phi i32 [ undef, %.lr.ph10224 ], [ %.1.i1302, %bb.afr ]
  %indvars.iv641010222 = phi i64 [ %i.fpk, %.lr.ph10224 ], [ %i.fpl, %bb.afr ] ; 3 uses
  %i.fpm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv641010222
  %i.fpn = load i64, ptr %i.fpm, align 8, !tbaa !91 ; 3 uses
  %i.fpo = getelementptr [8 x i8], ptr %6, i64 %indvars.iv641010222
  %i.fpp = load i64, ptr %i.fpo, align 8, !tbaa !91 ; 3 uses
  %.not3931 = icmp ult i64 %i.fpn, %i.fpp
  %.not3932 = icmp ugt i64 %i.fpn, %i.fpp
  %..016.i = select i1 %.not3932, i32 1, i32 %.016.i10223
  %.1.i1302 = select i1 %.not3931, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.fpn, %i.fpp
  br i1 %cond.i, label %bb.afr, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit: ; preds = %bb.afs
  %.not680.i493 = icmp eq i32 %.1.i1302, 0
  br i1 %.not680.i493, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3370, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, %bb.afq, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %.2.i13033369 = phi i32 [ %.1.i1302, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit ], [ 1, %bb.afq ]
  %i.fpq = icmp sgt i32 %.2.i13033369, 0
  %i.fpr = zext i1 %i.fpq to i64
  br label %bb.aft

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3370: ; preds = %bb.afr, %.preheader4246, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %i.fps = and i64 %.0.i1204.ph, 1
  br label %bb.aft

bb.aft:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3370, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread
  %.pn.i494 = phi i64 [ %i.fpr, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread ], [ %i.fps, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread3370 ]
  %.0601.i495 = add nuw nsw i64 %.pn.i494, %.0.i1204.ph ; 2 uses
  %i.fpt = icmp eq i64 %.0601.i495, 9218868437227405312
  br i1 %i.fpt, label %bb.afu, label %bb.agb, !prof !7

bb.afu:                                           ; preds = %bb.aft
  br i1 %.not3885, label %bb.afy, label %bb.afv, !prof !24

bb.afv:                                           ; preds = %bb.afu
  %i.fpu = load ptr, ptr %i.j, align 8, !tbaa !92 ; 2 uses
  %.not681.i497 = icmp eq ptr %i.fpu, null
  br i1 %.not681.i497, label %bb.afx, label %bb.afw

bb.afw:                                           ; preds = %bb.afv
  store i8 0, ptr %i.fpu, align 1, !tbaa !81
  br label %bb.afx

bb.afx:                                           ; preds = %bb.afw, %bb.afv
  %i.fpv = ptrtoint ptr %.73219 to i64
  %i.fpw = ptrtoint ptr %i.dsg to i64
  %i.fpx = sub i64 %i.fpv, %i.fpw
  %i.fpy = shl i64 %i.fpx, 8
  %i.fpz = or disjoint i64 %i.fpy, 1
  store i64 %i.fpz, ptr %i.dsl, align 8, !tbaa !79
  %i.fqa = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store ptr %i.dsg, ptr %i.fqa, align 8, !tbaa !81
  store ptr %.73219, ptr %i.j, align 8, !tbaa !92
  br label %.split3399

bb.afy:                                           ; preds = %bb.afu
  br i1 %.not3882, label %bb.aga, label %bb.afz, !prof !24

bb.afz:                                           ; preds = %bb.afy
  store i64 20, ptr %i.dsl, align 8, !tbaa !79
  %i.fqb = select i1 %i.dsp, i64 -4503599627370496, i64 9218868437227405312
  %i.fqc = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store i64 %i.fqb, ptr %i.fqc, align 8, !tbaa !81
  br label %.split3399

bb.aga:                                           ; preds = %bb.afy
  store ptr @.str.82, ptr %i.i, align 8, !tbaa !92
  store ptr %i.dsg, ptr %i.h, align 8, !tbaa !92
  br label %.split3399.thread

bb.agb:                                           ; preds = %bb.aft
  store i64 20, ptr %i.dsl, align 8, !tbaa !79
  %i.fqd = select i1 %i.dsp, i64 -9223372036854775808, i64 0
  %i.fqe = or disjoint i64 %.0601.i495, %i.fqd
  %i.fqf = getelementptr inbounds nuw i8, ptr %.23472.i, i64 24
  store i64 %i.fqe, ptr %i.fqf, align 8, !tbaa !81
  br label %.split3399

.split3399.thread:                                ; preds = %bb.aeu, %bb.aga
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.aik

.split3399:                                       ; preds = %bb.agb, %bb.afz, %bb.afx, %bb.aew, %bb.aet, %bb.aer
  store ptr %.73219, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.preheader4232

.preheader4232:                                   ; preds = %bb.ahe, %bb.ahf, %bb.ahn, %bb.ahm, %bb.ago, %bb.agn, %bb.po, %bb.aib, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798, %.split3374, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849, %.split3390, %.split3385, %.split3384, %.split3383, %.split3389, %.split3391, %.split3392, %.split3394, %.split3396, %.split3375, %.split3376, %.split3377, %.split3378, %.split3379, %.split3380, %.split3381, %.split3382, %.split3388, %.split3387, %.split3386, %.split3395, %.split3393, %.split3397, %.split3398, %.split3399
  %.15551.i.ph = phi i64 [ %.14550.i, %.split3398 ], [ %.14550.i, %.split3397 ], [ %.14550.i, %.split3396 ], [ %.14550.i, %.split3395 ], [ %.14550.i, %.split3394 ], [ %.14550.i, %.split3393 ], [ %.14550.i, %.split3392 ], [ %.14550.i, %.split3391 ], [ %.14550.i, %.split3390 ], [ %.14550.i, %.split3389 ], [ %.14550.i, %.split3388 ], [ %.14550.i, %.split3387 ], [ %.14550.i, %.split3386 ], [ %.14550.i, %.split3385 ], [ %.14550.i, %.split3384 ], [ %.14550.i, %.split3383 ], [ %.14550.i, %.split3382 ], [ %.14550.i, %.split3381 ], [ %.14550.i, %.split3380 ], [ %.14550.i, %.split3379 ], [ %.14550.i, %.split3378 ], [ %.14550.i, %.split3377 ], [ %.14550.i, %.split3376 ], [ %.14550.i, %.split3375 ], [ %.14550.i, %.split3374 ], [ %.14550.i, %bb.ago ], [ %.14550.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798 ], [ %.14550.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849 ], [ %.14550.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846 ], [ %.14550.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843 ], [ %.14550.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563 ], [ %.14550.i, %.split3399 ], [ %.10546.i, %bb.po ], [ %.16552.i, %bb.aib ], [ %.14550.i, %bb.agn ], [ %.14550.i, %bb.ahm ], [ %.14550.i, %bb.ahn ], [ %.14550.i, %bb.ahf ], [ %.14550.i, %bb.ahe ] ; 3 uses
  %.6534.i.ph = phi i64 [ %i.dsm, %.split3398 ], [ %i.dsm, %.split3397 ], [ %i.dsm, %.split3396 ], [ %i.dsm, %.split3395 ], [ %i.dsm, %.split3394 ], [ %i.dsm, %.split3393 ], [ %i.dsm, %.split3392 ], [ %i.dsm, %.split3391 ], [ %i.dsm, %.split3390 ], [ %i.dsm, %.split3389 ], [ %i.dsm, %.split3388 ], [ %i.dsm, %.split3387 ], [ %i.dsm, %.split3386 ], [ %i.dsm, %.split3385 ], [ %i.dsm, %.split3384 ], [ %i.dsm, %.split3383 ], [ %i.dsm, %.split3382 ], [ %i.dsm, %.split3381 ], [ %i.dsm, %.split3380 ], [ %i.dsm, %.split3379 ], [ %i.dsm, %.split3378 ], [ %i.dsm, %.split3377 ], [ %i.dsm, %.split3376 ], [ %i.dsm, %.split3375 ], [ %i.dsm, %.split3374 ], [ %i.fqt, %bb.ago ], [ %i.daf, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798 ], [ %i.fqt, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849 ], [ %i.fqp, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846 ], [ %i.fqk, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843 ], [ %i.dsm, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563 ], [ %i.dsm, %.split3399 ], [ %i.ccq, %bb.po ], [ %i.fuf, %bb.aib ], [ %i.fqt, %bb.agn ], [ %i.fro, %bb.ahm ], [ %i.fro, %bb.ahn ], [ %i.fro, %bb.ahf ], [ %i.fro, %bb.ahe ] ; 3 uses
  %.24525.i.ph = phi ptr [ %.23524.i, %.split3398 ], [ %.23524.i, %.split3397 ], [ %.23524.i, %.split3396 ], [ %.23524.i, %.split3395 ], [ %.23524.i, %.split3394 ], [ %.23524.i, %.split3393 ], [ %.23524.i, %.split3392 ], [ %.23524.i, %.split3391 ], [ %.23524.i, %.split3390 ], [ %.23524.i, %.split3389 ], [ %.23524.i, %.split3388 ], [ %.23524.i, %.split3387 ], [ %.23524.i, %.split3386 ], [ %.23524.i, %.split3385 ], [ %.23524.i, %.split3384 ], [ %.23524.i, %.split3383 ], [ %.23524.i, %.split3382 ], [ %.23524.i, %.split3381 ], [ %.23524.i, %.split3380 ], [ %.23524.i, %.split3379 ], [ %.23524.i, %.split3378 ], [ %.23524.i, %.split3377 ], [ %.23524.i, %.split3376 ], [ %.23524.i, %.split3375 ], [ %.23524.i, %.split3374 ], [ %.23524.i, %bb.ago ], [ %.23524.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798 ], [ %.23524.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849 ], [ %.23524.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846 ], [ %.23524.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843 ], [ %.23524.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563 ], [ %.23524.i, %.split3399 ], [ %.17518.i, %bb.po ], [ %.25526.i, %bb.aib ], [ %.23524.i, %bb.agn ], [ %.23524.i, %bb.ahm ], [ %.23524.i, %bb.ahn ], [ %.23524.i, %bb.ahf ], [ %.23524.i, %bb.ahe ] ; 6 uses
  %.24499.i.ph = phi ptr [ %.23498.i, %.split3398 ], [ %.23498.i, %.split3397 ], [ %.23498.i, %.split3396 ], [ %.23498.i, %.split3395 ], [ %.23498.i, %.split3394 ], [ %.23498.i, %.split3393 ], [ %.23498.i, %.split3392 ], [ %.23498.i, %.split3391 ], [ %.23498.i, %.split3390 ], [ %.23498.i, %.split3389 ], [ %.23498.i, %.split3388 ], [ %.23498.i, %.split3387 ], [ %.23498.i, %.split3386 ], [ %.23498.i, %.split3385 ], [ %.23498.i, %.split3384 ], [ %.23498.i, %.split3383 ], [ %.23498.i, %.split3382 ], [ %.23498.i, %.split3381 ], [ %.23498.i, %.split3380 ], [ %.23498.i, %.split3379 ], [ %.23498.i, %.split3378 ], [ %.23498.i, %.split3377 ], [ %.23498.i, %.split3376 ], [ %.23498.i, %.split3375 ], [ %.23498.i, %.split3374 ], [ %.23498.i, %bb.ago ], [ %.23498.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798 ], [ %.23498.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849 ], [ %.23498.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846 ], [ %.23498.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843 ], [ %.23498.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563 ], [ %.23498.i, %.split3399 ], [ %.17492.i, %bb.po ], [ %.25500.i, %bb.aib ], [ %.23498.i, %bb.agn ], [ %.23498.i, %bb.ahm ], [ %.23498.i, %bb.ahn ], [ %.23498.i, %bb.ahf ], [ %.23498.i, %bb.ahe ] ; 3 uses
  %.24473.i.ph = phi ptr [ %i.dsl, %.split3398 ], [ %i.dsl, %.split3397 ], [ %i.dsl, %.split3396 ], [ %i.dsl, %.split3395 ], [ %i.dsl, %.split3394 ], [ %i.dsl, %.split3393 ], [ %i.dsl, %.split3392 ], [ %i.dsl, %.split3391 ], [ %i.dsl, %.split3390 ], [ %i.dsl, %.split3389 ], [ %i.dsl, %.split3388 ], [ %i.dsl, %.split3387 ], [ %i.dsl, %.split3386 ], [ %i.dsl, %.split3385 ], [ %i.dsl, %.split3384 ], [ %i.dsl, %.split3383 ], [ %i.dsl, %.split3382 ], [ %i.dsl, %.split3381 ], [ %i.dsl, %.split3380 ], [ %i.dsl, %.split3379 ], [ %i.dsl, %.split3378 ], [ %i.dsl, %.split3377 ], [ %i.dsl, %.split3376 ], [ %i.dsl, %.split3375 ], [ %i.dsl, %.split3374 ], [ %i.fqs, %bb.ago ], [ %i.dae, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798 ], [ %i.fqs, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849 ], [ %i.fqq, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846 ], [ %i.fql, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843 ], [ %i.dsl, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563 ], [ %i.dsl, %.split3399 ], [ %.17466.i, %bb.po ], [ %.25474.i, %bb.aib ], [ %i.fqs, %bb.agn ], [ %i.frn, %bb.ahm ], [ %i.frn, %bb.ahn ], [ %i.frn, %bb.ahf ], [ %i.frn, %bb.ahe ] ; 3 uses
  %.24.i.ph = phi ptr [ %.23.i, %.split3398 ], [ %.23.i, %.split3397 ], [ %.23.i, %.split3396 ], [ %.23.i, %.split3395 ], [ %.23.i, %.split3394 ], [ %.23.i, %.split3393 ], [ %.23.i, %.split3392 ], [ %.23.i, %.split3391 ], [ %.23.i, %.split3390 ], [ %.23.i, %.split3389 ], [ %.23.i, %.split3388 ], [ %.23.i, %.split3387 ], [ %.23.i, %.split3386 ], [ %.23.i, %.split3385 ], [ %.23.i, %.split3384 ], [ %.23.i, %.split3383 ], [ %.23.i, %.split3382 ], [ %.23.i, %.split3381 ], [ %.23.i, %.split3380 ], [ %.23.i, %.split3379 ], [ %.23.i, %.split3378 ], [ %.23.i, %.split3377 ], [ %.23.i, %.split3376 ], [ %.23.i, %.split3375 ], [ %.23.i, %.split3374 ], [ %.23.i, %bb.ago ], [ %.23.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit798 ], [ %.23.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849 ], [ %.23.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846 ], [ %.23.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843 ], [ %.23.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563 ], [ %.23.i, %.split3399 ], [ %i.cch, %bb.po ], [ %i.ftw, %bb.aib ], [ %.23.i, %bb.agn ], [ %.23.i, %bb.ahm ], [ %.23.i, %bb.ahn ], [ %.23.i, %bb.ahf ], [ %.23.i, %bb.ahe ] ; 3 uses
  %i.fqg = load ptr, ptr %i.h, align 8, !tbaa !92 ; 3 uses
  %.sroa.01.0.copyload.i6084995 = load i16, ptr %i.fqg, align 1 ; 2 uses
  %i.fqh = icmp eq i16 %.sroa.01.0.copyload.i6084995, 2604
  br i1 %i.fqh, label %._crit_edge4997, label %.lr.ph4996

.lr.ph4996:                                       ; preds = %.preheader4232
  %i.fqi = and i32 %2, 8
  %.not4074 = icmp eq i32 %i.fqi, 0
  br label %bb.ahr

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit, %bb.yb, %bb.adf, %bb.ado, %bb.adz, %bb.acy, %bb.adb, %bb.yf, %bb.yh, %bb.acp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.aik

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit563: ; preds = %bb.xw, %bb.xv, %bb.xn, %bb.xo, %bb.xy, %bb.zq, %bb.zt, %bb.zw, %bb.zz, %bb.aac, %bb.adh, %bb.adl, %bb.adn, %bb.adr, %bb.adw, %bb.ady
  %.343246.ph.sink = phi ptr [ %.113223, %bb.ady ], [ %i.due, %bb.xy ], [ %i.dwx, %bb.zq ], [ %i.dxe, %bb.zt ], [ %i.dxl, %bb.zw ], [ %i.dxs, %bb.zz ], [ %i.dxz, %bb.aac ], [ %.103222.lcssa, %bb.adh ], [ %.103222.lcssa, %bb.adl ], [ %.103222.lcssa, %bb.adn ], [ %.113223, %bb.adr ], [ %.113223, %bb.adw ], [ %i.dty, %bb.xv ], [ %i.dty, %bb.xw ], [ %.0.i1179, %bb.xn ], [ %.0.i1179, %bb.xo ]
  store ptr %.343246.ph.sink, ptr %i.h, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.preheader4232

bb.agc:                                           ; preds = %bb.wx
  switch i8 %i.dsf, label %bb.agp [
    i8 123, label %.loopexit4222
    i8 91, label %.loopexit4223
    i8 116, label %bb.agd
    i8 102, label %bb.age
    i8 110, label %bb.agf
  ]

bb.agd:                                           ; preds = %bb.agc
  %.sroa.01.0.copyload.i1139 = load i32, ptr %i.dsg, align 1
  %i.fqj = icmp eq i32 %.sroa.01.0.copyload.i1139, 1702195828
  br i1 %i.fqj, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842.thread, !prof !24

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit843: ; preds = %bb.agd
  %i.fqk = add i64 %.5533.i.ph, 2
  %i.fql = getelementptr inbounds nuw i8, ptr %.23472.i, i64 16 ; 2 uses
  store i64 11, ptr %i.fql, align 8, !tbaa !79
  %i.fqm = getelementptr inbounds nuw i8, ptr %i.dsg, i64 4
  store ptr %i.fqm, ptr %i.h, align 8, !tbaa !92
  br label %.preheader4232

bb.age:                                           ; preds = %bb.agc
  %i.fqn = getelementptr inbounds nuw i8, ptr %i.dsg, i64 1
  %.sroa.01.0.copyload.i1135 = load i32, ptr %i.fqn, align 1
  %i.fqo = icmp eq i32 %.sroa.01.0.copyload.i1135, 1702063201
  br i1 %i.fqo, label %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842.thread, !prof !24

_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit846: ; preds = %bb.age
  %i.fqp = add i64 %.5533.i.ph, 2
  %i.fqq = getelementptr inbounds nuw i8, ptr %.23472.i, i64 16 ; 2 uses
  store i64 3, ptr %i.fqq, align 8, !tbaa !79
  %i.fqr = getelementptr inbounds nuw i8, ptr %i.dsg, i64 5
  store ptr %i.fqr, ptr %i.h, align 8, !tbaa !92
  br label %.preheader4232

bb.agf:                                           ; preds = %bb.agc
  %i.fqs = getelementptr inbounds nuw i8, ptr %.23472.i, i64 16 ; 6 uses
  %i.fqt = add i64 %.5533.i.ph, 2                 ; 3 uses
  %.sroa.01.0.copyload.i1131 = load i32, ptr %i.dsg, align 1 ; 4 uses
  %i.fqu = icmp eq i32 %.sroa.01.0.copyload.i1131, 1819047278
  %i.fqv = trunc i32 %.sroa.01.0.copyload.i1131 to i8
  %i.fqw = lshr i32 %.sroa.01.0.copyload.i1131, 8
  %i.fqx = trunc i32 %i.fqw to i8
  %i.fqy = lshr i32 %.sroa.01.0.copyload.i1131, 16
  %i.fqz = trunc i32 %i.fqy to i8
  br i1 %i.fqu, label %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849, label %bb.agg, !prof !24

_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit849: ; preds = %bb.agf
  store i64 2, ptr %i.fqs, align 8, !tbaa !79
  %i.fra = getelementptr inbounds nuw i8, ptr %i.dsg, i64 4
  store ptr %i.fra, ptr %i.h, align 8, !tbaa !92
  br label %.preheader4232

bb.agg:                                           ; preds = %bb.agf
  br i1 %.not3882, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842.thread, label %bb.agh, !prof !24

bb.agh:                                           ; preds = %bb.agg
  switch i8 %i.fqv, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit842.thread [
    i8 78, label %bb.agi
    i8 110, label %bb.agi
  ]

bb.agi:                                           ; preds = %bb.agh, %bb.agh
end_hunk_3
begin_hunk_4_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.split3461:                                       ; preds = %bb.aqj, %bb.aqh
  %.03128 = phi i64 [ %i.gza, %bb.aqh ], [ %i.gzq, %bb.aqj ] ; 2 uses
  %i.gzr = icmp sgt i64 %.03128, -1               ; 2 uses
  %.neg674.i = sext i1 %i.gzr to i32
  %i.gzs = zext i1 %i.gzr to i64
  %i.gzt = shl i64 %.03128, %i.gzs                ; 2 uses
  %i.gzu = and i64 %i.gzt, 1024
  %i.gzv = add i64 %i.gzu, %i.gzt                 ; 2 uses
  %i.gzw = icmp ult i64 %i.gzv, 1024
  %spec.select3585.v = select i1 %i.gzw, i32 65, i32 64
  %i.gzx = lshr i64 %i.gzv, 11
  %reass.sub5873 = sub nsw i32 %i.gys, %i.gyu
  %i.gzy = add nsw i32 %reass.sub5873, 1086
  %spec.select3585 = add nsw i32 %i.gzy, %.neg674.i
  %i.gzz = add nsw i32 %spec.select3585, %spec.select3585.v
  %i.haa = zext nneg i32 %i.gzz to i64
  %i.hab = shl nuw nsw i64 %i.haa, 52
  %i.hac = and i64 %i.gzx, 4503599627370495
  %i.had = or disjoint i64 %i.hab, %i.hac
  store i64 20, ptr %.5453.i, align 8, !tbaa !79
  %i.hae = select i1 %i.gab, i64 -9223372036854775808, i64 0
  %i.haf = or disjoint i64 %i.had, %i.hae
  %i.hag = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store i64 %i.haf, ptr %i.hag, align 8, !tbaa !81
  store ptr %.7, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4134

.critedge689.i:                                   ; preds = %..critedge689.i_crit_edge, %bb.aqi
  %.pre-phi6904 = phi i32 [ %.pre6903, %..critedge689.i_crit_edge ], [ %i.gyu, %bb.aqi ]
  %.pre-phi6902 = phi i128 [ %.pre6901, %..critedge689.i_crit_edge ], [ %i.gyw, %bb.aqi ]
  %.pre-phi6900 = phi i32 [ %.pre6899, %..critedge689.i_crit_edge ], [ %i.gys, %bb.aqi ]
  %.pre-phi6894 = phi i32 [ %.pre6893, %..critedge689.i_crit_edge ], [ %i.gyl, %bb.aqi ] ; 2 uses
  %.pre-phi6890 = phi i64 [ %.pre6889, %..critedge689.i_crit_edge ], [ %i.gyt, %bb.aqi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.hah = select i1 %i.gyh, i64 0, i64 4
  %i.hai = shl i64 %i.hah, %.pre-phi6890          ; 2 uses
  %i.haj = add i32 %.pre-phi6894, 686
  %i.hak = sext i32 %i.haj to i64
  %i.hal = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.hak
  %i.ham = load i64, ptr %i.hal, align 16, !tbaa !91
  %i.han = add i32 %.pre-phi6894, 687
  %i.hao = sext i32 %i.han to i64
  %i.hap = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.hao
  %i.haq = load i64, ptr %i.hap, align 8, !tbaa !91
  %i.har = lshr i64 %i.haq, 63
  %i.has = add i64 %i.har, %i.ham
  %i.hat = zext i64 %i.has to i128
  %i.hau = mul nuw i128 %.pre-phi6902, %i.hat     ; 2 uses
  %i.hav = lshr i128 %i.hau, 64
  %i.haw = trunc nuw i128 %i.hav to i64
  %i.hax = trunc i128 %i.hau to i64
  %i.hay = lshr i64 %i.hax, 63
  %i.haz = add nuw i64 %i.hay, %i.haw             ; 2 uses
  %.not677.i = icmp eq i64 %i.hai, 0
  %i.hba = select i1 %.not677.i, i64 8, i64 9
  %i.hbb = add i64 %i.hba, %i.hai
  %i.hbc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.haz, i1 true) ; 3 uses
  %i.hbd = trunc nuw nsw i64 %i.hbc to i32
  %i.hbe = shl i64 %i.haz, %i.hbc                 ; 3 uses
  %i.hbf = add nsw i32 %.pre-phi6900, 64
  %i.hbg = add nuw nsw i32 %.pre-phi6904, %i.hbd
  %i.hbh = sub nsw i32 %i.hbf, %i.hbg             ; 7 uses
  %i.hbi = shl i64 %i.hbb, %i.hbc                 ; 3 uses
  %i.hbj = icmp sgt i32 %i.hbh, -1086
  br i1 %i.hbj, label %.thread3426, label %bb.aqk, !prof !24

bb.aqk:                                           ; preds = %.critedge689.i
  %i.hbk = icmp samesign ult i32 %i.hbh, -1137
  br i1 %i.hbk, label %.thread3423, label %bb.aql

bb.aql:                                           ; preds = %bb.aqk
  %i.hbl = sub nuw nsw i32 -1074, %i.hbh          ; 2 uses
  %i.hbm = icmp samesign ult i32 %i.hbh, -1134
  br i1 %i.hbm, label %.thread3423, label %.thread3426, !prof !121

.thread3423:                                      ; preds = %bb.aqk, %bb.aql
  %.0603.i3425 = phi i32 [ %i.hbl, %bb.aql ], [ 64, %bb.aqk ]
  %i.hbn = add nsw i32 %.0603.i3425, -60          ; 2 uses
  %i.hbo = zext nneg i32 %i.hbn to i64            ; 2 uses
  %i.hbp = lshr i64 %i.hbe, %i.hbo
  %i.hbq = add nsw i32 %i.hbn, %i.hbh
  %i.hbr = lshr i64 %i.hbi, %i.hbo
  %i.hbs = add nuw i64 %i.hbr, 9
  br label %.thread3426

.thread3426:                                      ; preds = %.critedge689.i, %.thread3423, %bb.aql
  %.0604.i = phi i64 [ %i.hbs, %.thread3423 ], [ %i.hbi, %bb.aql ], [ %i.hbi, %.critedge689.i ] ; 2 uses
  %.0602.i = phi i32 [ 60, %.thread3423 ], [ %i.hbl, %bb.aql ], [ 11, %.critedge689.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.hbq, %.thread3423 ], [ %i.hbh, %bb.aql ], [ %i.hbh, %.critedge689.i ]
  %.sroa.029.0.i = phi i64 [ %i.hbp, %.thread3423 ], [ %i.hbe, %bb.aql ], [ %i.hbe, %.critedge689.i ] ; 2 uses
  %i.hbt = zext nneg i32 %.0602.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.hbt
  %i.hbu = xor i64 %notmask.i, -1
  %i.hbv = and i64 %.sroa.029.0.i, %i.hbu
  %i.hbw = shl nuw nsw i64 %i.hbv, 3              ; 2 uses
  %i.hbx = add nsw i32 %.0602.i, -1
  %i.hby = zext nneg i32 %i.hbx to i64
  %i.hbz = shl nuw nsw i64 8, %i.hby              ; 2 uses
  %i.hca = lshr i64 %.sroa.029.0.i, %i.hbt
  %i.hcb = add i64 %i.hbz, %.0604.i
  %i.hcc = icmp uge i64 %i.hbw, %i.hcb            ; 2 uses
  %i.hcd = zext i1 %i.hcc to i64
  %i.hce = add nuw nsw i64 %i.hca, %i.hcd         ; 3 uses
  %i.hcf = icmp eq i64 %i.hce, 0
  br i1 %i.hcf, label %bb.aqx, label %bb.aqm, !prof !7

bb.aqm:                                           ; preds = %.thread3426
  %i.hcg = add nsw i32 %.sroa.19.0.in.i, %.0602.i
  %i.hch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.hce, i1 true) ; 2 uses
  %i.hci = trunc nuw nsw i64 %i.hch to i32
  %i.hcj = shl i64 %i.hce, %i.hch
  %i.hck = lshr i64 %i.hcj, 11                    ; 2 uses
  %i.hcl = sub nsw i32 %i.hcg, %i.hci             ; 5 uses
  %i.hcm = icmp sgt i32 %i.hcl, 960
  br i1 %i.hcm, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1210, label %bb.aqn, !prof !7

bb.aqn:                                           ; preds = %bb.aqm
  %i.hcn = icmp sgt i32 %i.hcl, -1086
  br i1 %i.hcn, label %bb.aqo, label %bb.aqp, !prof !24

bb.aqo:                                           ; preds = %bb.aqn
  %i.hco = add nsw i32 %i.hcl, 1086
  %i.hcp = zext nneg i32 %i.hco to i64
  %i.hcq = shl nuw nsw i64 %i.hcp, 52
  %i.hcr = and i64 %i.hck, 4503599627370495
  %i.hcs = or disjoint i64 %i.hcq, %i.hcr
  br label %bb.aqx

bb.aqp:                                           ; preds = %bb.aqn
  %i.hct = icmp samesign ugt i32 %i.hcl, -1138
  br i1 %i.hct, label %bb.aqq, label %bb.aqx, !prof !24

bb.aqq:                                           ; preds = %bb.aqp
  %i.hcu = sub nuw nsw i32 -1085, %i.hcl
  %i.hcv = zext nneg i32 %i.hcu to i64
  %i.hcw = lshr i64 %i.hck, %i.hcv
  br label %bb.aqx

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1210: ; preds = %bb.aqm
  br i1 %.not3772, label %bb.aqu, label %bb.aqr, !prof !24

bb.aqr:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1210
  %i.hcx = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not682.i = icmp eq ptr %i.hcx, null
  br i1 %.not682.i, label %bb.aqt, label %bb.aqs

bb.aqs:                                           ; preds = %bb.aqr
  store i8 0, ptr %i.hcx, align 1, !tbaa !81
  br label %bb.aqt

bb.aqt:                                           ; preds = %bb.aqs, %bb.aqr
  %i.hcy = ptrtoint ptr %.7 to i64
  %i.hcz = ptrtoint ptr %i.fzw to i64
  %i.hda = sub i64 %i.hcy, %i.hcz
  %i.hdb = shl i64 %i.hda, 8
  %i.hdc = or disjoint i64 %i.hdb, 1
  store i64 %i.hdc, ptr %.5453.i, align 8, !tbaa !79
  %i.hdd = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store ptr %i.fzw, ptr %i.hdd, align 8, !tbaa !81
  store ptr %.7, ptr %i.g, align 8, !tbaa !92
  br label %.split3462

bb.aqu:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1210
  br i1 %.not3769, label %bb.aqw, label %bb.aqv, !prof !24

bb.aqv:                                           ; preds = %bb.aqu
  store i64 20, ptr %.5453.i, align 8, !tbaa !79
  %i.hde = select i1 %i.gab, i64 -4503599627370496, i64 9218868437227405312
  %i.hdf = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store i64 %i.hde, ptr %i.hdf, align 8, !tbaa !81
  br label %.split3462

bb.aqw:                                           ; preds = %bb.aqu
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  br label %.split3462.thread

bb.aqx:                                           ; preds = %.thread3426, %bb.aqo, %bb.aqq, %bb.aqp
  %.0.i1209.ph = phi i64 [ 0, %bb.aqp ], [ %i.hcw, %bb.aqq ], [ %i.hcs, %bb.aqo ], [ 0, %.thread3426 ] ; 7 uses
  %i.hdg = sub i64 %i.hbz, %.0604.i
  %.not678.i = icmp ule i64 %i.hbw, %i.hdg
  %spec.select.i = or i1 %.not678.i, %i.hcc
  br i1 %spec.select.i, label %bb.aqy, label %bb.aqz, !prof !24

bb.aqy:                                           ; preds = %bb.aqx
  store i64 20, ptr %.5453.i, align 8, !tbaa !79
  %i.hdh = select i1 %i.gab, i64 -9223372036854775808, i64 0
  %i.hdi = or disjoint i64 %.0.i1209.ph, %i.hdh
  %i.hdj = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store i64 %i.hdi, ptr %i.hdj, align 8, !tbaa !81
  br label %.split3462

bb.aqz:                                           ; preds = %bb.aqx
  %.not679.i = icmp samesign ult i64 %.0.i1209.ph, 4503599627370496 ; 2 uses
  %i.hdk = and i64 %.0.i1209.ph, 4503599627370495
  %i.hdl = or disjoint i64 %i.hdk, 4503599627370496
  %i.hdm = lshr i64 %.0.i1209.ph, 52
  %i.hdn = trunc nuw nsw i64 %i.hdm to i32
  %i.hdo = add nsw i32 %i.hdn, -1076
  %.sroa.9.0.i = select i1 %.not679.i, i32 -1075, i32 %i.hdo ; 4 uses
  %.sroa.022.0.i = select i1 %.not679.i, i64 %.0.i1209.ph, i64 %i.hdl
  %i.hdp = shl nuw nsw i64 %.sroa.022.0.i, 1
  %i.hdq = or disjoint i64 %i.hdp, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %11, i64 noundef %.22596.i, ptr noundef %i.d, ptr noundef %.3565.i, ptr noundef %.3569.i, ptr noundef %.23.i227)
  %i.hdr = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 29 uses
  store i64 %i.hdq, ptr %i.hdr, align 8, !tbaa !91
  %i.hds = load i32, ptr %i.d, align 4, !tbaa !3  ; 6 uses
  %i.hdt = icmp sgt i32 %i.hds, -1
  br i1 %i.hdt, label %.preheader4120, label %bb.arh

.preheader4120:                                   ; preds = %bb.aqz
  %.promoted5671 = load i32, ptr %11, align 8     ; 2 uses
  %i.hdu = icmp samesign ugt i32 %i.hds, 18
  br i1 %i.hdu, label %.lr.ph5674, label %._crit_edge5675

.lr.ph5674:                                       ; preds = %.preheader4120
  %i.hdv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  br label %bb.ara

bb.ara:                                           ; preds = %.lr.ph5674, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345
  %.0.i12285673 = phi i32 [ %i.hds, %.lr.ph5674 ], [ %i.hfj, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345 ] ; 2 uses
  %i.hdw = phi i32 [ %.promoted5671, %.lr.ph5674 ], [ %i.hfi, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345 ] ; 9 uses
  %.not5871 = icmp eq i32 %i.hdw, 0
  br i1 %.not5871, label %._crit_edge5661, label %.lr.ph5660.preheader

.lr.ph5660.preheader:                             ; preds = %bb.ara
  %wide.trip.count6558 = zext i32 %i.hdw to i64
  br label %.lr.ph5660

.lr.ph5660:                                       ; preds = %.lr.ph5660.preheader, %bb.arb
  %indvars.iv6555 = phi i64 [ 0, %.lr.ph5660.preheader ], [ %indvars.iv.next6556, %bb.arb ] ; 3 uses
  %i.hdx = getelementptr inbounds nuw [8 x i8], ptr %i.hdv, i64 %indvars.iv6555
  %i.hdy = load i64, ptr %i.hdx, align 8, !tbaa !91
  %.not.i1344 = icmp eq i64 %i.hdy, 0
  br i1 %.not.i1344, label %bb.arb, label %._crit_edge5661.loopexit

bb.arb:                                           ; preds = %.lr.ph5660
  %indvars.iv.next6556 = add nuw nsw i64 %indvars.iv6555, 1 ; 2 uses
  %exitcond6559.not = icmp eq i64 %indvars.iv.next6556, %wide.trip.count6558
  br i1 %exitcond6559.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345, label %.lr.ph5660, !llvm.loop !174

._crit_edge5661.loopexit:                         ; preds = %.lr.ph5660
  %i.hdz = trunc nuw i64 %indvars.iv6555 to i32
  br label %._crit_edge5661

._crit_edge5661:                                  ; preds = %._crit_edge5661.loopexit, %bb.ara
  %.018.i1340.lcssa = phi i32 [ 0, %bb.ara ], [ %i.hdz, %._crit_edge5661.loopexit ] ; 2 uses
  %i.hea = icmp ult i32 %.018.i1340.lcssa, %i.hdw
  br i1 %i.hea, label %.lr.ph5668.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345

.lr.ph5668.preheader:                             ; preds = %._crit_edge5661
  %i.heb = zext i32 %.018.i1340.lcssa to i64      ; 4 uses
  %wide.trip.count6563 = zext i32 %i.hdw to i64   ; 2 uses
  %i.hec = sub nsw i64 %wide.trip.count6563, %i.heb ; 3 uses
  %xtraiter12342 = and i64 %i.hec, 1
  %i.hed = add nsw i64 %wide.trip.count6563, -1
  %i.hee = icmp eq i64 %i.hed, %i.heb
  br i1 %i.hee, label %.lr.ph5668.epil.preheader, label %.lr.ph5668.preheader.new

.lr.ph5668.preheader.new:                         ; preds = %.lr.ph5668.preheader
  %unroll_iter12347 = and i64 %i.hec, -2
  br label %.lr.ph5668

.lr.ph5668:                                       ; preds = %.lr.ph5668, %.lr.ph5668.preheader.new
  %indvars.iv6560 = phi i64 [ %i.heb, %.lr.ph5668.preheader.new ], [ %indvars.iv.next6561.1, %.lr.ph5668 ] ; 3 uses
  %.0.i13425666 = phi i64 [ 0, %.lr.ph5668.preheader.new ], [ %i.heu, %.lr.ph5668 ]
  %niter12348 = phi i64 [ 0, %.lr.ph5668.preheader.new ], [ %niter12348.next.1, %.lr.ph5668 ]
  %i.hef = getelementptr inbounds nuw [8 x i8], ptr %i.hdv, i64 %indvars.iv6560 ; 2 uses
  %i.heg = load i64, ptr %i.hef, align 8, !tbaa !91
  %i.heh = zext i64 %i.heg to i128
  %i.hei = mul nuw i128 %i.heh, 10000000000000000000
  %i.hej = zext i64 %.0.i13425666 to i128
  %i.hek = add nuw i128 %i.hei, %i.hej            ; 2 uses
  %i.hel = lshr i128 %i.hek, 64
  %i.hem = trunc i128 %i.hek to i64
  store i64 %i.hem, ptr %i.hef, align 8, !tbaa !91
  %i.hen = getelementptr inbounds nuw [8 x i8], ptr %i.hdv, i64 %indvars.iv6560
  %i.heo = getelementptr inbounds nuw i8, ptr %i.hen, i64 8 ; 2 uses
  %i.hep = load i64, ptr %i.heo, align 8, !tbaa !91
  %i.heq = zext i64 %i.hep to i128
  %i.her = mul nuw i128 %i.heq, 10000000000000000000
  %i.hes = add nuw i128 %i.her, %i.hel            ; 2 uses
  %i.het = lshr i128 %i.hes, 64                   ; 2 uses
  %i.heu = trunc nuw i128 %i.het to i64           ; 3 uses
  %i.hev = trunc i128 %i.hes to i64
  store i64 %i.hev, ptr %i.heo, align 8, !tbaa !91
  %indvars.iv.next6561.1 = add nuw nsw i64 %indvars.iv6560, 2 ; 2 uses
  %niter12348.next.1 = add i64 %niter12348, 2     ; 2 uses
  %niter12348.ncmp.1 = icmp eq i64 %niter12348.next.1, %unroll_iter12347
  br i1 %niter12348.ncmp.1, label %._crit_edge5669.unr-lcssa, label %.lr.ph5668, !llvm.loop !175

._crit_edge5669.unr-lcssa:                        ; preds = %.lr.ph5668
  %lcmp.mod12343.not = icmp eq i64 %xtraiter12342, 0
  br i1 %lcmp.mod12343.not, label %._crit_edge5669, label %.lr.ph5668.epil.preheader

.lr.ph5668.epil.preheader:                        ; preds = %._crit_edge5669.unr-lcssa, %.lr.ph5668.preheader
  %indvars.iv6560.epil.init = phi i64 [ %i.heb, %.lr.ph5668.preheader ], [ %indvars.iv.next6561.1, %._crit_edge5669.unr-lcssa ]
  %.0.i13425666.epil.init = phi i64 [ 0, %.lr.ph5668.preheader ], [ %i.heu, %._crit_edge5669.unr-lcssa ]
  %lcmp.mod12346 = trunc i64 %i.hec to i1
  tail call void @llvm.assume(i1 %lcmp.mod12346)
  %i.hew = getelementptr inbounds nuw [8 x i8], ptr %i.hdv, i64 %indvars.iv6560.epil.init ; 2 uses
  %i.hex = load i64, ptr %i.hew, align 8, !tbaa !91
  %i.hey = zext i64 %i.hex to i128
  %i.hez = mul nuw i128 %i.hey, 10000000000000000000
  %i.hfa = zext i64 %.0.i13425666.epil.init to i128
  %i.hfb = add nuw i128 %i.hez, %i.hfa            ; 2 uses
  %i.hfc = lshr i128 %i.hfb, 64                   ; 2 uses
  %i.hfd = trunc nuw i128 %i.hfc to i64
  %i.hfe = trunc i128 %i.hfb to i64
  store i64 %i.hfe, ptr %i.hew, align 8, !tbaa !91
  br label %._crit_edge5669

._crit_edge5669:                                  ; preds = %._crit_edge5669.unr-lcssa, %.lr.ph5668.epil.preheader
  %.lcssa10781 = phi i128 [ %i.het, %._crit_edge5669.unr-lcssa ], [ %i.hfc, %.lr.ph5668.epil.preheader ]
  %.lcssa10780 = phi i64 [ %i.heu, %._crit_edge5669.unr-lcssa ], [ %i.hfd, %.lr.ph5668.epil.preheader ]
  %.not19.i1343 = icmp eq i128 %.lcssa10781, 0
  br i1 %.not19.i1343, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345, label %bb.arc

bb.arc:                                           ; preds = %._crit_edge5669
  %i.hff = add i32 %i.hdw, 1
  %i.hfg = zext i32 %i.hdw to i64
  %i.hfh = getelementptr inbounds nuw [8 x i8], ptr %i.hdv, i64 %i.hfg
  store i64 %.lcssa10780, ptr %i.hfh, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345: ; preds = %bb.arb, %._crit_edge5661, %._crit_edge5669, %bb.arc
  %i.hfi = phi i32 [ %i.hdw, %._crit_edge5669 ], [ %i.hff, %bb.arc ], [ %i.hdw, %._crit_edge5661 ], [ %i.hdw, %bb.arb ] ; 2 uses
  %i.hfj = add nsw i32 %.0.i12285673, -19         ; 2 uses
  %i.hfk = icmp sgt i32 %.0.i12285673, 37
  br i1 %i.hfk, label %bb.ara, label %._crit_edge5675, !llvm.loop !176

._crit_edge5675:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345, %.preheader4120
  %i.hfl = phi i32 [ %.promoted5671, %.preheader4120 ], [ %i.hfi, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345 ] ; 7 uses
  %.0.i1228.lcssa = phi i32 [ %i.hds, %.preheader4120 ], [ %i.hfj, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1345 ] ; 2 uses
  store i32 %i.hfl, ptr %11, align 8
  %.not.i1229 = icmp eq i32 %.0.i1228.lcssa, 0
  br i1 %.not.i1229, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230, label %bb.ard

bb.ard:                                           ; preds = %._crit_edge5675
  %i.hfm = sext i32 %.0.i1228.lcssa to i64
  %i.hfn = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.hfm
  %i.hfo = load i64, ptr %i.hfn, align 8, !tbaa !91
  %i.hfp = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %.not5872 = icmp eq i32 %i.hfl, 0
  br i1 %.not5872, label %._crit_edge5681, label %.lr.ph5680.preheader

.lr.ph5680.preheader:                             ; preds = %bb.ard
  %wide.trip.count6568 = zext i32 %i.hfl to i64
  br label %.lr.ph5680

.lr.ph5680:                                       ; preds = %.lr.ph5680.preheader, %bb.are
  %indvars.iv6565 = phi i64 [ 0, %.lr.ph5680.preheader ], [ %indvars.iv.next6566, %bb.are ] ; 3 uses
  %i.hfq = getelementptr inbounds nuw [8 x i8], ptr %i.hfp, i64 %indvars.iv6565
  %i.hfr = load i64, ptr %i.hfq, align 8, !tbaa !91
  %.not.i1350 = icmp eq i64 %i.hfr, 0
  br i1 %.not.i1350, label %bb.are, label %._crit_edge5681.loopexit

bb.are:                                           ; preds = %.lr.ph5680
  %indvars.iv.next6566 = add nuw nsw i64 %indvars.iv6565, 1 ; 2 uses
  %exitcond6569.not = icmp eq i64 %indvars.iv.next6566, %wide.trip.count6568
  br i1 %exitcond6569.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230, label %.lr.ph5680, !llvm.loop !174

._crit_edge5681.loopexit:                         ; preds = %.lr.ph5680
  %i.hfs = trunc nuw i64 %indvars.iv6565 to i32
  br label %._crit_edge5681

._crit_edge5681:                                  ; preds = %._crit_edge5681.loopexit, %bb.ard
  %.018.i1346.lcssa = phi i32 [ 0, %bb.ard ], [ %i.hfs, %._crit_edge5681.loopexit ] ; 2 uses
  %i.hft = icmp ult i32 %.018.i1346.lcssa, %i.hfl
  br i1 %i.hft, label %.lr.ph5688, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230

.lr.ph5688:                                       ; preds = %._crit_edge5681
  %i.hfu = zext i64 %i.hfo to i128                ; 3 uses
  %i.hfv = zext i32 %.018.i1346.lcssa to i64      ; 4 uses
  %wide.trip.count6573 = zext i32 %i.hfl to i64   ; 2 uses
  %i.hfw = sub nsw i64 %wide.trip.count6573, %i.hfv ; 3 uses
  %xtraiter12350 = and i64 %i.hfw, 1
  %i.hfx = add nsw i64 %wide.trip.count6573, -1
  %i.hfy = icmp eq i64 %i.hfx, %i.hfv
  br i1 %i.hfy, label %.epil.preheader12349, label %.lr.ph5688.new

.lr.ph5688.new:                                   ; preds = %.lr.ph5688
  %unroll_iter12355 = and i64 %i.hfw, -2
  br label %bb.arf

bb.arf:                                           ; preds = %bb.arf, %.lr.ph5688.new
  %indvars.iv6570 = phi i64 [ %i.hfv, %.lr.ph5688.new ], [ %indvars.iv.next6571.1, %bb.arf ] ; 3 uses
  %.0.i13485686 = phi i64 [ 0, %.lr.ph5688.new ], [ %i.hgo, %bb.arf ]
  %niter12356 = phi i64 [ 0, %.lr.ph5688.new ], [ %niter12356.next.1, %bb.arf ]
  %i.hfz = getelementptr inbounds nuw [8 x i8], ptr %i.hfp, i64 %indvars.iv6570 ; 2 uses
  %i.hga = load i64, ptr %i.hfz, align 8, !tbaa !91
  %i.hgb = zext i64 %i.hga to i128
  %i.hgc = mul nuw i128 %i.hgb, %i.hfu
  %i.hgd = zext i64 %.0.i13485686 to i128
  %i.hge = add nuw i128 %i.hgc, %i.hgd            ; 2 uses
  %i.hgf = lshr i128 %i.hge, 64
  %i.hgg = trunc i128 %i.hge to i64
  store i64 %i.hgg, ptr %i.hfz, align 8, !tbaa !91
  %i.hgh = getelementptr inbounds nuw [8 x i8], ptr %i.hfp, i64 %indvars.iv6570
  %i.hgi = getelementptr inbounds nuw i8, ptr %i.hgh, i64 8 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.lr.ph5634:                                       ; preds = %.lr.ph5634, %.lr.ph5634.preheader.new
  %indvars.iv6540 = phi i64 [ %i.hhk, %.lr.ph5634.preheader.new ], [ %indvars.iv.next6541.1, %.lr.ph5634 ] ; 3 uses
  %.0.i13325632 = phi i64 [ 0, %.lr.ph5634.preheader.new ], [ %i.hid, %.lr.ph5634 ]
  %niter12333 = phi i64 [ 0, %.lr.ph5634.preheader.new ], [ %niter12333.next.1, %.lr.ph5634 ]
  %i.hho = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6540 ; 2 uses
  %i.hhp = load i64, ptr %i.hho, align 8, !tbaa !91
  %i.hhq = zext i64 %i.hhp to i128
  %i.hhr = mul nuw i128 %i.hhq, 10000000000000000000
  %i.hhs = zext i64 %.0.i13325632 to i128
  %i.hht = add nuw i128 %i.hhr, %i.hhs            ; 2 uses
  %i.hhu = lshr i128 %i.hht, 64
  %i.hhv = trunc i128 %i.hht to i64
  store i64 %i.hhv, ptr %i.hho, align 8, !tbaa !91
  %i.hhw = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6540
  %i.hhx = getelementptr inbounds nuw i8, ptr %i.hhw, i64 8 ; 2 uses
  %i.hhy = load i64, ptr %i.hhx, align 8, !tbaa !91
  %i.hhz = zext i64 %i.hhy to i128
  %i.hia = mul nuw i128 %i.hhz, 10000000000000000000
  %i.hib = add nuw i128 %i.hia, %i.hhu            ; 2 uses
  %i.hic = lshr i128 %i.hib, 64                   ; 2 uses
  %i.hid = trunc nuw i128 %i.hic to i64           ; 3 uses
  %i.hie = trunc i128 %i.hib to i64
  store i64 %i.hie, ptr %i.hhx, align 8, !tbaa !91
  %indvars.iv.next6541.1 = add nuw nsw i64 %indvars.iv6540, 2 ; 2 uses
  %niter12333.next.1 = add i64 %niter12333, 2     ; 2 uses
  %niter12333.ncmp.1 = icmp eq i64 %niter12333.next.1, %unroll_iter12332
  br i1 %niter12333.ncmp.1, label %._crit_edge5635.unr-lcssa, label %.lr.ph5634, !llvm.loop !175

._crit_edge5635.unr-lcssa:                        ; preds = %.lr.ph5634
  %lcmp.mod12328.not = icmp eq i64 %xtraiter12327, 0
  br i1 %lcmp.mod12328.not, label %._crit_edge5635, label %.lr.ph5634.epil.preheader

.lr.ph5634.epil.preheader:                        ; preds = %._crit_edge5635.unr-lcssa, %.lr.ph5634.preheader
  %indvars.iv6540.epil.init = phi i64 [ %i.hhk, %.lr.ph5634.preheader ], [ %indvars.iv.next6541.1, %._crit_edge5635.unr-lcssa ]
  %.0.i13325632.epil.init = phi i64 [ 0, %.lr.ph5634.preheader ], [ %i.hid, %._crit_edge5635.unr-lcssa ]
  %lcmp.mod12331 = trunc i64 %i.hhl to i1
  tail call void @llvm.assume(i1 %lcmp.mod12331)
  %i.hif = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6540.epil.init ; 2 uses
  %i.hig = load i64, ptr %i.hif, align 8, !tbaa !91
  %i.hih = zext i64 %i.hig to i128
  %i.hii = mul nuw i128 %i.hih, 10000000000000000000
  %i.hij = zext i64 %.0.i13325632.epil.init to i128
  %i.hik = add nuw i128 %i.hii, %i.hij            ; 2 uses
  %i.hil = lshr i128 %i.hik, 64                   ; 2 uses
  %i.him = trunc nuw i128 %i.hil to i64
  %i.hin = trunc i128 %i.hik to i64
  store i64 %i.hin, ptr %i.hif, align 8, !tbaa !91
  br label %._crit_edge5635

._crit_edge5635:                                  ; preds = %._crit_edge5635.unr-lcssa, %.lr.ph5634.epil.preheader
  %.lcssa10790 = phi i128 [ %i.hic, %._crit_edge5635.unr-lcssa ], [ %i.hil, %.lr.ph5634.epil.preheader ]
  %.lcssa10789 = phi i64 [ %i.hid, %._crit_edge5635.unr-lcssa ], [ %i.him, %.lr.ph5634.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa10790, 0
  br i1 %.not19.i, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit, label %bb.arj

bb.arj:                                           ; preds = %._crit_edge5635
  %i.hio = add i32 %i.hhf, 1
  %i.hip = zext i32 %i.hhf to i64
  %i.hiq = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hip
  store i64 %.lcssa10789, ptr %i.hiq, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit: ; preds = %bb.ari, %._crit_edge5627, %._crit_edge5635, %bb.arj
  %i.hir = phi i32 [ %i.hhf, %._crit_edge5635 ], [ %i.hio, %bb.arj ], [ %i.hhf, %._crit_edge5627 ], [ %i.hhf, %bb.ari ] ; 5 uses
  %i.his = add nsw i32 %.0.i12315639, -19         ; 3 uses
  %i.hit = icmp sgt i32 %.0.i12315639, 37
  br i1 %i.hit, label %.lr.ph5641, label %._crit_edge5642, !llvm.loop !176

._crit_edge5642:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit
  store i32 %i.hir, ptr %12, align 8
  %.not.i1232 = icmp eq i32 %i.his, 0
  br i1 %.not.i1232, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230, label %bb.ark

bb.ark:                                           ; preds = %._crit_edge5642
  %i.hiu = sext i32 %i.his to i64
  %i.hiv = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.hiu
  %i.hiw = load i64, ptr %i.hiv, align 8, !tbaa !91 ; 2 uses
  %.not5870 = icmp eq i32 %i.hir, 0
  br i1 %.not5870, label %._crit_edge5648, label %.lr.ph5647.preheader

.lr.ph5647.preheader:                             ; preds = %.thread7483, %bb.ark
  %i.hix = phi i64 [ %i.hhe, %.thread7483 ], [ %i.hiw, %bb.ark ]
  %i.hiy = phi i32 [ 1, %.thread7483 ], [ %i.hir, %bb.ark ] ; 3 uses
  %wide.trip.count6548 = zext i32 %i.hiy to i64
  br label %.lr.ph5647

.lr.ph5647:                                       ; preds = %.lr.ph5647.preheader, %bb.arl
  %indvars.iv6545 = phi i64 [ 0, %.lr.ph5647.preheader ], [ %indvars.iv.next6546, %bb.arl ] ; 3 uses
  %i.hiz = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6545
  %i.hja = load i64, ptr %i.hiz, align 8, !tbaa !91
  %.not.i1338 = icmp eq i64 %i.hja, 0
  br i1 %.not.i1338, label %bb.arl, label %._crit_edge5648.loopexit

bb.arl:                                           ; preds = %.lr.ph5647
  %indvars.iv.next6546 = add nuw nsw i64 %indvars.iv6545, 1 ; 2 uses
  %exitcond6549.not = icmp eq i64 %indvars.iv.next6546, %wide.trip.count6548
  br i1 %exitcond6549.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230, label %.lr.ph5647, !llvm.loop !174

._crit_edge5648.loopexit:                         ; preds = %.lr.ph5647
  %i.hjb = trunc nuw i64 %indvars.iv6545 to i32
  br label %._crit_edge5648

._crit_edge5648:                                  ; preds = %._crit_edge5648.loopexit, %bb.ark
  %i.hjc = phi i64 [ %i.hiw, %bb.ark ], [ %i.hix, %._crit_edge5648.loopexit ]
  %i.hjd = phi i32 [ 0, %bb.ark ], [ %i.hiy, %._crit_edge5648.loopexit ] ; 6 uses
  %.018.i1334.lcssa = phi i32 [ 0, %bb.ark ], [ %i.hjb, %._crit_edge5648.loopexit ] ; 2 uses
  %i.hje = icmp ult i32 %.018.i1334.lcssa, %i.hjd
  br i1 %i.hje, label %.lr.ph5655, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230

.lr.ph5655:                                       ; preds = %._crit_edge5648
  %i.hjf = zext i64 %i.hjc to i128                ; 3 uses
  %i.hjg = zext i32 %.018.i1334.lcssa to i64      ; 4 uses
  %wide.trip.count6553 = zext i32 %i.hjd to i64   ; 2 uses
  %i.hjh = sub nsw i64 %wide.trip.count6553, %i.hjg ; 3 uses
  %xtraiter12335 = and i64 %i.hjh, 1
  %i.hji = add nsw i64 %wide.trip.count6553, -1
  %i.hjj = icmp eq i64 %i.hji, %i.hjg
  br i1 %i.hjj, label %.epil.preheader12334, label %.lr.ph5655.new

.lr.ph5655.new:                                   ; preds = %.lr.ph5655
  %unroll_iter12340 = and i64 %i.hjh, -2
  br label %bb.arm

bb.arm:                                           ; preds = %bb.arm, %.lr.ph5655.new
  %indvars.iv6550 = phi i64 [ %i.hjg, %.lr.ph5655.new ], [ %indvars.iv.next6551.1, %bb.arm ] ; 3 uses
  %.0.i13365653 = phi i64 [ 0, %.lr.ph5655.new ], [ %i.hjz, %bb.arm ]
  %niter12341 = phi i64 [ 0, %.lr.ph5655.new ], [ %niter12341.next.1, %bb.arm ]
  %i.hjk = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6550 ; 2 uses
  %i.hjl = load i64, ptr %i.hjk, align 8, !tbaa !91
  %i.hjm = zext i64 %i.hjl to i128
  %i.hjn = mul nuw i128 %i.hjm, %i.hjf
  %i.hjo = zext i64 %.0.i13365653 to i128
  %i.hjp = add nuw i128 %i.hjn, %i.hjo            ; 2 uses
  %i.hjq = lshr i128 %i.hjp, 64
  %i.hjr = trunc i128 %i.hjp to i64
  store i64 %i.hjr, ptr %i.hjk, align 8, !tbaa !91
  %i.hjs = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6550
  %i.hjt = getelementptr inbounds nuw i8, ptr %i.hjs, i64 8 ; 2 uses
  %i.hju = load i64, ptr %i.hjt, align 8, !tbaa !91
  %i.hjv = zext i64 %i.hju to i128
  %i.hjw = mul nuw i128 %i.hjv, %i.hjf
  %i.hjx = add nuw i128 %i.hjw, %i.hjq            ; 2 uses
  %i.hjy = lshr i128 %i.hjx, 64                   ; 2 uses
  %i.hjz = trunc nuw i128 %i.hjy to i64           ; 3 uses
  %i.hka = trunc i128 %i.hjx to i64
  store i64 %i.hka, ptr %i.hjt, align 8, !tbaa !91
  %indvars.iv.next6551.1 = add nuw nsw i64 %indvars.iv6550, 2 ; 2 uses
  %niter12341.next.1 = add i64 %niter12341, 2     ; 2 uses
  %niter12341.ncmp.1 = icmp eq i64 %niter12341.next.1, %unroll_iter12340
  br i1 %niter12341.ncmp.1, label %._crit_edge5656.unr-lcssa, label %bb.arm, !llvm.loop !175

._crit_edge5656.unr-lcssa:                        ; preds = %bb.arm
  %lcmp.mod12336.not = icmp eq i64 %xtraiter12335, 0
  br i1 %lcmp.mod12336.not, label %._crit_edge5656, label %.epil.preheader12334

.epil.preheader12334:                             ; preds = %._crit_edge5656.unr-lcssa, %.lr.ph5655
  %indvars.iv6550.epil.init = phi i64 [ %i.hjg, %.lr.ph5655 ], [ %indvars.iv.next6551.1, %._crit_edge5656.unr-lcssa ]
  %.0.i13365653.epil.init = phi i64 [ 0, %.lr.ph5655 ], [ %i.hjz, %._crit_edge5656.unr-lcssa ]
  %lcmp.mod12339 = trunc i64 %i.hjh to i1
  tail call void @llvm.assume(i1 %lcmp.mod12339)
  %i.hkb = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6550.epil.init ; 2 uses
  %i.hkc = load i64, ptr %i.hkb, align 8, !tbaa !91
  %i.hkd = zext i64 %i.hkc to i128
  %i.hke = mul nuw i128 %i.hkd, %i.hjf
  %i.hkf = zext i64 %.0.i13365653.epil.init to i128
  %i.hkg = add nuw i128 %i.hke, %i.hkf            ; 2 uses
  %i.hkh = lshr i128 %i.hkg, 64                   ; 2 uses
  %i.hki = trunc nuw i128 %i.hkh to i64
  %i.hkj = trunc i128 %i.hkg to i64
  store i64 %i.hkj, ptr %i.hkb, align 8, !tbaa !91
  br label %._crit_edge5656

._crit_edge5656:                                  ; preds = %._crit_edge5656.unr-lcssa, %.epil.preheader12334
  %.lcssa10785 = phi i128 [ %i.hjy, %._crit_edge5656.unr-lcssa ], [ %i.hkh, %.epil.preheader12334 ]
  %.lcssa10784 = phi i64 [ %i.hjz, %._crit_edge5656.unr-lcssa ], [ %i.hki, %.epil.preheader12334 ]
  %.not19.i1337 = icmp eq i128 %.lcssa10785, 0
  br i1 %.not19.i1337, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230, label %bb.arn

bb.arn:                                           ; preds = %._crit_edge5656
  %i.hkk = add i32 %i.hjd, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230.sink.split: ; preds = %bb.arg, %bb.arn
  %.sink8562 = phi i32 [ %i.hjd, %bb.arn ], [ %i.hfl, %bb.arg ]
  %i.hkl = phi ptr [ %12, %bb.arn ], [ %11, %bb.arg ]
  %.lcssa7592.sink = phi i64 [ %.lcssa10784, %bb.arn ], [ %.lcssa10776, %bb.arg ]
  %.ph8558 = phi i32 [ %i.hkk, %bb.arn ], [ 1, %bb.arg ]
  %i.hkm = getelementptr inbounds nuw i8, ptr %i.hkl, i64 8
  %i.hkn = zext i32 %.sink8562 to i64
  %i.hko = getelementptr inbounds nuw [8 x i8], ptr %i.hkm, i64 %i.hkn
  store i64 %.lcssa7592.sink, ptr %i.hko, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230: ; preds = %bb.arl, %bb.are, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230.sink.split, %._crit_edge5648, %._crit_edge5681, %._crit_edge5642, %._crit_edge5656, %._crit_edge5675, %._crit_edge5689
  %i.hkp = phi i32 [ %i.hir, %._crit_edge5642 ], [ %i.hjd, %._crit_edge5656 ], [ %i.hjd, %._crit_edge5648 ], [ 1, %._crit_edge5675 ], [ 1, %._crit_edge5689 ], [ 1, %bb.are ], [ %.ph8558, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230.sink.split ], [ 1, %._crit_edge5681 ], [ %i.hiy, %bb.arl ] ; 16 uses
  %i.hkq = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.hkq, label %bb.aro, label %bb.arq

bb.aro:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230
  %i.hkr = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.hks = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
  %i.hkt = icmp eq i32 %i.hkr, 0
  br i1 %i.hkt, label %.preheader4115, label %bb.arp, !prof !7

.preheader4115:                                   ; preds = %bb.aro
  %.not46.i12875717 = icmp eq i32 %i.hkp, 0
  br i1 %.not46.i12875717, label %.lr.ph5724.preheader, label %.lr.ph5719

.lr.ph5719:                                       ; preds = %.preheader4115
  %i.hku = add nsw i32 %i.hks, -1                 ; 6 uses
  %i.hkv = zext i32 %i.hkp to i64                 ; 9 uses
  %min.iters.check10581 = icmp ult i32 %i.hkp, 30
  br i1 %min.iters.check10581, label %scalar.ph10580.preheader, label %vector.scevcheck10577

vector.scevcheck10577:                            ; preds = %.lr.ph5719
  %i.hkw = add nsw i64 %i.hkv, -1                 ; 2 uses
  %i.hkx = add i32 %i.hkp, %i.hks
  %i.hky = add i32 %i.hkx, -1
  %i.hkz = trunc i64 %i.hkw to i32
  %i.hla = icmp ult i32 %i.hky, %i.hkz
  %i.hlb = icmp ugt i64 %i.hkw, 4294967295
  %i.hlc = or i1 %i.hla, %i.hlb
  br i1 %i.hlc, label %scalar.ph10580.preheader, label %vector.memcheck10578

vector.memcheck10578:                             ; preds = %vector.scevcheck10577
  %i.hld = add i32 %i.hkp, %i.hks
  %i.hle = add i32 %i.hld, -1
  %i.hlf = zext i32 %i.hle to i64
  %i.hlg = sub nsw i64 %i.hkv, %i.hlf
  %i.hlh = shl nsw i64 %i.hlg, 3
  %i.hli = add nsw i64 %i.hlh, -9
  %diff.check10579 = icmp ult i64 %i.hli, 31
  br i1 %diff.check10579, label %scalar.ph10580.preheader, label %vector.ph10582

vector.ph10582:                                   ; preds = %vector.memcheck10578
  %n.vec10583 = and i64 %i.hkv, 4294967292        ; 2 uses
  %i.hlj = and i64 %i.hkv, 3
  br label %vector.body10584

vector.body10584:                                 ; preds = %vector.body10584, %vector.ph10582
  %index10585 = phi i64 [ 0, %vector.ph10582 ], [ %index.next10588, %vector.body10584 ] ; 2 uses
  %i.hlk = sub i64 %i.hkv, %index10585            ; 2 uses
  %i.hll = getelementptr [8 x i8], ptr %12, i64 %i.hlk ; 2 uses
  %i.hlm = getelementptr i8, ptr %i.hll, i64 -8
  %i.hln = getelementptr i8, ptr %i.hll, i64 -24
  %wide.load10586 = load <2 x i64>, ptr %i.hlm, align 8, !tbaa !91
  %wide.load10587 = load <2 x i64>, ptr %i.hln, align 8, !tbaa !91
  %i.hlo = trunc nuw i64 %i.hlk to i32
  %i.hlp = add i32 %i.hku, %i.hlo
  %i.hlq = zext i32 %i.hlp to i64
  %i.hlr = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hlq ; 2 uses
  %i.hls = getelementptr inbounds i8, ptr %i.hlr, i64 -8
  %i.hlt = getelementptr inbounds i8, ptr %i.hlr, i64 -24
  store <2 x i64> %wide.load10586, ptr %i.hls, align 8, !tbaa !91
  store <2 x i64> %wide.load10587, ptr %i.hlt, align 8, !tbaa !91
  %index.next10588 = add nuw i64 %index10585, 4   ; 2 uses
  %i.hlu = icmp eq i64 %index.next10588, %n.vec10583
  br i1 %i.hlu, label %middle.block10589, label %vector.body10584, !llvm.loop !220

middle.block10589:                                ; preds = %vector.body10584
  %cmp.n10590 = icmp eq i64 %n.vec10583, %i.hkv
  br i1 %cmp.n10590, label %.lr.ph5724.preheader, label %scalar.ph10580.preheader

scalar.ph10580.preheader:                         ; preds = %vector.memcheck10578, %vector.scevcheck10577, %.lr.ph5719, %middle.block10589
  %indvars.iv6590.ph = phi i64 [ %i.hkv, %vector.memcheck10578 ], [ %i.hkv, %vector.scevcheck10577 ], [ %i.hkv, %.lr.ph5719 ], [ %i.hlj, %middle.block10589 ] ; 4 uses
  %i.hlv = add nsw i64 %indvars.iv6590.ph, -1
  %xtraiter12366 = and i64 %indvars.iv6590.ph, 3  ; 2 uses
  %lcmp.mod12367.not = icmp eq i64 %xtraiter12366, 0
  br i1 %lcmp.mod12367.not, label %scalar.ph10580.prol.loopexit, label %scalar.ph10580.prol

scalar.ph10580.prol:                              ; preds = %scalar.ph10580.preheader, %scalar.ph10580.prol
  %indvars.iv6590.prol = phi i64 [ %i.hlw, %scalar.ph10580.prol ], [ %indvars.iv6590.ph, %scalar.ph10580.preheader ] ; 3 uses
  %prol.iter12368 = phi i64 [ %prol.iter12368.next, %scalar.ph10580.prol ], [ 0, %scalar.ph10580.preheader ]
  %i.hlw = add nsw i64 %indvars.iv6590.prol, -1   ; 2 uses
  %i.hlx = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6590.prol
  %i.hly = load i64, ptr %i.hlx, align 8, !tbaa !91
  %i.hlz = trunc nuw i64 %indvars.iv6590.prol to i32
  %i.hma = add i32 %i.hku, %i.hlz
  %i.hmb = zext i32 %i.hma to i64
  %i.hmc = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hmb
  store i64 %i.hly, ptr %i.hmc, align 8, !tbaa !91
  %prol.iter12368.next = add i64 %prol.iter12368, 1 ; 2 uses
  %prol.iter12368.cmp.not = icmp eq i64 %prol.iter12368.next, %xtraiter12366
  br i1 %prol.iter12368.cmp.not, label %scalar.ph10580.prol.loopexit, label %scalar.ph10580.prol, !llvm.loop !221

scalar.ph10580.prol.loopexit:                     ; preds = %scalar.ph10580.prol, %scalar.ph10580.preheader
  %indvars.iv6590.unr = phi i64 [ %indvars.iv6590.ph, %scalar.ph10580.preheader ], [ %i.hlw, %scalar.ph10580.prol ]
  %i.hmd = icmp ult i64 %i.hlv, 3
  br i1 %i.hmd, label %.lr.ph5724.preheader, label %scalar.ph10580

scalar.ph10580:                                   ; preds = %scalar.ph10580.prol.loopexit, %scalar.ph10580
  %indvars.iv6590 = phi i64 [ %i.hmz, %scalar.ph10580 ], [ %indvars.iv6590.unr, %scalar.ph10580.prol.loopexit ] ; 6 uses
  %i.hme = add nsw i64 %indvars.iv6590, -1        ; 2 uses
  %i.hmf = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6590
  %i.hmg = load i64, ptr %i.hmf, align 8, !tbaa !91
  %i.hmh = trunc nuw i64 %indvars.iv6590 to i32
  %i.hmi = add i32 %i.hku, %i.hmh
  %i.hmj = zext i32 %i.hmi to i64
  %i.hmk = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hmj
  store i64 %i.hmg, ptr %i.hmk, align 8, !tbaa !91
  %i.hml = add nsw i64 %indvars.iv6590, -2        ; 2 uses
  %i.hmm = getelementptr [8 x i8], ptr %12, i64 %i.hme
  %i.hmn = load i64, ptr %i.hmm, align 8, !tbaa !91
  %i.hmo = trunc nuw i64 %i.hme to i32
  %i.hmp = add i32 %i.hku, %i.hmo
  %i.hmq = zext i32 %i.hmp to i64
  %i.hmr = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hmq
  store i64 %i.hmn, ptr %i.hmr, align 8, !tbaa !91
  %i.hms = add nsw i64 %indvars.iv6590, -3        ; 2 uses
  %i.hmt = getelementptr [8 x i8], ptr %12, i64 %i.hml
  %i.hmu = load i64, ptr %i.hmt, align 8, !tbaa !91
  %i.hmv = trunc nuw i64 %i.hml to i32
  %i.hmw = add i32 %i.hku, %i.hmv
  %i.hmx = zext i32 %i.hmw to i64
  %i.hmy = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hmx
  store i64 %i.hmu, ptr %i.hmy, align 8, !tbaa !91
  %i.hmz = add nsw i64 %indvars.iv6590, -4        ; 2 uses
  %i.hna = getelementptr [8 x i8], ptr %12, i64 %i.hms
  %i.hnb = load i64, ptr %i.hna, align 8, !tbaa !91
  %i.hnc = trunc nuw i64 %i.hms to i32
  %i.hnd = add i32 %i.hku, %i.hnc
  %i.hne = zext i32 %i.hnd to i64
  %i.hnf = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hne
  store i64 %i.hnb, ptr %i.hnf, align 8, !tbaa !91
  %.not46.i1287.wide.3 = icmp eq i64 %i.hmz, 0
  br i1 %.not46.i1287.wide.3, label %.lr.ph5724.preheader, label %scalar.ph10580, !llvm.loop !222

.lr.ph5724.preheader:                             ; preds = %scalar.ph10580.prol.loopexit, %scalar.ph10580, %middle.block10589, %.preheader4115
  %i.hng = add i32 %i.hkp, %i.hks                 ; 2 uses
  store i32 %i.hng, ptr %12, align 8, !tbaa !177
  br label %.lr.ph5699.preheader

bb.arp:                                           ; preds = %bb.aro
  %i.hnh = zext i32 %i.hkp to i64                 ; 10 uses
  %i.hni = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hnh
  store i64 0, ptr %i.hni, align 8, !tbaa !91
  %.not.i12835708 = icmp eq i32 %i.hkp, 0
  %.pre6905 = zext nneg i32 %i.hkr to i64         ; 5 uses
  br i1 %.not.i12835708, label %._crit_edge5712, label %.lr.ph5711

.lr.ph5711:                                       ; preds = %bb.arp
  %i.hnj = sub nuw nsw i32 64, %i.hkr
  %i.hnk = zext nneg i32 %i.hnj to i64            ; 4 uses
  %min.iters.check10560 = icmp ult i32 %i.hkp, 20
  br i1 %min.iters.check10560, label %scalar.ph10559.preheader, label %vector.scevcheck10554

vector.scevcheck10554:                            ; preds = %.lr.ph5711
  %i.hnl = add nsw i64 %i.hnh, -1                 ; 2 uses
  %i.hnm = add i32 %i.hkp, %i.hks
  %i.hnn = trunc i64 %i.hnl to i32
  %i.hno = icmp ult i32 %i.hnm, %i.hnn
  %i.hnp = icmp ugt i64 %i.hnl, 4294967295
  %i.hnq = or i1 %i.hno, %i.hnp
  br i1 %i.hnq, label %scalar.ph10559.preheader, label %vector.memcheck10555

vector.memcheck10555:                             ; preds = %vector.scevcheck10554
  %i.hnr = shl nuw nsw i64 %i.hnh, 3              ; 2 uses
  %i.hns = add i32 %i.hkp, %i.hks
  %i.hnt = zext i32 %i.hns to i64
  %i.hnu = shl nuw nsw i64 %i.hnt, 3              ; 2 uses
  %i.hnv = sub nsw i64 %i.hnu, %i.hnr
  %diff.check10556 = icmp ugt i64 %i.hnv, -32
  %i.hnw = sub nsw i64 %i.hnr, %i.hnu
  %i.hnx = add nsw i64 %i.hnw, -9
  %diff.check10557 = icmp ult i64 %i.hnx, 31
  %conflict.rdx10558 = or i1 %diff.check10556, %diff.check10557
  br i1 %conflict.rdx10558, label %scalar.ph10559.preheader, label %vector.ph10561

vector.ph10561:                                   ; preds = %vector.memcheck10555
  %n.vec10562 = and i64 %i.hnh, 4294967292        ; 2 uses
  %i.hny = and i64 %i.hnh, 3
  %broadcast.splatinsert10563 = insertelement <2 x i64> poison, i64 %i.hnk, i64 0
  %broadcast.splat10564 = shufflevector <2 x i64> %broadcast.splatinsert10563, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10565.a = insertelement <2 x i64> poison, i64 %.pre6905, i64 0
  %broadcast.splat10566.a = shufflevector <2 x i64> %broadcast.splatinsert10565.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10567

vector.body10567:                                 ; preds = %vector.body10567, %vector.ph10561
  %index10568 = phi i64 [ 0, %vector.ph10561 ], [ %index.next10573, %vector.body10567 ] ; 2 uses
  %i.hnz = sub i64 %i.hnh, %index10568            ; 3 uses
  %i.hoa = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hnz ; 2 uses
  %i.hob = getelementptr inbounds i8, ptr %i.hoa, i64 -8
  %i.hoc = getelementptr inbounds i8, ptr %i.hoa, i64 -24
  %wide.load10569 = load <2 x i64>, ptr %i.hob, align 8, !tbaa !91
  %wide.load10570 = load <2 x i64>, ptr %i.hoc, align 8, !tbaa !91
  %i.hod = shl <2 x i64> %wide.load10569, %broadcast.splat10566.a
  %i.hoe = shl <2 x i64> %wide.load10570, %broadcast.splat10566.a
  %i.hof = getelementptr [8 x i8], ptr %12, i64 %i.hnz ; 2 uses
  %i.hog = getelementptr i8, ptr %i.hof, i64 -8
  %i.hoh = getelementptr i8, ptr %i.hof, i64 -24
  %wide.load10571.a = load <2 x i64>, ptr %i.hog, align 8, !tbaa !91
  %wide.load10572.a = load <2 x i64>, ptr %i.hoh, align 8, !tbaa !91
  %i.hoi = lshr <2 x i64> %wide.load10571.a, %broadcast.splat10564
  %i.hoj = lshr <2 x i64> %wide.load10572.a, %broadcast.splat10564
  %i.hok = or <2 x i64> %i.hoi, %i.hod
  %i.hol = or <2 x i64> %i.hoj, %i.hoe
  %i.hom = trunc nuw i64 %i.hnz to i32
  %i.hon = add i32 %i.hks, %i.hom
  %i.hoo = zext i32 %i.hon to i64
  %i.hop = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hoo ; 2 uses
  %i.hoq = getelementptr inbounds i8, ptr %i.hop, i64 -8
  %i.hor = getelementptr inbounds i8, ptr %i.hop, i64 -24
  store <2 x i64> %i.hok, ptr %i.hoq, align 8, !tbaa !91
  store <2 x i64> %i.hol, ptr %i.hor, align 8, !tbaa !91
  %index.next10573 = add nuw i64 %index10568, 4   ; 2 uses
  %i.hos = icmp eq i64 %index.next10573, %n.vec10562
  br i1 %i.hos, label %middle.block10574, label %vector.body10567, !llvm.loop !223

middle.block10574:                                ; preds = %vector.body10567
  %cmp.n10575 = icmp eq i64 %n.vec10562, %i.hnh
  br i1 %cmp.n10575, label %._crit_edge5712, label %scalar.ph10559.preheader

scalar.ph10559.preheader:                         ; preds = %vector.memcheck10555, %vector.scevcheck10554, %.lr.ph5711, %middle.block10574
  %indvars.iv6585.ph = phi i64 [ %i.hnh, %vector.memcheck10555 ], [ %i.hnh, %vector.scevcheck10554 ], [ %i.hnh, %.lr.ph5711 ], [ %i.hny, %middle.block10574 ] ; 7 uses
  %xtraiter12363 = and i64 %indvars.iv6585.ph, 1
  %lcmp.mod12364.not = icmp eq i64 %xtraiter12363, 0
  br i1 %lcmp.mod12364.not, label %scalar.ph10559.prol.loopexit, label %scalar.ph10559.prol

scalar.ph10559.prol:                              ; preds = %scalar.ph10559.preheader
  %i.hot = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6585.ph
  %i.hou = load i64, ptr %i.hot, align 8, !tbaa !91
  %i.hov = shl i64 %i.hou, %.pre6905
  %i.how = add nsw i64 %indvars.iv6585.ph, -1
  %i.hox = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6585.ph
  %i.hoy = load i64, ptr %i.hox, align 8, !tbaa !91
  %i.hoz = lshr i64 %i.hoy, %i.hnk
  %i.hpa = or i64 %i.hoz, %i.hov
  %i.hpb = trunc nuw i64 %indvars.iv6585.ph to i32
  %i.hpc = add i32 %i.hks, %i.hpb
  %i.hpd = zext i32 %i.hpc to i64
  %i.hpe = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hpd
  store i64 %i.hpa, ptr %i.hpe, align 8, !tbaa !91
  br label %scalar.ph10559.prol.loopexit

scalar.ph10559.prol.loopexit:                     ; preds = %scalar.ph10559.prol, %scalar.ph10559.preheader
  %indvars.iv6585.unr = phi i64 [ %indvars.iv6585.ph, %scalar.ph10559.preheader ], [ %i.how, %scalar.ph10559.prol ]
  %i.hpf = icmp eq i64 %indvars.iv6585.ph, 1
  br i1 %i.hpf, label %._crit_edge5712, label %scalar.ph10559

scalar.ph10559:                                   ; preds = %scalar.ph10559.prol.loopexit, %scalar.ph10559
  %indvars.iv6585 = phi i64 [ %i.hpv, %scalar.ph10559 ], [ %indvars.iv6585.unr, %scalar.ph10559.prol.loopexit ] ; 6 uses
  %i.hpg = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %indvars.iv6585
  %i.hph = load i64, ptr %i.hpg, align 8, !tbaa !91
  %i.hpi = shl i64 %i.hph, %.pre6905
  %i.hpj = add nsw i64 %indvars.iv6585, -1        ; 2 uses
  %i.hpk = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6585
  %i.hpl = load i64, ptr %i.hpk, align 8, !tbaa !91
  %i.hpm = lshr i64 %i.hpl, %i.hnk
  %i.hpn = or i64 %i.hpm, %i.hpi
  %i.hpo = trunc nuw i64 %indvars.iv6585 to i32
  %i.hpp = add i32 %i.hks, %i.hpo
  %i.hpq = zext i32 %i.hpp to i64
  %i.hpr = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hpq
  store i64 %i.hpn, ptr %i.hpr, align 8, !tbaa !91
  %i.hps = getelementptr [8 x i8], ptr %12, i64 %indvars.iv6585
  %i.hpt = load i64, ptr %i.hps, align 8, !tbaa !91
  %i.hpu = shl i64 %i.hpt, %.pre6905
  %i.hpv = add nsw i64 %indvars.iv6585, -2        ; 2 uses
  %i.hpw = getelementptr [8 x i8], ptr %12, i64 %i.hpj
  %i.hpx = load i64, ptr %i.hpw, align 8, !tbaa !91
  %i.hpy = lshr i64 %i.hpx, %i.hnk
  %i.hpz = or i64 %i.hpy, %i.hpu
  %i.hqa = trunc nuw i64 %i.hpj to i32
  %i.hqb = add i32 %i.hks, %i.hqa
  %i.hqc = zext i32 %i.hqb to i64
  %i.hqd = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hqc
  store i64 %i.hpz, ptr %i.hqd, align 8, !tbaa !91
  %.not.i1283.wide.1 = icmp eq i64 %i.hpv, 0
  br i1 %.not.i1283.wide.1, label %._crit_edge5712, label %scalar.ph10559, !llvm.loop !224

._crit_edge5712:                                  ; preds = %scalar.ph10559.prol.loopexit, %scalar.ph10559, %middle.block10574, %bb.arp
  %i.hqe = load i64, ptr %i.hdr, align 8, !tbaa !91
  %i.hqf = shl i64 %i.hqe, %.pre6905
  %i.hqg = zext nneg i32 %i.hks to i64
  %i.hqh = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hqg
  store i64 %i.hqf, ptr %i.hqh, align 8, !tbaa !91
  %i.hqi = add i32 %i.hkp, %i.hks                 ; 2 uses
  %i.hqj = zext i32 %i.hqi to i64
  %i.hqk = getelementptr inbounds nuw [8 x i8], ptr %i.hdr, i64 %i.hqj
  %i.hql = load i64, ptr %i.hqk, align 8, !tbaa !91
  %i.hqm = icmp ne i64 %i.hql, 0
  %i.hqn = zext i1 %i.hqm to i32
  %i.hqo = add i32 %i.hqi, %i.hqn                 ; 2 uses
  %.not45.i12855713 = icmp eq i32 %i.hks, 0
  br i1 %.not45.i12855713, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290, label %.lr.ph5699.preheader

bb.arq:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1230
  %i.hqp = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.hqq = and i32 %i.hqp, 63                     ; 3 uses
  %i.hqr = lshr i32 %i.hqp, 6                     ; 16 uses
  %i.hqs = load i32, ptr %11, align 8, !tbaa !177 ; 12 uses
  %i.hqt = icmp eq i32 %i.hqq, 0
  br i1 %i.hqt, label %.preheader4118, label %bb.arr, !prof !7

.preheader4118:                                   ; preds = %bb.arq
  %.not46.i12965700 = icmp eq i32 %i.hqs, 0
  br i1 %.not46.i12965700, label %._crit_edge5703, label %.lr.ph5702

.lr.ph5702:                                       ; preds = %.preheader4118
  %i.hqu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.hqv = add nsw i32 %i.hqr, -1                 ; 6 uses
  %i.hqw = zext i32 %i.hqs to i64                 ; 9 uses
  %min.iters.check10543 = icmp ult i32 %i.hqs, 30
  br i1 %min.iters.check10543, label %scalar.ph10542.preheader, label %vector.scevcheck10539

vector.scevcheck10539:                            ; preds = %.lr.ph5702
  %i.hqx = add nsw i64 %i.hqw, -1                 ; 2 uses
  %i.hqy = add i32 %i.hqs, %i.hqr
  %i.hqz = add i32 %i.hqy, -1
  %i.hra = trunc i64 %i.hqx to i32
  %i.hrb = icmp ult i32 %i.hqz, %i.hra
  %i.hrc = icmp ugt i64 %i.hqx, 4294967295
  %i.hrd = or i1 %i.hrb, %i.hrc
  br i1 %i.hrd, label %scalar.ph10542.preheader, label %vector.memcheck10540

vector.memcheck10540:                             ; preds = %vector.scevcheck10539
  %i.hre = add i32 %i.hqs, %i.hqr
  %i.hrf = add i32 %i.hre, -1
  %i.hrg = zext i32 %i.hrf to i64
  %i.hrh = sub nsw i64 %i.hqw, %i.hrg
  %i.hri = shl nsw i64 %i.hrh, 3
  %i.hrj = add nsw i64 %i.hri, -9
  %diff.check10541 = icmp ult i64 %i.hrj, 31
  br i1 %diff.check10541, label %scalar.ph10542.preheader, label %vector.ph10544

vector.ph10544:                                   ; preds = %vector.memcheck10540
  %n.vec10545 = and i64 %i.hqw, 4294967292        ; 2 uses
  %i.hrk = and i64 %i.hqw, 3
  br label %vector.body10546

vector.body10546:                                 ; preds = %vector.body10546, %vector.ph10544
  %index10547 = phi i64 [ 0, %vector.ph10544 ], [ %index.next10550, %vector.body10546 ] ; 2 uses
  %i.hrl = sub i64 %i.hqw, %index10547            ; 2 uses
  %i.hrm = getelementptr [8 x i8], ptr %11, i64 %i.hrl ; 2 uses
  %i.hrn = getelementptr i8, ptr %i.hrm, i64 -8
  %i.hro = getelementptr i8, ptr %i.hrm, i64 -24
  %wide.load10548 = load <2 x i64>, ptr %i.hrn, align 8, !tbaa !91
  %wide.load10549 = load <2 x i64>, ptr %i.hro, align 8, !tbaa !91
  %i.hrp = trunc nuw i64 %i.hrl to i32
  %i.hrq = add i32 %i.hqv, %i.hrp
  %i.hrr = zext i32 %i.hrq to i64
  %i.hrs = getelementptr inbounds nuw [8 x i8], ptr %i.hqu, i64 %i.hrr ; 2 uses
  %i.hrt = getelementptr inbounds i8, ptr %i.hrs, i64 -8
  %i.hru = getelementptr inbounds i8, ptr %i.hrs, i64 -24
  store <2 x i64> %wide.load10548, ptr %i.hrt, align 8, !tbaa !91
  store <2 x i64> %wide.load10549, ptr %i.hru, align 8, !tbaa !91
  %index.next10550 = add nuw i64 %index10547, 4   ; 2 uses
  %i.hrv = icmp eq i64 %index.next10550, %n.vec10545
  br i1 %i.hrv, label %middle.block10551, label %vector.body10546, !llvm.loop !225

middle.block10551:                                ; preds = %vector.body10546
  %cmp.n10552 = icmp eq i64 %n.vec10545, %i.hqw
  br i1 %cmp.n10552, label %._crit_edge5703, label %scalar.ph10542.preheader

scalar.ph10542.preheader:                         ; preds = %vector.memcheck10540, %vector.scevcheck10539, %.lr.ph5702, %middle.block10551
  %indvars.iv6580.ph = phi i64 [ %i.hqw, %vector.memcheck10540 ], [ %i.hqw, %vector.scevcheck10539 ], [ %i.hqw, %.lr.ph5702 ], [ %i.hrk, %middle.block10551 ] ; 4 uses
  %i.hrw = add nsw i64 %indvars.iv6580.ph, -1
  %xtraiter12360 = and i64 %indvars.iv6580.ph, 3  ; 2 uses
  %lcmp.mod12361.not = icmp eq i64 %xtraiter12360, 0
  br i1 %lcmp.mod12361.not, label %scalar.ph10542.prol.loopexit, label %scalar.ph10542.prol

scalar.ph10542.prol:                              ; preds = %scalar.ph10542.preheader, %scalar.ph10542.prol
  %indvars.iv6580.prol = phi i64 [ %i.hrx, %scalar.ph10542.prol ], [ %indvars.iv6580.ph, %scalar.ph10542.preheader ] ; 3 uses
  %prol.iter12362 = phi i64 [ %prol.iter12362.next, %scalar.ph10542.prol ], [ 0, %scalar.ph10542.preheader ]
  %i.hrx = add nsw i64 %indvars.iv6580.prol, -1   ; 2 uses
  %i.hry = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6580.prol
  %i.hrz = load i64, ptr %i.hry, align 8, !tbaa !91
  %i.hsa = trunc nuw i64 %indvars.iv6580.prol to i32
  %i.hsb = add i32 %i.hqv, %i.hsa
  %i.hsc = zext i32 %i.hsb to i64
  %i.hsd = getelementptr inbounds nuw [8 x i8], ptr %i.hqu, i64 %i.hsc
  store i64 %i.hrz, ptr %i.hsd, align 8, !tbaa !91
  %prol.iter12362.next = add i64 %prol.iter12362, 1 ; 2 uses
  %prol.iter12362.cmp.not = icmp eq i64 %prol.iter12362.next, %xtraiter12360
  br i1 %prol.iter12362.cmp.not, label %scalar.ph10542.prol.loopexit, label %scalar.ph10542.prol, !llvm.loop !226

scalar.ph10542.prol.loopexit:                     ; preds = %scalar.ph10542.prol, %scalar.ph10542.preheader
  %indvars.iv6580.unr = phi i64 [ %indvars.iv6580.ph, %scalar.ph10542.preheader ], [ %i.hrx, %scalar.ph10542.prol ]
  %i.hse = icmp ult i64 %i.hrw, 3
  br i1 %i.hse, label %._crit_edge5703, label %scalar.ph10542

scalar.ph10542:                                   ; preds = %scalar.ph10542.prol.loopexit, %scalar.ph10542
  %indvars.iv6580 = phi i64 [ %i.hta, %scalar.ph10542 ], [ %indvars.iv6580.unr, %scalar.ph10542.prol.loopexit ] ; 6 uses
  %i.hsf = add nsw i64 %indvars.iv6580, -1        ; 2 uses
  %i.hsg = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6580
  %i.hsh = load i64, ptr %i.hsg, align 8, !tbaa !91
  %i.hsi = trunc nuw i64 %indvars.iv6580 to i32
  %i.hsj = add i32 %i.hqv, %i.hsi
  %i.hsk = zext i32 %i.hsj to i64
  %i.hsl = getelementptr inbounds nuw [8 x i8], ptr %i.hqu, i64 %i.hsk
  store i64 %i.hsh, ptr %i.hsl, align 8, !tbaa !91
  %i.hsm = add nsw i64 %indvars.iv6580, -2        ; 2 uses
  %i.hsn = getelementptr [8 x i8], ptr %11, i64 %i.hsf
  %i.hso = load i64, ptr %i.hsn, align 8, !tbaa !91
  %i.hsp = trunc nuw i64 %i.hsf to i32
  %i.hsq = add i32 %i.hqv, %i.hsp
  %i.hsr = zext i32 %i.hsq to i64
  %i.hss = getelementptr inbounds nuw [8 x i8], ptr %i.hqu, i64 %i.hsr
  store i64 %i.hso, ptr %i.hss, align 8, !tbaa !91
  %i.hst = add nsw i64 %indvars.iv6580, -3        ; 2 uses
  %i.hsu = getelementptr [8 x i8], ptr %11, i64 %i.hsm
  %i.hsv = load i64, ptr %i.hsu, align 8, !tbaa !91
  %i.hsw = trunc nuw i64 %i.hsm to i32
  %i.hsx = add i32 %i.hqv, %i.hsw
  %i.hsy = zext i32 %i.hsx to i64
  %i.hsz = getelementptr inbounds nuw [8 x i8], ptr %i.hqu, i64 %i.hsy
  store i64 %i.hsv, ptr %i.hsz, align 8, !tbaa !91
  %i.hta = add nsw i64 %indvars.iv6580, -4        ; 2 uses
  %i.htb = getelementptr [8 x i8], ptr %11, i64 %i.hst
  %i.htc = load i64, ptr %i.htb, align 8, !tbaa !91
  %i.htd = trunc nuw i64 %i.hst to i32
  %i.hte = add i32 %i.hqv, %i.htd
  %i.htf = zext i32 %i.hte to i64
  %i.htg = getelementptr inbounds nuw [8 x i8], ptr %i.hqu, i64 %i.htf
  store i64 %i.htc, ptr %i.htg, align 8, !tbaa !91
  %.not46.i1296.wide.3 = icmp eq i64 %i.hta, 0
  br i1 %.not46.i1296.wide.3, label %._crit_edge5703, label %scalar.ph10542, !llvm.loop !227

._crit_edge5703:                                  ; preds = %scalar.ph10542.prol.loopexit, %scalar.ph10542, %middle.block10551, %.preheader4118
  %i.hth = add i32 %i.hqs, %i.hqr
  store i32 %i.hth, ptr %11, align 8, !tbaa !177
  %.not47.i12985704 = icmp eq i32 %i.hqr, 0
  br i1 %.not47.i12985704, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290, label %.lr.ph5707

.lr.ph5707:                                       ; preds = %._crit_edge5703
  %i.hti = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %.lr.ph5699.preheader

bb.arr:                                           ; preds = %bb.arq
  %i.htj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 12 uses
  %i.htk = zext i32 %i.hqs to i64                 ; 10 uses
  %i.htl = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.htk
  store i64 0, ptr %i.htl, align 8, !tbaa !91
  %.not.i12925691 = icmp eq i32 %i.hqs, 0
  %.pre6907 = zext nneg i32 %i.hqq to i64         ; 5 uses
  br i1 %.not.i12925691, label %._crit_edge5695, label %.lr.ph5694

.lr.ph5694:                                       ; preds = %bb.arr
  %i.htm = sub nuw nsw i32 64, %i.hqq
  %i.htn = zext nneg i32 %i.htm to i64            ; 4 uses
  %min.iters.check10522 = icmp ult i32 %i.hqs, 20
  br i1 %min.iters.check10522, label %scalar.ph10521.preheader, label %vector.scevcheck10516

vector.scevcheck10516:                            ; preds = %.lr.ph5694
  %i.hto = add nsw i64 %i.htk, -1                 ; 2 uses
  %i.htp = add i32 %i.hqs, %i.hqr
  %i.htq = trunc i64 %i.hto to i32
  %i.htr = icmp ult i32 %i.htp, %i.htq
  %i.hts = icmp ugt i64 %i.hto, 4294967295
  %i.htt = or i1 %i.htr, %i.hts
  br i1 %i.htt, label %scalar.ph10521.preheader, label %vector.memcheck10517

vector.memcheck10517:                             ; preds = %vector.scevcheck10516
  %i.htu = shl nuw nsw i64 %i.htk, 3              ; 2 uses
  %i.htv = add i32 %i.hqs, %i.hqr
  %i.htw = zext i32 %i.htv to i64
  %i.htx = shl nuw nsw i64 %i.htw, 3              ; 2 uses
  %i.hty = sub nsw i64 %i.htx, %i.htu
  %diff.check10518 = icmp ugt i64 %i.hty, -32
  %i.htz = sub nsw i64 %i.htu, %i.htx
  %i.hua = add nsw i64 %i.htz, -9
  %diff.check10519 = icmp ult i64 %i.hua, 31
  %conflict.rdx10520 = or i1 %diff.check10518, %diff.check10519
  br i1 %conflict.rdx10520, label %scalar.ph10521.preheader, label %vector.ph10523

vector.ph10523:                                   ; preds = %vector.memcheck10517
  %n.vec10524 = and i64 %i.htk, 4294967292        ; 2 uses
  %i.hub = and i64 %i.htk, 3
  %broadcast.splatinsert10525 = insertelement <2 x i64> poison, i64 %i.htn, i64 0
  %broadcast.splat10526 = shufflevector <2 x i64> %broadcast.splatinsert10525, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10527.a = insertelement <2 x i64> poison, i64 %.pre6907, i64 0
  %broadcast.splat10528.a = shufflevector <2 x i64> %broadcast.splatinsert10527.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10529

vector.body10529:                                 ; preds = %vector.body10529, %vector.ph10523
  %index10530 = phi i64 [ 0, %vector.ph10523 ], [ %index.next10535, %vector.body10529 ] ; 2 uses
  %i.huc = sub i64 %i.htk, %index10530            ; 3 uses
  %i.hud = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.huc ; 2 uses
  %i.hue = getelementptr inbounds i8, ptr %i.hud, i64 -8
  %i.huf = getelementptr inbounds i8, ptr %i.hud, i64 -24
  %wide.load10531 = load <2 x i64>, ptr %i.hue, align 8, !tbaa !91
  %wide.load10532 = load <2 x i64>, ptr %i.huf, align 8, !tbaa !91
  %i.hug = shl <2 x i64> %wide.load10531, %broadcast.splat10528.a
  %i.huh = shl <2 x i64> %wide.load10532, %broadcast.splat10528.a
  %i.hui = getelementptr [8 x i8], ptr %11, i64 %i.huc ; 2 uses
  %i.huj = getelementptr i8, ptr %i.hui, i64 -8
  %i.huk = getelementptr i8, ptr %i.hui, i64 -24
  %wide.load10533.a = load <2 x i64>, ptr %i.huj, align 8, !tbaa !91
  %wide.load10534.a = load <2 x i64>, ptr %i.huk, align 8, !tbaa !91
  %i.hul = lshr <2 x i64> %wide.load10533.a, %broadcast.splat10526
  %i.hum = lshr <2 x i64> %wide.load10534.a, %broadcast.splat10526
  %i.hun = or <2 x i64> %i.hul, %i.hug
  %i.huo = or <2 x i64> %i.hum, %i.huh
  %i.hup = trunc nuw i64 %i.huc to i32
  %i.huq = add i32 %i.hqr, %i.hup
  %i.hur = zext i32 %i.huq to i64
  %i.hus = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.hur ; 2 uses
  %i.hut = getelementptr inbounds i8, ptr %i.hus, i64 -8
  %i.huu = getelementptr inbounds i8, ptr %i.hus, i64 -24
  store <2 x i64> %i.hun, ptr %i.hut, align 8, !tbaa !91
  store <2 x i64> %i.huo, ptr %i.huu, align 8, !tbaa !91
  %index.next10535 = add nuw i64 %index10530, 4   ; 2 uses
  %i.huv = icmp eq i64 %index.next10535, %n.vec10524
  br i1 %i.huv, label %middle.block10536, label %vector.body10529, !llvm.loop !228

middle.block10536:                                ; preds = %vector.body10529
  %cmp.n10537 = icmp eq i64 %n.vec10524, %i.htk
  br i1 %cmp.n10537, label %._crit_edge5695, label %scalar.ph10521.preheader

scalar.ph10521.preheader:                         ; preds = %vector.memcheck10517, %vector.scevcheck10516, %.lr.ph5694, %middle.block10536
  %indvars.iv6575.ph = phi i64 [ %i.htk, %vector.memcheck10517 ], [ %i.htk, %vector.scevcheck10516 ], [ %i.htk, %.lr.ph5694 ], [ %i.hub, %middle.block10536 ] ; 7 uses
  %xtraiter12357 = and i64 %indvars.iv6575.ph, 1
  %lcmp.mod12358.not = icmp eq i64 %xtraiter12357, 0
  br i1 %lcmp.mod12358.not, label %scalar.ph10521.prol.loopexit, label %scalar.ph10521.prol

scalar.ph10521.prol:                              ; preds = %scalar.ph10521.preheader
  %i.huw = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %indvars.iv6575.ph
  %i.hux = load i64, ptr %i.huw, align 8, !tbaa !91
  %i.huy = shl i64 %i.hux, %.pre6907
  %i.huz = add nsw i64 %indvars.iv6575.ph, -1
  %i.hva = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6575.ph
  %i.hvb = load i64, ptr %i.hva, align 8, !tbaa !91
  %i.hvc = lshr i64 %i.hvb, %i.htn
  %i.hvd = or i64 %i.hvc, %i.huy
  %i.hve = trunc nuw i64 %indvars.iv6575.ph to i32
  %i.hvf = add i32 %i.hqr, %i.hve
  %i.hvg = zext i32 %i.hvf to i64
  %i.hvh = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.hvg
  store i64 %i.hvd, ptr %i.hvh, align 8, !tbaa !91
  br label %scalar.ph10521.prol.loopexit

scalar.ph10521.prol.loopexit:                     ; preds = %scalar.ph10521.prol, %scalar.ph10521.preheader
  %indvars.iv6575.unr = phi i64 [ %indvars.iv6575.ph, %scalar.ph10521.preheader ], [ %i.huz, %scalar.ph10521.prol ]
  %i.hvi = icmp eq i64 %indvars.iv6575.ph, 1
  br i1 %i.hvi, label %._crit_edge5695, label %scalar.ph10521

scalar.ph10521:                                   ; preds = %scalar.ph10521.prol.loopexit, %scalar.ph10521
  %indvars.iv6575 = phi i64 [ %i.hvy, %scalar.ph10521 ], [ %indvars.iv6575.unr, %scalar.ph10521.prol.loopexit ] ; 6 uses
  %i.hvj = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %indvars.iv6575
  %i.hvk = load i64, ptr %i.hvj, align 8, !tbaa !91
  %i.hvl = shl i64 %i.hvk, %.pre6907
  %i.hvm = add nsw i64 %indvars.iv6575, -1        ; 2 uses
  %i.hvn = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6575
  %i.hvo = load i64, ptr %i.hvn, align 8, !tbaa !91
  %i.hvp = lshr i64 %i.hvo, %i.htn
  %i.hvq = or i64 %i.hvp, %i.hvl
  %i.hvr = trunc nuw i64 %indvars.iv6575 to i32
  %i.hvs = add i32 %i.hqr, %i.hvr
  %i.hvt = zext i32 %i.hvs to i64
  %i.hvu = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.hvt
  store i64 %i.hvq, ptr %i.hvu, align 8, !tbaa !91
  %i.hvv = getelementptr [8 x i8], ptr %11, i64 %indvars.iv6575
  %i.hvw = load i64, ptr %i.hvv, align 8, !tbaa !91
  %i.hvx = shl i64 %i.hvw, %.pre6907
  %i.hvy = add nsw i64 %indvars.iv6575, -2        ; 2 uses
  %i.hvz = getelementptr [8 x i8], ptr %11, i64 %i.hvm
  %i.hwa = load i64, ptr %i.hvz, align 8, !tbaa !91
  %i.hwb = lshr i64 %i.hwa, %i.htn
  %i.hwc = or i64 %i.hwb, %i.hvx
  %i.hwd = trunc nuw i64 %i.hvm to i32
  %i.hwe = add i32 %i.hqr, %i.hwd
  %i.hwf = zext i32 %i.hwe to i64
  %i.hwg = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.hwf
  store i64 %i.hwc, ptr %i.hwg, align 8, !tbaa !91
  %.not.i1292.wide.1 = icmp eq i64 %i.hvy, 0
  br i1 %.not.i1292.wide.1, label %._crit_edge5695, label %scalar.ph10521, !llvm.loop !229

._crit_edge5695:                                  ; preds = %scalar.ph10521.prol.loopexit, %scalar.ph10521, %middle.block10536, %bb.arr
  %i.hwh = load i64, ptr %i.htj, align 8, !tbaa !91
  %i.hwi = shl i64 %i.hwh, %.pre6907
  %i.hwj = zext nneg i32 %i.hqr to i64
  %i.hwk = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.hwj
  store i64 %i.hwi, ptr %i.hwk, align 8, !tbaa !91
  %i.hwl = add i32 %i.hqs, %i.hqr                 ; 2 uses
  %i.hwm = zext i32 %i.hwl to i64
  %i.hwn = getelementptr inbounds nuw [8 x i8], ptr %i.htj, i64 %i.hwm
  %i.hwo = load i64, ptr %i.hwn, align 8, !tbaa !91
  %i.hwp = icmp ne i64 %i.hwo, 0
  %i.hwq = zext i1 %i.hwp to i32
  %i.hwr = add i32 %i.hwl, %i.hwq
  store i32 %i.hwr, ptr %11, align 8, !tbaa !177
  %.not45.i12945696 = icmp eq i32 %i.hqr, 0
  br i1 %.not45.i12945696, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290, label %.lr.ph5699.preheader

.lr.ph5699.preheader:                             ; preds = %._crit_edge5695, %._crit_edge5712, %.lr.ph5724.preheader, %.lr.ph5707
  %.sink8595 = phi i32 [ %i.hks, %._crit_edge5712 ], [ %i.hqr, %.lr.ph5707 ], [ %i.hks, %.lr.ph5724.preheader ], [ %i.hqr, %._crit_edge5695 ]
  %.sink8590 = phi ptr [ %i.hdr, %._crit_edge5712 ], [ %i.hti, %.lr.ph5707 ], [ %i.hdr, %.lr.ph5724.preheader ], [ %i.htj, %._crit_edge5695 ]
  %.ph8589 = phi i32 [ %i.hqo, %._crit_edge5712 ], [ %i.hkp, %.lr.ph5707 ], [ %i.hng, %.lr.ph5724.preheader ], [ %i.hkp, %._crit_edge5695 ]
  %23 = add nsw i32 %.sink8595, -1
  %i.hws = zext i32 %23 to i64
  %24 = shl nuw nsw i64 %i.hws, 3
  %25 = add nuw nsw i64 %24, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink8590, i8 0, i64 %25, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290: ; preds = %.lr.ph5699.preheader, %._crit_edge5695, %._crit_edge5703, %._crit_edge5712
  %26 = phi i32 [ %i.hqo, %._crit_edge5712 ], [ %i.hkp, %._crit_edge5695 ], [ %i.hkp, %._crit_edge5703 ], [ %.ph8589, %.lr.ph5699.preheader ] ; 2 uses
  %i.hwt = load i32, ptr %11, align 8, !tbaa !177 ; 4 uses
  %i.hwu = icmp ult i32 %i.hwt, %26
  br i1 %i.hwu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread, label %bb.ars

bb.ars:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290
  %i.hwv = icmp ugt i32 %i.hwt, %26
  br i1 %i.hwv, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread, label %.preheader4114

.preheader4114:                                   ; preds = %bb.ars
  %.not.i132410291 = icmp eq i32 %i.hwt, 0
  br i1 %.not.i132410291, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread3433, label %.lr.ph10294

.lr.ph10294:                                      ; preds = %.preheader4114
  %i.hww = zext i32 %i.hwt to i64
  br label %bb.aru

bb.art:                                           ; preds = %bb.aru
  %i.hwx = add nsw i64 %indvars.iv659310292, -1   ; 2 uses
  %.not.i1324 = icmp eq i64 %i.hwx, 0
  br i1 %.not.i1324, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread3433, label %bb.aru, !llvm.loop !191

bb.aru:                                           ; preds = %.lr.ph10294, %bb.art
  %.016.i132210293 = phi i32 [ undef, %.lr.ph10294 ], [ %.1.i1327, %bb.art ]
  %indvars.iv659310292 = phi i64 [ %i.hww, %.lr.ph10294 ], [ %i.hwx, %bb.art ] ; 3 uses
  %i.hwy = getelementptr [8 x i8], ptr %11, i64 %indvars.iv659310292
  %i.hwz = load i64, ptr %i.hwy, align 8, !tbaa !91 ; 3 uses
  %i.hxa = getelementptr [8 x i8], ptr %12, i64 %indvars.iv659310292
  %i.hxb = load i64, ptr %i.hxa, align 8, !tbaa !91 ; 3 uses
  %.not3818 = icmp ult i64 %i.hwz, %i.hxb
  %.not3819 = icmp ugt i64 %i.hwz, %i.hxb
  %..016.i1325 = select i1 %.not3819, i32 1, i32 %.016.i132210293
  %.1.i1327 = select i1 %.not3818, i32 -1, i32 %..016.i1325 ; 3 uses
  %cond.i1328 = icmp eq i64 %i.hwz, %i.hxb
  br i1 %cond.i1328, label %bb.art, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330: ; preds = %bb.aru
  %.not680.i = icmp eq i32 %.1.i1327, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread3433, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290, %bb.ars, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330
  %.2.i13293432 = phi i32 [ %.1.i1327, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1290 ], [ 1, %bb.ars ]
  %i.hxc = icmp sgt i32 %.2.i13293432, 0
  %i.hxd = zext i1 %i.hxc to i64
  br label %bb.arv

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread3433: ; preds = %bb.art, %.preheader4114, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330
  %i.hxe = and i64 %.0.i1209.ph, 1
  br label %bb.arv

bb.arv:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread3433, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread
  %.pn.i229 = phi i64 [ %i.hxd, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread ], [ %i.hxe, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1330.thread3433 ]
  %.0601.i = add nuw nsw i64 %.pn.i229, %.0.i1209.ph ; 2 uses
  %i.hxf = icmp eq i64 %.0601.i, 9218868437227405312
  br i1 %i.hxf, label %bb.arw, label %bb.asd, !prof !7

bb.arw:                                           ; preds = %bb.arv
  br i1 %.not3772, label %bb.asa, label %bb.arx, !prof !24

bb.arx:                                           ; preds = %bb.arw
  %i.hxg = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.hxg, null
  br i1 %.not681.i, label %bb.arz, label %bb.ary

bb.ary:                                           ; preds = %bb.arx
  store i8 0, ptr %i.hxg, align 1, !tbaa !81
  br label %bb.arz

bb.arz:                                           ; preds = %bb.ary, %bb.arx
  %i.hxh = ptrtoint ptr %.7 to i64
  %i.hxi = ptrtoint ptr %i.fzw to i64
  %i.hxj = sub i64 %i.hxh, %i.hxi
  %i.hxk = shl i64 %i.hxj, 8
  %i.hxl = or disjoint i64 %i.hxk, 1
  store i64 %i.hxl, ptr %.5453.i, align 8, !tbaa !79
  %i.hxm = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store ptr %i.fzw, ptr %i.hxm, align 8, !tbaa !81
  store ptr %.7, ptr %i.g, align 8, !tbaa !92
  br label %.split3462

bb.asa:                                           ; preds = %bb.arw
  br i1 %.not3769, label %bb.asc, label %bb.asb, !prof !24

bb.asb:                                           ; preds = %bb.asa
  store i64 20, ptr %.5453.i, align 8, !tbaa !79
  %i.hxn = select i1 %i.gab, i64 -4503599627370496, i64 9218868437227405312
  %i.hxo = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store i64 %i.hxn, ptr %i.hxo, align 8, !tbaa !81
  br label %.split3462

bb.asc:                                           ; preds = %bb.asa
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.fzw, ptr %i.e, align 8, !tbaa !92
  br label %.split3462.thread

bb.asd:                                           ; preds = %bb.arv
  store i64 20, ptr %.5453.i, align 8, !tbaa !79
  %i.hxp = select i1 %i.gab, i64 -9223372036854775808, i64 0
  %i.hxq = or disjoint i64 %.0601.i, %i.hxp
  %i.hxr = getelementptr inbounds nuw i8, ptr %.5453.i, i64 8
  store i64 %i.hxq, ptr %i.hxr, align 8, !tbaa !81
  br label %.split3462

.split3462.thread:                                ; preds = %bb.aqw, %bb.asc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bpp

.split3462:                                       ; preds = %bb.asd, %bb.asb, %bb.arz, %bb.aqy, %bb.aqv, %bb.aqt
  store ptr %.7, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4134

.preheader4134:                                   ; preds = %bb.awu, %bb.awv, %bb.axd, %bb.axc, %bb.awa, %bb.avz, %bb.axo, %bb.bpg, %.split3437, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit, %.split3453, %.split3448, %.split3447, %.split3446, %.split3452, %.split3454, %.split3455, %.split3457, %.split3459, %.split3438, %.split3439, %.split3440, %.split3441, %.split3442, %.split3443, %.split3444, %.split3445, %.split3451, %.split3450, %.split3449, %.split3458, %.split3456, %.split3460, %.split3461, %.split3462
  %.9544.i.ph = phi i64 [ %.3538.i, %.split3461 ], [ %.3538.i, %.split3460 ], [ %.3538.i, %.split3459 ], [ %.3538.i, %.split3458 ], [ %.3538.i, %.split3457 ], [ %.3538.i, %.split3456 ], [ %.3538.i, %.split3455 ], [ %.3538.i, %.split3454 ], [ %.3538.i, %.split3453 ], [ %.3538.i, %.split3452 ], [ %.3538.i, %.split3451 ], [ %.3538.i, %.split3450 ], [ %.3538.i, %.split3449 ], [ %.3538.i, %.split3448 ], [ %.3538.i, %.split3447 ], [ %.3538.i, %.split3446 ], [ %.3538.i, %.split3445 ], [ %.3538.i, %.split3444 ], [ %.3538.i, %.split3443 ], [ %.3538.i, %.split3442 ], [ %.3538.i, %.split3441 ], [ %.3538.i, %.split3440 ], [ %.3538.i, %.split3439 ], [ %.3538.i, %.split3438 ], [ %.3538.i, %.split3437 ], [ %.3538.i, %.split3462 ], [ %.7542.i, %bb.awa ], [ %.10545.i, %bb.axo ], [ %.16551.i, %bb.bpg ], [ %.7542.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.6541.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.5540.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.4539.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.3538.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.7542.i, %bb.avz ], [ %.8543.i, %bb.axc ], [ %.8543.i, %bb.axd ], [ %.8543.i, %bb.awv ], [ %.8543.i, %bb.awu ] ; 2 uses
  %.2529.i.ph = phi i64 [ %i.fzx, %.split3461 ], [ %i.fzx, %.split3460 ], [ %i.fzx, %.split3459 ], [ %i.fzx, %.split3458 ], [ %i.fzx, %.split3457 ], [ %i.fzx, %.split3456 ], [ %i.fzx, %.split3455 ], [ %i.fzx, %.split3454 ], [ %i.fzx, %.split3453 ], [ %i.fzx, %.split3452 ], [ %i.fzx, %.split3451 ], [ %i.fzx, %.split3450 ], [ %i.fzx, %.split3449 ], [ %i.fzx, %.split3448 ], [ %i.fzx, %.split3447 ], [ %i.fzx, %.split3446 ], [ %i.fzx, %.split3445 ], [ %i.fzx, %.split3444 ], [ %i.fzx, %.split3443 ], [ %i.fzx, %.split3442 ], [ %i.fzx, %.split3441 ], [ %i.fzx, %.split3440 ], [ %i.fzx, %.split3439 ], [ %i.fzx, %.split3438 ], [ %i.fzx, %.split3437 ], [ %i.fzx, %.split3462 ], [ %i.ism, %bb.awa ], [ %i.iwp, %bb.axo ], [ %i.mlv, %bb.bpg ], [ %i.ism, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %i.iru, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %i.ira, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %i.hyj, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %i.fzx, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %i.ism, %bb.avz ], [ %i.iue, %bb.axc ], [ %i.iue, %bb.axd ], [ %i.iue, %bb.awv ], [ %i.iue, %bb.awu ] ; 2 uses
  %.16516.i.ph = phi ptr [ %.5505.i, %.split3461 ], [ %.5505.i, %.split3460 ], [ %.5505.i, %.split3459 ], [ %.5505.i, %.split3458 ], [ %.5505.i, %.split3457 ], [ %.5505.i, %.split3456 ], [ %.5505.i, %.split3455 ], [ %.5505.i, %.split3454 ], [ %.5505.i, %.split3453 ], [ %.5505.i, %.split3452 ], [ %.5505.i, %.split3451 ], [ %.5505.i, %.split3450 ], [ %.5505.i, %.split3449 ], [ %.5505.i, %.split3448 ], [ %.5505.i, %.split3447 ], [ %.5505.i, %.split3446 ], [ %.5505.i, %.split3445 ], [ %.5505.i, %.split3444 ], [ %.5505.i, %.split3443 ], [ %.5505.i, %.split3442 ], [ %.5505.i, %.split3441 ], [ %.5505.i, %.split3440 ], [ %.5505.i, %.split3439 ], [ %.5505.i, %.split3438 ], [ %.5505.i, %.split3437 ], [ %.5505.i, %.split3462 ], [ %.13513.i, %bb.awa ], [ %.17517.i, %bb.axo ], [ %.25525.i, %bb.bpg ], [ %.13513.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11511.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9509.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7507.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.5505.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.13513.i, %bb.avz ], [ %.15515.i, %bb.axc ], [ %.15515.i, %bb.axd ], [ %.15515.i, %bb.awv ], [ %.15515.i, %bb.awu ] ; 5 uses
  %.16490.i.ph = phi ptr [ %.5479.i, %.split3461 ], [ %.5479.i, %.split3460 ], [ %.5479.i, %.split3459 ], [ %.5479.i, %.split3458 ], [ %.5479.i, %.split3457 ], [ %.5479.i, %.split3456 ], [ %.5479.i, %.split3455 ], [ %.5479.i, %.split3454 ], [ %.5479.i, %.split3453 ], [ %.5479.i, %.split3452 ], [ %.5479.i, %.split3451 ], [ %.5479.i, %.split3450 ], [ %.5479.i, %.split3449 ], [ %.5479.i, %.split3448 ], [ %.5479.i, %.split3447 ], [ %.5479.i, %.split3446 ], [ %.5479.i, %.split3445 ], [ %.5479.i, %.split3444 ], [ %.5479.i, %.split3443 ], [ %.5479.i, %.split3442 ], [ %.5479.i, %.split3441 ], [ %.5479.i, %.split3440 ], [ %.5479.i, %.split3439 ], [ %.5479.i, %.split3438 ], [ %.5479.i, %.split3437 ], [ %.5479.i, %.split3462 ], [ %.13487.i, %bb.awa ], [ %.17491.i, %bb.axo ], [ %.25499.i, %bb.bpg ], [ %.13487.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11485.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9483.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7481.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.5479.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.13487.i, %bb.avz ], [ %.15489.i, %bb.axc ], [ %.15489.i, %bb.axd ], [ %.15489.i, %bb.awv ], [ %.15489.i, %bb.awu ] ; 2 uses
  %.16464.i.ph = phi ptr [ %.5453.i, %.split3461 ], [ %.5453.i, %.split3460 ], [ %.5453.i, %.split3459 ], [ %.5453.i, %.split3458 ], [ %.5453.i, %.split3457 ], [ %.5453.i, %.split3456 ], [ %.5453.i, %.split3455 ], [ %.5453.i, %.split3454 ], [ %.5453.i, %.split3453 ], [ %.5453.i, %.split3452 ], [ %.5453.i, %.split3451 ], [ %.5453.i, %.split3450 ], [ %.5453.i, %.split3449 ], [ %.5453.i, %.split3448 ], [ %.5453.i, %.split3447 ], [ %.5453.i, %.split3446 ], [ %.5453.i, %.split3445 ], [ %.5453.i, %.split3444 ], [ %.5453.i, %.split3443 ], [ %.5453.i, %.split3442 ], [ %.5453.i, %.split3441 ], [ %.5453.i, %.split3440 ], [ %.5453.i, %.split3439 ], [ %.5453.i, %.split3438 ], [ %.5453.i, %.split3437 ], [ %.5453.i, %.split3462 ], [ %.13461.i, %bb.awa ], [ %.17465.i, %bb.axo ], [ %.25473.i, %bb.bpg ], [ %.13461.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11459.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9457.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7455.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.5453.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.13461.i, %bb.avz ], [ %.15463.i, %bb.axc ], [ %.15463.i, %bb.axd ], [ %.15463.i, %bb.awv ], [ %.15463.i, %bb.awu ] ; 2 uses
  %.16.i178.ph = phi ptr [ %.5444.i, %.split3461 ], [ %.5444.i, %.split3460 ], [ %.5444.i, %.split3459 ], [ %.5444.i, %.split3458 ], [ %.5444.i, %.split3457 ], [ %.5444.i, %.split3456 ], [ %.5444.i, %.split3455 ], [ %.5444.i, %.split3454 ], [ %.5444.i, %.split3453 ], [ %.5444.i, %.split3452 ], [ %.5444.i, %.split3451 ], [ %.5444.i, %.split3450 ], [ %.5444.i, %.split3449 ], [ %.5444.i, %.split3448 ], [ %.5444.i, %.split3447 ], [ %.5444.i, %.split3446 ], [ %.5444.i, %.split3445 ], [ %.5444.i, %.split3444 ], [ %.5444.i, %.split3443 ], [ %.5444.i, %.split3442 ], [ %.5444.i, %.split3441 ], [ %.5444.i, %.split3440 ], [ %.5444.i, %.split3439 ], [ %.5444.i, %.split3438 ], [ %.5444.i, %.split3437 ], [ %.5444.i, %.split3462 ], [ %.13.i204, %bb.awa ], [ %i.iwn, %bb.axo ], [ %i.mlt, %bb.bpg ], [ %.13.i204, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit ], [ %.11.i209, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit ], [ %.9.i213, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit ], [ %.7446.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit ], [ %.5444.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit ], [ %.13.i204, %bb.avz ], [ %.15.i220, %bb.axc ], [ %.15.i220, %bb.axd ], [ %.15.i220, %bb.awv ], [ %.15.i220, %bb.awu ] ; 2 uses
  %i.hxs = and i32 %2, 8
  %.not3827 = icmp eq i32 %i.hxs, 0
  %.pre6844 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4136

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit889, %bb.akd, %bb.aph, %bb.apq, %bb.aqb, %bb.apa, %bb.apd, %bb.akh, %bb.akj, %bb.aor
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %bb.bpp

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit: ; preds = %bb.ajy, %bb.ajx, %bb.ajp, %bb.ajq, %bb.aka, %bb.als, %bb.alv, %bb.aly, %bb.amb, %bb.ame, %bb.apj, %bb.apn, %bb.app, %bb.apt, %bb.apy, %bb.aqa
  %.34.ph.sink = phi ptr [ %.11, %bb.aqa ], [ %i.gbq, %bb.aka ], [ %i.gej, %bb.als ], [ %i.geq, %bb.alv ], [ %i.gex, %bb.aly ], [ %i.gfe, %bb.amb ], [ %i.gfl, %bb.ame ], [ %.10.lcssa, %bb.apj ], [ %.10.lcssa, %bb.apn ], [ %.10.lcssa, %bb.app ], [ %.11, %bb.apt ], [ %.11, %bb.apy ], [ %i.gbk, %bb.ajx ], [ %i.gbk, %bb.ajy ], [ %.0.i1161, %bb.ajp ], [ %.0.i1161, %bb.ajq ]
  store ptr %.34.ph.sink, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  br label %.preheader4134

bb.ase:                                           ; preds = %bb.aix
  switch i8 %i.fzc, label %bb.awd [
    i8 34, label %bb.asf
    i8 116, label %bb.avj
    i8 102, label %bb.avm
    i8 110, label %bb.avp
    i8 93, label %bb.awb
  ]

bb.asf:                                           ; preds = %bb.ase
  %i.hxt = getelementptr inbounds nuw i8, ptr %.3451.i.ph, i64 16 ; 3 uses
  %.not609.i214 = icmp ult ptr %i.hxt, %.3477.i.ph
  br i1 %.not609.i214, label %bb.ash, label %bb.asg, !prof !24

bb.asg:                                           ; preds = %bb.asf
  %i.hxu = lshr i64 %.2537.i.ph, 1
  %i.hxv = add i64 %i.hxu, %.2537.i.ph            ; 3 uses
  %i.hxw = shl i64 %.2537.i.ph, 4
  %i.hxx = shl i64 %i.hxv, 4
  %i.hxy = tail call noundef ptr %.sroa.8.0(ptr noundef %.sroa.15.0, ptr noundef %.3503.i.ph, i64 noundef %i.hxw, i64 noundef %i.hxx), !inline_history !219 ; 5 uses
  %.not610.i215 = icmp eq ptr %i.hxy, null
  %.pre6881 = load ptr, ptr %i.e, align 8, !tbaa !92 ; 2 uses
  br i1 %.not610.i215, label %bb.bpt, label %.thread3463

.thread3463:                                      ; preds = %bb.asg
  %i.hxz = ptrtoint ptr %i.hxt to i64
  %i.hya = ptrtoint ptr %.3503.i.ph to i64        ; 2 uses
  %i.hyb = sub i64 %i.hxz, %i.hya
  %i.hyc = getelementptr inbounds nuw i8, ptr %i.hxy, i64 %i.hyb
  %i.hyd = ptrtoint ptr %.3442.i.ph to i64
  %i.hye = sub i64 %i.hyd, %i.hya
  %i.hyf = getelementptr inbounds nuw i8, ptr %i.hxy, i64 %i.hye
  %i.hyg = getelementptr [16 x i8], ptr %i.hxy, i64 %i.hxv
  %i.hyh = getelementptr i8, ptr %i.hyg, i64 -32
  br label %bb.ash

bb.ash:                                           ; preds = %.thread3463, %bb.asf
  %i.hyi = phi ptr [ %.pre6881, %.thread3463 ], [ %.promoted5613, %bb.asf ]
  %.4539.i = phi i64 [ %i.hxv, %.thread3463 ], [ %.2537.i.ph, %bb.asf ]
  %.7507.i = phi ptr [ %i.hxy, %.thread3463 ], [ %.3503.i.ph, %bb.asf ] ; 11 uses
  %.7481.i = phi ptr [ %i.hyh, %.thread3463 ], [ %.3477.i.ph, %bb.asf ]
  %.7455.i = phi ptr [ %i.hyc, %.thread3463 ], [ %i.hxt, %bb.asf ] ; 3 uses
  %.7446.i = phi ptr [ %i.hyf, %.thread3463 ], [ %.3442.i.ph, %bb.asf ]
  %i.hyj = add i64 %.1528.i.ph, 1
  %i.hyk = getelementptr inbounds nuw i8, ptr %i.hyi, i64 1 ; 3 uses
  br label %.backedge4110

.backedge4110:                                    ; preds = %.backedge4110.backedge, %bb.ash
  %.0269.i = phi ptr [ %i.hyk, %bb.ash ], [ %.0269.i.be, %.backedge4110.backedge ] ; 3 uses
  %i.hyl = load i8, ptr %.0269.i, align 1, !tbaa !81 ; 2 uses
  %i.hym = zext i8 %i.hyl to i64
  %i.hyn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.hym
  %i.hyo = load i8, ptr %i.hyn, align 1, !tbaa !81
  %i.hyp = and i8 %i.hyo, 12
  %.not37345773 = icmp eq i8 %i.hyp, 0
  br i1 %.not37345773, label %.lr.ph5776, label %.split.loop.exit5757, !prof !159

.lr.ph5776:                                       ; preds = %.backedge4110, %bb.asw
  %.1270.i5774 = phi ptr [ %i.icc, %bb.asw ], [ %.0269.i, %.backedge4110 ] ; 31 uses
  %i.hyq = getelementptr inbounds nuw i8, ptr %.1270.i5774, i64 1
  %i.hyr = load i8, ptr %i.hyq, align 1, !tbaa !81 ; 2 uses
  %i.hys = zext i8 %i.hyr to i64
  %i.hyt = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.hys
  %i.hyu = load i8, ptr %i.hyt, align 1, !tbaa !81
  %i.hyv = and i8 %i.hyu, 12
  %.not3735 = icmp eq i8 %i.hyv, 0
  br i1 %.not3735, label %bb.asi, label %.split.loop.exit5757.loopexit.split.loop.exit8471, !prof !24

bb.asi:                                           ; preds = %.lr.ph5776
end_hunk_5
begin_hunk_6_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.split3556:                                       ; preds = %bb.blp, %bb.bln
  %.03132 = phi i64 [ %i.ljj, %bb.bln ], [ %i.ljz, %bb.blp ] ; 2 uses
  %i.lka = icmp sgt i64 %.03132, -1               ; 2 uses
  %.neg674.i290 = sext i1 %i.lka to i32
  %i.lkb = zext i1 %i.lka to i64
  %i.lkc = shl i64 %.03132, %i.lkb                ; 2 uses
  %i.lkd = and i64 %i.lkc, 1024
  %i.lke = add i64 %i.lkd, %i.lkc                 ; 2 uses
  %i.lkf = icmp ult i64 %i.lke, 1024
  %spec.select3589.v = select i1 %i.lkf, i32 65, i32 64
  %i.lkg = lshr i64 %i.lke, 11
  %reass.sub5866 = sub nsw i32 %i.ljb, %i.ljd
  %i.lkh = add nsw i32 %reass.sub5866, 1086
  %spec.select3589 = add nsw i32 %i.lkh, %.neg674.i290
  %i.lki = add nsw i32 %spec.select3589, %spec.select3589.v
  %i.lkj = zext nneg i32 %i.lki to i64
  %i.lkk = shl nuw nsw i64 %i.lkj, 52
  %i.lkl = and i64 %i.lkg, 4503599627370495
  %i.lkm = or disjoint i64 %i.lkk, %i.lkl
  store i64 20, ptr %i.kkg, align 8, !tbaa !79
  %i.lkn = select i1 %i.kkk, i64 -9223372036854775808, i64 0
  %i.lko = or disjoint i64 %i.lkm, %i.lkn
  %i.lkp = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store i64 %i.lko, ptr %i.lkp, align 8, !tbaa !81
  store ptr %.73141, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.preheader4139

.critedge689.i289:                                ; preds = %..critedge689.i289_crit_edge, %bb.blo
  %.pre-phi6926 = phi i32 [ %.pre6925, %..critedge689.i289_crit_edge ], [ %i.ljd, %bb.blo ]
  %.pre-phi6924 = phi i128 [ %.pre6923, %..critedge689.i289_crit_edge ], [ %i.ljf, %bb.blo ]
  %.pre-phi6922 = phi i32 [ %.pre6921, %..critedge689.i289_crit_edge ], [ %i.ljb, %bb.blo ]
  %.pre-phi6916 = phi i32 [ %.pre6915, %..critedge689.i289_crit_edge ], [ %i.liu, %bb.blo ] ; 2 uses
  %.pre-phi6912 = phi i64 [ %.pre6911, %..critedge689.i289_crit_edge ], [ %i.ljc, %bb.blo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.lkq = select i1 %i.liq, i64 0, i64 4
  %i.lkr = shl i64 %i.lkq, %.pre-phi6912          ; 2 uses
  %i.lks = add i32 %.pre-phi6916, 686
  %i.lkt = sext i32 %i.lks to i64
  %i.lku = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.lkt
  %i.lkv = load i64, ptr %i.lku, align 16, !tbaa !91
  %i.lkw = add i32 %.pre-phi6916, 687
  %i.lkx = sext i32 %i.lkw to i64
  %i.lky = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.lkx
  %i.lkz = load i64, ptr %i.lky, align 8, !tbaa !91
  %i.lla = lshr i64 %i.lkz, 63
  %i.llb = add i64 %i.lla, %i.lkv
  %i.llc = zext i64 %i.llb to i128
  %i.lld = mul nuw i128 %.pre-phi6924, %i.llc     ; 2 uses
  %i.lle = lshr i128 %i.lld, 64
  %i.llf = trunc nuw i128 %i.lle to i64
  %i.llg = trunc i128 %i.lld to i64
  %i.llh = lshr i64 %i.llg, 63
  %i.lli = add nuw i64 %i.llh, %i.llf             ; 2 uses
  %.not677.i268 = icmp eq i64 %i.lkr, 0
  %i.llj = select i1 %.not677.i268, i64 8, i64 9
  %i.llk = add i64 %i.llj, %i.lkr
  %i.lll = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lli, i1 true) ; 3 uses
  %i.llm = trunc nuw nsw i64 %i.lll to i32
  %i.lln = shl i64 %i.lli, %i.lll                 ; 3 uses
  %i.llo = add nsw i32 %.pre-phi6922, 64
  %i.llp = add nuw nsw i32 %.pre-phi6926, %i.llm
  %i.llq = sub nsw i32 %i.llo, %i.llp             ; 7 uses
  %i.llr = shl i64 %i.llk, %i.lll                 ; 3 uses
  %i.lls = icmp sgt i32 %i.llq, -1086
  br i1 %i.lls, label %.thread3521, label %bb.blq, !prof !24

bb.blq:                                           ; preds = %.critedge689.i289
  %i.llt = icmp samesign ult i32 %i.llq, -1137
  br i1 %i.llt, label %.thread3518, label %bb.blr

bb.blr:                                           ; preds = %bb.blq
  %i.llu = sub nuw nsw i32 -1074, %i.llq          ; 2 uses
  %i.llv = icmp samesign ult i32 %i.llq, -1134
  br i1 %i.llv, label %.thread3518, label %.thread3521, !prof !121

.thread3518:                                      ; preds = %bb.blq, %bb.blr
  %.0603.i2713520 = phi i32 [ %i.llu, %bb.blr ], [ 64, %bb.blq ]
  %i.llw = add nsw i32 %.0603.i2713520, -60       ; 2 uses
  %i.llx = zext nneg i32 %i.llw to i64            ; 2 uses
  %i.lly = lshr i64 %i.lln, %i.llx
  %i.llz = add nsw i32 %i.llw, %i.llq
  %i.lma = lshr i64 %i.llr, %i.llx
  %i.lmb = add nuw i64 %i.lma, 9
  br label %.thread3521

.thread3521:                                      ; preds = %.critedge689.i289, %.thread3518, %bb.blr
  %.0604.i272 = phi i64 [ %i.lmb, %.thread3518 ], [ %i.llr, %bb.blr ], [ %i.llr, %.critedge689.i289 ] ; 2 uses
  %.0602.i273 = phi i32 [ 60, %.thread3518 ], [ %i.llu, %bb.blr ], [ 11, %.critedge689.i289 ] ; 3 uses
  %.sroa.19.0.in.i274 = phi i32 [ %i.llz, %.thread3518 ], [ %i.llq, %bb.blr ], [ %i.llq, %.critedge689.i289 ]
  %.sroa.029.0.i275 = phi i64 [ %i.lly, %.thread3518 ], [ %i.lln, %bb.blr ], [ %i.lln, %.critedge689.i289 ] ; 2 uses
  %i.lmc = zext nneg i32 %.0602.i273 to i64       ; 2 uses
  %notmask.i276 = shl nsw i64 -1, %i.lmc
  %i.lmd = xor i64 %notmask.i276, -1
  %i.lme = and i64 %.sroa.029.0.i275, %i.lmd
  %i.lmf = shl nuw nsw i64 %i.lme, 3              ; 2 uses
  %i.lmg = add nsw i32 %.0602.i273, -1
  %i.lmh = zext nneg i32 %i.lmg to i64
  %i.lmi = shl nuw nsw i64 8, %i.lmh              ; 2 uses
  %i.lmj = lshr i64 %.sroa.029.0.i275, %i.lmc
  %i.lmk = add i64 %i.lmi, %.0604.i272
  %i.lml = icmp uge i64 %i.lmf, %i.lmk            ; 2 uses
  %i.lmm = zext i1 %i.lml to i64
  %i.lmn = add nuw nsw i64 %i.lmj, %i.lmm         ; 3 uses
  %i.lmo = icmp eq i64 %i.lmn, 0
  br i1 %i.lmo, label %bb.bmd, label %bb.bls, !prof !7

bb.bls:                                           ; preds = %.thread3521
  %i.lmp = add nsw i32 %.sroa.19.0.in.i274, %.0602.i273
  %i.lmq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.lmn, i1 true) ; 2 uses
  %i.lmr = trunc nuw nsw i64 %i.lmq to i32
  %i.lms = shl i64 %i.lmn, %i.lmq
  %i.lmt = lshr i64 %i.lms, 11                    ; 2 uses
  %i.lmu = sub nsw i32 %i.lmp, %i.lmr             ; 5 uses
  %i.lmv = icmp sgt i32 %i.lmu, 960
  br i1 %i.lmv, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1208, label %bb.blt, !prof !7

bb.blt:                                           ; preds = %bb.bls
  %i.lmw = icmp sgt i32 %i.lmu, -1086
  br i1 %i.lmw, label %bb.blu, label %bb.blv, !prof !24

bb.blu:                                           ; preds = %bb.blt
  %i.lmx = add nsw i32 %i.lmu, 1086
  %i.lmy = zext nneg i32 %i.lmx to i64
  %i.lmz = shl nuw nsw i64 %i.lmy, 52
  %i.lna = and i64 %i.lmt, 4503599627370495
  %i.lnb = or disjoint i64 %i.lmz, %i.lna
  br label %bb.bmd

bb.blv:                                           ; preds = %bb.blt
  %i.lnc = icmp samesign ugt i32 %i.lmu, -1138
  br i1 %i.lnc, label %bb.blw, label %bb.bmd, !prof !24

bb.blw:                                           ; preds = %bb.blv
  %i.lnd = sub nuw nsw i32 -1085, %i.lmu
  %i.lne = zext nneg i32 %i.lnd to i64
  %i.lnf = lshr i64 %i.lmt, %i.lne
  br label %bb.bmd

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1208: ; preds = %bb.bls
  br i1 %.not3643, label %bb.bma, label %bb.blx, !prof !24

bb.blx:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1208
  %i.lng = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not682.i288 = icmp eq ptr %i.lng, null
  br i1 %.not682.i288, label %bb.blz, label %bb.bly

bb.bly:                                           ; preds = %bb.blx
  store i8 0, ptr %i.lng, align 1, !tbaa !81
  br label %bb.blz

bb.blz:                                           ; preds = %bb.bly, %bb.blx
  %i.lnh = ptrtoint ptr %.73141 to i64
  %i.lni = ptrtoint ptr %i.kkb to i64
  %i.lnj = sub i64 %i.lnh, %i.lni
  %i.lnk = shl i64 %i.lnj, 8
  %i.lnl = or disjoint i64 %i.lnk, 1
  store i64 %i.lnl, ptr %i.kkg, align 8, !tbaa !79
  %i.lnm = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store ptr %i.kkb, ptr %i.lnm, align 8, !tbaa !81
  store ptr %.73141, ptr %i.g, align 8, !tbaa !92
  br label %.split3557

bb.bma:                                           ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit1208
  br i1 %.not3640, label %bb.bmc, label %bb.bmb, !prof !24

bb.bmb:                                           ; preds = %bb.bma
  store i64 20, ptr %i.kkg, align 8, !tbaa !79
  %i.lnn = select i1 %i.kkk, i64 -4503599627370496, i64 9218868437227405312
  %i.lno = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store i64 %i.lnn, ptr %i.lno, align 8, !tbaa !81
  br label %.split3557

bb.bmc:                                           ; preds = %bb.bma
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  br label %.split3557.thread

bb.bmd:                                           ; preds = %.thread3521, %bb.blu, %bb.blw, %bb.blv
  %.0.i1207.ph = phi i64 [ 0, %bb.blv ], [ %i.lnf, %bb.blw ], [ %i.lnb, %bb.blu ], [ 0, %.thread3521 ] ; 7 uses
  %i.lnp = sub i64 %i.lmi, %.0604.i272
  %.not678.i278 = icmp ule i64 %i.lmf, %i.lnp
  %spec.select.i279 = or i1 %.not678.i278, %i.lml
  br i1 %spec.select.i279, label %bb.bme, label %bb.bmf, !prof !24

bb.bme:                                           ; preds = %bb.bmd
  store i64 20, ptr %i.kkg, align 8, !tbaa !79
  %i.lnq = select i1 %i.kkk, i64 -9223372036854775808, i64 0
  %i.lnr = or disjoint i64 %.0.i1207.ph, %i.lnq
  %i.lns = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store i64 %i.lnr, ptr %i.lns, align 8, !tbaa !81
  br label %.split3557

bb.bmf:                                           ; preds = %bb.bmd
  %.not679.i280 = icmp samesign ult i64 %.0.i1207.ph, 4503599627370496 ; 2 uses
  %i.lnt = and i64 %.0.i1207.ph, 4503599627370495
  %i.lnu = or disjoint i64 %i.lnt, 4503599627370496
  %i.lnv = lshr i64 %.0.i1207.ph, 52
  %i.lnw = trunc nuw nsw i64 %i.lnv to i32
  %i.lnx = add nsw i32 %i.lnw, -1076
  %.sroa.9.0.i281 = select i1 %.not679.i280, i32 -1075, i32 %i.lnx ; 4 uses
  %.sroa.022.0.i282 = select i1 %.not679.i280, i64 %.0.i1207.ph, i64 %i.lnu
  %i.lny = shl nuw nsw i64 %.sroa.022.0.i282, 1
  %i.lnz = or disjoint i64 %i.lny, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %9, i64 noundef %.22596.i260, ptr noundef %i.c, ptr noundef %.3565.i263, ptr noundef %.3569.i262, ptr noundef %.23.i261)
  %i.loa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 29 uses
  store i64 %i.lnz, ptr %i.loa, align 8, !tbaa !91
  %i.lob = load i32, ptr %i.c, align 4, !tbaa !3  ; 6 uses
  %i.loc = icmp sgt i32 %i.lob, -1
  br i1 %i.loc, label %.preheader4159, label %bb.bmn

.preheader4159:                                   ; preds = %bb.bmf
  %.promoted5442 = load i32, ptr %9, align 8      ; 2 uses
  %i.lod = icmp samesign ugt i32 %i.lob, 18
  br i1 %i.lod, label %.lr.ph5445, label %._crit_edge5446

.lr.ph5445:                                       ; preds = %.preheader4159
  %i.loe = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %bb.bmg

bb.bmg:                                           ; preds = %.lr.ph5445, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369
  %.0.i12225444 = phi i32 [ %i.lob, %.lr.ph5445 ], [ %i.lps, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369 ] ; 2 uses
  %i.lof = phi i32 [ %.promoted5442, %.lr.ph5445 ], [ %i.lpr, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369 ] ; 9 uses
  %.not5864 = icmp eq i32 %i.lof, 0
  br i1 %.not5864, label %._crit_edge5432, label %.lr.ph5431.preheader

.lr.ph5431.preheader:                             ; preds = %bb.bmg
  %wide.trip.count6497 = zext i32 %i.lof to i64
  br label %.lr.ph5431

.lr.ph5431:                                       ; preds = %.lr.ph5431.preheader, %bb.bmh
  %indvars.iv6494 = phi i64 [ 0, %.lr.ph5431.preheader ], [ %indvars.iv.next6495, %bb.bmh ] ; 3 uses
  %i.log = getelementptr inbounds nuw [8 x i8], ptr %i.loe, i64 %indvars.iv6494
  %i.loh = load i64, ptr %i.log, align 8, !tbaa !91
  %.not.i1368 = icmp eq i64 %i.loh, 0
  br i1 %.not.i1368, label %bb.bmh, label %._crit_edge5432.loopexit

bb.bmh:                                           ; preds = %.lr.ph5431
  %indvars.iv.next6495 = add nuw nsw i64 %indvars.iv6494, 1 ; 2 uses
  %exitcond6498.not = icmp eq i64 %indvars.iv.next6495, %wide.trip.count6497
  br i1 %exitcond6498.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369, label %.lr.ph5431, !llvm.loop !174

._crit_edge5432.loopexit:                         ; preds = %.lr.ph5431
  %i.loi = trunc nuw i64 %indvars.iv6494 to i32
  br label %._crit_edge5432

._crit_edge5432:                                  ; preds = %._crit_edge5432.loopexit, %bb.bmg
  %.018.i1364.lcssa = phi i32 [ 0, %bb.bmg ], [ %i.loi, %._crit_edge5432.loopexit ] ; 2 uses
  %i.loj = icmp ult i32 %.018.i1364.lcssa, %i.lof
  br i1 %i.loj, label %.lr.ph5439.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369

.lr.ph5439.preheader:                             ; preds = %._crit_edge5432
  %i.lok = zext i32 %.018.i1364.lcssa to i64      ; 4 uses
  %wide.trip.count6502 = zext i32 %i.lof to i64   ; 2 uses
  %i.lol = sub nsw i64 %wide.trip.count6502, %i.lok ; 3 uses
  %xtraiter12300 = and i64 %i.lol, 1
  %i.lom = add nsw i64 %wide.trip.count6502, -1
  %i.lon = icmp eq i64 %i.lom, %i.lok
  br i1 %i.lon, label %.lr.ph5439.epil.preheader, label %.lr.ph5439.preheader.new

.lr.ph5439.preheader.new:                         ; preds = %.lr.ph5439.preheader
  %unroll_iter12305 = and i64 %i.lol, -2
  br label %.lr.ph5439

.lr.ph5439:                                       ; preds = %.lr.ph5439, %.lr.ph5439.preheader.new
  %indvars.iv6499 = phi i64 [ %i.lok, %.lr.ph5439.preheader.new ], [ %indvars.iv.next6500.1, %.lr.ph5439 ] ; 3 uses
  %.0.i13665437 = phi i64 [ 0, %.lr.ph5439.preheader.new ], [ %i.lpd, %.lr.ph5439 ]
  %niter12306 = phi i64 [ 0, %.lr.ph5439.preheader.new ], [ %niter12306.next.1, %.lr.ph5439 ]
  %i.loo = getelementptr inbounds nuw [8 x i8], ptr %i.loe, i64 %indvars.iv6499 ; 2 uses
  %i.lop = load i64, ptr %i.loo, align 8, !tbaa !91
  %i.loq = zext i64 %i.lop to i128
  %i.lor = mul nuw i128 %i.loq, 10000000000000000000
  %i.los = zext i64 %.0.i13665437 to i128
  %i.lot = add nuw i128 %i.lor, %i.los            ; 2 uses
  %i.lou = lshr i128 %i.lot, 64
  %i.lov = trunc i128 %i.lot to i64
  store i64 %i.lov, ptr %i.loo, align 8, !tbaa !91
  %i.low = getelementptr inbounds nuw [8 x i8], ptr %i.loe, i64 %indvars.iv6499
  %i.lox = getelementptr inbounds nuw i8, ptr %i.low, i64 8 ; 2 uses
  %i.loy = load i64, ptr %i.lox, align 8, !tbaa !91
  %i.loz = zext i64 %i.loy to i128
  %i.lpa = mul nuw i128 %i.loz, 10000000000000000000
  %i.lpb = add nuw i128 %i.lpa, %i.lou            ; 2 uses
  %i.lpc = lshr i128 %i.lpb, 64                   ; 2 uses
  %i.lpd = trunc nuw i128 %i.lpc to i64           ; 3 uses
  %i.lpe = trunc i128 %i.lpb to i64
  store i64 %i.lpe, ptr %i.lox, align 8, !tbaa !91
  %indvars.iv.next6500.1 = add nuw nsw i64 %indvars.iv6499, 2 ; 2 uses
  %niter12306.next.1 = add i64 %niter12306, 2     ; 2 uses
  %niter12306.ncmp.1 = icmp eq i64 %niter12306.next.1, %unroll_iter12305
  br i1 %niter12306.ncmp.1, label %._crit_edge5440.unr-lcssa, label %.lr.ph5439, !llvm.loop !175

._crit_edge5440.unr-lcssa:                        ; preds = %.lr.ph5439
  %lcmp.mod12301.not = icmp eq i64 %xtraiter12300, 0
  br i1 %lcmp.mod12301.not, label %._crit_edge5440, label %.lr.ph5439.epil.preheader

.lr.ph5439.epil.preheader:                        ; preds = %._crit_edge5440.unr-lcssa, %.lr.ph5439.preheader
  %indvars.iv6499.epil.init = phi i64 [ %i.lok, %.lr.ph5439.preheader ], [ %indvars.iv.next6500.1, %._crit_edge5440.unr-lcssa ]
  %.0.i13665437.epil.init = phi i64 [ 0, %.lr.ph5439.preheader ], [ %i.lpd, %._crit_edge5440.unr-lcssa ]
  %lcmp.mod12304 = trunc i64 %i.lol to i1
  tail call void @llvm.assume(i1 %lcmp.mod12304)
  %i.lpf = getelementptr inbounds nuw [8 x i8], ptr %i.loe, i64 %indvars.iv6499.epil.init ; 2 uses
  %i.lpg = load i64, ptr %i.lpf, align 8, !tbaa !91
  %i.lph = zext i64 %i.lpg to i128
  %i.lpi = mul nuw i128 %i.lph, 10000000000000000000
  %i.lpj = zext i64 %.0.i13665437.epil.init to i128
  %i.lpk = add nuw i128 %i.lpi, %i.lpj            ; 2 uses
  %i.lpl = lshr i128 %i.lpk, 64                   ; 2 uses
  %i.lpm = trunc nuw i128 %i.lpl to i64
  %i.lpn = trunc i128 %i.lpk to i64
  store i64 %i.lpn, ptr %i.lpf, align 8, !tbaa !91
  br label %._crit_edge5440

._crit_edge5440:                                  ; preds = %._crit_edge5440.unr-lcssa, %.lr.ph5439.epil.preheader
  %.lcssa11021 = phi i128 [ %i.lpc, %._crit_edge5440.unr-lcssa ], [ %i.lpl, %.lr.ph5439.epil.preheader ]
  %.lcssa11020 = phi i64 [ %i.lpd, %._crit_edge5440.unr-lcssa ], [ %i.lpm, %.lr.ph5439.epil.preheader ]
  %.not19.i1367 = icmp eq i128 %.lcssa11021, 0
  br i1 %.not19.i1367, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369, label %bb.bmi

bb.bmi:                                           ; preds = %._crit_edge5440
  %i.lpo = add i32 %i.lof, 1
  %i.lpp = zext i32 %i.lof to i64
  %i.lpq = getelementptr inbounds nuw [8 x i8], ptr %i.loe, i64 %i.lpp
  store i64 %.lcssa11020, ptr %i.lpq, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369: ; preds = %bb.bmh, %._crit_edge5432, %._crit_edge5440, %bb.bmi
  %i.lpr = phi i32 [ %i.lof, %._crit_edge5440 ], [ %i.lpo, %bb.bmi ], [ %i.lof, %._crit_edge5432 ], [ %i.lof, %bb.bmh ] ; 2 uses
  %i.lps = add nsw i32 %.0.i12225444, -19         ; 2 uses
  %i.lpt = icmp sgt i32 %.0.i12225444, 37
  br i1 %i.lpt, label %bb.bmg, label %._crit_edge5446, !llvm.loop !176

._crit_edge5446:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369, %.preheader4159
  %i.lpu = phi i32 [ %.promoted5442, %.preheader4159 ], [ %i.lpr, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369 ] ; 7 uses
  %.0.i1222.lcssa = phi i32 [ %i.lob, %.preheader4159 ], [ %i.lps, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1369 ] ; 2 uses
  store i32 %i.lpu, ptr %9, align 8
  %.not.i1223 = icmp eq i32 %.0.i1222.lcssa, 0
  br i1 %.not.i1223, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224, label %bb.bmj

bb.bmj:                                           ; preds = %._crit_edge5446
  %i.lpv = sext i32 %.0.i1222.lcssa to i64
  %i.lpw = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.lpv
  %i.lpx = load i64, ptr %i.lpw, align 8, !tbaa !91
  %i.lpy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.not5865 = icmp eq i32 %i.lpu, 0
  br i1 %.not5865, label %._crit_edge5452, label %.lr.ph5451.preheader

.lr.ph5451.preheader:                             ; preds = %bb.bmj
  %wide.trip.count6507 = zext i32 %i.lpu to i64
  br label %.lr.ph5451

.lr.ph5451:                                       ; preds = %.lr.ph5451.preheader, %bb.bmk
  %indvars.iv6504 = phi i64 [ 0, %.lr.ph5451.preheader ], [ %indvars.iv.next6505, %bb.bmk ] ; 3 uses
  %i.lpz = getelementptr inbounds nuw [8 x i8], ptr %i.lpy, i64 %indvars.iv6504
  %i.lqa = load i64, ptr %i.lpz, align 8, !tbaa !91
  %.not.i1374 = icmp eq i64 %i.lqa, 0
  br i1 %.not.i1374, label %bb.bmk, label %._crit_edge5452.loopexit

bb.bmk:                                           ; preds = %.lr.ph5451
  %indvars.iv.next6505 = add nuw nsw i64 %indvars.iv6504, 1 ; 2 uses
  %exitcond6508.not = icmp eq i64 %indvars.iv.next6505, %wide.trip.count6507
  br i1 %exitcond6508.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224, label %.lr.ph5451, !llvm.loop !174

._crit_edge5452.loopexit:                         ; preds = %.lr.ph5451
  %i.lqb = trunc nuw i64 %indvars.iv6504 to i32
  br label %._crit_edge5452

._crit_edge5452:                                  ; preds = %._crit_edge5452.loopexit, %bb.bmj
  %.018.i1370.lcssa = phi i32 [ 0, %bb.bmj ], [ %i.lqb, %._crit_edge5452.loopexit ] ; 2 uses
  %i.lqc = icmp ult i32 %.018.i1370.lcssa, %i.lpu
  br i1 %i.lqc, label %.lr.ph5459, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224

.lr.ph5459:                                       ; preds = %._crit_edge5452
  %i.lqd = zext i64 %i.lpx to i128                ; 3 uses
  %i.lqe = zext i32 %.018.i1370.lcssa to i64      ; 4 uses
  %wide.trip.count6512 = zext i32 %i.lpu to i64   ; 2 uses
  %i.lqf = sub nsw i64 %wide.trip.count6512, %i.lqe ; 3 uses
  %xtraiter12308 = and i64 %i.lqf, 1
  %i.lqg = add nsw i64 %wide.trip.count6512, -1
  %i.lqh = icmp eq i64 %i.lqg, %i.lqe
  br i1 %i.lqh, label %.epil.preheader12307, label %.lr.ph5459.new

.lr.ph5459.new:                                   ; preds = %.lr.ph5459
  %unroll_iter12313 = and i64 %i.lqf, -2
  br label %bb.bml

bb.bml:                                           ; preds = %bb.bml, %.lr.ph5459.new
  %indvars.iv6509 = phi i64 [ %i.lqe, %.lr.ph5459.new ], [ %indvars.iv.next6510.1, %bb.bml ] ; 3 uses
  %.0.i13725457 = phi i64 [ 0, %.lr.ph5459.new ], [ %i.lqx, %bb.bml ]
  %niter12314 = phi i64 [ 0, %.lr.ph5459.new ], [ %niter12314.next.1, %bb.bml ]
  %i.lqi = getelementptr inbounds nuw [8 x i8], ptr %i.lpy, i64 %indvars.iv6509 ; 2 uses
  %i.lqj = load i64, ptr %i.lqi, align 8, !tbaa !91
  %i.lqk = zext i64 %i.lqj to i128
  %i.lql = mul nuw i128 %i.lqk, %i.lqd
  %i.lqm = zext i64 %.0.i13725457 to i128
  %i.lqn = add nuw i128 %i.lql, %i.lqm            ; 2 uses
  %i.lqo = lshr i128 %i.lqn, 64
  %i.lqp = trunc i128 %i.lqn to i64
  store i64 %i.lqp, ptr %i.lqi, align 8, !tbaa !91
  %i.lqq = getelementptr inbounds nuw [8 x i8], ptr %i.lpy, i64 %indvars.iv6509
  %i.lqr = getelementptr inbounds nuw i8, ptr %i.lqq, i64 8 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN13duckdb_yyjson16yyjson_read_optsEPcmjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.lr.ph5405:                                       ; preds = %.lr.ph5405, %.lr.ph5405.preheader.new
  %indvars.iv6479 = phi i64 [ %i.lrt, %.lr.ph5405.preheader.new ], [ %indvars.iv.next6480.1, %.lr.ph5405 ] ; 3 uses
  %.0.i13545403 = phi i64 [ 0, %.lr.ph5405.preheader.new ], [ %i.lsm, %.lr.ph5405 ]
  %niter12291 = phi i64 [ 0, %.lr.ph5405.preheader.new ], [ %niter12291.next.1, %.lr.ph5405 ]
  %i.lrx = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6479 ; 2 uses
  %i.lry = load i64, ptr %i.lrx, align 8, !tbaa !91
  %i.lrz = zext i64 %i.lry to i128
  %i.lsa = mul nuw i128 %i.lrz, 10000000000000000000
  %i.lsb = zext i64 %.0.i13545403 to i128
  %i.lsc = add nuw i128 %i.lsa, %i.lsb            ; 2 uses
  %i.lsd = lshr i128 %i.lsc, 64
  %i.lse = trunc i128 %i.lsc to i64
  store i64 %i.lse, ptr %i.lrx, align 8, !tbaa !91
  %i.lsf = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6479
  %i.lsg = getelementptr inbounds nuw i8, ptr %i.lsf, i64 8 ; 2 uses
  %i.lsh = load i64, ptr %i.lsg, align 8, !tbaa !91
  %i.lsi = zext i64 %i.lsh to i128
  %i.lsj = mul nuw i128 %i.lsi, 10000000000000000000
  %i.lsk = add nuw i128 %i.lsj, %i.lsd            ; 2 uses
  %i.lsl = lshr i128 %i.lsk, 64                   ; 2 uses
  %i.lsm = trunc nuw i128 %i.lsl to i64           ; 3 uses
  %i.lsn = trunc i128 %i.lsk to i64
  store i64 %i.lsn, ptr %i.lsg, align 8, !tbaa !91
  %indvars.iv.next6480.1 = add nuw nsw i64 %indvars.iv6479, 2 ; 2 uses
  %niter12291.next.1 = add i64 %niter12291, 2     ; 2 uses
  %niter12291.ncmp.1 = icmp eq i64 %niter12291.next.1, %unroll_iter12290
  br i1 %niter12291.ncmp.1, label %._crit_edge5406.unr-lcssa, label %.lr.ph5405, !llvm.loop !175

._crit_edge5406.unr-lcssa:                        ; preds = %.lr.ph5405
  %lcmp.mod12286.not = icmp eq i64 %xtraiter12285, 0
  br i1 %lcmp.mod12286.not, label %._crit_edge5406, label %.lr.ph5405.epil.preheader

.lr.ph5405.epil.preheader:                        ; preds = %._crit_edge5406.unr-lcssa, %.lr.ph5405.preheader
  %indvars.iv6479.epil.init = phi i64 [ %i.lrt, %.lr.ph5405.preheader ], [ %indvars.iv.next6480.1, %._crit_edge5406.unr-lcssa ]
  %.0.i13545403.epil.init = phi i64 [ 0, %.lr.ph5405.preheader ], [ %i.lsm, %._crit_edge5406.unr-lcssa ]
  %lcmp.mod12289 = trunc i64 %i.lru to i1
  tail call void @llvm.assume(i1 %lcmp.mod12289)
  %i.lso = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6479.epil.init ; 2 uses
  %i.lsp = load i64, ptr %i.lso, align 8, !tbaa !91
  %i.lsq = zext i64 %i.lsp to i128
  %i.lsr = mul nuw i128 %i.lsq, 10000000000000000000
  %i.lss = zext i64 %.0.i13545403.epil.init to i128
  %i.lst = add nuw i128 %i.lsr, %i.lss            ; 2 uses
  %i.lsu = lshr i128 %i.lst, 64                   ; 2 uses
  %i.lsv = trunc nuw i128 %i.lsu to i64
  %i.lsw = trunc i128 %i.lst to i64
  store i64 %i.lsw, ptr %i.lso, align 8, !tbaa !91
  br label %._crit_edge5406

._crit_edge5406:                                  ; preds = %._crit_edge5406.unr-lcssa, %.lr.ph5405.epil.preheader
  %.lcssa11030 = phi i128 [ %i.lsl, %._crit_edge5406.unr-lcssa ], [ %i.lsu, %.lr.ph5405.epil.preheader ]
  %.lcssa11029 = phi i64 [ %i.lsm, %._crit_edge5406.unr-lcssa ], [ %i.lsv, %.lr.ph5405.epil.preheader ]
  %.not19.i1355 = icmp eq i128 %.lcssa11030, 0
  br i1 %.not19.i1355, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1357, label %bb.bmp

bb.bmp:                                           ; preds = %._crit_edge5406
  %i.lsx = add i32 %i.lro, 1
  %i.lsy = zext i32 %i.lro to i64
  %i.lsz = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lsy
  store i64 %.lcssa11029, ptr %i.lsz, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1357

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1357: ; preds = %bb.bmo, %._crit_edge5398, %._crit_edge5406, %bb.bmp
  %i.lta = phi i32 [ %i.lro, %._crit_edge5406 ], [ %i.lsx, %bb.bmp ], [ %i.lro, %._crit_edge5398 ], [ %i.lro, %bb.bmo ] ; 5 uses
  %i.ltb = add nsw i32 %.0.i12255410, -19         ; 3 uses
  %i.ltc = icmp sgt i32 %.0.i12255410, 37
  br i1 %i.ltc, label %.lr.ph5412, label %._crit_edge5413, !llvm.loop !176

._crit_edge5413:                                  ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit1357
  store i32 %i.lta, ptr %10, align 8
  %.not.i1226 = icmp eq i32 %i.ltb, 0
  br i1 %.not.i1226, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224, label %bb.bmq

bb.bmq:                                           ; preds = %._crit_edge5413
  %i.ltd = sext i32 %i.ltb to i64
  %i.lte = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.ltd
  %i.ltf = load i64, ptr %i.lte, align 8, !tbaa !91 ; 2 uses
  %.not5863 = icmp eq i32 %i.lta, 0
  br i1 %.not5863, label %._crit_edge5419, label %.lr.ph5418.preheader

.lr.ph5418.preheader:                             ; preds = %.thread7508, %bb.bmq
  %i.ltg = phi i64 [ %i.lrn, %.thread7508 ], [ %i.ltf, %bb.bmq ]
  %i.lth = phi i32 [ 1, %.thread7508 ], [ %i.lta, %bb.bmq ] ; 3 uses
  %wide.trip.count6487 = zext i32 %i.lth to i64
  br label %.lr.ph5418

.lr.ph5418:                                       ; preds = %.lr.ph5418.preheader, %bb.bmr
  %indvars.iv6484 = phi i64 [ 0, %.lr.ph5418.preheader ], [ %indvars.iv.next6485, %bb.bmr ] ; 3 uses
  %i.lti = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6484
  %i.ltj = load i64, ptr %i.lti, align 8, !tbaa !91
  %.not.i1362 = icmp eq i64 %i.ltj, 0
  br i1 %.not.i1362, label %bb.bmr, label %._crit_edge5419.loopexit

bb.bmr:                                           ; preds = %.lr.ph5418
  %indvars.iv.next6485 = add nuw nsw i64 %indvars.iv6484, 1 ; 2 uses
  %exitcond6488.not = icmp eq i64 %indvars.iv.next6485, %wide.trip.count6487
  br i1 %exitcond6488.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224, label %.lr.ph5418, !llvm.loop !174

._crit_edge5419.loopexit:                         ; preds = %.lr.ph5418
  %i.ltk = trunc nuw i64 %indvars.iv6484 to i32
  br label %._crit_edge5419

._crit_edge5419:                                  ; preds = %._crit_edge5419.loopexit, %bb.bmq
  %i.ltl = phi i64 [ %i.ltf, %bb.bmq ], [ %i.ltg, %._crit_edge5419.loopexit ]
  %i.ltm = phi i32 [ 0, %bb.bmq ], [ %i.lth, %._crit_edge5419.loopexit ] ; 6 uses
  %.018.i1358.lcssa = phi i32 [ 0, %bb.bmq ], [ %i.ltk, %._crit_edge5419.loopexit ] ; 2 uses
  %i.ltn = icmp ult i32 %.018.i1358.lcssa, %i.ltm
  br i1 %i.ltn, label %.lr.ph5426, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224

.lr.ph5426:                                       ; preds = %._crit_edge5419
  %i.lto = zext i64 %i.ltl to i128                ; 3 uses
  %i.ltp = zext i32 %.018.i1358.lcssa to i64      ; 4 uses
  %wide.trip.count6492 = zext i32 %i.ltm to i64   ; 2 uses
  %i.ltq = sub nsw i64 %wide.trip.count6492, %i.ltp ; 3 uses
  %xtraiter12293 = and i64 %i.ltq, 1
  %i.ltr = add nsw i64 %wide.trip.count6492, -1
  %i.lts = icmp eq i64 %i.ltr, %i.ltp
  br i1 %i.lts, label %.epil.preheader12292, label %.lr.ph5426.new

.lr.ph5426.new:                                   ; preds = %.lr.ph5426
  %unroll_iter12298 = and i64 %i.ltq, -2
  br label %bb.bms

bb.bms:                                           ; preds = %bb.bms, %.lr.ph5426.new
  %indvars.iv6489 = phi i64 [ %i.ltp, %.lr.ph5426.new ], [ %indvars.iv.next6490.1, %bb.bms ] ; 3 uses
  %.0.i13605424 = phi i64 [ 0, %.lr.ph5426.new ], [ %i.lui, %bb.bms ]
  %niter12299 = phi i64 [ 0, %.lr.ph5426.new ], [ %niter12299.next.1, %bb.bms ]
  %i.ltt = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6489 ; 2 uses
  %i.ltu = load i64, ptr %i.ltt, align 8, !tbaa !91
  %i.ltv = zext i64 %i.ltu to i128
  %i.ltw = mul nuw i128 %i.ltv, %i.lto
  %i.ltx = zext i64 %.0.i13605424 to i128
  %i.lty = add nuw i128 %i.ltw, %i.ltx            ; 2 uses
  %i.ltz = lshr i128 %i.lty, 64
  %i.lua = trunc i128 %i.lty to i64
  store i64 %i.lua, ptr %i.ltt, align 8, !tbaa !91
  %i.lub = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6489
  %i.luc = getelementptr inbounds nuw i8, ptr %i.lub, i64 8 ; 2 uses
  %i.lud = load i64, ptr %i.luc, align 8, !tbaa !91
  %i.lue = zext i64 %i.lud to i128
  %i.luf = mul nuw i128 %i.lue, %i.lto
  %i.lug = add nuw i128 %i.luf, %i.ltz            ; 2 uses
  %i.luh = lshr i128 %i.lug, 64                   ; 2 uses
  %i.lui = trunc nuw i128 %i.luh to i64           ; 3 uses
  %i.luj = trunc i128 %i.lug to i64
  store i64 %i.luj, ptr %i.luc, align 8, !tbaa !91
  %indvars.iv.next6490.1 = add nuw nsw i64 %indvars.iv6489, 2 ; 2 uses
  %niter12299.next.1 = add i64 %niter12299, 2     ; 2 uses
  %niter12299.ncmp.1 = icmp eq i64 %niter12299.next.1, %unroll_iter12298
  br i1 %niter12299.ncmp.1, label %._crit_edge5427.unr-lcssa, label %bb.bms, !llvm.loop !175

._crit_edge5427.unr-lcssa:                        ; preds = %bb.bms
  %lcmp.mod12294.not = icmp eq i64 %xtraiter12293, 0
  br i1 %lcmp.mod12294.not, label %._crit_edge5427, label %.epil.preheader12292

.epil.preheader12292:                             ; preds = %._crit_edge5427.unr-lcssa, %.lr.ph5426
  %indvars.iv6489.epil.init = phi i64 [ %i.ltp, %.lr.ph5426 ], [ %indvars.iv.next6490.1, %._crit_edge5427.unr-lcssa ]
  %.0.i13605424.epil.init = phi i64 [ 0, %.lr.ph5426 ], [ %i.lui, %._crit_edge5427.unr-lcssa ]
  %lcmp.mod12297 = trunc i64 %i.ltq to i1
  tail call void @llvm.assume(i1 %lcmp.mod12297)
  %i.luk = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6489.epil.init ; 2 uses
  %i.lul = load i64, ptr %i.luk, align 8, !tbaa !91
  %i.lum = zext i64 %i.lul to i128
  %i.lun = mul nuw i128 %i.lum, %i.lto
  %i.luo = zext i64 %.0.i13605424.epil.init to i128
  %i.lup = add nuw i128 %i.lun, %i.luo            ; 2 uses
  %i.luq = lshr i128 %i.lup, 64                   ; 2 uses
  %i.lur = trunc nuw i128 %i.luq to i64
  %i.lus = trunc i128 %i.lup to i64
  store i64 %i.lus, ptr %i.luk, align 8, !tbaa !91
  br label %._crit_edge5427

._crit_edge5427:                                  ; preds = %._crit_edge5427.unr-lcssa, %.epil.preheader12292
  %.lcssa11025 = phi i128 [ %i.luh, %._crit_edge5427.unr-lcssa ], [ %i.luq, %.epil.preheader12292 ]
  %.lcssa11024 = phi i64 [ %i.lui, %._crit_edge5427.unr-lcssa ], [ %i.lur, %.epil.preheader12292 ]
  %.not19.i1361 = icmp eq i128 %.lcssa11025, 0
  br i1 %.not19.i1361, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224, label %bb.bmt

bb.bmt:                                           ; preds = %._crit_edge5427
  %i.lut = add i32 %i.ltm, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224.sink.split: ; preds = %bb.bmm, %bb.bmt
  %.sink8590.a = phi i32 [ %i.ltm, %bb.bmt ], [ %i.lpu, %bb.bmm ]
  %i.luu = phi ptr [ %10, %bb.bmt ], [ %9, %bb.bmm ]
  %.lcssa7686.sink = phi i64 [ %.lcssa11024, %bb.bmt ], [ %.lcssa11016, %bb.bmm ]
  %.ph = phi i32 [ %i.lut, %bb.bmt ], [ 1, %bb.bmm ]
  %i.luv = getelementptr inbounds nuw i8, ptr %i.luu, i64 8
  %i.luw = zext i32 %.sink8590.a to i64
  %i.lux = getelementptr inbounds nuw [8 x i8], ptr %i.luv, i64 %i.luw
  store i64 %.lcssa7686.sink, ptr %i.lux, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224: ; preds = %bb.bmr, %bb.bmk, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224.sink.split, %._crit_edge5419, %._crit_edge5452, %._crit_edge5413, %._crit_edge5427, %._crit_edge5446, %._crit_edge5460
  %i.luy = phi i32 [ %i.lta, %._crit_edge5413 ], [ %i.ltm, %._crit_edge5427 ], [ %i.ltm, %._crit_edge5419 ], [ 1, %._crit_edge5446 ], [ 1, %._crit_edge5460 ], [ 1, %bb.bmk ], [ %.ph, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224.sink.split ], [ 1, %._crit_edge5452 ], [ %i.lth, %bb.bmr ] ; 16 uses
  %i.luz = icmp sgt i32 %.sroa.9.0.i281, 0
  br i1 %i.luz, label %bb.bmu, label %bb.bmw

bb.bmu:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224
  %i.lva = and i32 %.sroa.9.0.i281, 63            ; 3 uses
  %i.lvb = lshr i32 %.sroa.9.0.i281, 6            ; 15 uses
  %i.lvc = icmp eq i32 %i.lva, 0
  br i1 %i.lvc, label %.preheader4154, label %bb.bmv, !prof !7

.preheader4154:                                   ; preds = %bb.bmu
  %.not46.i12695488 = icmp eq i32 %i.luy, 0
  br i1 %.not46.i12695488, label %.lr.ph5495.preheader, label %.lr.ph5490

.lr.ph5490:                                       ; preds = %.preheader4154
  %i.lvd = add nsw i32 %i.lvb, -1                 ; 6 uses
  %i.lve = zext i32 %i.luy to i64                 ; 9 uses
  %min.iters.check10505 = icmp ult i32 %i.luy, 30
  br i1 %min.iters.check10505, label %scalar.ph10504.preheader, label %vector.scevcheck10501

vector.scevcheck10501:                            ; preds = %.lr.ph5490
  %i.lvf = add nsw i64 %i.lve, -1                 ; 2 uses
  %i.lvg = add i32 %i.luy, %i.lvb
  %i.lvh = add i32 %i.lvg, -1
  %i.lvi = trunc i64 %i.lvf to i32
  %i.lvj = icmp ult i32 %i.lvh, %i.lvi
  %i.lvk = icmp ugt i64 %i.lvf, 4294967295
  %i.lvl = or i1 %i.lvj, %i.lvk
  br i1 %i.lvl, label %scalar.ph10504.preheader, label %vector.memcheck10502

vector.memcheck10502:                             ; preds = %vector.scevcheck10501
  %i.lvm = add i32 %i.luy, %i.lvb
  %i.lvn = add i32 %i.lvm, -1
  %i.lvo = zext i32 %i.lvn to i64
  %i.lvp = sub nsw i64 %i.lve, %i.lvo
  %i.lvq = shl nsw i64 %i.lvp, 3
  %i.lvr = add nsw i64 %i.lvq, -9
  %diff.check10503 = icmp ult i64 %i.lvr, 31
  br i1 %diff.check10503, label %scalar.ph10504.preheader, label %vector.ph10506

vector.ph10506:                                   ; preds = %vector.memcheck10502
  %n.vec10507 = and i64 %i.lve, 4294967292        ; 2 uses
  %i.lvs = and i64 %i.lve, 3
  br label %vector.body10508

vector.body10508:                                 ; preds = %vector.body10508, %vector.ph10506
  %index10509 = phi i64 [ 0, %vector.ph10506 ], [ %index.next10512, %vector.body10508 ] ; 2 uses
  %i.lvt = sub i64 %i.lve, %index10509            ; 2 uses
  %i.lvu = getelementptr [8 x i8], ptr %10, i64 %i.lvt ; 2 uses
  %i.lvv = getelementptr i8, ptr %i.lvu, i64 -8
  %i.lvw = getelementptr i8, ptr %i.lvu, i64 -24
  %wide.load10510 = load <2 x i64>, ptr %i.lvv, align 8, !tbaa !91
  %wide.load10511 = load <2 x i64>, ptr %i.lvw, align 8, !tbaa !91
  %i.lvx = trunc nuw i64 %i.lvt to i32
  %i.lvy = add i32 %i.lvd, %i.lvx
  %i.lvz = zext i32 %i.lvy to i64
  %i.lwa = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lvz ; 2 uses
  %i.lwb = getelementptr inbounds i8, ptr %i.lwa, i64 -8
  %i.lwc = getelementptr inbounds i8, ptr %i.lwa, i64 -24
  store <2 x i64> %wide.load10510, ptr %i.lwb, align 8, !tbaa !91
  store <2 x i64> %wide.load10511, ptr %i.lwc, align 8, !tbaa !91
  %index.next10512 = add nuw i64 %index10509, 4   ; 2 uses
  %i.lwd = icmp eq i64 %index.next10512, %n.vec10507
  br i1 %i.lwd, label %middle.block10513, label %vector.body10508, !llvm.loop !237

middle.block10513:                                ; preds = %vector.body10508
  %cmp.n10514 = icmp eq i64 %n.vec10507, %i.lve
  br i1 %cmp.n10514, label %.lr.ph5495.preheader, label %scalar.ph10504.preheader

scalar.ph10504.preheader:                         ; preds = %vector.memcheck10502, %vector.scevcheck10501, %.lr.ph5490, %middle.block10513
  %indvars.iv6529.ph = phi i64 [ %i.lve, %vector.memcheck10502 ], [ %i.lve, %vector.scevcheck10501 ], [ %i.lve, %.lr.ph5490 ], [ %i.lvs, %middle.block10513 ] ; 4 uses
  %i.lwe = add nsw i64 %indvars.iv6529.ph, -1
  %xtraiter12324 = and i64 %indvars.iv6529.ph, 3  ; 2 uses
  %lcmp.mod12325.not = icmp eq i64 %xtraiter12324, 0
  br i1 %lcmp.mod12325.not, label %scalar.ph10504.prol.loopexit, label %scalar.ph10504.prol

scalar.ph10504.prol:                              ; preds = %scalar.ph10504.preheader, %scalar.ph10504.prol
  %indvars.iv6529.prol = phi i64 [ %i.lwf, %scalar.ph10504.prol ], [ %indvars.iv6529.ph, %scalar.ph10504.preheader ] ; 3 uses
  %prol.iter12326 = phi i64 [ %prol.iter12326.next, %scalar.ph10504.prol ], [ 0, %scalar.ph10504.preheader ]
  %i.lwf = add nsw i64 %indvars.iv6529.prol, -1   ; 2 uses
  %i.lwg = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6529.prol
  %i.lwh = load i64, ptr %i.lwg, align 8, !tbaa !91
  %i.lwi = trunc nuw i64 %indvars.iv6529.prol to i32
  %i.lwj = add i32 %i.lvd, %i.lwi
  %i.lwk = zext i32 %i.lwj to i64
  %i.lwl = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lwk
  store i64 %i.lwh, ptr %i.lwl, align 8, !tbaa !91
  %prol.iter12326.next = add i64 %prol.iter12326, 1 ; 2 uses
  %prol.iter12326.cmp.not = icmp eq i64 %prol.iter12326.next, %xtraiter12324
  br i1 %prol.iter12326.cmp.not, label %scalar.ph10504.prol.loopexit, label %scalar.ph10504.prol, !llvm.loop !238

scalar.ph10504.prol.loopexit:                     ; preds = %scalar.ph10504.prol, %scalar.ph10504.preheader
  %indvars.iv6529.unr = phi i64 [ %indvars.iv6529.ph, %scalar.ph10504.preheader ], [ %i.lwf, %scalar.ph10504.prol ]
  %i.lwm = icmp ult i64 %i.lwe, 3
  br i1 %i.lwm, label %.lr.ph5495.preheader, label %scalar.ph10504

scalar.ph10504:                                   ; preds = %scalar.ph10504.prol.loopexit, %scalar.ph10504
  %indvars.iv6529 = phi i64 [ %i.lxi, %scalar.ph10504 ], [ %indvars.iv6529.unr, %scalar.ph10504.prol.loopexit ] ; 6 uses
  %i.lwn = add nsw i64 %indvars.iv6529, -1        ; 2 uses
  %i.lwo = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6529
  %i.lwp = load i64, ptr %i.lwo, align 8, !tbaa !91
  %i.lwq = trunc nuw i64 %indvars.iv6529 to i32
  %i.lwr = add i32 %i.lvd, %i.lwq
  %i.lws = zext i32 %i.lwr to i64
  %i.lwt = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lws
  store i64 %i.lwp, ptr %i.lwt, align 8, !tbaa !91
  %i.lwu = add nsw i64 %indvars.iv6529, -2        ; 2 uses
  %i.lwv = getelementptr [8 x i8], ptr %10, i64 %i.lwn
  %i.lww = load i64, ptr %i.lwv, align 8, !tbaa !91
  %i.lwx = trunc nuw i64 %i.lwn to i32
  %i.lwy = add i32 %i.lvd, %i.lwx
  %i.lwz = zext i32 %i.lwy to i64
  %i.lxa = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lwz
  store i64 %i.lww, ptr %i.lxa, align 8, !tbaa !91
  %i.lxb = add nsw i64 %indvars.iv6529, -3        ; 2 uses
  %i.lxc = getelementptr [8 x i8], ptr %10, i64 %i.lwu
  %i.lxd = load i64, ptr %i.lxc, align 8, !tbaa !91
  %i.lxe = trunc nuw i64 %i.lwu to i32
  %i.lxf = add i32 %i.lvd, %i.lxe
  %i.lxg = zext i32 %i.lxf to i64
  %i.lxh = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lxg
  store i64 %i.lxd, ptr %i.lxh, align 8, !tbaa !91
  %i.lxi = add nsw i64 %indvars.iv6529, -4        ; 2 uses
  %i.lxj = getelementptr [8 x i8], ptr %10, i64 %i.lxb
  %i.lxk = load i64, ptr %i.lxj, align 8, !tbaa !91
  %i.lxl = trunc nuw i64 %i.lxb to i32
  %i.lxm = add i32 %i.lvd, %i.lxl
  %i.lxn = zext i32 %i.lxm to i64
  %i.lxo = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lxn
  store i64 %i.lxk, ptr %i.lxo, align 8, !tbaa !91
  %.not46.i1269.wide.3 = icmp eq i64 %i.lxi, 0
  br i1 %.not46.i1269.wide.3, label %.lr.ph5495.preheader, label %scalar.ph10504, !llvm.loop !239

.lr.ph5495.preheader:                             ; preds = %scalar.ph10504.prol.loopexit, %scalar.ph10504, %middle.block10513, %.preheader4154
  %i.lxp = add i32 %i.luy, %i.lvb                 ; 2 uses
  store i32 %i.lxp, ptr %10, align 8, !tbaa !177
  br label %.lr.ph5470.preheader

bb.bmv:                                           ; preds = %bb.bmu
  %i.lxq = zext i32 %i.luy to i64                 ; 10 uses
  %i.lxr = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lxq
  store i64 0, ptr %i.lxr, align 8, !tbaa !91
  %.not.i12655479 = icmp eq i32 %i.luy, 0
  %.pre6927 = zext nneg i32 %i.lva to i64         ; 5 uses
  br i1 %.not.i12655479, label %._crit_edge5483, label %.lr.ph5482

.lr.ph5482:                                       ; preds = %bb.bmv
  %i.lxs = sub nuw nsw i32 64, %i.lva
  %i.lxt = zext nneg i32 %i.lxs to i64            ; 4 uses
  %min.iters.check10484 = icmp ult i32 %i.luy, 20
  br i1 %min.iters.check10484, label %scalar.ph10483.preheader, label %vector.scevcheck10478

vector.scevcheck10478:                            ; preds = %.lr.ph5482
  %i.lxu = add nsw i64 %i.lxq, -1                 ; 2 uses
  %i.lxv = add i32 %i.luy, %i.lvb
  %i.lxw = trunc i64 %i.lxu to i32
  %i.lxx = icmp ult i32 %i.lxv, %i.lxw
  %i.lxy = icmp ugt i64 %i.lxu, 4294967295
  %i.lxz = or i1 %i.lxx, %i.lxy
  br i1 %i.lxz, label %scalar.ph10483.preheader, label %vector.memcheck10479

vector.memcheck10479:                             ; preds = %vector.scevcheck10478
  %i.lya = shl nuw nsw i64 %i.lxq, 3              ; 2 uses
  %i.lyb = add i32 %i.luy, %i.lvb
  %i.lyc = zext i32 %i.lyb to i64
  %i.lyd = shl nuw nsw i64 %i.lyc, 3              ; 2 uses
  %i.lye = sub nsw i64 %i.lyd, %i.lya
  %diff.check10480 = icmp ugt i64 %i.lye, -32
  %i.lyf = sub nsw i64 %i.lya, %i.lyd
  %i.lyg = add nsw i64 %i.lyf, -9
  %diff.check10481 = icmp ult i64 %i.lyg, 31
  %conflict.rdx10482 = or i1 %diff.check10480, %diff.check10481
  br i1 %conflict.rdx10482, label %scalar.ph10483.preheader, label %vector.ph10485

vector.ph10485:                                   ; preds = %vector.memcheck10479
  %n.vec10486 = and i64 %i.lxq, 4294967292        ; 2 uses
  %i.lyh = and i64 %i.lxq, 3
  %broadcast.splatinsert10487 = insertelement <2 x i64> poison, i64 %i.lxt, i64 0
  %broadcast.splat10488 = shufflevector <2 x i64> %broadcast.splatinsert10487, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10489.a = insertelement <2 x i64> poison, i64 %.pre6927, i64 0
  %broadcast.splat10490.a = shufflevector <2 x i64> %broadcast.splatinsert10489.a, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10491

vector.body10491:                                 ; preds = %vector.body10491, %vector.ph10485
  %index10492 = phi i64 [ 0, %vector.ph10485 ], [ %index.next10497, %vector.body10491 ] ; 2 uses
  %i.lyi = sub i64 %i.lxq, %index10492            ; 3 uses
  %i.lyj = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lyi ; 2 uses
  %i.lyk = getelementptr inbounds i8, ptr %i.lyj, i64 -8
  %i.lyl = getelementptr inbounds i8, ptr %i.lyj, i64 -24
  %wide.load10493 = load <2 x i64>, ptr %i.lyk, align 8, !tbaa !91
  %wide.load10494 = load <2 x i64>, ptr %i.lyl, align 8, !tbaa !91
  %i.lym = shl <2 x i64> %wide.load10493, %broadcast.splat10490.a
  %i.lyn = shl <2 x i64> %wide.load10494, %broadcast.splat10490.a
  %i.lyo = getelementptr [8 x i8], ptr %10, i64 %i.lyi ; 2 uses
  %i.lyp = getelementptr i8, ptr %i.lyo, i64 -8
  %i.lyq = getelementptr i8, ptr %i.lyo, i64 -24
  %wide.load10495.a = load <2 x i64>, ptr %i.lyp, align 8, !tbaa !91
  %wide.load10496.a = load <2 x i64>, ptr %i.lyq, align 8, !tbaa !91
  %i.lyr = lshr <2 x i64> %wide.load10495.a, %broadcast.splat10488
  %i.lys = lshr <2 x i64> %wide.load10496.a, %broadcast.splat10488
  %i.lyt = or <2 x i64> %i.lyr, %i.lym
  %i.lyu = or <2 x i64> %i.lys, %i.lyn
  %i.lyv = trunc nuw i64 %i.lyi to i32
  %i.lyw = add i32 %i.lvb, %i.lyv
  %i.lyx = zext i32 %i.lyw to i64
  %i.lyy = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lyx ; 2 uses
  %i.lyz = getelementptr inbounds i8, ptr %i.lyy, i64 -8
  %i.lza = getelementptr inbounds i8, ptr %i.lyy, i64 -24
  store <2 x i64> %i.lyt, ptr %i.lyz, align 8, !tbaa !91
  store <2 x i64> %i.lyu, ptr %i.lza, align 8, !tbaa !91
  %index.next10497 = add nuw i64 %index10492, 4   ; 2 uses
  %i.lzb = icmp eq i64 %index.next10497, %n.vec10486
  br i1 %i.lzb, label %middle.block10498, label %vector.body10491, !llvm.loop !240

middle.block10498:                                ; preds = %vector.body10491
  %cmp.n10499 = icmp eq i64 %n.vec10486, %i.lxq
  br i1 %cmp.n10499, label %._crit_edge5483, label %scalar.ph10483.preheader

scalar.ph10483.preheader:                         ; preds = %vector.memcheck10479, %vector.scevcheck10478, %.lr.ph5482, %middle.block10498
  %indvars.iv6524.ph = phi i64 [ %i.lxq, %vector.memcheck10479 ], [ %i.lxq, %vector.scevcheck10478 ], [ %i.lxq, %.lr.ph5482 ], [ %i.lyh, %middle.block10498 ] ; 7 uses
  %xtraiter12321 = and i64 %indvars.iv6524.ph, 1
  %lcmp.mod12322.not = icmp eq i64 %xtraiter12321, 0
  br i1 %lcmp.mod12322.not, label %scalar.ph10483.prol.loopexit, label %scalar.ph10483.prol

scalar.ph10483.prol:                              ; preds = %scalar.ph10483.preheader
  %i.lzc = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6524.ph
  %i.lzd = load i64, ptr %i.lzc, align 8, !tbaa !91
  %i.lze = shl i64 %i.lzd, %.pre6927
  %i.lzf = add nsw i64 %indvars.iv6524.ph, -1
  %i.lzg = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6524.ph
  %i.lzh = load i64, ptr %i.lzg, align 8, !tbaa !91
  %i.lzi = lshr i64 %i.lzh, %i.lxt
  %i.lzj = or i64 %i.lzi, %i.lze
  %i.lzk = trunc nuw i64 %indvars.iv6524.ph to i32
  %i.lzl = add i32 %i.lvb, %i.lzk
  %i.lzm = zext i32 %i.lzl to i64
  %i.lzn = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lzm
  store i64 %i.lzj, ptr %i.lzn, align 8, !tbaa !91
  br label %scalar.ph10483.prol.loopexit

scalar.ph10483.prol.loopexit:                     ; preds = %scalar.ph10483.prol, %scalar.ph10483.preheader
  %indvars.iv6524.unr = phi i64 [ %indvars.iv6524.ph, %scalar.ph10483.preheader ], [ %i.lzf, %scalar.ph10483.prol ]
  %i.lzo = icmp eq i64 %indvars.iv6524.ph, 1
  br i1 %i.lzo, label %._crit_edge5483, label %scalar.ph10483

scalar.ph10483:                                   ; preds = %scalar.ph10483.prol.loopexit, %scalar.ph10483
  %indvars.iv6524 = phi i64 [ %i.mae, %scalar.ph10483 ], [ %indvars.iv6524.unr, %scalar.ph10483.prol.loopexit ] ; 6 uses
  %i.lzp = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %indvars.iv6524
  %i.lzq = load i64, ptr %i.lzp, align 8, !tbaa !91
  %i.lzr = shl i64 %i.lzq, %.pre6927
  %i.lzs = add nsw i64 %indvars.iv6524, -1        ; 2 uses
  %i.lzt = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6524
  %i.lzu = load i64, ptr %i.lzt, align 8, !tbaa !91
  %i.lzv = lshr i64 %i.lzu, %i.lxt
  %i.lzw = or i64 %i.lzv, %i.lzr
  %i.lzx = trunc nuw i64 %indvars.iv6524 to i32
  %i.lzy = add i32 %i.lvb, %i.lzx
  %i.lzz = zext i32 %i.lzy to i64
  %i.maa = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.lzz
  store i64 %i.lzw, ptr %i.maa, align 8, !tbaa !91
  %i.mab = getelementptr [8 x i8], ptr %10, i64 %indvars.iv6524
  %i.mac = load i64, ptr %i.mab, align 8, !tbaa !91
  %i.mad = shl i64 %i.mac, %.pre6927
  %i.mae = add nsw i64 %indvars.iv6524, -2        ; 2 uses
  %i.maf = getelementptr [8 x i8], ptr %10, i64 %i.lzs
  %i.mag = load i64, ptr %i.maf, align 8, !tbaa !91
  %i.mah = lshr i64 %i.mag, %i.lxt
  %i.mai = or i64 %i.mah, %i.mad
  %i.maj = trunc nuw i64 %i.lzs to i32
  %i.mak = add i32 %i.lvb, %i.maj
  %i.mal = zext i32 %i.mak to i64
  %i.mam = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.mal
  store i64 %i.mai, ptr %i.mam, align 8, !tbaa !91
  %.not.i1265.wide.1 = icmp eq i64 %i.mae, 0
  br i1 %.not.i1265.wide.1, label %._crit_edge5483, label %scalar.ph10483, !llvm.loop !241

._crit_edge5483:                                  ; preds = %scalar.ph10483.prol.loopexit, %scalar.ph10483, %middle.block10498, %bb.bmv
  %i.man = load i64, ptr %i.loa, align 8, !tbaa !91
  %i.mao = shl i64 %i.man, %.pre6927
  %i.map = zext nneg i32 %i.lvb to i64
  %i.maq = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.map
  store i64 %i.mao, ptr %i.maq, align 8, !tbaa !91
  %i.mar = add i32 %i.luy, %i.lvb                 ; 2 uses
  %i.mas = zext i32 %i.mar to i64
  %i.mat = getelementptr inbounds nuw [8 x i8], ptr %i.loa, i64 %i.mas
  %i.mau = load i64, ptr %i.mat, align 8, !tbaa !91
  %i.mav = icmp ne i64 %i.mau, 0
  %i.maw = zext i1 %i.mav to i32
  %i.max = add i32 %i.mar, %i.maw                 ; 2 uses
  %.not45.i12675484 = icmp eq i32 %i.lvb, 0
  br i1 %.not45.i12675484, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272, label %.lr.ph5470.preheader

bb.bmw:                                           ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit1224
  %i.may = sub nsw i32 0, %.sroa.9.0.i281         ; 2 uses
  %i.maz = and i32 %i.may, 63                     ; 3 uses
  %i.mba = lshr i32 %i.may, 6                     ; 16 uses
  %i.mbb = load i32, ptr %9, align 8, !tbaa !177  ; 12 uses
  %i.mbc = icmp eq i32 %i.maz, 0
  br i1 %i.mbc, label %.preheader4157, label %bb.bmx, !prof !7

.preheader4157:                                   ; preds = %bb.bmw
  %.not46.i12785471 = icmp eq i32 %i.mbb, 0
  br i1 %.not46.i12785471, label %._crit_edge5474, label %.lr.ph5473

.lr.ph5473:                                       ; preds = %.preheader4157
  %i.mbd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.mbe = add nsw i32 %i.mba, -1                 ; 6 uses
  %i.mbf = zext i32 %i.mbb to i64                 ; 9 uses
  %min.iters.check10467 = icmp ult i32 %i.mbb, 30
  br i1 %min.iters.check10467, label %scalar.ph10466.preheader, label %vector.scevcheck10463

vector.scevcheck10463:                            ; preds = %.lr.ph5473
  %i.mbg = add nsw i64 %i.mbf, -1                 ; 2 uses
  %i.mbh = add i32 %i.mbb, %i.mba
  %i.mbi = add i32 %i.mbh, -1
  %i.mbj = trunc i64 %i.mbg to i32
  %i.mbk = icmp ult i32 %i.mbi, %i.mbj
  %i.mbl = icmp ugt i64 %i.mbg, 4294967295
  %i.mbm = or i1 %i.mbk, %i.mbl
  br i1 %i.mbm, label %scalar.ph10466.preheader, label %vector.memcheck10464

vector.memcheck10464:                             ; preds = %vector.scevcheck10463
  %i.mbn = add i32 %i.mbb, %i.mba
  %i.mbo = add i32 %i.mbn, -1
  %i.mbp = zext i32 %i.mbo to i64
  %i.mbq = sub nsw i64 %i.mbf, %i.mbp
  %i.mbr = shl nsw i64 %i.mbq, 3
  %i.mbs = add nsw i64 %i.mbr, -9
  %diff.check10465 = icmp ult i64 %i.mbs, 31
  br i1 %diff.check10465, label %scalar.ph10466.preheader, label %vector.ph10468

vector.ph10468:                                   ; preds = %vector.memcheck10464
  %n.vec10469 = and i64 %i.mbf, 4294967292        ; 2 uses
  %i.mbt = and i64 %i.mbf, 3
  br label %vector.body10470

vector.body10470:                                 ; preds = %vector.body10470, %vector.ph10468
  %index10471 = phi i64 [ 0, %vector.ph10468 ], [ %index.next10474, %vector.body10470 ] ; 2 uses
  %i.mbu = sub i64 %i.mbf, %index10471            ; 2 uses
  %i.mbv = getelementptr [8 x i8], ptr %9, i64 %i.mbu ; 2 uses
  %i.mbw = getelementptr i8, ptr %i.mbv, i64 -8
  %i.mbx = getelementptr i8, ptr %i.mbv, i64 -24
  %wide.load10472 = load <2 x i64>, ptr %i.mbw, align 8, !tbaa !91
  %wide.load10473 = load <2 x i64>, ptr %i.mbx, align 8, !tbaa !91
  %i.mby = trunc nuw i64 %i.mbu to i32
  %i.mbz = add i32 %i.mbe, %i.mby
  %i.mca = zext i32 %i.mbz to i64
  %i.mcb = getelementptr inbounds nuw [8 x i8], ptr %i.mbd, i64 %i.mca ; 2 uses
  %i.mcc = getelementptr inbounds i8, ptr %i.mcb, i64 -8
  %i.mcd = getelementptr inbounds i8, ptr %i.mcb, i64 -24
  store <2 x i64> %wide.load10472, ptr %i.mcc, align 8, !tbaa !91
  store <2 x i64> %wide.load10473, ptr %i.mcd, align 8, !tbaa !91
  %index.next10474 = add nuw i64 %index10471, 4   ; 2 uses
  %i.mce = icmp eq i64 %index.next10474, %n.vec10469
  br i1 %i.mce, label %middle.block10475, label %vector.body10470, !llvm.loop !242

middle.block10475:                                ; preds = %vector.body10470
  %cmp.n10476 = icmp eq i64 %n.vec10469, %i.mbf
  br i1 %cmp.n10476, label %._crit_edge5474, label %scalar.ph10466.preheader

scalar.ph10466.preheader:                         ; preds = %vector.memcheck10464, %vector.scevcheck10463, %.lr.ph5473, %middle.block10475
  %indvars.iv6519.ph = phi i64 [ %i.mbf, %vector.memcheck10464 ], [ %i.mbf, %vector.scevcheck10463 ], [ %i.mbf, %.lr.ph5473 ], [ %i.mbt, %middle.block10475 ] ; 4 uses
  %i.mcf = add nsw i64 %indvars.iv6519.ph, -1
  %xtraiter12318 = and i64 %indvars.iv6519.ph, 3  ; 2 uses
  %lcmp.mod12319.not = icmp eq i64 %xtraiter12318, 0
  br i1 %lcmp.mod12319.not, label %scalar.ph10466.prol.loopexit, label %scalar.ph10466.prol

scalar.ph10466.prol:                              ; preds = %scalar.ph10466.preheader, %scalar.ph10466.prol
  %indvars.iv6519.prol = phi i64 [ %i.mcg, %scalar.ph10466.prol ], [ %indvars.iv6519.ph, %scalar.ph10466.preheader ] ; 3 uses
  %prol.iter12320 = phi i64 [ %prol.iter12320.next, %scalar.ph10466.prol ], [ 0, %scalar.ph10466.preheader ]
  %i.mcg = add nsw i64 %indvars.iv6519.prol, -1   ; 2 uses
  %i.mch = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6519.prol
  %i.mci = load i64, ptr %i.mch, align 8, !tbaa !91
  %i.mcj = trunc nuw i64 %indvars.iv6519.prol to i32
  %i.mck = add i32 %i.mbe, %i.mcj
  %i.mcl = zext i32 %i.mck to i64
  %i.mcm = getelementptr inbounds nuw [8 x i8], ptr %i.mbd, i64 %i.mcl
  store i64 %i.mci, ptr %i.mcm, align 8, !tbaa !91
  %prol.iter12320.next = add i64 %prol.iter12320, 1 ; 2 uses
  %prol.iter12320.cmp.not = icmp eq i64 %prol.iter12320.next, %xtraiter12318
  br i1 %prol.iter12320.cmp.not, label %scalar.ph10466.prol.loopexit, label %scalar.ph10466.prol, !llvm.loop !243

scalar.ph10466.prol.loopexit:                     ; preds = %scalar.ph10466.prol, %scalar.ph10466.preheader
  %indvars.iv6519.unr = phi i64 [ %indvars.iv6519.ph, %scalar.ph10466.preheader ], [ %i.mcg, %scalar.ph10466.prol ]
  %i.mcn = icmp ult i64 %i.mcf, 3
  br i1 %i.mcn, label %._crit_edge5474, label %scalar.ph10466

scalar.ph10466:                                   ; preds = %scalar.ph10466.prol.loopexit, %scalar.ph10466
  %indvars.iv6519 = phi i64 [ %i.mdj, %scalar.ph10466 ], [ %indvars.iv6519.unr, %scalar.ph10466.prol.loopexit ] ; 6 uses
  %i.mco = add nsw i64 %indvars.iv6519, -1        ; 2 uses
  %i.mcp = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6519
  %i.mcq = load i64, ptr %i.mcp, align 8, !tbaa !91
  %i.mcr = trunc nuw i64 %indvars.iv6519 to i32
  %i.mcs = add i32 %i.mbe, %i.mcr
  %i.mct = zext i32 %i.mcs to i64
  %i.mcu = getelementptr inbounds nuw [8 x i8], ptr %i.mbd, i64 %i.mct
  store i64 %i.mcq, ptr %i.mcu, align 8, !tbaa !91
  %i.mcv = add nsw i64 %indvars.iv6519, -2        ; 2 uses
  %i.mcw = getelementptr [8 x i8], ptr %9, i64 %i.mco
  %i.mcx = load i64, ptr %i.mcw, align 8, !tbaa !91
  %i.mcy = trunc nuw i64 %i.mco to i32
  %i.mcz = add i32 %i.mbe, %i.mcy
  %i.mda = zext i32 %i.mcz to i64
  %i.mdb = getelementptr inbounds nuw [8 x i8], ptr %i.mbd, i64 %i.mda
  store i64 %i.mcx, ptr %i.mdb, align 8, !tbaa !91
  %i.mdc = add nsw i64 %indvars.iv6519, -3        ; 2 uses
  %i.mdd = getelementptr [8 x i8], ptr %9, i64 %i.mcv
  %i.mde = load i64, ptr %i.mdd, align 8, !tbaa !91
  %i.mdf = trunc nuw i64 %i.mcv to i32
  %i.mdg = add i32 %i.mbe, %i.mdf
  %i.mdh = zext i32 %i.mdg to i64
  %i.mdi = getelementptr inbounds nuw [8 x i8], ptr %i.mbd, i64 %i.mdh
  store i64 %i.mde, ptr %i.mdi, align 8, !tbaa !91
  %i.mdj = add nsw i64 %indvars.iv6519, -4        ; 2 uses
  %i.mdk = getelementptr [8 x i8], ptr %9, i64 %i.mdc
  %i.mdl = load i64, ptr %i.mdk, align 8, !tbaa !91
  %i.mdm = trunc nuw i64 %i.mdc to i32
  %i.mdn = add i32 %i.mbe, %i.mdm
  %i.mdo = zext i32 %i.mdn to i64
  %i.mdp = getelementptr inbounds nuw [8 x i8], ptr %i.mbd, i64 %i.mdo
  store i64 %i.mdl, ptr %i.mdp, align 8, !tbaa !91
  %.not46.i1278.wide.3 = icmp eq i64 %i.mdj, 0
  br i1 %.not46.i1278.wide.3, label %._crit_edge5474, label %scalar.ph10466, !llvm.loop !244

._crit_edge5474:                                  ; preds = %scalar.ph10466.prol.loopexit, %scalar.ph10466, %middle.block10475, %.preheader4157
  %i.mdq = add i32 %i.mbb, %i.mba
  store i32 %i.mdq, ptr %9, align 8, !tbaa !177
  %.not47.i12805475 = icmp eq i32 %i.mba, 0
  br i1 %.not47.i12805475, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272, label %.lr.ph5478

.lr.ph5478:                                       ; preds = %._crit_edge5474
  %i.mdr = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.lr.ph5470.preheader

bb.bmx:                                           ; preds = %bb.bmw
  %i.mds = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 12 uses
  %i.mdt = zext i32 %i.mbb to i64                 ; 10 uses
  %i.mdu = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mdt
  store i64 0, ptr %i.mdu, align 8, !tbaa !91
  %.not.i12745462 = icmp eq i32 %i.mbb, 0
  %.pre6929 = zext nneg i32 %i.maz to i64         ; 5 uses
  br i1 %.not.i12745462, label %._crit_edge5466, label %.lr.ph5465

.lr.ph5465:                                       ; preds = %bb.bmx
  %i.mdv = sub nuw nsw i32 64, %i.maz
  %i.mdw = zext nneg i32 %i.mdv to i64            ; 4 uses
  %min.iters.check10446 = icmp ult i32 %i.mbb, 20
  br i1 %min.iters.check10446, label %scalar.ph10445.preheader, label %vector.scevcheck10440

vector.scevcheck10440:                            ; preds = %.lr.ph5465
  %i.mdx = add nsw i64 %i.mdt, -1                 ; 2 uses
  %i.mdy = add i32 %i.mbb, %i.mba
  %i.mdz = trunc i64 %i.mdx to i32
  %i.mea = icmp ult i32 %i.mdy, %i.mdz
  %i.meb = icmp ugt i64 %i.mdx, 4294967295
  %i.mec = or i1 %i.mea, %i.meb
  br i1 %i.mec, label %scalar.ph10445.preheader, label %vector.memcheck10441

vector.memcheck10441:                             ; preds = %vector.scevcheck10440
  %i.med = shl nuw nsw i64 %i.mdt, 3              ; 2 uses
  %i.mee = add i32 %i.mbb, %i.mba
  %i.mef = zext i32 %i.mee to i64
  %i.meg = shl nuw nsw i64 %i.mef, 3              ; 2 uses
  %i.meh = sub nsw i64 %i.meg, %i.med
  %diff.check10442 = icmp ugt i64 %i.meh, -32
  %i.mei = sub nsw i64 %i.med, %i.meg
  %i.mej = add nsw i64 %i.mei, -9
  %diff.check10443 = icmp ult i64 %i.mej, 31
  %conflict.rdx10444 = or i1 %diff.check10442, %diff.check10443
  br i1 %conflict.rdx10444, label %scalar.ph10445.preheader, label %vector.ph10447

vector.ph10447:                                   ; preds = %vector.memcheck10441
  %n.vec10448 = and i64 %i.mdt, 4294967292        ; 2 uses
  %i.mek = and i64 %i.mdt, 3
  %broadcast.splatinsert10449 = insertelement <2 x i64> poison, i64 %i.mdw, i64 0
  %broadcast.splat10450 = shufflevector <2 x i64> %broadcast.splatinsert10449, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10451 = insertelement <2 x i64> poison, i64 %.pre6929, i64 0
  %broadcast.splat10452 = shufflevector <2 x i64> %broadcast.splatinsert10451, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body10453

vector.body10453:                                 ; preds = %vector.body10453, %vector.ph10447
  %index10454 = phi i64 [ 0, %vector.ph10447 ], [ %index.next10459, %vector.body10453 ] ; 2 uses
  %i.mel = sub i64 %i.mdt, %index10454            ; 3 uses
  %i.mem = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mel ; 2 uses
  %i.men = getelementptr inbounds i8, ptr %i.mem, i64 -8
  %i.meo = getelementptr inbounds i8, ptr %i.mem, i64 -24
  %wide.load10455 = load <2 x i64>, ptr %i.men, align 8, !tbaa !91
  %wide.load10456 = load <2 x i64>, ptr %i.meo, align 8, !tbaa !91
  %i.mep = shl <2 x i64> %wide.load10455, %broadcast.splat10452
  %i.meq = shl <2 x i64> %wide.load10456, %broadcast.splat10452
  %i.mer = getelementptr [8 x i8], ptr %9, i64 %i.mel ; 2 uses
  %i.mes = getelementptr i8, ptr %i.mer, i64 -8
  %i.met = getelementptr i8, ptr %i.mer, i64 -24
  %wide.load10457 = load <2 x i64>, ptr %i.mes, align 8, !tbaa !91
  %wide.load10458 = load <2 x i64>, ptr %i.met, align 8, !tbaa !91
  %i.meu = lshr <2 x i64> %wide.load10457, %broadcast.splat10450
  %i.mev = lshr <2 x i64> %wide.load10458, %broadcast.splat10450
  %i.mew = or <2 x i64> %i.meu, %i.mep
  %i.mex = or <2 x i64> %i.mev, %i.meq
  %i.mey = trunc nuw i64 %i.mel to i32
  %i.mez = add i32 %i.mba, %i.mey
  %i.mfa = zext i32 %i.mez to i64
  %i.mfb = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mfa ; 2 uses
  %i.mfc = getelementptr inbounds i8, ptr %i.mfb, i64 -8
  %i.mfd = getelementptr inbounds i8, ptr %i.mfb, i64 -24
  store <2 x i64> %i.mew, ptr %i.mfc, align 8, !tbaa !91
  store <2 x i64> %i.mex, ptr %i.mfd, align 8, !tbaa !91
  %index.next10459 = add nuw i64 %index10454, 4   ; 2 uses
  %i.mfe = icmp eq i64 %index.next10459, %n.vec10448
  br i1 %i.mfe, label %middle.block10460, label %vector.body10453, !llvm.loop !245

middle.block10460:                                ; preds = %vector.body10453
  %cmp.n10461 = icmp eq i64 %n.vec10448, %i.mdt
  br i1 %cmp.n10461, label %._crit_edge5466, label %scalar.ph10445.preheader

scalar.ph10445.preheader:                         ; preds = %vector.memcheck10441, %vector.scevcheck10440, %.lr.ph5465, %middle.block10460
  %indvars.iv6514.ph = phi i64 [ %i.mdt, %vector.memcheck10441 ], [ %i.mdt, %vector.scevcheck10440 ], [ %i.mdt, %.lr.ph5465 ], [ %i.mek, %middle.block10460 ] ; 7 uses
  %xtraiter12315 = and i64 %indvars.iv6514.ph, 1
  %lcmp.mod12316.not = icmp eq i64 %xtraiter12315, 0
  br i1 %lcmp.mod12316.not, label %scalar.ph10445.prol.loopexit, label %scalar.ph10445.prol

scalar.ph10445.prol:                              ; preds = %scalar.ph10445.preheader
  %i.mff = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %indvars.iv6514.ph
  %i.mfg = load i64, ptr %i.mff, align 8, !tbaa !91
  %i.mfh = shl i64 %i.mfg, %.pre6929
  %i.mfi = add nsw i64 %indvars.iv6514.ph, -1
  %i.mfj = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6514.ph
  %i.mfk = load i64, ptr %i.mfj, align 8, !tbaa !91
  %i.mfl = lshr i64 %i.mfk, %i.mdw
  %i.mfm = or i64 %i.mfl, %i.mfh
  %i.mfn = trunc nuw i64 %indvars.iv6514.ph to i32
  %i.mfo = add i32 %i.mba, %i.mfn
  %i.mfp = zext i32 %i.mfo to i64
  %i.mfq = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mfp
  store i64 %i.mfm, ptr %i.mfq, align 8, !tbaa !91
  br label %scalar.ph10445.prol.loopexit

scalar.ph10445.prol.loopexit:                     ; preds = %scalar.ph10445.prol, %scalar.ph10445.preheader
  %indvars.iv6514.unr = phi i64 [ %indvars.iv6514.ph, %scalar.ph10445.preheader ], [ %i.mfi, %scalar.ph10445.prol ]
  %i.mfr = icmp eq i64 %indvars.iv6514.ph, 1
  br i1 %i.mfr, label %._crit_edge5466, label %scalar.ph10445

scalar.ph10445:                                   ; preds = %scalar.ph10445.prol.loopexit, %scalar.ph10445
  %indvars.iv6514 = phi i64 [ %i.mgh, %scalar.ph10445 ], [ %indvars.iv6514.unr, %scalar.ph10445.prol.loopexit ] ; 6 uses
  %i.mfs = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %indvars.iv6514
  %i.mft = load i64, ptr %i.mfs, align 8, !tbaa !91
  %i.mfu = shl i64 %i.mft, %.pre6929
  %i.mfv = add nsw i64 %indvars.iv6514, -1        ; 2 uses
  %i.mfw = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6514
  %i.mfx = load i64, ptr %i.mfw, align 8, !tbaa !91
  %i.mfy = lshr i64 %i.mfx, %i.mdw
  %i.mfz = or i64 %i.mfy, %i.mfu
  %i.mga = trunc nuw i64 %indvars.iv6514 to i32
  %i.mgb = add i32 %i.mba, %i.mga
  %i.mgc = zext i32 %i.mgb to i64
  %i.mgd = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mgc
  store i64 %i.mfz, ptr %i.mgd, align 8, !tbaa !91
  %i.mge = getelementptr [8 x i8], ptr %9, i64 %indvars.iv6514
  %i.mgf = load i64, ptr %i.mge, align 8, !tbaa !91
  %i.mgg = shl i64 %i.mgf, %.pre6929
  %i.mgh = add nsw i64 %indvars.iv6514, -2        ; 2 uses
  %i.mgi = getelementptr [8 x i8], ptr %9, i64 %i.mfv
  %i.mgj = load i64, ptr %i.mgi, align 8, !tbaa !91
  %i.mgk = lshr i64 %i.mgj, %i.mdw
  %i.mgl = or i64 %i.mgk, %i.mgg
  %i.mgm = trunc nuw i64 %i.mfv to i32
  %i.mgn = add i32 %i.mba, %i.mgm
  %i.mgo = zext i32 %i.mgn to i64
  %i.mgp = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mgo
  store i64 %i.mgl, ptr %i.mgp, align 8, !tbaa !91
  %.not.i1274.wide.1 = icmp eq i64 %i.mgh, 0
  br i1 %.not.i1274.wide.1, label %._crit_edge5466, label %scalar.ph10445, !llvm.loop !246

._crit_edge5466:                                  ; preds = %scalar.ph10445.prol.loopexit, %scalar.ph10445, %middle.block10460, %bb.bmx
  %i.mgq = load i64, ptr %i.mds, align 8, !tbaa !91
  %i.mgr = shl i64 %i.mgq, %.pre6929
  %i.mgs = zext nneg i32 %i.mba to i64
  %i.mgt = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mgs
  store i64 %i.mgr, ptr %i.mgt, align 8, !tbaa !91
  %i.mgu = add i32 %i.mbb, %i.mba                 ; 2 uses
  %i.mgv = zext i32 %i.mgu to i64
  %i.mgw = getelementptr inbounds nuw [8 x i8], ptr %i.mds, i64 %i.mgv
  %i.mgx = load i64, ptr %i.mgw, align 8, !tbaa !91
  %i.mgy = icmp ne i64 %i.mgx, 0
  %i.mgz = zext i1 %i.mgy to i32
  %i.mha = add i32 %i.mgu, %i.mgz
  store i32 %i.mha, ptr %9, align 8, !tbaa !177
  %.not45.i12765467 = icmp eq i32 %i.mba, 0
  br i1 %.not45.i12765467, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272, label %.lr.ph5470.preheader

.lr.ph5470.preheader:                             ; preds = %._crit_edge5466, %._crit_edge5483, %.lr.ph5495.preheader, %.lr.ph5478
  %.sink8630 = phi i32 [ %i.lvb, %._crit_edge5483 ], [ %i.mba, %.lr.ph5478 ], [ %i.lvb, %.lr.ph5495.preheader ], [ %i.mba, %._crit_edge5466 ]
  %.sink8625 = phi ptr [ %i.loa, %._crit_edge5483 ], [ %i.mdr, %.lr.ph5478 ], [ %i.loa, %.lr.ph5495.preheader ], [ %i.mds, %._crit_edge5466 ]
  %.ph8624 = phi i32 [ %i.max, %._crit_edge5483 ], [ %i.luy, %.lr.ph5478 ], [ %i.lxp, %.lr.ph5495.preheader ], [ %i.luy, %._crit_edge5466 ]
  %27 = add nsw i32 %.sink8630, -1
  %i.mhb = zext i32 %27 to i64
  %28 = shl nuw nsw i64 %i.mhb, 3
  %29 = add nuw nsw i64 %28, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink8625, i8 0, i64 %29, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272: ; preds = %.lr.ph5470.preheader, %._crit_edge5466, %._crit_edge5474, %._crit_edge5483
  %30 = phi i32 [ %i.max, %._crit_edge5483 ], [ %i.luy, %._crit_edge5466 ], [ %i.luy, %._crit_edge5474 ], [ %.ph8624, %.lr.ph5470.preheader ] ; 2 uses
  %i.mhc = load i32, ptr %9, align 8, !tbaa !177  ; 4 uses
  %i.mhd = icmp ult i32 %i.mhc, %30
  br i1 %i.mhd, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread, label %bb.bmy

bb.bmy:                                           ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272
  %i.mhe = icmp ugt i32 %i.mhc, %30
  br i1 %i.mhe, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread, label %.preheader4153

.preheader4153:                                   ; preds = %bb.bmy
  %.not.i131510271 = icmp eq i32 %i.mhc, 0
  br i1 %.not.i131510271, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread3528, label %.lr.ph10274

.lr.ph10274:                                      ; preds = %.preheader4153
  %i.mhf = zext i32 %i.mhc to i64
  br label %bb.bna

bb.bmz:                                           ; preds = %bb.bna
  %i.mhg = add nsw i64 %indvars.iv653210272, -1   ; 2 uses
  %.not.i1315 = icmp eq i64 %i.mhg, 0
  br i1 %.not.i1315, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread3528, label %bb.bna, !llvm.loop !191

bb.bna:                                           ; preds = %.lr.ph10274, %bb.bmz
  %.016.i131310273 = phi i32 [ undef, %.lr.ph10274 ], [ %.1.i1318, %bb.bmz ]
  %indvars.iv653210272 = phi i64 [ %i.mhf, %.lr.ph10274 ], [ %i.mhg, %bb.bmz ] ; 3 uses
  %i.mhh = getelementptr [8 x i8], ptr %9, i64 %indvars.iv653210272
  %i.mhi = load i64, ptr %i.mhh, align 8, !tbaa !91 ; 3 uses
  %i.mhj = getelementptr [8 x i8], ptr %10, i64 %indvars.iv653210272
  %i.mhk = load i64, ptr %i.mhj, align 8, !tbaa !91 ; 3 uses
  %.not3689 = icmp ult i64 %i.mhi, %i.mhk
  %.not3690 = icmp ugt i64 %i.mhi, %i.mhk
  %..016.i1316 = select i1 %.not3690, i32 1, i32 %.016.i131310273
  %.1.i1318 = select i1 %.not3689, i32 -1, i32 %..016.i1316 ; 3 uses
  %cond.i1319 = icmp eq i64 %i.mhi, %i.mhk
  br i1 %cond.i1319, label %bb.bmz, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321: ; preds = %bb.bna
  %.not680.i283 = icmp eq i32 %.1.i1318, 0
  br i1 %.not680.i283, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread3528, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272, %bb.bmy, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321
  %.2.i13203527 = phi i32 [ %.1.i1318, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321 ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit1272 ], [ 1, %bb.bmy ]
  %i.mhl = icmp sgt i32 %.2.i13203527, 0
  %i.mhm = zext i1 %i.mhl to i64
  br label %bb.bnb

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread3528: ; preds = %bb.bmz, %.preheader4153, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321
  %i.mhn = and i64 %.0.i1207.ph, 1
  br label %bb.bnb

bb.bnb:                                           ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread3528, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread
  %.pn.i284 = phi i64 [ %i.mhm, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread ], [ %i.mhn, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit1321.thread3528 ]
  %.0601.i285 = add nuw nsw i64 %.pn.i284, %.0.i1207.ph ; 2 uses
  %i.mho = icmp eq i64 %.0601.i285, 9218868437227405312
  br i1 %i.mho, label %bb.bnc, label %bb.bnj, !prof !7

bb.bnc:                                           ; preds = %bb.bnb
  br i1 %.not3643, label %bb.bng, label %bb.bnd, !prof !24

bb.bnd:                                           ; preds = %bb.bnc
  %i.mhp = load ptr, ptr %i.g, align 8, !tbaa !92 ; 2 uses
  %.not681.i287 = icmp eq ptr %i.mhp, null
  br i1 %.not681.i287, label %bb.bnf, label %bb.bne

bb.bne:                                           ; preds = %bb.bnd
  store i8 0, ptr %i.mhp, align 1, !tbaa !81
  br label %bb.bnf

bb.bnf:                                           ; preds = %bb.bne, %bb.bnd
  %i.mhq = ptrtoint ptr %.73141 to i64
  %i.mhr = ptrtoint ptr %i.kkb to i64
  %i.mhs = sub i64 %i.mhq, %i.mhr
  %i.mht = shl i64 %i.mhs, 8
  %i.mhu = or disjoint i64 %i.mht, 1
  store i64 %i.mhu, ptr %i.kkg, align 8, !tbaa !79
  %i.mhv = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store ptr %i.kkb, ptr %i.mhv, align 8, !tbaa !81
  store ptr %.73141, ptr %i.g, align 8, !tbaa !92
  br label %.split3557

bb.bng:                                           ; preds = %bb.bnc
  br i1 %.not3640, label %bb.bni, label %bb.bnh, !prof !24

bb.bnh:                                           ; preds = %bb.bng
  store i64 20, ptr %i.kkg, align 8, !tbaa !79
  %i.mhw = select i1 %i.kkk, i64 -4503599627370496, i64 9218868437227405312
  %i.mhx = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store i64 %i.mhw, ptr %i.mhx, align 8, !tbaa !81
  br label %.split3557

bb.bni:                                           ; preds = %bb.bng
  store ptr @.str.82, ptr %i.f, align 8, !tbaa !92
  store ptr %i.kkb, ptr %i.e, align 8, !tbaa !92
  br label %.split3557.thread

bb.bnj:                                           ; preds = %bb.bnb
  store i64 20, ptr %i.kkg, align 8, !tbaa !79
  %i.mhy = select i1 %i.kkk, i64 -9223372036854775808, i64 0
  %i.mhz = or disjoint i64 %.0601.i285, %i.mhy
  %i.mia = getelementptr inbounds nuw i8, ptr %.23471.i, i64 24
  store i64 %i.mhz, ptr %i.mia, align 8, !tbaa !81
  br label %.split3557

.split3557.thread:                                ; preds = %bb.bmc, %bb.bni
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.bpp

.split3557:                                       ; preds = %bb.bnj, %bb.bnh, %bb.bnf, %bb.bme, %bb.bmb, %bb.blz
  store ptr %.73141, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.preheader4139

.preheader4139:                                   ; preds = %bb.bom, %bb.bon, %bb.bov, %bb.bou, %bb.bnw, %bb.bnv, %bb.axo, %bb.bpg, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672, %.split3532, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847, %.split3548, %.split3543, %.split3542, %.split3541, %.split3547, %.split3549, %.split3550, %.split3552, %.split3554, %.split3533, %.split3534, %.split3535, %.split3536, %.split3537, %.split3538, %.split3539, %.split3540, %.split3546, %.split3545, %.split3544, %.split3553, %.split3551, %.split3555, %.split3556, %.split3557
  %.15550.i.ph = phi i64 [ %.14549.i, %.split3556 ], [ %.14549.i, %.split3555 ], [ %.14549.i, %.split3554 ], [ %.14549.i, %.split3553 ], [ %.14549.i, %.split3552 ], [ %.14549.i, %.split3551 ], [ %.14549.i, %.split3550 ], [ %.14549.i, %.split3549 ], [ %.14549.i, %.split3548 ], [ %.14549.i, %.split3547 ], [ %.14549.i, %.split3546 ], [ %.14549.i, %.split3545 ], [ %.14549.i, %.split3544 ], [ %.14549.i, %.split3543 ], [ %.14549.i, %.split3542 ], [ %.14549.i, %.split3541 ], [ %.14549.i, %.split3540 ], [ %.14549.i, %.split3539 ], [ %.14549.i, %.split3538 ], [ %.14549.i, %.split3537 ], [ %.14549.i, %.split3536 ], [ %.14549.i, %.split3535 ], [ %.14549.i, %.split3534 ], [ %.14549.i, %.split3533 ], [ %.14549.i, %.split3532 ], [ %.14549.i, %bb.bnw ], [ %.14549.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672 ], [ %.14549.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847 ], [ %.14549.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844 ], [ %.14549.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841 ], [ %.14549.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353 ], [ %.14549.i, %.split3557 ], [ %.10545.i, %bb.axo ], [ %.16551.i, %bb.bpg ], [ %.14549.i, %bb.bnv ], [ %.14549.i, %bb.bou ], [ %.14549.i, %bb.bov ], [ %.14549.i, %bb.bon ], [ %.14549.i, %bb.bom ] ; 2 uses
  %.6533.i.ph = phi i64 [ %i.kkh, %.split3556 ], [ %i.kkh, %.split3555 ], [ %i.kkh, %.split3554 ], [ %i.kkh, %.split3553 ], [ %i.kkh, %.split3552 ], [ %i.kkh, %.split3551 ], [ %i.kkh, %.split3550 ], [ %i.kkh, %.split3549 ], [ %i.kkh, %.split3548 ], [ %i.kkh, %.split3547 ], [ %i.kkh, %.split3546 ], [ %i.kkh, %.split3545 ], [ %i.kkh, %.split3544 ], [ %i.kkh, %.split3543 ], [ %i.kkh, %.split3542 ], [ %i.kkh, %.split3541 ], [ %i.kkh, %.split3540 ], [ %i.kkh, %.split3539 ], [ %i.kkh, %.split3538 ], [ %i.kkh, %.split3537 ], [ %i.kkh, %.split3536 ], [ %i.kkh, %.split3535 ], [ %i.kkh, %.split3534 ], [ %i.kkh, %.split3533 ], [ %i.kkh, %.split3532 ], [ %i.mim, %bb.bnw ], [ %i.jsa, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672 ], [ %i.mim, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847 ], [ %i.mii, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844 ], [ %i.mid, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841 ], [ %i.kkh, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353 ], [ %i.kkh, %.split3557 ], [ %i.iwp, %bb.axo ], [ %i.mlv, %bb.bpg ], [ %i.mim, %bb.bnv ], [ %i.mjh, %bb.bou ], [ %i.mjh, %bb.bov ], [ %i.mjh, %bb.bon ], [ %i.mjh, %bb.bom ] ; 2 uses
  %.24524.i.ph = phi ptr [ %.23523.i, %.split3556 ], [ %.23523.i, %.split3555 ], [ %.23523.i, %.split3554 ], [ %.23523.i, %.split3553 ], [ %.23523.i, %.split3552 ], [ %.23523.i, %.split3551 ], [ %.23523.i, %.split3550 ], [ %.23523.i, %.split3549 ], [ %.23523.i, %.split3548 ], [ %.23523.i, %.split3547 ], [ %.23523.i, %.split3546 ], [ %.23523.i, %.split3545 ], [ %.23523.i, %.split3544 ], [ %.23523.i, %.split3543 ], [ %.23523.i, %.split3542 ], [ %.23523.i, %.split3541 ], [ %.23523.i, %.split3540 ], [ %.23523.i, %.split3539 ], [ %.23523.i, %.split3538 ], [ %.23523.i, %.split3537 ], [ %.23523.i, %.split3536 ], [ %.23523.i, %.split3535 ], [ %.23523.i, %.split3534 ], [ %.23523.i, %.split3533 ], [ %.23523.i, %.split3532 ], [ %.23523.i, %bb.bnw ], [ %.23523.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672 ], [ %.23523.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847 ], [ %.23523.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844 ], [ %.23523.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841 ], [ %.23523.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353 ], [ %.23523.i, %.split3557 ], [ %.17517.i, %bb.axo ], [ %.25525.i, %bb.bpg ], [ %.23523.i, %bb.bnv ], [ %.23523.i, %bb.bou ], [ %.23523.i, %bb.bov ], [ %.23523.i, %bb.bon ], [ %.23523.i, %bb.bom ] ; 5 uses
  %.24498.i.ph = phi ptr [ %.23497.i, %.split3556 ], [ %.23497.i, %.split3555 ], [ %.23497.i, %.split3554 ], [ %.23497.i, %.split3553 ], [ %.23497.i, %.split3552 ], [ %.23497.i, %.split3551 ], [ %.23497.i, %.split3550 ], [ %.23497.i, %.split3549 ], [ %.23497.i, %.split3548 ], [ %.23497.i, %.split3547 ], [ %.23497.i, %.split3546 ], [ %.23497.i, %.split3545 ], [ %.23497.i, %.split3544 ], [ %.23497.i, %.split3543 ], [ %.23497.i, %.split3542 ], [ %.23497.i, %.split3541 ], [ %.23497.i, %.split3540 ], [ %.23497.i, %.split3539 ], [ %.23497.i, %.split3538 ], [ %.23497.i, %.split3537 ], [ %.23497.i, %.split3536 ], [ %.23497.i, %.split3535 ], [ %.23497.i, %.split3534 ], [ %.23497.i, %.split3533 ], [ %.23497.i, %.split3532 ], [ %.23497.i, %bb.bnw ], [ %.23497.i, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672 ], [ %.23497.i, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847 ], [ %.23497.i, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844 ], [ %.23497.i, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841 ], [ %.23497.i, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353 ], [ %.23497.i, %.split3557 ], [ %.17491.i, %bb.axo ], [ %.25499.i, %bb.bpg ], [ %.23497.i, %bb.bnv ], [ %.23497.i, %bb.bou ], [ %.23497.i, %bb.bov ], [ %.23497.i, %bb.bon ], [ %.23497.i, %bb.bom ] ; 2 uses
  %.24472.i.ph = phi ptr [ %i.kkg, %.split3556 ], [ %i.kkg, %.split3555 ], [ %i.kkg, %.split3554 ], [ %i.kkg, %.split3553 ], [ %i.kkg, %.split3552 ], [ %i.kkg, %.split3551 ], [ %i.kkg, %.split3550 ], [ %i.kkg, %.split3549 ], [ %i.kkg, %.split3548 ], [ %i.kkg, %.split3547 ], [ %i.kkg, %.split3546 ], [ %i.kkg, %.split3545 ], [ %i.kkg, %.split3544 ], [ %i.kkg, %.split3543 ], [ %i.kkg, %.split3542 ], [ %i.kkg, %.split3541 ], [ %i.kkg, %.split3540 ], [ %i.kkg, %.split3539 ], [ %i.kkg, %.split3538 ], [ %i.kkg, %.split3537 ], [ %i.kkg, %.split3536 ], [ %i.kkg, %.split3535 ], [ %i.kkg, %.split3534 ], [ %i.kkg, %.split3533 ], [ %i.kkg, %.split3532 ], [ %i.mil, %bb.bnw ], [ %i.jrz, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672 ], [ %i.mil, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847 ], [ %i.mij, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844 ], [ %i.mie, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841 ], [ %i.kkg, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353 ], [ %i.kkg, %.split3557 ], [ %.17465.i, %bb.axo ], [ %.25473.i, %bb.bpg ], [ %i.mil, %bb.bnv ], [ %i.mjg, %bb.bou ], [ %i.mjg, %bb.bov ], [ %i.mjg, %bb.bon ], [ %i.mjg, %bb.bom ] ; 2 uses
  %.24.i180.ph = phi ptr [ %.23.i192, %.split3556 ], [ %.23.i192, %.split3555 ], [ %.23.i192, %.split3554 ], [ %.23.i192, %.split3553 ], [ %.23.i192, %.split3552 ], [ %.23.i192, %.split3551 ], [ %.23.i192, %.split3550 ], [ %.23.i192, %.split3549 ], [ %.23.i192, %.split3548 ], [ %.23.i192, %.split3547 ], [ %.23.i192, %.split3546 ], [ %.23.i192, %.split3545 ], [ %.23.i192, %.split3544 ], [ %.23.i192, %.split3543 ], [ %.23.i192, %.split3542 ], [ %.23.i192, %.split3541 ], [ %.23.i192, %.split3540 ], [ %.23.i192, %.split3539 ], [ %.23.i192, %.split3538 ], [ %.23.i192, %.split3537 ], [ %.23.i192, %.split3536 ], [ %.23.i192, %.split3535 ], [ %.23.i192, %.split3534 ], [ %.23.i192, %.split3533 ], [ %.23.i192, %.split3532 ], [ %.23.i192, %bb.bnw ], [ %.23.i192, %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit672 ], [ %.23.i192, %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847 ], [ %.23.i192, %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844 ], [ %.23.i192, %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841 ], [ %.23.i192, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353 ], [ %.23.i192, %.split3557 ], [ %i.iwn, %bb.axo ], [ %i.mlt, %bb.bpg ], [ %.23.i192, %bb.bnv ], [ %.23.i192, %bb.bou ], [ %.23.i192, %bb.bov ], [ %.23.i192, %bb.bon ], [ %.23.i192, %bb.bom ] ; 2 uses
  %i.mib = and i32 %2, 8
  %.not3832 = icmp eq i32 %i.mib, 0
  %.pre6842 = load ptr, ptr %i.e, align 8, !tbaa !92
  br label %.backedge4141

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353.thread: ; preds = %_ZN13duckdb_yyjsonL15read_inf_or_nanEbPPhS1_PNS_10yyjson_valE.exit881, %bb.bfj, %bb.bkn, %bb.bkw, %bb.blh, %bb.bkg, %bb.bkj, %bb.bfn, %bb.bfp, %bb.bjx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.bpp

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit353: ; preds = %bb.bfe, %bb.bfd, %bb.bev, %bb.bew, %bb.bfg, %bb.bgy, %bb.bhb, %bb.bhe, %bb.bhh, %bb.bhk, %bb.bkp, %bb.bkt, %bb.bkv, %bb.bkz, %bb.ble, %bb.blg
  %.343168.ph.sink = phi ptr [ %.113145, %bb.blg ], [ %i.klz, %bb.bfg ], [ %i.kos, %bb.bgy ], [ %i.koz, %bb.bhb ], [ %i.kpg, %bb.bhe ], [ %i.kpn, %bb.bhh ], [ %i.kpu, %bb.bhk ], [ %.103144.lcssa, %bb.bkp ], [ %.103144.lcssa, %bb.bkt ], [ %.103144.lcssa, %bb.bkv ], [ %.113145, %bb.bkz ], [ %.113145, %bb.ble ], [ %i.klt, %bb.bfd ], [ %i.klt, %bb.bfe ], [ %.0.i1167, %bb.bev ], [ %.0.i1167, %bb.bew ]
  store ptr %.343168.ph.sink, ptr %i.e, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %.preheader4139

bb.bnk:                                           ; preds = %bb.bef
  switch i8 %i.kka, label %bb.bnx [
    i8 123, label %.loopexit4129
    i8 91, label %.loopexit4130
    i8 116, label %bb.bnl
    i8 102, label %bb.bnm
    i8 110, label %bb.bnn
  ]

bb.bnl:                                           ; preds = %bb.bnk
  %.sroa.01.0.copyload.i1141 = load i32, ptr %i.kkb, align 1
  %i.mic = icmp eq i32 %.sroa.01.0.copyload.i1141, 1702195828
  br i1 %i.mic, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit841: ; preds = %bb.bnl
  %i.mid = add i64 %.5532.i.ph, 2
  %i.mie = getelementptr inbounds nuw i8, ptr %.23471.i, i64 16 ; 2 uses
  store i64 11, ptr %i.mie, align 8, !tbaa !79
  %i.mif = getelementptr inbounds nuw i8, ptr %i.kkb, i64 4
  store ptr %i.mif, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4139

bb.bnm:                                           ; preds = %bb.bnk
  %i.mig = getelementptr inbounds nuw i8, ptr %i.kkb, i64 1
  %.sroa.01.0.copyload.i1137 = load i32, ptr %i.mig, align 1
  %i.mih = icmp eq i32 %.sroa.01.0.copyload.i1137, 1702063201
  br i1 %i.mih, label %_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, !prof !24

_ZN13duckdb_yyjsonL10read_falseEPPhPNS_10yyjson_valE.exit844: ; preds = %bb.bnm
  %i.mii = add i64 %.5532.i.ph, 2
  %i.mij = getelementptr inbounds nuw i8, ptr %.23471.i, i64 16 ; 2 uses
  store i64 3, ptr %i.mij, align 8, !tbaa !79
  %i.mik = getelementptr inbounds nuw i8, ptr %i.kkb, i64 5
  store ptr %i.mik, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4139

bb.bnn:                                           ; preds = %bb.bnk
  %i.mil = getelementptr inbounds nuw i8, ptr %.23471.i, i64 16 ; 6 uses
  %i.mim = add i64 %.5532.i.ph, 2                 ; 3 uses
  %.sroa.01.0.copyload.i1133 = load i32, ptr %i.kkb, align 1 ; 4 uses
  %i.min = icmp eq i32 %.sroa.01.0.copyload.i1133, 1819047278
  %i.mio = trunc i32 %.sroa.01.0.copyload.i1133 to i8
  %i.mip = lshr i32 %.sroa.01.0.copyload.i1133, 8
  %i.miq = trunc i32 %i.mip to i8
  %i.mir = lshr i32 %.sroa.01.0.copyload.i1133, 16
  %i.mis = trunc i32 %i.mir to i8
  br i1 %i.min, label %_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847, label %bb.bno, !prof !24

_ZN13duckdb_yyjsonL9read_nullEPPhPNS_10yyjson_valE.exit847: ; preds = %bb.bnn
  store i64 2, ptr %i.mil, align 8, !tbaa !79
  %i.mit = getelementptr inbounds nuw i8, ptr %i.kkb, i64 4
  store ptr %i.mit, ptr %i.e, align 8, !tbaa !92
  br label %.preheader4139

bb.bno:                                           ; preds = %bb.bnn
  br i1 %.not3640, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread, label %bb.bnp, !prof !24

bb.bnp:                                           ; preds = %bb.bno
  switch i8 %i.mio, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 78, label %bb.bnq
    i8 110, label %bb.bnq
  ]

bb.bnq:                                           ; preds = %bb.bnp, %bb.bnp
  switch i8 %i.miq, label %_ZN13duckdb_yyjsonL9read_trueEPPhPNS_10yyjson_valE.exit.thread [
    i8 65, label %bb.bnr
    i8 97, label %bb.bnr
  ]

end_hunk_7
begin_hunk_8_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
bb.hh:                                            ; preds = %bb.hg, %bb.he
  %.0548 = phi i64 [ %i.yv, %bb.he ], [ %i.zl, %bb.hg ] ; 2 uses
  %i.zm = icmp sgt i64 %.0548, -1                 ; 2 uses
  %.neg674.i = sext i1 %i.zm to i32
  %i.zn = zext i1 %i.zm to i64
  %i.zo = shl i64 %.0548, %i.zn                   ; 2 uses
  %i.zp = and i64 %i.zo, 1024
  %i.zq = add i64 %i.zp, %i.zo                    ; 2 uses
  %i.zr = icmp ult i64 %i.zq, 1024
  %spec.select584.v = select i1 %i.zr, i32 65, i32 64
  %i.zs = lshr i64 %i.zq, 11
  %reass.sub976 = sub nsw i32 %i.yn, %i.yp
  %i.zt = add nsw i32 %reass.sub976, 1086
  %spec.select584 = add nsw i32 %i.zt, %.neg674.i
  %i.zu = add nsw i32 %spec.select584, %spec.select584.v
  %i.zv = zext nneg i32 %i.zu to i64
  %i.zw = shl nuw nsw i64 %i.zv, 52
  %i.zx = and i64 %i.zs, 4503599627370495
  %i.zy = or disjoint i64 %i.zw, %i.zx
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.zz = select i1 %i.t, i64 -9223372036854775808, i64 0
  %i.aaa = or disjoint i64 %i.zy, %i.zz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.aaa, ptr %i.aab, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread

.critedge689.i:                                   ; preds = %..critedge689.i_crit_edge, %bb.hf
  %.pre-phi1142 = phi i32 [ %.pre1141, %..critedge689.i_crit_edge ], [ %i.yp, %bb.hf ]
  %.pre-phi1140 = phi i128 [ %.pre1139, %..critedge689.i_crit_edge ], [ %i.yr, %bb.hf ]
  %.pre-phi1138 = phi i32 [ %.pre1137, %..critedge689.i_crit_edge ], [ %i.yn, %bb.hf ]
  %.pre-phi1132 = phi i32 [ %.pre1131, %..critedge689.i_crit_edge ], [ %i.yg, %bb.hf ] ; 2 uses
  %.pre-phi1128 = phi i64 [ %.pre1127, %..critedge689.i_crit_edge ], [ %i.yo, %bb.hf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.aac = select i1 %i.yc, i64 0, i64 4
  %i.aad = shl i64 %i.aac, %.pre-phi1128          ; 2 uses
  %i.aae = add i32 %.pre-phi1132, 686
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.aaf
  %i.aah = load i64, ptr %i.aag, align 16, !tbaa !91
  %i.aai = add i32 %.pre-phi1132, 687
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.aaj
  %i.aal = load i64, ptr %i.aak, align 8, !tbaa !91
  %i.aam = lshr i64 %i.aal, 63
  %i.aan = add i64 %i.aam, %i.aah
  %i.aao = zext i64 %i.aan to i128
  %i.aap = mul nuw i128 %.pre-phi1140, %i.aao     ; 2 uses
  %i.aaq = lshr i128 %i.aap, 64
  %i.aar = trunc nuw i128 %i.aaq to i64
  %i.aas = trunc i128 %i.aap to i64
  %i.aat = lshr i64 %i.aas, 63
  %i.aau = add nuw i64 %i.aat, %i.aar             ; 2 uses
  %.not677.i = icmp eq i64 %i.aad, 0
  %i.aav = select i1 %.not677.i, i64 8, i64 9
  %i.aaw = add i64 %i.aav, %i.aad
  %i.aax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aau, i1 true) ; 3 uses
  %i.aay = trunc nuw nsw i64 %i.aax to i32
  %i.aaz = shl i64 %i.aau, %i.aax                 ; 3 uses
  %i.aba = add nsw i32 %.pre-phi1138, 64
  %i.abb = add nuw nsw i32 %.pre-phi1142, %i.aay
  %i.abc = sub nsw i32 %i.aba, %i.abb             ; 7 uses
  %i.abd = shl i64 %i.aaw, %i.aax                 ; 3 uses
  %i.abe = icmp sgt i32 %i.abc, -1086
  br i1 %i.abe, label %.thread560, label %bb.hi, !prof !24

bb.hi:                                            ; preds = %.critedge689.i
  %i.abf = icmp samesign ult i32 %i.abc, -1137
  br i1 %i.abf, label %.thread557, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.abg = sub nuw nsw i32 -1074, %i.abc          ; 2 uses
  %i.abh = icmp samesign ult i32 %i.abc, -1134
  br i1 %i.abh, label %.thread557, label %.thread560, !prof !255

.thread557:                                       ; preds = %bb.hi, %bb.hj
  %.0603.i559 = phi i32 [ %i.abg, %bb.hj ], [ 64, %bb.hi ]
  %i.abi = add nsw i32 %.0603.i559, -60           ; 2 uses
  %i.abj = zext nneg i32 %i.abi to i64            ; 2 uses
  %i.abk = lshr i64 %i.aaz, %i.abj
  %i.abl = add nsw i32 %i.abi, %i.abc
  %i.abm = lshr i64 %i.abd, %i.abj
  %i.abn = add nuw i64 %i.abm, 9
  br label %.thread560

.thread560:                                       ; preds = %.critedge689.i, %.thread557, %bb.hj
  %.0604.i = phi i64 [ %i.abn, %.thread557 ], [ %i.abd, %bb.hj ], [ %i.abd, %.critedge689.i ] ; 2 uses
  %.0602.i = phi i32 [ 60, %.thread557 ], [ %i.abg, %bb.hj ], [ 11, %.critedge689.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.abl, %.thread557 ], [ %i.abc, %bb.hj ], [ %i.abc, %.critedge689.i ]
  %.sroa.029.0.i = phi i64 [ %i.abk, %.thread557 ], [ %i.aaz, %bb.hj ], [ %i.aaz, %.critedge689.i ] ; 2 uses
  %i.abo = zext nneg i32 %.0602.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.abo
  %i.abp = xor i64 %notmask.i, -1
  %i.abq = and i64 %.sroa.029.0.i, %i.abp
  %i.abr = shl nuw nsw i64 %i.abq, 3              ; 2 uses
  %i.abs = add nsw i32 %.0602.i, -1
  %i.abt = zext nneg i32 %i.abs to i64
  %i.abu = shl nuw nsw i64 8, %i.abt              ; 2 uses
  %i.abv = lshr i64 %.sroa.029.0.i, %i.abo
  %i.abw = add i64 %i.abu, %.0604.i
  %i.abx = icmp uge i64 %i.abr, %i.abw            ; 2 uses
  %i.aby = zext i1 %i.abx to i64
  %i.abz = add nuw nsw i64 %i.abv, %i.aby         ; 3 uses
  %i.aca = icmp eq i64 %i.abz, 0
  br i1 %i.aca, label %bb.hv, label %bb.hk, !prof !7

bb.hk:                                            ; preds = %.thread560
  %i.acb = add nsw i32 %.sroa.19.0.in.i, %.0602.i
  %i.acc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.abz, i1 true) ; 2 uses
  %i.acd = trunc nuw nsw i64 %i.acc to i32
  %i.ace = shl i64 %i.abz, %i.acc
  %i.acf = lshr i64 %i.ace, 11                    ; 2 uses
  %i.acg = sub nsw i32 %i.acb, %i.acd             ; 5 uses
  %i.ach = icmp sgt i32 %i.acg, 960
  br i1 %i.ach, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit, label %bb.hl, !prof !7

bb.hl:                                            ; preds = %bb.hk
  %i.aci = icmp sgt i32 %i.acg, -1086
  br i1 %i.aci, label %bb.hm, label %bb.hn, !prof !24

bb.hm:                                            ; preds = %bb.hl
  %i.acj = add nsw i32 %i.acg, 1086
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = shl nuw nsw i64 %i.ack, 52
  %i.acm = and i64 %i.acf, 4503599627370495
  %i.acn = or disjoint i64 %i.acl, %i.acm
  br label %bb.hv

bb.hn:                                            ; preds = %bb.hl
  %i.aco = icmp samesign ugt i32 %i.acg, -1138
  br i1 %i.aco, label %bb.ho, label %bb.hv, !prof !24

bb.ho:                                            ; preds = %bb.hn
  %i.acp = sub nuw nsw i32 -1085, %i.acg
  %i.acq = zext nneg i32 %i.acp to i64
  %i.acr = lshr i64 %i.acf, %i.acq
  br label %bb.hv

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit: ; preds = %bb.hk
  br i1 %.not622, label %bb.hs, label %bb.hp, !prof !24

bb.hp:                                            ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit
  %i.acs = load ptr, ptr %i.d, align 8, !tbaa !92 ; 2 uses
  %.not682.i = icmp eq ptr %i.acs, null
  br i1 %.not682.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  store i8 0, ptr %i.acs, align 1, !tbaa !81
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.act = ptrtoint ptr %.7 to i64
  %i.acu = ptrtoint ptr %1 to i64
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = shl i64 %i.acv, 8
  %i.acx = or disjoint i64 %i.acw, 1
  store i64 %i.acx, ptr %i.i, align 8, !tbaa !79
  %i.acy = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %1, ptr %i.acy, align 8, !tbaa !81
  store ptr %.7, ptr %i.d, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575

bb.hs:                                            ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit
  %i.acz = and i32 %4, 16
  %.not667 = icmp eq i32 %i.acz, 0
  br i1 %.not667, label %bb.hu, label %bb.ht, !prof !24

bb.ht:                                            ; preds = %bb.hs
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.ada = select i1 %i.t, i64 -4503599627370496, i64 9218868437227405312
  %i.adb = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.ada, ptr %i.adb, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575

bb.hu:                                            ; preds = %bb.hs
  store ptr @.str.82, ptr %i.c, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.hv:                                            ; preds = %.thread560, %bb.hm, %bb.ho, %bb.hn
  %.0.i220.ph = phi i64 [ 0, %bb.hn ], [ %i.acr, %bb.ho ], [ %i.acn, %bb.hm ], [ 0, %.thread560 ] ; 7 uses
  %i.adc = sub i64 %i.abu, %.0604.i
  %.not678.i = icmp ule i64 %i.abr, %i.adc
  %spec.select.i = or i1 %.not678.i, %i.abx
  br i1 %spec.select.i, label %bb.hw, label %bb.hx, !prof !24

bb.hw:                                            ; preds = %bb.hv
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.add = select i1 %i.t, i64 -9223372036854775808, i64 0
  %i.ade = or disjoint i64 %.0.i220.ph, %i.add
  %i.adf = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.ade, ptr %i.adf, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575

bb.hx:                                            ; preds = %bb.hv
  %.not679.i = icmp samesign ult i64 %.0.i220.ph, 4503599627370496 ; 2 uses
  %i.adg = and i64 %.0.i220.ph, 4503599627370495
  %i.adh = or disjoint i64 %i.adg, 4503599627370496
  %i.adi = lshr i64 %.0.i220.ph, 52
  %i.adj = trunc nuw nsw i64 %i.adi to i32
  %i.adk = add nsw i32 %i.adj, -1076
  %.sroa.9.0.i = select i1 %.not679.i, i32 -1075, i32 %i.adk ; 4 uses
  %.sroa.022.0.i = select i1 %.not679.i, i64 %.0.i220.ph, i64 %i.adh
  %i.adl = shl nuw nsw i64 %.sroa.022.0.i, 1
  %i.adm = or disjoint i64 %i.adl, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %6, i64 noundef %.22596.i, ptr noundef %i.a, ptr noundef %.3565.i, ptr noundef %.3569.i, ptr noundef %.23.i)
  %i.adn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 29 uses
  store i64 %i.adm, ptr %i.adn, align 8, !tbaa !91
  %i.ado = load i32, ptr %i.a, align 4, !tbaa !3  ; 6 uses
  %i.adp = icmp sgt i32 %i.ado, -1
  br i1 %i.adp, label %.preheader701, label %bb.if

.preheader701:                                    ; preds = %bb.hx
  %.promoted801 = load i32, ptr %6, align 8       ; 2 uses
  %i.adq = icmp samesign ugt i32 %i.ado, 18
  br i1 %i.adq, label %.lr.ph804, label %._crit_edge805

.lr.ph804:                                        ; preds = %.preheader701
  %i.adr = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  br label %bb.hy

bb.hy:                                            ; preds = %.lr.ph804, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255
  %.0.i221803 = phi i32 [ %i.ado, %.lr.ph804 ], [ %i.aff, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255 ] ; 2 uses
  %i.ads = phi i32 [ %.promoted801, %.lr.ph804 ], [ %i.afe, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255 ] ; 9 uses
  %.not974 = icmp eq i32 %i.ads, 0
  br i1 %.not974, label %._crit_edge791, label %.lr.ph790.preheader

.lr.ph790.preheader:                              ; preds = %bb.hy
  %wide.trip.count1063 = zext i32 %i.ads to i64
  br label %.lr.ph790

.lr.ph790:                                        ; preds = %.lr.ph790.preheader, %bb.hz
  %indvars.iv1060 = phi i64 [ 0, %.lr.ph790.preheader ], [ %indvars.iv.next1061, %bb.hz ] ; 3 uses
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %indvars.iv1060
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !91
  %.not.i254 = icmp eq i64 %i.adu, 0
  br i1 %.not.i254, label %bb.hz, label %._crit_edge791.loopexit

bb.hz:                                            ; preds = %.lr.ph790
  %indvars.iv.next1061 = add nuw nsw i64 %indvars.iv1060, 1 ; 2 uses
  %exitcond1064.not = icmp eq i64 %indvars.iv.next1061, %wide.trip.count1063
  br i1 %exitcond1064.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255, label %.lr.ph790, !llvm.loop !174

._crit_edge791.loopexit:                          ; preds = %.lr.ph790
  %i.adv = trunc nuw i64 %indvars.iv1060 to i32
  br label %._crit_edge791

._crit_edge791:                                   ; preds = %._crit_edge791.loopexit, %bb.hy
  %.018.i250.lcssa = phi i32 [ 0, %bb.hy ], [ %i.adv, %._crit_edge791.loopexit ] ; 2 uses
  %i.adw = icmp ult i32 %.018.i250.lcssa, %i.ads
  br i1 %i.adw, label %.lr.ph798.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255

.lr.ph798.preheader:                              ; preds = %._crit_edge791
  %i.adx = zext i32 %.018.i250.lcssa to i64       ; 4 uses
  %wide.trip.count1068 = zext i32 %i.ads to i64   ; 2 uses
  %i.ady = sub nsw i64 %wide.trip.count1068, %i.adx ; 3 uses
  %xtraiter1907 = and i64 %i.ady, 1
  %i.adz = add nsw i64 %wide.trip.count1068, -1
  %i.aea = icmp eq i64 %i.adz, %i.adx
  br i1 %i.aea, label %.lr.ph798.epil.preheader, label %.lr.ph798.preheader.new

.lr.ph798.preheader.new:                          ; preds = %.lr.ph798.preheader
  %unroll_iter1912 = and i64 %i.ady, -2
  br label %.lr.ph798

.lr.ph798:                                        ; preds = %.lr.ph798, %.lr.ph798.preheader.new
  %indvars.iv1065 = phi i64 [ %i.adx, %.lr.ph798.preheader.new ], [ %indvars.iv.next1066.1, %.lr.ph798 ] ; 3 uses
  %.0.i252796 = phi i64 [ 0, %.lr.ph798.preheader.new ], [ %i.aeq, %.lr.ph798 ]
  %niter1913 = phi i64 [ 0, %.lr.ph798.preheader.new ], [ %niter1913.next.1, %.lr.ph798 ]
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %indvars.iv1065 ; 2 uses
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !91
  %i.aed = zext i64 %i.aec to i128
  %i.aee = mul nuw i128 %i.aed, 10000000000000000000
  %i.aef = zext i64 %.0.i252796 to i128
  %i.aeg = add nuw i128 %i.aee, %i.aef            ; 2 uses
  %i.aeh = lshr i128 %i.aeg, 64
  %i.aei = trunc i128 %i.aeg to i64
  store i64 %i.aei, ptr %i.aeb, align 8, !tbaa !91
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %indvars.iv1065
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 8 ; 2 uses
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !91
  %i.aem = zext i64 %i.ael to i128
  %i.aen = mul nuw i128 %i.aem, 10000000000000000000
  %i.aeo = add nuw i128 %i.aen, %i.aeh            ; 2 uses
  %i.aep = lshr i128 %i.aeo, 64                   ; 2 uses
  %i.aeq = trunc nuw i128 %i.aep to i64           ; 3 uses
  %i.aer = trunc i128 %i.aeo to i64
  store i64 %i.aer, ptr %i.aek, align 8, !tbaa !91
  %indvars.iv.next1066.1 = add nuw nsw i64 %indvars.iv1065, 2 ; 2 uses
  %niter1913.next.1 = add i64 %niter1913, 2       ; 2 uses
  %niter1913.ncmp.1 = icmp eq i64 %niter1913.next.1, %unroll_iter1912
  br i1 %niter1913.ncmp.1, label %._crit_edge799.unr-lcssa, label %.lr.ph798, !llvm.loop !175

._crit_edge799.unr-lcssa:                         ; preds = %.lr.ph798
  %lcmp.mod1908.not = icmp eq i64 %xtraiter1907, 0
  br i1 %lcmp.mod1908.not, label %._crit_edge799, label %.lr.ph798.epil.preheader

.lr.ph798.epil.preheader:                         ; preds = %._crit_edge799.unr-lcssa, %.lr.ph798.preheader
  %indvars.iv1065.epil.init = phi i64 [ %i.adx, %.lr.ph798.preheader ], [ %indvars.iv.next1066.1, %._crit_edge799.unr-lcssa ]
  %.0.i252796.epil.init = phi i64 [ 0, %.lr.ph798.preheader ], [ %i.aeq, %._crit_edge799.unr-lcssa ]
  %lcmp.mod1911 = trunc i64 %i.ady to i1
  tail call void @llvm.assume(i1 %lcmp.mod1911)
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %indvars.iv1065.epil.init ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !91
  %i.aeu = zext i64 %i.aet to i128
  %i.aev = mul nuw i128 %i.aeu, 10000000000000000000
  %i.aew = zext i64 %.0.i252796.epil.init to i128
  %i.aex = add nuw i128 %i.aev, %i.aew            ; 2 uses
  %i.aey = lshr i128 %i.aex, 64                   ; 2 uses
  %i.aez = trunc nuw i128 %i.aey to i64
  %i.afa = trunc i128 %i.aex to i64
  store i64 %i.afa, ptr %i.aes, align 8, !tbaa !91
  br label %._crit_edge799

._crit_edge799:                                   ; preds = %._crit_edge799.unr-lcssa, %.lr.ph798.epil.preheader
  %.lcssa1878 = phi i128 [ %i.aep, %._crit_edge799.unr-lcssa ], [ %i.aey, %.lr.ph798.epil.preheader ]
  %.lcssa1877 = phi i64 [ %i.aeq, %._crit_edge799.unr-lcssa ], [ %i.aez, %.lr.ph798.epil.preheader ]
  %.not19.i253 = icmp eq i128 %.lcssa1878, 0
  br i1 %.not19.i253, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255, label %bb.ia

bb.ia:                                            ; preds = %._crit_edge799
  %i.afb = add i32 %i.ads, 1
  %i.afc = zext i32 %i.ads to i64
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.afc
  store i64 %.lcssa1877, ptr %i.afd, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255: ; preds = %bb.hz, %._crit_edge791, %._crit_edge799, %bb.ia
  %i.afe = phi i32 [ %i.ads, %._crit_edge799 ], [ %i.afb, %bb.ia ], [ %i.ads, %._crit_edge791 ], [ %i.ads, %bb.hz ] ; 2 uses
  %i.aff = add nsw i32 %.0.i221803, -19           ; 2 uses
  %i.afg = icmp sgt i32 %.0.i221803, 37
  br i1 %i.afg, label %bb.hy, label %._crit_edge805, !llvm.loop !176

._crit_edge805:                                   ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255, %.preheader701
  %i.afh = phi i32 [ %.promoted801, %.preheader701 ], [ %i.afe, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255 ] ; 7 uses
  %.0.i221.lcssa = phi i32 [ %i.ado, %.preheader701 ], [ %i.aff, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit255 ] ; 2 uses
  store i32 %i.afh, ptr %6, align 8
  %.not.i222 = icmp eq i32 %.0.i221.lcssa, 0
  br i1 %.not.i222, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.ib

bb.ib:                                            ; preds = %._crit_edge805
  %i.afi = sext i32 %.0.i221.lcssa to i64
  %i.afj = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.afi
  %i.afk = load i64, ptr %i.afj, align 8, !tbaa !91
  %i.afl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %.not975 = icmp eq i32 %i.afh, 0
  br i1 %.not975, label %._crit_edge811, label %.lr.ph810.preheader

.lr.ph810.preheader:                              ; preds = %bb.ib
  %wide.trip.count1073 = zext i32 %i.afh to i64
  br label %.lr.ph810

.lr.ph810:                                        ; preds = %.lr.ph810.preheader, %bb.ic
  %indvars.iv1070 = phi i64 [ 0, %.lr.ph810.preheader ], [ %indvars.iv.next1071, %bb.ic ] ; 3 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.afl, i64 %indvars.iv1070
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !91
  %.not.i260 = icmp eq i64 %i.afn, 0
  br i1 %.not.i260, label %bb.ic, label %._crit_edge811.loopexit

bb.ic:                                            ; preds = %.lr.ph810
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 1 ; 2 uses
  %exitcond1074.not = icmp eq i64 %indvars.iv.next1071, %wide.trip.count1073
  br i1 %exitcond1074.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %.lr.ph810, !llvm.loop !174

._crit_edge811.loopexit:                          ; preds = %.lr.ph810
  %i.afo = trunc nuw i64 %indvars.iv1070 to i32
  br label %._crit_edge811

._crit_edge811:                                   ; preds = %._crit_edge811.loopexit, %bb.ib
  %.018.i256.lcssa = phi i32 [ 0, %bb.ib ], [ %i.afo, %._crit_edge811.loopexit ] ; 2 uses
  %i.afp = icmp ult i32 %.018.i256.lcssa, %i.afh
  br i1 %i.afp, label %.lr.ph818, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

.lr.ph818:                                        ; preds = %._crit_edge811
  %i.afq = zext i64 %i.afk to i128                ; 3 uses
  %i.afr = zext i32 %.018.i256.lcssa to i64       ; 4 uses
  %wide.trip.count1078 = zext i32 %i.afh to i64   ; 2 uses
  %i.afs = sub nsw i64 %wide.trip.count1078, %i.afr ; 3 uses
  %xtraiter1915 = and i64 %i.afs, 1
  %i.aft = add nsw i64 %wide.trip.count1078, -1
  %i.afu = icmp eq i64 %i.aft, %i.afr
  br i1 %i.afu, label %.epil.preheader1914, label %.lr.ph818.new

.lr.ph818.new:                                    ; preds = %.lr.ph818
  %unroll_iter1920 = and i64 %i.afs, -2
  br label %bb.id

bb.id:                                            ; preds = %bb.id, %.lr.ph818.new
  %indvars.iv1075 = phi i64 [ %i.afr, %.lr.ph818.new ], [ %indvars.iv.next1076.1, %bb.id ] ; 3 uses
  %.0.i258816 = phi i64 [ 0, %.lr.ph818.new ], [ %i.agk, %bb.id ]
  %niter1921 = phi i64 [ 0, %.lr.ph818.new ], [ %niter1921.next.1, %bb.id ]
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.afl, i64 %indvars.iv1075 ; 2 uses
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !91
  %i.afx = zext i64 %i.afw to i128
  %i.afy = mul nuw i128 %i.afx, %i.afq
  %i.afz = zext i64 %.0.i258816 to i128
  %i.aga = add nuw i128 %i.afy, %i.afz            ; 2 uses
  %i.agb = lshr i128 %i.aga, 64
  %i.agc = trunc i128 %i.aga to i64
  store i64 %i.agc, ptr %i.afv, align 8, !tbaa !91
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.afl, i64 %indvars.iv1075
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN13duckdb_yyjsonL16read_root_singleEPhS0_S0_NS_10yyjson_alcEjPNS_15yyjson_read_errE:bb.a
.lr.ph765:                                        ; preds = %.lr.ph765, %.lr.ph765.preheader.new
  %indvars.iv1045 = phi i64 [ %i.ahg, %.lr.ph765.preheader.new ], [ %indvars.iv.next1046.1, %.lr.ph765 ] ; 3 uses
  %.0.i242763 = phi i64 [ 0, %.lr.ph765.preheader.new ], [ %i.ahz, %.lr.ph765 ]
  %niter = phi i64 [ 0, %.lr.ph765.preheader.new ], [ %niter.next.1, %.lr.ph765 ]
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1045 ; 2 uses
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !91
  %i.ahm = zext i64 %i.ahl to i128
  %i.ahn = mul nuw i128 %i.ahm, 10000000000000000000
  %i.aho = zext i64 %.0.i242763 to i128
  %i.ahp = add nuw i128 %i.ahn, %i.aho            ; 2 uses
  %i.ahq = lshr i128 %i.ahp, 64
  %i.ahr = trunc i128 %i.ahp to i64
  store i64 %i.ahr, ptr %i.ahk, align 8, !tbaa !91
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1045
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8 ; 2 uses
  %i.ahu = load i64, ptr %i.aht, align 8, !tbaa !91
  %i.ahv = zext i64 %i.ahu to i128
  %i.ahw = mul nuw i128 %i.ahv, 10000000000000000000
  %i.ahx = add nuw i128 %i.ahw, %i.ahq            ; 2 uses
  %i.ahy = lshr i128 %i.ahx, 64                   ; 2 uses
  %i.ahz = trunc nuw i128 %i.ahy to i64           ; 3 uses
  %i.aia = trunc i128 %i.ahx to i64
  store i64 %i.aia, ptr %i.aht, align 8, !tbaa !91
  %indvars.iv.next1046.1 = add nuw nsw i64 %indvars.iv1045, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge766.unr-lcssa, label %.lr.ph765, !llvm.loop !175

._crit_edge766.unr-lcssa:                         ; preds = %.lr.ph765
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge766, label %.lr.ph765.epil.preheader

.lr.ph765.epil.preheader:                         ; preds = %._crit_edge766.unr-lcssa, %.lr.ph765.preheader
  %indvars.iv1045.epil.init = phi i64 [ %i.ahg, %.lr.ph765.preheader ], [ %indvars.iv.next1046.1, %._crit_edge766.unr-lcssa ]
  %.0.i242763.epil.init = phi i64 [ 0, %.lr.ph765.preheader ], [ %i.ahz, %._crit_edge766.unr-lcssa ]
  %lcmp.mod1899 = trunc i64 %i.ahh to i1
  tail call void @llvm.assume(i1 %lcmp.mod1899)
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1045.epil.init ; 2 uses
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !91
  %i.aid = zext i64 %i.aic to i128
  %i.aie = mul nuw i128 %i.aid, 10000000000000000000
  %i.aif = zext i64 %.0.i242763.epil.init to i128
  %i.aig = add nuw i128 %i.aie, %i.aif            ; 2 uses
  %i.aih = lshr i128 %i.aig, 64                   ; 2 uses
  %i.aii = trunc nuw i128 %i.aih to i64
  %i.aij = trunc i128 %i.aig to i64
  store i64 %i.aij, ptr %i.aib, align 8, !tbaa !91
  br label %._crit_edge766

._crit_edge766:                                   ; preds = %._crit_edge766.unr-lcssa, %.lr.ph765.epil.preheader
  %.lcssa1887 = phi i128 [ %i.ahy, %._crit_edge766.unr-lcssa ], [ %i.aih, %.lr.ph765.epil.preheader ]
  %.lcssa1886 = phi i64 [ %i.ahz, %._crit_edge766.unr-lcssa ], [ %i.aii, %.lr.ph765.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa1887, 0
  br i1 %.not19.i, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit, label %bb.ih

bb.ih:                                            ; preds = %._crit_edge766
  %i.aik = add i32 %i.ahb, 1
  %i.ail = zext i32 %i.ahb to i64
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.ail
  store i64 %.lcssa1886, ptr %i.aim, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit: ; preds = %bb.ig, %._crit_edge758, %._crit_edge766, %bb.ih
  %i.ain = phi i32 [ %i.ahb, %._crit_edge766 ], [ %i.aik, %bb.ih ], [ %i.ahb, %._crit_edge758 ], [ %i.ahb, %bb.ig ] ; 5 uses
  %i.aio = add nsw i32 %.0.i223769, -19           ; 3 uses
  %i.aip = icmp sgt i32 %.0.i223769, 37
  br i1 %i.aip, label %.lr.ph771, label %._crit_edge772, !llvm.loop !176

._crit_edge772:                                   ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit
  store i32 %i.ain, ptr %7, align 8
  %.not.i224 = icmp eq i32 %i.aio, 0
  br i1 %.not.i224, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.ii

bb.ii:                                            ; preds = %._crit_edge772
  %i.aiq = sext i32 %i.aio to i64
  %i.air = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.aiq
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !91 ; 2 uses
  %.not973 = icmp eq i32 %i.ain, 0
  br i1 %.not973, label %._crit_edge778, label %.lr.ph777.preheader

.lr.ph777.preheader:                              ; preds = %.thread1257, %bb.ii
  %i.ait = phi i64 [ %i.aha, %.thread1257 ], [ %i.ais, %bb.ii ]
  %i.aiu = phi i32 [ 1, %.thread1257 ], [ %i.ain, %bb.ii ] ; 3 uses
  %wide.trip.count1053 = zext i32 %i.aiu to i64
  br label %.lr.ph777

.lr.ph777:                                        ; preds = %.lr.ph777.preheader, %bb.ij
  %indvars.iv1050 = phi i64 [ 0, %.lr.ph777.preheader ], [ %indvars.iv.next1051, %bb.ij ] ; 3 uses
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1050
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !91
  %.not.i248 = icmp eq i64 %i.aiw, 0
  br i1 %.not.i248, label %bb.ij, label %._crit_edge778.loopexit

bb.ij:                                            ; preds = %.lr.ph777
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 1 ; 2 uses
  %exitcond1054.not = icmp eq i64 %indvars.iv.next1051, %wide.trip.count1053
  br i1 %exitcond1054.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %.lr.ph777, !llvm.loop !174

._crit_edge778.loopexit:                          ; preds = %.lr.ph777
  %i.aix = trunc nuw i64 %indvars.iv1050 to i32
  br label %._crit_edge778

._crit_edge778:                                   ; preds = %._crit_edge778.loopexit, %bb.ii
  %i.aiy = phi i64 [ %i.ais, %bb.ii ], [ %i.ait, %._crit_edge778.loopexit ]
  %i.aiz = phi i32 [ 0, %bb.ii ], [ %i.aiu, %._crit_edge778.loopexit ] ; 6 uses
  %.018.i244.lcssa = phi i32 [ 0, %bb.ii ], [ %i.aix, %._crit_edge778.loopexit ] ; 2 uses
  %i.aja = icmp ult i32 %.018.i244.lcssa, %i.aiz
  br i1 %i.aja, label %.lr.ph785, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

.lr.ph785:                                        ; preds = %._crit_edge778
  %i.ajb = zext i64 %i.aiy to i128                ; 3 uses
  %i.ajc = zext i32 %.018.i244.lcssa to i64       ; 4 uses
  %wide.trip.count1058 = zext i32 %i.aiz to i64   ; 2 uses
  %i.ajd = sub nsw i64 %wide.trip.count1058, %i.ajc ; 3 uses
  %xtraiter1900 = and i64 %i.ajd, 1
  %i.aje = add nsw i64 %wide.trip.count1058, -1
  %i.ajf = icmp eq i64 %i.aje, %i.ajc
  br i1 %i.ajf, label %.epil.preheader, label %.lr.ph785.new

.lr.ph785.new:                                    ; preds = %.lr.ph785
  %unroll_iter1905 = and i64 %i.ajd, -2
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ik, %.lr.ph785.new
  %indvars.iv1055 = phi i64 [ %i.ajc, %.lr.ph785.new ], [ %indvars.iv.next1056.1, %bb.ik ] ; 3 uses
  %.0.i246783 = phi i64 [ 0, %.lr.ph785.new ], [ %i.ajv, %bb.ik ]
  %niter1906 = phi i64 [ 0, %.lr.ph785.new ], [ %niter1906.next.1, %bb.ik ]
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1055 ; 2 uses
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !91
  %i.aji = zext i64 %i.ajh to i128
  %i.ajj = mul nuw i128 %i.aji, %i.ajb
  %i.ajk = zext i64 %.0.i246783 to i128
  %i.ajl = add nuw i128 %i.ajj, %i.ajk            ; 2 uses
  %i.ajm = lshr i128 %i.ajl, 64
  %i.ajn = trunc i128 %i.ajl to i64
  store i64 %i.ajn, ptr %i.ajg, align 8, !tbaa !91
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1055
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8 ; 2 uses
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !91
  %i.ajr = zext i64 %i.ajq to i128
  %i.ajs = mul nuw i128 %i.ajr, %i.ajb
  %i.ajt = add nuw i128 %i.ajs, %i.ajm            ; 2 uses
  %i.aju = lshr i128 %i.ajt, 64                   ; 2 uses
  %i.ajv = trunc nuw i128 %i.aju to i64           ; 3 uses
  %i.ajw = trunc i128 %i.ajt to i64
  store i64 %i.ajw, ptr %i.ajp, align 8, !tbaa !91
  %indvars.iv.next1056.1 = add nuw nsw i64 %indvars.iv1055, 2 ; 2 uses
  %niter1906.next.1 = add i64 %niter1906, 2       ; 2 uses
  %niter1906.ncmp.1 = icmp eq i64 %niter1906.next.1, %unroll_iter1905
  br i1 %niter1906.ncmp.1, label %._crit_edge786.unr-lcssa, label %bb.ik, !llvm.loop !175

._crit_edge786.unr-lcssa:                         ; preds = %bb.ik
  %lcmp.mod1901.not = icmp eq i64 %xtraiter1900, 0
  br i1 %lcmp.mod1901.not, label %._crit_edge786, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge786.unr-lcssa, %.lr.ph785
  %indvars.iv1055.epil.init = phi i64 [ %i.ajc, %.lr.ph785 ], [ %indvars.iv.next1056.1, %._crit_edge786.unr-lcssa ]
  %.0.i246783.epil.init = phi i64 [ 0, %.lr.ph785 ], [ %i.ajv, %._crit_edge786.unr-lcssa ]
  %lcmp.mod1904 = trunc i64 %i.ajd to i1
  tail call void @llvm.assume(i1 %lcmp.mod1904)
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1055.epil.init ; 2 uses
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !91
  %i.ajz = zext i64 %i.ajy to i128
  %i.aka = mul nuw i128 %i.ajz, %i.ajb
  %i.akb = zext i64 %.0.i246783.epil.init to i128
  %i.akc = add nuw i128 %i.aka, %i.akb            ; 2 uses
  %i.akd = lshr i128 %i.akc, 64                   ; 2 uses
  %i.ake = trunc nuw i128 %i.akd to i64
  %i.akf = trunc i128 %i.akc to i64
  store i64 %i.akf, ptr %i.ajx, align 8, !tbaa !91
  br label %._crit_edge786

._crit_edge786:                                   ; preds = %._crit_edge786.unr-lcssa, %.epil.preheader
  %.lcssa1882 = phi i128 [ %i.aju, %._crit_edge786.unr-lcssa ], [ %i.akd, %.epil.preheader ]
  %.lcssa1881 = phi i64 [ %i.ajv, %._crit_edge786.unr-lcssa ], [ %i.ake, %.epil.preheader ]
  %.not19.i247 = icmp eq i128 %.lcssa1882, 0
  br i1 %.not19.i247, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.il

bb.il:                                            ; preds = %._crit_edge786
  %i.akg = add i32 %i.aiz, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split: ; preds = %bb.ie, %bb.il
  %.sink1392 = phi i32 [ %i.aiz, %bb.il ], [ %i.afh, %bb.ie ]
  %i.akh = phi ptr [ %7, %bb.il ], [ %6, %bb.ie ]
  %.lcssa1313.sink = phi i64 [ %.lcssa1881, %bb.il ], [ %.lcssa1873, %bb.ie ]
  %.ph1388 = phi i32 [ %i.akg, %bb.il ], [ 1, %bb.ie ]
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %i.akj = zext i32 %.sink1392 to i64
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %i.akj
  store i64 %.lcssa1313.sink, ptr %i.akk, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit: ; preds = %bb.ij, %bb.ic, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split, %._crit_edge778, %._crit_edge811, %._crit_edge772, %._crit_edge786, %._crit_edge805, %._crit_edge819
  %i.akl = phi i32 [ %i.ain, %._crit_edge772 ], [ %i.aiz, %._crit_edge786 ], [ %i.aiz, %._crit_edge778 ], [ 1, %._crit_edge805 ], [ 1, %._crit_edge819 ], [ 1, %bb.ic ], [ %.ph1388, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split ], [ 1, %._crit_edge811 ], [ %i.aiu, %bb.ij ] ; 16 uses
  %i.akm = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.akm, label %bb.im, label %bb.io

bb.im:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.akn = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ako = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
  %i.akp = icmp eq i32 %i.akn, 0
  br i1 %i.akp, label %.preheader696, label %bb.in, !prof !7

.preheader696:                                    ; preds = %bb.im
  %.not46.i847 = icmp eq i32 %i.akl, 0
  br i1 %.not46.i847, label %.lr.ph854.preheader, label %.lr.ph849

.lr.ph849:                                        ; preds = %.preheader696
  %i.akq = add nsw i32 %i.ako, -1                 ; 6 uses
  %i.akr = zext i32 %i.akl to i64                 ; 9 uses
  %min.iters.check1680 = icmp ult i32 %i.akl, 30
  br i1 %min.iters.check1680, label %scalar.ph1679.preheader, label %vector.scevcheck1676

vector.scevcheck1676:                             ; preds = %.lr.ph849
  %i.aks = add nsw i64 %i.akr, -1                 ; 2 uses
  %i.akt = add i32 %i.akl, %i.ako
  %i.aku = add i32 %i.akt, -1
  %i.akv = trunc i64 %i.aks to i32
  %i.akw = icmp ult i32 %i.aku, %i.akv
  %i.akx = icmp ugt i64 %i.aks, 4294967295
  %i.aky = or i1 %i.akw, %i.akx
  br i1 %i.aky, label %scalar.ph1679.preheader, label %vector.memcheck1677

vector.memcheck1677:                              ; preds = %vector.scevcheck1676
  %i.akz = add i32 %i.akl, %i.ako
  %i.ala = add i32 %i.akz, -1
  %i.alb = zext i32 %i.ala to i64
  %i.alc = sub nsw i64 %i.akr, %i.alb
  %i.ald = shl nsw i64 %i.alc, 3
  %i.ale = add nsw i64 %i.ald, -9
  %diff.check1678 = icmp ult i64 %i.ale, 31
  br i1 %diff.check1678, label %scalar.ph1679.preheader, label %vector.ph1681

vector.ph1681:                                    ; preds = %vector.memcheck1677
  %n.vec1682 = and i64 %i.akr, 4294967292         ; 2 uses
  %i.alf = and i64 %i.akr, 3
  br label %vector.body1683

vector.body1683:                                  ; preds = %vector.body1683, %vector.ph1681
  %index1684 = phi i64 [ 0, %vector.ph1681 ], [ %index.next1687, %vector.body1683 ] ; 2 uses
  %i.alg = sub i64 %i.akr, %index1684             ; 2 uses
  %i.alh = getelementptr [8 x i8], ptr %7, i64 %i.alg ; 2 uses
  %i.ali = getelementptr i8, ptr %i.alh, i64 -8
  %i.alj = getelementptr i8, ptr %i.alh, i64 -24
  %wide.load1685 = load <2 x i64>, ptr %i.ali, align 8, !tbaa !91
  %wide.load1686 = load <2 x i64>, ptr %i.alj, align 8, !tbaa !91
  %i.alk = trunc nuw i64 %i.alg to i32
  %i.all = add i32 %i.akq, %i.alk
  %i.alm = zext i32 %i.all to i64
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.alm ; 2 uses
  %i.alo = getelementptr inbounds i8, ptr %i.aln, i64 -8
  %i.alp = getelementptr inbounds i8, ptr %i.aln, i64 -24
  store <2 x i64> %wide.load1685, ptr %i.alo, align 8, !tbaa !91
  store <2 x i64> %wide.load1686, ptr %i.alp, align 8, !tbaa !91
  %index.next1687 = add nuw i64 %index1684, 4     ; 2 uses
  %i.alq = icmp eq i64 %index.next1687, %n.vec1682
  br i1 %i.alq, label %middle.block1688, label %vector.body1683, !llvm.loop !256

middle.block1688:                                 ; preds = %vector.body1683
  %cmp.n1689 = icmp eq i64 %n.vec1682, %i.akr
  br i1 %cmp.n1689, label %.lr.ph854.preheader, label %scalar.ph1679.preheader

scalar.ph1679.preheader:                          ; preds = %vector.memcheck1677, %vector.scevcheck1676, %.lr.ph849, %middle.block1688
  %indvars.iv1095.ph = phi i64 [ %i.akr, %vector.memcheck1677 ], [ %i.akr, %vector.scevcheck1676 ], [ %i.akr, %.lr.ph849 ], [ %i.alf, %middle.block1688 ] ; 4 uses
  %i.alr = add nsw i64 %indvars.iv1095.ph, -1
  %xtraiter1929 = and i64 %indvars.iv1095.ph, 3   ; 2 uses
  %lcmp.mod1930.not = icmp eq i64 %xtraiter1929, 0
  br i1 %lcmp.mod1930.not, label %scalar.ph1679.prol.loopexit, label %scalar.ph1679.prol

scalar.ph1679.prol:                               ; preds = %scalar.ph1679.preheader, %scalar.ph1679.prol
  %indvars.iv1095.prol = phi i64 [ %i.als, %scalar.ph1679.prol ], [ %indvars.iv1095.ph, %scalar.ph1679.preheader ] ; 3 uses
  %prol.iter1931 = phi i64 [ %prol.iter1931.next, %scalar.ph1679.prol ], [ 0, %scalar.ph1679.preheader ]
  %i.als = add nsw i64 %indvars.iv1095.prol, -1   ; 2 uses
  %i.alt = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1095.prol
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !91
  %i.alv = trunc nuw i64 %indvars.iv1095.prol to i32
  %i.alw = add i32 %i.akq, %i.alv
  %i.alx = zext i32 %i.alw to i64
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.alx
  store i64 %i.alu, ptr %i.aly, align 8, !tbaa !91
  %prol.iter1931.next = add i64 %prol.iter1931, 1 ; 2 uses
  %prol.iter1931.cmp.not = icmp eq i64 %prol.iter1931.next, %xtraiter1929
  br i1 %prol.iter1931.cmp.not, label %scalar.ph1679.prol.loopexit, label %scalar.ph1679.prol, !llvm.loop !257

scalar.ph1679.prol.loopexit:                      ; preds = %scalar.ph1679.prol, %scalar.ph1679.preheader
  %indvars.iv1095.unr = phi i64 [ %indvars.iv1095.ph, %scalar.ph1679.preheader ], [ %i.als, %scalar.ph1679.prol ]
  %i.alz = icmp ult i64 %i.alr, 3
  br i1 %i.alz, label %.lr.ph854.preheader, label %scalar.ph1679

scalar.ph1679:                                    ; preds = %scalar.ph1679.prol.loopexit, %scalar.ph1679
  %indvars.iv1095 = phi i64 [ %i.amv, %scalar.ph1679 ], [ %indvars.iv1095.unr, %scalar.ph1679.prol.loopexit ] ; 6 uses
  %i.ama = add nsw i64 %indvars.iv1095, -1        ; 2 uses
  %i.amb = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1095
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !91
  %i.amd = trunc nuw i64 %indvars.iv1095 to i32
  %i.ame = add i32 %i.akq, %i.amd
  %i.amf = zext i32 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.amf
  store i64 %i.amc, ptr %i.amg, align 8, !tbaa !91
  %i.amh = add nsw i64 %indvars.iv1095, -2        ; 2 uses
  %i.ami = getelementptr [8 x i8], ptr %7, i64 %i.ama
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !91
  %i.amk = trunc nuw i64 %i.ama to i32
  %i.aml = add i32 %i.akq, %i.amk
  %i.amm = zext i32 %i.aml to i64
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.amm
  store i64 %i.amj, ptr %i.amn, align 8, !tbaa !91
  %i.amo = add nsw i64 %indvars.iv1095, -3        ; 2 uses
  %i.amp = getelementptr [8 x i8], ptr %7, i64 %i.amh
  %i.amq = load i64, ptr %i.amp, align 8, !tbaa !91
  %i.amr = trunc nuw i64 %i.amh to i32
  %i.ams = add i32 %i.akq, %i.amr
  %i.amt = zext i32 %i.ams to i64
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.amt
  store i64 %i.amq, ptr %i.amu, align 8, !tbaa !91
  %i.amv = add nsw i64 %indvars.iv1095, -4        ; 2 uses
  %i.amw = getelementptr [8 x i8], ptr %7, i64 %i.amo
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !91
  %i.amy = trunc nuw i64 %i.amo to i32
  %i.amz = add i32 %i.akq, %i.amy
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.ana
  store i64 %i.amx, ptr %i.anb, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.amv, 0
  br i1 %.not46.i.wide.3, label %.lr.ph854.preheader, label %scalar.ph1679, !llvm.loop !258

.lr.ph854.preheader:                              ; preds = %scalar.ph1679.prol.loopexit, %scalar.ph1679, %middle.block1688, %.preheader696
  %i.anc = add i32 %i.akl, %i.ako                 ; 2 uses
  store i32 %i.anc, ptr %7, align 8, !tbaa !177
  br label %.lr.ph829.preheader

bb.in:                                            ; preds = %bb.im
  %i.and = zext i32 %i.akl to i64                 ; 10 uses
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.and
  store i64 0, ptr %i.ane, align 8, !tbaa !91
  %.not.i227838 = icmp eq i32 %i.akl, 0
  %.pre1143 = zext nneg i32 %i.akn to i64         ; 5 uses
  br i1 %.not.i227838, label %._crit_edge842, label %.lr.ph841

.lr.ph841:                                        ; preds = %bb.in
  %i.anf = sub nuw nsw i32 64, %i.akn
  %i.ang = zext nneg i32 %i.anf to i64            ; 4 uses
  %min.iters.check1659 = icmp ult i32 %i.akl, 20
  br i1 %min.iters.check1659, label %scalar.ph1658.preheader, label %vector.scevcheck1653

vector.scevcheck1653:                             ; preds = %.lr.ph841
  %i.anh = add nsw i64 %i.and, -1                 ; 2 uses
  %i.ani = add i32 %i.akl, %i.ako
  %i.anj = trunc i64 %i.anh to i32
  %i.ank = icmp ult i32 %i.ani, %i.anj
  %i.anl = icmp ugt i64 %i.anh, 4294967295
  %i.anm = or i1 %i.ank, %i.anl
  br i1 %i.anm, label %scalar.ph1658.preheader, label %vector.memcheck1654

vector.memcheck1654:                              ; preds = %vector.scevcheck1653
  %i.ann = shl nuw nsw i64 %i.and, 3              ; 2 uses
  %i.ano = add i32 %i.akl, %i.ako
  %i.anp = zext i32 %i.ano to i64
  %i.anq = shl nuw nsw i64 %i.anp, 3              ; 2 uses
  %i.anr = sub nsw i64 %i.anq, %i.ann
  %diff.check1655 = icmp ugt i64 %i.anr, -32
  %i.ans = sub nsw i64 %i.ann, %i.anq
  %i.ant = add nsw i64 %i.ans, -9
  %diff.check1656 = icmp ult i64 %i.ant, 31
  %conflict.rdx1657 = or i1 %diff.check1655, %diff.check1656
  br i1 %conflict.rdx1657, label %scalar.ph1658.preheader, label %vector.ph1660

vector.ph1660:                                    ; preds = %vector.memcheck1654
  %n.vec1661 = and i64 %i.and, 4294967292         ; 2 uses
  %i.anu = and i64 %i.and, 3
  %broadcast.splatinsert1662 = insertelement <2 x i64> poison, i64 %i.ang, i64 0
  %broadcast.splat1663 = shufflevector <2 x i64> %broadcast.splatinsert1662, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1664 = insertelement <2 x i64> poison, i64 %.pre1143, i64 0
  %broadcast.splat1665 = shufflevector <2 x i64> %broadcast.splatinsert1664, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1666

vector.body1666:                                  ; preds = %vector.body1666, %vector.ph1660
  %index1667 = phi i64 [ 0, %vector.ph1660 ], [ %index.next1672, %vector.body1666 ] ; 2 uses
  %i.anv = sub i64 %i.and, %index1667             ; 3 uses
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.anv ; 2 uses
  %i.anx = getelementptr inbounds i8, ptr %i.anw, i64 -8
  %i.any = getelementptr inbounds i8, ptr %i.anw, i64 -24
  %wide.load1668 = load <2 x i64>, ptr %i.anx, align 8, !tbaa !91
  %wide.load1669 = load <2 x i64>, ptr %i.any, align 8, !tbaa !91
  %i.anz = shl <2 x i64> %wide.load1668, %broadcast.splat1665
  %i.aoa = shl <2 x i64> %wide.load1669, %broadcast.splat1665
  %i.aob = getelementptr [8 x i8], ptr %7, i64 %i.anv ; 2 uses
  %i.aoc = getelementptr i8, ptr %i.aob, i64 -8
  %i.aod = getelementptr i8, ptr %i.aob, i64 -24
  %wide.load1670 = load <2 x i64>, ptr %i.aoc, align 8, !tbaa !91
  %wide.load1671 = load <2 x i64>, ptr %i.aod, align 8, !tbaa !91
  %i.aoe = lshr <2 x i64> %wide.load1670, %broadcast.splat1663
  %i.aof = lshr <2 x i64> %wide.load1671, %broadcast.splat1663
  %i.aog = or <2 x i64> %i.aoe, %i.anz
  %i.aoh = or <2 x i64> %i.aof, %i.aoa
  %i.aoi = trunc nuw i64 %i.anv to i32
  %i.aoj = add i32 %i.ako, %i.aoi
  %i.aok = zext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aok ; 2 uses
  %i.aom = getelementptr inbounds i8, ptr %i.aol, i64 -8
  %i.aon = getelementptr inbounds i8, ptr %i.aol, i64 -24
  store <2 x i64> %i.aog, ptr %i.aom, align 8, !tbaa !91
  store <2 x i64> %i.aoh, ptr %i.aon, align 8, !tbaa !91
  %index.next1672 = add nuw i64 %index1667, 4     ; 2 uses
  %i.aoo = icmp eq i64 %index.next1672, %n.vec1661
  br i1 %i.aoo, label %middle.block1673, label %vector.body1666, !llvm.loop !259

middle.block1673:                                 ; preds = %vector.body1666
  %cmp.n1674 = icmp eq i64 %n.vec1661, %i.and
  br i1 %cmp.n1674, label %._crit_edge842, label %scalar.ph1658.preheader

scalar.ph1658.preheader:                          ; preds = %vector.memcheck1654, %vector.scevcheck1653, %.lr.ph841, %middle.block1673
  %indvars.iv1090.ph = phi i64 [ %i.and, %vector.memcheck1654 ], [ %i.and, %vector.scevcheck1653 ], [ %i.and, %.lr.ph841 ], [ %i.anu, %middle.block1673 ] ; 7 uses
  %xtraiter1926 = and i64 %indvars.iv1090.ph, 1
  %lcmp.mod1927.not = icmp eq i64 %xtraiter1926, 0
  br i1 %lcmp.mod1927.not, label %scalar.ph1658.prol.loopexit, label %scalar.ph1658.prol

scalar.ph1658.prol:                               ; preds = %scalar.ph1658.preheader
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1090.ph
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !91
  %i.aor = shl i64 %i.aoq, %.pre1143
  %i.aos = add nsw i64 %indvars.iv1090.ph, -1
  %i.aot = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1090.ph
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !91
  %i.aov = lshr i64 %i.aou, %i.ang
  %i.aow = or i64 %i.aov, %i.aor
  %i.aox = trunc nuw i64 %indvars.iv1090.ph to i32
  %i.aoy = add i32 %i.ako, %i.aox
  %i.aoz = zext i32 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aoz
  store i64 %i.aow, ptr %i.apa, align 8, !tbaa !91
  br label %scalar.ph1658.prol.loopexit

scalar.ph1658.prol.loopexit:                      ; preds = %scalar.ph1658.prol, %scalar.ph1658.preheader
  %indvars.iv1090.unr = phi i64 [ %indvars.iv1090.ph, %scalar.ph1658.preheader ], [ %i.aos, %scalar.ph1658.prol ]
  %i.apb = icmp eq i64 %indvars.iv1090.ph, 1
  br i1 %i.apb, label %._crit_edge842, label %scalar.ph1658

scalar.ph1658:                                    ; preds = %scalar.ph1658.prol.loopexit, %scalar.ph1658
  %indvars.iv1090 = phi i64 [ %i.apr, %scalar.ph1658 ], [ %indvars.iv1090.unr, %scalar.ph1658.prol.loopexit ] ; 6 uses
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %indvars.iv1090
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !91
  %i.ape = shl i64 %i.apd, %.pre1143
  %i.apf = add nsw i64 %indvars.iv1090, -1        ; 2 uses
  %i.apg = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1090
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !91
  %i.api = lshr i64 %i.aph, %i.ang
  %i.apj = or i64 %i.api, %i.ape
  %i.apk = trunc nuw i64 %indvars.iv1090 to i32
  %i.apl = add i32 %i.ako, %i.apk
  %i.apm = zext i32 %i.apl to i64
  %i.apn = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.apm
  store i64 %i.apj, ptr %i.apn, align 8, !tbaa !91
  %i.apo = getelementptr [8 x i8], ptr %7, i64 %indvars.iv1090
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !91
  %i.apq = shl i64 %i.app, %.pre1143
  %i.apr = add nsw i64 %indvars.iv1090, -2        ; 2 uses
  %i.aps = getelementptr [8 x i8], ptr %7, i64 %i.apf
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !91
  %i.apu = lshr i64 %i.apt, %i.ang
  %i.apv = or i64 %i.apu, %i.apq
  %i.apw = trunc nuw i64 %i.apf to i32
  %i.apx = add i32 %i.ako, %i.apw
  %i.apy = zext i32 %i.apx to i64
  %i.apz = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.apy
  store i64 %i.apv, ptr %i.apz, align 8, !tbaa !91
  %.not.i227.wide.1 = icmp eq i64 %i.apr, 0
  br i1 %.not.i227.wide.1, label %._crit_edge842, label %scalar.ph1658, !llvm.loop !260

._crit_edge842:                                   ; preds = %scalar.ph1658.prol.loopexit, %scalar.ph1658, %middle.block1673, %bb.in
  %i.aqa = load i64, ptr %i.adn, align 8, !tbaa !91
  %i.aqb = shl i64 %i.aqa, %.pre1143
  %i.aqc = zext nneg i32 %i.ako to i64
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aqc
  store i64 %i.aqb, ptr %i.aqd, align 8, !tbaa !91
  %i.aqe = add i32 %i.akl, %i.ako                 ; 2 uses
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw [8 x i8], ptr %i.adn, i64 %i.aqf
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !91
  %i.aqi = icmp ne i64 %i.aqh, 0
  %i.aqj = zext i1 %i.aqi to i32
  %i.aqk = add i32 %i.aqe, %i.aqj                 ; 2 uses
  %.not45.i843 = icmp eq i32 %i.ako, 0
  br i1 %.not45.i843, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph829.preheader

bb.io:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.aql = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.aqm = and i32 %i.aql, 63                     ; 3 uses
  %i.aqn = lshr i32 %i.aql, 6                     ; 16 uses
  %i.aqo = load i32, ptr %6, align 8, !tbaa !177  ; 12 uses
  %i.aqp = icmp eq i32 %i.aqm, 0
  br i1 %i.aqp, label %.preheader699, label %bb.ip, !prof !7

.preheader699:                                    ; preds = %bb.io
  %.not46.i234830 = icmp eq i32 %i.aqo, 0
  br i1 %.not46.i234830, label %._crit_edge833, label %.lr.ph832

.lr.ph832:                                        ; preds = %.preheader699
  %i.aqq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.aqr = add nsw i32 %i.aqn, -1                 ; 6 uses
  %i.aqs = zext i32 %i.aqo to i64                 ; 9 uses
  %min.iters.check1642 = icmp ult i32 %i.aqo, 30
  br i1 %min.iters.check1642, label %scalar.ph1641.preheader, label %vector.scevcheck1638

vector.scevcheck1638:                             ; preds = %.lr.ph832
  %i.aqt = add nsw i64 %i.aqs, -1                 ; 2 uses
  %i.aqu = add i32 %i.aqo, %i.aqn
  %i.aqv = add i32 %i.aqu, -1
  %i.aqw = trunc i64 %i.aqt to i32
  %i.aqx = icmp ult i32 %i.aqv, %i.aqw
  %i.aqy = icmp ugt i64 %i.aqt, 4294967295
  %i.aqz = or i1 %i.aqx, %i.aqy
  br i1 %i.aqz, label %scalar.ph1641.preheader, label %vector.memcheck1639

vector.memcheck1639:                              ; preds = %vector.scevcheck1638
  %i.ara = add i32 %i.aqo, %i.aqn
  %i.arb = add i32 %i.ara, -1
  %i.arc = zext i32 %i.arb to i64
  %i.ard = sub nsw i64 %i.aqs, %i.arc
  %i.are = shl nsw i64 %i.ard, 3
  %i.arf = add nsw i64 %i.are, -9
  %diff.check1640 = icmp ult i64 %i.arf, 31
  br i1 %diff.check1640, label %scalar.ph1641.preheader, label %vector.ph1643

vector.ph1643:                                    ; preds = %vector.memcheck1639
  %n.vec1644 = and i64 %i.aqs, 4294967292         ; 2 uses
  %i.arg = and i64 %i.aqs, 3
  br label %vector.body1645

vector.body1645:                                  ; preds = %vector.body1645, %vector.ph1643
  %index1646 = phi i64 [ 0, %vector.ph1643 ], [ %index.next1649, %vector.body1645 ] ; 2 uses
  %i.arh = sub i64 %i.aqs, %index1646             ; 2 uses
  %i.ari = getelementptr [8 x i8], ptr %6, i64 %i.arh ; 2 uses
  %i.arj = getelementptr i8, ptr %i.ari, i64 -8
  %i.ark = getelementptr i8, ptr %i.ari, i64 -24
  %wide.load1647.a = load <2 x i64>, ptr %i.arj, align 8, !tbaa !91
  %wide.load1648 = load <2 x i64>, ptr %i.ark, align 8, !tbaa !91
  %i.arl = trunc nuw i64 %i.arh to i32
  %i.arm = add i32 %i.aqr, %i.arl
  %i.arn = zext i32 %i.arm to i64
  %i.aro = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.arn ; 2 uses
  %i.arp = getelementptr inbounds i8, ptr %i.aro, i64 -8
  %i.arq = getelementptr inbounds i8, ptr %i.aro, i64 -24
  store <2 x i64> %wide.load1647.a, ptr %i.arp, align 8, !tbaa !91
  store <2 x i64> %wide.load1648, ptr %i.arq, align 8, !tbaa !91
  %index.next1649 = add nuw i64 %index1646, 4     ; 2 uses
  %i.arr = icmp eq i64 %index.next1649, %n.vec1644
  br i1 %i.arr, label %middle.block1650, label %vector.body1645, !llvm.loop !261

middle.block1650:                                 ; preds = %vector.body1645
  %cmp.n1651 = icmp eq i64 %n.vec1644, %i.aqs
  br i1 %cmp.n1651, label %._crit_edge833, label %scalar.ph1641.preheader

scalar.ph1641.preheader:                          ; preds = %vector.memcheck1639, %vector.scevcheck1638, %.lr.ph832, %middle.block1650
  %indvars.iv1085.ph = phi i64 [ %i.aqs, %vector.memcheck1639 ], [ %i.aqs, %vector.scevcheck1638 ], [ %i.aqs, %.lr.ph832 ], [ %i.arg, %middle.block1650 ] ; 4 uses
  %i.ars = add nsw i64 %indvars.iv1085.ph, -1
  %xtraiter1924 = and i64 %indvars.iv1085.ph, 3   ; 2 uses
  %lcmp.mod1925.not = icmp eq i64 %xtraiter1924, 0
  br i1 %lcmp.mod1925.not, label %scalar.ph1641.prol.loopexit, label %scalar.ph1641.prol

scalar.ph1641.prol:                               ; preds = %scalar.ph1641.preheader, %scalar.ph1641.prol
  %indvars.iv1085.prol = phi i64 [ %i.art, %scalar.ph1641.prol ], [ %indvars.iv1085.ph, %scalar.ph1641.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1641.prol ], [ 0, %scalar.ph1641.preheader ]
  %i.art = add nsw i64 %indvars.iv1085.prol, -1   ; 2 uses
  %i.aru = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1085.prol
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !91
  %i.arw = trunc nuw i64 %indvars.iv1085.prol to i32
  %i.arx = add i32 %i.aqr, %i.arw
  %i.ary = zext i32 %i.arx to i64
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.ary
  store i64 %i.arv, ptr %i.arz, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1924
  br i1 %prol.iter.cmp.not, label %scalar.ph1641.prol.loopexit, label %scalar.ph1641.prol, !llvm.loop !262

scalar.ph1641.prol.loopexit:                      ; preds = %scalar.ph1641.prol, %scalar.ph1641.preheader
  %indvars.iv1085.unr = phi i64 [ %indvars.iv1085.ph, %scalar.ph1641.preheader ], [ %i.art, %scalar.ph1641.prol ]
  %i.asa = icmp ult i64 %i.ars, 3
  br i1 %i.asa, label %._crit_edge833, label %scalar.ph1641

scalar.ph1641:                                    ; preds = %scalar.ph1641.prol.loopexit, %scalar.ph1641
  %indvars.iv1085 = phi i64 [ %i.asw, %scalar.ph1641 ], [ %indvars.iv1085.unr, %scalar.ph1641.prol.loopexit ] ; 6 uses
  %i.asb = add nsw i64 %indvars.iv1085, -1        ; 2 uses
  %i.asc = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1085
  %i.asd = load i64, ptr %i.asc, align 8, !tbaa !91
  %i.ase = trunc nuw i64 %indvars.iv1085 to i32
  %i.asf = add i32 %i.aqr, %i.ase
  %i.asg = zext i32 %i.asf to i64
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.asg
  store i64 %i.asd, ptr %i.ash, align 8, !tbaa !91
  %i.asi = add nsw i64 %indvars.iv1085, -2        ; 2 uses
  %i.asj = getelementptr [8 x i8], ptr %6, i64 %i.asb
  %i.ask = load i64, ptr %i.asj, align 8, !tbaa !91
  %i.asl = trunc nuw i64 %i.asb to i32
  %i.asm = add i32 %i.aqr, %i.asl
  %i.asn = zext i32 %i.asm to i64
  %i.aso = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.asn
  store i64 %i.ask, ptr %i.aso, align 8, !tbaa !91
  %i.asp = add nsw i64 %indvars.iv1085, -3        ; 2 uses
  %i.asq = getelementptr [8 x i8], ptr %6, i64 %i.asi
  %i.asr = load i64, ptr %i.asq, align 8, !tbaa !91
  %i.ass = trunc nuw i64 %i.asi to i32
  %i.ast = add i32 %i.aqr, %i.ass
  %i.asu = zext i32 %i.ast to i64
  %i.asv = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.asu
  store i64 %i.asr, ptr %i.asv, align 8, !tbaa !91
  %i.asw = add nsw i64 %indvars.iv1085, -4        ; 2 uses
  %i.asx = getelementptr [8 x i8], ptr %6, i64 %i.asp
  %i.asy = load i64, ptr %i.asx, align 8, !tbaa !91
  %i.asz = trunc nuw i64 %i.asp to i32
  %i.ata = add i32 %i.aqr, %i.asz
  %i.atb = zext i32 %i.ata to i64
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.aqq, i64 %i.atb
  store i64 %i.asy, ptr %i.atc, align 8, !tbaa !91
  %.not46.i234.wide.3 = icmp eq i64 %i.asw, 0
  br i1 %.not46.i234.wide.3, label %._crit_edge833, label %scalar.ph1641, !llvm.loop !263

._crit_edge833:                                   ; preds = %scalar.ph1641.prol.loopexit, %scalar.ph1641, %middle.block1650, %.preheader699
  %i.atd = add i32 %i.aqo, %i.aqn
  store i32 %i.atd, ptr %6, align 8, !tbaa !177
  %.not47.i236834 = icmp eq i32 %i.aqn, 0
  br i1 %.not47.i236834, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph837

.lr.ph837:                                        ; preds = %._crit_edge833
  %i.ate = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.lr.ph829.preheader

bb.ip:                                            ; preds = %bb.io
  %i.atf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %i.atg = zext i32 %i.aqo to i64                 ; 10 uses
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.atg
  store i64 0, ptr %i.ath, align 8, !tbaa !91
  %.not.i230821 = icmp eq i32 %i.aqo, 0
  %.pre1145 = zext nneg i32 %i.aqm to i64         ; 5 uses
  br i1 %.not.i230821, label %._crit_edge825, label %.lr.ph824

.lr.ph824:                                        ; preds = %bb.ip
  %i.ati = sub nuw nsw i32 64, %i.aqm
  %i.atj = zext nneg i32 %i.ati to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.aqo, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph824
  %i.atk = add nsw i64 %i.atg, -1                 ; 2 uses
  %i.atl = add i32 %i.aqo, %i.aqn
  %i.atm = trunc i64 %i.atk to i32
  %i.atn = icmp ult i32 %i.atl, %i.atm
  %i.ato = icmp ugt i64 %i.atk, 4294967295
  %i.atp = or i1 %i.atn, %i.ato
  br i1 %i.atp, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.atq = shl nuw nsw i64 %i.atg, 3              ; 2 uses
  %i.atr = add i32 %i.aqo, %i.aqn
  %i.ats = zext i32 %i.atr to i64
  %i.att = shl nuw nsw i64 %i.ats, 3              ; 2 uses
  %i.atu = sub nsw i64 %i.att, %i.atq
  %diff.check = icmp ugt i64 %i.atu, -32
  %i.atv = sub nsw i64 %i.atq, %i.att
  %i.atw = add nsw i64 %i.atv, -9
  %diff.check1632 = icmp ult i64 %i.atw, 31
  %conflict.rdx = or i1 %diff.check, %diff.check1632
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.atg, 4294967292             ; 2 uses
  %i.atx = and i64 %i.atg, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.atj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1633 = insertelement <2 x i64> poison, i64 %.pre1145, i64 0
  %broadcast.splat1634 = shufflevector <2 x i64> %broadcast.splatinsert1633, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aty = sub i64 %i.atg, %index                 ; 3 uses
  %i.atz = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.aty ; 2 uses
  %i.aua = getelementptr inbounds i8, ptr %i.atz, i64 -8
  %i.aub = getelementptr inbounds i8, ptr %i.atz, i64 -24
  %wide.load = load <2 x i64>, ptr %i.aua, align 8, !tbaa !91
  %wide.load1635 = load <2 x i64>, ptr %i.aub, align 8, !tbaa !91
  %i.auc = shl <2 x i64> %wide.load, %broadcast.splat1634
  %i.aud = shl <2 x i64> %wide.load1635, %broadcast.splat1634
  %i.aue = getelementptr [8 x i8], ptr %6, i64 %i.aty ; 2 uses
  %i.auf = getelementptr i8, ptr %i.aue, i64 -8
  %i.aug = getelementptr i8, ptr %i.aue, i64 -24
  %wide.load1636 = load <2 x i64>, ptr %i.auf, align 8, !tbaa !91
  %wide.load1637 = load <2 x i64>, ptr %i.aug, align 8, !tbaa !91
  %i.auh = lshr <2 x i64> %wide.load1636, %broadcast.splat
  %i.aui = lshr <2 x i64> %wide.load1637, %broadcast.splat
  %i.auj = or <2 x i64> %i.auh, %i.auc
  %i.auk = or <2 x i64> %i.aui, %i.aud
  %i.aul = trunc nuw i64 %i.aty to i32
  %i.aum = add i32 %i.aqn, %i.aul
  %i.aun = zext i32 %i.aum to i64
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.aun ; 2 uses
  %i.aup = getelementptr inbounds i8, ptr %i.auo, i64 -8
  %i.auq = getelementptr inbounds i8, ptr %i.auo, i64 -24
  store <2 x i64> %i.auj, ptr %i.aup, align 8, !tbaa !91
  store <2 x i64> %i.auk, ptr %i.auq, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aur = icmp eq i64 %index.next, %n.vec
  br i1 %i.aur, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.atg
  br i1 %cmp.n, label %._crit_edge825, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph824, %middle.block
  %indvars.iv1080.ph = phi i64 [ %i.atg, %vector.memcheck ], [ %i.atg, %vector.scevcheck ], [ %i.atg, %.lr.ph824 ], [ %i.atx, %middle.block ] ; 7 uses
  %xtraiter1922 = and i64 %indvars.iv1080.ph, 1
  %lcmp.mod1923.not = icmp eq i64 %xtraiter1922, 0
  br i1 %lcmp.mod1923.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aus = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %indvars.iv1080.ph
  %i.aut = load i64, ptr %i.aus, align 8, !tbaa !91
  %i.auu = shl i64 %i.aut, %.pre1145
  %i.auv = add nsw i64 %indvars.iv1080.ph, -1
  %i.auw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1080.ph
  %i.aux = load i64, ptr %i.auw, align 8, !tbaa !91
  %i.auy = lshr i64 %i.aux, %i.atj
  %i.auz = or i64 %i.auy, %i.auu
  %i.ava = trunc nuw i64 %indvars.iv1080.ph to i32
  %i.avb = add i32 %i.aqn, %i.ava
  %i.avc = zext i32 %i.avb to i64
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.avc
  store i64 %i.auz, ptr %i.avd, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1080.unr = phi i64 [ %indvars.iv1080.ph, %scalar.ph.preheader ], [ %i.auv, %scalar.ph.prol ]
  %i.ave = icmp eq i64 %indvars.iv1080.ph, 1
  br i1 %i.ave, label %._crit_edge825, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1080 = phi i64 [ %i.avu, %scalar.ph ], [ %indvars.iv1080.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %indvars.iv1080
  %i.avg = load i64, ptr %i.avf, align 8, !tbaa !91
  %i.avh = shl i64 %i.avg, %.pre1145
  %i.avi = add nsw i64 %indvars.iv1080, -1        ; 2 uses
  %i.avj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1080
  %i.avk = load i64, ptr %i.avj, align 8, !tbaa !91
  %i.avl = lshr i64 %i.avk, %i.atj
  %i.avm = or i64 %i.avl, %i.avh
  %i.avn = trunc nuw i64 %indvars.iv1080 to i32
  %i.avo = add i32 %i.aqn, %i.avn
  %i.avp = zext i32 %i.avo to i64
  %i.avq = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.avp
  store i64 %i.avm, ptr %i.avq, align 8, !tbaa !91
  %i.avr = getelementptr [8 x i8], ptr %6, i64 %indvars.iv1080
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !91
  %i.avt = shl i64 %i.avs, %.pre1145
  %i.avu = add nsw i64 %indvars.iv1080, -2        ; 2 uses
  %i.avv = getelementptr [8 x i8], ptr %6, i64 %i.avi
  %i.avw = load i64, ptr %i.avv, align 8, !tbaa !91
  %i.avx = lshr i64 %i.avw, %i.atj
  %i.avy = or i64 %i.avx, %i.avt
  %i.avz = trunc nuw i64 %i.avi to i32
  %i.awa = add i32 %i.aqn, %i.avz
  %i.awb = zext i32 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.awb
  store i64 %i.avy, ptr %i.awc, align 8, !tbaa !91
  %.not.i230.wide.1 = icmp eq i64 %i.avu, 0
  br i1 %.not.i230.wide.1, label %._crit_edge825, label %scalar.ph, !llvm.loop !265

._crit_edge825:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ip
  %i.awd = load i64, ptr %i.atf, align 8, !tbaa !91
  %i.awe = shl i64 %i.awd, %.pre1145
  %i.awf = zext nneg i32 %i.aqn to i64
  %i.awg = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.awf
  store i64 %i.awe, ptr %i.awg, align 8, !tbaa !91
  %i.awh = add i32 %i.aqo, %i.aqn                 ; 2 uses
  %i.awi = zext i32 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [8 x i8], ptr %i.atf, i64 %i.awi
  %i.awk = load i64, ptr %i.awj, align 8, !tbaa !91
  %i.awl = icmp ne i64 %i.awk, 0
  %i.awm = zext i1 %i.awl to i32
  %i.awn = add i32 %i.awh, %i.awm
  store i32 %i.awn, ptr %6, align 8, !tbaa !177
  %.not45.i232826 = icmp eq i32 %i.aqn, 0
  br i1 %.not45.i232826, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph829.preheader

.lr.ph829.preheader:                              ; preds = %._crit_edge825, %._crit_edge842, %.lr.ph854.preheader, %.lr.ph837
  %.sink1402 = phi i32 [ %i.ako, %._crit_edge842 ], [ %i.aqn, %.lr.ph837 ], [ %i.ako, %.lr.ph854.preheader ], [ %i.aqn, %._crit_edge825 ]
  %.sink1397 = phi ptr [ %i.adn, %._crit_edge842 ], [ %i.ate, %.lr.ph837 ], [ %i.adn, %.lr.ph854.preheader ], [ %i.atf, %._crit_edge825 ]
  %.ph1396 = phi i32 [ %i.aqk, %._crit_edge842 ], [ %i.akl, %.lr.ph837 ], [ %i.anc, %.lr.ph854.preheader ], [ %i.akl, %._crit_edge825 ]
  %8 = add nsw i32 %.sink1402, -1
  %i.awo = zext i32 %8 to i64
  %9 = shl nuw nsw i64 %i.awo, 3
  %10 = add nuw nsw i64 %9, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink1397, i8 0, i64 %10, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit: ; preds = %.lr.ph829.preheader, %._crit_edge825, %._crit_edge833, %._crit_edge842
  %11 = phi i32 [ %i.aqk, %._crit_edge842 ], [ %i.akl, %._crit_edge825 ], [ %i.akl, %._crit_edge833 ], [ %.ph1396, %.lr.ph829.preheader ] ; 2 uses
  %i.awp = load i32, ptr %6, align 8, !tbaa !177  ; 4 uses
  %i.awq = icmp ult i32 %i.awp, %11
  br i1 %i.awq, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %bb.iq

bb.iq:                                            ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit
  %i.awr = icmp ugt i32 %i.awp, %11
  br i1 %i.awr, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %.preheader695

.preheader695:                                    ; preds = %bb.iq
  %.not.i2381618 = icmp eq i32 %i.awp, 0
  br i1 %.not.i2381618, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread567, label %.lr.ph1621

.lr.ph1621:                                       ; preds = %.preheader695
  %i.aws = zext i32 %i.awp to i64
  br label %bb.is

bb.ir:                                            ; preds = %bb.is
  %i.awt = add nsw i64 %indvars.iv10981619, -1    ; 2 uses
  %.not.i238 = icmp eq i64 %i.awt, 0
  br i1 %.not.i238, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread567, label %bb.is, !llvm.loop !191

bb.is:                                            ; preds = %.lr.ph1621, %bb.ir
  %.016.i1620 = phi i32 [ undef, %.lr.ph1621 ], [ %.1.i239, %bb.ir ]
  %indvars.iv10981619 = phi i64 [ %i.aws, %.lr.ph1621 ], [ %i.awt, %bb.ir ] ; 3 uses
  %i.awu = getelementptr [8 x i8], ptr %6, i64 %indvars.iv10981619
  %i.awv = load i64, ptr %i.awu, align 8, !tbaa !91 ; 3 uses
  %i.aww = getelementptr [8 x i8], ptr %7, i64 %indvars.iv10981619
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !91 ; 3 uses
  %.not668 = icmp ult i64 %i.awv, %i.awx
  %.not669 = icmp ugt i64 %i.awv, %i.awx
  %..016.i = select i1 %.not669, i32 1, i32 %.016.i1620
  %.1.i239 = select i1 %.not668, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.awv, %i.awx
  br i1 %cond.i, label %bb.ir, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit: ; preds = %bb.is
  %.not680.i = icmp eq i32 %.1.i239, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread567, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, %bb.iq, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %.2.i240566 = phi i32 [ %.1.i239, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit ], [ 1, %bb.iq ]
  %i.awy = icmp sgt i32 %.2.i240566, 0
  %i.awz = zext i1 %i.awy to i64
  br label %bb.it

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread567: ; preds = %bb.ir, %.preheader695, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %i.axa = and i64 %.0.i220.ph, 1
  br label %bb.it

bb.it:                                            ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread567, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread
  %.pn.i = phi i64 [ %i.awz, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread ], [ %i.axa, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread567 ]
  %.0601.i = add nuw nsw i64 %.pn.i, %.0.i220.ph  ; 2 uses
  %i.axb = icmp eq i64 %.0601.i, 9218868437227405312
  br i1 %i.axb, label %bb.iu, label %bb.jb, !prof !7

bb.iu:                                            ; preds = %bb.it
  br i1 %.not622, label %bb.iy, label %bb.iv, !prof !24

bb.iv:                                            ; preds = %bb.iu
  %i.axc = load ptr, ptr %i.d, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.axc, null
  br i1 %.not681.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  store i8 0, ptr %i.axc, align 1, !tbaa !81
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  %i.axd = ptrtoint ptr %.7 to i64
  %i.axe = ptrtoint ptr %1 to i64
  %i.axf = sub i64 %i.axd, %i.axe
  %i.axg = shl i64 %i.axf, 8
  %i.axh = or disjoint i64 %i.axg, 1
  store i64 %i.axh, ptr %i.i, align 8, !tbaa !79
  %i.axi = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %1, ptr %i.axi, align 8, !tbaa !81
  store ptr %.7, ptr %i.d, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575

bb.iy:                                            ; preds = %bb.iu
  %i.axj = and i32 %4, 16
  %.not671 = icmp eq i32 %i.axj, 0
  br i1 %.not671, label %bb.ja, label %bb.iz, !prof !24

bb.iz:                                            ; preds = %bb.iy
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.axk = select i1 %i.t, i64 -4503599627370496, i64 9218868437227405312
  %i.axl = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.axk, ptr %i.axl, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575

bb.ja:                                            ; preds = %bb.iy
  store ptr @.str.82, ptr %i.c, align 8, !tbaa !92
  store ptr %1, ptr %i.b, align 8, !tbaa !92
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit

bb.jb:                                            ; preds = %bb.it
  store i64 20, ptr %i.i, align 8, !tbaa !79
  %i.axm = select i1 %i.t, i64 -9223372036854775808, i64 0
  %i.axn = or disjoint i64 %.0601.i, %i.axm
  %i.axo = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 %i.axn, ptr %i.axo, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %bb.z, %bb.y, %bb.q, %bb.r, %bb.ab, %bb.gf, %bb.gj, %bb.gl, %bb.gp, %bb.gu, %bb.gw, %bb.hh, %bb.hc, %bb.fs, %bb.gb, %.loopexit694, %bb.ff, %bb.fg, %bb.fh, %bb.bi, %bb.bj, %bb.bk, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm
  %.34.ph.sink = phi ptr [ %i.ct, %bb.bm ], [ %i.bj, %bb.ab ], [ %.10.lcssa, %bb.gf ], [ %.10.lcssa, %bb.gj ], [ %.10.lcssa, %bb.gl ], [ %.11, %bb.gp ], [ %.11, %bb.gu ], [ %.11, %bb.gw ], [ %.7, %bb.hh ], [ %.7, %bb.hc ], [ %i.tr, %bb.fs ], [ %.6, %bb.gb ], [ %.2, %.loopexit694 ], [ %i.st, %bb.ff ], [ %i.st, %bb.fg ], [ %i.st, %bb.fh ], [ %i.hp, %bb.bi ], [ %i.hp, %bb.bj ], [ %i.hp, %bb.bk ], [ %i.hi, %bb.dl ], [ %i.hb, %bb.di ], [ %i.gu, %bb.df ], [ %i.gn, %bb.dc ], [ %i.gg, %bb.cz ], [ %i.fz, %bb.cw ], [ %i.fs, %bb.ct ], [ %i.fl, %bb.cq ], [ %i.fe, %bb.cn ], [ %i.ex, %bb.ck ], [ %i.eq, %bb.ch ], [ %i.ej, %bb.ce ], [ %i.ec, %bb.cb ], [ %i.dv, %bb.by ], [ %i.do, %bb.bv ], [ %i.dh, %bb.bs ], [ %i.da, %bb.bp ], [ %i.bd, %bb.y ], [ %i.bd, %bb.z ], [ %.0.i213, %bb.q ], [ %.0.i213, %bb.r ] ; 2 uses
  store ptr %.34.ph.sink, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread575: ; preds = %bb.hr, %bb.ht, %bb.hw, %bb.ix, %bb.iz, %bb.jb
  store ptr %.7, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %_ZN13duckdb_yyjsonL11read_stringEPPhS0_bPNS_10yyjson_valEPPKc.exit

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit: ; preds = %bb.hu, %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.split._crit_edge.sink.split

bb.jc:                                            ; preds = %.thread
  switch i8 %i.m, label %bb.ms [
    i8 34, label %bb.jd
    i8 116, label %bb.mh
    i8 102, label %bb.mi
    i8 110, label %bb.mj
  ]

bb.jd:                                            ; preds = %bb.jc
  %i.axp = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  br label %.backedge692

.backedge692:                                     ; preds = %.backedge692.backedge, %bb.jd
  %.0269.i = phi ptr [ %i.axp, %bb.jd ], [ %.0269.i.be, %.backedge692.backedge ] ; 3 uses
  %i.axq = load i8, ptr %.0269.i, align 1, !tbaa !81 ; 2 uses
  %i.axr = zext i8 %i.axq to i64
  %i.axs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.axr
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !81
  %i.axu = and i8 %i.axt, 12
  %.not589899 = icmp eq i8 %i.axu, 0
  br i1 %.not589899, label %.lr.ph902, label %.split.loop.exit883, !prof !159

.lr.ph902:                                        ; preds = %.backedge692, %bb.js
  %.1270.i900 = phi ptr [ %i.bbh, %bb.js ], [ %.0269.i, %.backedge692 ] ; 31 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %.1270.i900, i64 1
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !81 ; 2 uses
  %i.axx = zext i8 %i.axw to i64
  %i.axy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.axx
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !81
  %i.aya = and i8 %i.axz, 12
  %.not590 = icmp eq i8 %i.aya, 0
  br i1 %.not590, label %bb.je, label %.split.loop.exit883.loopexit.split.loop.exit1367, !prof !24

bb.je:                                            ; preds = %.lr.ph902
  %i.ayb = getelementptr inbounds nuw i8, ptr %.1270.i900, i64 2
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !81 ; 2 uses
  %i.ayd = zext i8 %i.ayc to i64
  %i.aye = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ayd
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !81
  %i.ayg = and i8 %i.ayf, 12
  %.not591 = icmp eq i8 %i.ayg, 0
  br i1 %.not591, label %bb.jf, label %.split.loop.exit883.loopexit.split.loop.exit1364, !prof !24

bb.jf:                                            ; preds = %bb.je
  %i.ayh = getelementptr inbounds nuw i8, ptr %.1270.i900, i64 3
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !81 ; 2 uses
  %i.ayj = zext i8 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ayj
  %i.ayl = load i8, ptr %i.ayk, align 1, !tbaa !81
  %i.aym = and i8 %i.ayl, 12
  %.not592 = icmp eq i8 %i.aym, 0
  br i1 %.not592, label %bb.jg, label %.split.loop.exit883.loopexit.split.loop.exit1361, !prof !24

bb.jg:                                            ; preds = %bb.jf
  %i.ayn = getelementptr inbounds nuw i8, ptr %.1270.i900, i64 4
  %i.ayo = load i8, ptr %i.ayn, align 1, !tbaa !81 ; 2 uses
  %i.ayp = zext i8 %i.ayo to i64
  %i.ayq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ayp
  %i.ayr = load i8, ptr %i.ayq, align 1, !tbaa !81
  %i.ays = and i8 %i.ayr, 12
  %.not593 = icmp eq i8 %i.ays, 0
  br i1 %.not593, label %bb.jh, label %.split.loop.exit883.loopexit.split.loop.exit1358, !prof !24

bb.jh:                                            ; preds = %bb.jg
  %i.ayt = getelementptr inbounds nuw i8, ptr %.1270.i900, i64 5
  %i.ayu = load i8, ptr %i.ayt, align 1, !tbaa !81 ; 2 uses
  %i.ayv = zext i8 %i.ayu to i64
  %i.ayw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.ayv
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !81
  %i.ayy = and i8 %i.ayx, 12
  %.not594 = icmp eq i8 %i.ayy, 0
  br i1 %.not594, label %bb.ji, label %.split.loop.exit883.loopexit.split.loop.exit1355, !prof !24

bb.ji:                                            ; preds = %bb.jh
  %i.ayz = getelementptr inbounds nuw i8, ptr %.1270.i900, i64 6
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !81 ; 2 uses
  %i.azb = zext i8 %i.aza to i64
  %i.azc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.azb
  %i.azd = load i8, ptr %i.azc, align 1, !tbaa !81
  %i.aze = and i8 %i.azd, 12
  %.not595 = icmp eq i8 %i.aze, 0
  br i1 %.not595, label %bb.jj, label %.split.loop.exit883.loopexit.split.loop.exit1352, !prof !24

bb.jj:                                            ; preds = %bb.ji
end_hunk_9
begin_hunk_10_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
  %i.yh = zext i64 %i.yg to i128
  %i.yi = mul nuw i128 %i.yh, %i.xw
  %i.yj = lshr i128 %i.yi, 64
  %i.yk = trunc nuw i128 %i.yj to i64
  %i.yl = add i64 %i.yk, %i.yb                    ; 2 uses
  %i.ym = add i64 %i.yl, -1
  %i.yn = icmp ult i64 %i.ym, -2
  br i1 %i.yn, label %bb.gm, label %.critedge689.i

bb.gm:                                            ; preds = %bb.gl
  %i.yo = icmp ult i64 %i.yl, %i.yb
  %i.yp = zext i1 %i.yo to i64
  %i.yq = add nuw i64 %i.yp, %i.ya
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gk
  %.0266 = phi i64 [ %i.ya, %bb.gk ], [ %i.yq, %bb.gm ] ; 2 uses
  %i.yr = icmp sgt i64 %.0266, -1                 ; 2 uses
  %.neg674.i = sext i1 %i.yr to i32
  %i.ys = zext i1 %i.yr to i64
  %i.yt = shl i64 %.0266, %i.ys                   ; 2 uses
  %i.yu = and i64 %i.yt, 1024
  %i.yv = add i64 %i.yu, %i.yt                    ; 2 uses
  %i.yw = icmp ult i64 %i.yv, 1024
  %spec.select298.v = select i1 %i.yw, i32 65, i32 64
  %i.yx = lshr i64 %i.yv, 11
  %reass.sub485 = sub nsw i32 %i.xs, %i.xu
  %i.yy = add nsw i32 %reass.sub485, 1086
  %spec.select298 = add nsw i32 %i.yy, %.neg674.i
  %i.yz = add nsw i32 %spec.select298, %spec.select298.v
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = shl nuw nsw i64 %i.za, 52
  %i.zc = and i64 %i.yx, 4503599627370495
  %i.zd = or disjoint i64 %i.zb, %i.zc
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.ze = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.zf = or disjoint i64 %i.zd, %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.zf, ptr %i.zg, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread

.critedge689.i:                                   ; preds = %..critedge689.i_crit_edge, %bb.gl
  %.pre-phi576 = phi i32 [ %.pre575, %..critedge689.i_crit_edge ], [ %i.xu, %bb.gl ]
  %.pre-phi574 = phi i128 [ %.pre573, %..critedge689.i_crit_edge ], [ %i.xw, %bb.gl ]
  %.pre-phi572 = phi i32 [ %.pre571, %..critedge689.i_crit_edge ], [ %i.xs, %bb.gl ]
  %.pre-phi566 = phi i32 [ %.pre565, %..critedge689.i_crit_edge ], [ %i.xl, %bb.gl ] ; 2 uses
  %.pre-phi562 = phi i64 [ %.pre561, %..critedge689.i_crit_edge ], [ %i.xt, %bb.gl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.zh = select i1 %i.xh, i64 0, i64 4
  %i.zi = shl i64 %i.zh, %.pre-phi562             ; 2 uses
  %i.zj = add i32 %.pre-phi566, 686
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.zk
  %i.zm = load i64, ptr %i.zl, align 16, !tbaa !91
  %i.zn = add i32 %.pre-phi566, 687
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.zo
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !91
  %i.zr = lshr i64 %i.zq, 63
  %i.zs = add i64 %i.zr, %i.zm
  %i.zt = zext i64 %i.zs to i128
  %i.zu = mul nuw i128 %.pre-phi574, %i.zt        ; 2 uses
  %i.zv = lshr i128 %i.zu, 64
  %i.zw = trunc nuw i128 %i.zv to i64
  %i.zx = trunc i128 %i.zu to i64
  %i.zy = lshr i64 %i.zx, 63
  %i.zz = add nuw i64 %i.zy, %i.zw                ; 2 uses
  %.not677.i = icmp eq i64 %i.zi, 0
  %i.aaa = select i1 %.not677.i, i64 8, i64 9
  %i.aab = add i64 %i.aaa, %i.zi
  %i.aac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zz, i1 true) ; 3 uses
  %i.aad = trunc nuw nsw i64 %i.aac to i32
  %i.aae = shl i64 %i.zz, %i.aac                  ; 3 uses
  %i.aaf = add nsw i32 %.pre-phi572, 64
  %i.aag = add nuw nsw i32 %.pre-phi576, %i.aad
  %i.aah = sub nsw i32 %i.aaf, %i.aag             ; 7 uses
  %i.aai = shl i64 %i.aab, %i.aac                 ; 3 uses
  %i.aaj = icmp sgt i32 %i.aah, -1086
  br i1 %i.aaj, label %.thread279, label %bb.go, !prof !24

bb.go:                                            ; preds = %.critedge689.i
  %i.aak = icmp samesign ult i32 %i.aah, -1137
  br i1 %i.aak, label %.thread, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aal = sub nuw nsw i32 -1074, %i.aah          ; 2 uses
  %i.aam = icmp samesign ult i32 %i.aah, -1134
  br i1 %i.aam, label %.thread, label %.thread279, !prof !269

.thread:                                          ; preds = %bb.go, %bb.gp
  %.0603.i278 = phi i32 [ %i.aal, %bb.gp ], [ 64, %bb.go ]
  %i.aan = add nsw i32 %.0603.i278, -60           ; 2 uses
  %i.aao = zext nneg i32 %i.aan to i64            ; 2 uses
  %i.aap = lshr i64 %i.aae, %i.aao
  %i.aaq = add nsw i32 %i.aan, %i.aah
  %i.aar = lshr i64 %i.aai, %i.aao
  %i.aas = add nuw i64 %i.aar, 9
  br label %.thread279

.thread279:                                       ; preds = %.critedge689.i, %.thread, %bb.gp
  %.0604.i = phi i64 [ %i.aas, %.thread ], [ %i.aai, %bb.gp ], [ %i.aai, %.critedge689.i ] ; 2 uses
  %.0602.i = phi i32 [ 60, %.thread ], [ %i.aal, %bb.gp ], [ 11, %.critedge689.i ] ; 3 uses
  %.sroa.19.0.in.i = phi i32 [ %i.aaq, %.thread ], [ %i.aah, %bb.gp ], [ %i.aah, %.critedge689.i ]
  %.sroa.029.0.i = phi i64 [ %i.aap, %.thread ], [ %i.aae, %bb.gp ], [ %i.aae, %.critedge689.i ] ; 2 uses
  %i.aat = zext nneg i32 %.0602.i to i64          ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aat
  %i.aau = xor i64 %notmask.i, -1
  %i.aav = and i64 %.sroa.029.0.i, %i.aau
  %i.aaw = shl nuw nsw i64 %i.aav, 3              ; 2 uses
  %i.aax = add nsw i32 %.0602.i, -1
  %i.aay = zext nneg i32 %i.aax to i64
  %i.aaz = shl nuw nsw i64 8, %i.aay              ; 2 uses
  %i.aba = lshr i64 %.sroa.029.0.i, %i.aat
  %i.abb = add i64 %i.aaz, %.0604.i
  %i.abc = icmp uge i64 %i.aaw, %i.abb            ; 2 uses
  %i.abd = zext i1 %i.abc to i64
  %i.abe = add nuw nsw i64 %i.aba, %i.abd         ; 3 uses
  %i.abf = icmp eq i64 %i.abe, 0
  br i1 %i.abf, label %bb.gy, label %bb.gq, !prof !7

bb.gq:                                            ; preds = %.thread279
  %i.abg = add nsw i32 %.sroa.19.0.in.i, %.0602.i
  %i.abh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 0, 9007199254740993) %i.abe, i1 true) ; 2 uses
  %i.abi = trunc nuw nsw i64 %i.abh to i32
  %i.abj = shl i64 %i.abe, %i.abh
  %i.abk = lshr i64 %i.abj, 11                    ; 2 uses
  %i.abl = sub nsw i32 %i.abg, %i.abi             ; 5 uses
  %i.abm = icmp sgt i32 %i.abl, 960
  br i1 %i.abm, label %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit, label %bb.gr, !prof !7

bb.gr:                                            ; preds = %bb.gq
  %i.abn = icmp sgt i32 %i.abl, -1086
  br i1 %i.abn, label %bb.gs, label %bb.gt, !prof !24

bb.gs:                                            ; preds = %bb.gr
  %i.abo = add nsw i32 %i.abl, 1086
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = shl nuw nsw i64 %i.abp, 52
  %i.abr = and i64 %i.abk, 4503599627370495
  %i.abs = or disjoint i64 %i.abq, %i.abr
  br label %bb.gy

bb.gt:                                            ; preds = %bb.gr
  %i.abt = icmp samesign ugt i32 %i.abl, -1138
  br i1 %i.abt, label %bb.gu, label %bb.gy, !prof !24

bb.gu:                                            ; preds = %bb.gt
  %i.abu = sub nuw nsw i32 -1085, %i.abl
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = lshr i64 %i.abk, %i.abv
  br label %bb.gy

_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit: ; preds = %bb.gq
  br i1 %.not299, label %bb.gw, label %bb.gv, !prof !24

bb.gv:                                            ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit
  %i.abx = ptrtoint ptr %.7 to i64
  %i.aby = sub i64 %i.abx, %i.e
  %i.abz = shl i64 %i.aby, 8
  %i.aca = or disjoint i64 %i.abz, 1
  store i64 %i.aca, ptr %1, align 8, !tbaa !79
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.acb, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.gw:                                            ; preds = %_ZN13duckdb_yyjsonL18diy_fp_to_ieee_rawENS_6diy_fpE.exit
  %i.acc = and i32 %2, 16
  %.not344 = icmp eq i32 %i.acc, 0
  br i1 %.not344, label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, label %bb.gx, !prof !24

bb.gx:                                            ; preds = %bb.gw
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.acd = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.acd, ptr %i.ace, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.gy:                                            ; preds = %.thread279, %bb.gs, %bb.gu, %bb.gt
  %.0.i32.ph = phi i64 [ 0, %bb.gt ], [ %i.abw, %bb.gu ], [ %i.abs, %bb.gs ], [ 0, %.thread279 ] ; 7 uses
  %i.acf = sub i64 %i.aaz, %.0604.i
  %.not678.i = icmp ule i64 %i.aaw, %i.acf
  %spec.select.i = or i1 %.not678.i, %i.abc
  br i1 %spec.select.i, label %bb.gz, label %bb.ha, !prof !24

bb.gz:                                            ; preds = %bb.gy
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.acg = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.ach = or disjoint i64 %.0.i32.ph, %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ach, ptr %i.aci, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.ha:                                            ; preds = %bb.gy
  %.not679.i = icmp samesign ult i64 %.0.i32.ph, 4503599627370496 ; 2 uses
  %i.acj = and i64 %.0.i32.ph, 4503599627370495
  %i.ack = or disjoint i64 %i.acj, 4503599627370496
  %i.acl = lshr i64 %.0.i32.ph, 52
  %i.acm = trunc nuw nsw i64 %i.acl to i32
  %i.acn = add nsw i32 %i.acm, -1076
  %.sroa.9.0.i = select i1 %.not679.i, i32 -1075, i32 %i.acn ; 4 uses
  %.sroa.022.0.i = select i1 %.not679.i, i64 %.0.i32.ph, i64 %i.ack
  %i.aco = shl nuw nsw i64 %.sroa.022.0.i, 1
  %i.acp = or disjoint i64 %i.aco, 1
  call fastcc void @_ZN13duckdb_yyjsonL14bigint_set_bufEPNS_6bigintEmPiPhS3_S3_(ptr noundef %5, i64 noundef %.22596.i, ptr noundef %i.a, ptr noundef %.3565.i, ptr noundef %.3569.i, ptr noundef %.23.i)
  %i.acq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 29 uses
  store i64 %i.acp, ptr %i.acq, align 8, !tbaa !91
  %i.acr = load i32, ptr %i.a, align 4, !tbaa !3  ; 6 uses
  %i.acs = icmp sgt i32 %i.acr, -1
  br i1 %i.acs, label %.preheader363, label %bb.hi

.preheader363:                                    ; preds = %bb.ha
  %.promoted426 = load i32, ptr %5, align 8       ; 2 uses
  %i.act = icmp samesign ugt i32 %i.acr, 18
  br i1 %i.act, label %.lr.ph429, label %._crit_edge430

.lr.ph429:                                        ; preds = %.preheader363
  %i.acu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph429, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65
  %.0.i33428 = phi i32 [ %i.acr, %.lr.ph429 ], [ %i.aei, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65 ] ; 2 uses
  %i.acv = phi i32 [ %.promoted426, %.lr.ph429 ], [ %i.aeh, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65 ] ; 9 uses
  %.not483 = icmp eq i32 %i.acv, 0
  br i1 %.not483, label %._crit_edge416, label %.lr.ph415.preheader

.lr.ph415.preheader:                              ; preds = %bb.hb
  %wide.trip.count521 = zext i32 %i.acv to i64
  br label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader, %bb.hc
  %indvars.iv518 = phi i64 [ 0, %.lr.ph415.preheader ], [ %indvars.iv.next519, %bb.hc ] ; 3 uses
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv518
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !91
  %.not.i64 = icmp eq i64 %i.acx, 0
  br i1 %.not.i64, label %bb.hc, label %._crit_edge416.loopexit

bb.hc:                                            ; preds = %.lr.ph415
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond522.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count521
  br i1 %exitcond522.not, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65, label %.lr.ph415, !llvm.loop !174

._crit_edge416.loopexit:                          ; preds = %.lr.ph415
  %i.acy = trunc nuw i64 %indvars.iv518 to i32
  br label %._crit_edge416

._crit_edge416:                                   ; preds = %._crit_edge416.loopexit, %bb.hb
  %.018.i60.lcssa = phi i32 [ 0, %bb.hb ], [ %i.acy, %._crit_edge416.loopexit ] ; 2 uses
  %i.acz = icmp ult i32 %.018.i60.lcssa, %i.acv
  br i1 %i.acz, label %.lr.ph423.preheader, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65

.lr.ph423.preheader:                              ; preds = %._crit_edge416
  %i.ada = zext i32 %.018.i60.lcssa to i64        ; 4 uses
  %wide.trip.count526 = zext i32 %i.acv to i64    ; 2 uses
  %i.adb = sub nsw i64 %wide.trip.count526, %i.ada ; 3 uses
  %xtraiter827 = and i64 %i.adb, 1
  %i.adc = add nsw i64 %wide.trip.count526, -1
  %i.add = icmp eq i64 %i.adc, %i.ada
  br i1 %i.add, label %.lr.ph423.epil.preheader, label %.lr.ph423.preheader.new

.lr.ph423.preheader.new:                          ; preds = %.lr.ph423.preheader
  %unroll_iter832 = and i64 %i.adb, -2
  br label %.lr.ph423

.lr.ph423:                                        ; preds = %.lr.ph423, %.lr.ph423.preheader.new
  %indvars.iv523 = phi i64 [ %i.ada, %.lr.ph423.preheader.new ], [ %indvars.iv.next524.1, %.lr.ph423 ] ; 3 uses
  %.0.i62421 = phi i64 [ 0, %.lr.ph423.preheader.new ], [ %i.adt, %.lr.ph423 ]
  %niter833 = phi i64 [ 0, %.lr.ph423.preheader.new ], [ %niter833.next.1, %.lr.ph423 ]
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv523 ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !91
  %i.adg = zext i64 %i.adf to i128
  %i.adh = mul nuw i128 %i.adg, 10000000000000000000
  %i.adi = zext i64 %.0.i62421 to i128
  %i.adj = add nuw i128 %i.adh, %i.adi            ; 2 uses
  %i.adk = lshr i128 %i.adj, 64
  %i.adl = trunc i128 %i.adj to i64
  store i64 %i.adl, ptr %i.ade, align 8, !tbaa !91
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv523
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 8 ; 2 uses
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !91
  %i.adp = zext i64 %i.ado to i128
  %i.adq = mul nuw i128 %i.adp, 10000000000000000000
  %i.adr = add nuw i128 %i.adq, %i.adk            ; 2 uses
  %i.ads = lshr i128 %i.adr, 64                   ; 2 uses
  %i.adt = trunc nuw i128 %i.ads to i64           ; 3 uses
  %i.adu = trunc i128 %i.adr to i64
  store i64 %i.adu, ptr %i.adn, align 8, !tbaa !91
  %indvars.iv.next524.1 = add nuw nsw i64 %indvars.iv523, 2 ; 2 uses
  %niter833.next.1 = add i64 %niter833, 2         ; 2 uses
  %niter833.ncmp.1 = icmp eq i64 %niter833.next.1, %unroll_iter832
  br i1 %niter833.ncmp.1, label %._crit_edge424.unr-lcssa, label %.lr.ph423, !llvm.loop !175

._crit_edge424.unr-lcssa:                         ; preds = %.lr.ph423
  %lcmp.mod828.not = icmp eq i64 %xtraiter827, 0
  br i1 %lcmp.mod828.not, label %._crit_edge424, label %.lr.ph423.epil.preheader

.lr.ph423.epil.preheader:                         ; preds = %._crit_edge424.unr-lcssa, %.lr.ph423.preheader
  %indvars.iv523.epil.init = phi i64 [ %i.ada, %.lr.ph423.preheader ], [ %indvars.iv.next524.1, %._crit_edge424.unr-lcssa ]
  %.0.i62421.epil.init = phi i64 [ 0, %.lr.ph423.preheader ], [ %i.adt, %._crit_edge424.unr-lcssa ]
  %lcmp.mod831 = trunc i64 %i.adb to i1
  tail call void @llvm.assume(i1 %lcmp.mod831)
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv523.epil.init ; 2 uses
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !91
  %i.adx = zext i64 %i.adw to i128
  %i.ady = mul nuw i128 %i.adx, 10000000000000000000
  %i.adz = zext i64 %.0.i62421.epil.init to i128
  %i.aea = add nuw i128 %i.ady, %i.adz            ; 2 uses
  %i.aeb = lshr i128 %i.aea, 64                   ; 2 uses
  %i.aec = trunc nuw i128 %i.aeb to i64
  %i.aed = trunc i128 %i.aea to i64
  store i64 %i.aed, ptr %i.adv, align 8, !tbaa !91
  br label %._crit_edge424

._crit_edge424:                                   ; preds = %._crit_edge424.unr-lcssa, %.lr.ph423.epil.preheader
  %.lcssa798 = phi i128 [ %i.ads, %._crit_edge424.unr-lcssa ], [ %i.aeb, %.lr.ph423.epil.preheader ]
  %.lcssa797 = phi i64 [ %i.adt, %._crit_edge424.unr-lcssa ], [ %i.aec, %.lr.ph423.epil.preheader ]
  %.not19.i63 = icmp eq i128 %.lcssa798, 0
  br i1 %.not19.i63, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65, label %bb.hd

bb.hd:                                            ; preds = %._crit_edge424
  %i.aee = add i32 %i.acv, 1
  %i.aef = zext i32 %i.acv to i64
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.aef
  store i64 %.lcssa797, ptr %i.aeg, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65: ; preds = %bb.hc, %._crit_edge416, %._crit_edge424, %bb.hd
  %i.aeh = phi i32 [ %i.acv, %._crit_edge424 ], [ %i.aee, %bb.hd ], [ %i.acv, %._crit_edge416 ], [ %i.acv, %bb.hc ] ; 2 uses
  %i.aei = add nsw i32 %.0.i33428, -19            ; 2 uses
  %i.aej = icmp sgt i32 %.0.i33428, 37
  br i1 %i.aej, label %bb.hb, label %._crit_edge430, !llvm.loop !176

._crit_edge430:                                   ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65, %.preheader363
  %i.aek = phi i32 [ %.promoted426, %.preheader363 ], [ %i.aeh, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65 ] ; 7 uses
  %.0.i33.lcssa = phi i32 [ %i.acr, %.preheader363 ], [ %i.aei, %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit65 ] ; 2 uses
  store i32 %i.aek, ptr %5, align 8
  %.not.i = icmp eq i32 %.0.i33.lcssa, 0
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.he

bb.he:                                            ; preds = %._crit_edge430
  %i.ael = sext i32 %.0.i33.lcssa to i64
  %i.aem = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.ael
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !91
  %i.aeo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.not484 = icmp eq i32 %i.aek, 0
  br i1 %.not484, label %._crit_edge436, label %.lr.ph435.preheader

.lr.ph435.preheader:                              ; preds = %bb.he
  %wide.trip.count531 = zext i32 %i.aek to i64
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %.lr.ph435.preheader, %bb.hf
  %indvars.iv528 = phi i64 [ 0, %.lr.ph435.preheader ], [ %indvars.iv.next529, %bb.hf ] ; 3 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %indvars.iv528
  %i.aeq = load i64, ptr %i.aep, align 8, !tbaa !91
  %.not.i70 = icmp eq i64 %i.aeq, 0
  br i1 %.not.i70, label %bb.hf, label %._crit_edge436.loopexit

bb.hf:                                            ; preds = %.lr.ph435
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %exitcond532.not = icmp eq i64 %indvars.iv.next529, %wide.trip.count531
  br i1 %exitcond532.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %.lr.ph435, !llvm.loop !174

._crit_edge436.loopexit:                          ; preds = %.lr.ph435
  %i.aer = trunc nuw i64 %indvars.iv528 to i32
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %._crit_edge436.loopexit, %bb.he
  %.018.i66.lcssa = phi i32 [ 0, %bb.he ], [ %i.aer, %._crit_edge436.loopexit ] ; 2 uses
  %i.aes = icmp ult i32 %.018.i66.lcssa, %i.aek
  br i1 %i.aes, label %.lr.ph443, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

.lr.ph443:                                        ; preds = %._crit_edge436
  %i.aet = zext i64 %i.aen to i128                ; 3 uses
  %i.aeu = zext i32 %.018.i66.lcssa to i64        ; 4 uses
  %wide.trip.count536 = zext i32 %i.aek to i64    ; 2 uses
  %i.aev = sub nsw i64 %wide.trip.count536, %i.aeu ; 3 uses
  %xtraiter835 = and i64 %i.aev, 1
  %i.aew = add nsw i64 %wide.trip.count536, -1
  %i.aex = icmp eq i64 %i.aew, %i.aeu
  br i1 %i.aex, label %.epil.preheader834, label %.lr.ph443.new

.lr.ph443.new:                                    ; preds = %.lr.ph443
  %unroll_iter840 = and i64 %i.aev, -2
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hg, %.lr.ph443.new
  %indvars.iv533 = phi i64 [ %i.aeu, %.lr.ph443.new ], [ %indvars.iv.next534.1, %bb.hg ] ; 3 uses
  %.0.i68441 = phi i64 [ 0, %.lr.ph443.new ], [ %i.afn, %bb.hg ]
  %niter841 = phi i64 [ 0, %.lr.ph443.new ], [ %niter841.next.1, %bb.hg ]
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %indvars.iv533 ; 2 uses
  %i.aez = load i64, ptr %i.aey, align 8, !tbaa !91
  %i.afa = zext i64 %i.aez to i128
  %i.afb = mul nuw i128 %i.afa, %i.aet
  %i.afc = zext i64 %.0.i68441 to i128
  %i.afd = add nuw i128 %i.afb, %i.afc            ; 2 uses
  %i.afe = lshr i128 %i.afd, 64
  %i.aff = trunc i128 %i.afd to i64
  store i64 %i.aff, ptr %i.aey, align 8, !tbaa !91
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.aeo, i64 %indvars.iv533
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN13duckdb_yyjson18yyjson_read_numberEPKcPNS_10yyjson_valEjPKNS_10yyjson_alcEPNS_15yyjson_read_errE:bb.a
.lr.ph390:                                        ; preds = %.lr.ph390, %.lr.ph390.preheader.new
  %indvars.iv503 = phi i64 [ %i.agj, %.lr.ph390.preheader.new ], [ %indvars.iv.next504.1, %.lr.ph390 ] ; 3 uses
  %.0.i52388 = phi i64 [ 0, %.lr.ph390.preheader.new ], [ %i.ahc, %.lr.ph390 ]
  %niter = phi i64 [ 0, %.lr.ph390.preheader.new ], [ %niter.next.1, %.lr.ph390 ]
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv503 ; 2 uses
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !91
  %i.agp = zext i64 %i.ago to i128
  %i.agq = mul nuw i128 %i.agp, 10000000000000000000
  %i.agr = zext i64 %.0.i52388 to i128
  %i.ags = add nuw i128 %i.agq, %i.agr            ; 2 uses
  %i.agt = lshr i128 %i.ags, 64
  %i.agu = trunc i128 %i.ags to i64
  store i64 %i.agu, ptr %i.agn, align 8, !tbaa !91
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv503
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 8 ; 2 uses
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !91
  %i.agy = zext i64 %i.agx to i128
  %i.agz = mul nuw i128 %i.agy, 10000000000000000000
  %i.aha = add nuw i128 %i.agz, %i.agt            ; 2 uses
  %i.ahb = lshr i128 %i.aha, 64                   ; 2 uses
  %i.ahc = trunc nuw i128 %i.ahb to i64           ; 3 uses
  %i.ahd = trunc i128 %i.aha to i64
  store i64 %i.ahd, ptr %i.agw, align 8, !tbaa !91
  %indvars.iv.next504.1 = add nuw nsw i64 %indvars.iv503, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge391.unr-lcssa, label %.lr.ph390, !llvm.loop !175

._crit_edge391.unr-lcssa:                         ; preds = %.lr.ph390
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge391, label %.lr.ph390.epil.preheader

.lr.ph390.epil.preheader:                         ; preds = %._crit_edge391.unr-lcssa, %.lr.ph390.preheader
  %indvars.iv503.epil.init = phi i64 [ %i.agj, %.lr.ph390.preheader ], [ %indvars.iv.next504.1, %._crit_edge391.unr-lcssa ]
  %.0.i52388.epil.init = phi i64 [ 0, %.lr.ph390.preheader ], [ %i.ahc, %._crit_edge391.unr-lcssa ]
  %lcmp.mod819 = trunc i64 %i.agk to i1
  tail call void @llvm.assume(i1 %lcmp.mod819)
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv503.epil.init ; 2 uses
  %i.ahf = load i64, ptr %i.ahe, align 8, !tbaa !91
  %i.ahg = zext i64 %i.ahf to i128
  %i.ahh = mul nuw i128 %i.ahg, 10000000000000000000
  %i.ahi = zext i64 %.0.i52388.epil.init to i128
  %i.ahj = add nuw i128 %i.ahh, %i.ahi            ; 2 uses
  %i.ahk = lshr i128 %i.ahj, 64                   ; 2 uses
  %i.ahl = trunc nuw i128 %i.ahk to i64
  %i.ahm = trunc i128 %i.ahj to i64
  store i64 %i.ahm, ptr %i.ahe, align 8, !tbaa !91
  br label %._crit_edge391

._crit_edge391:                                   ; preds = %._crit_edge391.unr-lcssa, %.lr.ph390.epil.preheader
  %.lcssa807 = phi i128 [ %i.ahb, %._crit_edge391.unr-lcssa ], [ %i.ahk, %.lr.ph390.epil.preheader ]
  %.lcssa806 = phi i64 [ %i.ahc, %._crit_edge391.unr-lcssa ], [ %i.ahl, %.lr.ph390.epil.preheader ]
  %.not19.i = icmp eq i128 %.lcssa807, 0
  br i1 %.not19.i, label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit, label %bb.hk

bb.hk:                                            ; preds = %._crit_edge391
  %i.ahn = add i32 %i.age, 1
  %i.aho = zext i32 %i.age to i64
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aho
  store i64 %.lcssa806, ptr %i.ahp, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit

_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit: ; preds = %bb.hj, %._crit_edge383, %._crit_edge391, %bb.hk
  %i.ahq = phi i32 [ %i.age, %._crit_edge391 ], [ %i.ahn, %bb.hk ], [ %i.age, %._crit_edge383 ], [ %i.age, %bb.hj ] ; 5 uses
  %i.ahr = add nsw i32 %.0.i34394, -19            ; 3 uses
  %i.ahs = icmp sgt i32 %.0.i34394, 37
  br i1 %i.ahs, label %.lr.ph396, label %._crit_edge397, !llvm.loop !176

._crit_edge397:                                   ; preds = %_ZN13duckdb_yyjsonL14bigint_mul_u64EPNS_6bigintEm.exit
  store i32 %i.ahq, ptr %6, align 8
  %.not.i35 = icmp eq i32 %i.ahr, 0
  br i1 %.not.i35, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.hl

bb.hl:                                            ; preds = %._crit_edge397
  %i.aht = sext i32 %i.ahr to i64
  %i.ahu = getelementptr inbounds [8 x i8], ptr @_ZN13duckdb_yyjsonL15u64_pow10_tableE, i64 %i.aht
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !91 ; 2 uses
  %.not482 = icmp eq i32 %i.ahq, 0
  br i1 %.not482, label %._crit_edge403, label %.lr.ph402.preheader

.lr.ph402.preheader:                              ; preds = %.thread668, %bb.hl
  %i.ahw = phi i64 [ %i.agd, %.thread668 ], [ %i.ahv, %bb.hl ]
  %i.ahx = phi i32 [ 1, %.thread668 ], [ %i.ahq, %bb.hl ] ; 3 uses
  %wide.trip.count511 = zext i32 %i.ahx to i64
  br label %.lr.ph402

.lr.ph402:                                        ; preds = %.lr.ph402.preheader, %bb.hm
  %indvars.iv508 = phi i64 [ 0, %.lr.ph402.preheader ], [ %indvars.iv.next509, %bb.hm ] ; 3 uses
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv508
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !91
  %.not.i58 = icmp eq i64 %i.ahz, 0
  br i1 %.not.i58, label %bb.hm, label %._crit_edge403.loopexit

bb.hm:                                            ; preds = %.lr.ph402
  %indvars.iv.next509 = add nuw nsw i64 %indvars.iv508, 1 ; 2 uses
  %exitcond512.not = icmp eq i64 %indvars.iv.next509, %wide.trip.count511
  br i1 %exitcond512.not, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %.lr.ph402, !llvm.loop !174

._crit_edge403.loopexit:                          ; preds = %.lr.ph402
  %i.aia = trunc nuw i64 %indvars.iv508 to i32
  br label %._crit_edge403

._crit_edge403:                                   ; preds = %._crit_edge403.loopexit, %bb.hl
  %i.aib = phi i64 [ %i.ahv, %bb.hl ], [ %i.ahw, %._crit_edge403.loopexit ]
  %i.aic = phi i32 [ 0, %bb.hl ], [ %i.ahx, %._crit_edge403.loopexit ] ; 6 uses
  %.018.i54.lcssa = phi i32 [ 0, %bb.hl ], [ %i.aia, %._crit_edge403.loopexit ] ; 2 uses
  %i.aid = icmp ult i32 %.018.i54.lcssa, %i.aic
  br i1 %i.aid, label %.lr.ph410, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

.lr.ph410:                                        ; preds = %._crit_edge403
  %i.aie = zext i64 %i.aib to i128                ; 3 uses
  %i.aif = zext i32 %.018.i54.lcssa to i64        ; 4 uses
  %wide.trip.count516 = zext i32 %i.aic to i64    ; 2 uses
  %i.aig = sub nsw i64 %wide.trip.count516, %i.aif ; 3 uses
  %xtraiter820 = and i64 %i.aig, 1
  %i.aih = add nsw i64 %wide.trip.count516, -1
  %i.aii = icmp eq i64 %i.aih, %i.aif
  br i1 %i.aii, label %.epil.preheader, label %.lr.ph410.new

.lr.ph410.new:                                    ; preds = %.lr.ph410
  %unroll_iter825 = and i64 %i.aig, -2
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hn, %.lr.ph410.new
  %indvars.iv513 = phi i64 [ %i.aif, %.lr.ph410.new ], [ %indvars.iv.next514.1, %bb.hn ] ; 3 uses
  %.0.i56408 = phi i64 [ 0, %.lr.ph410.new ], [ %i.aiy, %bb.hn ]
  %niter826 = phi i64 [ 0, %.lr.ph410.new ], [ %niter826.next.1, %bb.hn ]
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv513 ; 2 uses
  %i.aik = load i64, ptr %i.aij, align 8, !tbaa !91
  %i.ail = zext i64 %i.aik to i128
  %i.aim = mul nuw i128 %i.ail, %i.aie
  %i.ain = zext i64 %.0.i56408 to i128
  %i.aio = add nuw i128 %i.aim, %i.ain            ; 2 uses
  %i.aip = lshr i128 %i.aio, 64
  %i.aiq = trunc i128 %i.aio to i64
  store i64 %i.aiq, ptr %i.aij, align 8, !tbaa !91
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv513
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 8 ; 2 uses
  %i.ait = load i64, ptr %i.ais, align 8, !tbaa !91
  %i.aiu = zext i64 %i.ait to i128
  %i.aiv = mul nuw i128 %i.aiu, %i.aie
  %i.aiw = add nuw i128 %i.aiv, %i.aip            ; 2 uses
  %i.aix = lshr i128 %i.aiw, 64                   ; 2 uses
  %i.aiy = trunc nuw i128 %i.aix to i64           ; 3 uses
  %i.aiz = trunc i128 %i.aiw to i64
  store i64 %i.aiz, ptr %i.ais, align 8, !tbaa !91
  %indvars.iv.next514.1 = add nuw nsw i64 %indvars.iv513, 2 ; 2 uses
  %niter826.next.1 = add i64 %niter826, 2         ; 2 uses
  %niter826.ncmp.1 = icmp eq i64 %niter826.next.1, %unroll_iter825
  br i1 %niter826.ncmp.1, label %._crit_edge411.unr-lcssa, label %bb.hn, !llvm.loop !175

._crit_edge411.unr-lcssa:                         ; preds = %bb.hn
  %lcmp.mod821.not = icmp eq i64 %xtraiter820, 0
  br i1 %lcmp.mod821.not, label %._crit_edge411, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge411.unr-lcssa, %.lr.ph410
  %indvars.iv513.epil.init = phi i64 [ %i.aif, %.lr.ph410 ], [ %indvars.iv.next514.1, %._crit_edge411.unr-lcssa ]
  %.0.i56408.epil.init = phi i64 [ 0, %.lr.ph410 ], [ %i.aiy, %._crit_edge411.unr-lcssa ]
  %lcmp.mod824 = trunc i64 %i.aig to i1
  tail call void @llvm.assume(i1 %lcmp.mod824)
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv513.epil.init ; 2 uses
  %i.ajb = load i64, ptr %i.aja, align 8, !tbaa !91
  %i.ajc = zext i64 %i.ajb to i128
  %i.ajd = mul nuw i128 %i.ajc, %i.aie
  %i.aje = zext i64 %.0.i56408.epil.init to i128
  %i.ajf = add nuw i128 %i.ajd, %i.aje            ; 2 uses
  %i.ajg = lshr i128 %i.ajf, 64                   ; 2 uses
  %i.ajh = trunc nuw i128 %i.ajg to i64
  %i.aji = trunc i128 %i.ajf to i64
  store i64 %i.aji, ptr %i.aja, align 8, !tbaa !91
  br label %._crit_edge411

._crit_edge411:                                   ; preds = %._crit_edge411.unr-lcssa, %.epil.preheader
  %.lcssa802 = phi i128 [ %i.aix, %._crit_edge411.unr-lcssa ], [ %i.ajg, %.epil.preheader ]
  %.lcssa801 = phi i64 [ %i.aiy, %._crit_edge411.unr-lcssa ], [ %i.ajh, %.epil.preheader ]
  %.not19.i57 = icmp eq i128 %.lcssa802, 0
  br i1 %.not19.i57, label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit, label %bb.ho

bb.ho:                                            ; preds = %._crit_edge411
  %i.ajj = add i32 %i.aic, 1
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split: ; preds = %bb.hh, %bb.ho
  %.sink = phi i32 [ %i.aic, %bb.ho ], [ %i.aek, %bb.hh ]
  %i.ajk = phi ptr [ %6, %bb.ho ], [ %5, %bb.hh ]
  %.lcssa683.sink = phi i64 [ %.lcssa801, %bb.ho ], [ %.lcssa793, %bb.hh ]
  %.ph = phi i32 [ %i.ajj, %bb.ho ], [ 1, %bb.hh ]
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = zext i32 %.sink to i64
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajm
  store i64 %.lcssa683.sink, ptr %i.ajn, align 8, !tbaa !91
  br label %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit

_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit: ; preds = %bb.hm, %bb.hf, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split, %._crit_edge403, %._crit_edge436, %._crit_edge397, %._crit_edge411, %._crit_edge430, %._crit_edge444
  %i.ajo = phi i32 [ %i.ahq, %._crit_edge397 ], [ %i.aic, %._crit_edge411 ], [ %i.aic, %._crit_edge403 ], [ 1, %._crit_edge430 ], [ 1, %._crit_edge444 ], [ 1, %bb.hf ], [ %.ph, %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit.sink.split ], [ 1, %._crit_edge436 ], [ %i.ahx, %bb.hm ] ; 16 uses
  %i.ajp = icmp sgt i32 %.sroa.9.0.i, 0
  br i1 %i.ajp, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.ajq = and i32 %.sroa.9.0.i, 63               ; 3 uses
  %i.ajr = lshr i32 %.sroa.9.0.i, 6               ; 15 uses
  %i.ajs = icmp eq i32 %i.ajq, 0
  br i1 %i.ajs, label %.preheader358, label %bb.hq, !prof !7

.preheader358:                                    ; preds = %bb.hp
  %.not46.i472 = icmp eq i32 %i.ajo, 0
  br i1 %.not46.i472, label %.lr.ph479.preheader, label %.lr.ph474

.lr.ph474:                                        ; preds = %.preheader358
  %i.ajt = add nsw i32 %i.ajr, -1                 ; 6 uses
  %i.aju = zext i32 %i.ajo to i64                 ; 9 uses
  %min.iters.check781 = icmp ult i32 %i.ajo, 30
  br i1 %min.iters.check781, label %scalar.ph780.preheader, label %vector.scevcheck777

vector.scevcheck777:                              ; preds = %.lr.ph474
  %i.ajv = add nsw i64 %i.aju, -1                 ; 2 uses
  %i.ajw = add i32 %i.ajo, %i.ajr
  %i.ajx = add i32 %i.ajw, -1
  %i.ajy = trunc i64 %i.ajv to i32
  %i.ajz = icmp ult i32 %i.ajx, %i.ajy
  %i.aka = icmp ugt i64 %i.ajv, 4294967295
  %i.akb = or i1 %i.ajz, %i.aka
  br i1 %i.akb, label %scalar.ph780.preheader, label %vector.memcheck778

vector.memcheck778:                               ; preds = %vector.scevcheck777
  %i.akc = add i32 %i.ajo, %i.ajr
  %i.akd = add i32 %i.akc, -1
  %i.ake = zext i32 %i.akd to i64
  %i.akf = sub nsw i64 %i.aju, %i.ake
  %i.akg = shl nsw i64 %i.akf, 3
  %i.akh = add nsw i64 %i.akg, -9
  %diff.check779 = icmp ult i64 %i.akh, 31
  br i1 %diff.check779, label %scalar.ph780.preheader, label %vector.ph782

vector.ph782:                                     ; preds = %vector.memcheck778
  %n.vec783 = and i64 %i.aju, 4294967292          ; 2 uses
  %i.aki = and i64 %i.aju, 3
  br label %vector.body784

vector.body784:                                   ; preds = %vector.body784, %vector.ph782
  %index785 = phi i64 [ 0, %vector.ph782 ], [ %index.next788, %vector.body784 ] ; 2 uses
  %i.akj = sub i64 %i.aju, %index785              ; 2 uses
  %i.akk = getelementptr [8 x i8], ptr %6, i64 %i.akj ; 2 uses
  %i.akl = getelementptr i8, ptr %i.akk, i64 -8
  %i.akm = getelementptr i8, ptr %i.akk, i64 -24
  %wide.load786 = load <2 x i64>, ptr %i.akl, align 8, !tbaa !91
  %wide.load787 = load <2 x i64>, ptr %i.akm, align 8, !tbaa !91
  %i.akn = trunc nuw i64 %i.akj to i32
  %i.ako = add i32 %i.ajt, %i.akn
  %i.akp = zext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.akp ; 2 uses
  %i.akr = getelementptr inbounds i8, ptr %i.akq, i64 -8
  %i.aks = getelementptr inbounds i8, ptr %i.akq, i64 -24
  store <2 x i64> %wide.load786, ptr %i.akr, align 8, !tbaa !91
  store <2 x i64> %wide.load787, ptr %i.aks, align 8, !tbaa !91
  %index.next788 = add nuw i64 %index785, 4       ; 2 uses
  %i.akt = icmp eq i64 %index.next788, %n.vec783
  br i1 %i.akt, label %middle.block789, label %vector.body784, !llvm.loop !270

middle.block789:                                  ; preds = %vector.body784
  %cmp.n790 = icmp eq i64 %n.vec783, %i.aju
  br i1 %cmp.n790, label %.lr.ph479.preheader, label %scalar.ph780.preheader

scalar.ph780.preheader:                           ; preds = %vector.memcheck778, %vector.scevcheck777, %.lr.ph474, %middle.block789
  %indvars.iv553.ph = phi i64 [ %i.aju, %vector.memcheck778 ], [ %i.aju, %vector.scevcheck777 ], [ %i.aju, %.lr.ph474 ], [ %i.aki, %middle.block789 ] ; 4 uses
  %i.aku = add nsw i64 %indvars.iv553.ph, -1
  %xtraiter849 = and i64 %indvars.iv553.ph, 3     ; 2 uses
  %lcmp.mod850.not = icmp eq i64 %xtraiter849, 0
  br i1 %lcmp.mod850.not, label %scalar.ph780.prol.loopexit, label %scalar.ph780.prol

scalar.ph780.prol:                                ; preds = %scalar.ph780.preheader, %scalar.ph780.prol
  %indvars.iv553.prol = phi i64 [ %i.akv, %scalar.ph780.prol ], [ %indvars.iv553.ph, %scalar.ph780.preheader ] ; 3 uses
  %prol.iter851 = phi i64 [ %prol.iter851.next, %scalar.ph780.prol ], [ 0, %scalar.ph780.preheader ]
  %i.akv = add nsw i64 %indvars.iv553.prol, -1    ; 2 uses
  %i.akw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv553.prol
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !91
  %i.aky = trunc nuw i64 %indvars.iv553.prol to i32
  %i.akz = add i32 %i.ajt, %i.aky
  %i.ala = zext i32 %i.akz to i64
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ala
  store i64 %i.akx, ptr %i.alb, align 8, !tbaa !91
  %prol.iter851.next = add i64 %prol.iter851, 1   ; 2 uses
  %prol.iter851.cmp.not = icmp eq i64 %prol.iter851.next, %xtraiter849
  br i1 %prol.iter851.cmp.not, label %scalar.ph780.prol.loopexit, label %scalar.ph780.prol, !llvm.loop !271

scalar.ph780.prol.loopexit:                       ; preds = %scalar.ph780.prol, %scalar.ph780.preheader
  %indvars.iv553.unr = phi i64 [ %indvars.iv553.ph, %scalar.ph780.preheader ], [ %i.akv, %scalar.ph780.prol ]
  %i.alc = icmp ult i64 %i.aku, 3
  br i1 %i.alc, label %.lr.ph479.preheader, label %scalar.ph780

scalar.ph780:                                     ; preds = %scalar.ph780.prol.loopexit, %scalar.ph780
  %indvars.iv553 = phi i64 [ %i.aly, %scalar.ph780 ], [ %indvars.iv553.unr, %scalar.ph780.prol.loopexit ] ; 6 uses
  %i.ald = add nsw i64 %indvars.iv553, -1         ; 2 uses
  %i.ale = getelementptr [8 x i8], ptr %6, i64 %indvars.iv553
  %i.alf = load i64, ptr %i.ale, align 8, !tbaa !91
  %i.alg = trunc nuw i64 %indvars.iv553 to i32
  %i.alh = add i32 %i.ajt, %i.alg
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ali
  store i64 %i.alf, ptr %i.alj, align 8, !tbaa !91
  %i.alk = add nsw i64 %indvars.iv553, -2         ; 2 uses
  %i.all = getelementptr [8 x i8], ptr %6, i64 %i.ald
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !91
  %i.aln = trunc nuw i64 %i.ald to i32
  %i.alo = add i32 %i.ajt, %i.aln
  %i.alp = zext i32 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.alp
  store i64 %i.alm, ptr %i.alq, align 8, !tbaa !91
  %i.alr = add nsw i64 %indvars.iv553, -3         ; 2 uses
  %i.als = getelementptr [8 x i8], ptr %6, i64 %i.alk
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !91
  %i.alu = trunc nuw i64 %i.alk to i32
  %i.alv = add i32 %i.ajt, %i.alu
  %i.alw = zext i32 %i.alv to i64
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.alw
  store i64 %i.alt, ptr %i.alx, align 8, !tbaa !91
  %i.aly = add nsw i64 %indvars.iv553, -4         ; 2 uses
  %i.alz = getelementptr [8 x i8], ptr %6, i64 %i.alr
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !91
  %i.amb = trunc nuw i64 %i.alr to i32
  %i.amc = add i32 %i.ajt, %i.amb
  %i.amd = zext i32 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.amd
  store i64 %i.ama, ptr %i.ame, align 8, !tbaa !91
  %.not46.i.wide.3 = icmp eq i64 %i.aly, 0
  br i1 %.not46.i.wide.3, label %.lr.ph479.preheader, label %scalar.ph780, !llvm.loop !272

.lr.ph479.preheader:                              ; preds = %scalar.ph780.prol.loopexit, %scalar.ph780, %middle.block789, %.preheader358
  %i.amf = add i32 %i.ajo, %i.ajr
  br label %.lr.ph454.preheader

bb.hq:                                            ; preds = %bb.hp
  %i.amg = zext i32 %i.ajo to i64                 ; 10 uses
  %i.amh = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.amg
  store i64 0, ptr %i.amh, align 8, !tbaa !91
  %.not.i37463 = icmp eq i32 %i.ajo, 0
  %.pre577 = zext nneg i32 %i.ajq to i64          ; 5 uses
  br i1 %.not.i37463, label %._crit_edge467, label %.lr.ph466

.lr.ph466:                                        ; preds = %bb.hq
  %i.ami = sub nuw nsw i32 64, %i.ajq
  %i.amj = zext nneg i32 %i.ami to i64            ; 4 uses
  %min.iters.check760 = icmp ult i32 %i.ajo, 20
  br i1 %min.iters.check760, label %scalar.ph759.preheader, label %vector.scevcheck754

vector.scevcheck754:                              ; preds = %.lr.ph466
  %i.amk = add nsw i64 %i.amg, -1                 ; 2 uses
  %i.aml = add i32 %i.ajo, %i.ajr
  %i.amm = trunc i64 %i.amk to i32
  %i.amn = icmp ult i32 %i.aml, %i.amm
  %i.amo = icmp ugt i64 %i.amk, 4294967295
  %i.amp = or i1 %i.amn, %i.amo
  br i1 %i.amp, label %scalar.ph759.preheader, label %vector.memcheck755

vector.memcheck755:                               ; preds = %vector.scevcheck754
  %i.amq = shl nuw nsw i64 %i.amg, 3              ; 2 uses
  %i.amr = add i32 %i.ajo, %i.ajr
  %i.ams = zext i32 %i.amr to i64
  %i.amt = shl nuw nsw i64 %i.ams, 3              ; 2 uses
  %i.amu = sub nsw i64 %i.amt, %i.amq
  %diff.check756 = icmp ugt i64 %i.amu, -32
  %i.amv = sub nsw i64 %i.amq, %i.amt
  %i.amw = add nsw i64 %i.amv, -9
  %diff.check757 = icmp ult i64 %i.amw, 31
  %conflict.rdx758 = or i1 %diff.check756, %diff.check757
  br i1 %conflict.rdx758, label %scalar.ph759.preheader, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck755
  %n.vec762 = and i64 %i.amg, 4294967292          ; 2 uses
  %i.amx = and i64 %i.amg, 3
  %broadcast.splatinsert763 = insertelement <2 x i64> poison, i64 %i.amj, i64 0
  %broadcast.splat764 = shufflevector <2 x i64> %broadcast.splatinsert763, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert765 = insertelement <2 x i64> poison, i64 %.pre577, i64 0
  %broadcast.splat766 = shufflevector <2 x i64> %broadcast.splatinsert765, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body767

vector.body767:                                   ; preds = %vector.body767, %vector.ph761
  %index768 = phi i64 [ 0, %vector.ph761 ], [ %index.next773, %vector.body767 ] ; 2 uses
  %i.amy = sub i64 %i.amg, %index768              ; 3 uses
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.amy ; 2 uses
  %i.ana = getelementptr inbounds i8, ptr %i.amz, i64 -8
  %i.anb = getelementptr inbounds i8, ptr %i.amz, i64 -24
  %wide.load769 = load <2 x i64>, ptr %i.ana, align 8, !tbaa !91
  %wide.load770 = load <2 x i64>, ptr %i.anb, align 8, !tbaa !91
  %i.anc = shl <2 x i64> %wide.load769, %broadcast.splat766
  %i.and = shl <2 x i64> %wide.load770, %broadcast.splat766
  %i.ane = getelementptr [8 x i8], ptr %6, i64 %i.amy ; 2 uses
  %i.anf = getelementptr i8, ptr %i.ane, i64 -8
  %i.ang = getelementptr i8, ptr %i.ane, i64 -24
  %wide.load771 = load <2 x i64>, ptr %i.anf, align 8, !tbaa !91
  %wide.load772 = load <2 x i64>, ptr %i.ang, align 8, !tbaa !91
  %i.anh = lshr <2 x i64> %wide.load771, %broadcast.splat764
  %i.ani = lshr <2 x i64> %wide.load772, %broadcast.splat764
  %i.anj = or <2 x i64> %i.anh, %i.anc
  %i.ank = or <2 x i64> %i.ani, %i.and
  %i.anl = trunc nuw i64 %i.amy to i32
  %i.anm = add i32 %i.ajr, %i.anl
  %i.ann = zext i32 %i.anm to i64
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.ann ; 2 uses
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 -8
  %i.anq = getelementptr inbounds i8, ptr %i.ano, i64 -24
  store <2 x i64> %i.anj, ptr %i.anp, align 8, !tbaa !91
  store <2 x i64> %i.ank, ptr %i.anq, align 8, !tbaa !91
  %index.next773 = add nuw i64 %index768, 4       ; 2 uses
  %i.anr = icmp eq i64 %index.next773, %n.vec762
  br i1 %i.anr, label %middle.block774, label %vector.body767, !llvm.loop !273

middle.block774:                                  ; preds = %vector.body767
  %cmp.n775 = icmp eq i64 %n.vec762, %i.amg
  br i1 %cmp.n775, label %._crit_edge467, label %scalar.ph759.preheader

scalar.ph759.preheader:                           ; preds = %vector.memcheck755, %vector.scevcheck754, %.lr.ph466, %middle.block774
  %indvars.iv548.ph = phi i64 [ %i.amg, %vector.memcheck755 ], [ %i.amg, %vector.scevcheck754 ], [ %i.amg, %.lr.ph466 ], [ %i.amx, %middle.block774 ] ; 7 uses
  %xtraiter846 = and i64 %indvars.iv548.ph, 1
  %lcmp.mod847.not = icmp eq i64 %xtraiter846, 0
  br i1 %lcmp.mod847.not, label %scalar.ph759.prol.loopexit, label %scalar.ph759.prol

scalar.ph759.prol:                                ; preds = %scalar.ph759.preheader
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv548.ph
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !91
  %i.anu = shl i64 %i.ant, %.pre577
  %i.anv = add nsw i64 %indvars.iv548.ph, -1
  %i.anw = getelementptr [8 x i8], ptr %6, i64 %indvars.iv548.ph
  %i.anx = load i64, ptr %i.anw, align 8, !tbaa !91
  %i.any = lshr i64 %i.anx, %i.amj
  %i.anz = or i64 %i.any, %i.anu
  %i.aoa = trunc nuw i64 %indvars.iv548.ph to i32
  %i.aob = add i32 %i.ajr, %i.aoa
  %i.aoc = zext i32 %i.aob to i64
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aoc
  store i64 %i.anz, ptr %i.aod, align 8, !tbaa !91
  br label %scalar.ph759.prol.loopexit

scalar.ph759.prol.loopexit:                       ; preds = %scalar.ph759.prol, %scalar.ph759.preheader
  %indvars.iv548.unr = phi i64 [ %indvars.iv548.ph, %scalar.ph759.preheader ], [ %i.anv, %scalar.ph759.prol ]
  %i.aoe = icmp eq i64 %indvars.iv548.ph, 1
  br i1 %i.aoe, label %._crit_edge467, label %scalar.ph759

scalar.ph759:                                     ; preds = %scalar.ph759.prol.loopexit, %scalar.ph759
  %indvars.iv548 = phi i64 [ %i.aou, %scalar.ph759 ], [ %indvars.iv548.unr, %scalar.ph759.prol.loopexit ] ; 6 uses
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %indvars.iv548
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !91
  %i.aoh = shl i64 %i.aog, %.pre577
  %i.aoi = add nsw i64 %indvars.iv548, -1         ; 2 uses
  %i.aoj = getelementptr [8 x i8], ptr %6, i64 %indvars.iv548
  %i.aok = load i64, ptr %i.aoj, align 8, !tbaa !91
  %i.aol = lshr i64 %i.aok, %i.amj
  %i.aom = or i64 %i.aol, %i.aoh
  %i.aon = trunc nuw i64 %indvars.iv548 to i32
  %i.aoo = add i32 %i.ajr, %i.aon
  %i.aop = zext i32 %i.aoo to i64
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.aop
  store i64 %i.aom, ptr %i.aoq, align 8, !tbaa !91
  %i.aor = getelementptr [8 x i8], ptr %6, i64 %indvars.iv548
  %i.aos = load i64, ptr %i.aor, align 8, !tbaa !91
  %i.aot = shl i64 %i.aos, %.pre577
  %i.aou = add nsw i64 %indvars.iv548, -2         ; 2 uses
  %i.aov = getelementptr [8 x i8], ptr %6, i64 %i.aoi
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !91
  %i.aox = lshr i64 %i.aow, %i.amj
  %i.aoy = or i64 %i.aox, %i.aot
  %i.aoz = trunc nuw i64 %i.aoi to i32
  %i.apa = add i32 %i.ajr, %i.aoz
  %i.apb = zext i32 %i.apa to i64
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.apb
  store i64 %i.aoy, ptr %i.apc, align 8, !tbaa !91
  %.not.i37.wide.1 = icmp eq i64 %i.aou, 0
  br i1 %.not.i37.wide.1, label %._crit_edge467, label %scalar.ph759, !llvm.loop !274

._crit_edge467:                                   ; preds = %scalar.ph759.prol.loopexit, %scalar.ph759, %middle.block774, %bb.hq
  %i.apd = load i64, ptr %i.acq, align 8, !tbaa !91
  %i.ape = shl i64 %i.apd, %.pre577
  %i.apf = zext nneg i32 %i.ajr to i64
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.apf
  store i64 %i.ape, ptr %i.apg, align 8, !tbaa !91
  %i.aph = add i32 %i.ajo, %i.ajr                 ; 2 uses
  %i.api = zext i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [8 x i8], ptr %i.acq, i64 %i.api
  %i.apk = load i64, ptr %i.apj, align 8, !tbaa !91
  %i.apl = icmp ne i64 %i.apk, 0
  %i.apm = zext i1 %i.apl to i32
  %i.apn = add i32 %i.aph, %i.apm                 ; 2 uses
  %.not45.i468 = icmp eq i32 %i.ajr, 0
  br i1 %.not45.i468, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph454.preheader

bb.hr:                                            ; preds = %_ZN13duckdb_yyjsonL16bigint_mul_pow10EPNS_6bigintEi.exit
  %i.apo = sub nsw i32 0, %.sroa.9.0.i            ; 2 uses
  %i.app = and i32 %i.apo, 63                     ; 3 uses
  %i.apq = lshr i32 %i.apo, 6                     ; 16 uses
  %i.apr = load i32, ptr %5, align 8, !tbaa !177  ; 12 uses
  %i.aps = icmp eq i32 %i.app, 0
  br i1 %i.aps, label %.preheader361, label %bb.hs, !prof !7

.preheader361:                                    ; preds = %bb.hr
  %.not46.i44455 = icmp eq i32 %i.apr, 0
  br i1 %.not46.i44455, label %._crit_edge458, label %.lr.ph457

.lr.ph457:                                        ; preds = %.preheader361
  %i.apt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.apu = add nsw i32 %i.apq, -1                 ; 6 uses
  %i.apv = zext i32 %i.apr to i64                 ; 9 uses
  %min.iters.check743 = icmp ult i32 %i.apr, 30
  br i1 %min.iters.check743, label %scalar.ph742.preheader, label %vector.scevcheck739

vector.scevcheck739:                              ; preds = %.lr.ph457
  %i.apw = add nsw i64 %i.apv, -1                 ; 2 uses
  %i.apx = add i32 %i.apr, %i.apq
  %i.apy = add i32 %i.apx, -1
  %i.apz = trunc i64 %i.apw to i32
  %i.aqa = icmp ult i32 %i.apy, %i.apz
  %i.aqb = icmp ugt i64 %i.apw, 4294967295
  %i.aqc = or i1 %i.aqa, %i.aqb
  br i1 %i.aqc, label %scalar.ph742.preheader, label %vector.memcheck740

vector.memcheck740:                               ; preds = %vector.scevcheck739
  %i.aqd = add i32 %i.apr, %i.apq
  %i.aqe = add i32 %i.aqd, -1
  %i.aqf = zext i32 %i.aqe to i64
  %i.aqg = sub nsw i64 %i.apv, %i.aqf
  %i.aqh = shl nsw i64 %i.aqg, 3
  %i.aqi = add nsw i64 %i.aqh, -9
  %diff.check741 = icmp ult i64 %i.aqi, 31
  br i1 %diff.check741, label %scalar.ph742.preheader, label %vector.ph744

vector.ph744:                                     ; preds = %vector.memcheck740
  %n.vec745 = and i64 %i.apv, 4294967292          ; 2 uses
  %i.aqj = and i64 %i.apv, 3
  br label %vector.body746

vector.body746:                                   ; preds = %vector.body746, %vector.ph744
  %index747 = phi i64 [ 0, %vector.ph744 ], [ %index.next750, %vector.body746 ] ; 2 uses
  %i.aqk = sub i64 %i.apv, %index747              ; 2 uses
  %i.aql = getelementptr [8 x i8], ptr %5, i64 %i.aqk ; 2 uses
  %i.aqm = getelementptr i8, ptr %i.aql, i64 -8
  %i.aqn = getelementptr i8, ptr %i.aql, i64 -24
  %wide.load748.a = load <2 x i64>, ptr %i.aqm, align 8, !tbaa !91
  %wide.load749 = load <2 x i64>, ptr %i.aqn, align 8, !tbaa !91
  %i.aqo = trunc nuw i64 %i.aqk to i32
  %i.aqp = add i32 %i.apu, %i.aqo
  %i.aqq = zext i32 %i.aqp to i64
  %i.aqr = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.aqq ; 2 uses
  %i.aqs = getelementptr inbounds i8, ptr %i.aqr, i64 -8
  %i.aqt = getelementptr inbounds i8, ptr %i.aqr, i64 -24
  store <2 x i64> %wide.load748.a, ptr %i.aqs, align 8, !tbaa !91
  store <2 x i64> %wide.load749, ptr %i.aqt, align 8, !tbaa !91
  %index.next750 = add nuw i64 %index747, 4       ; 2 uses
  %i.aqu = icmp eq i64 %index.next750, %n.vec745
  br i1 %i.aqu, label %middle.block751, label %vector.body746, !llvm.loop !275

middle.block751:                                  ; preds = %vector.body746
  %cmp.n752 = icmp eq i64 %n.vec745, %i.apv
  br i1 %cmp.n752, label %._crit_edge458, label %scalar.ph742.preheader

scalar.ph742.preheader:                           ; preds = %vector.memcheck740, %vector.scevcheck739, %.lr.ph457, %middle.block751
  %indvars.iv543.ph = phi i64 [ %i.apv, %vector.memcheck740 ], [ %i.apv, %vector.scevcheck739 ], [ %i.apv, %.lr.ph457 ], [ %i.aqj, %middle.block751 ] ; 4 uses
  %i.aqv = add nsw i64 %indvars.iv543.ph, -1
  %xtraiter844 = and i64 %indvars.iv543.ph, 3     ; 2 uses
  %lcmp.mod845.not = icmp eq i64 %xtraiter844, 0
  br i1 %lcmp.mod845.not, label %scalar.ph742.prol.loopexit, label %scalar.ph742.prol

scalar.ph742.prol:                                ; preds = %scalar.ph742.preheader, %scalar.ph742.prol
  %indvars.iv543.prol = phi i64 [ %i.aqw, %scalar.ph742.prol ], [ %indvars.iv543.ph, %scalar.ph742.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph742.prol ], [ 0, %scalar.ph742.preheader ]
  %i.aqw = add nsw i64 %indvars.iv543.prol, -1    ; 2 uses
  %i.aqx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv543.prol
  %i.aqy = load i64, ptr %i.aqx, align 8, !tbaa !91
  %i.aqz = trunc nuw i64 %indvars.iv543.prol to i32
  %i.ara = add i32 %i.apu, %i.aqz
  %i.arb = zext i32 %i.ara to i64
  %i.arc = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.arb
  store i64 %i.aqy, ptr %i.arc, align 8, !tbaa !91
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter844
  br i1 %prol.iter.cmp.not, label %scalar.ph742.prol.loopexit, label %scalar.ph742.prol, !llvm.loop !276

scalar.ph742.prol.loopexit:                       ; preds = %scalar.ph742.prol, %scalar.ph742.preheader
  %indvars.iv543.unr = phi i64 [ %indvars.iv543.ph, %scalar.ph742.preheader ], [ %i.aqw, %scalar.ph742.prol ]
  %i.ard = icmp ult i64 %i.aqv, 3
  br i1 %i.ard, label %._crit_edge458, label %scalar.ph742

scalar.ph742:                                     ; preds = %scalar.ph742.prol.loopexit, %scalar.ph742
  %indvars.iv543 = phi i64 [ %i.arz, %scalar.ph742 ], [ %indvars.iv543.unr, %scalar.ph742.prol.loopexit ] ; 6 uses
  %i.are = add nsw i64 %indvars.iv543, -1         ; 2 uses
  %i.arf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv543
  %i.arg = load i64, ptr %i.arf, align 8, !tbaa !91
  %i.arh = trunc nuw i64 %indvars.iv543 to i32
  %i.ari = add i32 %i.apu, %i.arh
  %i.arj = zext i32 %i.ari to i64
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.arj
  store i64 %i.arg, ptr %i.ark, align 8, !tbaa !91
  %i.arl = add nsw i64 %indvars.iv543, -2         ; 2 uses
  %i.arm = getelementptr [8 x i8], ptr %5, i64 %i.are
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !91
  %i.aro = trunc nuw i64 %i.are to i32
  %i.arp = add i32 %i.apu, %i.aro
  %i.arq = zext i32 %i.arp to i64
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.arq
  store i64 %i.arn, ptr %i.arr, align 8, !tbaa !91
  %i.ars = add nsw i64 %indvars.iv543, -3         ; 2 uses
  %i.art = getelementptr [8 x i8], ptr %5, i64 %i.arl
  %i.aru = load i64, ptr %i.art, align 8, !tbaa !91
  %i.arv = trunc nuw i64 %i.arl to i32
  %i.arw = add i32 %i.apu, %i.arv
  %i.arx = zext i32 %i.arw to i64
  %i.ary = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.arx
  store i64 %i.aru, ptr %i.ary, align 8, !tbaa !91
  %i.arz = add nsw i64 %indvars.iv543, -4         ; 2 uses
  %i.asa = getelementptr [8 x i8], ptr %5, i64 %i.ars
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !91
  %i.asc = trunc nuw i64 %i.ars to i32
  %i.asd = add i32 %i.apu, %i.asc
  %i.ase = zext i32 %i.asd to i64
  %i.asf = getelementptr inbounds nuw [8 x i8], ptr %i.apt, i64 %i.ase
  store i64 %i.asb, ptr %i.asf, align 8, !tbaa !91
  %.not46.i44.wide.3 = icmp eq i64 %i.arz, 0
  br i1 %.not46.i44.wide.3, label %._crit_edge458, label %scalar.ph742, !llvm.loop !277

._crit_edge458:                                   ; preds = %scalar.ph742.prol.loopexit, %scalar.ph742, %middle.block751, %.preheader361
  %i.asg = add i32 %i.apr, %i.apq
  store i32 %i.asg, ptr %5, align 8, !tbaa !177
  %.not47.i46459 = icmp eq i32 %i.apq, 0
  br i1 %.not47.i46459, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph462

.lr.ph462:                                        ; preds = %._crit_edge458
  %i.ash = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph454.preheader

bb.hs:                                            ; preds = %bb.hr
  %i.asi = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.asj = zext i32 %i.apr to i64                 ; 10 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.asj
  store i64 0, ptr %i.ask, align 8, !tbaa !91
  %.not.i40446 = icmp eq i32 %i.apr, 0
  %.pre579 = zext nneg i32 %i.app to i64          ; 5 uses
  br i1 %.not.i40446, label %._crit_edge450, label %.lr.ph449

.lr.ph449:                                        ; preds = %bb.hs
  %i.asl = sub nuw nsw i32 64, %i.app
  %i.asm = zext nneg i32 %i.asl to i64            ; 4 uses
  %min.iters.check = icmp ult i32 %i.apr, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph449
  %i.asn = add nsw i64 %i.asj, -1                 ; 2 uses
  %i.aso = add i32 %i.apr, %i.apq
  %i.asp = trunc i64 %i.asn to i32
  %i.asq = icmp ult i32 %i.aso, %i.asp
  %i.asr = icmp ugt i64 %i.asn, 4294967295
  %i.ass = or i1 %i.asq, %i.asr
  br i1 %i.ass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ast = shl nuw nsw i64 %i.asj, 3              ; 2 uses
  %i.asu = add i32 %i.apr, %i.apq
  %i.asv = zext i32 %i.asu to i64
  %i.asw = shl nuw nsw i64 %i.asv, 3              ; 2 uses
  %i.asx = sub nsw i64 %i.asw, %i.ast
  %diff.check = icmp ugt i64 %i.asx, -32
  %i.asy = sub nsw i64 %i.ast, %i.asw
  %i.asz = add nsw i64 %i.asy, -9
  %diff.check733 = icmp ult i64 %i.asz, 31
  %conflict.rdx = or i1 %diff.check, %diff.check733
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.asj, 4294967292             ; 2 uses
  %i.ata = and i64 %i.asj, 3
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.asm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert734 = insertelement <2 x i64> poison, i64 %.pre579, i64 0
  %broadcast.splat735 = shufflevector <2 x i64> %broadcast.splatinsert734, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atb = sub i64 %i.asj, %index                 ; 3 uses
  %i.atc = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.atb ; 2 uses
  %i.atd = getelementptr inbounds i8, ptr %i.atc, i64 -8
  %i.ate = getelementptr inbounds i8, ptr %i.atc, i64 -24
  %wide.load = load <2 x i64>, ptr %i.atd, align 8, !tbaa !91
  %wide.load736 = load <2 x i64>, ptr %i.ate, align 8, !tbaa !91
  %i.atf = shl <2 x i64> %wide.load, %broadcast.splat735
  %i.atg = shl <2 x i64> %wide.load736, %broadcast.splat735
  %i.ath = getelementptr [8 x i8], ptr %5, i64 %i.atb ; 2 uses
  %i.ati = getelementptr i8, ptr %i.ath, i64 -8
  %i.atj = getelementptr i8, ptr %i.ath, i64 -24
  %wide.load737 = load <2 x i64>, ptr %i.ati, align 8, !tbaa !91
  %wide.load738 = load <2 x i64>, ptr %i.atj, align 8, !tbaa !91
  %i.atk = lshr <2 x i64> %wide.load737, %broadcast.splat
  %i.atl = lshr <2 x i64> %wide.load738, %broadcast.splat
  %i.atm = or <2 x i64> %i.atk, %i.atf
  %i.atn = or <2 x i64> %i.atl, %i.atg
  %i.ato = trunc nuw i64 %i.atb to i32
  %i.atp = add i32 %i.apq, %i.ato
  %i.atq = zext i32 %i.atp to i64
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.atq ; 2 uses
  %i.ats = getelementptr inbounds i8, ptr %i.atr, i64 -8
  %i.att = getelementptr inbounds i8, ptr %i.atr, i64 -24
  store <2 x i64> %i.atm, ptr %i.ats, align 8, !tbaa !91
  store <2 x i64> %i.atn, ptr %i.att, align 8, !tbaa !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.atu = icmp eq i64 %index.next, %n.vec
  br i1 %i.atu, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.asj
  br i1 %cmp.n, label %._crit_edge450, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph449, %middle.block
  %indvars.iv538.ph = phi i64 [ %i.asj, %vector.memcheck ], [ %i.asj, %vector.scevcheck ], [ %i.asj, %.lr.ph449 ], [ %i.ata, %middle.block ] ; 7 uses
  %xtraiter842 = and i64 %indvars.iv538.ph, 1
  %lcmp.mod843.not = icmp eq i64 %xtraiter842, 0
  br i1 %lcmp.mod843.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %indvars.iv538.ph
  %i.atw = load i64, ptr %i.atv, align 8, !tbaa !91
  %i.atx = shl i64 %i.atw, %.pre579
  %i.aty = add nsw i64 %indvars.iv538.ph, -1
  %i.atz = getelementptr [8 x i8], ptr %5, i64 %indvars.iv538.ph
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !91
  %i.aub = lshr i64 %i.aua, %i.asm
  %i.auc = or i64 %i.aub, %i.atx
  %i.aud = trunc nuw i64 %indvars.iv538.ph to i32
  %i.aue = add i32 %i.apq, %i.aud
  %i.auf = zext i32 %i.aue to i64
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.auf
  store i64 %i.auc, ptr %i.aug, align 8, !tbaa !91
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv538.unr = phi i64 [ %indvars.iv538.ph, %scalar.ph.preheader ], [ %i.aty, %scalar.ph.prol ]
  %i.auh = icmp eq i64 %indvars.iv538.ph, 1
  br i1 %i.auh, label %._crit_edge450, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv538 = phi i64 [ %i.aux, %scalar.ph ], [ %indvars.iv538.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %indvars.iv538
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !91
  %i.auk = shl i64 %i.auj, %.pre579
  %i.aul = add nsw i64 %indvars.iv538, -1         ; 2 uses
  %i.aum = getelementptr [8 x i8], ptr %5, i64 %indvars.iv538
  %i.aun = load i64, ptr %i.aum, align 8, !tbaa !91
  %i.auo = lshr i64 %i.aun, %i.asm
  %i.aup = or i64 %i.auo, %i.auk
  %i.auq = trunc nuw i64 %indvars.iv538 to i32
  %i.aur = add i32 %i.apq, %i.auq
  %i.aus = zext i32 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.aus
  store i64 %i.aup, ptr %i.aut, align 8, !tbaa !91
  %i.auu = getelementptr [8 x i8], ptr %5, i64 %indvars.iv538
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !91
  %i.auw = shl i64 %i.auv, %.pre579
  %i.aux = add nsw i64 %indvars.iv538, -2         ; 2 uses
  %i.auy = getelementptr [8 x i8], ptr %5, i64 %i.aul
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !91
  %i.ava = lshr i64 %i.auz, %i.asm
  %i.avb = or i64 %i.ava, %i.auw
  %i.avc = trunc nuw i64 %i.aul to i32
  %i.avd = add i32 %i.apq, %i.avc
  %i.ave = zext i32 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.ave
  store i64 %i.avb, ptr %i.avf, align 8, !tbaa !91
  %.not.i40.wide.1 = icmp eq i64 %i.aux, 0
  br i1 %.not.i40.wide.1, label %._crit_edge450, label %scalar.ph, !llvm.loop !279

._crit_edge450:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.hs
  %i.avg = load i64, ptr %i.asi, align 8, !tbaa !91
  %i.avh = shl i64 %i.avg, %.pre579
  %i.avi = zext nneg i32 %i.apq to i64
  %i.avj = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.avi
  store i64 %i.avh, ptr %i.avj, align 8, !tbaa !91
  %i.avk = add i32 %i.apr, %i.apq                 ; 2 uses
  %i.avl = zext i32 %i.avk to i64
  %i.avm = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.avl
  %i.avn = load i64, ptr %i.avm, align 8, !tbaa !91
  %i.avo = icmp ne i64 %i.avn, 0
  %i.avp = zext i1 %i.avo to i32
  %i.avq = add i32 %i.avk, %i.avp
  store i32 %i.avq, ptr %5, align 8, !tbaa !177
  %.not45.i42451 = icmp eq i32 %i.apq, 0
  br i1 %.not45.i42451, label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %._crit_edge450, %._crit_edge467, %.lr.ph479.preheader, %.lr.ph462
  %.sink709 = phi i32 [ %i.ajr, %._crit_edge467 ], [ %i.apq, %.lr.ph462 ], [ %i.ajr, %.lr.ph479.preheader ], [ %i.apq, %._crit_edge450 ]
  %.sink704 = phi ptr [ %i.acq, %._crit_edge467 ], [ %i.ash, %.lr.ph462 ], [ %i.acq, %.lr.ph479.preheader ], [ %i.asi, %._crit_edge450 ]
  %.ph703 = phi i32 [ %i.apn, %._crit_edge467 ], [ %i.ajo, %.lr.ph462 ], [ %i.amf, %.lr.ph479.preheader ], [ %i.ajo, %._crit_edge450 ]
  %7 = add nsw i32 %.sink709, -1
  %i.avr = zext i32 %7 to i64
  %8 = shl nuw nsw i64 %i.avr, 3
  %9 = add nuw nsw i64 %8, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sink704, i8 0, i64 %9, i1 false), !tbaa !91
  br label %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit

_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit: ; preds = %.lr.ph454.preheader, %._crit_edge450, %._crit_edge458, %._crit_edge467
  %10 = phi i32 [ %i.apn, %._crit_edge467 ], [ %i.ajo, %._crit_edge450 ], [ %i.ajo, %._crit_edge458 ], [ %.ph703, %.lr.ph454.preheader ] ; 2 uses
  %i.avs = load i32, ptr %5, align 8, !tbaa !177  ; 4 uses
  %i.avt = icmp ult i32 %i.avs, %10
  br i1 %i.avt, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %bb.ht

bb.ht:                                            ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit
  %i.avu = icmp ugt i32 %i.avs, %10
  br i1 %i.avu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, label %.preheader357

.preheader357:                                    ; preds = %bb.ht
  %.not.i48729 = icmp eq i32 %i.avs, 0
  br i1 %.not.i48729, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread286, label %.lr.ph732

.lr.ph732:                                        ; preds = %.preheader357
  %i.avv = zext i32 %i.avs to i64
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hv
  %i.avw = add nsw i64 %indvars.iv556730, -1      ; 2 uses
  %.not.i48 = icmp eq i64 %i.avw, 0
  br i1 %.not.i48, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread286, label %bb.hv, !llvm.loop !191

bb.hv:                                            ; preds = %.lr.ph732, %bb.hu
  %.016.i731 = phi i32 [ undef, %.lr.ph732 ], [ %.1.i49, %bb.hu ]
  %indvars.iv556730 = phi i64 [ %i.avv, %.lr.ph732 ], [ %i.avw, %bb.hu ] ; 3 uses
  %i.avx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv556730
  %i.avy = load i64, ptr %i.avx, align 8, !tbaa !91 ; 3 uses
  %i.avz = getelementptr [8 x i8], ptr %6, i64 %indvars.iv556730
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !91 ; 3 uses
  %.not345 = icmp ult i64 %i.avy, %i.awa
  %.not346 = icmp ugt i64 %i.avy, %i.awa
  %..016.i = select i1 %.not346, i32 1, i32 %.016.i731
  %.1.i49 = select i1 %.not345, i32 -1, i32 %..016.i ; 3 uses
  %cond.i = icmp eq i64 %i.avy, %i.awa
  br i1 %cond.i, label %bb.hu, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit, !llvm.loop !191

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit: ; preds = %bb.hv
  %.not680.i = icmp eq i32 %.1.i49, 0
  br i1 %.not680.i, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread286, label %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread, !prof !109

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread: ; preds = %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit, %bb.ht, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %.2.i50285 = phi i32 [ %.1.i49, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit ], [ -1, %_ZN13duckdb_yyjsonL15bigint_mul_pow2EPNS_6bigintEj.exit ], [ 1, %bb.ht ]
  %i.awb = icmp sgt i32 %.2.i50285, 0
  %i.awc = zext i1 %i.awb to i64
  br label %bb.hw

_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread286: ; preds = %bb.hu, %.preheader357, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit
  %i.awd = and i64 %.0.i32.ph, 1
  br label %bb.hw

bb.hw:                                            ; preds = %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread286, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread
  %.pn.i = phi i64 [ %i.awc, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread ], [ %i.awd, %_ZN13duckdb_yyjsonL10bigint_cmpEPNS_6bigintES1_.exit.thread286 ]
  %.0601.i = add nuw nsw i64 %.pn.i, %.0.i32.ph   ; 2 uses
  %i.awe = icmp eq i64 %.0601.i, 9218868437227405312
  br i1 %i.awe, label %bb.hx, label %bb.id, !prof !7

bb.hx:                                            ; preds = %bb.hw
  br i1 %.not299, label %bb.ib, label %bb.hy, !prof !24

bb.hy:                                            ; preds = %bb.hx
  %i.awf = load ptr, ptr %i.c, align 8, !tbaa !92 ; 2 uses
  %.not681.i = icmp eq ptr %i.awf, null
  br i1 %.not681.i, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  store i8 0, ptr %i.awf, align 1, !tbaa !81
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.awg = ptrtoint ptr %.7 to i64
  %i.awh = sub i64 %i.awg, %i.e
  %i.awi = shl i64 %i.awh, 8
  %i.awj = or disjoint i64 %i.awi, 1
  store i64 %i.awj, ptr %1, align 8, !tbaa !79
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.awk, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.ib:                                            ; preds = %bb.hx
  %i.awl = and i32 %2, 16
  %.not348 = icmp eq i32 %i.awl, 0
  br i1 %.not348, label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit, label %bb.ic, !prof !24

bb.ic:                                            ; preds = %bb.ib
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.awm = select i1 %i.j, i64 -4503599627370496, i64 9218868437227405312
  %i.awn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.awm, ptr %i.awn, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

bb.id:                                            ; preds = %bb.hw
  store i64 20, ptr %1, align 8, !tbaa !79
  %i.awo = select i1 %i.j, i64 -9223372036854775808, i64 0
  %i.awp = or disjoint i64 %.0601.i, %i.awo
  %i.awq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.awp, ptr %i.awq, align 8, !tbaa !81
  br label %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread: ; preds = %bb.y, %bb.x, %bb.r, %bb.s, %bb.aa, %bb.fr, %bb.ft, %bb.fv, %bb.fy, %bb.gb, %bb.gd, %bb.gn, %bb.gi, %bb.fh, %bb.fo, %.loopexit, %bb.ex, %bb.ey, %bb.ez, %bb.bc, %bb.bd, %bb.be, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg
  %i.awr = phi ptr [ %i.cg, %bb.bg ], [ %i.aw, %bb.aa ], [ %.10.lcssa, %bb.fr ], [ %.10.lcssa, %bb.ft ], [ %.10.lcssa, %bb.fv ], [ %.11, %bb.fy ], [ %.11, %bb.gb ], [ %.11, %bb.gd ], [ %.7, %bb.gn ], [ %.7, %bb.gi ], [ %i.tc, %bb.fh ], [ %.6, %bb.fo ], [ %.2, %.loopexit ], [ %i.sf, %bb.ex ], [ %i.sf, %bb.ey ], [ %i.sf, %bb.ez ], [ %i.hc, %bb.bc ], [ %i.hc, %bb.bd ], [ %i.hc, %bb.be ], [ %i.gv, %bb.df ], [ %i.go, %bb.dc ], [ %i.gh, %bb.cz ], [ %i.ga, %bb.cw ], [ %i.ft, %bb.ct ], [ %i.fm, %bb.cq ], [ %i.ff, %bb.cn ], [ %i.ey, %bb.ck ], [ %i.er, %bb.ch ], [ %i.ek, %bb.ce ], [ %i.ed, %bb.cb ], [ %i.dw, %bb.by ], [ %i.dp, %bb.bv ], [ %i.di, %bb.bs ], [ %i.db, %bb.bp ], [ %i.cu, %bb.bm ], [ %i.cn, %bb.bj ], [ %i.as, %bb.x ], [ %i.as, %bb.y ], [ %.0.i29, %bb.r ], [ %.0.i29, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.cont.cont.cont

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread291: ; preds = %bb.gc, %bb.fu, %bb.fp, %bb.fl, %bb.fj, %bb.fc, %bb.ag, %bb.af, %bb.ac, %bb.g, %bb.t, %bb.u, %bb.v, %bb.h
  %.str.79.sink = phi ptr [ @.str.79, %bb.fj ], [ @.str.80, %bb.af ], [ @.str.82, %bb.fu ], [ @.str.78, %bb.g ], [ @.str.79, %bb.fl ], [ @.str.81, %bb.ag ], [ @.str.79, %bb.ac ], [ @.str.81, %bb.fp ], [ @.str.79, %bb.fc ], [ @.str.78, %bb.h ], [ @.str.78, %bb.v ], [ @.str.78, %bb.u ], [ @.str.78, %bb.t ], [ @.str.82, %bb.gc ]
  %.6.sink = phi ptr [ %i.tu, %bb.fj ], [ %i.l, %bb.af ], [ %0, %bb.fu ], [ %i.l, %bb.g ], [ %.6, %bb.fl ], [ %i.bx, %bb.ag ], [ %i.bf, %bb.ac ], [ %i.uz, %bb.fp ], [ %i.sy, %bb.fc ], [ %i.l, %bb.h ], [ %i.l, %bb.v ], [ %i.l, %bb.u ], [ %i.l, %bb.t ], [ %0, %bb.gc ]
  store ptr %.str.79.sink, ptr %i.d, align 8, !tbaa !92
  store ptr %.6.sink, ptr %i.b, align 8, !tbaa !92
  br label %.sink.split

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294: ; preds = %bb.gv, %bb.gx, %bb.gz, %bb.ia, %bb.ic, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.cont.cont.cont

_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit: ; preds = %bb.ib, %bb.gw
  store ptr @.str.82, ptr %i.d, align 8, !tbaa !92
  store ptr %0, ptr %i.b, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread291, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.ie

bb.ie:                                            ; preds = %.sink.split, %.split
  br i1 %.not, label %.cont.cont.cont, label %.cont92.cont.else

.cont92.cont.else:                                ; preds = %bb.ie
  %.sroa.gep72 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aws = load ptr, ptr %i.b, align 8, !tbaa !92 ; 2 uses
  %i.awt = icmp ugt ptr %i.aws, %0
  %i.awu = ptrtoint ptr %i.aws to i64
  %i.awv = sub i64 %i.awu, %i.e
  %i.aww = select i1 %i.awt, i64 %i.awv, i64 0
  store i64 %i.aww, ptr %.sroa.gep72, align 8, !tbaa !153
  %i.awx = load ptr, ptr %i.d, align 8, !tbaa !92
  %.sroa.gep74 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.awx, ptr %.sroa.gep74, align 8, !tbaa !155
  store i32 9, ptr %4, align 8, !tbaa !156
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294, %.split._crit_edge, %.cont92.cont.else, %bb.ie, %.cont89.cont.else, %bb.d, %.cont.cont.else, %bb.b
  %.0 = phi ptr [ null, %.cont89.cont.else ], [ null, %.cont.cont.else ], [ null, %.cont92.cont.else ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.ie ], [ %.pre, %.split._crit_edge ], [ %.7, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread294 ], [ %i.awr, %_ZN13duckdb_yyjsonL11read_numberEPPhS1_jPNS_10yyjson_valEPPKc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %.not = icmp eq ptr %2, null
  %i.a = select i1 %.not, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %2 ; 4 uses
  %.sroa.01324.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !9 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !9 ; 16 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !9 ; 10 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9 ; 35 uses
  %.not26 = icmp eq ptr %4, null                  ; 14 uses
  %i.b = select i1 %.not26, ptr %5, ptr %4        ; 16 uses
  %.not27 = icmp eq ptr %3, null                  ; 16 uses
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  br i1 %.not27, label %.cont1267, label %.else1269

.else1269:                                        ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !91
  br label %.cont1267

.cont1267:                                        ; preds = %bb.b, %.else1269
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not26, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.40, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 1, ptr %i.b, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL19yyjson_write_singleEPNS_10yyjson_valEjNS_10yyjson_alcEPmPNS_16yyjson_write_errE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.d = trunc i64 %i.c to i8                     ; 2 uses
  %i.e = and i8 %i.d, 6
  %i.f = icmp ne i8 %i.e, 6
  %i.g = icmp ult i64 %i.c, 256
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.ik

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %1, 2
  %.not1811 = icmp eq i32 %i.h, 0                 ; 3 uses
  %i.i = and i32 %1, 4
  %.not1812 = icmp eq i32 %i.i, 0                 ; 2 uses
  br i1 %.not1811, label %bb.f, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  %_ZN13duckdb_yyjsonL19enc_table_esc_slashE._ZN13duckdb_yyjsonL13enc_table_escE.i58 = select i1 %.not1812, ptr @_ZN13duckdb_yyjsonL13enc_table_escE, ptr @_ZN13duckdb_yyjsonL19enc_table_esc_slashE, !prof !24
  br label %_ZN13duckdb_yyjsonL23get_enc_table_with_flagEj.exit59

bb.f:                                             ; preds = %bb.d
end_hunk_11
begin_hunk_12_@_ZN13duckdb_yyjson25yyjson_mut_val_write_fileEPKcPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE:bb.a
  %.sroa.sel29.v.sroa.sel.v.sroa.sel.v = select i1 %.not22, ptr %5, ptr %4
  %.sroa.sel29.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel29.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel29.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.c, align 8, !tbaa !282
  %i.j = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  br label %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit

bb.h:                                             ; preds = %bb.f
  %i.k = call i32 @fclose(ptr noundef nonnull %i.g)
  %.not19.i = icmp eq i32 %i.k, 0
  br i1 %.not19.i, label %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.sel32.v.sroa.sel.v.sroa.sel.v = select i1 %.not22, ptr %5, ptr %4
  %.sroa.sel32.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel32.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.96, ptr %.sroa.sel32.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.c, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit: ; preds = %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  call void %i.m(ptr noundef %i.o, ptr noundef nonnull %i.e)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit, %.critedge
  %.0 = phi i1 [ false, %.critedge ], [ %.0.i, %_ZN13duckdb_yyjsonL17write_dat_to_fileEPKcPhmPNS_16yyjson_write_errE.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not = icmp eq ptr %3, null
  %i.b = select i1 %.not, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %3 ; 3 uses
  %.not20 = icmp eq ptr %4, null                  ; 3 uses
  %i.c = select i1 %.not20, ptr %5, ptr %4        ; 3 uses
  %.not21 = icmp eq ptr %0, null
  br i1 %.not21, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.42, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 1, ptr %i.c, align 8, !tbaa !282
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = call fastcc noundef ptr @_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %1, i64 noundef 0, i32 noundef %2, ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) ; 3 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.f, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.a, align 8, !tbaa !91
  %i.f = call i64 @fwrite(ptr noundef nonnull readonly %i.d, i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i = icmp eq i64 %i.f, 1                   ; 2 uses
  br i1 %.not.i, label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.sel26.v.sroa.sel.v.sroa.sel.v = select i1 %.not20, ptr %5, ptr %4
  %.sroa.sel26.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel26.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel26.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.c, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit: ; preds = %bb.d, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  call void %i.h(ptr noundef %i.j, ptr noundef nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.not.i, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson21yyjson_mut_write_fileEPKcPKNS_14yyjson_mut_docEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  %i.c = tail call noundef zeroext i1 @_ZN13duckdb_yyjson25yyjson_mut_val_write_fileEPKcPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr noundef %0, ptr noundef %i.b, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13duckdb_yyjson19yyjson_mut_write_fpEP8_IO_FILEPKNS_14yyjson_mut_docEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #10 {
bb.a:
  %5 = alloca %"struct.duckdb_yyjson::yyjson_write_err", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %.not.i = icmp eq ptr %3, null
  %i.d = select i1 %.not.i, ptr @_ZN13duckdb_yyjsonL18YYJSON_DEFAULT_ALCE, ptr %3 ; 3 uses
  %.not20.i = icmp eq ptr %4, null                ; 3 uses
  %i.e = select i1 %.not20.i, ptr %5, ptr %4      ; 3 uses
  %.not21.i = icmp eq ptr %0, null
  br i1 %.not21.i, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, ptr %5, ptr %4
  %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.42, ptr %.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 1, ptr %i.e, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit

bb.e:                                             ; preds = %bb.c
  %i.f = call fastcc noundef ptr @_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE(ptr noundef %i.c, i64 noundef 0, i32 noundef %2, ptr noundef nonnull readonly %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) ; 3 uses
  %.not22.i = icmp eq ptr %i.f, null
  br i1 %.not22.i, label %_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.g = load i64, ptr %i.a, align 8, !tbaa !91
  %i.h = call i64 @fwrite(ptr noundef nonnull readonly %i.f, i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %0)
  %.not.i.i = icmp eq i64 %i.h, 1                 ; 2 uses
  br i1 %.not.i.i, label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, ptr %5, ptr %4
  %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8
  store ptr @.str.95, ptr %.sroa.sel26.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !280
  store i32 6, ptr %i.e, align 8, !tbaa !282
  br label %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i

_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i: ; preds = %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  call void %i.j(ptr noundef %i.l, ptr noundef nonnull %i.f), !inline_history !370
  br label %_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit

_ZN13duckdb_yyjson23yyjson_mut_val_write_fpEP8_IO_FILEPKNS_14yyjson_mut_valEjPKNS_10yyjson_alcEPNS_16yyjson_write_errE.exit: ; preds = %bb.d, %bb.e, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i
  %.0.i = phi i1 [ false, %bb.d ], [ %.not.i.i, %_ZN13duckdb_yyjsonL15write_dat_to_fpEP8_IO_FILEPhmPNS_16yyjson_write_errE.exit.i ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZN13duckdb_yyjsonL11null_mallocEPvm(ptr nofree readnone captures(none) %0, i64 %1) #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @_ZN13duckdb_yyjsonL12null_reallocEPvS0_mm(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) #0 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN13duckdb_yyjsonL9null_freeEPvS0_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL16is_truncated_endEPhS0_S0_jj(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 2, 12) %3, i32 noundef %4) unnamed_addr #22 {
bb.a:
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread [
    i32 11, label %bb.c
    i32 9, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
    i32 6, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.not.i133 = icmp ugt ptr %i.b, %2              ; 2 uses
  br i1 %.not.i133, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138: ; preds = %bb.c
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %bcmp.i137 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.71, i64 %i.e)
  %i.f = icmp eq i32 %bcmp.i137, 0
  br i1 %i.f, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread: ; preds = %bb.c, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.not.i127 = icmp ugt ptr %i.g, %2
  br i1 %.not.i127, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %bcmp.i131 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.74, i64 %i.j)
  %i.k = icmp eq i32 %bcmp.i131, 0
  br i1 %i.k, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138.thread, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132
  br i1 %.not.i133, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.73, i64 %i.n)
  %i.o = icmp eq i32 %bcmp.i, 0
  br i1 %i.o, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread: ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132.thread, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126, %bb.b, %bb.b
  %i.p = and i32 %4, 16
  %.not156 = icmp eq i32 %i.p, 0
  br i1 %.not156, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread, label %bb.d, !prof !24

bb.d:                                             ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
  %i.q = load i8, ptr %1, align 1, !tbaa !81
  %i.r = icmp eq i8 %i.q, 45
  %spec.select.idx = zext i1 %i.r to i64          ; 3 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %.not.i112 = icmp ugt ptr %i.s, %2
  %.not25.i113 = icmp ugt ptr %2, %spec.select    ; 2 uses
  %or.cond.i114 = and i1 %.not25.i113, %.not.i112
  br i1 %or.cond.i114, label %.preheader164.preheader, label %.loopexit

.preheader164.preheader:                          ; preds = %bb.d
  %6 = add i64 %5, %spec.select.idx
  %7 = xor i64 %6, -1
  %8 = getelementptr i8, ptr @.str.75, i64 %7
  %scevgep = getelementptr i8, ptr %8, i64 %i.a
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %bb.e
  %.019.i117167 = phi ptr [ %i.z, %bb.e ], [ @.str.75, %.preheader164.preheader ] ; 3 uses
  %.020.i116166 = phi ptr [ %i.y, %bb.e ], [ %spec.select, %.preheader164.preheader ] ; 2 uses
  %i.t = load i8, ptr %.020.i116166, align 1, !tbaa !81 ; 2 uses
  %i.u = load i8, ptr %.019.i117167, align 1, !tbaa !81 ; 2 uses
  %.not26.i118 = icmp eq i8 %i.t, %i.u
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.t to i32
  %i.x = add nsw i32 %i.v, -32
  %.not27.i119 = icmp eq i32 %i.x, %i.w
  %or.cond30.i120 = select i1 %.not26.i118, i1 true, i1 %.not27.i119
  br i1 %or.cond30.i120, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader164
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i116166, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i117167, i64 1
  %exitcond.not = icmp eq ptr %.019.i117167, %scevgep
  br i1 %exitcond.not, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %.preheader164, !llvm.loop !371

.loopexit:                                        ; preds = %.preheader164, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %.not.i102 = icmp ugt ptr %i.aa, %2
  %or.cond.i104 = and i1 %.not25.i113, %.not.i102
  br i1 %or.cond.i104, label %.preheader162.preheader, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread

.preheader162.preheader:                          ; preds = %.loopexit
  %9 = add i64 %5, %spec.select.idx
  %10 = xor i64 %9, -1
  %11 = getelementptr i8, ptr @.str.76, i64 %10
  %scevgep179 = getelementptr i8, ptr %11, i64 %i.a
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader, %bb.f
  %.019.i107169 = phi ptr [ %i.ah, %bb.f ], [ @.str.76, %.preheader162.preheader ] ; 3 uses
  %.020.i106168 = phi ptr [ %i.ag, %bb.f ], [ %spec.select, %.preheader162.preheader ] ; 2 uses
  %i.ab = load i8, ptr %.020.i106168, align 1, !tbaa !81 ; 2 uses
  %i.ac = load i8, ptr %.019.i107169, align 1, !tbaa !81 ; 2 uses
  %.not26.i108 = icmp eq i8 %i.ab, %i.ac
  %i.ad = zext i8 %i.ac to i32
  %i.ae = zext i8 %i.ab to i32
  %i.af = add nsw i32 %i.ad, -32
  %.not27.i109 = icmp eq i32 %i.af, %i.ae
  %or.cond30.i110 = select i1 %.not26.i108, i1 true, i1 %.not27.i109
  br i1 %or.cond30.i110, label %bb.f, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread

bb.f:                                             ; preds = %.preheader162
  %i.ag = getelementptr inbounds nuw i8, ptr %.020.i106168, i64 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.019.i107169, i64 1
  %exitcond180.not = icmp eq ptr %.019.i107169, %scevgep179
  br i1 %exitcond180.not, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %.preheader162, !llvm.loop !371

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread: ; preds = %.preheader162, %.loopexit, %bb.b, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread
  %.174 = phi ptr [ %1, %bb.b ], [ %1, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126.thread ], [ %spec.select, %.loopexit ], [ %spec.select, %.preheader162 ] ; 10 uses
  %.174179 = ptrtoaddr ptr %.174 to i64
  switch i32 %3, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121 [
    i32 4, label %bb.g
    i32 10, label %bb.j
  ]

bb.g:                                             ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread
  %i.ai = and i32 %4, 16
  %.not157 = icmp eq i32 %i.ai, 0
  br i1 %.not157, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.not82 = icmp ugt ptr %i.aj, %.174
  br i1 %.not82, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds i8, ptr %.174, i64 -3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.174, i64 5
  %.not.i = icmp ugt ptr %i.al, %2
  %.not25.i = icmp ugt ptr %2, %i.ak
  %or.cond.i = and i1 %.not.i, %.not25.i
  br i1 %or.cond.i, label %.preheader.preheader, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

.preheader.preheader:                             ; preds = %bb.i
  %i.am = add i64 %i.a, 2
  %i.an = sub i64 %i.am, %.174179
  %scevgep180 = getelementptr i8, ptr @.str.75, i64 %i.an
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.019.i171 = phi ptr [ %i.au, %.preheader ], [ @.str.75, %.preheader.preheader ] ; 3 uses
  %.020.i170 = phi ptr [ %i.at, %.preheader ], [ %i.ak, %.preheader.preheader ] ; 2 uses
  %i.ao = load i8, ptr %.020.i170, align 1, !tbaa !81 ; 2 uses
  %i.ap = load i8, ptr %.019.i171, align 1, !tbaa !81 ; 2 uses
  %.not26.i = icmp eq i8 %i.ao, %i.ap
  %i.aq = zext i8 %i.ap to i32
  %i.ar = zext i8 %i.ao to i32
  %i.as = add nsw i32 %i.aq, -32
  %.not27.i = icmp eq i32 %i.as, %i.ar
  %or.cond30.i = select i1 %.not26.i, i1 true, i1 %.not27.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i170, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.019.i171, i64 1
  %exitcond181.not = icmp ne ptr %.019.i171, %scevgep180
  %or.cond.not = and i1 %exitcond181.not, %or.cond30.i
  br i1 %or.cond.not, label %.preheader, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, !llvm.loop !371

bb.j:                                             ; preds = %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread
  %i.av = ptrtoint ptr %2 to i64
  %i.aw = ptrtoint ptr %.174 to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 3 uses
  %i.ay = load i8, ptr %.174, align 1, !tbaa !81  ; 6 uses
  %i.az = zext i8 %i.ay to i32                    ; 8 uses
  %i.ba = icmp eq i8 %i.ay, 92
  br i1 %i.ba, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.ax, 1
  br i1 %i.bb, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ult i64 %i.ax, 6
  br i1 %i.bc, label %bb.m, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.174, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !81
  %.not85 = icmp eq i8 %i.be, 117
  br i1 %.not85, label %bb.n, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.174, i64 2 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %2
  br i1 %i.bg, label %.lr.ph, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.275172 = phi ptr [ %i.bl, %.lr.ph ], [ %i.bf, %bb.n ] ; 2 uses
  %i.bh = load i8, ptr %.275172, align 1, !tbaa !81
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL10char_tableE, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  %.not160 = icmp slt i8 %i.bk, 0                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.275172, i64 1 ; 2 uses
  %exitcond.not.a = icmp ne ptr %i.bl, %2
  %or.cond202.not = select i1 %.not160, i1 %exitcond.not.a, i1 false
  br i1 %or.cond202.not, label %.lr.ph, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, !llvm.loop !372

bb.o:                                             ; preds = %bb.j
  %.not83 = icmp sgt i8 %i.ay, -1
  br i1 %.not83, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.174, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81  ; 5 uses
  switch i64 %i.ax, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121 [
    i64 1, label %bb.q
    i64 2, label %bb.s
    i64 3, label %bb.w
  ]

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.az, 224
  %i.bp = icmp eq i32 %i.bo, 192
  %i.bq = and i32 %i.az, 30
  %.not84 = icmp ne i32 %i.bq, 0
  %or.cond.not159 = and i1 %i.bp, %.not84
  %i.br = and i32 %i.az, 240
  %i.bs = icmp eq i32 %i.br, 224
  %or.cond100 = or i1 %i.bs, %or.cond.not159
  br i1 %or.cond100, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = and i32 %i.az, 248
  %i.bu = icmp eq i32 %i.bt, 240
  %i.bv = and i32 %i.az, 7
  %i.bw = icmp samesign ult i32 %i.bv, 5
  %or.cond87 = select i1 %i.bu, i1 %i.bw, i1 false
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.s:                                             ; preds = %bb.p
  %i.bx = and i32 %i.az, 240
  %i.by = icmp eq i32 %i.bx, 224
  %i.bz = icmp slt i8 %i.bn, -64                  ; 2 uses
  %or.cond88 = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond88, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = shl i8 %i.ay, 1
  %i.cb = and i8 %i.ca, 30
  %i.cc = lshr i8 %i.bn, 5
  %i.cd = and i8 %i.cc, 1
  %i.ce = or disjoint i8 %i.cd, %i.cb             ; 2 uses
  %i.cf = icmp ne i8 %i.ce, 0
  %i.cg = icmp ne i8 %i.ce, 27
  %i.ch = and i1 %i.cf, %i.cg
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.u:                                             ; preds = %bb.s
  %i.ci = and i32 %i.az, 248
  %i.cj = icmp eq i32 %i.ci, 240
  %or.cond89 = select i1 %i.cj, i1 %i.bz, i1 false
  br i1 %or.cond89, label %bb.v, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.v:                                             ; preds = %bb.u
  %i.ck = shl i8 %i.ay, 2
  %i.cl = and i8 %i.ck, 28
  %i.cm = lshr i8 %i.bn, 4
  %i.cn = and i8 %i.cm, 3
  %i.co = add nsw i8 %i.cl, -1
  %i.cp = add nsw i8 %i.co, %i.cn
  %i.cq = icmp ult i8 %i.cp, 16
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.w:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.174, i64 2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !81
  %.old = and i32 %i.az, 248
  %.old90 = icmp eq i32 %.old, 240
  %.old92 = icmp slt i8 %i.bn, -64
  %or.cond94 = select i1 %.old90, i1 %.old92, i1 false
  %i.ct = icmp slt i8 %i.cs, -64
  %or.cond96 = select i1 %or.cond94, i1 %i.ct, i1 false
  br i1 %or.cond96, label %bb.x, label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

bb.x:                                             ; preds = %bb.w
  %i.cu = shl i8 %i.ay, 2
  %i.cv = and i8 %i.cu, 28
  %i.cw = lshr i8 %i.bn, 4
  %i.cx = and i8 %i.cw, 3
  %i.cy = add nsw i8 %i.cv, -1
  %i.cz = add nsw i8 %i.cy, %i.cx
  %i.da = icmp ult i8 %i.cz, 16
  br label %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121

_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit121: ; preds = %bb.e, %bb.f, %.lr.ph, %.preheader, %bb.n, %bb.u, %bb.r, %bb.x, %bb.v, %bb.t, %bb.q, %bb.l, %bb.m, %bb.k, %bb.h, %bb.g, %bb.i, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread, %bb.p, %bb.w, %bb.o, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126, %bb.a
  %.3 = phi i1 [ %or.cond87, %bb.r ], [ true, %bb.a ], [ true, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit138 ], [ true, %bb.n ], [ true, %bb.f ], [ true, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit126 ], [ true, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit132 ], [ %or.cond30.i, %.preheader ], [ false, %bb.o ], [ true, %bb.q ], [ false, %bb.h ], [ false, %bb.w ], [ false, %bb.p ], [ %.not160, %.lr.ph ], [ false, %bb.i ], [ false, %_ZN13duckdb_yyjsonL16is_truncated_strEPhS0_PKcb.exit111.thread ], [ false, %bb.g ], [ true, %bb.k ], [ false, %bb.l ], [ %i.ch, %bb.t ], [ false, %bb.u ], [ false, %bb.m ], [ %i.da, %bb.x ], [ %i.cq, %bb.v ], [ true, %bb.e ]
  ret i1 %.3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN13duckdb_yyjsonL15read_number_rawEPPhS1_jPNS_10yyjson_valEPPKc(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !81
  br label %bb.c

end_hunk_12
