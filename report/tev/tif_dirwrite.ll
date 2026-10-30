Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_dirwrite?download=true
inline.NumInlined: 123
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@TIFFWriteDirectoryTagLongLong8Array:bb.a
  %.val124 = load i16, ptr %i.aq, align 8, !tbaa !31
  switch i16 %.val124, label %.thread147 [
    i16 1, label %.split185
    i16 -15534, label %.split184
    i16 -15535, label %.split184
    i16 -15536, label %.split184
    i16 -30611, label %.split184
    i16 -30649, label %.split184
    i16 -32590, label %.split184
    i16 8, label %.split184
    i16 7, label %.split184
    i16 5, label %.split184
  ]

.split185:                                        ; preds = %bb.r
  %i.ar = icmp ugt i64 %i.ap, 65535
  br i1 %i.ar, label %.thread147, label %bb.ab

.split184:                                        ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.as = icmp ugt i64 %i.ap, 6552
  br i1 %i.as, label %.thread147, label %bb.ab

WriteAsLong4.exit:                                ; preds = %bb.q
  %i.at = icmp ugt i64 %i.ak, 65535
  br i1 %i.at, label %.thread147, label %bb.ab

.thread147:                                       ; preds = %.split186, %.split185, %.split184, %bb.q, %bb.r, %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread182, %WriteAsLong4.exit
  %i.au = zext i32 %4 to i64                      ; 3 uses
  %i.av = shl nuw nsw i64 %i.au, 2                ; 2 uses
  %i.aw = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.av) #8 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.s, label %.preheader

.preheader:                                       ; preds = %.thread147
  %.not169 = icmp eq i32 %4, 0
  br i1 %.not169, label %._crit_edge167, label %.lr.ph166

bb.s:                                             ; preds = %.thread147
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagLongLong8Array.module, ptr noundef nonnull @.str.28) #8
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

.lr.ph166:                                        ; preds = %.preheader, %bb.u
  %.0101165 = phi i32 [ %i.bc, %bb.u ], [ 0, %.preheader ]
  %.0102164 = phi ptr [ %i.bb, %bb.u ], [ %5, %.preheader ] ; 2 uses
  %.0103163 = phi ptr [ %i.bd, %bb.u ], [ %i.aw, %.preheader ] ; 2 uses
  %i.ay = load i64, ptr %.0102164, align 8, !tbaa !39 ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 4294967295
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph166
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagLongLong8Array.module, ptr noundef nonnull @.str.42) #8
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aw) #8
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

bb.u:                                             ; preds = %.lr.ph166
  %i.ba = trunc nuw i64 %i.ay to i32
  store i32 %i.ba, ptr %.0103163, align 4, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %.0102164, i64 8
  %i.bc = add nuw i32 %.0101165, 1                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0103163, i64 4
  %exitcond170.not = icmp eq i32 %i.bc, %4
  br i1 %exitcond170.not, label %._crit_edge167, label %.lr.ph166

._crit_edge167:                                   ; preds = %bb.u, %.preheader
  %i.be = icmp eq ptr %2, null
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  br i1 %i.be, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge167
  %i.bg = and i32 %i.bf, 524288
  %.not.i.i = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not.i.i, i64 1, i64 2
  %i.bi = icmp samesign ult i64 %i.bh, %i.au
  br i1 %i.bi, label %bb.w, label %EvaluateIFDdatasizeWrite.exit.i136

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !32
  %i.bl = add i64 %i.bk, %i.av
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i136

EvaluateIFDdatasizeWrite.exit.i136:               ; preds = %bb.w, %bb.v
  %i.bm = load i32, ptr %1, align 4, !tbaa !30
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %1, align 4, !tbaa !30
  br label %bb.aa

bb.x:                                             ; preds = %._crit_edge167
  %i.bo = and i32 %i.bf, 128
  %.not.i134 = icmp eq i32 %i.bo, 0
  br i1 %.not.i134, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @TIFFSwabArrayOfLong(ptr noundef nonnull %i.aw, i64 noundef %i.au) #8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bp = shl i32 %4, 2
  %i.bq = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 4, i32 noundef %4, i32 noundef %i.bp, ptr noundef nonnull %i.aw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %EvaluateIFDdatasizeWrite.exit.i136
  %.0.i135 = phi i32 [ 1, %EvaluateIFDdatasizeWrite.exit.i136 ], [ %i.bq, %bb.z ]
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aw) #8
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

bb.ab:                                            ; preds = %.split186, %.split185, %.split184, %WriteAsLong4.exit
  %i.br = zext i32 %4 to i64                      ; 3 uses
  %i.bs = shl nuw nsw i64 %i.br, 1                ; 2 uses
  %i.bt = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.bs) #8 ; 6 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.ac, label %.preheader159

.preheader159:                                    ; preds = %bb.ab
  %.not168 = icmp eq i32 %4, 0
  br i1 %.not168, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagLongLong8Array.module, ptr noundef nonnull @.str.28) #8
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

.lr.ph:                                           ; preds = %.preheader159, %bb.ae
  %.0162 = phi i32 [ %i.bz, %bb.ae ], [ 0, %.preheader159 ]
  %.099161 = phi ptr [ %i.by, %bb.ae ], [ %5, %.preheader159 ] ; 2 uses
  %.0100160 = phi ptr [ %i.ca, %bb.ae ], [ %i.bt, %.preheader159 ] ; 2 uses
  %i.bv = load i64, ptr %.099161, align 8, !tbaa !39 ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 65535
  br i1 %i.bw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFWriteDirectoryTagLongLong8Array.module, ptr noundef nonnull @.str.43) #8
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.bt) #8
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

bb.ae:                                            ; preds = %.lr.ph
  %i.bx = trunc nuw i64 %i.bv to i16
  store i16 %i.bx, ptr %.0100160, align 2, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %.099161, i64 8
  %i.bz = add nuw i32 %.0162, 1                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0100160, i64 2
  %exitcond.not = icmp eq i32 %i.bz, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ae, %.preheader159
  %i.cb = icmp eq ptr %2, null
  %i.cc = load i32, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  br i1 %i.cb, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  %i.cd = and i32 %i.cc, 524288
  %.not.i.i139 = icmp eq i32 %i.cd, 0
  %i.ce = select i1 %.not.i.i139, i64 2, i64 4
  %i.cf = icmp samesign ult i64 %i.ce, %i.br
  br i1 %i.cf, label %bb.ag, label %EvaluateIFDdatasizeWrite.exit.i140

bb.ag:                                            ; preds = %bb.af
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !32
  %i.ci = add i64 %i.ch, %i.bs
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i140

EvaluateIFDdatasizeWrite.exit.i140:               ; preds = %bb.ag, %bb.af
  %i.cj = load i32, ptr %1, align 4, !tbaa !30
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %1, align 4, !tbaa !30
  br label %bb.ak

bb.ah:                                            ; preds = %._crit_edge
  %i.cl = and i32 %i.cc, 128
  %.not.i137 = icmp eq i32 %i.cl, 0
  br i1 %.not.i137, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @TIFFSwabArrayOfShort(ptr noundef nonnull %i.bt, i64 noundef %i.br) #8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cm = shl i32 %4, 1
  %i.cn = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 3, i32 noundef %4, i32 noundef %i.cm, ptr noundef nonnull %i.bt)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %EvaluateIFDdatasizeWrite.exit.i140
  %.0.i138 = phi i32 [ 1, %EvaluateIFDdatasizeWrite.exit.i140 ], [ %i.cn, %bb.aj ]
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.bt) #8
  br label %TIFFWriteDirectoryTagCheckedLong8Array.exit.thread

TIFFWriteDirectoryTagCheckedLong8Array.exit.thread: ; preds = %bb.ad, %bb.ac, %bb.t, %bb.s, %bb.p, %EvaluateIFDdatasizeWrite.exit.i, %bb.j, %bb.aa, %bb.ak, %bb.d, %bb.c
  %.4 = phi i32 [ 1, %bb.c ], [ %i.f, %bb.d ], [ %.0.i138, %bb.ak ], [ 1, %EvaluateIFDdatasizeWrite.exit.i ], [ 0, %bb.t ], [ %.0.i135, %bb.aa ], [ 0, %bb.j ], [ %i.ah, %bb.p ], [ 0, %bb.s ], [ 0, %bb.ac ], [ 0, %bb.ad ]
  ret i32 %.4
}

declare i32 @TIFFGetFieldDefaulted(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFWriteDirectoryTagSampleformatArray(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i16 noundef zeroext range(i16 340, 342) %3, i32 noundef range(i32 0, 65536) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 %4, 3                    ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 3 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.b) #8 ; 33 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFWriteDirectoryTagSampleformatArray.module, ptr noundef nonnull @.str.28) #8
  br label %bb.bj

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.f = load i16, ptr %i.e, align 2, !tbaa !37
  switch i16 %i.f, label %TIFFWriteDirectoryTagFloatArray.exit [
    i16 3, label %bb.d
    i16 2, label %bb.p
    i16 1, label %bb.al
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i16, ptr %i.g, align 4, !tbaa !33
  %i.i = icmp ult i16 %i.h, 33
  br i1 %i.i, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.d
  %.not194 = icmp eq i32 %4, 0
  br i1 %.not194, label %._crit_edge188, label %.lr.ph187.preheader

.lr.ph187.preheader:                              ; preds = %.preheader
  %wide.trip.count224 = zext nneg i32 %4 to i64
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader, %.lr.ph187
  %indvars.iv221 = phi i64 [ 0, %.lr.ph187.preheader ], [ %indvars.iv.next222, %.lr.ph187 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv221
  %i.k = load double, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call float @_TIFFClampDoubleToFloat(double noundef %i.k) #8
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv221
  store float %i.l, ptr %i.m, align 4, !tbaa !42
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge188, label %.lr.ph187

._crit_edge188:                                   ; preds = %.lr.ph187, %.preheader
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge188
  %i.o = zext nneg i32 %4 to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29
  %i.r = and i32 %i.q, 524288
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i.i.i, i64 1, i64 2
  %i.t = icmp samesign ult i64 %i.s, %i.o
  br i1 %i.t, label %bb.f, label %EvaluateIFDdatasizeWrite.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i64 %i.o, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i

EvaluateIFDdatasizeWrite.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.y = load i32, ptr %1, align 4, !tbaa !30
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.g:                                             ; preds = %._crit_edge188
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !29
  %i.ac = and i32 %i.ab, 128
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = zext nneg i32 %4 to i64
  tail call void @TIFFSwabArrayOfFloat(ptr noundef nonnull %i.c, i64 noundef %i.ad) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = shl nuw nsw i32 %4, 2
  %i.af = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 11, i32 noundef %4, i32 noundef %i.ae, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.j:                                             ; preds = %bb.d
  %i.ag = icmp eq ptr %2, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.aj = and i32 %i.ai, 524288
  %.not.i.i.i124 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not.i.i.i124, i64 4, i64 8
  %i.al = icmp samesign ult i64 %i.ak, %i.b
  br i1 %i.al, label %bb.l, label %EvaluateIFDdatasizeWrite.exit.i.i125

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32
  %i.ao = add i64 %i.an, %i.b
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i125

EvaluateIFDdatasizeWrite.exit.i.i125:             ; preds = %bb.l, %bb.k
  %i.ap = load i32, ptr %1, align 4, !tbaa !30
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.m:                                             ; preds = %bb.j
  %i.ar = and i32 %i.ai, 128
  %.not.i.i122 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i122, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = zext nneg i32 %4 to i64
  tail call void @TIFFSwabArrayOfDouble(ptr noundef %5, i64 noundef %i.as) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 12, i32 noundef %4, i32 noundef %i.a, ptr noundef %5)
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.p:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.av = load i16, ptr %i.au, align 4, !tbaa !33 ; 2 uses
  %i.aw = icmp ult i16 %i.av, 9
  br i1 %i.aw, label %.preheader164, label %bb.w

.preheader164:                                    ; preds = %bb.p
  %.not193 = icmp eq i32 %4, 0
  br i1 %.not193, label %._crit_edge185, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %.preheader164
  %wide.trip.count219 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter272 = and i64 %wide.trip.count219, 1
  %i.ax = icmp eq i32 %4, 1
  br i1 %i.ax, label %.lr.ph184.epil.preheader, label %.lr.ph184.preheader.new

.lr.ph184.preheader.new:                          ; preds = %.lr.ph184.preheader
  %unroll_iter275 = and i64 %wide.trip.count219, 65534
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %TIFFClampDoubleToInt8.exit.1, %.lr.ph184.preheader.new
  %indvars.iv216 = phi i64 [ 0, %.lr.ph184.preheader.new ], [ %indvars.iv.next217.1, %TIFFClampDoubleToInt8.exit.1 ] ; 4 uses
  %niter276 = phi i64 [ 0, %.lr.ph184.preheader.new ], [ %niter276.next.1, %TIFFClampDoubleToInt8.exit.1 ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv216
  %i.az = load double, ptr %i.ay, align 8, !tbaa !41 ; 4 uses
  %i.ba = fcmp ogt double %i.az, 1.270000e+02
  br i1 %i.ba, label %TIFFClampDoubleToInt8.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph184
  %6 = fcmp olt double %i.az, -1.280000e+02
  %7 = fcmp uno double %i.az, 0.000000e+00
  %or.cond.i = or i1 %6, %7
  %i.bb = fptosi double %i.az to i8
  %spec.select.i = select i1 %or.cond.i, i8 -128, i8 %i.bb
  br label %TIFFClampDoubleToInt8.exit

TIFFClampDoubleToInt8.exit:                       ; preds = %.lr.ph184, %bb.q
  %.0.i = phi i8 [ %spec.select.i, %bb.q ], [ 127, %.lr.ph184 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv216
  store i8 %.0.i, ptr %i.bc, align 1, !tbaa !47
  %indvars.iv.next217 = or disjoint i64 %indvars.iv216, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next217
  %i.be = load double, ptr %i.bd, align 8, !tbaa !41 ; 4 uses
  %i.bf = fcmp ogt double %i.be, 1.270000e+02
  br i1 %i.bf, label %TIFFClampDoubleToInt8.exit.1, label %bb.r

bb.r:                                             ; preds = %TIFFClampDoubleToInt8.exit
  %8 = fcmp olt double %i.be, -1.280000e+02
  %9 = fcmp uno double %i.be, 0.000000e+00
  %or.cond.i.1 = or i1 %8, %9
  %i.bg = fptosi double %i.be to i8
  %spec.select.i.1 = select i1 %or.cond.i.1, i8 -128, i8 %i.bg
  br label %TIFFClampDoubleToInt8.exit.1

TIFFClampDoubleToInt8.exit.1:                     ; preds = %bb.r, %TIFFClampDoubleToInt8.exit
  %.0.i.1 = phi i8 [ %spec.select.i.1, %bb.r ], [ 127, %TIFFClampDoubleToInt8.exit ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next217
  store i8 %.0.i.1, ptr %i.bh, align 1, !tbaa !47
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %._crit_edge185.loopexit.unr-lcssa, label %.lr.ph184

._crit_edge185.loopexit.unr-lcssa:                ; preds = %TIFFClampDoubleToInt8.exit.1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %._crit_edge185, label %.lr.ph184.epil.preheader

.lr.ph184.epil.preheader:                         ; preds = %._crit_edge185.loopexit.unr-lcssa, %.lr.ph184.preheader
  %indvars.iv216.epil.init = phi i64 [ 0, %.lr.ph184.preheader ], [ %indvars.iv.next217.1, %._crit_edge185.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod274 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv216.epil.init
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !41 ; 4 uses
  %i.bk = fcmp ogt double %i.bj, 1.270000e+02
  br i1 %i.bk, label %TIFFClampDoubleToInt8.exit.epil, label %bb.s

bb.s:                                             ; preds = %.lr.ph184.epil.preheader
  %10 = fcmp olt double %i.bj, -1.280000e+02
  %11 = fcmp uno double %i.bj, 0.000000e+00
  %or.cond.i.epil = or i1 %10, %11
  %i.bl = fptosi double %i.bj to i8
  %spec.select.i.epil = select i1 %or.cond.i.epil, i8 -128, i8 %i.bl
  br label %TIFFClampDoubleToInt8.exit.epil

TIFFClampDoubleToInt8.exit.epil:                  ; preds = %bb.s, %.lr.ph184.epil.preheader
  %.0.i.epil = phi i8 [ %spec.select.i.epil, %bb.s ], [ 127, %.lr.ph184.epil.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv216.epil.init
  store i8 %.0.i.epil, ptr %i.bm, align 1, !tbaa !47
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %TIFFClampDoubleToInt8.exit.epil, %._crit_edge185.loopexit.unr-lcssa, %.preheader164
  %i.bn = icmp eq ptr %2, null
  br i1 %i.bn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %._crit_edge185
  %i.bo = zext nneg i32 %4 to i64                 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !29
  %i.br = and i32 %i.bq, 524288
  %.not.i.i.i127 = icmp eq i32 %i.br, 0
  %i.bs = select i1 %.not.i.i.i127, i64 4, i64 8
  %i.bt = icmp samesign ult i64 %i.bs, %i.bo
  br i1 %i.bt, label %bb.u, label %EvaluateIFDdatasizeWrite.exit.i.i128

bb.u:                                             ; preds = %bb.t
  %i.bu = and i64 %i.bo, 1
  %spec.select.i.i.i = add nuw nsw i64 %i.bu, %i.bo
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !32
  %i.bx = add i64 %spec.select.i.i.i, %i.bw
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i128

EvaluateIFDdatasizeWrite.exit.i.i128:             ; preds = %bb.u, %bb.t
  %i.by = load i32, ptr %1, align 4, !tbaa !30
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.v:                                             ; preds = %._crit_edge185
  %i.ca = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 6, i32 noundef %4, i32 noundef %4, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.w:                                             ; preds = %bb.p
  %i.cb = icmp ult i16 %i.av, 17
  %.not192 = icmp eq i32 %4, 0                    ; 2 uses
  br i1 %i.cb, label %.preheader165, label %.preheader166.a

.preheader166.a:                                  ; preds = %bb.w
  br i1 %.not192, label %._crit_edge179, label %.lr.ph178.preheader

.lr.ph178.preheader:                              ; preds = %.preheader166.a
  %wide.trip.count209 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter262 = and i64 %wide.trip.count209, 1
  %i.cc = icmp eq i32 %4, 1
  br i1 %i.cc, label %.lr.ph178.epil.preheader, label %.lr.ph178.preheader.new

.lr.ph178.preheader.new:                          ; preds = %.lr.ph178.preheader
  %unroll_iter265 = and i64 %wide.trip.count209, 65534
  br label %.lr.ph178

.preheader165:                                    ; preds = %bb.w
  br i1 %.not192, label %._crit_edge182, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %.preheader165
  %wide.trip.count214 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter267 = and i64 %wide.trip.count214, 1
  %i.cd = icmp eq i32 %4, 1
  br i1 %i.cd, label %.lr.ph181.epil.preheader, label %.lr.ph181.preheader.new

.lr.ph181.preheader.new:                          ; preds = %.lr.ph181.preheader
  %unroll_iter270 = and i64 %wide.trip.count214, 65534
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %TIFFClampDoubleToInt16.exit.1, %.lr.ph181.preheader.new
  %indvars.iv211 = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %indvars.iv.next212.1, %TIFFClampDoubleToInt16.exit.1 ] ; 4 uses
  %niter271 = phi i64 [ 0, %.lr.ph181.preheader.new ], [ %niter271.next.1, %TIFFClampDoubleToInt16.exit.1 ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv211
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !41 ; 4 uses
  %i.cg = fcmp ogt double %i.cf, 3.276700e+04
  br i1 %i.cg, label %TIFFClampDoubleToInt16.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph181
  %12 = fcmp olt double %i.cf, -3.276800e+04
  %13 = fcmp uno double %i.cf, 0.000000e+00
  %or.cond.i129 = or i1 %12, %13
  %i.ch = fptosi double %i.cf to i16
  %spec.select.i130 = select i1 %or.cond.i129, i16 -32768, i16 %i.ch
  br label %TIFFClampDoubleToInt16.exit

TIFFClampDoubleToInt16.exit:                      ; preds = %.lr.ph181, %bb.x
  %.0.i131 = phi i16 [ %spec.select.i130, %bb.x ], [ 32767, %.lr.ph181 ]
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv211
  store i16 %.0.i131, ptr %i.ci, align 2, !tbaa !34
  %indvars.iv.next212 = or disjoint i64 %indvars.iv211, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next212
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !41 ; 4 uses
  %i.cl = fcmp ogt double %i.ck, 3.276700e+04
  br i1 %i.cl, label %TIFFClampDoubleToInt16.exit.1, label %bb.y

bb.y:                                             ; preds = %TIFFClampDoubleToInt16.exit
  %14 = fcmp olt double %i.ck, -3.276800e+04
  %15 = fcmp uno double %i.ck, 0.000000e+00
  %or.cond.i129.1 = or i1 %14, %15
  %i.cm = fptosi double %i.ck to i16
  %spec.select.i130.1 = select i1 %or.cond.i129.1, i16 -32768, i16 %i.cm
  br label %TIFFClampDoubleToInt16.exit.1

TIFFClampDoubleToInt16.exit.1:                    ; preds = %bb.y, %TIFFClampDoubleToInt16.exit
  %.0.i131.1 = phi i16 [ %spec.select.i130.1, %bb.y ], [ 32767, %TIFFClampDoubleToInt16.exit ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next212
  store i16 %.0.i131.1, ptr %i.cn, align 2, !tbaa !34
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter271.next.1 = add i64 %niter271, 2         ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %._crit_edge182.loopexit.unr-lcssa, label %.lr.ph181

._crit_edge182.loopexit.unr-lcssa:                ; preds = %TIFFClampDoubleToInt16.exit.1
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %._crit_edge182, label %.lr.ph181.epil.preheader

.lr.ph181.epil.preheader:                         ; preds = %._crit_edge182.loopexit.unr-lcssa, %.lr.ph181.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.lr.ph181.preheader ], [ %indvars.iv.next212.1, %._crit_edge182.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv211.epil.init
  %i.cp = load double, ptr %i.co, align 8, !tbaa !41 ; 4 uses
  %i.cq = fcmp ogt double %i.cp, 3.276700e+04
  br i1 %i.cq, label %TIFFClampDoubleToInt16.exit.epil, label %bb.z

bb.z:                                             ; preds = %.lr.ph181.epil.preheader
  %16 = fcmp olt double %i.cp, -3.276800e+04
  %17 = fcmp uno double %i.cp, 0.000000e+00
  %or.cond.i129.epil = or i1 %16, %17
  %i.cr = fptosi double %i.cp to i16
  %spec.select.i130.epil = select i1 %or.cond.i129.epil, i16 -32768, i16 %i.cr
  br label %TIFFClampDoubleToInt16.exit.epil

TIFFClampDoubleToInt16.exit.epil:                 ; preds = %bb.z, %.lr.ph181.epil.preheader
  %.0.i131.epil = phi i16 [ %spec.select.i130.epil, %bb.z ], [ 32767, %.lr.ph181.epil.preheader ]
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv211.epil.init
  store i16 %.0.i131.epil, ptr %i.cs, align 2, !tbaa !34
  br label %._crit_edge182

._crit_edge182:                                   ; preds = %TIFFClampDoubleToInt16.exit.epil, %._crit_edge182.loopexit.unr-lcssa, %.preheader165
  %i.ct = icmp eq ptr %2, null
  br i1 %i.ct, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %._crit_edge182
  %i.cu = zext nneg i32 %4 to i64                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !29
  %i.cx = and i32 %i.cw, 524288
  %.not.i.i.i134 = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not.i.i.i134, i64 2, i64 4
  %i.cz = icmp samesign ult i64 %i.cy, %i.cu
  br i1 %i.cz, label %bb.ab, label %EvaluateIFDdatasizeWrite.exit.i.i135

bb.ab:                                            ; preds = %bb.aa
  %i.da = shl nuw nsw i64 %i.cu, 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !32
  %i.dd = add i64 %i.dc, %i.da
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i135

EvaluateIFDdatasizeWrite.exit.i.i135:             ; preds = %bb.ab, %bb.aa
  %i.de = load i32, ptr %1, align 4, !tbaa !30
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.ac:                                            ; preds = %._crit_edge182
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !29
  %i.di = and i32 %i.dh, 128
  %.not.i.i132 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i132, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = zext nneg i32 %4 to i64
  tail call void @TIFFSwabArrayOfShort(ptr noundef nonnull %i.c, i64 noundef %i.dj) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dk = shl nuw nsw i32 %4, 1
  %i.dl = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 8, i32 noundef %4, i32 noundef %i.dk, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

.lr.ph178:                                        ; preds = %TIFFClampDoubleToInt32.exit.1, %.lr.ph178.preheader.new
  %indvars.iv206 = phi i64 [ 0, %.lr.ph178.preheader.new ], [ %indvars.iv.next207.1, %TIFFClampDoubleToInt32.exit.1 ] ; 4 uses
  %niter266 = phi i64 [ 0, %.lr.ph178.preheader.new ], [ %niter266.next.1, %TIFFClampDoubleToInt32.exit.1 ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv206
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !41 ; 4 uses
  %i.do = fcmp ogt double %i.dn, f0x41DFFFFFFFC00000
  br i1 %i.do, label %TIFFClampDoubleToInt32.exit, label %18

18:                                               ; preds = %.lr.ph178
  %19 = fcmp olt double %i.dn, f0xC1E0000000000000
  %20 = fcmp uno double %i.dn, 0.000000e+00
  %or.cond.i136 = or i1 %19, %20
  %21 = fptosi double %i.dn to i32
  %spec.select.i137 = select i1 %or.cond.i136, i32 -2147483648, i32 %21
  br label %TIFFClampDoubleToInt32.exit

TIFFClampDoubleToInt32.exit:                      ; preds = %.lr.ph178, %18
  %.0.i138 = phi i32 [ %spec.select.i137, %18 ], [ 2147483647, %.lr.ph178 ]
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv206
  store i32 %.0.i138, ptr %22, align 4, !tbaa !30
  %indvars.iv.next207 = or disjoint i64 %indvars.iv206, 1 ; 2 uses
  %23 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next207
  %24 = load double, ptr %23, align 8, !tbaa !41  ; 4 uses
  %25 = fcmp ogt double %24, f0x41DFFFFFFFC00000
  br i1 %25, label %TIFFClampDoubleToInt32.exit.1, label %bb.af

bb.af:                                            ; preds = %TIFFClampDoubleToInt32.exit
  %26 = fcmp olt double %24, f0xC1E0000000000000
  %27 = fcmp uno double %24, 0.000000e+00
  %or.cond.i136.1 = or i1 %26, %27
  %i.dp = fptosi double %24 to i32
  %spec.select.i137.1 = select i1 %or.cond.i136.1, i32 -2147483648, i32 %i.dp
  br label %TIFFClampDoubleToInt32.exit.1

TIFFClampDoubleToInt32.exit.1:                    ; preds = %bb.af, %TIFFClampDoubleToInt32.exit
  %.0.i138.1 = phi i32 [ %spec.select.i137.1, %bb.af ], [ 2147483647, %TIFFClampDoubleToInt32.exit ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next207
  store i32 %.0.i138.1, ptr %i.dq, align 4, !tbaa !30
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  %niter266.next.1 = add i64 %niter266, 2         ; 2 uses
  %niter266.ncmp.1 = icmp eq i64 %niter266.next.1, %unroll_iter265
  br i1 %niter266.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %.lr.ph178

._crit_edge179.loopexit.unr-lcssa:                ; preds = %TIFFClampDoubleToInt32.exit.1
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %._crit_edge179, label %.lr.ph178.epil.preheader

.lr.ph178.epil.preheader:                         ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178.preheader
  %indvars.iv206.epil.init = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next207.1, %._crit_edge179.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod264 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod264)
  %28 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv206.epil.init
  %29 = load double, ptr %28, align 8, !tbaa !41  ; 4 uses
  %30 = fcmp ogt double %29, f0x41DFFFFFFFC00000
  br i1 %30, label %TIFFClampDoubleToInt32.exit.epil, label %31

31:                                               ; preds = %.lr.ph178.epil.preheader
  %32 = fcmp olt double %29, f0xC1E0000000000000
  %33 = fcmp uno double %29, 0.000000e+00
  %or.cond.i136.epil = or i1 %32, %33
  %34 = fptosi double %29 to i32
  %spec.select.i137.epil = select i1 %or.cond.i136.epil, i32 -2147483648, i32 %34
  br label %TIFFClampDoubleToInt32.exit.epil

TIFFClampDoubleToInt32.exit.epil:                 ; preds = %31, %.lr.ph178.epil.preheader
  %.0.i138.epil = phi i32 [ %spec.select.i137.epil, %31 ], [ 2147483647, %.lr.ph178.epil.preheader ]
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv206.epil.init
  store i32 %.0.i138.epil, ptr %35, align 4, !tbaa !30
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %TIFFClampDoubleToInt32.exit.epil, %._crit_edge179.loopexit.unr-lcssa, %.preheader166.a
  %i.dr = icmp eq ptr %2, null
  br i1 %i.dr, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge179
  %i.ds = zext nneg i32 %4 to i64                 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !29
  %i.dv = and i32 %i.du, 524288
  %.not.i.i.i141 = icmp eq i32 %i.dv, 0
  %i.dw = select i1 %.not.i.i.i141, i64 1, i64 2
  %i.dx = icmp samesign ult i64 %i.dw, %i.ds
  br i1 %i.dx, label %bb.ah, label %EvaluateIFDdatasizeWrite.exit.i.i142

bb.ah:                                            ; preds = %bb.ag
  %i.dy = shl nuw nsw i64 %i.ds, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !32
  %i.eb = add i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i142

EvaluateIFDdatasizeWrite.exit.i.i142:             ; preds = %bb.ah, %bb.ag
  %i.ec = load i32, ptr %1, align 4, !tbaa !30
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.ai:                                            ; preds = %._crit_edge179
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !29
  %i.eg = and i32 %i.ef, 128
  %.not.i.i139 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i139, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eh = zext nneg i32 %4 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef nonnull %i.c, i64 noundef %i.eh) #8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ei = shl nuw nsw i32 %4, 2
  %i.ej = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 9, i32 noundef %4, i32 noundef %i.ei, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.al:                                            ; preds = %bb.c
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !33 ; 2 uses
  %i.em = icmp ult i16 %i.el, 9
  br i1 %i.em, label %.preheader167, label %bb.as

.preheader167:                                    ; preds = %bb.al
  %.not190 = icmp eq i32 %4, 0
  br i1 %.not190, label %._crit_edge176, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %.preheader167
  %wide.trip.count204 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter257 = and i64 %wide.trip.count204, 1
  %i.en = icmp eq i32 %4, 1
  br i1 %i.en, label %.lr.ph175.epil.preheader, label %.lr.ph175.preheader.new

.lr.ph175.preheader.new:                          ; preds = %.lr.ph175.preheader
  %unroll_iter260 = and i64 %wide.trip.count204, 65534
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %TIFFClampDoubleToUInt8.exit.1, %.lr.ph175.preheader.new
  %indvars.iv201 = phi i64 [ 0, %.lr.ph175.preheader.new ], [ %indvars.iv.next202.1, %TIFFClampDoubleToUInt8.exit.1 ] ; 4 uses
  %niter261 = phi i64 [ 0, %.lr.ph175.preheader.new ], [ %niter261.next.1, %TIFFClampDoubleToUInt8.exit.1 ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv201
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !41 ; 4 uses
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %TIFFClampDoubleToUInt8.exit, label %bb.am

bb.am:                                            ; preds = %.lr.ph175
  %36 = fcmp ogt double %i.ep, 2.550000e+02
  %37 = fcmp uno double %i.ep, 0.000000e+00
  %or.cond.i143 = or i1 %36, %37
  %i.er = fptoui double %i.ep to i8
  %spec.select.i144 = select i1 %or.cond.i143, i8 -1, i8 %i.er
  br label %TIFFClampDoubleToUInt8.exit

TIFFClampDoubleToUInt8.exit:                      ; preds = %.lr.ph175, %bb.am
  %.0.i145 = phi i8 [ %spec.select.i144, %bb.am ], [ 0, %.lr.ph175 ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv201
  store i8 %.0.i145, ptr %i.es, align 1, !tbaa !47
  %indvars.iv.next202 = or disjoint i64 %indvars.iv201, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next202
  %i.eu = load double, ptr %i.et, align 8, !tbaa !41 ; 4 uses
  %i.ev = fcmp olt double %i.eu, 0.000000e+00
  br i1 %i.ev, label %TIFFClampDoubleToUInt8.exit.1, label %bb.an

bb.an:                                            ; preds = %TIFFClampDoubleToUInt8.exit
  %38 = fcmp ogt double %i.eu, 2.550000e+02
  %39 = fcmp uno double %i.eu, 0.000000e+00
  %or.cond.i143.1 = or i1 %38, %39
  %i.ew = fptoui double %i.eu to i8
  %spec.select.i144.1 = select i1 %or.cond.i143.1, i8 -1, i8 %i.ew
  br label %TIFFClampDoubleToUInt8.exit.1

TIFFClampDoubleToUInt8.exit.1:                    ; preds = %bb.an, %TIFFClampDoubleToUInt8.exit
  %.0.i145.1 = phi i8 [ %spec.select.i144.1, %bb.an ], [ 0, %TIFFClampDoubleToUInt8.exit ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next202
  store i8 %.0.i145.1, ptr %i.ex, align 1, !tbaa !47
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %niter261.next.1 = add i64 %niter261, 2         ; 2 uses
  %niter261.ncmp.1 = icmp eq i64 %niter261.next.1, %unroll_iter260
  br i1 %niter261.ncmp.1, label %._crit_edge176.loopexit.unr-lcssa, label %.lr.ph175

._crit_edge176.loopexit.unr-lcssa:                ; preds = %TIFFClampDoubleToUInt8.exit.1
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  br i1 %lcmp.mod258.not, label %._crit_edge176, label %.lr.ph175.epil.preheader

.lr.ph175.epil.preheader:                         ; preds = %._crit_edge176.loopexit.unr-lcssa, %.lr.ph175.preheader
  %indvars.iv201.epil.init = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next202.1, %._crit_edge176.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod259 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv201.epil.init
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !41 ; 4 uses
  %i.fa = fcmp olt double %i.ez, 0.000000e+00
  br i1 %i.fa, label %TIFFClampDoubleToUInt8.exit.epil, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph175.epil.preheader
  %40 = fcmp ogt double %i.ez, 2.550000e+02
  %41 = fcmp uno double %i.ez, 0.000000e+00
  %or.cond.i143.epil = or i1 %40, %41
  %i.fb = fptoui double %i.ez to i8
  %spec.select.i144.epil = select i1 %or.cond.i143.epil, i8 -1, i8 %i.fb
  br label %TIFFClampDoubleToUInt8.exit.epil

TIFFClampDoubleToUInt8.exit.epil:                 ; preds = %bb.ao, %.lr.ph175.epil.preheader
  %.0.i145.epil = phi i8 [ %spec.select.i144.epil, %bb.ao ], [ 0, %.lr.ph175.epil.preheader ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv201.epil.init
  store i8 %.0.i145.epil, ptr %i.fc, align 1, !tbaa !47
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %TIFFClampDoubleToUInt8.exit.epil, %._crit_edge176.loopexit.unr-lcssa, %.preheader167
  %i.fd = icmp eq ptr %2, null
  br i1 %i.fd, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %._crit_edge176
  %i.fe = zext nneg i32 %4 to i64                 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !29
  %i.fh = and i32 %i.fg, 524288
  %.not.i.i.i147 = icmp eq i32 %i.fh, 0
  %i.fi = select i1 %.not.i.i.i147, i64 4, i64 8
  %i.fj = icmp samesign ult i64 %i.fi, %i.fe
  br i1 %i.fj, label %bb.aq, label %EvaluateIFDdatasizeWrite.exit.i.i148

bb.aq:                                            ; preds = %bb.ap
  %i.fk = and i64 %i.fe, 1
  %spec.select.i.i.i149 = add nuw nsw i64 %i.fk, %i.fe
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !32
  %i.fn = add i64 %spec.select.i.i.i149, %i.fm
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i148

EvaluateIFDdatasizeWrite.exit.i.i148:             ; preds = %bb.aq, %bb.ap
  %i.fo = load i32, ptr %1, align 4, !tbaa !30
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.ar:                                            ; preds = %._crit_edge176
  %i.fq = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 1, i32 noundef %4, i32 noundef %4, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.as:                                            ; preds = %bb.al
  %i.fr = icmp ult i16 %i.el, 17
  %.not189 = icmp eq i32 %4, 0                    ; 2 uses
  br i1 %i.fr, label %.preheader168, label %.preheader169

.preheader169:                                    ; preds = %bb.as
  br i1 %.not189, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader169
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fs = icmp eq i32 %4, 1
  br i1 %i.fs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph

.preheader168:                                    ; preds = %bb.as
  br i1 %.not189, label %._crit_edge173, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %.preheader168
  %wide.trip.count199 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter252 = and i64 %wide.trip.count199, 1
  %i.ft = icmp eq i32 %4, 1
  br i1 %i.ft, label %.lr.ph172.epil.preheader, label %.lr.ph172.preheader.new

.lr.ph172.preheader.new:                          ; preds = %.lr.ph172.preheader
  %unroll_iter255 = and i64 %wide.trip.count199, 65534
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %TIFFClampDoubleToUInt16.exit.1, %.lr.ph172.preheader.new
  %indvars.iv196 = phi i64 [ 0, %.lr.ph172.preheader.new ], [ %indvars.iv.next197.1, %TIFFClampDoubleToUInt16.exit.1 ] ; 4 uses
  %niter256 = phi i64 [ 0, %.lr.ph172.preheader.new ], [ %niter256.next.1, %TIFFClampDoubleToUInt16.exit.1 ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv196
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !41 ; 4 uses
  %i.fw = fcmp olt double %i.fv, 0.000000e+00
  br i1 %i.fw, label %TIFFClampDoubleToUInt16.exit, label %bb.at

bb.at:                                            ; preds = %.lr.ph172
  %42 = fcmp ogt double %i.fv, 6.553500e+04
  %43 = fcmp uno double %i.fv, 0.000000e+00
  %or.cond.i150 = or i1 %42, %43
  %i.fx = fptoui double %i.fv to i16
  %spec.select.i151 = select i1 %or.cond.i150, i16 -1, i16 %i.fx
  br label %TIFFClampDoubleToUInt16.exit

TIFFClampDoubleToUInt16.exit:                     ; preds = %.lr.ph172, %bb.at
  %.0.i152 = phi i16 [ %spec.select.i151, %bb.at ], [ 0, %.lr.ph172 ]
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv196
  store i16 %.0.i152, ptr %i.fy, align 2, !tbaa !34
  %indvars.iv.next197 = or disjoint i64 %indvars.iv196, 1 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next197
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !41 ; 4 uses
  %i.gb = fcmp olt double %i.ga, 0.000000e+00
  br i1 %i.gb, label %TIFFClampDoubleToUInt16.exit.1, label %bb.au

bb.au:                                            ; preds = %TIFFClampDoubleToUInt16.exit
  %44 = fcmp ogt double %i.ga, 6.553500e+04
  %45 = fcmp uno double %i.ga, 0.000000e+00
  %or.cond.i150.1 = or i1 %44, %45
  %i.gc = fptoui double %i.ga to i16
  %spec.select.i151.1 = select i1 %or.cond.i150.1, i16 -1, i16 %i.gc
  br label %TIFFClampDoubleToUInt16.exit.1

TIFFClampDoubleToUInt16.exit.1:                   ; preds = %bb.au, %TIFFClampDoubleToUInt16.exit
  %.0.i152.1 = phi i16 [ %spec.select.i151.1, %bb.au ], [ 0, %TIFFClampDoubleToUInt16.exit ]
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.next197
  store i16 %.0.i152.1, ptr %i.gd, align 2, !tbaa !34
  %indvars.iv.next197.1 = add nuw nsw i64 %indvars.iv196, 2 ; 2 uses
  %niter256.next.1 = add i64 %niter256, 2         ; 2 uses
  %niter256.ncmp.1 = icmp eq i64 %niter256.next.1, %unroll_iter255
  br i1 %niter256.ncmp.1, label %._crit_edge173.loopexit.unr-lcssa, label %.lr.ph172

._crit_edge173.loopexit.unr-lcssa:                ; preds = %TIFFClampDoubleToUInt16.exit.1
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %._crit_edge173, label %.lr.ph172.epil.preheader

.lr.ph172.epil.preheader:                         ; preds = %._crit_edge173.loopexit.unr-lcssa, %.lr.ph172.preheader
  %indvars.iv196.epil.init = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next197.1, %._crit_edge173.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod254.a = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod254.a)
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv196.epil.init
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !41 ; 4 uses
  %i.gg = fcmp olt double %i.gf, 0.000000e+00
  br i1 %i.gg, label %TIFFClampDoubleToUInt16.exit.epil, label %bb.av

bb.av:                                            ; preds = %.lr.ph172.epil.preheader
  %46 = fcmp ogt double %i.gf, 6.553500e+04
  %47 = fcmp uno double %i.gf, 0.000000e+00
  %or.cond.i150.epil = or i1 %46, %47
  %i.gh = fptoui double %i.gf to i16
  %spec.select.i151.epil = select i1 %or.cond.i150.epil, i16 -1, i16 %i.gh
  br label %TIFFClampDoubleToUInt16.exit.epil

TIFFClampDoubleToUInt16.exit.epil:                ; preds = %bb.av, %.lr.ph172.epil.preheader
  %.0.i152.epil = phi i16 [ %spec.select.i151.epil, %bb.av ], [ 0, %.lr.ph172.epil.preheader ]
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv196.epil.init
  store i16 %.0.i152.epil, ptr %i.gi, align 2, !tbaa !34
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %TIFFClampDoubleToUInt16.exit.epil, %._crit_edge173.loopexit.unr-lcssa, %.preheader168
  %i.gj = icmp eq ptr %2, null
  br i1 %i.gj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %._crit_edge173
  %i.gk = zext nneg i32 %4 to i64                 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !29
  %i.gn = and i32 %i.gm, 524288
  %.not.i.i.i155 = icmp eq i32 %i.gn, 0
  %i.go = select i1 %.not.i.i.i155, i64 2, i64 4
  %i.gp = icmp samesign ult i64 %i.go, %i.gk
  br i1 %i.gp, label %bb.ax, label %EvaluateIFDdatasizeWrite.exit.i.i156

bb.ax:                                            ; preds = %bb.aw
  %i.gq = shl nuw nsw i64 %i.gk, 1
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !32
  %i.gt = add i64 %i.gs, %i.gq
  store i64 %i.gt, ptr %i.gr, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i156

EvaluateIFDdatasizeWrite.exit.i.i156:             ; preds = %bb.ax, %bb.aw
  %i.gu = load i32, ptr %1, align 4, !tbaa !30
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.ay:                                            ; preds = %._crit_edge173
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !29
  %i.gy = and i32 %i.gx, 128
  %.not.i.i153 = icmp eq i32 %i.gy, 0
  br i1 %.not.i.i153, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = zext nneg i32 %4 to i64
  tail call void @TIFFSwabArrayOfShort(ptr noundef nonnull %i.c, i64 noundef %i.gz) #8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ha = shl nuw nsw i32 %4, 1
  %i.hb = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 3, i32 noundef %4, i32 noundef %i.ha, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

.lr.ph:                                           ; preds = %TIFFClampDoubleToUInt32.exit.1, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %TIFFClampDoubleToUInt32.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %TIFFClampDoubleToUInt32.exit.1 ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !41 ; 4 uses
  %i.he = fcmp olt double %i.hd, 0.000000e+00
  br i1 %i.he, label %TIFFClampDoubleToUInt32.exit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph
  %48 = fcmp ogt double %i.hd, f0x41EFFFFFFFE00000
  %49 = fcmp uno double %i.hd, 0.000000e+00
  %or.cond.i157 = or i1 %48, %49
  %i.hf = fptoui double %i.hd to i32
  %spec.select.i158 = select i1 %or.cond.i157, i32 -1, i32 %i.hf
  br label %TIFFClampDoubleToUInt32.exit

TIFFClampDoubleToUInt32.exit:                     ; preds = %.lr.ph, %bb.bb
  %.0.i159 = phi i32 [ %spec.select.i158, %bb.bb ], [ 0, %.lr.ph ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.0.i159, ptr %i.hg, align 4, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !41 ; 4 uses
  %i.hj = fcmp olt double %i.hi, 0.000000e+00
  br i1 %i.hj, label %TIFFClampDoubleToUInt32.exit.1, label %bb.bc

bb.bc:                                            ; preds = %TIFFClampDoubleToUInt32.exit
  %50 = fcmp ogt double %i.hi, f0x41EFFFFFFFE00000
  %51 = fcmp uno double %i.hi, 0.000000e+00
  %or.cond.i157.1 = or i1 %50, %51
  %i.hk = fptoui double %i.hi to i32
  %spec.select.i158.1 = select i1 %or.cond.i157.1, i32 -1, i32 %i.hk
  br label %TIFFClampDoubleToUInt32.exit.1

TIFFClampDoubleToUInt32.exit.1:                   ; preds = %bb.bc, %TIFFClampDoubleToUInt32.exit
  %.0.i159.1 = phi i32 [ %spec.select.i158.1, %bb.bc ], [ 0, %TIFFClampDoubleToUInt32.exit ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %.0.i159.1, ptr %i.hl, align 4, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %TIFFClampDoubleToUInt32.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod251 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.epil.init
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !41 ; 4 uses
  %i.ho = fcmp olt double %i.hn, 0.000000e+00
  br i1 %i.ho, label %TIFFClampDoubleToUInt32.exit.epil, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.epil.preheader
  %52 = fcmp ogt double %i.hn, f0x41EFFFFFFFE00000
  %53 = fcmp uno double %i.hn, 0.000000e+00
  %or.cond.i157.epil = or i1 %52, %53
  %i.hp = fptoui double %i.hn to i32
  %spec.select.i158.epil = select i1 %or.cond.i157.epil, i32 -1, i32 %i.hp
  br label %TIFFClampDoubleToUInt32.exit.epil

TIFFClampDoubleToUInt32.exit.epil:                ; preds = %bb.bd, %.lr.ph.epil.preheader
  %.0.i159.epil = phi i32 [ %spec.select.i158.epil, %bb.bd ], [ 0, %.lr.ph.epil.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %.0.i159.epil, ptr %i.hq, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %TIFFClampDoubleToUInt32.exit.epil, %._crit_edge.loopexit.unr-lcssa, %.preheader169
  %i.hr = icmp eq ptr %2, null
  br i1 %i.hr, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %._crit_edge
  %i.hs = zext nneg i32 %4 to i64                 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !29
  %i.hv = and i32 %i.hu, 524288
  %.not.i.i.i162 = icmp eq i32 %i.hv, 0
  %i.hw = select i1 %.not.i.i.i162, i64 1, i64 2
  %i.hx = icmp samesign ult i64 %i.hw, %i.hs
  br i1 %i.hx, label %bb.bf, label %EvaluateIFDdatasizeWrite.exit.i.i163

bb.bf:                                            ; preds = %bb.be
  %i.hy = shl nuw nsw i64 %i.hs, 2
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !32
  %i.ib = add i64 %i.ia, %i.hy
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i.i163

EvaluateIFDdatasizeWrite.exit.i.i163:             ; preds = %bb.bf, %bb.be
  %i.ic = load i32, ptr %1, align 4, !tbaa !30
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagFloatArray.exit

bb.bg:                                            ; preds = %._crit_edge
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !29
  %i.ig = and i32 %i.if, 128
  %.not.i.i160 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i160, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = zext nneg i32 %4 to i64
  tail call void @TIFFSwabArrayOfLong(ptr noundef nonnull %i.c, i64 noundef %i.ih) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ii = shl nuw nsw i32 %4, 2
  %i.ij = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 4, i32 noundef %4, i32 noundef %i.ii, ptr noundef nonnull %i.c)
  br label %TIFFWriteDirectoryTagFloatArray.exit

TIFFWriteDirectoryTagFloatArray.exit:             ; preds = %bb.bi, %EvaluateIFDdatasizeWrite.exit.i.i163, %bb.ba, %EvaluateIFDdatasizeWrite.exit.i.i156, %bb.ar, %EvaluateIFDdatasizeWrite.exit.i.i148, %bb.ak, %EvaluateIFDdatasizeWrite.exit.i.i142, %bb.ae, %EvaluateIFDdatasizeWrite.exit.i.i135, %bb.v, %EvaluateIFDdatasizeWrite.exit.i.i128, %bb.o, %EvaluateIFDdatasizeWrite.exit.i.i125, %bb.i, %EvaluateIFDdatasizeWrite.exit.i.i, %bb.c
  %.0 = phi i32 [ %i.hb, %bb.ba ], [ 0, %bb.c ], [ %i.af, %bb.i ], [ %i.at, %bb.o ], [ %i.ca, %bb.v ], [ %i.dl, %bb.ae ], [ %i.ej, %bb.ak ], [ %i.fq, %bb.ar ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i125 ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i128 ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i135 ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i142 ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i148 ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i156 ], [ 1, %EvaluateIFDdatasizeWrite.exit.i.i163 ], [ %i.ij, %bb.bi ]
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.c) #8
  br label %bb.bj

bb.bj:                                            ; preds = %TIFFWriteDirectoryTagFloatArray.exit, %bb.b
  %.0111 = phi i32 [ 0, %bb.b ], [ %.0, %TIFFWriteDirectoryTagFloatArray.exit ]
  ret i32 %.0111
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFWriteDirectoryTagRationalArray(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = shl i32 %4, 1
  %i.c = zext i32 %i.b to i64                     ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, 524288
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.g = select i1 %.not.i.i, i64 1, i64 2
  %i.h = icmp samesign ult i64 %i.g, %i.c
  br i1 %i.h, label %bb.c, label %EvaluateIFDdatasizeWrite.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.c, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32
  %i.l = add i64 %i.k, %i.i
  store i64 %i.l, ptr %i.j, align 8, !tbaa !32
  br label %EvaluateIFDdatasizeWrite.exit.i

EvaluateIFDdatasizeWrite.exit.i:                  ; preds = %bb.c, %bb.b
  %i.m = load i32, ptr %1, align 4, !tbaa !30
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %1, align 4, !tbaa !30
  br label %TIFFWriteDirectoryTagCheckedRationalArray.exit

bb.d:                                             ; preds = %bb.a
  %i.o = shl nuw nsw i64 %i.c, 2
  %i.p = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %i.o) #8 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not40.i = icmp eq i32 %4, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFWriteDirectoryTagCheckedRationalArray.module, ptr noundef nonnull @.str.28) #8
  br label %TIFFWriteDirectoryTagCheckedRationalArray.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.039.i = phi i32 [ %i.w, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.03138.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.p, %.preheader.i ] ; 3 uses
  %.03237.i = phi ptr [ %i.u, %.lr.ph.i ], [ %5, %.preheader.i ] ; 2 uses
  %i.r = load float, ptr %.03237.i, align 4, !tbaa !42
  %i.s = fpext float %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %.03138.i, i64 4
  tail call fastcc void @DoubleToRational(double noundef %i.s, ptr noundef %.03138.i, ptr noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.03237.i, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.03138.i, i64 8
  %i.w = add nuw i32 %.039.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.w, %4
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !29
  %i.z = and i32 %i.y, 128
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @TIFFSwabArrayOfLong(ptr noundef nonnull %i.p, i64 noundef %i.c) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.aa = shl i32 %4, 3
  %i.ab = tail call fastcc i32 @TIFFWriteDirectoryTagData(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 5, i32 noundef %4, i32 noundef %i.aa, ptr noundef nonnull %i.p)
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #8
  br label %TIFFWriteDirectoryTagCheckedRationalArray.exit

TIFFWriteDirectoryTagCheckedRationalArray.exit:   ; preds = %EvaluateIFDdatasizeWrite.exit.i, %bb.e, %bb.g
  %.033.i = phi i32 [ 1, %EvaluateIFDdatasizeWrite.exit.i ], [ 0, %bb.e ], [ %i.ab, %bb.g ]
  ret i32 %.033.i
}

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @TIFFFieldTag(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFFieldSetGetSize(ptr noundef) local_unnamed_addr #1

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @TIFFNumberOfDirectories(ptr noundef) local_unnamed_addr #1

declare i32 @_TIFFCheckDirNumberAndOffset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFFreeDirectory(ptr noundef) local_unnamed_addr #1

declare i32 @TIFFCreateDirectory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFWriteDirectoryTagData(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull %2, i16 noundef zeroext %3, i16 noundef zeroext range(i16 0, 19) %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !30     ; 4 uses
  %.not98 = icmp eq i32 %i.b, 0
  br i1 %.not98, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.b to i64         ; 6 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i16, ptr %i.c, align 8, !tbaa !51
  %i.e = icmp ugt i16 %i.d, %3
  br i1 %i.e, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %i.f = trunc nuw i64 %indvars.iv to i32
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %.lr.ph97.preheader, label %.thread

.lr.ph97.preheader:                               ; preds = %.preheader
  %i.h = sub nsw i64 %wide.trip.count, %indvars.iv
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97.prol.loopexit, label %.lr.ph97.prol

.lr.ph97.prol:                                    ; preds = %.lr.ph97.preheader
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %wide.trip.count
  %i.j = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !122
  br label %.lr.ph97.prol.loopexit

.lr.ph97.prol.loopexit:                           ; preds = %.lr.ph97.prol, %.lr.ph97.preheader
  %indvars.iv106.unr = phi i64 [ %wide.trip.count, %.lr.ph97.preheader ], [ %i.j, %.lr.ph97.prol ]
  %i.l = add nsw i64 %wide.trip.count, -1
  %i.m = icmp eq i64 %indvars.iv, %i.l
  br i1 %i.m, label %.thread, label %.lr.ph97

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.loopexit99, label %.lr.ph

.lr.ph97:                                         ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97
  %indvars.iv106 = phi i64 [ %i.r, %.lr.ph97 ], [ %indvars.iv106.unr, %.lr.ph97.prol.loopexit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv106
  %i.o = add nsw i64 %indvars.iv106, -1           ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !tbaa.struct !122
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.o
  %i.r = add nsw i64 %indvars.iv106, -2           ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !122
  %.wide.1 = icmp ugt i64 %i.r, %indvars.iv
  br i1 %.wide.1, label %.lr.ph97, label %.thread

.thread.loopexit99:                               ; preds = %bb.b
  %i.t = zext i32 %i.b to i64
  br label %.thread

.thread:                                          ; preds = %.lr.ph97.prol.loopexit, %.lr.ph97, %.thread.loopexit99, %bb.a, %.preheader
  %.07694 = phi i64 [ %indvars.iv, %.preheader ], [ %i.t, %.thread.loopexit99 ], [ 0, %bb.a ], [ %indvars.iv, %.lr.ph97 ], [ %indvars.iv, %.lr.ph97.prol.loopexit ]
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.07694 ; 4 uses
  store i16 %3, ptr %i.u, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 %4, ptr %i.v, align 2, !tbaa !52
  %i.w = zext i32 %5 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  store i64 0, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !29
  %i.ab = and i32 %i.aa, 524288
  %.not = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ac = select i1 %.not, i32 4, i32 8
  %.not83 = icmp ugt i32 %6, %i.ac
  br i1 %.not83, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.ad = icmp ne ptr %7, null
  %i.ae = icmp ne i32 %6, 0
  %or.cond = and i1 %i.ae, %i.ad
  br i1 %or.cond, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %6 to i64
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.y, ptr noundef nonnull %7, i64 noundef %i.af) #8
  br label %bb.s

bb.e:                                             ; preds = %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !38 ; 5 uses
  %i.ai = zext i32 %6 to i64                      ; 4 uses
  %i.aj = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295
  %spec.select = select i1 %.not, i64 %i.ak, i64 %i.aj ; 4 uses
  %i.al = icmp ult i64 %spec.select, %i.ah
  %i.am = icmp ult i64 %spec.select, %i.ai
  %or.cond89 = or i1 %i.al, %i.am
  br i1 %or.cond89, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagData.module, ptr noundef nonnull @.str.29) #8
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.an = tail call i32 @_TIFFSeekOK(ptr noundef nonnull %0, i64 noundef %i.ah) #8
  %.not84 = icmp eq i32 %i.an, 0
  br i1 %.not84, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagData.module, ptr noundef nonnull @.str.35) #8
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ao = icmp slt i32 %6, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagData.module, ptr noundef nonnull @.str.36) #8
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = tail call i64 %i.aq(ptr noundef %i.as, ptr noundef %7, i64 noundef %i.ai) #8
  %i.au = icmp eq i64 %i.at, %i.ai
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFWriteDirectoryTagData.module, ptr noundef nonnull @.str.35) #8
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.av = and i64 %spec.select, 1
  %spec.select90 = add i64 %i.av, %spec.select
  store i64 %spec.select90, ptr %i.ag, align 8, !tbaa !38
  %i.aw = load i32, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ax = and i32 %i.aw, 524288
  %.not86 = icmp eq i32 %i.ax, 0
  br i1 %.not86, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ay = trunc i64 %i.ah to i32
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !30
  %i.az = and i32 %i.aw, 128
  %.not87 = icmp eq i32 %i.az, 0
  br i1 %.not87, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @TIFFSwabLong(ptr noundef nonnull %i.a) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_TIFFmemcpy(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i64 noundef 4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !47
  %i.ba = load i32, ptr %i.z, align 8, !tbaa !29
  %i.bb = and i32 %i.ba, 128
  %.not88 = icmp eq i32 %i.bb, 0
  br i1 %.not88, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @TIFFSwabLong8(ptr noundef nonnull %i.y) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p, %bb.c, %bb.d
  %i.bc = load i32, ptr %1, align 4, !tbaa !30
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %1, align 4, !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.j, %bb.h, %bb.l, %bb.s
  %.1 = phi i32 [ 1, %bb.s ], [ 0, %bb.l ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.f ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @DoubleToRational(double noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = fcmp ult double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !30
  store i32 0, ptr %1, align 4, !tbaa !30
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExt(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, f0x41EFFFFFFFE00000
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !30
  store i32 0, ptr %2, align 4, !tbaa !30
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.c = fptoui double %0 to i32                  ; 2 uses
  %i.d = uitofp i32 %i.c to double
  %i.e = fcmp oeq double %0, %i.d
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.c, ptr %1, align 4, !tbaa !30
  store i32 1, ptr %2, align 4, !tbaa !30
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.f = fcmp olt double %0, f0x3DF0000000100000
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !30
  store i32 -1, ptr %2, align 4, !tbaa !30
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.g = tail call double @llvm.trunc.f64(double %0)
  %i.h = fcmp une double %i.g, %0                 ; 2 uses
  %i.i = fcmp olt double %0, f0x43D0000000000000
  %or.cond76.i = and i1 %i.i, %i.h
  br i1 %or.cond76.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.05478.i = phi i64 [ %i.j, %.lr.ph.i ], [ 1, %bb.i ] ; 2 uses
  %.06077.i = phi double [ %i.k, %.lr.ph.i ], [ %0, %bb.i ]
  %i.j = shl nuw nsw i64 %.05478.i, 1             ; 2 uses
  %i.k = fmul double %.06077.i, 2.000000e+00      ; 5 uses
  %i.l = tail call double @llvm.trunc.f64(double %i.k)
  %i.m = fcmp une double %i.l, %i.k
  %i.n = fcmp olt double %i.k, f0x43D0000000000000
  %or.cond.i = and i1 %i.n, %i.m
  %i.o = icmp samesign ult i64 %.05478.i, 2305843009213693952
  %or.cond65.i = select i1 %or.cond.i, i1 %i.o, i1 false
  br i1 %or.cond65.i, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.i
  %.060.lcssa.i = phi double [ %0, %bb.i ], [ %i.k, %.lr.ph.i ]
  %.054.lcssa.i = phi i64 [ 1, %bb.i ], [ %i.j, %.lr.ph.i ]
  %i.p = fptoui double %.060.lcssa.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.critedge.i
  %.05286.i = phi i32 [ 0, %.critedge.i ], [ %i.ab, %bb.l ] ; 2 uses
end_hunk_0
begin_hunk_1_@DoubleToSrational:bb.a
  br i1 %i.bp, label %.lr.ph89.i57, label %ToRationalEuclideanGCD.exit66

ToRationalEuclideanGCD.exit66:                    ; preds = %.lr.ph89.i57, %.thread.i52
  %.sroa.5.3.lcssa.i55 = phi i64 [ %.sroa.5.0.lcssa.i53, %.thread.i52 ], [ %i.bl, %.lr.ph89.i57 ] ; 3 uses
  %.sroa.7.3.lcssa.i56 = phi i64 [ %.sroa.7.0.lcssa.i54, %.thread.i52 ], [ %i.bm, %.lr.ph89.i57 ] ; 3 uses
  %i.bq = icmp ugt i64 %.sroa.5.3.lcssa.i, 2147483647
  %i.br = icmp ugt i64 %.sroa.7.3.lcssa.i, 2147483647
  %or.cond = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ToRationalEuclideanGCD.exit66
  %i.bs = sitofp i32 %.0 to double
  %i.bt = fmul double %.032, %i.bs
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExt(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, double noundef %i.bt, i64 noundef %.sroa.5.3.lcssa.i, i64 noundef %.sroa.7.3.lcssa.i, i64 noundef %.sroa.5.3.lcssa.i55, i64 noundef %.sroa.7.3.lcssa.i56) #8
  br label %bb.o

bb.o:                                             ; preds = %ToRationalEuclideanGCD.exit66, %bb.n
  %i.bu = insertelement <2 x i64> poison, i64 %.sroa.5.3.lcssa.i, i64 0
  %i.bv = insertelement <2 x i64> %i.bu, i64 %.sroa.5.3.lcssa.i55, i64 1
  %i.bw = uitofp <2 x i64> %i.bv to <2 x double>
  %i.bx = insertelement <2 x i64> poison, i64 %.sroa.7.3.lcssa.i, i64 0
  %i.by = insertelement <2 x i64> %i.bx, i64 %.sroa.7.3.lcssa.i56, i64 1
  %i.bz = uitofp <2 x i64> %i.by to <2 x double>
  %i.ca = fdiv <2 x double> %i.bw, %i.bz
  %i.cb = insertelement <2 x double> poison, double %.032, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fsub <2 x double> %i.cc, %i.ca
  %i.ce = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cd) ; 2 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 0
  %i.cg = extractelement <2 x double> %i.ce, i64 1
  %i.ch = fcmp olt double %i.cf, %i.cg            ; 2 uses
  %. = select i1 %i.ch, i64 %.sroa.5.3.lcssa.i, i64 %.sroa.5.3.lcssa.i55
  %.pn = trunc i64 %. to i32
  %storemerge34 = mul i32 %.0, %.pn
  store i32 %storemerge34, ptr %1, align 4, !tbaa !30
  %storemerge.in.sroa.speculated = select i1 %i.ch, i64 %.sroa.7.3.lcssa.i, i64 %.sroa.7.3.lcssa.i56
  %storemerge = trunc i64 %storemerge.in.sroa.speculated to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.d, %bb.b
  %storemerge.sink = phi i32 [ %storemerge, %bb.o ], [ 2147483647, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store i32 %storemerge.sink, ptr %2, align 4, !tbaa !30
  ret void
}

declare void @TIFFSwabArrayOfFloat(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @_TIFFGetDirNumberFromOffset(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !9, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"p1 short", !9, i64 0}
!17 = !{!"p1 long", !9, i64 0}
!18 = !{!"", !13, i64 0, !13, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!19 = !{!"p1 float", !9, i64 0}
!20 = !{!"", !5, i64 0, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !13, i64 52, !13, i64 54, !13, i64 56, !13, i64 58, !6, i64 60, !13, i64 64, !13, i64 66, !14, i64 72, !14, i64 80, !15, i64 88, !15, i64 92, !13, i64 96, !13, i64 98, !15, i64 100, !15, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !13, i64 140, !16, i64 144, !6, i64 152, !6, i64 156, !17, i64 160, !17, i64 168, !6, i64 176, !18, i64 184, !18, i64 216, !13, i64 248, !17, i64 256, !5, i64 264, !13, i64 268, !5, i64 272, !19, i64 296, !6, i64 304, !10, i64 312, !13, i64 320, !6, i64 324, !9, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !6, i64 360, !9, i64 368}
!21 = !{!"any p2 pointer", !9, i64 0}
!22 = !{!"p2 _ZTS10_TIFFField", !21, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !9, i64 0}
!24 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!25 = !{!"p1 _ZTS11client_info", !9, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !9, i64 0}
!27 = !{!"tiff", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !6, i64 64, !20, i64 72, !20, i64 448, !5, i64 824, !13, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !6, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !13, i64 888, !11, i64 896, !6, i64 904, !6, i64 908, !11, i64 912, !6, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !6, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !9, i64 1056, !9, i64 1064, !10, i64 1072, !11, i64 1080, !11, i64 1088, !10, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !10, i64 1128, !11, i64 1136, !10, i64 1144, !11, i64 1152, !9, i64 1160, !9, i64 1168, !9, i64 1176, !9, i64 1184, !9, i64 1192, !9, i64 1200, !9, i64 1208, !9, i64 1216, !9, i64 1224, !22, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !9, i64 1304, !9, i64 1312, !9, i64 1320, !9, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !6, i64 1360}
!28 = !{!27, !6, i64 12}
!29 = !{!27, !6, i64 16}
!30 = !{!6, !6, i64 0}
!31 = !{!27, !13, i64 120}
!32 = !{!27, !11, i64 416}
!33 = !{!27, !13, i64 116}
!34 = !{!13, !13, i64 0}
!35 = !{!27, !13, i64 130}
!36 = !{!27, !17, i64 232}
!37 = !{!27, !13, i64 118}
!38 = !{!27, !11, i64 880}
!39 = !{!11, !11, i64 0}
!40 = !{!"double", !5, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!15, !15, i64 0}
!43 = !{!27, !11, i64 24}
!44 = !{!27, !9, i64 1200}
!45 = !{!27, !9, i64 1176}
!46 = !{!27, !9, i64 1192}
!47 = !{!5, !5, i64 0}
!48 = !{!27, !11, i64 40}
!49 = !{!27, !10, i64 0}
!50 = !{!27, !9, i64 1184}
!51 = !{!18, !13, i64 0}
!52 = !{!18, !13, i64 2}
!53 = !{!18, !11, i64 8}
!54 = !{!27, !5, i64 408}
!55 = distinct !{null}
!56 = !{!27, !9, i64 976}
!57 = !{!27, !9, i64 1032}
!58 = !{!27, !11, i64 1136}
!59 = !{!27, !10, i64 1096}
!60 = !{!27, !6, i64 88}
!61 = !{!27, !6, i64 92}
!62 = !{!27, !6, i64 100}
!63 = !{!27, !6, i64 104}
!64 = !{!27, !15, i64 160}
!65 = !{!27, !15, i64 164}
!66 = !{!27, !15, i64 172}
!67 = !{!27, !15, i64 176}
!68 = !{!27, !6, i64 112}
!69 = !{!27, !13, i64 122}
!70 = !{!27, !13, i64 124}
!71 = !{!27, !13, i64 126}
!72 = !{!27, !13, i64 128}
!73 = !{!27, !6, i64 132}
!74 = !{!27, !13, i64 136}
!75 = !{!27, !13, i64 138}
!76 = !{!27, !13, i64 170}
!77 = !{!27, !13, i64 168}
!78 = !{!27, !17, i64 240}
!79 = !{!27, !6, i64 228}
!80 = !{!16, !16, i64 0}
!81 = !{!27, !13, i64 212}
!82 = !{!27, !14, i64 144}
!83 = !{!27, !14, i64 152}
!84 = !{!27, !6, i64 96}
!85 = !{!27, !6, i64 108}
!86 = !{!27, !13, i64 340}
!87 = !{!27, !19, i64 368}
!88 = !{!27, !6, i64 376}
!89 = !{!27, !10, i64 384}
!90 = !{!27, !13, i64 392}
!91 = !{!27, !13, i64 320}
!92 = !{!27, !17, i64 328}
!93 = !{!27, !13, i64 888}
!94 = !{!27, !11, i64 896}
!95 = !{!27, !11, i64 1240}
!96 = !{!27, !22, i64 1232}
!97 = !{!23, !23, i64 0}
!98 = !{!"_TIFFField", !6, i64 0, !13, i64 4, !13, i64 6, !6, i64 8, !6, i64 12, !6, i64 16, !13, i64 20, !5, i64 22, !5, i64 23, !10, i64 24, !26, i64 32}
!99 = !{!98, !13, i64 20}
!100 = !{!98, !6, i64 16}
!101 = !{!98, !6, i64 0}
!102 = !{!10, !10, i64 0}
!103 = !{!9, !9, i64 0}
!104 = !{!98, !10, i64 24}
!105 = !{!27, !6, i64 396}
!106 = !{!27, !9, i64 400}
!107 = !{!"", !23, i64 0, !6, i64 8, !9, i64 16}
!108 = !{!107, !23, i64 0}
!109 = !{!107, !6, i64 8}
!110 = !{!98, !6, i64 8}
!111 = !{!107, !9, i64 16}
!112 = !{!27, !5, i64 409}
!113 = !{!27, !6, i64 852}
!114 = !{!27, !11, i64 424}
!115 = !{!27, !11, i64 32}
!116 = !{!27, !6, i64 848}
!117 = !{ptr @TIFFWriteDirectory}
!118 = !{!27, !11, i64 264}
!119 = !{!27, !13, i64 258}
!120 = !{!27, !11, i64 296}
!121 = !{!27, !13, i64 290}
!122 = !{i64 0, i64 2, !34, i64 2, i64 2, !34, i64 8, i64 8, !39, i64 16, i64 8, !47, i64 24, i64 1, !47}
end_hunk_1
