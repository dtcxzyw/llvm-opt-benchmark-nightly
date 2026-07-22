inline.NumInlined: 242
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@allocEPZScolocated:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.c, align 4, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = sdiv i32 %1, 4
  %i.g = sdiv i32 %0, 4                           ; 3 uses
  %i.h = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.e, i32 noundef 2, i32 noundef %i.f, i32 noundef %i.g, i32 noundef 2) #13 ; 0 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = sdiv i32 %1, 8                           ; 2 uses
  %i.k = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.i, i32 noundef 2, i32 noundef %i.j, i32 noundef %i.g, i32 noundef 2) #13 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.l, i32 noundef 2, i32 noundef %i.j, i32 noundef %i.g, i32 noundef 2) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 %2, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare i32 @get_mem4Dshort(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @freeEPZScolocated(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15
  %i.e = sdiv i32 %i.d, 4
  tail call void @free_mem4Dshort(ptr noundef %i.b, i32 noundef 2, i32 noundef %i.e) #13
  %i.f = load i32, ptr %0, align 8, !tbaa !16
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load i32, ptr %i.c, align 8, !tbaa !15
  %i.j = sdiv i32 %i.i, 8
  tail call void @free_mem4Dshort(ptr noundef %i.h, i32 noundef 2, i32 noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = load i32, ptr %i.c, align 8, !tbaa !15
  %i.n = sdiv i32 %i.m, 8
  tail call void @free_mem4Dshort(ptr noundef %i.l, i32 noundef 2, i32 noundef %i.n) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

declare void @free_mem4Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @allocEPZSpattern(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !20
  %i.c = sext i32 %0 to i64
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 16) #12
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @freeEPZSpattern(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.b) #13
  tail call void @free(ptr noundef nonnull %0) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assignEPZSpattern(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !20
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [192 x i8], ptr @pattern_data, i64 %i.c
  %i.e = load i32, ptr @mv_rescale, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.l = load <2 x i32>, ptr %i.j, align 16, !tbaa !4
  %i.m = ashr <2 x i32> %i.l, %i.i
  store <2 x i32> %i.m, ptr %i.k, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load <2 x i32>, ptr %i.n, align 8, !tbaa !4
  store <2 x i32> %i.p, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !20
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %bb.b, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.u, align 4, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.v, align 8, !tbaa !28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @EPZSWindowPredictorInit(i16 noundef signext %0, ptr nofree noundef captures(none) %1, i16 noundef signext %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i32 0, i32 2            ; 3 uses
  %i.e = icmp eq i16 %2, 0
  %i.f = sext i16 %0 to i32                       ; 4 uses
  %i.g = mul nsw i32 %i.f, %i.f                   ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader157

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi i32 [ %i.h, %.preheader ], [ 0, %bb.a ] ; 3 uses
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = shl nuw i32 2, %.0.i
  %.not.i = icmp sgt i32 %i.i, %i.g
  br i1 %.not.i, label %RoundLog2.exit, label %.preheader, !llvm.loop !35

RoundLog2.exit:                                   ; preds = %.preheader
  %i.j = icmp samesign ugt i32 %.0.i, 2
  br i1 %i.j, label %.lr.ph142, label %.loopexit

.lr.ph142:                                        ; preds = %RoundLog2.exit
  %i.k = lshr i32 %i.h, 1
  %i.l = add nsw i32 %i.k, -2
  %i.m = shl nsw i32 %i.f, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph142, %bb.b
  %indvars.iv157 = phi i32 [ 0, %.lr.ph142 ], [ %indvars.iv.next158, %bb.b ] ; 3 uses
  %.0141 = phi i32 [ %i.l, %.lr.ph142 ], [ %i.aj, %bb.b ] ; 3 uses
  %3 = sext i32 %indvars.iv157 to i64             ; 2 uses
  %i.p = ashr i32 %i.m, %.0141                    ; 8 uses
  %i.q = getelementptr [16 x i8], ptr %i.o, i64 %3 ; 8 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !4
  %i.s = getelementptr i8, ptr %i.q, i64 16
  store i32 %i.p, ptr %i.s, align 4, !tbaa !4
  %i.t = getelementptr i8, ptr %i.q, i64 20
  store i32 %i.p, ptr %i.t, align 4, !tbaa !4
  %i.u = getelementptr i8, ptr %i.q, i64 32
  store i32 0, ptr %i.u, align 4, !tbaa !4
  %i.v = getelementptr i8, ptr %i.q, i64 36
  store i32 %i.p, ptr %i.v, align 4, !tbaa !4
  %i.w = sub nsw i32 0, %i.p
  %i.x = getelementptr i8, ptr %i.q, i64 48
  store i32 %i.w, ptr %i.x, align 4, !tbaa !4
  %i.y = getelementptr i8, ptr %i.q, i64 52
  store i32 %i.p, ptr %i.y, align 4, !tbaa !4
  %i.z = sub nsw i32 0, %i.p                      ; 5 uses
  %i.aa = getelementptr [16 x i8], ptr %i.o, i64 %3 ; 8 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 64
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr i8, ptr %i.aa, i64 68
  store i32 0, ptr %i.ac, align 4, !tbaa !4
  %i.ad = getelementptr i8, ptr %i.aa, i64 80
  store i32 %i.z, ptr %i.ad, align 4, !tbaa !4
  %i.ae = getelementptr i8, ptr %i.aa, i64 84
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr i8, ptr %i.aa, i64 96
  store i32 0, ptr %i.af, align 4, !tbaa !4
  %i.ag = getelementptr i8, ptr %i.aa, i64 100
  store i32 %i.z, ptr %i.ag, align 4, !tbaa !4
  %i.ah = getelementptr i8, ptr %i.aa, i64 112
  store i32 %i.p, ptr %i.ah, align 4, !tbaa !4
  %i.ai = getelementptr i8, ptr %i.aa, i64 116
  store i32 %i.z, ptr %i.ai, align 4, !tbaa !4
  %i.aj = add nsw i32 %.0141, -1
  %.not156 = icmp eq i32 %.0141, 0
  %indvars.iv.next158 = add i32 %indvars.iv157, 8
  br i1 %.not156, label %.loopexit.loopexit, label %bb.b, !llvm.loop !36

.preheader157:                                    ; preds = %bb.a, %.preheader157
  %.0.i127 = phi i32 [ %i.ak, %.preheader157 ], [ 0, %bb.a ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0.i127, 1             ; 2 uses
  %i.al = shl nuw i32 2, %.0.i127
  %.not.i128 = icmp sgt i32 %i.al, %i.g
  br i1 %.not.i128, label %RoundLog2.exit129, label %.preheader157, !llvm.loop !35

RoundLog2.exit129:                                ; preds = %.preheader157
  %i.am = icmp samesign ugt i32 %.0.i127, 2
  br i1 %i.am, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %RoundLog2.exit129
  %i.an = lshr i32 %i.ak, 1
  %i.ao = add nsw i32 %i.an, -2
  %i.ap = shl nsw i32 %i.f, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !23 ; 4 uses
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader.preheader
  %indvars.iv152 = phi i32 [ 8, %.lr.ph ], [ %indvars.iv.next153, %.preheader.preheader ] ; 3 uses
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %.preheader.preheader ] ; 2 uses
  %.1137 = phi i32 [ %i.ao, %.lr.ph ], [ %i.cq, %.preheader.preheader ] ; 3 uses
  %4 = sext i32 %indvars.iv152 to i64             ; 2 uses
  %5 = sext i32 %indvars.iv to i64                ; 2 uses
  %i.as = ashr i32 %i.ap, %.1137                  ; 13 uses
  %i.at = getelementptr [16 x i8], ptr %i.ar, i64 %5 ; 8 uses
  store i32 %i.as, ptr %i.at, align 4, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !4
  %i.av = getelementptr i8, ptr %i.at, i64 16
  store i32 %i.as, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr i8, ptr %i.at, i64 20
  store i32 %i.as, ptr %i.aw, align 4, !tbaa !4
  %i.ax = getelementptr i8, ptr %i.at, i64 32
  store i32 0, ptr %i.ax, align 4, !tbaa !4
  %i.ay = getelementptr i8, ptr %i.at, i64 36
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !4
  %i.az = sub nsw i32 0, %i.as                    ; 3 uses
  %i.ba = getelementptr i8, ptr %i.at, i64 48
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr i8, ptr %i.at, i64 52
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !4
  %i.bc = sub nsw i32 0, %i.as                    ; 7 uses
  %i.bd = getelementptr [16 x i8], ptr %i.ar, i64 %5 ; 8 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 64
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !4
  %i.bf = getelementptr i8, ptr %i.bd, i64 68
  store i32 0, ptr %i.bf, align 4, !tbaa !4
  %i.bg = getelementptr i8, ptr %i.bd, i64 80
  store i32 %i.bc, ptr %i.bg, align 4, !tbaa !4
  %i.bh = getelementptr i8, ptr %i.bd, i64 84
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !4
  %i.bi = getelementptr i8, ptr %i.bd, i64 96
  store i32 0, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr i8, ptr %i.bd, i64 100
  store i32 %i.bc, ptr %i.bj, align 4, !tbaa !4
  %i.bk = getelementptr i8, ptr %i.bd, i64 112
  store i32 %i.as, ptr %i.bk, align 4, !tbaa !4
  %i.bl = getelementptr i8, ptr %i.bd, i64 116
  store i32 %i.bc, ptr %i.bl, align 4, !tbaa !4
  %i.bm = mul nsw i32 %i.as, 3
  %i.bn = add nsw i32 %i.bm, 1
  %i.bo = shl nsw i32 %i.bn, %i.d
  %i.bp = ashr i32 %i.bo, 1                       ; 7 uses
  %i.bq = getelementptr [16 x i8], ptr %i.ar, i64 %4 ; 12 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.az, ptr %i.br, align 4, !tbaa !4
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  store i32 %i.bp, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr i8, ptr %i.bq, i64 20
  store i32 0, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr i8, ptr %i.bq, i64 32
  store i32 %i.bp, ptr %i.bu, align 4, !tbaa !4
  %i.bv = getelementptr i8, ptr %i.bq, i64 36
  store i32 %i.as, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr i8, ptr %i.bq, i64 48
  store i32 %i.as, ptr %i.bw, align 4, !tbaa !4
  %i.bx = getelementptr i8, ptr %i.bq, i64 52
  store i32 %i.bp, ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr i8, ptr %i.bq, i64 64
  store i32 0, ptr %i.by, align 4, !tbaa !4
  %i.bz = getelementptr i8, ptr %i.bq, i64 68
  store i32 %i.bp, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr i8, ptr %i.bq, i64 80
  store i32 %i.az, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr i8, ptr %i.bq, i64 84
  store i32 %i.bp, ptr %i.cb, align 4, !tbaa !4
  %i.cc = sub nsw i32 0, %i.bp                    ; 6 uses
  %i.cd = getelementptr [16 x i8], ptr %i.ar, i64 %4 ; 12 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 96
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !4
  %i.cf = getelementptr i8, ptr %i.cd, i64 100
  store i32 %i.as, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr i8, ptr %i.cd, i64 112
  store i32 %i.cc, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr i8, ptr %i.cd, i64 116
  store i32 0, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr i8, ptr %i.cd, i64 128
  store i32 %i.cc, ptr %i.ci, align 4, !tbaa !4
  %i.cj = getelementptr i8, ptr %i.cd, i64 132
  store i32 %i.bc, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr i8, ptr %i.cd, i64 144
  store i32 %i.bc, ptr %i.ck, align 4, !tbaa !4
  %i.cl = getelementptr i8, ptr %i.cd, i64 148
  store i32 %i.cc, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr i8, ptr %i.cd, i64 160
  store i32 0, ptr %i.cm, align 4, !tbaa !4
  %i.cn = getelementptr i8, ptr %i.cd, i64 164
  store i32 %i.cc, ptr %i.cn, align 4, !tbaa !4
  %i.co = getelementptr i8, ptr %i.cd, i64 176
  store i32 %i.as, ptr %i.co, align 4, !tbaa !4
  %i.cp = getelementptr i8, ptr %i.cd, i64 180
  store i32 %i.cc, ptr %i.cp, align 4, !tbaa !4
  %i.cq = add nsw i32 %.1137, -1
  %.not155 = icmp eq i32 %.1137, 0
  %indvars.iv.next = add i32 %indvars.iv, 20
  %indvars.iv.next153 = add i32 %indvars.iv152, 20
  br i1 %.not155, label %.loopexit.loopexit144, label %.preheader.preheader, !llvm.loop !37

.loopexit.loopexit:                               ; preds = %bb.b
  %indvars.iv.next160.1 = add i32 %indvars.iv157, 8
  br label %.loopexit

.loopexit.loopexit144:                            ; preds = %.preheader.preheader
  %indvars.iv.next155.1 = add i32 %indvars.iv152, 12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit144, %.loopexit.loopexit, %RoundLog2.exit129, %RoundLog2.exit
  %.5 = phi i32 [ %indvars.iv.next160.1, %.loopexit.loopexit ], [ 0, %RoundLog2.exit ], [ 0, %RoundLog2.exit129 ], [ %indvars.iv.next155.1, %.loopexit.loopexit144 ]
  store i32 %.5, ptr %1, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EPZSInit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15444
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %i.d = load ptr, ptr @input, align 8, !tbaa !29 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !52   ; 4 uses
  %i.g = mul nsw i32 %i.f, %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]   ; 2 uses
  %i.h = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.i = shl nuw i32 2, %.0.i
  %.not.i = icmp sgt i32 %i.i, %i.g
  br i1 %.not.i, label %RoundLog2.exit, label %bb.b, !llvm.loop !35

RoundLog2.exit:                                   ; preds = %bb.b
  %i.j = add nsw i32 %i.c, -8                     ; 20 uses
  %i.k = lshr i32 %i.h, 1
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 2120
  %i.n = load i32, ptr %i.m, align 8, !tbaa !53
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %RoundLog2.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2128
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %i.q = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %i.p)
  br label %bb.d

bb.d:                                             ; preds = %RoundLog2.exit, %bb.c
  %.sink = phi i32 [ %i.q, %bb.c ], [ %i.f, %RoundLog2.exit ]
  %i.r = shl nsw i32 %.sink, 1
  %i.s = or disjoint i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4120
  %i.u = load i32, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = shl nsw i32 %i.u, 1
  %i.w = shl i32 %i.s, %i.v
  store i32 %i.w, ptr @searcharray, align 4, !tbaa !4
  %.not22 = icmp eq i32 %i.u, 0
  %i.x = select i1 %.not22, i32 2, i32 0
  store i32 %i.x, ptr @mv_rescale, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4116
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 4112
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4108
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !57 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58 ; 5 uses
  store i32 0, ptr @medthres, align 16, !tbaa !4
  store i32 0, ptr @maxthres, align 16, !tbaa !4
  store i32 0, ptr @minthres, align 16, !tbaa !4
  store i32 0, ptr @subthres, align 16, !tbaa !4
  %i.ag = shl nsw i32 %i.z, 8
  %i.ah = shl i32 %i.ag, %i.j
  store i32 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 4), align 4, !tbaa !4
  %i.ai = mul nsw i32 %i.ab, 768
  %i.aj = shl i32 %i.ai, %i.j
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 4), align 4, !tbaa !4
  %i.ak = shl nsw i32 %i.ad, 6
  %i.al = shl i32 %i.ak, %i.j
  store i32 %i.al, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 4), align 4, !tbaa !4
  %i.am = shl nsw i32 %i.af, 8
  %i.an = shl i32 %i.am, %i.j
  store i32 %i.an, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 4), align 4, !tbaa !4
  %i.ao = shl nsw i32 %i.z, 7
  %i.ap = shl i32 %i.ao, %i.j                     ; 2 uses
  store i32 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 8), align 8, !tbaa !4
  %i.aq = mul nsw i32 %i.ab, 384
  %i.ar = shl i32 %i.aq, %i.j                     ; 2 uses
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 8), align 8, !tbaa !4
  %i.as = shl nsw i32 %i.ad, 5
  %i.at = shl i32 %i.as, %i.j                     ; 2 uses
  store i32 %i.at, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 8), align 8, !tbaa !4
  %i.au = shl nsw i32 %i.af, 7
  %i.av = shl i32 %i.au, %i.j                     ; 2 uses
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 8), align 8, !tbaa !4
  store i32 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 12), align 4, !tbaa !4
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 12), align 4, !tbaa !4
  store i32 %i.at, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 12), align 4, !tbaa !4
  store i32 %i.av, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 12), align 4, !tbaa !4
  %i.aw = shl nsw i32 %i.z, 6
  %i.ax = shl i32 %i.aw, %i.j
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 16), align 16, !tbaa !4
  %i.ay = mul nsw i32 %i.ab, 192
  %i.az = shl i32 %i.ay, %i.j
  store i32 %i.az, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 16), align 16, !tbaa !4
  %i.ba = shl nsw i32 %i.ad, 4
  %i.bb = shl i32 %i.ba, %i.j
  store i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 16), align 16, !tbaa !4
  %i.bc = shl nsw i32 %i.af, 6
  %i.bd = shl i32 %i.bc, %i.j
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 16), align 16, !tbaa !4
  %i.be = shl nsw i32 %i.z, 5
  %i.bf = shl i32 %i.be, %i.j                     ; 2 uses
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 20), align 4, !tbaa !4
  %i.bg = mul nsw i32 %i.ab, 96
  %i.bh = shl i32 %i.bg, %i.j                     ; 2 uses
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 20), align 4, !tbaa !4
  %i.bi = shl nsw i32 %i.ad, 3
  %i.bj = shl i32 %i.bi, %i.j                     ; 2 uses
  store i32 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 20), align 4, !tbaa !4
  %i.bk = shl nsw i32 %i.af, 5
  %i.bl = shl i32 %i.bk, %i.j                     ; 2 uses
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 20), align 4, !tbaa !4
  store i32 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 24), align 8, !tbaa !4
  store i32 %i.bh, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 24), align 8, !tbaa !4
  store i32 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 24), align 8, !tbaa !4
  store i32 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 24), align 8, !tbaa !4
  %i.bm = shl nsw i32 %i.z, 4
  %i.bn = shl i32 %i.bm, %i.j
  store i32 %i.bn, ptr getelementptr inbounds nuw (i8, ptr @medthres, i64 28), align 4, !tbaa !4
  %i.bo = mul nsw i32 %i.ab, 48
  %i.bp = shl i32 %i.bo, %i.j
  store i32 %i.bp, ptr getelementptr inbounds nuw (i8, ptr @maxthres, i64 28), align 4, !tbaa !4
  %i.bq = shl nsw i32 %i.ad, 2
  %i.br = shl i32 %i.bq, %i.j
  store i32 %i.br, ptr getelementptr inbounds nuw (i8, ptr @minthres, i64 28), align 4, !tbaa !4
  %i.bs = shl nsw i32 %i.af, 4
  %i.bt = shl i32 %i.bs, %i.j
  store i32 %i.bt, ptr getelementptr inbounds nuw (i8, ptr @subthres, i64 28), align 4, !tbaa !4
  %i.bu = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 8 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.d
  store i32 4, ptr %i.bu, align 8, !tbaa !20
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #12 ; 14 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !23
  store ptr %i.bu, ptr @sdiamond, align 8, !tbaa !59
  %i.by = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 2 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !4
  %i.bz = lshr i32 4, %i.by                       ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 3, ptr %i.cb, align 4, !tbaa !60
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 3, ptr %i.cc, align 4, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 %i.bz, ptr %i.cd, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  store <4 x i32> <i32 0, i32 0, i32 3, i32 0>, ptr %i.ce, align 4, !tbaa !4
  %i.cf = ashr i32 -4, %i.by                      ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 1, ptr %i.ch, align 4, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  store i32 3, ptr %i.ci, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  store i32 %i.cf, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  store i32 0, ptr %i.ck, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  store i32 2, ptr %i.cl, align 4, !tbaa !60
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  store i32 3, ptr %i.cm, align 4, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i32 1, ptr %i.cn, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i32 1, ptr %i.co, align 4, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bu, ptr %i.cp, align 8, !tbaa !28
  %i.cq = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 8 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.f, label %.lr.ph.i26

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.f, %.lr.ph.i
  store i32 8, ptr %i.cq, align 8, !tbaa !20
  %i.cs = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #12 ; 33 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !23
  store ptr %i.cq, ptr @square, align 8, !tbaa !59
  %i.cu = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 2 uses
  store i32 0, ptr %i.cs, align 4, !tbaa !4
  %i.cv = lshr i32 4, %i.cu                       ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 7, ptr %i.cx, align 4, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
end_hunk_0
begin_hunk_1_@EPZSInit:bb.a
  store i32 4, ptr %i.jm, align 4, !tbaa !60
  %i.jn = getelementptr inbounds nuw i8, ptr %i.if, i64 108
  store i32 12, ptr %i.jn, align 4, !tbaa !62
  %i.jo = getelementptr inbounds nuw i8, ptr %i.if, i64 112
  store i32 %i.ix, ptr %i.jo, align 4, !tbaa !4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.if, i64 116
  store i32 %i.in, ptr %i.jp, align 4, !tbaa !4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.if, i64 120
  store i32 6, ptr %i.jq, align 4, !tbaa !60
  %i.jr = getelementptr inbounds nuw i8, ptr %i.if, i64 124
  store i32 12, ptr %i.jr, align 4, !tbaa !62
  %i.js = getelementptr inbounds nuw i8, ptr %i.if, i64 128
  store i32 0, ptr %i.js, align 4, !tbaa !4
  %i.jt = lshr i32 2, %i.ii                       ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.if, i64 132
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !4
  %i.jv = getelementptr inbounds nuw i8, ptr %i.if, i64 136
  store i32 6, ptr %i.jv, align 4, !tbaa !60
  %i.jw = getelementptr inbounds nuw i8, ptr %i.if, i64 140
  store i32 12, ptr %i.jw, align 4, !tbaa !62
  %i.jx = getelementptr inbounds nuw i8, ptr %i.if, i64 144
  store i32 %i.jt, ptr %i.jx, align 4, !tbaa !4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.if, i64 148
  store <4 x i32> <i32 0, i32 0, i32 12, i32 0>, ptr %i.jy, align 4, !tbaa !4
  %i.jz = ashr i32 -2, %i.ii                      ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.if, i64 164
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.if, i64 168
  store i32 2, ptr %i.kb, align 4, !tbaa !60
  %i.kc = getelementptr inbounds nuw i8, ptr %i.if, i64 172
  store i32 12, ptr %i.kc, align 4, !tbaa !62
  %i.kd = getelementptr inbounds nuw i8, ptr %i.if, i64 176
  store i32 %i.jz, ptr %i.kd, align 4, !tbaa !4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.if, i64 180
  store i32 0, ptr %i.ke, align 4, !tbaa !4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.if, i64 184
  store i32 4, ptr %i.kf, align 4, !tbaa !60
  %i.kg = getelementptr inbounds nuw i8, ptr %i.if, i64 188
  store i32 12, ptr %i.kg, align 4, !tbaa !62
  %i.kh = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store i32 0, ptr %i.kh, align 8, !tbaa !26
  %i.ki = getelementptr inbounds nuw i8, ptr %i.id, i64 20
  store i32 1, ptr %i.ki, align 4, !tbaa !27
  %i.kj = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  store ptr %i.ih, ptr %i.kj, align 8, !tbaa !28
  %i.kk = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 7 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.j, label %.lr.ph.i46

bb.j:                                             ; preds = %.lr.ph.i41
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.j, %.lr.ph.i41
  store i32 8, ptr %i.kk, align 8, !tbaa !20
  %i.km = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 8, i64 noundef 16) #12 ; 33 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !23
  store ptr %i.kk, ptr @pmvfast, align 8, !tbaa !59
  %i.ko = load ptr, ptr @sdiamond, align 8, !tbaa !59
  %i.kp = load i32, ptr @mv_rescale, align 4, !tbaa !4 ; 4 uses
  store i32 0, ptr %i.km, align 4, !tbaa !4
  %i.kq = lshr i32 8, %i.kp                       ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store i32 6, ptr %i.ks, align 4, !tbaa !60
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 12
  store i32 5, ptr %i.kt, align 4, !tbaa !62
  %i.ku = lshr i32 4, %i.kp                       ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 20
  store i32 %i.ku, ptr %i.kw, align 4, !tbaa !4
  %i.kx = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  store i32 0, ptr %i.kx, align 4, !tbaa !60
  %i.ky = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  store i32 3, ptr %i.ky, align 4, !tbaa !62
  %i.kz = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  store i32 %i.kq, ptr %i.kz, align 4, !tbaa !4
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 36
  store i32 0, ptr %i.la, align 4, !tbaa !4
  %i.lb = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  store i32 0, ptr %i.lb, align 4, !tbaa !60
  %i.lc = getelementptr inbounds nuw i8, ptr %i.km, i64 44
  store i32 5, ptr %i.lc, align 4, !tbaa !62
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  store i32 %i.ku, ptr %i.ld, align 4, !tbaa !4
  %i.le = ashr i32 -4, %i.kp                      ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.km, i64 52
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  store i32 2, ptr %i.lg, align 4, !tbaa !60
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 60
  store i32 3, ptr %i.lh, align 4, !tbaa !62
  %i.li = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  store i32 0, ptr %i.li, align 4, !tbaa !4
  %i.lj = ashr i32 -8, %i.kp                      ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.km, i64 68
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  store i32 2, ptr %i.ll, align 4, !tbaa !60
  %i.lm = getelementptr inbounds nuw i8, ptr %i.km, i64 76
  store i32 5, ptr %i.lm, align 4, !tbaa !62
  %i.ln = getelementptr inbounds nuw i8, ptr %i.km, i64 80
  store i32 %i.le, ptr %i.ln, align 4, !tbaa !4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.km, i64 84
  store i32 %i.le, ptr %i.lo, align 4, !tbaa !4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.km, i64 88
  store i32 4, ptr %i.lp, align 4, !tbaa !60
  %i.lq = getelementptr inbounds nuw i8, ptr %i.km, i64 92
  store i32 3, ptr %i.lq, align 4, !tbaa !62
  %i.lr = getelementptr inbounds nuw i8, ptr %i.km, i64 96
  store i32 %i.lj, ptr %i.lr, align 4, !tbaa !4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.km, i64 100
  store i32 0, ptr %i.ls, align 4, !tbaa !4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.km, i64 104
  store i32 4, ptr %i.lt, align 4, !tbaa !60
  %i.lu = getelementptr inbounds nuw i8, ptr %i.km, i64 108
  store i32 5, ptr %i.lu, align 4, !tbaa !62
  %i.lv = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  store i32 %i.le, ptr %i.lv, align 4, !tbaa !4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.km, i64 116
  store i32 %i.ku, ptr %i.lw, align 4, !tbaa !4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.km, i64 120
  store i32 6, ptr %i.lx, align 4, !tbaa !60
  %i.ly = getelementptr inbounds nuw i8, ptr %i.km, i64 124
  store i32 3, ptr %i.ly, align 4, !tbaa !62
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i32 0, ptr %i.lz, align 8, !tbaa !26
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  store i32 1, ptr %i.ma, align 4, !tbaa !27
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store ptr %i.ko, ptr %i.mb, align 8, !tbaa !28
  %i.mc = shl nsw i32 %i.l, 3                     ; 2 uses
  %i.md = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %bb.k, label %allocEPZSpattern.exit50

bb.k:                                             ; preds = %.lr.ph.i46
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %allocEPZSpattern.exit50

allocEPZSpattern.exit50:                          ; preds = %.lr.ph.i46, %bb.k
  store i32 %i.mc, ptr %i.md, align 8, !tbaa !20
  %i.mf = sext i32 %i.mc to i64
  %i.mg = tail call noalias ptr @calloc(i64 noundef %i.mf, i64 noundef 16) #12
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr %i.mg, ptr %i.mh, align 8, !tbaa !23
  store ptr %i.md, ptr @window_predictor, align 8, !tbaa !59
  %i.mi = mul nsw i32 %i.l, 20                    ; 3 uses
  %i.mj = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 5 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.l, label %allocEPZSpattern.exit51

bb.l:                                             ; preds = %allocEPZSpattern.exit50
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  %.pre = load ptr, ptr @window_predictor, align 8, !tbaa !59
  br label %allocEPZSpattern.exit51

allocEPZSpattern.exit51:                          ; preds = %allocEPZSpattern.exit50, %bb.l
  %i.ml = phi ptr [ %i.md, %allocEPZSpattern.exit50 ], [ %.pre, %bb.l ] ; 2 uses
  store i32 %i.mi, ptr %i.mj, align 8, !tbaa !20
  %i.mm = sext i32 %i.mi to i64
  %i.mn = tail call noalias ptr @calloc(i64 noundef %i.mm, i64 noundef 16) #12
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !23
  store ptr %i.mj, ptr @window_predictor_extended, align 8, !tbaa !59
  %i.mp = load ptr, ptr @input, align 8, !tbaa !29 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 28 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !52 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 4120
  %i.mt = load i32, ptr %i.ms, align 8, !tbaa !30
  %sext = shl i32 %i.mr, 16
  %i.mu = ashr exact i32 %sext, 16                ; 3 uses
  %i.mv = mul nsw i32 %i.mu, %i.mu
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %allocEPZSpattern.exit51
  %.0.i.i = phi i32 [ %i.mw, %bb.m ], [ 0, %allocEPZSpattern.exit51 ] ; 3 uses
  %i.mw = add nuw nsw i32 %.0.i.i, 1              ; 2 uses
  %i.mx = shl nuw i32 2, %.0.i.i
  %.not.i.i = icmp sgt i32 %i.mx, %i.mv
  br i1 %.not.i.i, label %RoundLog2.exit.i, label %bb.m, !llvm.loop !35

RoundLog2.exit.i:                                 ; preds = %bb.m
  %i.my = icmp samesign ugt i32 %.0.i.i, 2
  br i1 %i.my, label %.lr.ph142.i, label %EPZSWindowPredictorInit.exit

.lr.ph142.i:                                      ; preds = %RoundLog2.exit.i
  %.not.i52 = icmp eq i32 %i.mt, 0
  %i.mz = select i1 %.not.i52, i32 0, i32 2
  %i.na = lshr i32 %i.mw, 1
  %i.nb = add nsw i32 %i.na, -2
  %i.nc = shl nsw i32 %i.mu, %i.mz
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph142.i
  %indvars.iv157.i = phi i32 [ 0, %.lr.ph142.i ], [ %indvars.iv.next158.i, %bb.n ] ; 2 uses
  %.0141.i = phi i32 [ %i.nb, %.lr.ph142.i ], [ %i.nx, %bb.n ] ; 3 uses
  %0 = sext i32 %indvars.iv157.i to i64
  %i.nf = ashr i32 %i.nc, %.0141.i                ; 7 uses
  %i.ng = getelementptr [16 x i8], ptr %i.ne, i64 %0 ; 16 uses
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store i32 0, ptr %i.nh, align 4, !tbaa !4
  %i.ni = getelementptr i8, ptr %i.ng, i64 16
  store i32 %i.nf, ptr %i.ni, align 4, !tbaa !4
  %i.nj = getelementptr i8, ptr %i.ng, i64 20
  store i32 %i.nf, ptr %i.nj, align 4, !tbaa !4
  %i.nk = getelementptr i8, ptr %i.ng, i64 32
  store i32 0, ptr %i.nk, align 4, !tbaa !4
  %i.nl = getelementptr i8, ptr %i.ng, i64 36
  store i32 %i.nf, ptr %i.nl, align 4, !tbaa !4
  %i.nm = sub nsw i32 0, %i.nf                    ; 6 uses
  %i.nn = getelementptr i8, ptr %i.ng, i64 48
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !4
  %i.no = getelementptr i8, ptr %i.ng, i64 52
  store i32 %i.nf, ptr %i.no, align 4, !tbaa !4
  %i.np = getelementptr i8, ptr %i.ng, i64 64
  store i32 %i.nm, ptr %i.np, align 4, !tbaa !4
  %i.nq = getelementptr i8, ptr %i.ng, i64 68
  store i32 0, ptr %i.nq, align 4, !tbaa !4
  %i.nr = getelementptr i8, ptr %i.ng, i64 80
  store i32 %i.nm, ptr %i.nr, align 4, !tbaa !4
  %i.ns = getelementptr i8, ptr %i.ng, i64 84
  store i32 %i.nm, ptr %i.ns, align 4, !tbaa !4
  %i.nt = getelementptr i8, ptr %i.ng, i64 96
  store i32 0, ptr %i.nt, align 4, !tbaa !4
  %i.nu = getelementptr i8, ptr %i.ng, i64 100
  store i32 %i.nm, ptr %i.nu, align 4, !tbaa !4
  %i.nv = getelementptr i8, ptr %i.ng, i64 112
  store i32 %i.nf, ptr %i.nv, align 4, !tbaa !4
  %i.nw = getelementptr i8, ptr %i.ng, i64 116
  store i32 %i.nm, ptr %i.nw, align 4, !tbaa !4
  %i.nx = add nsw i32 %.0141.i, -1
  %.not156.i = icmp eq i32 %.0141.i, 0
  %indvars.iv.next158.i = add i32 %indvars.iv157.i, 8 ; 2 uses
  br i1 %.not156.i, label %.loopexit.loopexit.i, label %bb.n, !llvm.loop !36

.loopexit.loopexit.i:                             ; preds = %bb.n
  %.pre59 = load i32, ptr %i.mq, align 4, !tbaa !52
  br label %EPZSWindowPredictorInit.exit

EPZSWindowPredictorInit.exit:                     ; preds = %.loopexit.loopexit.i, %RoundLog2.exit.i
  %i.ny = phi i32 [ %i.mr, %RoundLog2.exit.i ], [ %.pre59, %.loopexit.loopexit.i ]
  %.5.i = phi i32 [ 0, %RoundLog2.exit.i ], [ %indvars.iv.next158.i, %.loopexit.loopexit.i ]
  store i32 %.5.i, ptr %i.ml, align 8, !tbaa !20
  %i.nz = trunc i32 %i.ny to i16
  tail call void @EPZSWindowPredictorInit(i16 noundef signext %i.nz, ptr noundef nonnull %i.mj, i16 noundef signext 1)
  %i.oa = add nsw i32 %i.mi, 10
  %i.ob = load ptr, ptr @input, align 8, !tbaa !29 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4100
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !63
  %i.oe = mul nsw i32 %i.od, 9
  %i.of = add nsw i32 %i.oa, %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 4104
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !64
  %i.oi = mul nsw i32 %i.oh, 3
  %i.oj = add nsw i32 %i.of, %i.oi                ; 2 uses
  %i.ok = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 4 uses
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %bb.o, label %allocEPZSpattern.exit53

bb.o:                                             ; preds = %EPZSWindowPredictorInit.exit
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #13
  br label %allocEPZSpattern.exit53

allocEPZSpattern.exit53:                          ; preds = %EPZSWindowPredictorInit.exit, %bb.o
  store i32 %i.oj, ptr %i.ok, align 8, !tbaa !20
  %i.om = sext i32 %i.oj to i64
  %i.on = tail call noalias ptr @calloc(i64 noundef %i.om, i64 noundef 16) #12
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !23
  store ptr %i.ok, ptr @predictor, align 8, !tbaa !59
  %i.op = load ptr, ptr @img, align 8, !tbaa !29
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 52
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !65
  %i.os = sdiv i32 %i.or, 4
  %i.ot = tail call i32 @get_mem3Dint(ptr noundef nonnull @EPZSDistortion, i32 noundef 6, i32 noundef 7, i32 noundef %i.os) #13
  %i.ou = load i32, ptr @searcharray, align 4, !tbaa !4 ; 2 uses
  %i.ov = tail call i32 @get_mem2Dshort(ptr noundef nonnull @EPZSMap, i32 noundef %i.ou, i32 noundef %i.ou) #13
  %i.ow = add nsw i32 %i.ov, %i.ot                ; 2 uses
  %i.ox = load ptr, ptr @input, align 8, !tbaa !29 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4104
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !64
  %.not23 = icmp eq i32 %i.oz, 0
  br i1 %.not23, label %bb.q, label %bb.p

bb.p:                                             ; preds = %allocEPZSpattern.exit53
  %i.pa = load ptr, ptr @img, align 8, !tbaa !29  ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !66
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 52
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !65
  %i.pf = sdiv i32 %i.pe, 4
  %i.pg = tail call i32 @get_mem6Dshort(ptr noundef nonnull @EPZSMotion, i32 noundef 6, i32 noundef %i.pc, i32 noundef 7, i32 noundef 4, i32 noundef %i.pf, i32 noundef 2) #13
  %i.ph = add nsw i32 %i.pg, %i.ow
  %.pre60 = load ptr, ptr @input, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %allocEPZSpattern.exit53
  %i.pi = phi ptr [ %.pre60, %bb.p ], [ %i.ox, %allocEPZSpattern.exit53 ] ; 2 uses
  %.021 = phi i32 [ %i.ph, %bb.p ], [ %i.ow, %allocEPZSpattern.exit53 ]
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 4100
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !63
  %.not24 = icmp eq i32 %i.pk, 0
  br i1 %.not24, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.pl = load ptr, ptr @img, align 8, !tbaa !29  ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 52
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !65 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 68
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !67 ; 3 uses
  %i.pq = load ptr, ptr @active_sps, align 8, !tbaa !29
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 1152
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !68 ; 2 uses
  %i.pt = tail call noalias dereferenceable_or_null(40) ptr @calloc(i64 noundef 1, i64 noundef 40) #12 ; 8 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  store i32 %i.pn, ptr %i.pv, align 4, !tbaa !8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store i32 %i.pp, ptr %i.pw, align 8, !tbaa !15
  %i.px = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.py = sdiv i32 %i.pp, 4
  %i.pz = sdiv i32 %i.pn, 4                       ; 3 uses
  %i.qa = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.px, i32 noundef 2, i32 noundef %i.py, i32 noundef %i.pz, i32 noundef 2) #13 ; 0 uses
  %.not.i54 = icmp eq i32 %i.ps, 0
  br i1 %.not.i54, label %allocEPZScolocated.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.qc = sdiv i32 %i.pp, 8                       ; 2 uses
  %i.qd = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.qb, i32 noundef 2, i32 noundef %i.qc, i32 noundef %i.pz, i32 noundef 2) #13 ; 0 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pt, i64 32
  %i.qf = tail call i32 @get_mem4Dshort(ptr noundef nonnull %i.qe, i32 noundef 2, i32 noundef %i.qc, i32 noundef %i.pz, i32 noundef 2) #13 ; 0 uses
  br label %allocEPZScolocated.exit

allocEPZScolocated.exit:                          ; preds = %bb.t, %bb.u
  store i32 %i.ps, ptr %i.pt, align 8, !tbaa !16
  store ptr %i.pt, ptr @EPZSCo_located, align 8, !tbaa !29
  %.pre61 = load ptr, ptr @input, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %allocEPZScolocated.exit, %bb.q
  %i.qg = phi ptr [ %.pre61, %allocEPZScolocated.exit ], [ %i.pi, %bb.q ] ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4088
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !72
  %switch.tableidx = add i32 %i.qi, -1            ; 2 uses
  %i.qj = icmp ult i32 %switch.tableidx, 5
  br i1 %i.qj, label %switch.lookup, label %bb.w

switch.lookup:                                    ; preds = %bb.v
  %i.qk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.EPZSInit.4, i64 %i.qk
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %switch.lookup
  %sdiamond.sink = phi ptr [ %switch.load, %switch.lookup ], [ @sdiamond, %bb.v ]
  %i.ql = load ptr, ptr %sdiamond.sink, align 8, !tbaa !59
  store ptr %i.ql, ptr @searchPattern, align 8, !tbaa !59
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qg, i64 4092
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !73
  %switch.tableidx71 = add i32 %i.qn, -2          ; 2 uses
  %i.qo = icmp ult i32 %switch.tableidx71, 5
  br i1 %i.qo, label %switch.lookup72, label %bb.x

switch.lookup72:                                  ; preds = %bb.w
  %i.qp = zext nneg i32 %switch.tableidx71 to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.EPZSInit.4, i64 %i.qp
  %switch.load74 = load ptr, ptr %switch.gep73, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %switch.lookup72
  %sdiamond.sink69 = phi ptr [ %switch.load74, %switch.lookup72 ], [ @sdiamond, %bb.w ]
  %i.qq = load ptr, ptr %sdiamond.sink69, align 8, !tbaa !59
  store ptr %i.qq, ptr @searchPatternD, align 8, !tbaa !59
  ret i32 %.021
}

declare i32 @get_mem3Dint(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem2Dshort(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_mem6Dshort(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @EPZSDelete() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4100
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %freeEPZScolocated.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @EPZSCo_located, align 8, !tbaa !29 ; 7 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %freeEPZScolocated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15
  %i.i = sdiv i32 %i.h, 4
  tail call void @free_mem4Dshort(ptr noundef %i.f, i32 noundef 2, i32 noundef %i.i) #13
  %i.j = load i32, ptr %i.d, align 8, !tbaa !16
  %.not9.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = load i32, ptr %i.g, align 8, !tbaa !15
  %i.n = sdiv i32 %i.m, 8
  tail call void @free_mem4Dshort(ptr noundef %i.l, i32 noundef 2, i32 noundef %i.n) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19
  %i.q = load i32, ptr %i.g, align 8, !tbaa !15
  %i.r = sdiv i32 %i.q, 8
  tail call void @free_mem4Dshort(ptr noundef %i.p, i32 noundef 2, i32 noundef %i.r) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #13
  br label %freeEPZScolocated.exit

freeEPZScolocated.exit:                           ; preds = %bb.e, %bb.b, %bb.a
  %i.s = load ptr, ptr @EPZSMap, align 8, !tbaa !74
  tail call void @free_mem2Dshort(ptr noundef %i.s) #13
  %i.t = load ptr, ptr @EPZSDistortion, align 8, !tbaa !76
  tail call void @free_mem3Dint(ptr noundef %i.t, i32 noundef 6) #13
  %i.u = load ptr, ptr @window_predictor_extended, align 8, !tbaa !59 ; 3 uses
  %.not.i2 = icmp eq ptr %i.u, null
  br i1 %.not.i2, label %freeEPZSpattern.exit, label %bb.f

bb.f:                                             ; preds = %freeEPZScolocated.exit
end_hunk_1
