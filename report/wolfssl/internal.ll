Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@FreeHandshakeResources:bb.a
  %.013.lcssa.i = phi i64 [ %i.cg, %bb.ac ], [ %i.cp, %.lr.ph124 ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.cd, %bb.ac ], [ %i.co, %.lr.ph124 ] ; 3 uses
  %i.ck = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.ck, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.cl = and i64 %.013.lcssa.i, -8               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.cl, i1 false), !tbaa !80
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.cl
  %i.cm = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph124
  %i.cn = icmp eq i64 %i.cp, 0
  br i1 %i.cn, label %ForceZero.exit, label %.lr.ph124, !llvm.loop !0

.lr.ph124:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i123 = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.cg, %.lr.ph.i.preheader ]
  %.01221.i122 = phi ptr [ %i.co, %.lr.ph.i ], [ %i.cd, %.lr.ph.i.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01221.i122, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i122, align 1, !tbaa !52
  %i.cp = add nsw i64 %.01320.i123, -1            ; 3 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = and i64 %i.cq, 7
  %.not.i93 = icmp eq i64 %i.cr, 0
  br i1 %.not.i93, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.cm, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i
  %.pr = load ptr, ptr %i.cc, align 16, !tbaa !165 ; 2 uses
  %.not69 = icmp eq ptr %.pr, null
  br i1 %.not69, label %ForceZero.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %ForceZero.exit
  tail call void @wolfSSL_Free(ptr noundef nonnull %.pr) #27
  br label %ForceZero.exit.thread

ForceZero.exit.thread:                            ; preds = %FreeKey.exit92, %bb.ad, %ForceZero.exit
  store ptr null, ptr %i.cc, align 16, !tbaa !165
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !167 ; 2 uses
  %.not70 = icmp eq ptr %i.ct, null
  br i1 %.not70, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %ForceZero.exit.thread
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.ct) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %ForceZero.exit.thread
  store ptr null, ptr %i.cs, align 16, !tbaa !167
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 507
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !168
  %.not71 = icmp eq i8 %i.cv, 0
  br i1 %.not71, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 16, !tbaa !169 ; 2 uses
  %.not72 = icmp eq ptr %i.cx, null
  br i1 %.not72, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.cx) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  store ptr null, ptr %i.cw, align 16, !tbaa !169
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 16, !tbaa !170 ; 2 uses
  %.not73 = icmp eq ptr %i.cz, null
  br i1 %.not73, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.cz) #27
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.cy, align 16, !tbaa !170
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %i.da = load i64, ptr %i.au, align 16
  %i.db = and i64 %i.da, 48
  %.not74 = icmp eq i64 %i.db, 16
  br i1 %.not74, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = tail call i32 @wolfSSL_UnloadCertsKeys(ptr noundef nonnull %0) #27 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !132
  tail call void @TLSX_Remove(ptr noundef nonnull %i.dd, i32 noundef 13, ptr noundef %i.df) #27
  %i.dg = load ptr, ptr %i.de, align 16, !tbaa !132
  tail call void @TLSX_Remove(ptr noundef nonnull %i.dd, i32 noundef 11, ptr noundef %i.dg) #27
  %i.dh = load ptr, ptr %i.de, align 16, !tbaa !132
  tail call void @TLSX_Remove(ptr noundef nonnull %i.dd, i32 noundef 10, ptr noundef %i.dh) #27
  %i.di = load ptr, ptr %i.de, align 16, !tbaa !132
  tail call void @TLSX_Remove(ptr noundef nonnull %i.dd, i32 noundef 43, ptr noundef %i.di) #27
  %i.dj = load ptr, ptr %i.de, align 16, !tbaa !132
  tail call void @TLSX_Remove(ptr noundef nonnull %i.dd, i32 noundef 51, ptr noundef %i.dj) #27
  ret void
}

declare void @TLSX_Remove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @FreeSSL(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = load ptr, ptr %0, align 16, !tbaa !92    ; 4 uses
  tail call void @wolfSSL_ResourceFree(ptr noundef nonnull %0)
  tail call void @wolfSSL_Free(ptr noundef nonnull %0) #27
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @wolfSSL_RefWithMutexDec(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #27
  %i.e = load i32, ptr %i.a, align 4, !tbaa !56
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %FreeSSL_Ctx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @SSL_CtxResourceFree(ptr noundef nonnull %i.c)
  call void @wolfSSL_RefWithMutexFree(ptr noundef nonnull %i.d) #27
  call void @wolfSSL_Free(ptr noundef nonnull %i.c) #27
  br label %FreeSSL_Ctx.exit

FreeSSL_Ctx.exit:                                 ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.d

bb.d:                                             ; preds = %FreeSSL_Ctx.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @WriteSEQ(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 131072
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %GetSEQIncrement.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !184  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !185  ; 3 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !185
  %i.i = icmp eq i32 %i.g, -1
  br i1 %i.i, label %bb.d, label %GetSEQIncrement.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %i.e, 1
  store i32 %i.j, ptr %i.d, align 4, !tbaa !184
  br label %GetSEQIncrement.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !186  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187  ; 3 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !187
  %i.p = icmp eq i32 %i.n, -1
  br i1 %i.p, label %bb.f, label %GetSEQIncrement.exit

bb.f:                                             ; preds = %bb.e
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.k, align 4, !tbaa !186
  br label %GetSEQIncrement.exit

GetSEQIncrement.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.6.0 = phi i32 [ 0, %bb.a ], [ -1, %bb.f ], [ %i.n, %bb.e ], [ -1, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.e, %bb.d ], [ %i.e, %bb.c ] ; 4 uses
  %3 = lshr i32 %.sroa.0.0, 24
  %4 = trunc nuw i32 %3 to i8
  store i8 %4, ptr %2, align 1, !tbaa !52
  %5 = lshr i32 %.sroa.0.0, 16
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !52
  %8 = lshr i32 %.sroa.0.0, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %9, ptr %10, align 1, !tbaa !52
  %11 = trunc i32 %.sroa.0.0 to i8
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %13 = lshr i32 %.sroa.6.0, 24
  %14 = trunc nuw i32 %13 to i8
  store i8 %14, ptr %i.r, align 1, !tbaa !52
  %15 = lshr i32 %.sroa.6.0, 16
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %16, ptr %17, align 1, !tbaa !52
  %18 = lshr i32 %.sroa.6.0, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %19, ptr %20, align 1, !tbaa !52
  %21 = trunc i32 %.sroa.6.0 to i8
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %21, ptr %22, align 1, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LowResTimer() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @wc_Time(ptr noundef null) #27
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

declare i64 @wc_Time(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @HashRaw(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !131 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.e = load i8, ptr %i.d, align 2, !tbaa !49
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.c, label %IsAtLeastTLSv1_2.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.h = load i8, ptr %i.g, align 1, !tbaa !50
  %i.i = icmp ugt i8 %i.h, 2
  br i1 %i.i, label %IsAtLeastTLSv1_2.exit, label %IsAtLeastTLSv1_2.exit.thread

IsAtLeastTLSv1_2.exit:                            ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.k = tail call i32 @wc_Sha256Update(ptr noundef nonnull %i.j, ptr noundef %1, i32 noundef %2) #27 ; 2 uses
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.d, label %bb.f

bb.d:                                             ; preds = %IsAtLeastTLSv1_2.exit
  %i.l = load ptr, ptr %i.a, align 16, !tbaa !131
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 416
  %i.n = tail call i32 @wc_Sha384Update(ptr noundef nonnull %i.m, ptr noundef %1, i32 noundef %2) #27 ; 2 uses
  %.not23 = icmp eq i32 %i.n, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 16, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 640
  %i.q = tail call i32 @wc_Sha512Update(ptr noundef nonnull %i.p, ptr noundef %1, i32 noundef %2) #27 ; 2 uses
  %.not24 = icmp eq i32 %i.q, 0
  br i1 %.not24, label %IsAtLeastTLSv1_2.exit.thread, label %bb.f

IsAtLeastTLSv1_2.exit.thread:                     ; preds = %bb.c, %bb.b, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %IsAtLeastTLSv1_2.exit, %bb.a, %IsAtLeastTLSv1_2.exit.thread
  %.018 = phi i32 [ 0, %IsAtLeastTLSv1_2.exit.thread ], [ -173, %bb.a ], [ %i.k, %IsAtLeastTLSv1_2.exit ], [ %i.n, %bb.d ], [ %i.q, %bb.e ]
  ret i32 %.018
}

declare i32 @wc_Sha256Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_Sha384Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_Sha512Update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @HashOutput(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !131 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %HashRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %2, 5
  br i1 %i.e, label %HashRaw.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %2, -5                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.h = sext i32 %3 to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.k = load i8, ptr %i.j, align 2, !tbaa !49
  %i.l = icmp eq i8 %i.k, 3
  br i1 %i.l, label %bb.d, label %IsAtLeastTLSv1_2.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.n = load i8, ptr %i.m, align 1, !tbaa !50
  %i.o = icmp ugt i8 %i.n, 2
  br i1 %i.o, label %IsAtLeastTLSv1_2.exit.i, label %IsAtLeastTLSv1_2.exit.thread.i

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.q = tail call i32 @wc_Sha256Update(ptr noundef nonnull %i.p, ptr noundef nonnull %i.i, i32 noundef %i.f) #27 ; 2 uses
  %.not22.i = icmp eq i32 %i.q, 0
  br i1 %.not22.i, label %bb.e, label %HashRaw.exit

bb.e:                                             ; preds = %IsAtLeastTLSv1_2.exit.i
  %i.r = load ptr, ptr %i.a, align 16, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 416
  %i.t = tail call i32 @wc_Sha384Update(ptr noundef nonnull %i.s, ptr noundef nonnull %i.i, i32 noundef %i.f) #27 ; 2 uses
  %.not23.i = icmp eq i32 %i.t, 0
  br i1 %.not23.i, label %bb.f, label %HashRaw.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.a, align 16, !tbaa !131
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 640
  %i.w = tail call i32 @wc_Sha512Update(ptr noundef nonnull %i.v, ptr noundef nonnull %i.i, i32 noundef %i.f) #27 ; 2 uses
  %.not24.i = icmp eq i32 %i.w, 0
  br i1 %.not24.i, label %IsAtLeastTLSv1_2.exit.thread.i, label %HashRaw.exit

IsAtLeastTLSv1_2.exit.thread.i:                   ; preds = %bb.f, %bb.d, %bb.c
  br label %HashRaw.exit

HashRaw.exit:                                     ; preds = %IsAtLeastTLSv1_2.exit.thread.i, %bb.f, %bb.e, %IsAtLeastTLSv1_2.exit.i, %bb.b, %bb.a
  %.0 = phi i32 [ -328, %bb.b ], [ -173, %bb.a ], [ 0, %IsAtLeastTLSv1_2.exit.thread.i ], [ %i.w, %bb.f ], [ %i.q, %IsAtLeastTLSv1_2.exit.i ], [ %i.t, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @HashInput(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !131 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %HashRaw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.e = add nsw i32 %2, 4                        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.g = load i8, ptr %i.f, align 2, !tbaa !49
  %i.h = icmp eq i8 %i.g, 3
  br i1 %i.h, label %bb.c, label %IsAtLeastTLSv1_2.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.j = load i8, ptr %i.i, align 1, !tbaa !50
  %i.k = icmp ugt i8 %i.j, 2
  br i1 %i.k, label %IsAtLeastTLSv1_2.exit.i, label %IsAtLeastTLSv1_2.exit.thread.i

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.m = tail call i32 @wc_Sha256Update(ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, i32 noundef %i.e) #27 ; 2 uses
  %.not22.i = icmp eq i32 %i.m, 0
  br i1 %.not22.i, label %bb.d, label %HashRaw.exit

bb.d:                                             ; preds = %IsAtLeastTLSv1_2.exit.i
  %i.n = load ptr, ptr %i.a, align 16, !tbaa !131
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.p = tail call i32 @wc_Sha384Update(ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, i32 noundef %i.e) #27 ; 2 uses
  %.not23.i = icmp eq i32 %i.p, 0
  br i1 %.not23.i, label %bb.e, label %HashRaw.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 16, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 640
  %i.s = tail call i32 @wc_Sha512Update(ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, i32 noundef %i.e) #27 ; 2 uses
  %.not24.i = icmp eq i32 %i.s, 0
  br i1 %.not24.i, label %IsAtLeastTLSv1_2.exit.thread.i, label %HashRaw.exit

IsAtLeastTLSv1_2.exit.thread.i:                   ; preds = %bb.e, %bb.c, %bb.b
  br label %HashRaw.exit

HashRaw.exit:                                     ; preds = %IsAtLeastTLSv1_2.exit.thread.i, %bb.e, %bb.d, %IsAtLeastTLSv1_2.exit.i, %bb.a
  %.0 = phi i32 [ -173, %bb.a ], [ 0, %IsAtLeastTLSv1_2.exit.thread.i ], [ %i.s, %bb.e ], [ %i.m, %IsAtLeastTLSv1_2.exit.i ], [ %i.p, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -387, 1) i32 @SendBuffered(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !343
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread, label %.preheader40

.preheader40:                                     ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.f = load i32, ptr %i.e, align 16, !tbaa !188 ; 2 uses
  %.not58 = icmp eq i32 %i.f, 0
  br i1 %.not58, label %._crit_edge60, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 5 uses
  br label %.preheader
end_hunk_0
begin_hunk_1_@DoCertificateVerify:bb.a
  %i.ev = load i64, ptr %i.eu, align 16           ; 2 uses
  %i.ew = and i64 %i.ev, 1073741824
  %i.ex = icmp ne i64 %i.ew, 0
  %i.ey = icmp eq i32 %.013.i, 0
  %i.ez = select i1 %i.ex, i1 %i.ey, i1 false
  %i.fa = select i1 %i.ez, i64 562949953421312, i64 0
  %i.fb = and i64 %i.ev, -562949953421313
  %i.fc = or disjoint i64 %i.fa, %i.fb
  store i64 %i.fc, ptr %i.eu, align 16
  br label %bb.ah

bb.ah:                                            ; preds = %EccVerify.exit, %RsaVerify.exit.thread
  %.1 = phi i32 [ %.013.i, %EccVerify.exit ], [ %.0, %RsaVerify.exit.thread ]
  %.not119 = icmp eq i32 %.1, 0
  br i1 %.not119, label %bb.ai, label %.thread147

bb.ai:                                            ; preds = %bb.ah
  store i8 3, ptr %i.d, align 4, !tbaa !226
  %i.fd = load ptr, ptr %i.dl, align 16, !tbaa !232 ; 2 uses
  %.not120 = icmp eq ptr %i.fd, null
  br i1 %.not120, label %bb.as, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !171
  %.not121 = icmp eq i8 %i.ff, 0
  br i1 %.not121, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load i8, ptr %i.j, align 2, !tbaa !49
  %i.fh = icmp eq i8 %i.fg, 3
  br i1 %i.fh, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !50
  %i.fk = icmp ugt i8 %i.fj, 2
  br i1 %i.fk, label %IsAtLeastTLSv1_2.exit134, label %bb.ap

IsAtLeastTLSv1_2.exit134:                         ; preds = %bb.al
  %i.fl = load i8, ptr %i.f, align 4, !tbaa !241
  %i.fm = icmp eq i8 %i.fl, 8
  br i1 %i.fm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %IsAtLeastTLSv1_2.exit134
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.fo = load ptr, ptr %i.fn, align 16, !tbaa !159
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !160
  %i.fr = load ptr, ptr %4, align 16, !tbaa !408
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ft = load i32, ptr %i.fs, align 16, !tbaa !405
  %i.fu = load i8, ptr %i.e, align 1, !tbaa !242  ; 2 uses
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add i8 %i.fu, -3
  %i.fx = icmp ult i8 %i.fw, 4
  %switch.offset.i136 = add nuw nsw i32 %i.fv, 2
  %.0.i137 = select i1 %i.fx, i32 %switch.offset.i136, i32 0
  %i.fy = call i32 @sp_count_bits(ptr noundef nonnull %i.fd) #27
  %i.fz = call i32 @wc_RsaPSS_CheckPadding_ex(ptr noundef %i.fo, i32 noundef %i.fq, ptr noundef %i.fr, i32 noundef %i.ft, i32 noundef %.0.i137, i32 noundef -1, i32 noundef %i.fy) #27
  %.not126 = icmp eq i32 %i.fz, 0
  br i1 %.not126, label %.thread, label %.thread147

bb.an:                                            ; preds = %IsAtLeastTLSv1_2.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gb = load ptr, ptr %i.ga, align 16, !tbaa !159
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !160
  %i.ge = load i8, ptr %i.e, align 1, !tbaa !242
  %switch.tableidx170 = add i8 %i.ge, -2          ; 2 uses
  %i.gf = icmp ult i8 %switch.tableidx170, 5
  br i1 %i.gf, label %switch.lookup171, label %TypeHash.exit

switch.lookup171:                                 ; preds = %bb.an
  %i.gg = zext nneg i8 %switch.tableidx170 to i64
  %switch.gep172 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ReEncodeSig, i64 %i.gg
  %switch.load173 = load i32, ptr %switch.gep172, align 4
  br label %TypeHash.exit

TypeHash.exit:                                    ; preds = %bb.an, %switch.lookup171
  %.0.i138 = phi i32 [ %switch.load173, %switch.lookup171 ], [ 0, %bb.an ]
  %i.gh = call i32 @wc_EncodeSignature(ptr noundef nonnull %i.c, ptr noundef %i.gb, i32 noundef %i.gd, i32 noundef %.0.i138) #27 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.gh, ptr %i.gi, align 16, !tbaa !405
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !406
  %i.gl = icmp eq i32 %i.gk, %i.gh
  %i.gm = load ptr, ptr %4, align 16              ; 2 uses
  %i.gn = icmp ne ptr %i.gm, null
  %or.cond8 = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %or.cond8, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %TypeHash.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.go = icmp ugt i32 %i.gh, 511
  %i.gp = sext i1 %i.go to i32
  store volatile i32 %i.gp, ptr %i.a, align 4, !tbaa !56
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !56
  %i.gq = xor i32 %.0..0..0..0..0..0..i, -1
  %i.gr = and i32 %i.gh, %i.gq
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !56
  %i.gs = and i32 %.0..0..0..0..0..0.2.i, 512
  %i.gt = or i32 %i.gs, %i.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gu = zext i32 %i.gt to i64
  %bcmp124 = call i32 @bcmp(ptr nonnull %i.gm, ptr nonnull %i.c, i64 %i.gu)
  %.not125 = icmp eq i32 %bcmp124, 0
  br i1 %.not125, label %.thread149, label %bb.ar

.thread149:                                       ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %.thread

bb.ap:                                            ; preds = %bb.ak, %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !406
  %i.gx = icmp eq i32 %i.gw, 36
  %i.gy = load ptr, ptr %4, align 16              ; 2 uses
  %i.gz = icmp ne ptr %i.gy, null
  %or.cond12 = select i1 %i.gx, i1 %i.gz, i1 false
  br i1 %or.cond12, label %bb.aq, label %.thread147

bb.aq:                                            ; preds = %bb.ap
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hb = load ptr, ptr %i.ha, align 16, !tbaa !131
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 144
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %i.gy, ptr noundef nonnull dereferenceable(36) %i.hc, i64 36)
  %.not123 = icmp eq i32 %bcmp, 0
  br i1 %.not123, label %.thread, label %.thread147

bb.ar:                                            ; preds = %TypeHash.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %.thread147

.thread:                                          ; preds = %bb.aq, %bb.am, %.thread149
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.he = load i64, ptr %i.hd, align 16           ; 2 uses
  %i.hf = shl i64 %i.he, 19
  %i.hg = and i64 %i.hf, 562949953421312
  %i.hh = and i64 %i.he, -562949953421313
  %i.hi = or disjoint i64 %i.hg, %i.hh
  store i64 %i.hi, ptr %i.hd, align 16
  br label %bb.as

bb.as:                                            ; preds = %bb.ai, %bb.aj, %.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 16
  %i.hl = or i64 %i.hk, 2147483648
  store i64 %i.hl, ptr %i.hj, align 16
  %i.hm = load i16, ptr %i.cz, align 4, !tbaa !407
  %i.hn = zext i16 %i.hm to i32
  %i.ho = load i32, ptr %i.h, align 4, !tbaa !403
  %i.hp = add i32 %i.ho, %i.hn                    ; 2 uses
  store i32 %i.hp, ptr %i.h, align 4, !tbaa !403
  store i32 %i.hp, ptr %2, align 4, !tbaa !56
  store i8 5, ptr %i.d, align 4, !tbaa !226
  br label %.thread147

.thread147:                                       ; preds = %bb.aq, %bb.ap, %bb.ar, %InServerCertReqHashSigAlgo.exit.thread, %bb.am, %bb.ah, %bb.x, %SetDigest.exit, %bb.v, %bb.r, %bb.q, %IsAtLeastTLSv1_2.exit, %bb.as
  %.7 = phi i32 [ -329, %bb.ar ], [ -229, %bb.am ], [ -425, %InServerCertReqHashSigAlgo.exit.thread ], [ -316, %bb.v ], [ -328, %SetDigest.exit ], [ -328, %bb.x ], [ -229, %bb.ah ], [ -425, %bb.r ], [ 0, %bb.as ], [ -425, %bb.q ], [ -329, %bb.aq ], [ -328, %IsAtLeastTLSv1_2.exit ], [ -329, %bb.ap ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 16, !tbaa !159 ; 2 uses
  %.not128 = icmp eq ptr %i.hr, null
  br i1 %.not128, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.thread147
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ht = load i64, ptr %i.hs, align 16
  %i.hu = and i64 %i.ht, 1099511627776
  %.not129 = icmp eq i64 %i.hu, 0
  br i1 %.not129, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @wolfSSL_Free(ptr noundef nonnull %i.hr) #27
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %.thread147
  store ptr null, ptr %i.hq, align 16, !tbaa !159
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.hv, align 8, !tbaa !160
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 16
  %i.hy = and i64 %i.hx, -1099511627777
  store i64 %i.hy, ptr %i.hw, align 16
  call void @FreeKeyExchange(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret i32 %.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @SendFatalAlertOnly(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @ChachaAEADEncrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [13 x i8], align 8                ; 18 uses
  %i.c = alloca [12 x i8], align 1                ; 72 uses
  %i.d = alloca [32 x i8], align 16               ; 13 uses
  %i.e = zext i16 %3 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.g = load i16, ptr %i.f, align 2, !tbaa !254
  %i.h = zext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 131072
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %writeAeadAuthData.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !186  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !187  ; 3 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !187
  %i.r = icmp eq i32 %i.p, -1
  br i1 %i.r, label %bb.c, label %writeAeadAuthData.exit

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %i.n, 1
  store i32 %i.s, ptr %i.m, align 4, !tbaa !186
  br label %writeAeadAuthData.exit

writeAeadAuthData.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.6.0.i.i = phi i32 [ 0, %bb.a ], [ -1, %bb.c ], [ %i.p, %bb.b ] ; 4 uses
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %5 = lshr i32 %.sroa.0.0.i.i, 24
  %6 = trunc nuw i32 %5 to i8
  store i8 %6, ptr %i.b, align 8, !tbaa !52
  %7 = lshr i32 %.sroa.0.0.i.i, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !52
  %10 = lshr i32 %.sroa.0.0.i.i, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %11, ptr %12, align 2, !tbaa !52
  %13 = trunc i32 %.sroa.0.0.i.i to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %15 = lshr i32 %.sroa.6.0.i.i, 24
  %16 = trunc nuw i32 %15 to i8
  store i8 %16, ptr %i.t, align 4, !tbaa !52
  %17 = lshr i32 %.sroa.6.0.i.i, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %18, ptr %19, align 1, !tbaa !52
  %20 = lshr i32 %.sroa.6.0.i.i, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %21, ptr %22, align 2, !tbaa !52
  %23 = trunc i32 %.sroa.6.0.i.i to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %4, ptr %i.v, align 8, !tbaa !52
  %.in29.i = load i8, ptr %i.u, align 2, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 %.in29.i, ptr %i.w, align 1, !tbaa !52
  %.in30.in.i = getelementptr inbounds nuw i8, ptr %0, i64 727
  %.in30.i = load i8, ptr %.in30.in.i, align 1, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 %.in30.i, ptr %i.x, align 2, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.z = lshr i32 %i.i, 8
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !52
  %i.ab = trunc i32 %i.i to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !52
  %i.ad = and i64 %i.k, 4398046511104
  %.not = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.af = load i64, ptr %i.b, align 8
  store i64 %i.af, ptr %i.ae, align 1
  br i1 %.not, label %bb.d, label %xorbuf.exit

bb.d:                                             ; preds = %writeAeadAuthData.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 980 ; 5 uses
  %i.ah = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = or i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 7
  %or.cond.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.e

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !80
  %i.ap = xor i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !80
  br label %.lr.ph53.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.aq = xor i64 %i.ah, %i.ai
  %i.ar = and i64 %i.aq, 7
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %.preheader.i, label %.lr.ph53.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %i.at = and i64 %i.ah, 7
  %.not55.i = icmp eq i64 %i.at, 0
  br i1 %.not55.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 988
  br label %.lr.ph.i30.preheader.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.046.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.ag, %.preheader.i ] ; 2 uses
  %.02245.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.c, %.preheader.i ] ; 3 uses
  %.02544.i = phi i32 [ %i.ba, %.lr.ph.i ], [ 12, %.preheader.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 1 ; 4 uses
  %i.aw = load i8, ptr %.046.i, align 1, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %.02245.i, i64 1 ; 4 uses
  %i.ay = load i8, ptr %.02245.i, align 1, !tbaa !52
  %i.az = xor i8 %i.ay, %i.aw
  store i8 %i.az, ptr %.02245.i, align 1, !tbaa !52
  %i.ba = add nsw i32 %.02544.i, -1               ; 6 uses
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = and i64 %i.bb, 7
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = icmp ne i32 %i.ba, 0
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bg = and i32 %i.ba, -8
  %.idx.i.i = zext i32 %i.bg to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i
  %.not.i.i59 = icmp ult i32 %i.ba, 8
  br i1 %.not.i.i59, label %XorWords.exit.i, label %.lr.ph.i30.preheader.i

.lr.ph.i30.preheader.i:                           ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.bi = phi ptr [ %i.au, %._crit_edge.thread.i ], [ %i.bh, %._crit_edge.i ] ; 2 uses
  %.0.lcssa68.i = phi ptr [ %i.ag, %._crit_edge.thread.i ], [ %i.av, %._crit_edge.i ] ; 7 uses
  %.022.lcssa67.i = phi ptr [ %i.c, %._crit_edge.thread.i ], [ %i.ax, %._crit_edge.i ] ; 6 uses
  %.025.lcssa65.i = phi i32 [ 12, %._crit_edge.thread.i ], [ %i.ba, %._crit_edge.i ] ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %.0.lcssa68.i288 = ptrtoaddr ptr %.0.lcssa68.i to i64 ; 2 uses
  %i.bk = add nuw i64 %.0.lcssa68.i288, 8
  %i.bl = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bm = xor i64 %.0.lcssa68.i288, -1
  %i.bn = add i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 136
  br i1 %min.iters.check, label %.lr.ph.i30.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i30.preheader.i
  %i.bq = and i64 %i.bn, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %i.bs = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.br
  %bound0 = icmp ult ptr %.022.lcssa67.i, %i.bt
  %bound1 = icmp ult ptr %.0.lcssa68.i, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.bu ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.bx ; 3 uses
  %next.gep289 = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.bx ; 2 uses
  %i.by = getelementptr i8, ptr %next.gep289, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep289, align 8, !tbaa !80, !alias.scope !416
  %wide.load290 = load <2 x i64>, ptr %i.by, align 8, !tbaa !80, !alias.scope !416
  %i.bz = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load291 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  %wide.load292 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  %i.ca = xor <2 x i64> %wide.load291, %wide.load
  %i.cb = xor <2 x i64> %wide.load292, %wide.load290
  store <2 x i64> %i.ca, ptr %next.gep, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  store <2 x i64> %i.cb, ptr %i.bz, align 8, !tbaa !80, !alias.scope !417, !noalias !416
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i30.preheader.i, %middle.block
  %.sroa.037.1.i.ph = phi ptr [ %.022.lcssa67.i, %vector.memcheck ], [ %.022.lcssa67.i, %.lr.ph.i30.preheader.i ], [ %i.bv, %middle.block ]
  %.ph = phi ptr [ %.0.lcssa68.i, %vector.memcheck ], [ %.0.lcssa68.i, %.lr.ph.i30.preheader.i ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i.preheader, %.lr.ph.i30.i
  %.sroa.037.1.i = phi ptr [ %i.cg, %.lr.ph.i30.i ], [ %.sroa.037.1.i.ph, %.lr.ph.i30.i.preheader ] ; 3 uses
  %i.cd = phi ptr [ %i.ce, %.lr.ph.i30.i ], [ %.ph, %.lr.ph.i30.i.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !80
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i, i64 8 ; 2 uses
  %i.ch = load i64, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.ci = xor i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.cj = icmp ult ptr %i.ce, %i.bi
  br i1 %i.cj, label %.lr.ph.i30.i, label %XorWords.exit.i, !llvm.loop !413

XorWords.exit.i:                                  ; preds = %.lr.ph.i30.i, %middle.block, %._crit_edge.i
  %.025.lcssa66.i = phi i32 [ %i.ba, %._crit_edge.i ], [ %.025.lcssa65.i, %middle.block ], [ %.025.lcssa65.i, %.lr.ph.i30.i ]
  %.sroa.037.2.i = phi ptr [ %i.ax, %._crit_edge.i ], [ %i.bv, %middle.block ], [ %i.cg, %.lr.ph.i30.i ]
  %.sroa.0.0.i = phi ptr [ %i.av, %._crit_edge.i ], [ %i.bw, %middle.block ], [ %i.ce, %.lr.ph.i30.i ]
  %i.ck = and i32 %.025.lcssa66.i, 7              ; 2 uses
  %.not49.i = icmp eq i32 %i.ck, 0
  br i1 %.not49.i, label %xorbuf.exit, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %.lr.ph.i.i, %bb.e, %XorWords.exit.i
  %.252.i.ph = phi ptr [ %i.ag, %bb.e ], [ %i.al, %.lr.ph.i.i ], [ %.sroa.0.0.i, %XorWords.exit.i ] ; 2 uses
  %.22451.i.ph = phi ptr [ %i.c, %bb.e ], [ %i.an, %.lr.ph.i.i ], [ %.sroa.037.2.i, %XorWords.exit.i ] ; 2 uses
  %.22750.i.ph = phi i32 [ 12, %bb.e ], [ 4, %.lr.ph.i.i ], [ %i.ck, %XorWords.exit.i ] ; 4 uses
  %xtraiter = and i32 %.22750.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol

.lr.ph53.i.prol:                                  ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i.prol
  %.252.i.prol = phi ptr [ %i.cl, %.lr.ph53.i.prol ], [ %.252.i.ph, %.lr.ph53.i.preheader ] ; 2 uses
  %.22451.i.prol = phi ptr [ %i.cn, %.lr.ph53.i.prol ], [ %.22451.i.ph, %.lr.ph53.i.preheader ] ; 3 uses
  %.22750.i.prol = phi i32 [ %i.cq, %.lr.ph53.i.prol ], [ %.22750.i.ph, %.lr.ph53.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.prol ], [ 0, %.lr.ph53.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.252.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.252.i.prol, align 1, !tbaa !52
  %i.cn = getelementptr inbounds nuw i8, ptr %.22451.i.prol, i64 1 ; 2 uses
  %i.co = load i8, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.cp = xor i8 %i.co, %i.cm
  store i8 %i.cp, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.cq = add nsw i32 %.22750.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol, !llvm.loop !414

.lr.ph53.i.prol.loopexit:                         ; preds = %.lr.ph53.i.prol, %.lr.ph53.i.preheader
  %.252.i.unr = phi ptr [ %.252.i.ph, %.lr.ph53.i.preheader ], [ %i.cl, %.lr.ph53.i.prol ]
  %.22451.i.unr = phi ptr [ %.22451.i.ph, %.lr.ph53.i.preheader ], [ %i.cn, %.lr.ph53.i.prol ]
  %.22750.i.unr = phi i32 [ %.22750.i.ph, %.lr.ph53.i.preheader ], [ %i.cq, %.lr.ph53.i.prol ]
  %i.cr = icmp samesign ult i32 %.22750.i.ph, 4
  br i1 %i.cr, label %xorbuf.exit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i
  %.252.i = phi ptr [ %i.dh, %.lr.ph53.i ], [ %.252.i.unr, %.lr.ph53.i.prol.loopexit ] ; 5 uses
  %.22451.i = phi ptr [ %i.dj, %.lr.ph53.i ], [ %.22451.i.unr, %.lr.ph53.i.prol.loopexit ] ; 6 uses
  %.22750.i = phi i32 [ %i.dm, %.lr.ph53.i ], [ %.22750.i.unr, %.lr.ph53.i.prol.loopexit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.252.i, i64 1
  %i.ct = load i8, ptr %.252.i, align 1, !tbaa !52
end_hunk_1
begin_hunk_2_@ChachaAEADEncrypt:bb.a
  store i8 0, ptr %i.in, align 1, !tbaa !52
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = and i64 %i.ir, 7
  %.not.i119.4 = icmp eq i64 %i.is, 0
  br i1 %.not.i119.4, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.5

.lr.ph.i116.5:                                    ; preds = %.lr.ph.i116.4
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 3 uses
  store i8 0, ptr %i.iq, align 1, !tbaa !52
  %i.iu = ptrtoint ptr %i.it to i64
  %i.iv = and i64 %i.iu, 7
  %.not.i119.5 = icmp eq i64 %i.iv, 0
  br i1 %.not.i119.5, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.6

.lr.ph.i116.6:                                    ; preds = %.lr.ph.i116.5
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  store i8 0, ptr %i.it, align 1, !tbaa !52
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = and i64 %i.ix, 7
  %.not.i119.6 = icmp eq i64 %i.iy, 0
  br i1 %.not.i119.6, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.7

.lr.ph.i116.7:                                    ; preds = %.lr.ph.i116.6
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i8 0, ptr %i.iw, align 1, !tbaa !52
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = and i64 %i.ja, 7
  %.not.i119.7 = icmp eq i64 %i.jb, 0
  br i1 %.not.i119.7, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.8

.lr.ph.i116.8:                                    ; preds = %.lr.ph.i116.7
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 3 uses
  store i8 0, ptr %i.iz, align 1, !tbaa !52
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = and i64 %i.jd, 7
  %.not.i119.8 = icmp eq i64 %i.je, 0
  br i1 %.not.i119.8, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.9

.lr.ph.i116.9:                                    ; preds = %.lr.ph.i116.8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 3 uses
  store i8 0, ptr %i.jc, align 1, !tbaa !52
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = and i64 %i.jg, 7
  %.not.i119.9 = icmp eq i64 %i.jh, 0
  br i1 %.not.i119.9, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.10

.lr.ph.i116.10:                                   ; preds = %.lr.ph.i116.9
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 3 uses
  store i8 0, ptr %i.jf, align 1, !tbaa !52
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = and i64 %i.jj, 7
  %.not.i119.10 = icmp eq i64 %i.jk, 0
  br i1 %.not.i119.10, label %.lr.ph31.preheader.i127, label %.lr.ph.i116.11

.lr.ph.i116.11:                                   ; preds = %.lr.ph.i116.10
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 0, ptr %i.ji, align 1, !tbaa !52
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = and i64 %i.jm, 7
  %.not.i119.11 = icmp eq i64 %i.jn, 0
  br i1 %.not.i119.11, label %._crit_edge.i128, label %ForceZero.exit131

.preheader.i123.thread273:                        ; preds = %bb.k, %.lr.ph.i116.preheader, %.lr.ph.i116.1, %.lr.ph.i116.2
  %.012.lcssa.i122169.ph = phi ptr [ %i.ik, %.lr.ph.i116.2 ], [ %i.ih, %.lr.ph.i116.1 ], [ %i.ie, %.lr.ph.i116.preheader ], [ %i.c, %bb.k ] ; 2 uses
  %.013.lcssa.i121168.ph = phi i64 [ 1, %.lr.ph.i116.2 ], [ 2, %.lr.ph.i116.1 ], [ 3, %.lr.ph.i116.preheader ], [ 4, %bb.k ]
  store i64 0, ptr %.012.lcssa.i122169.ph, align 8
  %scevgep.i130276 = getelementptr i8, ptr %.012.lcssa.i122169.ph, i64 8
  br label %.lr.ph31.preheader.i127

.preheader.i123:                                  ; preds = %.lr.ph.i116.3
  store i64 0, ptr %i.in, align 8
  br label %._crit_edge.i128

.lr.ph31.preheader.i127:                          ; preds = %.lr.ph.i116.4, %.lr.ph.i116.5, %.lr.ph.i116.6, %.lr.ph.i116.7, %.lr.ph.i116.8, %.lr.ph.i116.9, %.lr.ph.i116.10, %.preheader.i123.thread273
  %.0.lcssa.i125267 = phi ptr [ %scevgep.i130276, %.preheader.i123.thread273 ], [ %i.iq, %.lr.ph.i116.4 ], [ %i.it, %.lr.ph.i116.5 ], [ %i.iw, %.lr.ph.i116.6 ], [ %i.iz, %.lr.ph.i116.7 ], [ %i.jc, %.lr.ph.i116.8 ], [ %i.jf, %.lr.ph.i116.9 ], [ %i.ji, %.lr.ph.i116.10 ]
  %.114.lcssa.i124266 = phi i64 [ %.013.lcssa.i121168.ph, %.preheader.i123.thread273 ], [ 7, %.lr.ph.i116.4 ], [ 6, %.lr.ph.i116.5 ], [ 5, %.lr.ph.i116.6 ], [ 4, %.lr.ph.i116.7 ], [ 3, %.lr.ph.i116.8 ], [ 2, %.lr.ph.i116.9 ], [ 1, %.lr.ph.i116.10 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i125267, i8 0, i64 %.114.lcssa.i124266, i1 false), !tbaa !52
  br label %._crit_edge.i128

._crit_edge.i128:                                 ; preds = %.lr.ph.i116.11, %.preheader.i123, %.lr.ph31.preheader.i127
  fence seq_cst
  br label %ForceZero.exit131

ForceZero.exit131:                                ; preds = %.lr.ph.i116.11, %._crit_edge.i128
  %i.jo = load ptr, ptr %i.dn, align 8, !tbaa !84
  %i.jp = call i32 @wc_Chacha_Process(ptr noundef %i.jo, ptr noundef %1, ptr noundef %2, i32 noundef %i.i) #27 ; 2 uses
  %.not54 = icmp eq i32 %i.jp, 0
  br i1 %.not54, label %bb.l, label %.lr.ph25.preheader.i146

.lr.ph25.preheader.i146:                          ; preds = %ForceZero.exit131
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !tbaa !80
  fence seq_cst
  br label %ForceZero.exit

bb.l:                                             ; preds = %ForceZero.exit131
  %i.jq = load i64, ptr %i.j, align 8
  %i.jr = and i64 %i.jq, 4398046511104
  %.not55 = icmp eq i64 %i.jr, 0
  br i1 %.not55, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.js = call fastcc i32 @Poly1305TagOld(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef 13, ptr noundef %1, ptr noundef %i.d, i16 noundef zeroext %3, ptr noundef %i.a) ; 2 uses
  %.not58 = icmp eq i32 %i.js, 0
  br i1 %.not58, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  br label %ForceZero.exit

bb.o:                                             ; preds = %bb.l
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !86
  %i.jv = call i32 @wc_Poly1305SetKey(ptr noundef %i.ju, ptr noundef nonnull %i.d, i32 noundef 32) #27 ; 2 uses
  %.not56 = icmp eq i32 %i.jv, 0
  br i1 %.not56, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  br label %ForceZero.exit

bb.q:                                             ; preds = %bb.o
  %i.jw = load ptr, ptr %i.jt, align 8, !tbaa !86
  %i.jx = call i32 @wc_Poly1305_MAC(ptr noundef %i.jw, ptr noundef nonnull %i.b, i32 noundef 13, ptr noundef %1, i32 noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 16) #27 ; 2 uses
  %.not57 = icmp eq i32 %i.jx, 0
  br i1 %.not57, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  br label %ForceZero.exit

bb.s:                                             ; preds = %bb.q, %bb.m
  call fastcc void @ForceZero(ptr noundef nonnull %i.d, i64 noundef 32)
  %i.jy = zext i32 %i.i to i64
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jz, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call fastcc void @AeadIncrementExpIV(ptr noundef nonnull %0)
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i60.11, %.lr.ph.i65.11, %.lr.ph25.preheader.i146, %ForceZero.exit97, %._crit_edge.i77, %._crit_edge.i63, %bb.s, %bb.r, %bb.p, %bb.n
  %.040 = phi i32 [ %i.jx, %bb.r ], [ %i.jv, %bb.p ], [ %i.dp, %._crit_edge.i63 ], [ %i.fd, %._crit_edge.i77 ], [ %i.gr, %ForceZero.exit97 ], [ %i.js, %bb.n ], [ 0, %bb.s ], [ %i.fd, %.lr.ph.i65.11 ], [ %i.jp, %.lr.ph25.preheader.i146 ], [ %i.dp, %.lr.ph.i60.11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.040
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @writeAeadAuthData(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %3, ptr %5, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 131072
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.d, label %WriteSEQ.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !184  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !185  ; 3 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !185
  %i.i = icmp eq i32 %i.g, -1
  br i1 %i.i, label %bb.f, label %WriteSEQ.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add i32 %i.e, 1
  store i32 %i.j, ptr %i.d, align 4, !tbaa !184
  br label %WriteSEQ.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !186  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !187  ; 3 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !187
  %i.p = icmp eq i32 %i.n, -1
  br i1 %i.p, label %bb.h, label %WriteSEQ.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.k, align 4, !tbaa !186
  br label %WriteSEQ.exit

WriteSEQ.exit:                                    ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.6.0.i = phi i32 [ 0, %bb.c ], [ -1, %bb.h ], [ %i.n, %bb.g ], [ -1, %bb.f ], [ %i.g, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi i32 [ 0, %bb.c ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.e, %bb.f ], [ %i.e, %bb.e ] ; 4 uses
  %7 = lshr i32 %.sroa.0.0.i, 24
  %8 = trunc nuw i32 %7 to i8
  store i8 %8, ptr %3, align 1, !tbaa !52
  %9 = lshr i32 %.sroa.0.0.i, 16
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %10, ptr %11, align 1, !tbaa !52
  %12 = lshr i32 %.sroa.0.0.i, 8
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %13, ptr %14, align 1, !tbaa !52
  %15 = trunc i32 %.sroa.0.0.i to i8
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %15, ptr %16, align 1, !tbaa !52
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %17 = lshr i32 %.sroa.6.0.i, 24
  %18 = trunc nuw i32 %17 to i8
  store i8 %18, ptr %i.r, align 1, !tbaa !52
  %19 = lshr i32 %.sroa.6.0.i, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %20, ptr %21, align 1, !tbaa !52
  %22 = lshr i32 %.sroa.6.0.i, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i8 %23, ptr %24, align 1, !tbaa !52
  %25 = trunc i32 %.sroa.6.0.i to i8
  %26 = getelementptr inbounds nuw i8, ptr %3, i64 7
  store i8 %25, ptr %26, align 1, !tbaa !52
  %.not28 = icmp eq i8 %4, 0
  br i1 %.not28, label %.critedge, label %bb.i

bb.i:                                             ; preds = %WriteSEQ.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 717
  %i.t = load i8, ptr %i.s, align 1, !tbaa !256
  br label %.critedge

.critedge:                                        ; preds = %WriteSEQ.exit, %bb.i
  %.sink33 = phi i64 [ 718, %bb.i ], [ 726, %WriteSEQ.exit ]
  %.sink = phi i8 [ %i.t, %bb.i ], [ %2, %WriteSEQ.exit ]
  %.in30.in.v = phi i64 [ 719, %bb.i ], [ 727, %WriteSEQ.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sink33
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %.sink, ptr %i.v, align 1, !tbaa !52
  %.in29 = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 %.in29, ptr %i.w, align 1, !tbaa !52
  %.in30.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in30.in.v
  %.in30 = load i8, ptr %.in30.in, align 1, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 %.in30, ptr %i.x, align 1, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.z = lshr i16 %1, 8
  %i.aa = trunc nuw i16 %i.z to i8
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !52
  %i.ab = trunc i16 %1 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !52
  ret i32 13
}

declare i32 @wc_Chacha_SetIV(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_Chacha_Process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Poly1305TagOld(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, -2147483648) %2, ptr noundef %3, ptr noundef nonnull %4, i16 noundef zeroext %5, ptr noundef nonnull %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 10 uses
  %i.b = zext i16 %5 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.d = load i16, ptr %i.c, align 2, !tbaa !254
  %i.e = zext i16 %i.d to i32
  %i.f = sub nsw i32 %i.b, %i.e                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = tail call i32 @wc_Poly1305SetKey(ptr noundef %i.i, ptr noundef nonnull %4, i32 noundef 32) #27 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.l = tail call i32 @wc_Poly1305Update(ptr noundef %i.k, ptr noundef nonnull %1, i32 noundef %2) #27 ; 2 uses
  %.not35 = icmp eq i32 %i.l, 0
  br i1 %.not35, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.a, align 8
  %i.m = trunc i32 %2 to i8
  store i8 %i.m, ptr %i.a, align 8, !tbaa !52
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.o = call i32 @wc_Poly1305Update(ptr noundef %i.n, ptr noundef nonnull %i.a, i32 noundef 8) #27 ; 2 uses
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.a, align 8
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.q = call i32 @wc_Poly1305Update(ptr noundef %i.p, ptr noundef %3, i32 noundef %i.f) #27 ; 2 uses
  %.not37 = icmp eq i32 %i.q, 0
  br i1 %.not37, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = trunc nuw i32 %i.f to i16
  store i16 %i.r, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.s, align 2, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.t, align 1, !tbaa !52
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.v = call i32 @wc_Poly1305Update(ptr noundef %i.u, ptr noundef nonnull %i.a, i32 noundef 8) #27 ; 2 uses
  %.not38 = icmp eq i32 %i.v, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.x = call i32 @wc_Poly1305Final(ptr noundef %i.w, ptr noundef nonnull %6) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.v, %bb.f ], [ -301, %bb.a ], [ %i.j, %bb.b ], [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @wc_Poly1305SetKey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_Poly1305_MAC(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @AeadIncrementExpIV(ptr nofree noundef captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 972 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 979 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !52
  %i.d = add i8 %i.c, 1                           ; 2 uses
  store i8 %i.d, ptr %i.b, align 1, !tbaa !52
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 978 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52
  %i.g = add i8 %i.f, 1                           ; 2 uses
  store i8 %i.g, ptr %i.e, align 1, !tbaa !52
  %.not.1 = icmp eq i8 %i.g, 0
  br i1 %.not.1, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 977 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = add i8 %i.i, 1                           ; 2 uses
  store i8 %i.j, ptr %i.h, align 1, !tbaa !52
  %.not.2 = icmp eq i8 %i.j, 0
  br i1 %.not.2, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !52
  %i.m = add i8 %i.l, 1                           ; 2 uses
  store i8 %i.m, ptr %i.k, align 1, !tbaa !52
  %.not.3 = icmp eq i8 %i.m, 0
  br i1 %.not.3, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 975 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52
  %i.p = add i8 %i.o, 1                           ; 2 uses
  store i8 %i.p, ptr %i.n, align 1, !tbaa !52
  %.not.4 = icmp eq i8 %i.p, 0
  br i1 %.not.4, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = add i8 %i.r, 1                           ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !52
  %.not.5 = icmp eq i8 %i.s, 0
  br i1 %.not.5, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 973 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !52
  %i.v = add i8 %i.u, 1                           ; 2 uses
  store i8 %i.v, ptr %i.t, align 1, !tbaa !52
  %.not.6 = icmp eq i8 %i.v, 0
  br i1 %.not.6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %i.a, align 1, !tbaa !52
  %i.x = add i8 %i.w, 1
  store i8 %i.x, ptr %i.a, align 1, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ChachaAEADDecrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [13 x i8], align 8                ; 18 uses
  %i.b = alloca [12 x i8], align 1                ; 72 uses
  %i.c = alloca [16 x i8], align 16               ; 7 uses
  %i.d = alloca [32 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !254  ; 2 uses
  %i.g = icmp ult i16 %3, %i.f
  br i1 %i.g, label %ForceZero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow = sub nuw i16 %3, %i.f                  ; 4 uses
  %i.h = zext i16 %narrow to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 131072
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %writeAeadAuthData.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !184  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !185  ; 3 uses
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 8, !tbaa !185
  %i.q = icmp eq i32 %i.o, -1
  br i1 %i.q, label %bb.d, label %writeAeadAuthData.exit

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.l, align 4, !tbaa !184
  br label %writeAeadAuthData.exit

writeAeadAuthData.exit:                           ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.6.0.i.i = phi i32 [ 0, %bb.b ], [ -1, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.b ], [ %i.m, %bb.d ], [ %i.m, %bb.c ] ; 4 uses
  %4 = lshr i32 %.sroa.0.0.i.i, 24
  %5 = trunc nuw i32 %4 to i8
  store i8 %5, ptr %i.a, align 8, !tbaa !52
  %6 = lshr i32 %.sroa.0.0.i.i, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !52
  %9 = lshr i32 %.sroa.0.0.i.i, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %10, ptr %11, align 2, !tbaa !52
  %12 = trunc i32 %.sroa.0.0.i.i to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %14 = lshr i32 %.sroa.6.0.i.i, 24
  %15 = trunc nuw i32 %14 to i8
  store i8 %15, ptr %i.s, align 4, !tbaa !52
  %16 = lshr i32 %.sroa.6.0.i.i, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !52
  %19 = lshr i32 %.sroa.6.0.i.i, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %20, ptr %21, align 2, !tbaa !52
  %22 = trunc i32 %.sroa.6.0.i.i to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %22, ptr %23, align 1, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 717
  %i.u = load i8, ptr %i.t, align 1, !tbaa !256
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 718
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.u, ptr %i.w, align 8, !tbaa !52
  %.in29.i = load i8, ptr %i.v, align 2, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %.in29.i, ptr %i.x, align 1, !tbaa !52
  %.in30.in.i = getelementptr inbounds nuw i8, ptr %0, i64 719
  %.in30.i = load i8, ptr %.in30.in.i, align 1, !tbaa !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %.in30.i, ptr %i.y, align 2, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.aa = lshr i16 %narrow, 8
  %i.ab = trunc nuw i16 %i.aa to i8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !52
  %i.ac = trunc i16 %narrow to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ac, ptr %i.ad, align 4, !tbaa !52
  %i.ae = and i64 %i.j, 4398046511104
  %.not = icmp eq i64 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ag = load i64, ptr %i.a, align 8
  store i64 %i.ag, ptr %i.af, align 1
  br i1 %.not, label %bb.e, label %xorbuf.exit

bb.e:                                             ; preds = %writeAeadAuthData.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 5 uses
  %i.ai = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, 7
  %or.cond.i = icmp eq i64 %i.al, 0
  br i1 %or.cond.i, label %.lr.ph.i.i, label %bb.f

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !80
  %i.aq = xor i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !80
  br label %.lr.ph53.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.ar = xor i64 %i.ai, %i.aj
  %i.as = and i64 %i.ar, 7
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.preheader.i, label %.lr.ph53.i.preheader

.preheader.i:                                     ; preds = %bb.f
  %i.au = and i64 %i.ai, 7
  %.not55.i = icmp eq i64 %i.au, 0
  br i1 %.not55.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1000
  br label %.lr.ph.i30.preheader.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.046.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.ah, %.preheader.i ] ; 2 uses
  %.02245.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.b, %.preheader.i ] ; 3 uses
  %.02544.i = phi i32 [ %i.bb, %.lr.ph.i ], [ 12, %.preheader.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.046.i, i64 1 ; 4 uses
  %i.ax = load i8, ptr %.046.i, align 1, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %.02245.i, i64 1 ; 4 uses
  %i.az = load i8, ptr %.02245.i, align 1, !tbaa !52
  %i.ba = xor i8 %i.az, %i.ax
  store i8 %i.ba, ptr %.02245.i, align 1, !tbaa !52
  %i.bb = add nsw i32 %.02544.i, -1               ; 6 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = and i64 %i.bc, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = icmp ne i32 %i.bb, 0
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.bh = and i32 %i.bb, -8
  %.idx.i.i = zext i32 %i.bh to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i.i
  %.not.i.i63 = icmp ult i32 %i.bb, 8
  br i1 %.not.i.i63, label %XorWords.exit.i, label %.lr.ph.i30.preheader.i

.lr.ph.i30.preheader.i:                           ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.bj = phi ptr [ %i.av, %._crit_edge.thread.i ], [ %i.bi, %._crit_edge.i ] ; 2 uses
  %.0.lcssa68.i = phi ptr [ %i.ah, %._crit_edge.thread.i ], [ %i.aw, %._crit_edge.i ] ; 7 uses
  %.022.lcssa67.i = phi ptr [ %i.b, %._crit_edge.thread.i ], [ %i.ay, %._crit_edge.i ] ; 6 uses
  %.025.lcssa65.i = phi i32 [ 12, %._crit_edge.thread.i ], [ %i.bb, %._crit_edge.i ] ; 2 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %.0.lcssa68.i284 = ptrtoaddr ptr %.0.lcssa68.i to i64 ; 2 uses
  %i.bl = add nuw i64 %.0.lcssa68.i284, 8
  %i.bm = call i64 @llvm.umax.i64(i64 %i.bk, i64 %i.bl)
  %i.bn = xor i64 %.0.lcssa68.i284, -1
  %i.bo = add i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 136
  br i1 %min.iters.check, label %.lr.ph.i30.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i30.preheader.i
  %i.br = and i64 %i.bo, -8
  %i.bs = add i64 %i.br, 8                        ; 2 uses
  %i.bt = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.bs
  %bound0 = icmp ult ptr %.022.lcssa67.i, %i.bu
  %bound1 = icmp ult ptr %.0.lcssa68.i, %i.bt
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i30.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bq, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.bv ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.022.lcssa67.i, i64 %i.by ; 3 uses
  %next.gep285 = getelementptr i8, ptr %.0.lcssa68.i, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep285, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep285, align 8, !tbaa !80, !alias.scope !427
  %wide.load286 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !80, !alias.scope !427
  %i.ca = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load287 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  %wide.load288 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  %i.cb = xor <2 x i64> %wide.load287, %wide.load
  %i.cc = xor <2 x i64> %wide.load288, %wide.load286
  store <2 x i64> %i.cb, ptr %next.gep, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  store <2 x i64> %i.cc, ptr %i.ca, align 8, !tbaa !80, !alias.scope !428, !noalias !427
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %XorWords.exit.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.i30.preheader.i, %middle.block
  %.sroa.037.1.i.ph = phi ptr [ %.022.lcssa67.i, %vector.memcheck ], [ %.022.lcssa67.i, %.lr.ph.i30.preheader.i ], [ %i.bw, %middle.block ]
  %.ph = phi ptr [ %.0.lcssa68.i, %vector.memcheck ], [ %.0.lcssa68.i, %.lr.ph.i30.preheader.i ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i.preheader, %.lr.ph.i30.i
  %.sroa.037.1.i = phi ptr [ %i.ch, %.lr.ph.i30.i ], [ %.sroa.037.1.i.ph, %.lr.ph.i30.i.preheader ] ; 3 uses
  %i.ce = phi ptr [ %i.cf, %.lr.ph.i30.i ], [ %.ph, %.lr.ph.i30.i.preheader ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i, i64 8 ; 2 uses
  %i.ci = load i64, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.cj = xor i64 %i.ci, %i.cg
  store i64 %i.cj, ptr %.sroa.037.1.i, align 8, !tbaa !80
  %i.ck = icmp ult ptr %i.cf, %i.bj
  br i1 %i.ck, label %.lr.ph.i30.i, label %XorWords.exit.i, !llvm.loop !422

XorWords.exit.i:                                  ; preds = %.lr.ph.i30.i, %middle.block, %._crit_edge.i
  %.025.lcssa66.i = phi i32 [ %i.bb, %._crit_edge.i ], [ %.025.lcssa65.i, %middle.block ], [ %.025.lcssa65.i, %.lr.ph.i30.i ]
  %.sroa.037.2.i = phi ptr [ %i.ay, %._crit_edge.i ], [ %i.bw, %middle.block ], [ %i.ch, %.lr.ph.i30.i ]
  %.sroa.0.0.i = phi ptr [ %i.aw, %._crit_edge.i ], [ %i.bx, %middle.block ], [ %i.cf, %.lr.ph.i30.i ]
  %i.cl = and i32 %.025.lcssa66.i, 7              ; 2 uses
  %.not49.i = icmp eq i32 %i.cl, 0
  br i1 %.not49.i, label %xorbuf.exit, label %.lr.ph53.i.preheader

.lr.ph53.i.preheader:                             ; preds = %.lr.ph.i.i, %bb.f, %XorWords.exit.i
  %.252.i.ph = phi ptr [ %i.ah, %bb.f ], [ %i.am, %.lr.ph.i.i ], [ %.sroa.0.0.i, %XorWords.exit.i ] ; 2 uses
  %.22451.i.ph = phi ptr [ %i.b, %bb.f ], [ %i.ao, %.lr.ph.i.i ], [ %.sroa.037.2.i, %XorWords.exit.i ] ; 2 uses
  %.22750.i.ph = phi i32 [ 12, %bb.f ], [ 4, %.lr.ph.i.i ], [ %i.cl, %XorWords.exit.i ] ; 4 uses
  %xtraiter = and i32 %.22750.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol

.lr.ph53.i.prol:                                  ; preds = %.lr.ph53.i.preheader, %.lr.ph53.i.prol
  %.252.i.prol = phi ptr [ %i.cm, %.lr.ph53.i.prol ], [ %.252.i.ph, %.lr.ph53.i.preheader ] ; 2 uses
  %.22451.i.prol = phi ptr [ %i.co, %.lr.ph53.i.prol ], [ %.22451.i.ph, %.lr.ph53.i.preheader ] ; 3 uses
  %.22750.i.prol = phi i32 [ %i.cr, %.lr.ph53.i.prol ], [ %.22750.i.ph, %.lr.ph53.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph53.i.prol ], [ 0, %.lr.ph53.i.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.252.i.prol, i64 1 ; 2 uses
  %i.cn = load i8, ptr %.252.i.prol, align 1, !tbaa !52
  %i.co = getelementptr inbounds nuw i8, ptr %.22451.i.prol, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.cq = xor i8 %i.cp, %i.cn
  store i8 %i.cq, ptr %.22451.i.prol, align 1, !tbaa !52
  %i.cr = add nsw i32 %.22750.i.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.i.prol.loopexit, label %.lr.ph53.i.prol, !llvm.loop !423

.lr.ph53.i.prol.loopexit:                         ; preds = %.lr.ph53.i.prol, %.lr.ph53.i.preheader
  %.252.i.unr = phi ptr [ %.252.i.ph, %.lr.ph53.i.preheader ], [ %i.cm, %.lr.ph53.i.prol ]
  %.22451.i.unr = phi ptr [ %.22451.i.ph, %.lr.ph53.i.preheader ], [ %i.co, %.lr.ph53.i.prol ]
  %.22750.i.unr = phi i32 [ %.22750.i.ph, %.lr.ph53.i.preheader ], [ %i.cr, %.lr.ph53.i.prol ]
  %i.cs = icmp samesign ult i32 %.22750.i.ph, 4
  br i1 %i.cs, label %xorbuf.exit, label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i.prol.loopexit, %.lr.ph53.i
  %.252.i = phi ptr [ %i.di, %.lr.ph53.i ], [ %.252.i.unr, %.lr.ph53.i.prol.loopexit ] ; 5 uses
  %.22451.i = phi ptr [ %i.dk, %.lr.ph53.i ], [ %.22451.i.unr, %.lr.ph53.i.prol.loopexit ] ; 6 uses
  %.22750.i = phi i32 [ %i.dn, %.lr.ph53.i ], [ %.22750.i.unr, %.lr.ph53.i.prol.loopexit ]
end_hunk_2
begin_hunk_3_@BuildMessage:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread245, %.thread240
  %i.gy = phi i32 [ %.10.ph, %.thread240 ], [ %spec.select, %bb.ab ], [ %i.gx, %.thread245 ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ha = load ptr, ptr %i.gz, align 16, !tbaa !271 ; 3 uses
  %.not8.i = icmp eq ptr %i.ha, null
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.not9.i = icmp eq ptr %i.ha, %i.hb
  %or.cond.i = select i1 %.not8.i, i1 true, i1 %.not9.i
  br i1 %or.cond.i, label %FreeBuildMsgArgs.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @wolfSSL_Free(ptr noundef nonnull %i.ha) #27
  br label %FreeBuildMsgArgs.exit

FreeBuildMsgArgs.exit:                            ; preds = %bb.ad, %bb.ac, %bb.h, %.critedge, %bb.c, %bb.a, %bb.e
  %.0199 = phi i32 [ -173, %bb.a ], [ -173, %bb.c ], [ %i.k, %bb.e ], [ -173, %.critedge ], [ -520, %bb.h ], [ %i.gy, %bb.ac ], [ %i.gy, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  ret i32 %.0199
}

declare i32 @SetKeysSide(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @BuildCertHashes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 16384
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %IsAtLeastTLSv1_2.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.e = load i8, ptr %i.d, align 2, !tbaa !49
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %bb.c, label %IsAtLeastTLSv1_2.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.h = load i8, ptr %i.g, align 1, !tbaa !50
  %i.i = icmp ugt i8 %i.h, 2
  br i1 %i.i, label %IsAtLeastTLSv1_2.exit, label %IsAtLeastTLSv1_2.exit.thread

IsAtLeastTLSv1_2.exit:                            ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.m = tail call i32 @wc_Sha256GetHash(ptr noundef nonnull %i.l, ptr noundef %1) #27 ; 2 uses
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %bb.d, label %bb.f

bb.d:                                             ; preds = %IsAtLeastTLSv1_2.exit
  %i.n = load ptr, ptr %i.j, align 16, !tbaa !131
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = tail call i32 @wc_Sha384GetHash(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #27 ; 2 uses
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.j, align 16, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 640
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = tail call i32 @wc_Sha512GetHash(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #27 ; 2 uses
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %IsAtLeastTLSv1_2.exit.thread, label %bb.f

IsAtLeastTLSv1_2.exit.thread:                     ; preds = %bb.c, %bb.b, %bb.a, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %IsAtLeastTLSv1_2.exit, %IsAtLeastTLSv1_2.exit.thread
  %.015 = phi i32 [ 0, %IsAtLeastTLSv1_2.exit.thread ], [ %i.m, %IsAtLeastTLSv1_2.exit ], [ %i.q, %bb.d ], [ %i.u, %bb.e ]
  ret i32 %.015
}

declare i32 @wc_Sha256GetHash(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @wc_Sha384GetHash(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @wc_Sha512GetHash(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @FreeBuildMsgArgs(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !271 ; 3 uses
  %.not8 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not9 = icmp eq ptr %i.b, %i.c
  %or.cond = select i1 %.not8, i1 true, i1 %.not9
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.b) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare i32 @BuildTls13Message(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Encrypt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !470
  switch i8 %i.b, label %ForceZero.exit [
    i8 0, label %bb.b
    i8 1, label %bb.h
    i8 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.d = load i8, ptr %i.c, align 1, !tbaa !87
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.g = load i8, ptr %i.f, align 2, !tbaa !265
  switch i8 %i.g, label %.thread40 [
    i8 8, label %bb.d
    i8 7, label %bb.d
    i8 14, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !471
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @wolfSSL_Malloc(i64 noundef 13) #27 ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !471
  %i.l = icmp eq ptr %i.k, null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i1 [ %i.l, %bb.e ], [ false, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !472
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @wolfSSL_Malloc(i64 noundef 12) #27 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !472
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !471
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp eq ptr %.pre, null
  %brmerge = select i1 %i.s, i1 true, i1 %i.r
  br i1 %brmerge, label %bb.r, label %.thread40

.thread:                                          ; preds = %bb.f
  br i1 %i.m, label %bb.r, label %.thread40

.thread40:                                        ; preds = %bb.g, %.thread, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !470
  br label %bb.h

bb.h:                                             ; preds = %.thread40, %bb.a
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %EncryptDo.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.v = load i8, ptr %i.u, align 2, !tbaa !265
  switch i8 %i.v, label %EncryptDo.exit [
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.k
    i8 9, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = zext i16 %3 to i32
  %i.z = tail call i32 @wc_AesCbcEncrypt(ptr noundef %i.x, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.y) #27
  br label %EncryptDo.exit

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aa = zext i16 %3 to i32
  %i.ab = add nsw i32 %i.aa, -8                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !254
  %i.ae = trunc i32 %i.ab to i16
  %i.af = sub i16 %i.ae, %i.ad                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !471 ; 13 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 131072
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.l, label %writeAeadAuthData.exit.i

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1012 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !186 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !187 ; 3 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !187
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.m, label %writeAeadAuthData.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ar = add i32 %i.am, 1
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !186
  br label %writeAeadAuthData.exit.i

writeAeadAuthData.exit.i:                         ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.6.0.i.i.i = phi i32 [ 0, %bb.k ], [ -1, %bb.m ], [ %i.ao, %bb.l ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.k ], [ %i.am, %bb.m ], [ %i.am, %bb.l ] ; 4 uses
  %5 = lshr i32 %.sroa.0.0.i.i.i, 24
  %6 = trunc nuw i32 %5 to i8
  store i8 %6, ptr %i.ah, align 1, !tbaa !52
  %7 = lshr i32 %.sroa.0.0.i.i.i, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 %8, ptr %9, align 1, !tbaa !52
  %10 = lshr i32 %.sroa.0.0.i.i.i, 8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %11, ptr %12, align 1, !tbaa !52
  %13 = trunc i32 %.sroa.0.0.i.i.i to i8
  %14 = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %15 = lshr i32 %.sroa.6.0.i.i.i, 24
  %16 = trunc nuw i32 %15 to i8
  store i8 %16, ptr %i.as, align 1, !tbaa !52
  %17 = lshr i32 %.sroa.6.0.i.i.i, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store i8 %18, ptr %19, align 1, !tbaa !52
  %20 = lshr i32 %.sroa.6.0.i.i.i, 8
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i8 %21, ptr %22, align 1, !tbaa !52
  %23 = trunc i32 %.sroa.6.0.i.i.i to i8
  %24 = getelementptr inbounds nuw i8, ptr %i.ah, i64 7
  store i8 %23, ptr %24, align 1, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 %4, ptr %i.au, align 1, !tbaa !52
  %.in29.i.i = load i8, ptr %i.at, align 2, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  store i8 %.in29.i.i, ptr %i.av, align 1, !tbaa !52
  %.in30.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 727
  %.in30.i.i = load i8, ptr %.in30.in.i.i, align 1, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  store i8 %.in30.i.i, ptr %i.aw, align 1, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  %i.ay = lshr i16 %i.af, 8
  %i.az = trunc nuw i16 %i.ay to i8
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !52
  %i.ba = trunc i16 %i.af to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i16, ptr %i.ac, align 8, !tbaa !254 ; 2 uses
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = sub nsw i32 %i.ab, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !472
  %i.bl = zext i16 %3 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = zext i16 %i.bg to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bo
  %i.bq = load ptr, ptr %i.ag, align 8, !tbaa !471
  %i.br = tail call i32 @wc_AesGcmEncrypt_ex(ptr noundef %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, i32 noundef %i.bi, ptr noundef %i.bk, i32 noundef 12, ptr noundef %i.bp, i32 noundef %i.bh, ptr noundef %i.bq, i32 noundef 13) #27
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !472
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i64, ptr %i.bt, align 1
  store i64 %i.bu, ptr %1, align 1
  br label %EncryptDo.exit

bb.n:                                             ; preds = %bb.i
  %i.bv = tail call i32 @ChachaAEADEncrypt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, i16 noundef zeroext %3, i8 noundef zeroext %4)
  br label %EncryptDo.exit

EncryptDo.exit:                                   ; preds = %bb.h, %bb.i, %bb.j, %writeAeadAuthData.exit.i, %bb.n
  %.034.i = phi i32 [ -173, %bb.h ], [ %i.bv, %bb.n ], [ %i.z, %bb.j ], [ %i.br, %writeAeadAuthData.exit.i ], [ -314, %bb.i ]
  store i8 2, ptr %i.a, align 8, !tbaa !470
  br label %bb.o

bb.o:                                             ; preds = %EncryptDo.exit, %bb.a
  %.0 = phi i32 [ %.034.i, %EncryptDo.exit ], [ 0, %bb.a ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 738
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !265
  %.off = add i8 %i.bx, -7
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.p, label %ForceZero.exit

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !472 ; 16 uses
  %.not = icmp eq ptr %i.bz, null
  br i1 %.not, label %ForceZero.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  fence seq_cst
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = and i64 %i.ca, 7
  %.not19.i = icmp eq i64 %i.cb, 0
  br i1 %.not19.i, label %.preheader.i.thread53, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 3 uses
  store i8 0, ptr %i.bz, align 1, !tbaa !52
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = and i64 %i.cd, 7
  %.not.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i, label %.preheader.i.thread53, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 3 uses
  store i8 0, ptr %i.cc, align 1, !tbaa !52
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, 7
  %.not.i.1 = icmp eq i64 %i.ch, 0
  br i1 %.not.i.1, label %.preheader.i.thread53, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 3 ; 3 uses
  store i8 0, ptr %i.cf, align 1, !tbaa !52
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = and i64 %i.cj, 7
  %.not.i.2 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.2, label %.preheader.i.thread53, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  store i8 0, ptr %i.ci, align 1, !tbaa !52
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = and i64 %i.cm, 7
  %.not.i.3 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.3, label %.preheader.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 5 ; 3 uses
  store i8 0, ptr %i.cl, align 1, !tbaa !52
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = and i64 %i.cp, 7
  %.not.i.4 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.4, label %.lr.ph31.preheader.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 6 ; 3 uses
  store i8 0, ptr %i.co, align 1, !tbaa !52
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = and i64 %i.cs, 7
  %.not.i.5 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.5, label %.lr.ph31.preheader.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 7 ; 3 uses
  store i8 0, ptr %i.cr, align 1, !tbaa !52
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = and i64 %i.cv, 7
  %.not.i.6 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.6, label %.lr.ph31.preheader.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  store i8 0, ptr %i.cu, align 1, !tbaa !52
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 7
  %.not.i.7 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.7, label %.lr.ph31.preheader.i, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 9 ; 3 uses
  store i8 0, ptr %i.cx, align 1, !tbaa !52
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 7
  %.not.i.8 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.8, label %.lr.ph31.preheader.i, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bz, i64 10 ; 3 uses
  store i8 0, ptr %i.da, align 1, !tbaa !52
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = and i64 %i.de, 7
  %.not.i.9 = icmp eq i64 %i.df, 0
  br i1 %.not.i.9, label %.lr.ph31.preheader.i, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 11 ; 3 uses
  store i8 0, ptr %i.dd, align 1, !tbaa !52
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = and i64 %i.dh, 7
  %.not.i.10 = icmp eq i64 %i.di, 0
  br i1 %.not.i.10, label %.lr.ph31.preheader.i, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i8 0, ptr %i.dg, align 1, !tbaa !52
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, 7
  %.not.i.11 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.11, label %._crit_edge.i, label %ForceZero.exit

.preheader.i.thread53:                            ; preds = %bb.q, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2
  %.012.lcssa.i32.ph = phi ptr [ %i.ci, %.lr.ph.i.2 ], [ %i.cf, %.lr.ph.i.1 ], [ %i.cc, %.lr.ph.i.preheader ], [ %i.bz, %bb.q ] ; 2 uses
  %.013.lcssa.i31.ph = phi i64 [ 1, %.lr.ph.i.2 ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.preheader ], [ 4, %bb.q ]
  store i64 0, ptr %.012.lcssa.i32.ph, align 8
  %scevgep.i56 = getelementptr i8, ptr %.012.lcssa.i32.ph, i64 8
  br label %.lr.ph31.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.3
  store i64 0, ptr %i.cl, align 8
  br label %._crit_edge.i

.lr.ph31.preheader.i:                             ; preds = %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.lr.ph.i.8, %.lr.ph.i.9, %.lr.ph.i.10, %.preheader.i.thread53
  %.0.lcssa.i47 = phi ptr [ %scevgep.i56, %.preheader.i.thread53 ], [ %i.co, %.lr.ph.i.4 ], [ %i.cr, %.lr.ph.i.5 ], [ %i.cu, %.lr.ph.i.6 ], [ %i.cx, %.lr.ph.i.7 ], [ %i.da, %.lr.ph.i.8 ], [ %i.dd, %.lr.ph.i.9 ], [ %i.dg, %.lr.ph.i.10 ]
  %.114.lcssa.i46 = phi i64 [ %.013.lcssa.i31.ph, %.preheader.i.thread53 ], [ 7, %.lr.ph.i.4 ], [ 6, %.lr.ph.i.5 ], [ 5, %.lr.ph.i.6 ], [ 4, %.lr.ph.i.7 ], [ 3, %.lr.ph.i.8 ], [ 2, %.lr.ph.i.9 ], [ 1, %.lr.ph.i.10 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i47, i8 0, i64 %.114.lcssa.i46, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.11, %.preheader.i, %.lr.ph31.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i.11, %._crit_edge.i, %bb.o, %bb.a, %bb.p
  %.1 = phi i32 [ 0, %bb.a ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %._crit_edge.i ], [ %.0, %.lr.ph.i.11 ]
  store i8 0, ptr %i.a, align 8, !tbaa !470
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %.thread, %bb.b, %ForceZero.exit
  %.025 = phi i32 [ %.1, %ForceZero.exit ], [ -314, %bb.b ], [ -125, %.thread ], [ -125, %bb.g ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define i32 @SendFinished(ptr noundef initializes((1048, 1049)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
end_hunk_3
begin_hunk_4_@GetInputData:bb.a

bb.ax:                                            ; preds = %bb.aw
  %i.ds = load i64, ptr %i.a, align 16
  %i.dt = and i64 %i.ds, 131072
  %.not22.8.i = icmp eq i64 %i.dt, 0
  br i1 %.not22.8.i, label %bb.ay, label %.thread70

bb.ay:                                            ; preds = %bb.ax
  %i.du = load ptr, ptr %i.y, align 8, !tbaa !527
  %i.dv = load ptr, ptr %i.z, align 8, !tbaa !148
  %i.dw = tail call i32 %i.du(ptr noundef nonnull %0, ptr noundef %i.ae, i32 noundef range(i32 -65535, 65536) %.045, ptr noundef %i.dv) #27, !inline_history !525 ; 4 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %bb.az, label %.thread64

bb.az:                                            ; preds = %bb.ay
  switch i32 %i.dw, label %wolfSSLReceive.exit [
    i32 -1, label %.thread67
    i32 -2, label %bb.ba
    i32 -3, label %.thread67.sink.split
    i32 -4, label %.thread67
    i32 -5, label %.loopexit76
    i32 -6, label %.thread67
  ]

bb.ba:                                            ; preds = %bb.az
  %i.dy = load ptr, ptr %0, align 16, !tbaa !92
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 171
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = and i8 %i.ea, 1
  %.not.9.i = icmp eq i8 %i.eb, 0
  br i1 %.not.9.i, label %.thread70, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ec = load i8, ptr %i.aa, align 8, !tbaa !190
  %.not21.9.i = icmp eq i8 %i.ec, 0
  br i1 %.not21.9.i, label %bb.bc, label %.thread70

bb.bc:                                            ; preds = %bb.bb
  %i.ed = load i64, ptr %i.a, align 16
  %i.ee = and i64 %i.ed, 131072
  %.not22.9.i = icmp eq i64 %i.ee, 0
  br i1 %.not22.9.i, label %bb.bd, label %.thread70

bb.bd:                                            ; preds = %bb.bc
  %i.ef = load ptr, ptr %i.y, align 8, !tbaa !527
  %i.eg = load ptr, ptr %i.z, align 8, !tbaa !148
  %i.eh = tail call i32 %i.ef(ptr noundef nonnull %0, ptr noundef %i.ae, i32 noundef range(i32 -65535, 65536) %.045, ptr noundef %i.eg) #27, !inline_history !525 ; 4 uses
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.be, label %.thread64

bb.be:                                            ; preds = %bb.bd
  switch i32 %i.eh, label %wolfSSLReceive.exit [
    i32 -1, label %.thread67
    i32 -2, label %.thread70
    i32 -3, label %.thread67.sink.split
    i32 -4, label %.thread67
    i32 -5, label %.loopexit76
    i32 -6, label %.thread67
  ]

bb.bf:                                            ; preds = %.lr.ph.i
  %i.ej = load ptr, ptr %0, align 16, !tbaa !92
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 171
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = and i8 %i.el, 1
  %.not.i = icmp eq i8 %i.em, 0
  br i1 %.not.i, label %.thread70, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.en = load i8, ptr %i.aa, align 8, !tbaa !190
  %.not21.i = icmp eq i8 %i.en, 0
  br i1 %.not21.i, label %bb.bh, label %.thread70

bb.bh:                                            ; preds = %bb.bg
  %i.eo = load i64, ptr %i.a, align 16
  %i.ep = and i64 %i.eo, 131072
  %.not22.i = icmp eq i64 %i.ep, 0
  br i1 %.not22.i, label %bb.k, label %.thread70

.loopexit76:                                      ; preds = %bb.az, %bb.au, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.v, %bb.q, %bb.l, %.lr.ph.i, %bb.be
  br label %.thread67.sink.split

wolfSSLReceive.exit:                              ; preds = %.lr.ph.i, %bb.l, %bb.q, %bb.v, %bb.aa, %bb.af, %bb.ak, %bb.ap, %bb.au, %bb.az, %bb.be
  %.018.ph.i = phi i32 [ %i.eh, %bb.be ], [ %i.ce, %bb.af ], [ %i.cp, %bb.ak ], [ %i.bi, %bb.v ], [ %i.da, %bb.ap ], [ %i.am, %bb.l ], [ %i.ai, %.lr.ph.i ], [ %i.bt, %bb.aa ], [ %i.dw, %bb.az ], [ %i.ax, %bb.q ], [ %i.dl, %bb.au ]
  %i.eq = icmp eq i32 %.018.ph.i, -323
  %spec.select = select i1 %i.eq, i32 -323, i32 -308
  br label %.thread70

.thread67.sink.split:                             ; preds = %.lr.ph.i, %bb.l, %bb.q, %bb.v, %bb.aa, %bb.af, %bb.ak, %bb.ap, %bb.au, %bb.az, %bb.be, %.loopexit76
  %.sink104 = phi i64 [ 524288, %.loopexit76 ], [ 262144, %bb.be ], [ 262144, %bb.az ], [ 262144, %bb.au ], [ 262144, %bb.ap ], [ 262144, %bb.ak ], [ 262144, %bb.af ], [ 262144, %bb.aa ], [ 262144, %bb.v ], [ 262144, %bb.q ], [ 262144, %bb.l ], [ 262144, %.lr.ph.i ]
  %i.er = load i64, ptr %i.a, align 16
  %i.es = or i64 %i.er, %.sink104
  store i64 %i.es, ptr %i.a, align 16
  br label %.thread67

.thread67:                                        ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %bb.l, %bb.l, %bb.l, %bb.q, %bb.q, %bb.q, %bb.v, %bb.v, %bb.v, %bb.aa, %bb.aa, %bb.aa, %bb.af, %bb.af, %bb.af, %bb.ak, %bb.ak, %bb.ak, %bb.ap, %bb.ap, %bb.ap, %bb.au, %bb.au, %bb.au, %bb.az, %bb.az, %bb.az, %bb.j, %.thread67.sink.split, %bb.be, %bb.be, %bb.be
  br label %.thread70

.thread64:                                        ; preds = %bb.k, %bb.ao, %bb.z, %bb.ay, %bb.aj, %bb.bd, %bb.p, %bb.ae, %bb.u, %bb.at, %.preheader.i
  %.018.i5666 = phi i32 [ %i.ai, %.preheader.i ], [ %i.dl, %bb.at ], [ %i.bi, %bb.u ], [ %i.ce, %bb.ae ], [ %i.ax, %bb.p ], [ %i.eh, %bb.bd ], [ %i.cp, %bb.aj ], [ %i.dw, %bb.ay ], [ %i.bt, %bb.z ], [ %i.da, %bb.ao ], [ %i.am, %bb.k ] ; 3 uses
  %i.et = icmp samesign ugt i32 %.018.i5666, %.045
  br i1 %i.et, label %.thread70, label %bb.bi

bb.bi:                                            ; preds = %.thread64
  %i.eu = load i32, ptr %i.d, align 16, !tbaa !173
  %i.ev = add i32 %i.eu, %.018.i5666              ; 3 uses
  store i32 %i.ev, ptr %i.d, align 16, !tbaa !173
  %i.ew = sub nuw nsw i32 %.045, %.018.i5666
  %i.ex = icmp ult i32 %i.ev, %1
  br i1 %i.ex, label %bb.j, label %.thread70, !llvm.loop !526

.thread70:                                        ; preds = %bb.aw, %bb.av, %bb.bb, %bb.as, %bb.ar, %bb.aq, %bb.bc, %bb.an, %bb.am, %bb.al, %bb.ai, %bb.ah, %bb.ag, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.w, %bb.ba, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.ax, %bb.bg, %bb.bf, %bb.bh, %.thread64, %bb.bi, %wolfSSLReceive.exit, %bb.be, %.thread67, %bb.e, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ -125, %bb.e ], [ -323, %bb.a ], [ -328, %bb.b ], [ 0, %bb.c ], [ -308, %.thread67 ], [ -323, %bb.be ], [ %spec.select, %wolfSSLReceive.exit ], [ -323, %bb.aw ], [ -323, %bb.av ], [ -323, %bb.bb ], [ -323, %bb.as ], [ -323, %bb.ar ], [ -323, %bb.aq ], [ -323, %bb.bc ], [ -323, %bb.an ], [ -323, %bb.am ], [ -323, %bb.al ], [ -323, %bb.ai ], [ -323, %bb.ah ], [ -323, %bb.ag ], [ -323, %bb.ad ], [ -323, %bb.ac ], [ -323, %bb.ab ], [ -323, %bb.y ], [ -323, %bb.x ], [ -323, %bb.w ], [ -323, %bb.ba ], [ -323, %bb.t ], [ -323, %bb.s ], [ -323, %bb.r ], [ -323, %bb.o ], [ -323, %bb.n ], [ -323, %bb.m ], [ -323, %bb.ax ], [ -323, %bb.bg ], [ -323, %bb.bf ], [ -323, %bb.bh ], [ -376, %.thread64 ], [ 0, %bb.bi ]
  ret i32 %.2
}

declare i32 @DoTls13HandShakeMsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @DecryptTls(ptr noundef initializes((336, 337)) %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  store i8 0, ptr %i.a, align 16, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.c = load i8, ptr %i.b, align 1, !tbaa !88
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 738 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !265   ; 2 uses
  switch i8 %i.f, label %bb.g [
    i8 8, label %bb.c
    i8 7, label %bb.c
    i8 14, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !528
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @wolfSSL_Malloc(i64 noundef 13) #27 ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !528
  %i.k = icmp eq ptr %i.j, null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i1 [ %i.k, %bb.d ], [ false, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !529
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @wolfSSL_Malloc(i64 noundef 12) #27 ; 2 uses
  store ptr %i.p, ptr %i.m, align 16, !tbaa !529
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !528
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp eq ptr %.pre, null
  %brmerge = select i1 %i.r, i1 true, i1 %i.q
  br i1 %brmerge, label %bb.p, label %thread-pre-split

.thread:                                          ; preds = %bb.e
  br i1 %i.l, label %bb.p, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f, %.thread
  %.pr = load i8, ptr %i.e, align 2, !tbaa !265
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.b
  %i.s = phi i8 [ %.pr, %thread-pre-split ], [ %i.f, %bb.b ]
  store i8 1, ptr %i.a, align 16, !tbaa !147
  switch i8 %i.s, label %DecryptDo.exit [
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !83
  %i.v = zext i16 %3 to i32
  %i.w = tail call i32 @wc_AesCbcDecrypt(ptr noundef %i.u, ptr noundef %1, ptr noundef %2, i32 noundef %i.v) #27
  br label %DecryptDo.exit

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.x = zext i16 %3 to i32
  %i.y = add nsw i32 %i.x, -8                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 16, !tbaa !254
  %i.ab = trunc i32 %i.y to i16
  %i.ac = sub i16 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !528 ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ag = load i64, ptr %i.af, align 16
  %i.ah = and i64 %i.ag, 131072
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.j, label %writeAeadAuthData.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !184 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !185 ; 3 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 16, !tbaa !185
  %i.an = icmp eq i32 %i.al, -1
  br i1 %i.an, label %bb.k, label %writeAeadAuthData.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = add i32 %i.aj, 1
  store i32 %i.ao, ptr %i.ai, align 4, !tbaa !184
  br label %writeAeadAuthData.exit.i

writeAeadAuthData.exit.i:                         ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.6.0.i.i.i = phi i32 [ 0, %bb.i ], [ -1, %bb.k ], [ %i.al, %bb.j ] ; 4 uses
  %.sroa.0.0.i.i.i = phi i32 [ 0, %bb.i ], [ %i.aj, %bb.k ], [ %i.aj, %bb.j ] ; 4 uses
  %4 = lshr i32 %.sroa.0.0.i.i.i, 24
  %5 = trunc nuw i32 %4 to i8
  store i8 %5, ptr %i.ae, align 1, !tbaa !52
  %6 = lshr i32 %.sroa.0.0.i.i.i, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !52
  %9 = lshr i32 %.sroa.0.0.i.i.i, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !52
  %12 = trunc i32 %.sroa.0.0.i.i.i to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %14 = lshr i32 %.sroa.6.0.i.i.i, 24
  %15 = trunc nuw i32 %14 to i8
  store i8 %15, ptr %i.ap, align 1, !tbaa !52
  %16 = lshr i32 %.sroa.6.0.i.i.i, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  store i8 %17, ptr %18, align 1, !tbaa !52
  %19 = lshr i32 %.sroa.6.0.i.i.i, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i8 %20, ptr %21, align 1, !tbaa !52
  %22 = trunc i32 %.sroa.6.0.i.i.i to i8
  %23 = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  store i8 %22, ptr %23, align 1, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 717
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !256
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 718
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !52
  %.in29.i.i = load i8, ptr %i.as, align 2, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  store i8 %.in29.i.i, ptr %i.au, align 1, !tbaa !52
  %.in30.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 719
  %.in30.i.i = load i8, ptr %.in30.in.i.i, align 1, !tbaa !52
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  store i8 %.in30.i.i, ptr %i.av, align 1, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 11
  %i.ax = lshr i16 %i.ac, 8
  %i.ay = trunc nuw i16 %i.ax to i8
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !52
  %i.az = trunc i16 %i.ac to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 16, !tbaa !529
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.bf = load i32, ptr %i.be, align 16
  store i32 %i.bf, ptr %i.bd, align 1
  %i.bg = load ptr, ptr %i.bc, align 16, !tbaa !529
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i64, ptr %2, align 1
  store i64 %i.bi, ptr %i.bh, align 1
  %i.bj = load ptr, ptr %i.bb, align 16, !tbaa !83
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load i16, ptr %i.z, align 16, !tbaa !254 ; 2 uses
  %i.bn = zext i16 %i.bm to i32                   ; 2 uses
  %i.bo = sub nsw i32 %i.y, %i.bn
  %i.bp = load ptr, ptr %i.bc, align 16, !tbaa !529
  %i.bq = zext i16 %3 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %i.bs = zext i16 %i.bm to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 %i.bt
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !528
  %i.bw = tail call i32 @wc_AesGcmDecrypt(ptr noundef %i.bj, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i32 noundef %i.bo, ptr noundef %i.bp, i32 noundef 12, ptr noundef nonnull %i.bu, i32 noundef %i.bn, ptr noundef %i.bv, i32 noundef 13) #27
  br label %DecryptDo.exit

bb.l:                                             ; preds = %bb.g
  %i.bx = tail call i32 @ChachaAEADDecrypt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3)
  br label %DecryptDo.exit

DecryptDo.exit:                                   ; preds = %bb.g, %bb.h, %writeAeadAuthData.exit.i, %bb.l
  %.1.i = phi i32 [ %i.bx, %bb.l ], [ %i.w, %bb.h ], [ %i.bw, %writeAeadAuthData.exit.i ], [ -312, %bb.g ] ; 3 uses
  store i8 2, ptr %i.a, align 16, !tbaa !147
  %i.by = load i8, ptr %i.e, align 2, !tbaa !265
  %.off = add i8 %i.by, -7
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.m, label %bb.o

bb.m:                                             ; preds = %DecryptDo.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !529 ; 16 uses
  %.not = icmp eq ptr %i.ca, null
  br i1 %.not, label %ForceZero.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  fence seq_cst
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = and i64 %i.cb, 7
  %.not19.i = icmp eq i64 %i.cc, 0
  br i1 %.not19.i, label %.preheader.i.thread51, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 3 uses
  store i8 0, ptr %i.ca, align 1, !tbaa !52
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = and i64 %i.ce, 7
  %.not.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i, label %.preheader.i.thread51, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 3 uses
  store i8 0, ptr %i.cd, align 1, !tbaa !52
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, 7
  %.not.i.1 = icmp eq i64 %i.ci, 0
  br i1 %.not.i.1, label %.preheader.i.thread51, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 3 uses
  store i8 0, ptr %i.cg, align 1, !tbaa !52
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 7
  %.not.i.2 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.2, label %.preheader.i.thread51, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 3 uses
  store i8 0, ptr %i.cj, align 1, !tbaa !52
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = and i64 %i.cn, 7
  %.not.i.3 = icmp eq i64 %i.co, 0
  br i1 %.not.i.3, label %.preheader.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 5 ; 3 uses
  store i8 0, ptr %i.cm, align 1, !tbaa !52
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = and i64 %i.cq, 7
  %.not.i.4 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.4, label %.lr.ph31.preheader.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 6 ; 3 uses
  store i8 0, ptr %i.cp, align 1, !tbaa !52
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 7
  %.not.i.5 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.5, label %.lr.ph31.preheader.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 7 ; 3 uses
  store i8 0, ptr %i.cs, align 1, !tbaa !52
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 7
  %.not.i.6 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.6, label %.lr.ph31.preheader.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  store i8 0, ptr %i.cv, align 1, !tbaa !52
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = and i64 %i.cz, 7
  %.not.i.7 = icmp eq i64 %i.da, 0
  br i1 %.not.i.7, label %.lr.ph31.preheader.i, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 9 ; 3 uses
  store i8 0, ptr %i.cy, align 1, !tbaa !52
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = and i64 %i.dc, 7
  %.not.i.8 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.8, label %.lr.ph31.preheader.i, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 10 ; 3 uses
  store i8 0, ptr %i.db, align 1, !tbaa !52
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, 7
  %.not.i.9 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.9, label %.lr.ph31.preheader.i, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 11 ; 3 uses
  store i8 0, ptr %i.de, align 1, !tbaa !52
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = and i64 %i.di, 7
  %.not.i.10 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.10, label %.lr.ph31.preheader.i, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i8 0, ptr %i.dh, align 1, !tbaa !52
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, 7
  %.not.i.11 = icmp eq i64 %i.dm, 0
  br i1 %.not.i.11, label %._crit_edge.i, label %ForceZero.exit

.preheader.i.thread51:                            ; preds = %bb.n, %.lr.ph.i.preheader, %.lr.ph.i.1, %.lr.ph.i.2
  %.012.lcssa.i32.ph = phi ptr [ %i.cj, %.lr.ph.i.2 ], [ %i.cg, %.lr.ph.i.1 ], [ %i.cd, %.lr.ph.i.preheader ], [ %i.ca, %bb.n ] ; 2 uses
  %.013.lcssa.i31.ph = phi i64 [ 1, %.lr.ph.i.2 ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.preheader ], [ 4, %bb.n ]
  store i64 0, ptr %.012.lcssa.i32.ph, align 8
  %scevgep.i54 = getelementptr i8, ptr %.012.lcssa.i32.ph, i64 8
  br label %.lr.ph31.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.3
  store i64 0, ptr %i.cm, align 8
  br label %._crit_edge.i

.lr.ph31.preheader.i:                             ; preds = %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.lr.ph.i.8, %.lr.ph.i.9, %.lr.ph.i.10, %.preheader.i.thread51
  %.0.lcssa.i45 = phi ptr [ %scevgep.i54, %.preheader.i.thread51 ], [ %i.cp, %.lr.ph.i.4 ], [ %i.cs, %.lr.ph.i.5 ], [ %i.cv, %.lr.ph.i.6 ], [ %i.cy, %.lr.ph.i.7 ], [ %i.db, %.lr.ph.i.8 ], [ %i.de, %.lr.ph.i.9 ], [ %i.dh, %.lr.ph.i.10 ]
  %.114.lcssa.i44 = phi i64 [ %.013.lcssa.i31.ph, %.preheader.i.thread51 ], [ 7, %.lr.ph.i.4 ], [ 6, %.lr.ph.i.5 ], [ 5, %.lr.ph.i.6 ], [ 4, %.lr.ph.i.7 ], [ 3, %.lr.ph.i.8 ], [ 2, %.lr.ph.i.9 ], [ 1, %.lr.ph.i.10 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.lcssa.i45, i8 0, i64 %.114.lcssa.i44, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.11, %.preheader.i, %.lr.ph31.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i.11, %._crit_edge.i, %bb.m
  %i.dn = icmp slt i32 %.1.i, 0
  %spec.store.select = select i1 %i.dn, i32 -305, i32 %.1.i
  br label %bb.o

bb.o:                                             ; preds = %DecryptDo.exit, %ForceZero.exit
  %.1 = phi i32 [ %.1.i, %DecryptDo.exit ], [ %spec.store.select, %ForceZero.exit ]
  store i8 0, ptr %i.a, align 16, !tbaa !147
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %.thread, %bb.a, %bb.o
  %.025 = phi i32 [ %.1, %bb.o ], [ -312, %bb.a ], [ -125, %.thread ], [ -125, %bb.f ]
  ret i32 %.025
}

declare i32 @DecryptTls13(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

declare i32 @wc_AesCbcDecrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_AesGcmDecrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_AesCbcEncrypt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_AesGcmEncrypt_ex(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @BuildTlsFinished(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @Tls13UpdateKeys(ptr noundef) local_unnamed_addr #6

declare i32 @wolfSSL_SSL_CTX_remove_session(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @wc_RsaPrivateKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_EccPrivateKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_ecc_sig_size(ptr noundef) local_unnamed_addr #6

declare ptr @wc_Dh_ffdhe2048_Get() local_unnamed_addr #6

declare i32 @wc_ecc_import_x963_ex2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_DhSetCheckKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i32 @wc_DhSetKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @wc_ecc_export_x963(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @wc_HashGetDigestSize(i32 noundef) local_unnamed_addr #6

declare i32 @wc_Hash(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @TLSX_ValidateSupportedCurves(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

declare i32 @TLSX_KeyShare_Choose(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !81}
!1 = distinct !{!1, !81}
!2 = distinct !{!2, !81}
!3 = distinct !{!3, !81}
!4 = distinct !{!4, !81}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS11WOLFSSL_CTX", !13, i64 0}
!15 = !{!"p1 _ZTS6Suites", !13, i64 0}
!16 = !{!"p1 _ZTS6Arrays", !13, i64 0}
!17 = !{!"p1 _ZTS9HS_Hashes", !13, i64 0}
!18 = !{!"p1 _ZTS6WC_RNG", !13, i64 0}
!19 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !13, i64 0}
!20 = !{!"p1 _ZTS7WOLFSSL", !13, i64 0}
!21 = !{!"WOLFSSL_CIPHER", !9, i64 0, !9, i64 1, !20, i64 8}
!22 = !{!"p1 _ZTS3Aes", !13, i64 0}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"p1 _ZTS6ChaCha", !13, i64 0}
!25 = !{!"Ciphers", !22, i64 0, !23, i64 8, !23, i64 16, !24, i64 24, !9, i64 32, !9, i64 33}
!26 = !{!"", !9, i64 0, !23, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !9, i64 28, !9, i64 29}
!27 = !{!"WOLFSSL_BUFFER_INFO", !23, i64 0, !10, i64 8}
!28 = !{!"p1 _ZTS5DhKey", !13, i64 0}
!29 = !{!"p1 _ZTS9DerBuffer", !13, i64 0}
!30 = !{!"Buffers", !26, i64 0, !26, i64 32, !27, i64 64, !27, i64 80, !27, i64 96, !27, i64 112, !27, i64 128, !10, i64 144, !10, i64 148, !9, i64 152, !9, i64 153, !9, i64 154, !9, i64 155, !27, i64 160, !27, i64 176, !27, i64 192, !27, i64 208, !28, i64 224, !29, i64 232, !29, i64 240, !9, i64 248, !9, i64 249, !9, i64 249, !10, i64 252, !10, i64 256, !29, i64 264, !10, i64 272, !9, i64 280}
!31 = !{!"p1 _ZTS15WOLFSSL_SESSION", !13, i64 0}
!32 = !{!"p1 _ZTS13ClientSession", !13, i64 0}
!33 = !{!"WOLFSSL_ALERT", !10, i64 0, !10, i64 4}
!34 = !{!"WOLFSSL_ALERT_HISTORY", !33, i64 0, !33, i64 8}
!35 = !{!"short", !9, i64 0}
!36 = !{!"RecordLayerHeader", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3}
!37 = !{!"MsgsReceived", !35, i64 0, !35, i64 0, !35, i64 0, !35, i64 0, !35, i64 0, !35, i64 0, !35, i64 0, !35, i64 1, !35, i64 1, !35, i64 1, !35, i64 1, !35, i64 1, !35, i64 1, !35, i64 1, !35, i64 1, !35, i64 2, !35, i64 2, !35, i64 2}
!38 = !{!"ProtocolVersion", !9, i64 0, !9, i64 1}
!39 = !{!"CipherSpecs", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!40 = !{!"Keys", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 208, !9, i64 224, !9, i64 232, !9, i64 244, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !9, i64 280, !9, i64 281, !9, i64 282, !9, i64 283}
!41 = !{!"long", !9, i64 0}
!42 = !{!"Options", !41, i64 0, !35, i64 8, !35, i64 8, !35, i64 8, !35, i64 8, !35, i64 8, !35, i64 8, !35, i64 9, !35, i64 9, !35, i64 9, !35, i64 9, !35, i64 9, !35, i64 9, !35, i64 9, !35, i64 9, !35, i64 10, !35, i64 10, !35, i64 10, !35, i64 10, !35, i64 10, !35, i64 10, !35, i64 10, !35, i64 10, !35, i64 11, !35, i64 11, !35, i64 11, !35, i64 11, !35, i64 11, !35, i64 11, !35, i64 11, !35, i64 11, !35, i64 12, !35, i64 12, !35, i64 12, !35, i64 12, !35, i64 12, !35, i64 12, !35, i64 12, !35, i64 12, !35, i64 13, !35, i64 13, !35, i64 13, !35, i64 13, !35, i64 13, !35, i64 13, !35, i64 13, !35, i64 13, !35, i64 14, !35, i64 14, !35, i64 14, !35, i64 14, !35, i64 14, !35, i64 14, !35, i64 14, !35, i64 14, !35, i64 15, !35, i64 15, !35, i64 15, !35, i64 15, !35, i64 15, !35, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !35, i64 40, !35, i64 42, !35, i64 44, !35, i64 46, !35, i64 48, !9, i64 50}
!43 = !{!"p1 _ZTS6RsaKey", !13, i64 0}
!44 = !{!"p1 _ZTS7ecc_key", !13, i64 0}
!45 = !{!"p1 _ZTS8Poly1305", !13, i64 0}
!46 = !{!"OneTimeAuth", !45, i64 0, !9, i64 8}
!47 = !{!"p1 _ZTS4TLSX", !13, i64 0}
!48 = !{!"WOLFSSL", !14, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !9, i64 32, !9, i64 80, !17, i64 128, !13, i64 136, !13, i64 144, !18, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !19, i64 216, !13, i64 224, !10, i64 232, !21, i64 240, !13, i64 256, !25, i64 264, !25, i64 304, !30, i64 352, !31, i64 640, !32, i64 648, !34, i64 656, !33, i64 672, !10, i64 680, !10, i64 684, !10, i64 688, !10, i64 692, !10, i64 696, !10, i64 700, !10, i64 704, !35, i64 708, !10, i64 712, !9, i64 716, !36, i64 717, !37, i64 722, !38, i64 726, !38, i64 728, !39, i64 730, !40, i64 748, !42, i64 1032, !43, i64 1088, !9, i64 1096, !9, i64 1097, !35, i64 1098, !9, i64 1100, !9, i64 1172, !35, i64 1174, !35, i64 1176, !9, i64 1178, !10, i64 1308, !10, i64 1312, !44, i64 1320, !9, i64 1328, !9, i64 1329, !44, i64 1336, !44, i64 1344, !35, i64 1352, !9, i64 1354, !10, i64 1356, !9, i64 1360, !10, i64 1364, !46, i64 1368, !47, i64 1384, !35, i64 1392, !10, i64 1396}
!49 = !{!48, !9, i64 726}
!50 = !{!48, !9, i64 727}
!51 = !{!48, !9, i64 1028}
!52 = !{!9, !9, i64 0}
!53 = !{!"WOLFSSL_METHOD", !38, i64 0, !9, i64 2, !9, i64 3}
!54 = !{!53, !9, i64 2}
!55 = !{!53, !9, i64 3}
!56 = !{!10, !10, i64 0}
!57 = !{!"p1 _ZTS14WOLFSSL_METHOD", !13, i64 0}
!58 = !{!"wolfSSL_RefWithMutex", !9, i64 0, !10, i64 40}
!59 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !13, i64 0}
!60 = !{!"WOLFSSL_CTX", !57, i64 0, !58, i64 8, !10, i64 56, !27, i64 64, !27, i64 80, !29, i64 96, !29, i64 104, !10, i64 112, !29, i64 120, !9, i64 128, !9, i64 129, !9, i64 129, !10, i64 132, !10, i64 136, !59, i64 144, !15, i64 152, !13, i64 160, !9, i64 168, !9, i64 169, !9, i64 169, !9, i64 169, !9, i64 169, !9, i64 169, !9, i64 169, !9, i64 169, !9, i64 170, !9, i64 170, !9, i64 170, !9, i64 170, !9, i64 170, !9, i64 170, !9, i64 170, !9, i64 170, !9, i64 171, !9, i64 171, !9, i64 171, !9, i64 172, !9, i64 173, !9, i64 173, !9, i64 173, !9, i64 173, !9, i64 173, !9, i64 173, !35, i64 173, !35, i64 173, !35, i64 174, !35, i64 176, !35, i64 178, !9, i64 180, !35, i64 182, !41, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !10, i64 224, !10, i64 228, !35, i64 232, !10, i64 236, !9, i64 240, !9, i64 312, !13, i64 320, !13, i64 328, !10, i64 336, !47, i64 344, !9, i64 352}
!61 = !{!60, !57, i64 0}
!62 = !{!60, !13, i64 160}
!63 = !{!60, !10, i64 224}
!64 = !{!60, !9, i64 172}
!65 = !{!60, !35, i64 178}
!66 = !{!60, !35, i64 182}
!67 = !{!60, !35, i64 232}
!68 = !{!60, !9, i64 168}
!69 = !{!60, !10, i64 336}
!70 = !{!60, !59, i64 144}
!71 = !{!53, !9, i64 0}
!72 = !{!53, !9, i64 1}
!73 = !{!60, !15, i64 152}
!74 = !{!60, !23, i64 80}
!75 = !{!60, !23, i64 64}
!76 = !{!60, !29, i64 120}
!77 = !{!"DerBuffer", !23, i64 0, !13, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!78 = !{!77, !23, i64 0}
!79 = !{!77, !10, i64 16}
!80 = !{!41, !41, i64 0}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!48, !22, i64 264}
!83 = !{!48, !22, i64 304}
!84 = !{!48, !24, i64 288}
!85 = !{!48, !24, i64 328}
!86 = !{!48, !45, i64 1368}
!87 = !{!48, !9, i64 297}
!88 = !{!48, !9, i64 337}
!89 = !{!48, !9, i64 1376}
!90 = !{!35, !35, i64 0}
!91 = !{!48, !15, i64 8}
!92 = !{!48, !14, i64 0}
!93 = !{!"Suites", !35, i64 0, !35, i64 2, !9, i64 4, !9, i64 304, !9, i64 432}
!94 = !{!93, !35, i64 0}
!95 = !{!93, !35, i64 2}
!96 = !{!"WOLFSSL_X509_NAME", !23, i64 0, !10, i64 8, !10, i64 12, !9, i64 16, !13, i64 272}
!97 = !{!96, !23, i64 0}
!98 = !{!96, !13, i64 272}
!99 = !{!96, !10, i64 8}
!100 = !{!"WOLFSSL_ASN1_TIME", !9, i64 0, !10, i64 32, !10, i64 36}
!101 = !{!"p1 _ZTS9DNS_entry", !13, i64 0}
!102 = !{!"p1 _ZTS10Base_entry", !13, i64 0}
!103 = !{!"WOLFSSL_X509", !10, i64 0, !10, i64 4, !100, i64 8, !100, i64 48, !27, i64 88, !10, i64 104, !101, i64 112, !102, i64 120, !102, i64 128, !9, i64 136, !27, i64 144, !10, i64 160, !101, i64 168, !10, i64 176, !29, i64 184, !13, i64 192, !9, i64 200, !9, i64 201, !9, i64 202, !9, i64 234, !96, i64 496, !96, i64 776}
!104 = !{!103, !13, i64 192}
!105 = !{!48, !9, i64 743}
!106 = !{!48, !18, i64 152}
!107 = !{!23, !23, i64 0}
!108 = !{!48, !10, i64 1308}
!109 = !{!"p1 _ZTS12ecc_set_type", !13, i64 0}
!110 = !{!"ecc_point", !9, i64 0, !9, i64 1040, !9, i64 2080, !9, i64 3120}
!111 = !{!"ecc_key", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !109, i64 16, !13, i64 24, !110, i64 32, !9, i64 3160, !18, i64 4200}
!112 = !{!111, !109, i64 16}
!113 = !{!48, !35, i64 1352}
!114 = !{!48, !10, i64 1312}
!115 = !{!"ecc_set_type", !10, i64 0, !10, i64 4, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !10, i64 72, !10, i64 76, !10, i64 80}
!116 = !{!115, !10, i64 0}
!117 = !{!115, !10, i64 4}
!118 = !{!115, !10, i64 76}
!119 = !{!48, !35, i64 1098}
!120 = !{!48, !29, i64 584}
!121 = !{!48, !29, i64 592}
!122 = !{!48, !10, i64 700}
!123 = !{!48, !13, i64 168}
!124 = !{!48, !9, i64 1065}
!125 = !{!48, !35, i64 1078}
!126 = !{!48, !35, i64 1080}
!127 = !{!48, !29, i64 616}
!128 = !{!48, !9, i64 600}
!129 = !{!13, !13, i64 0}
!130 = !{!48, !9, i64 716}
!131 = !{!48, !17, i64 128}
!132 = !{!48, !13, i64 176}
!133 = !{!48, !10, i64 1364}
!134 = !{!48, !16, i64 24}
!135 = !{!"Arrays", !23, i64 0, !23, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !9, i64 28, !9, i64 60, !9, i64 92, !9, i64 124, !9, i64 125, !9, i64 173, !9, i64 221}
!136 = !{!135, !10, i64 16}
!137 = !{!135, !23, i64 8}
!138 = !{!48, !31, i64 640}
!139 = !{!"wolfSSL_Ref", !10, i64 0}
!140 = !{!"WOLFSSL_SESSION", !10, i64 0, !10, i64 4, !139, i64 8, !9, i64 12, !9, i64 44, !13, i64 48, !9, i64 56, !10, i64 60, !10, i64 64, !9, i64 68, !9, i64 100, !9, i64 101, !35, i64 150, !38, i64 152, !9, i64 154, !9, i64 155, !35, i64 156, !9, i64 158, !35, i64 178, !9, i64 180}
!141 = !{!48, !23, i64 360}
!142 = !{!48, !10, i64 376}
!143 = !{!48, !23, i64 392}
!144 = !{!48, !10, i64 408}
!145 = !{!48, !9, i64 1062}
!146 = !{!48, !9, i64 1052}
!147 = !{!48, !9, i64 336}
!148 = !{!48, !13, i64 136}
!149 = !{!48, !13, i64 144}
!150 = !{!48, !13, i64 256}
!151 = !{!135, !9, i64 124}
!152 = !{!140, !9, i64 100}
!153 = !{!135, !23, i64 0}
!154 = !{!48, !19, i64 216}
!155 = !{!"WOLFSSL_ASYNC", !13, i64 0, !9, i64 8}
!156 = !{!155, !13, i64 0}
end_hunk_4
