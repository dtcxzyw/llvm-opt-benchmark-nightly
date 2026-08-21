inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE:bb.a
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8, !tbaa !424
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.e

._crit_edge:                                      ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.013.lcssa = phi i1 [ true, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.pn.in, %bb.h ]
  ret i1 %.013.lcssa

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.p = load i16, ptr %i.o, align 4, !tbaa !192
  %i.q = icmp eq i16 %i.p, 1
  %i.r = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.s, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %.promoted.i = load i16, ptr %i.b, align 2, !tbaa !26
  %i.u = call i16 @llvm.bswap.i16(i16 %.promoted.i)
  %i.v = zext i16 %i.u to i32
  store i32 %i.v, ptr %i.t, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit: ; preds = %bb.f, %.lr.ph.i.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.w = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.w, label %.lr.ph.i.preheader.i14, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

.lr.ph.i.preheader.i14:                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %.promoted.i15 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.y = call i32 @llvm.bswap.i32(i32 %.promoted.i15)
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.g, %.lr.ph.i.preheader.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit
  %.pn.in = phi i1 [ %i.s, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeItjEEbRT0_.exit ], [ %i.w, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.c
  %i.aa = and i1 %.pn.in, %i.z
  br i1 %i.aa, label %bb.e, label %._crit_edge, !llvm.loop !425
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput14decompress_zipENS0_4spanIcLm18446744073709551615EEES3_(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %struct.z_stream_s, align 8         ; 10 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.g = trunc i64 %2 to i32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, i8 0, i64 104, i1 false)
  store i32 %i.g, ptr %i.h, align 8, !tbaa !426
  store ptr %1, ptr %5, align 8, !tbaa !429
  %i.j = trunc i64 %4 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.j, ptr %i.k, align 8, !tbaa !430
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.l, align 8, !tbaa !431
  %i.m = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str.101, i32 noundef 112)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 %4, ptr %i.b, align 8, !tbaa !25
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.102, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.n = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 4)
  %.not2 = icmp eq i32 %i.n, 1
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 %2, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 %4, ptr %i.d, align 8, !tbaa !25
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.103, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = call i32 @inflateEnd(ptr noundef nonnull %5)
  %.not3 = icmp eq i32 %i.o, 0
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i64 %2, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store i64 %4, ptr %i.f, align 8, !tbaa !25
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmmEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.104, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput25decompress_zip_predictionENS0_4spanIcLm18446744073709551615EEES3_jj(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %1, i64 %2, ptr %3, i64 %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = mul i32 %6, %5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !217
  %i.d = lshr i16 %i.c, 3
  %i.e = zext nneg i16 %i.d to i32
  %i.f = mul i32 %i.a, %i.e
  %i.g = zext i32 %i.f to i64
  %i.h = icmp eq i64 %4, %i.g
  br i1 %i.h, label %bb.c, label %bb.b, !prof !346

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 2337, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput25decompress_zip_predictionENS0_4spanIcLm18446744073709551615EEES3_jj, ptr noundef nonnull @.str.105) #42 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput14decompress_zipENS0_4spanIcLm18446744073709551615EEES3_(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr %1, i64 %2, ptr %3, i64 %4) ; 9 uses
  %i.l = load i16, ptr %i.b, align 8, !tbaa !217
  switch i16 %i.l, label %bb.h [
    i16 8, label %.preheader78
    i16 16, label %bb.e
    i16 32, label %.preheader83
  ]

.preheader83:                                     ; preds = %bb.c
  %i.m = zext i32 %6 to i64                       ; 2 uses
  %.not = icmp eq i32 %6, 0
  %.pre108 = zext i32 %5 to i64                   ; 3 uses
  br i1 %.not, label %._crit_edge90.split, label %.preheader82.lr.ph

.preheader82.lr.ph:                               ; preds = %.preheader83
  %i.n = shl nuw nsw i64 %.pre108, 2
  %.not98 = icmp eq i32 %5, 0
  br i1 %.not98, label %._crit_edge90.split, label %.preheader82.preheader

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.o = icmp eq i32 %5, 1
  br label %.preheader82

.preheader78:                                     ; preds = %bb.c
  %i.p = zext i32 %6 to i64
  %.not100 = icmp eq i32 %6, 0
  br i1 %.not100, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader78
  %i.q = zext i32 %5 to i64                       ; 3 uses
  %i.r = icmp ugt i32 %5, 1
  br i1 %i.r, label %.preheader.preheader, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = add nsw i64 %i.q, -1                     ; 2 uses
  %xtraiter150 = and i64 %i.s, 3                  ; 3 uses
  %i.t = add i32 %5, -2
  %i.u = icmp ult i32 %i.t, 3
  %unroll_iter154 = and i64 %i.s, -4
  %lcmp.mod152.not = icmp eq i64 %xtraiter150, 0
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge96
  %.05197 = phi i64 [ %i.z, %._crit_edge96 ], [ 0, %.preheader.preheader ] ; 3 uses
  %7 = mul i64 %.05197, %i.q
  %scevgep = getelementptr i8, ptr %3, i64 %7
  %i.v = mul nuw i64 %.05197, %i.q
  %invariant.gep117 = getelementptr i8, ptr %3, i64 %i.v ; 5 uses
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  br i1 %i.u, label %.epil.preheader149, label %.preheader.new

._crit_edge96.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod152.not, label %._crit_edge96, label %.epil.preheader149

.epil.preheader149:                               ; preds = %._crit_edge96.unr-lcssa, %.preheader
  %store_forwarded.epil.init = phi i8 [ %load_initial, %.preheader ], [ %i.ak, %._crit_edge96.unr-lcssa ]
  %.05795.epil.init = phi i64 [ 1, %.preheader ], [ %i.al, %._crit_edge96.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod153)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader149
  %store_forwarded.epil = phi i8 [ %store_forwarded.epil.init, %.epil.preheader149 ], [ %i.x, %bb.d ]
  %.05795.epil = phi i64 [ %.05795.epil.init, %.epil.preheader149 ], [ %i.y, %bb.d ] ; 2 uses
  %epil.iter151 = phi i64 [ 0, %.epil.preheader149 ], [ %epil.iter151.next, %bb.d ]
  %gep118.epil = getelementptr i8, ptr %invariant.gep117, i64 %.05795.epil ; 2 uses
  %i.w = load i8, ptr %gep118.epil, align 1, !tbaa !14
  %i.x = add i8 %i.w, %store_forwarded.epil       ; 2 uses
  store i8 %i.x, ptr %gep118.epil, align 1, !tbaa !14
  %i.y = add nuw nsw i64 %.05795.epil, 1
  %epil.iter151.next = add i64 %epil.iter151, 1   ; 2 uses
  %epil.iter151.cmp.not = icmp eq i64 %epil.iter151.next, %xtraiter150
  br i1 %epil.iter151.cmp.not, label %._crit_edge96, label %bb.d, !llvm.loop !432

._crit_edge96:                                    ; preds = %bb.d, %._crit_edge96.unr-lcssa
  %i.z = add nuw nsw i64 %.05197, 1               ; 2 uses
  %exitcond107.not = icmp eq i64 %i.z, %i.p
  br i1 %exitcond107.not, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader, !llvm.loop !433

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %store_forwarded = phi i8 [ %i.ak, %.preheader.new ], [ %load_initial, %.preheader ]
  %.05795 = phi i64 [ %i.al, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %niter155 = phi i64 [ %niter155.next.3, %.preheader.new ], [ 0, %.preheader ]
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %.05795 ; 2 uses
  %i.aa = load i8, ptr %gep118, align 1, !tbaa !14
  %i.ab = add i8 %i.aa, %store_forwarded          ; 2 uses
  store i8 %i.ab, ptr %gep118, align 1, !tbaa !14
  %i.ac = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.1 = getelementptr i8, ptr %i.ac, i64 1  ; 2 uses
  %i.ad = load i8, ptr %gep118.1, align 1, !tbaa !14
  %i.ae = add i8 %i.ad, %i.ab                     ; 2 uses
  store i8 %i.ae, ptr %gep118.1, align 1, !tbaa !14
  %i.af = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.2 = getelementptr i8, ptr %i.af, i64 2  ; 2 uses
  %i.ag = load i8, ptr %gep118.2, align 1, !tbaa !14
  %i.ah = add i8 %i.ag, %i.ae                     ; 2 uses
  store i8 %i.ah, ptr %gep118.2, align 1, !tbaa !14
  %i.ai = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.3 = getelementptr i8, ptr %i.ai, i64 3  ; 2 uses
  %i.aj = load i8, ptr %gep118.3, align 1, !tbaa !14
  %i.ak = add i8 %i.aj, %i.ah                     ; 3 uses
  store i8 %i.ak, ptr %gep118.3, align 1, !tbaa !14
  %i.al = add nuw nsw i64 %.05795, 4              ; 2 uses
  %niter155.next.3 = add nuw i64 %niter155, 4     ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, %unroll_iter154
  br i1 %niter155.ncmp.3, label %._crit_edge96.unr-lcssa, label %.preheader.new, !llvm.loop !434

bb.e:                                             ; preds = %bb.c
  %i.am = lshr i64 %4, 1                          ; 6 uses
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check123 = icmp ult i64 %4, 8
  br i1 %min.iters.check123, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check124 = icmp ult i64 %4, 32
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check
  %n.vec126 = and i64 %i.am, 9223372036854775792  ; 4 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next131, %vector.body127 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index128 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load129 = load <8 x i16>, ptr %i.an, align 2, !tbaa !26
  %wide.load130 = load <8 x i16>, ptr %i.ao, align 2, !tbaa !26
  %i.ap = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load129)
  %i.aq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load130)
  store <8 x i16> %i.ap, ptr %i.an, align 2, !tbaa !26
  store <8 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !26
  %index.next131 = add nuw i64 %index128, 16      ; 2 uses
  %i.ar = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.ar, label %middle.block132, label %vector.body127, !llvm.loop !435

middle.block132:                                  ; preds = %vector.body127
  %cmp.n133 = icmp eq i64 %i.am, %n.vec126
  br i1 %cmp.n133, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block132
  %i.as = and i64 %4, 24
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec134 = and i64 %i.am, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index135 ; 2 uses
  %wide.load136 = load <4 x i16>, ptr %i.at, align 2, !tbaa !26
  %i.au = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load136)
  store <4 x i16> %i.au, ptr %i.at, align 2, !tbaa !26
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next137, %n.vec134
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !436

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.am, %n.vec134
  br i1 %cmp.n138, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec126, %vec.epilog.iter.check ], [ %n.vec134, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !26
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  store i16 %i.ay, ptr %i.aw, align 2, !tbaa !26
  %i.az = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.am
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i, !llvm.loop !437

_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit: ; preds = %.lr.ph.i, %middle.block132, %vec.epilog.middle.block, %bb.e
  %i.ba = zext i32 %6 to i64
  %.not99 = icmp eq i32 %6, 0
  br i1 %.not99, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader79.lr.ph

.preheader79.lr.ph:                               ; preds = %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit
  %i.bb = zext i32 %5 to i64                      ; 3 uses
  %i.bc = icmp ugt i32 %5, 1
  br i1 %i.bc, label %.preheader79.preheader, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit

.preheader79.preheader:                           ; preds = %.preheader79.lr.ph
  %8 = shl nuw nsw i64 %i.bb, 1
  %i.bd = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter146 = and i64 %i.bd, 3                 ; 3 uses
  %i.be = add i32 %5, -2
  %i.bf = icmp ult i32 %i.be, 3
  %unroll_iter = and i64 %i.bd, -4
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod148 = icmp ne i64 %xtraiter146, 0
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge93
  %.05694 = phi i64 [ %i.bk, %._crit_edge93 ], [ 0, %.preheader79.preheader ] ; 3 uses
  %9 = mul i64 %8, %.05694
  %scevgep140 = getelementptr i8, ptr %3, i64 %9
  %i.bg = mul nuw i64 %.05694, %i.bb
  %invariant.gep = getelementptr [2 x i8], ptr %3, i64 %i.bg ; 5 uses
  %load_initial141 = load i16, ptr %scevgep140, align 2 ; 2 uses
  br i1 %i.bf, label %.epil.preheader, label %.preheader79.new

._crit_edge93.unr-lcssa:                          ; preds = %.preheader79.new
  br i1 %lcmp.mod147.not, label %._crit_edge93, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge93.unr-lcssa, %.preheader79
  %store_forwarded142.epil.init = phi i16 [ %load_initial141, %.preheader79 ], [ %i.bv, %._crit_edge93.unr-lcssa ]
  %.05592.epil.init = phi i64 [ 1, %.preheader79 ], [ %i.bw, %._crit_edge93.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %store_forwarded142.epil = phi i16 [ %store_forwarded142.epil.init, %.epil.preheader ], [ %i.bi, %bb.f ]
  %.05592.epil = phi i64 [ %.05592.epil.init, %.epil.preheader ], [ %i.bj, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592.epil ; 2 uses
  %i.bh = load i16, ptr %gep.epil, align 2, !tbaa !26
  %i.bi = add i16 %i.bh, %store_forwarded142.epil ; 2 uses
  store i16 %i.bi, ptr %gep.epil, align 2, !tbaa !26
  %i.bj = add nuw nsw i64 %.05592.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter146
  br i1 %epil.iter.cmp.not, label %._crit_edge93, label %bb.f, !llvm.loop !438

._crit_edge93:                                    ; preds = %bb.f, %._crit_edge93.unr-lcssa
  %i.bk = add nuw nsw i64 %.05694, 1              ; 2 uses
  %exitcond105.not = icmp eq i64 %i.bk, %i.ba
  br i1 %exitcond105.not, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader79, !llvm.loop !439

.preheader79.new:                                 ; preds = %.preheader79, %.preheader79.new
  %store_forwarded142 = phi i16 [ %i.bv, %.preheader79.new ], [ %load_initial141, %.preheader79 ]
  %.05592 = phi i64 [ %i.bw, %.preheader79.new ], [ 1, %.preheader79 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader79.new ], [ 0, %.preheader79 ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592 ; 2 uses
  %i.bl = load i16, ptr %gep, align 2, !tbaa !26
  %i.bm = add i16 %i.bl, %store_forwarded142      ; 2 uses
  store i16 %i.bm, ptr %gep, align 2, !tbaa !26
  %i.bn = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.1 = getelementptr i8, ptr %i.bn, i64 2     ; 2 uses
  %i.bo = load i16, ptr %gep.1, align 2, !tbaa !26
  %i.bp = add i16 %i.bo, %i.bm                    ; 2 uses
  store i16 %i.bp, ptr %gep.1, align 2, !tbaa !26
  %i.bq = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.2 = getelementptr i8, ptr %i.bq, i64 4     ; 2 uses
  %i.br = load i16, ptr %gep.2, align 2, !tbaa !26
  %i.bs = add i16 %i.br, %i.bp                    ; 2 uses
  store i16 %i.bs, ptr %gep.2, align 2, !tbaa !26
  %i.bt = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.3 = getelementptr i8, ptr %i.bt, i64 6     ; 2 uses
  %i.bu = load i16, ptr %gep.3, align 2, !tbaa !26
  %i.bv = add i16 %i.bu, %i.bs                    ; 3 uses
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !26
  %i.bw = add nuw nsw i64 %.05592, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge93.unr-lcssa, label %.preheader79.new, !llvm.loop !440

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge
  %.05389 = phi i64 [ %i.cm, %._crit_edge ], [ 0, %.preheader82.preheader ]
  %.05488 = phi i64 [ %i.bx, %._crit_edge ], [ 0, %.preheader82.preheader ] ; 3 uses
  %i.bx = add i64 %i.n, %.05488                   ; 2 uses
  %.184 = or disjoint i64 %.05488, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 %.05488
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader82
  %i.by = phi i8 [ %.pre, %.preheader82 ], [ %i.cb, %bb.g ]
  %.187.prol = phi i64 [ %.184, %.preheader82 ], [ %.1.prol, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ 0, %.preheader82 ], [ %prol.iter.next, %bb.g ]
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %.187.prol ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = add i8 %i.by, %i.ca                     ; 3 uses
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !14
  %.1.prol = add i64 %.187.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, 3
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.g, !llvm.loop !441

.prol.loopexit:                                   ; preds = %bb.g
  br i1 %i.o, label %._crit_edge, label %.preheader82.new

._crit_edge90.split:                              ; preds = %._crit_edge, %.preheader83, %.preheader82.lr.ph
  %.pre-phi = phi i64 [ %.pre108, %.preheader83 ], [ 0, %.preheader82.lr.ph ], [ %.pre108, %._crit_edge ]
  tail call void @_ZN11OpenImageIO4v3_18PSDInput27float_planar_to_interleavedENS0_4spanIcLm18446744073709551615EEEmm(ptr nonnull align 8 poison, ptr %3, i64 %4, i64 noundef %.pre-phi, i64 noundef %i.m)
  %i.cc = lshr i64 %4, 2                          ; 4 uses
  %.not.i61 = icmp eq i64 %i.cc, 0
  br i1 %.not.i61, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %._crit_edge90.split
  %min.iters.check = icmp ult i64 %4, 32
  br i1 %min.iters.check, label %.lr.ph.i62.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i62.preheader
  %n.vec = and i64 %i.cc, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cd, align 4, !tbaa !3
  %wide.load121 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !3
  %i.cf = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.cg = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load121)
  store <4 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !3
  store <4 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62.preheader144

.lr.ph.i62.preheader144:                          ; preds = %.lr.ph.i62.preheader, %middle.block
  %.06.i63.ph = phi i64 [ 0, %.lr.ph.i62.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader144, %.lr.ph.i62
  %.06.i63 = phi i64 [ %i.cl, %.lr.ph.i62 ], [ %.06.i63.ph, %.lr.ph.i62.preheader144 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06.i63 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = tail call noundef i32 @llvm.bswap.i32(i32 %i.cj)
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !3
  %i.cl = add nuw nsw i64 %.06.i63, 1             ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.cl, %i.cc
  br i1 %exitcond.not.i64, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62, !llvm.loop !443

._crit_edge:                                      ; preds = %.preheader82.new, %.prol.loopexit
  %i.cm = add nuw nsw i64 %.05389, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.cm, %i.m
  br i1 %exitcond103.not, label %._crit_edge90.split, label %.preheader82, !llvm.loop !444

.preheader82.new:                                 ; preds = %.prol.loopexit, %.preheader82.new
  %i.cn = phi i8 [ %i.dc, %.preheader82.new ], [ %i.cb, %.prol.loopexit ]
  %.187 = phi i64 [ %.1.3, %.preheader82.new ], [ %.1.prol, %.prol.loopexit ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %.187 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = add i8 %i.cn, %i.cp                     ; 2 uses
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !14
  %i.cr = getelementptr i8, ptr %3, i64 %.187
  %i.cs = getelementptr i8, ptr %i.cr, i64 1      ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !14
  %i.cu = add i8 %i.cq, %i.ct                     ; 2 uses
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !14
  %i.cv = getelementptr i8, ptr %3, i64 %.187
  %i.cw = getelementptr i8, ptr %i.cv, i64 2      ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %i.cy = add i8 %i.cu, %i.cx                     ; 2 uses
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !14
  %i.cz = getelementptr i8, ptr %3, i64 %.187
  %i.da = getelementptr i8, ptr %i.cz, i64 3      ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %i.dc = add i8 %i.cy, %i.db                     ; 2 uses
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !14
  %.1.3 = add i64 %.187, 4                        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %.1.3, %i.bx
  br i1 %exitcond.not.3, label %._crit_edge, label %.preheader82.new, !llvm.loop !445

bb.h:                                             ; preds = %bb.c
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.106, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit

_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit: ; preds = %.lr.ph.i62, %._crit_edge93, %._crit_edge96, %middle.block, %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, %.preheader79.lr.ph, %.preheader78, %.preheader.lr.ph, %._crit_edge90.split, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ %i.k, %.preheader78 ], [ %i.k, %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit ], [ %i.k, %._crit_edge90.split ], [ %i.k, %.preheader.lr.ph ], [ %i.k, %middle.block ], [ %i.k, %.preheader79.lr.ph ], [ %i.k, %._crit_edge93 ], [ %i.k, %._crit_edge96 ], [ %i.k, %.lr.ph.i62 ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !197
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c, !prof !346

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1847, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em, ptr noundef nonnull @.str.91) #42 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  store i64 %1, ptr %i.c, align 8, !tbaa !197
  %i.h = tail call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.j = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 2 uses
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !26
  %i.k = call i16 @llvm.bswap.i16(i16 %.promoted.i) ; 2 uses
  store i16 %i.k, ptr %i.i, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
end_hunk_0
