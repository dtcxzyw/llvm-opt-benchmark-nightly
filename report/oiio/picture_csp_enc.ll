inline.NumInlined: 94
inline.NumDeleted: 21
begin_hunk_0_@WebPPictureImportRGBA:bb.a
  %exitcond93.not.i = icmp eq i32 %i.z, %i.h
  br i1 %exitcond93.not.i, label %Import.exit, label %bb.g, !llvm.loop !47

Import.exit:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.aa = phi i32 [ 0, %bb.a ], [ %i.n, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %i.aa
}

; Function Attrs: nounwind uwtable
define i32 @WebPPictureImportRGBX(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %Import.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15   ; 2 uses
  %i.i = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.j = mul nsw i32 %i.f, 3
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %Import.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %0, align 8, !tbaa !7
  %.not73.i = icmp eq i32 %i.l, 0
  br i1 %.not73.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc i32 @ImportYUVAFromRGBA(ptr noundef %1, ptr noundef %i.c, ptr noundef %i.d, ptr noundef null, i32 noundef 4, i32 noundef %2, float noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %0)
  br label %Import.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @WebPPictureAlloc(ptr noundef nonnull %0) #9
  %.not74.i = icmp eq i32 %i.n, 0
  br i1 %.not74.i, label %Import.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInit() #9
  tail call void @WebPInitAlphaProcessing() #9
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %.lr.ph90.i, label %Import.exit

.lr.ph90.i:                                       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.r = sext i32 %2 to i64                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph90.i
  %.089.i = phi ptr [ %i.q, %.lr.ph90.i ], [ %i.z, %bb.g ] ; 2 uses
  %.288.i = phi i32 [ 0, %.lr.ph90.i ], [ %i.aa, %bb.g ]
  %.06987.i = phi ptr [ %1, %.lr.ph90.i ], [ %i.u, %bb.g ] ; 2 uses
  %.07086.i = phi ptr [ %i.d, %.lr.ph90.i ], [ %i.w, %bb.g ] ; 2 uses
  %.07185.i = phi ptr [ %i.c, %.lr.ph90.i ], [ %i.v, %bb.g ] ; 2 uses
  %i.t = load ptr, ptr @WebPPackRGB, align 8, !tbaa !17
  tail call void %i.t(ptr noundef %.06987.i, ptr noundef %.07185.i, ptr noundef %.07086.i, i32 noundef %i.f, i32 noundef 4, ptr noundef %.089.i) #9, !inline_history !42
  %i.u = getelementptr inbounds i8, ptr %.06987.i, i64 %i.r
  %i.v = getelementptr inbounds i8, ptr %.07185.i, i64 %i.r
  %i.w = getelementptr inbounds i8, ptr %.07086.i, i64 %i.r
  %i.x = load i32, ptr %i.s, align 8, !tbaa !16
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.089.i, i64 %i.y
  %i.aa = add nuw nsw i32 %.288.i, 1              ; 2 uses
  %exitcond94.not.i = icmp eq i32 %i.aa, %i.h
  br i1 %exitcond94.not.i, label %Import.exit, label %bb.g, !llvm.loop !43

Import.exit:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ab = phi i32 [ 0, %bb.a ], [ %i.m, %bb.d ], [ 0, %bb.e ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %i.ab
}

declare void @WebPInitAlphaProcessing() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ImportYUVAFromRGBA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef range(i32 3, 5) %4, i32 noundef %5, float noundef %6, i32 noundef range(i32 0, 2) %7, ptr noundef nonnull %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.VP8Random, align 4          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 6 uses
  %i.e = icmp eq ptr %3, null
  %.0180.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 228
  %.0180.sroa.gep270 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.0180.sroa.gep272 = getelementptr inbounds nuw i8, ptr %9, i64 4
  br i1 %i.e, label %CheckNonOpaque.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @WebPInitAlphaProcessing() #9
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %.lr.ph.i, label %CheckNonOpaque.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = sext i32 %5 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.in.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %.120.i = phi ptr [ %3, %.lr.ph.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.h = load ptr, ptr @WebPHasAlpha32b, align 8, !tbaa !17
  %i.i = tail call i32 %i.h(ptr noundef %.120.i, i32 noundef %i.b) #9, !inline_history !18
  %.not.i = icmp eq i32 %i.i, 0                   ; 3 uses
  br i1 %.not.i, label %bb.d, label %CheckNonOpaque.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %.in.i, -1
  %i.k = getelementptr inbounds i8, ptr %.120.i, i64 %i.g
  %i.l = icmp sgt i32 %.in.i, 1
  br i1 %i.l, label %bb.c, label %CheckNonOpaque.exit, !llvm.loop !19

CheckNonOpaque.exit:                              ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.not342 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ %.not.i, %bb.c ], [ %.not.i, %bb.d ] ; 5 uses
  %i.m = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 4, %bb.c ]
  %i.n = icmp ult ptr %0, %2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.m, ptr %i.o, align 4, !tbaa !24
  store i32 0, ptr %8, align 8, !tbaa !7
  %i.p = tail call i32 @WebPPictureAllocYUVA(ptr noundef nonnull %8) #9
  %.not199 = icmp eq i32 %i.p, 0
  br i1 %.not199, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %CheckNonOpaque.exit
  %i.q = icmp slt i32 %i.b, 4
  %i.r = icmp slt i32 %i.d, 4
  %or.cond = or i1 %i.q, %i.r
  %.not200305 = icmp eq i32 %7, 0
  %.not200 = or i1 %.not200305, %or.cond
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  br i1 %.not200, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !17
  tail call void @SharpYuvInit(ptr noundef %i.t) #9
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29 ; 2 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !15
  %i.af = tail call ptr @SharpYuvGetConversionMatrix(i32 noundef 0) #9
  %i.ag = tail call i32 @SharpYuvConvert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef range(i32 3, 5) %4, i32 noundef %5, i32 noundef 8, ptr noundef %i.v, i32 noundef %i.x, ptr noundef %i.z, i32 noundef %i.ab, ptr noundef %i.ac, i32 noundef %i.ab, i32 noundef 8, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef %i.af) #9
  %.not.i211 = icmp eq i32 %i.ag, 0
  br i1 %.not.i211, label %PreprocessARGB.exit, label %PreprocessARGB.exit.thread

PreprocessARGB.exit:                              ; preds = %bb.f
  %i.ah = tail call i32 @WebPEncodingSetError(ptr noundef nonnull %8, i32 noundef 1) #9
  %.not209 = icmp eq i32 %i.ah, 0                 ; 2 uses
  %brmerge = or i1 %.not342, %.not209
  %not..not209 = xor i1 %.not209, true
  %.mux = zext i1 %not..not209 to i32
  br i1 %brmerge, label %bb.ab, label %bb.g

PreprocessARGB.exit.thread:                       ; preds = %bb.f
  br i1 %.not342, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %PreprocessARGB.exit, %PreprocessARGB.exit.thread
  %i.ai = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !22
  %i.an = tail call i32 %i.ai(ptr noundef %3, i32 noundef %5, i32 noundef %i.b, i32 noundef %i.d, ptr noundef %i.ak, i32 noundef %i.am) #9 ; 0 uses
  br label %bb.ab

bb.h:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %i.b, 1
  %i.ap = ashr i32 %i.ao, 1                       ; 7 uses
  %i.aq = icmp ne i32 %4, 3
  %i.ar = shl nsw i32 %i.ap, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = tail call ptr @WebPSafeMalloc(i64 noundef %i.as, i64 noundef 2) #9 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26 ; 2 uses
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !27  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.bb = fcmp ogt float %6, 0.000000e+00
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @VP8InitRandom(ptr noundef nonnull %9, float noundef %6) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0187 = phi i1 [ true, %bb.i ], [ %i.aq, %bb.h ] ; 2 uses
  %.0180.sroa.phi = phi ptr [ %.0180.sroa.gep, %bb.i ], [ inttoptr (i64 228 to ptr), %bb.h ] ; 7 uses
  %.0180.sroa.phi269 = phi ptr [ %.0180.sroa.gep270, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 14 uses
  %.0180.sroa.phi271 = phi ptr [ %.0180.sroa.gep272, %bb.i ], [ inttoptr (i64 4 to ptr), %bb.h ] ; 21 uses
  %.0180 = phi ptr [ %9, %bb.i ], [ null, %bb.h ] ; 24 uses
  call void @WebPInitConvertARGBToYUV() #9
  %i.bc = call i32 @pthread_mutex_lock(ptr noundef nonnull @InitGammaTables.InitGammaTables_body_lock) #9
  %.not.i213 = icmp eq i32 %i.bc, 0
  br i1 %.not.i213, label %bb.k, label %InitGammaTables.exit

bb.k:                                             ; preds = %bb.j
  %i.bd = load volatile ptr, ptr @InitGammaTables.InitGammaTables_body_last_cpuinfo_used, align 8, !tbaa !17
  %i.be = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !17 ; 2 uses
  %.not1.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not1.i, label %InitGammaTables_body.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load volatile i32, ptr @kGammaTablesOk, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %.preheader8.i.i, label %InitGammaTables_body.exit.i

.preheader8.i.i:                                  ; preds = %bb.l, %.preheader8.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.preheader8.i.i ], [ 0, %bb.l ] ; 4 uses
  %i.bg = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bh = uitofp nneg i32 %i.bg to double
  %i.bi = fmul nnan double %i.bh, f0x3F70101010101010
  %i.bj = call double @pow(double noundef %i.bi, double noundef 8.000000e-01) #9, !tbaa !3
  %i.bk = call double @llvm.fmuladd.f64(double %i.bj, double 4.095000e+03, double 5.000000e-01)
  %i.bl = fptoui double %i.bk to i16
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @kGammaToLinearTab, i64 %indvars.iv.i.i
  store i16 %i.bl, ptr %i.bm, align 4, !tbaa !48
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = fmul nnan double %i.bo, f0x3F70101010101010
  %i.bq = call double @pow(double noundef %i.bp, double noundef 8.000000e-01) #9, !tbaa !3
  %i.br = call double @llvm.fmuladd.f64(double %i.bq, double 4.095000e+03, double 5.000000e-01)
  %i.bs = fptoui double %i.br to i16
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @kGammaToLinearTab, i64 %indvars.iv.next.i.i
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !48
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %.preheader.preheader.i.i, label %.preheader8.i.i, !llvm.loop !50

.preheader.preheader.i.i:                         ; preds = %.preheader8.i.i
  store <4 x i32> <i32 0, i32 3, i32 8, i32 13>, ptr @kLinearToGammaTab, align 16, !tbaa !3
  store <4 x i32> <i32 19, i32 25, i32 31, i32 38>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 16), align 16, !tbaa !3
  store <4 x i32> <i32 45, i32 52, i32 60, i32 67>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 32), align 16, !tbaa !3
  store <4 x i32> <i32 75, i32 83, i32 91, i32 99>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 48), align 16, !tbaa !3
  store <4 x i32> <i32 107, i32 116, i32 124, i32 133>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 64), align 16, !tbaa !3
  store <4 x i32> <i32 142, i32 151, i32 160, i32 169>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 80), align 16, !tbaa !3
  store <4 x i32> <i32 178, i32 187, i32 197, i32 206>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 96), align 16, !tbaa !3
  store <4 x i32> <i32 216, i32 226, i32 235, i32 245>, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 112), align 16, !tbaa !3
  store i32 255, ptr getelementptr inbounds nuw (i8, ptr @kLinearToGammaTab, i64 128), align 16, !tbaa !3
  store volatile i32 1, ptr @kGammaTablesOk, align 4, !tbaa !3
  br label %InitGammaTables_body.exit.i

InitGammaTables_body.exit.i:                      ; preds = %.preheader.preheader.i.i, %bb.l, %bb.k
  store volatile ptr %i.be, ptr @InitGammaTables.InitGammaTables_body_last_cpuinfo_used, align 8, !tbaa !17
  %i.bu = call i32 @pthread_mutex_unlock(ptr noundef nonnull @InitGammaTables.InitGammaTables_body_lock) #9 ; 0 uses
  br label %InitGammaTables.exit

InitGammaTables.exit:                             ; preds = %bb.j, %InitGammaTables_body.exit.i
  %.not208 = icmp eq ptr %i.at, null
  br i1 %.not208, label %.thread303, label %.preheader

.preheader:                                       ; preds = %InitGammaTables.exit
  %i.bv = ashr i32 %i.d, 1                        ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bx = sext i32 %5 to i64                      ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.bz = icmp sgt i32 %i.b, 0
  %i.ca = icmp eq ptr %.0180, null                ; 2 uses
  %i.cb = zext nneg i32 %4 to i64                 ; 4 uses
  %wide.trip.count29.i = zext nneg i32 %i.b to i64 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.cd = icmp sgt i32 %i.ap, 0
  %wide.trip.count.i = zext nneg i32 %i.ap to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.cf = shl nsw i32 %5, 1
  %i.cg = sext i32 %i.cf to i64                   ; 4 uses
  %spec.select210.idx = select i1 %.not342, i64 0, i64 %i.cg
  %WebPConvertRGB24ToY.WebPConvertBGR24ToY = select i1 %i.n, ptr @WebPConvertRGB24ToY, ptr @WebPConvertBGR24ToY ; 2 uses
  br label %bb.m

.thread303:                                       ; preds = %InitGammaTables.exit
  %i.ch = call i32 @WebPEncodingSetError(ptr noundef nonnull %8, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %bb.ab

bb.m:                                             ; preds = %.lr.ph, %ConvertRowsToUV.exit
  %.0181317 = phi ptr [ %i.ba, %.lr.ph ], [ %.1301, %ConvertRowsToUV.exit ] ; 3 uses
  %.0182316 = phi ptr [ %i.ay, %.lr.ph ], [ %i.kv, %ConvertRowsToUV.exit ] ; 3 uses
  %.0183315 = phi ptr [ %i.ax, %.lr.ph ], [ %i.ku, %ConvertRowsToUV.exit ] ; 3 uses
  %.0184314 = phi ptr [ %i.av, %.lr.ph ], [ %i.hp, %ConvertRowsToUV.exit ] ; 7 uses
  %.0188313 = phi ptr [ %0, %.lr.ph ], [ %i.kw, %ConvertRowsToUV.exit ] ; 8 uses
  %.0190312 = phi ptr [ %1, %.lr.ph ], [ %i.ky, %ConvertRowsToUV.exit ] ; 7 uses
  %.0191311 = phi ptr [ %2, %.lr.ph ], [ %i.kx, %ConvertRowsToUV.exit ] ; 8 uses
  %.0192310 = phi ptr [ %3, %.lr.ph ], [ %spec.select210, %ConvertRowsToUV.exit ] ; 3 uses
  %.0195309 = phi i32 [ 0, %.lr.ph ], [ %i.kz, %ConvertRowsToUV.exit ]
  br i1 %.0187, label %bb.n, label %ConvertRowToY.exit231.sink.split

ConvertRowToY.exit231.sink.split:                 ; preds = %bb.m
  %.0188313..0191311 = select i1 %i.n, ptr %.0188313, ptr %.0191311 ; 2 uses
  %i.ci = load ptr, ptr %WebPConvertRGB24ToY.WebPConvertBGR24ToY, align 8, !tbaa !17
  call void %i.ci(ptr noundef %.0188313..0191311, ptr noundef %.0184314, i32 noundef %i.b) #9
  %i.cj = load ptr, ptr %WebPConvertRGB24ToY.WebPConvertBGR24ToY, align 8, !tbaa !17
  %i.ck = getelementptr inbounds i8, ptr %.0188313..0191311, i64 %i.bx
  %i.cl = load i32, ptr %i.by, align 8, !tbaa !28
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %.0184314, i64 %i.cm
  call void %i.cj(ptr noundef %i.ck, ptr noundef %i.cn, i32 noundef %i.b) #9
  br label %ConvertRowToY.exit231

bb.n:                                             ; preds = %bb.m
  br i1 %i.bz, label %.lr.ph.i214, label %ConvertRowToY.exit231

.lr.ph.i214:                                      ; preds = %bb.n
  br i1 %i.ca, label %RGBToY.exit.us.i, label %RGBToY.exit.i

RGBToY.exit.us.i:                                 ; preds = %.lr.ph.i214, %RGBToY.exit.us.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %RGBToY.exit.us.i ], [ 0, %.lr.ph.i214 ] ; 2 uses
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %RGBToY.exit.us.i ], [ 0, %.lr.ph.i214 ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0188313, i64 %indvars.iv22.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !36
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0190312, i64 %indvars.iv22.i
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !36
  %i.ct = zext i8 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0191311, i64 %indvars.iv22.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !36
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.cq, 16839
  %i.cy = mul nuw nsw i32 %i.ct, 33059
  %i.cz = mul nuw nsw i32 %i.cw, 6420
  %i.da = add nuw nsw i32 %i.cx, 1081344
  %i.db = add nuw nsw i32 %i.da, %i.cy
  %i.dc = add nuw nsw i32 %i.db, %i.cz
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.0184314, i64 %indvars.iv24.i
  store i8 %i.de, ptr %i.df, align 1, !tbaa !36
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, %i.cb
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %RGBToY.exit.us.i225.preheader, label %RGBToY.exit.us.i, !llvm.loop !51

RGBToY.exit.i:                                    ; preds = %.lr.ph.i214, %RGBToY.exit.i
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %RGBToY.exit.i ], [ 0, %.lr.ph.i214 ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %RGBToY.exit.i ], [ 0, %.lr.ph.i214 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0188313, i64 %indvars.iv.i
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !36
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %.0190312, i64 %indvars.iv.i
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %.0191311, i64 %indvars.iv.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !36
  %i.do = zext i8 %i.dn to i32
  %i.dp = load i32, ptr %.0180.sroa.phi, align 4, !tbaa !52
  %i.dq = load i32, ptr %.0180, align 4, !tbaa !54
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %.0180.sroa.phi269, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = load i32, ptr %.0180.sroa.phi271, align 4, !tbaa !55
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %.0180.sroa.phi269, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = sub i32 %i.dt, %i.dx
  %i.dz = and i32 %i.dy, 2147483647               ; 2 uses
  store i32 %i.dz, ptr %i.ds, align 4, !tbaa !3
  %i.ea = load i32, ptr %.0180, align 4, !tbaa !54
  %i.eb = add nsw i32 %i.ea, 1                    ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 55
  %storemerge.i.i.i.i = select i1 %i.ec, i32 0, i32 %i.eb
  store i32 %storemerge.i.i.i.i, ptr %.0180, align 4, !tbaa !54
  %i.ed = load i32, ptr %.0180.sroa.phi271, align 4, !tbaa !55
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 55
  %storemerge20.i.i.i.i = select i1 %i.ef, i32 0, i32 %i.ee
  store i32 %storemerge20.i.i.i.i, ptr %.0180.sroa.phi271, align 4, !tbaa !55
  %i.eg = shl nuw i32 %i.dz, 1
  %i.eh = ashr i32 %i.eg, 16
  %i.ei = mul nsw i32 %i.eh, %i.dp
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = mul nuw nsw i32 %i.di, 16839
  %i.el = mul nuw nsw i32 %i.dl, 33059
  %i.em = mul nuw nsw i32 %i.do, 6420
  %i.en = add nuw nsw i32 %i.ek, 1081344
  %i.eo = add nuw nsw i32 %i.en, %i.el
  %i.ep = add nuw nsw i32 %i.eo, %i.em
  %i.eq = add nuw nsw i32 %i.ep, %i.ej
  %i.er = lshr i32 %i.eq, 16
  %i.es = trunc i32 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %.0184314, i64 %indvars.iv17.i
  store i8 %i.es, ptr %i.et, align 1, !tbaa !36
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.cb
  %exitcond.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count29.i
  br i1 %exitcond.not.i, label %RGBToY.exit.i217.preheader, label %RGBToY.exit.i, !llvm.loop !51

end_hunk_0
