Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_jpeg?download=true
inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@tables_empty_output_buffer:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60
  %i.g = add i32 %i.f, 1000
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @_TIFFreallocExt(ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h) #16 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !201    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 54, ptr %i.l, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 100, ptr %i.m, align 4, !tbaa !36
  %i.n = load ptr, ptr %0, align 8, !tbaa !201
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202
  tail call void %i.o(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.r, ptr %i.s, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 1000, ptr %i.t, align 8, !tbaa !136
  store ptr %i.i, ptr %i.c, align 8, !tbaa !48
  %i.u = add i32 %i.p, 1000
  store i32 %i.u, ptr %i.e, align 8, !tbaa !60
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_term_destination(ptr nofree noundef captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load i64, ptr %i.a, align 8, !tbaa !136
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = sub i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !60
  ret void
}

declare ptr @_TIFFreallocExt(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_write_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_init_destination(ptr nofree noundef captures(none) initializes((1064, 1080)) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.d, ptr %i.e, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.g, ptr %i.h, align 8, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @std_empty_output_buffer(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.d, ptr %i.e, align 8, !tbaa !69
  %i.f = tail call i32 @TIFFFlushData1(ptr noundef %i.b) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = load i64, ptr %i.c, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.j, ptr %i.k, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_term_destination(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  store ptr %i.d, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load i64, ptr %i.h, align 8, !tbaa !136
  %i.j = sub nsw i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.j, ptr %i.k, align 8, !tbaa !69
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_colorspace(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGEncodeRaw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !117
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull @.str.47) #16
  br label %.loopexit108

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1170
  %i.m = load i16, ptr %i.l, align 2, !tbaa !98
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = add nsw i64 %i.k, -1
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = sdiv i64 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1172 ; 3 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !99
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.n
  %i.v = add nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.q, %i.y
  %i.aa = mul i64 %i.z, %i.v
  %i.ab = add nsw i64 %i.aa, 7
  %i.ac = sdiv i64 %i.ab, 8                       ; 4 uses
  %i.ad = sdiv i64 %2, %i.ac
  %i.ae = mul nsw i64 %i.ad, %i.t                 ; 3 uses
  %i.af = srem i64 %2, %i.ac
  %.not101 = icmp eq i64 %i.af, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !117
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef nonnull @.str.48) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %.fr = freeze i32 %i.ak                         ; 7 uses
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph157, label %.loopexit108

.lr.ph157:                                        ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1184 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 11 uses
  %.not103111 = icmp eq i32 %.fr, 0
  %i.ap = sext i32 %i.e to i64                    ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %.not103111, label %.lr.ph157.split.us, label %.lr.ph157.split.preheader

.lr.ph157.split.preheader:                        ; preds = %.lr.ph157
  %xtraiter248.a = and i32 %.fr, 7                ; 2 uses
  %lcmp.mod249.not.a = icmp eq i32 %xtraiter248.a, 0
  %i.as = icmp ult i32 %.fr, 8
  br label %.lr.ph157.split

.lr.ph157.split.us:                               ; preds = %.lr.ph157, %bb.h
  %.089155.us = phi i64 [ %i.dc, %bb.h ], [ %i.ae, %.lr.ph157 ]
  %i.at = load i32, ptr %i.am, align 4, !tbaa !36
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.us158.preheader, label %._crit_edge144.split.us.us

.lr.ph.us158.preheader:                           ; preds = %.lr.ph157.split.us
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !36
  br label %.lr.ph.us158

.lr.ph.us158:                                     ; preds = %.lr.ph.us158.preheader, %._crit_edge126.us.us
  %indvars.iv193 = phi i64 [ 0, %.lr.ph.us158.preheader ], [ %indvars.iv.next194, %._crit_edge126.us.us ] ; 2 uses
  %.081142.us.us = phi ptr [ %i.av, %.lr.ph.us158.preheader ], [ %i.cn, %._crit_edge126.us.us ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.081142.us.us, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !112 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.081142.us.us, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !113
  %i.ba = shl i32 %i.az, 3                        ; 3 uses
  %i.bb = icmp sgt i32 %i.ax, 0
  br i1 %i.bb, label %.lr.ph125.us.us, label %._crit_edge126.us.us

.lr.ph125.us.us:                                  ; preds = %.lr.ph.us158
  %i.bc = getelementptr inbounds nuw i8, ptr %.081142.us.us, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !111
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv193 ; 3 uses
  %i.bf = icmp eq i32 %i.bd, 1
  %i.bg = icmp sgt i32 %i.ba, 0                   ; 2 uses
  br i1 %i.bf, label %.preheader105.us.us.us.preheader, label %.lr.ph125.split.us145.us

.preheader105.us.us.us.preheader:                 ; preds = %.lr.ph125.us.us
  %.pre196 = load ptr, ptr %i.be, align 8, !tbaa !126
  %.pre198 = load i32, ptr %i.ao, align 8, !tbaa !116
  br label %.loopexit.us.us.us

.lr.ph125.split.us145.us:                         ; preds = %.lr.ph125.us.us
  br i1 %i.bg, label %.preheader106.us.us.us.us, label %._crit_edge126.us.us

.preheader106.us.us.us.us:                        ; preds = %.lr.ph125.split.us145.us, %._crit_edge.us136.us.us.us
  %.082123.us131.us.us.us = phi i32 [ %i.bx, %._crit_edge.us136.us.us.us ], [ 0, %.lr.ph125.split.us145.us ] ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !126
  %i.bi = load i32, ptr %i.ao, align 8, !tbaa !116
  %i.bj = mul nsw i32 %i.bi, %i.ax
  %i.bk = add nsw i32 %i.bj, %.082123.us131.us.us.us
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !118 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bn, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader106.us.us.us.us
  %.1120.us134.us.us.us = phi i32 [ 0, %.preheader106.us.us.us.us ], [ %i.bw, %bb.f ]
  %.4119.us135.us.us.us = phi ptr [ %i.bn, %.preheader106.us.us.us.us ], [ %i.bv, %bb.f ] ; 9 uses
  store i8 %load_initial, ptr %.4119.us135.us.us.us, align 1, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 1
  store i8 %load_initial, ptr %i.bo, align 1, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 2
  store i8 %load_initial, ptr %i.bp, align 1, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 3
  store i8 %load_initial, ptr %i.bq, align 1, !tbaa !36
  %i.br = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 4
  store i8 %load_initial, ptr %i.br, align 1, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 5
  store i8 %load_initial, ptr %i.bs, align 1, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 6
  store i8 %load_initial, ptr %i.bt, align 1, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 7
  store i8 %load_initial, ptr %i.bu, align 1, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %.4119.us135.us.us.us, i64 8
  %i.bw = add nuw nsw i32 %.1120.us134.us.us.us, 8 ; 2 uses
  %exitcond186.not.7 = icmp eq i32 %i.bw, %i.ba
  br i1 %exitcond186.not.7, label %._crit_edge.us136.us.us.us, label %bb.f

._crit_edge.us136.us.us.us:                       ; preds = %bb.f
  %i.bx = add nuw nsw i32 %.082123.us131.us.us.us, 1 ; 2 uses
  %exitcond187.not = icmp eq i32 %i.bx, %i.ax
  br i1 %exitcond187.not, label %._crit_edge126.us.us, label %.preheader106.us.us.us.us

.loopexit.us.us.us:                               ; preds = %._crit_edge.us129.us.us, %.preheader105.us.us.us.preheader
  %4 = phi i32 [ %.pre198, %.preheader105.us.us.us.preheader ], [ %6, %._crit_edge.us129.us.us ] ; 2 uses
  %5 = phi ptr [ %.pre196, %.preheader105.us.us.us.preheader ], [ %7, %._crit_edge.us129.us.us ] ; 2 uses
  %.082123.us.us.us = phi i32 [ 0, %.preheader105.us.us.us.preheader ], [ %i.cm, %._crit_edge.us129.us.us ] ; 2 uses
  br i1 %i.bg, label %.lr.ph121.us.us.us.preheader, label %._crit_edge.us129.us.us

.lr.ph121.us.us.us.preheader:                     ; preds = %.loopexit.us.us.us
  %i.by = mul nsw i32 %4, %i.ax
  %i.bz = add nsw i32 %i.by, %.082123.us.us.us
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !118 ; 2 uses
  %scevgep232 = getelementptr i8, ptr %i.cc, i64 -1
  %load_initial233 = load i8, ptr %scevgep232, align 1 ; 8 uses
  br label %.lr.ph121.us.us.us

.lr.ph121.us.us.us:                               ; preds = %.lr.ph121.us.us.us, %.lr.ph121.us.us.us.preheader
  %.1120.us.us.us = phi i32 [ 0, %.lr.ph121.us.us.us.preheader ], [ %i.cl, %.lr.ph121.us.us.us ]
  %.4119.us.us.us = phi ptr [ %i.cc, %.lr.ph121.us.us.us.preheader ], [ %i.ck, %.lr.ph121.us.us.us ] ; 9 uses
  store i8 %load_initial233, ptr %.4119.us.us.us, align 1, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 1
  store i8 %load_initial233, ptr %i.cd, align 1, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 2
  store i8 %load_initial233, ptr %i.ce, align 1, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 3
  store i8 %load_initial233, ptr %i.cf, align 1, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 4
  store i8 %load_initial233, ptr %i.cg, align 1, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 5
  store i8 %load_initial233, ptr %i.ch, align 1, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 6
  store i8 %load_initial233, ptr %i.ci, align 1, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 7
  store i8 %load_initial233, ptr %i.cj, align 1, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 8
  %i.cl = add nuw nsw i32 %.1120.us.us.us, 8      ; 2 uses
  %exitcond188.not.7 = icmp eq i32 %i.cl, %i.ba
  br i1 %exitcond188.not.7, label %._crit_edge.us129.us.us.loopexit, label %.lr.ph121.us.us.us

._crit_edge.us129.us.us.loopexit:                 ; preds = %.lr.ph121.us.us.us
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !126
  %.pre197 = load i32, ptr %i.ao, align 8, !tbaa !116
  br label %._crit_edge.us129.us.us

._crit_edge.us129.us.us:                          ; preds = %._crit_edge.us129.us.us.loopexit, %.loopexit.us.us.us
  %6 = phi i32 [ %.pre197, %._crit_edge.us129.us.us.loopexit ], [ %4, %.loopexit.us.us.us ]
  %7 = phi ptr [ %.pre, %._crit_edge.us129.us.us.loopexit ], [ %5, %.loopexit.us.us.us ]
  %i.cm = add nuw nsw i32 %.082123.us.us.us, 1    ; 2 uses
  %exitcond192.not = icmp eq i32 %i.cm, %i.ax
  br i1 %exitcond192.not, label %._crit_edge126.us.us, label %.loopexit.us.us.us

._crit_edge126.us.us:                             ; preds = %._crit_edge.us136.us.us.us, %._crit_edge.us129.us.us, %.lr.ph125.split.us145.us, %.lr.ph.us158
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.081142.us.us, i64 96
  %i.co = load i32, ptr %i.am, align 4, !tbaa !36
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next194, %i.cp
  br i1 %i.cq, label %.lr.ph.us158, label %._crit_edge144.split.us.us

._crit_edge144.split.us.us:                       ; preds = %._crit_edge126.us.us, %.lr.ph157.split.us
  %i.cr = load i32, ptr %i.ao, align 8, !tbaa !116 ; 2 uses
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.ao, align 8, !tbaa !116
  %i.ct = icmp sgt i32 %i.cr, 6
  br i1 %i.ct, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge144.split.us.us
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !36
  %i.cv = shl nsw i32 %i.cu, 3                    ; 2 uses
  %i.cw = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an, i32 noundef %i.cv)
  %.not102.us = icmp eq i32 %i.cw, %i.cv
  br i1 %.not102.us, label %.thread.us, label %.split.us

.thread.us:                                       ; preds = %bb.g
  store i32 0, ptr %i.ao, align 8, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %.thread.us, %._crit_edge144.split.us.us
  %i.cx = load i16, ptr %i.r, align 4, !tbaa !99  ; 2 uses
  %i.cy = zext i16 %i.cx to i32
  %i.cz = load i32, ptr %i.ar, align 4, !tbaa !105
  %i.da = add i32 %i.cz, %i.cy
  store i32 %i.da, ptr %i.ar, align 4, !tbaa !105
  %i.db = zext i16 %i.cx to i64
  %i.dc = sub nsw i64 %.089155.us, %i.db          ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph157.split.us, label %.loopexit108

.lr.ph157.split:                                  ; preds = %.lr.ph157.split.preheader, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %.lr.ph157.split.preheader ] ; 2 uses
  %.089155 = phi i64 [ %i.jl, %bb.j ], [ %i.ae, %.lr.ph157.split.preheader ]
  %.098153 = phi ptr [ %i.jj, %bb.j ], [ %1, %.lr.ph157.split.preheader ] ; 3 uses
  %i.de = mul i64 %i.ac, %indvar
  %i.df = add i64 %i.de, %i.a
  %i.dg = load i32, ptr %i.am, align 4, !tbaa !36
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader, label %._crit_edge144.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157.split
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge126
  %indvars.iv183 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next184, %._crit_edge126 ] ; 2 uses
  %.081142 = phi ptr [ %i.di, %.lr.ph.preheader ], [ %i.iv, %._crit_edge126 ] ; 4 uses
  %.085140 = phi i32 [ 0, %.lr.ph.preheader ], [ %.186.lcssa, %._crit_edge126 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.081142, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !111 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.081142, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !112 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.081142, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !113
  %i.dp = shl i32 %i.do, 3                        ; 3 uses
  %i.dq = mul i32 %i.dk, %.fr                     ; 3 uses
  %i.dr = sub i32 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp sgt i32 %i.dm, 0
  br i1 %i.ds, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv183 ; 2 uses
  %i.du = icmp eq i32 %i.dk, 1
  %i.dv = icmp sgt i32 %i.dk, 0
  %i.dw = icmp sgt i32 %i.dr, 0                   ; 2 uses
  %i.dx = sext i32 %.085140 to i64                ; 3 uses
  br i1 %i.du, label %.lr.ph.us.preheader.preheader, label %.preheader106.preheader

.lr.ph.us.preheader.preheader:                    ; preds = %.lr.ph125
  %xtraiter251 = and i32 %i.dr, 7                 ; 3 uses
  %i.dy = sub i32 %i.dq, %i.dp
  %i.dz = icmp ugt i32 %i.dy, -8
  %unroll_iter255 = and i32 %i.dr, 2147483640
  %lcmp.mod253.not = icmp eq i32 %xtraiter251, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter251, 0
  br label %.lr.ph.us.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.ea = sext i32 %i.dk to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.dk to i64        ; 8 uses
  %i.eb = add i64 %i.df, %i.dx
  %min.iters.check = icmp ult i32 %i.dk, 4
  %min.iters.check222 = icmp ult i32 %i.dk, 32
  %i.ec = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ec, 0
  %n.vec224 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n229 = icmp eq i64 %n.vec224, %wide.trip.count
  %xtraiter245 = and i32 %i.dr, 7                 ; 3 uses
  %i.ed = sub i32 %i.dq, %i.dp
  %i.ee = icmp ugt i32 %i.ed, -8
  %unroll_iter = and i32 %i.dr, 2147483640
  %lcmp.mod246.not = icmp eq i32 %xtraiter245, 0
  %lcmp.mod247 = icmp ne i32 %xtraiter245, 0
  br label %.preheader106

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %._crit_edge.us129
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %._crit_edge.us129 ], [ %i.dx, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %.082123.us = phi i32 [ %i.ga, %._crit_edge.us129 ], [ 0, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !126
  %i.eg = load i32, ptr %i.ao, align 8, !tbaa !116
  %i.eh = mul nsw i32 %i.eg, %i.dm
  %i.ei = add nsw i32 %i.eh, %.082123.us
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !118 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %.098153, i64 %indvars.iv179 ; 2 uses
  br i1 %lcmp.mod249.not.a, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.087118.us.prol = phi i32 [ %i.en, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %.090117.us.prol = phi ptr [ %i.ep, %.lr.ph.us.prol ], [ %i.el, %.lr.ph.us.preheader ] ; 3 uses
  %.092116.us.prol = phi ptr [ %i.eq, %.lr.ph.us.prol ], [ %i.em, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter250 = phi i32 [ %prol.iter250.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.en = add i32 %.087118.us.prol, -1            ; 2 uses
  %i.eo = load i8, ptr %.092116.us.prol, align 1, !tbaa !36
  %i.ep = getelementptr inbounds nuw i8, ptr %.090117.us.prol, i64 1 ; 3 uses
  store i8 %i.eo, ptr %.090117.us.prol, align 1, !tbaa !36
  %i.eq = getelementptr inbounds i8, ptr %.092116.us.prol, i64 %i.ap ; 2 uses
  %prol.iter250.next = add i32 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i32 %prol.iter250.next, %xtraiter248.a
  br i1 %prol.iter250.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !203

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.090117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.090117.us.prol, %.lr.ph.us.prol ]
  %.lcssa244.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.ep, %.lr.ph.us.prol ]
  %.087118.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.en, %.lr.ph.us.prol ]
  %.090117.us.unr = phi ptr [ %i.el, %.lr.ph.us.preheader ], [ %i.ep, %.lr.ph.us.prol ]
  %.092116.us.unr = phi ptr [ %i.em, %.lr.ph.us.preheader ], [ %i.eq, %.lr.ph.us.prol ]
  br i1 %i.as, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.087118.us = phi i32 [ %i.fm, %.lr.ph.us ], [ %.087118.us.unr, %.lr.ph.us.prol.loopexit ]
  %.090117.us = phi ptr [ %i.fo, %.lr.ph.us ], [ %.090117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.092116.us = phi ptr [ %i.fp, %.lr.ph.us ], [ %.092116.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %i.er = load i8, ptr %.092116.us, align 1, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %.090117.us, i64 1
  store i8 %i.er, ptr %.090117.us, align 1, !tbaa !36
  %i.et = getelementptr inbounds i8, ptr %.092116.us, i64 %i.ap ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %.090117.us, i64 2
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !36
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 %i.ap ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !36
  %i.ey = getelementptr inbounds nuw i8, ptr %.090117.us, i64 3
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !36
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ap ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !36
  %i.fb = getelementptr inbounds nuw i8, ptr %.090117.us, i64 4
  store i8 %i.fa, ptr %i.ey, align 1, !tbaa !36
  %i.fc = getelementptr inbounds i8, ptr %i.ez, i64 %i.ap ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !36
  %i.fe = getelementptr inbounds nuw i8, ptr %.090117.us, i64 5
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !36
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 %i.ap ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !36
  %i.fh = getelementptr inbounds nuw i8, ptr %.090117.us, i64 6
  store i8 %i.fg, ptr %i.fe, align 1, !tbaa !36
  %i.fi = getelementptr inbounds i8, ptr %i.ff, i64 %i.ap ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !36
  %i.fk = getelementptr inbounds nuw i8, ptr %.090117.us, i64 7
  store i8 %i.fj, ptr %i.fh, align 1, !tbaa !36
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.ap ; 2 uses
  %i.fm = add i32 %.087118.us, -8                 ; 2 uses
  %i.fn = load i8, ptr %i.fl, align 1, !tbaa !36
  %i.fo = getelementptr inbounds nuw i8, ptr %.090117.us, i64 8 ; 2 uses
  store i8 %i.fn, ptr %i.fk, align 1, !tbaa !36
  %i.fp = getelementptr inbounds i8, ptr %i.fl, i64 %i.ap
  %.not104.us.7 = icmp eq i32 %i.fm, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.us
  %i.fq = getelementptr inbounds nuw i8, ptr %.090117.us, i64 7
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.loopexit.us.unr-lcssa
  %.090117.us.lcssa = phi ptr [ %.090117.us.lcssa.unr, %.lr.ph.us.prol.loopexit ], [ %i.fq, %.loopexit.us.unr-lcssa ]
  %.lcssa244 = phi ptr [ %.lcssa244.unr, %.lr.ph.us.prol.loopexit ], [ %i.fo, %.loopexit.us.unr-lcssa ] ; 2 uses
  br i1 %i.dw, label %.lr.ph121.us.preheader, label %._crit_edge.us129

.lr.ph121.us.preheader:                           ; preds = %.loopexit.us
  %load_initial238 = load i8, ptr %.090117.us.lcssa, align 1 ; 9 uses
  br i1 %i.dz, label %.lr.ph121.us.epil.preheader, label %.lr.ph121.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4119.us = phi ptr [ %i.fy, %.lr.ph121.us ], [ %.lcssa244, %.lr.ph121.us.preheader ] ; 9 uses
  %niter256 = phi i32 [ %niter256.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i8 %load_initial238, ptr %.4119.us, align 1, !tbaa !36
end_hunk_0
