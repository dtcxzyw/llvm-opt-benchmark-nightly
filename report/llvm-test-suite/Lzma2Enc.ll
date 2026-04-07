begin_hunk_0_@Lzma2Enc_Encode:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull %i.z, i64 noundef 65552) #6, !inline_history !41 ; 2 uses
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !21
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %Lzma2Enc_EncodeMt1.exit, label %bb.e
end_hunk_0
begin_hunk_1_@Lzma2Enc_Encode:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !42
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 1, ptr %i.al, align 4, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 1, ptr %i.am, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !30
end_hunk_1
begin_hunk_2_@Lzma2Enc_Encode:bb.a
  %.03564.i = phi i64 [ %i.ba, %Progress.exit.i ], [ 0, %.lr.ph.i ]
  %i.az = load i64, ptr %i.c, align 8, !tbaa !38  ; 2 uses
  %i.ba = add i64 %i.az, %.03564.i                ; 2 uses
  %i.bb = load i64, ptr %i.ai, align 8, !tbaa !42
  %i.bc = load ptr, ptr %3, align 8, !tbaa !47
  %i.bd = call i32 %i.bc(ptr noundef nonnull %3, i64 noundef %i.bb, i64 noundef %i.ba) #6, !inline_history !49
  %.not4.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not4.i.i, label %select.unfold.i, label %.thread.i

end_hunk_2
begin_hunk_3_@Lzma2Enc_Encode:bb.a
  %i.bi = load ptr, ptr %i.u, align 8, !tbaa !30
  call void @LzmaEnc_Finish(ptr noundef %i.bi) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !43
  %i.bj = load ptr, ptr %1, align 8, !tbaa !47
  %i.bk = call i64 %i.bj(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef 1) #6, !inline_history !41
  %.not48.i = icmp eq i64 %i.bk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %spec.select.i = select i1 %.not48.i, i32 0, i32 9
end_hunk_3
begin_hunk_4_@Lzma2Enc_Encode:bb.a

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr @MtCallbackImp_Code, ptr %4, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.bl, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr %3, ptr %i.bn, align 8, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store ptr %2, ptr %i.bo, align 8, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store ptr %1, ptr %i.bp, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %4, ptr %i.bt, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !58 ; 3 uses
  store i64 %i.bv, ptr %i.bm, align 8, !tbaa !59
  %i.bw = lshr i64 %i.bv, 10
  %i.bx = add i64 %i.bv, 16
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 %i.q, ptr %i.ca, align 8, !tbaa !61
  %i.cb = call i32 @MtCoder_Code(ptr noundef nonnull %i.bm) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %Lzma2Enc_EncodeMt1.exit
end_hunk_4
begin_hunk_5_@MtCallbackImp_Code:bb.a
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g ; 10 uses
end_hunk_5
begin_hunk_6_@MtCallbackImp_Code:bb.a

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !42
  %i.p = load i8, ptr %i.a, align 1, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.p, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 1, ptr %i.r, align 4, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !30
end_hunk_6
begin_hunk_7_@MtCallbackImp_Code:bb.a
  br i1 %.not60, label %.preheader, label %.thread72

.preheader:                                       ; preds = %bb.d
  %i.z = load i64, ptr %i.o, align 8, !tbaa !42
  %i.aa = icmp ult i64 %i.z, %5
  br i1 %i.aa, label %.lr.ph, label %.loopexit.thread

end_hunk_7
begin_hunk_8_@MtCallbackImp_Code:bb.a
  br i1 %i.aj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.o, align 8, !tbaa !42
  %i.al = call i32 @MtProgress_Set(ptr noundef nonnull %i.ab, i32 noundef %1, i64 noundef %i.ak, i64 noundef %i.ai) #6
  %.not62 = icmp eq i32 %i.al, 0
  br i1 %.not62, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.am = load i64, ptr %i.o, align 8, !tbaa !42
  %i.an = icmp ult i64 %i.am, %5
  br i1 %i.an, label %bb.e, label %.loopexit.thread

end_hunk_8
begin_hunk_9_@MtCallbackImp_Code:bb.a
  %i.as = add i64 %i.aq, 1
  store i64 %i.as, ptr %3, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !43
  br label %.thread72

.thread72:                                        ; preds = %.loopexit, %bb.d, %bb.j, %Lzma2EncInt_Init.exit.thread, %bb.i, %bb.k
end_hunk_9
begin_hunk_10_@Lzma2EncInt_EncodeSubblock:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 2097152, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46
  %.not.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not.not, i64 5, i64 6        ; 3 uses
  store i64 0, ptr %2, align 8, !tbaa !38
end_hunk_10
begin_hunk_11_@Lzma2EncInt_EncodeSubblock:bb.a
  tail call void @LzmaEnc_SaveState(ptr noundef %i.i) #6
  %i.j = load ptr, ptr %0, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.n = call i32 @LzmaEnc_CodeOneMemBlock(ptr noundef %i.j, i32 noundef %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i32 noundef 65536, ptr noundef nonnull %i.b) #6 ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !4    ; 5 uses
end_hunk_11
begin_hunk_12_@Lzma2EncInt_EncodeSubblock:bb.a
  br i1 %i.ab, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.ac = load i64, ptr %i.v, align 8, !tbaa !42
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i8 1, i8 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.087114.us ; 3 uses
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !43
  %i.ag = add nsw i32 %i.x, -1                    ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !43
  %i.ak = trunc i32 %i.ag to i8
  %i.al = add i64 %.087114.us, 3                  ; 2 uses
  %i.am = getelementptr i8, ptr %i.af, i64 2
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.ao = load ptr, ptr %0, align 8, !tbaa !30
  %i.ap = call ptr @LzmaEnc_GetCurBuf(ptr noundef %i.ao) #6
end_hunk_12
begin_hunk_13_@Lzma2EncInt_EncodeSubblock:bb.a
  %i.av = sub i32 %i.aq, %i.x                     ; 3 uses
  store i32 %i.av, ptr %i.b, align 4, !tbaa !4
  %i.aw = add i64 %i.al, %i.au                    ; 2 uses
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !42
  %i.ay = add i64 %i.ax, %i.au
  store i64 %i.ay, ptr %i.v, align 8, !tbaa !42
  store i64 %i.aw, ptr %2, align 8, !tbaa !38
  %.not107.us = icmp eq i32 %i.av, 0
  br i1 %.not107.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !62

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.az = getelementptr i8, ptr %1, i64 1
end_hunk_13
begin_hunk_14_@Lzma2EncInt_EncodeSubblock:bb.a
  br i1 %i.bg, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !42
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = select i1 %i.bi, i8 1, i8 2
  store i8 %i.bj, ptr %1, align 1, !tbaa !43
  %i.bk = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = trunc nuw i32 %i.bl to i8
  store i8 %i.bm, ptr %i.az, align 1, !tbaa !43
  %i.bn = trunc i32 %i.bk to i8
  store i8 %i.bn, ptr %i.ba, align 1, !tbaa !43
  %i.bo = load ptr, ptr %0, align 8, !tbaa !30
  %i.bp = call ptr @LzmaEnc_GetCurBuf(ptr noundef %i.bo) #6
  %i.bq = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
end_hunk_14
begin_hunk_15_@Lzma2EncInt_EncodeSubblock:bb.a
  %i.bv = sub i32 %i.bq, %i.bd
  store i32 %i.bv, ptr %i.b, align 4, !tbaa !4
  %i.bw = add nuw nsw i64 %i.bu, 3                ; 3 uses
  %i.bx = load i64, ptr %i.v, align 8, !tbaa !42
  %i.by = add i64 %i.bx, %i.bu
  store i64 %i.by, ptr %i.v, align 8, !tbaa !42
  %i.bz = load i64, ptr %2, align 8, !tbaa !38
  %i.ca = add i64 %i.bz, %i.bw
  store i64 %i.ca, ptr %2, align 8, !tbaa !38
  %i.cb = load ptr, ptr %3, align 8, !tbaa !47
  %i.cc = call i64 %i.cb(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %i.bw) #6
  %.not109 = icmp eq i64 %i.cc, %i.bw
  br i1 %.not109, label %bb.h, label %.thread
end_hunk_15
begin_hunk_16_@Lzma2EncInt_EncodeSubblock:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %.not107 = icmp eq i32 %i.cd, 0
  br i1 %.not107, label %._crit_edge, label %bb.f, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.ce = load ptr, ptr %0, align 8, !tbaa !30
end_hunk_16
begin_hunk_17_@Lzma2EncInt_EncodeSubblock:bb.a
  %i.cg = trunc nuw nsw i64 %i.q to i32
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !42
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = load i32, ptr %i.k, align 4, !tbaa !45
  %.not102 = icmp eq i32 %i.cl, 0
  br i1 %.not102, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cm = load i32, ptr %i.d, align 8, !tbaa !46
  %.not103 = icmp eq i32 %i.cm, 0
  %i.cn = select i1 %.not103, i32 160, i32 192
  br label %bb.l
end_hunk_17
begin_hunk_18_@Lzma2EncInt_EncodeSubblock:bb.a
  %i.cq = and i32 %i.cp, 31
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = trunc nuw i32 %i.cr to i8
  store i8 %i.cs, ptr %1, align 1, !tbaa !43
  %i.ct = lshr i32 %i.cf, 8
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !43
  %i.cw = trunc i32 %i.cf to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !43
  %i.cy = lshr i32 %i.ch, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !43
  %i.db = trunc i32 %i.ch to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !43
  %i.dd = load i32, ptr %i.d, align 8, !tbaa !46
  %.not104 = icmp eq i32 %i.dd, 0
  br i1 %.not104, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load i8, ptr %i.de, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.085 = phi i64 [ 6, %bb.m ], [ 5, %bb.l ]
  store i32 0, ptr %i.d, align 8, !tbaa !46
  store i32 0, ptr %i.k, align 4, !tbaa !45
  %i.dh = add nuw nsw i64 %.085, %i.q             ; 3 uses
  %i.di = load i64, ptr %i.ci, align 8, !tbaa !42
  %i.dj = add i64 %i.di, %i.s
  store i64 %i.dj, ptr %i.ci, align 8, !tbaa !42
  %.not105 = icmp eq ptr %3, null
  br i1 %.not105, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %3, align 8, !tbaa !47
  %i.dl = call i64 %i.dk(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %i.dh) #6
  %.not106 = icmp eq i64 %i.dl, %i.dh
  br i1 %.not106, label %bb.p, label %.thread
end_hunk_18
begin_hunk_19_@llvm.experimental.cttz.elts.i64.v8i1
!38 = !{!11, !11, i64 0}
!39 = !{!22, !5, i64 64}
!40 = distinct !{!40, !33}
!41 = distinct !{null}
!42 = !{!31, !27, i64 8}
!43 = !{!6, !6, i64 0}
!44 = !{!31, !6, i64 16}
!45 = !{!31, !5, i64 20}
!46 = !{!31, !5, i64 24}
!47 = !{!48, !20, i64 0}
!48 = !{!"", !20, i64 0}
!49 = distinct !{null, null}
!50 = !{!51, !20, i64 0}
!51 = !{!"", !48, i64 0, !20, i64 8}
!52 = !{!51, !20, i64 8}
!53 = !{!22, !20, i64 1160}
!54 = !{!22, !20, i64 1144}
!55 = !{!22, !20, i64 1152}
!56 = !{!22, !20, i64 1168}
!57 = !{!22, !20, i64 1176}
!58 = !{!22, !11, i64 56}
!59 = !{!22, !11, i64 1120}
!60 = !{!22, !11, i64 1128}
!61 = !{!22, !5, i64 1136}
!62 = distinct !{!62, !33}
end_hunk_19
