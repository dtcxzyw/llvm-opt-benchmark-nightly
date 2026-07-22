inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE:bb.a
; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !424  ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !118    ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
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
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i)
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
  %i.y = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i15)
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
  %xtraiter152 = and i64 %i.s, 3                  ; 3 uses
  %i.t = add i32 %5, -2
  %i.u = icmp ult i32 %i.t, 3
  %unroll_iter156 = and i64 %i.s, -4
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  %lcmp.mod155 = icmp ne i64 %xtraiter152, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge96
  %.05197 = phi i64 [ %i.aa, %._crit_edge96 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.v = mul i64 %.05197, %i.q
  %scevgep = getelementptr i8, ptr %3, i64 %i.v
  %i.w = mul nuw i64 %.05197, %i.q
  %invariant.gep117 = getelementptr i8, ptr %3, i64 %i.w ; 5 uses
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  br i1 %i.u, label %.epil.preheader151, label %.preheader.new

._crit_edge96.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod154.not, label %._crit_edge96, label %.epil.preheader151

.epil.preheader151:                               ; preds = %._crit_edge96.unr-lcssa, %.preheader
  %store_forwarded.epil.init = phi i8 [ %load_initial, %.preheader ], [ %i.al, %._crit_edge96.unr-lcssa ]
  %.05795.epil.init = phi i64 [ 1, %.preheader ], [ %i.am, %._crit_edge96.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader151
  %store_forwarded.epil = phi i8 [ %store_forwarded.epil.init, %.epil.preheader151 ], [ %i.y, %bb.d ]
  %.05795.epil = phi i64 [ %.05795.epil.init, %.epil.preheader151 ], [ %i.z, %bb.d ] ; 2 uses
  %epil.iter153 = phi i64 [ 0, %.epil.preheader151 ], [ %epil.iter153.next, %bb.d ]
  %gep118.epil = getelementptr i8, ptr %invariant.gep117, i64 %.05795.epil ; 2 uses
  %i.x = load i8, ptr %gep118.epil, align 1, !tbaa !14
  %i.y = add i8 %i.x, %store_forwarded.epil       ; 2 uses
  store i8 %i.y, ptr %gep118.epil, align 1, !tbaa !14
  %i.z = add nuw nsw i64 %.05795.epil, 1
  %epil.iter153.next = add i64 %epil.iter153, 1   ; 2 uses
  %epil.iter153.cmp.not = icmp eq i64 %epil.iter153.next, %xtraiter152
  br i1 %epil.iter153.cmp.not, label %._crit_edge96, label %bb.d, !llvm.loop !432

._crit_edge96:                                    ; preds = %bb.d, %._crit_edge96.unr-lcssa
  %i.aa = add nuw nsw i64 %.05197, 1              ; 2 uses
  %exitcond107.not = icmp eq i64 %i.aa, %i.p
  br i1 %exitcond107.not, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader, !llvm.loop !433

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %store_forwarded = phi i8 [ %i.al, %.preheader.new ], [ %load_initial, %.preheader ]
  %.05795 = phi i64 [ %i.am, %.preheader.new ], [ 1, %.preheader ] ; 5 uses
  %niter157 = phi i64 [ %niter157.next.3, %.preheader.new ], [ 0, %.preheader ]
  %gep118 = getelementptr i8, ptr %invariant.gep117, i64 %.05795 ; 2 uses
  %i.ab = load i8, ptr %gep118, align 1, !tbaa !14
  %i.ac = add i8 %i.ab, %store_forwarded          ; 2 uses
  store i8 %i.ac, ptr %gep118, align 1, !tbaa !14
  %i.ad = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.1 = getelementptr i8, ptr %i.ad, i64 1  ; 2 uses
  %i.ae = load i8, ptr %gep118.1, align 1, !tbaa !14
  %i.af = add i8 %i.ae, %i.ac                     ; 2 uses
  store i8 %i.af, ptr %gep118.1, align 1, !tbaa !14
  %i.ag = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.2 = getelementptr i8, ptr %i.ag, i64 2  ; 2 uses
  %i.ah = load i8, ptr %gep118.2, align 1, !tbaa !14
  %i.ai = add i8 %i.ah, %i.af                     ; 2 uses
  store i8 %i.ai, ptr %gep118.2, align 1, !tbaa !14
  %i.aj = getelementptr i8, ptr %invariant.gep117, i64 %.05795
  %gep118.3 = getelementptr i8, ptr %i.aj, i64 3  ; 2 uses
  %i.ak = load i8, ptr %gep118.3, align 1, !tbaa !14
  %i.al = add i8 %i.ak, %i.ai                     ; 3 uses
  store i8 %i.al, ptr %gep118.3, align 1, !tbaa !14
  %i.am = add nuw nsw i64 %.05795, 4              ; 2 uses
  %niter157.next.3 = add nuw i64 %niter157, 4     ; 2 uses
  %niter157.ncmp.3 = icmp eq i64 %niter157.next.3, %unroll_iter156
  br i1 %niter157.ncmp.3, label %._crit_edge96.unr-lcssa, label %.preheader.new, !llvm.loop !434

bb.e:                                             ; preds = %bb.c
  %i.an = lshr i64 %4, 1                          ; 6 uses
  %.not.i = icmp eq i64 %i.an, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check123.a = icmp ult i64 %4, 8
  br i1 %min.iters.check123.a, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check124 = icmp ult i64 %4, 32
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check
  %n.vec127 = and i64 %i.an, 9223372036854775792  ; 4 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph125
  %index129 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index129 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load130.a = load <8 x i16>, ptr %i.ao, align 2, !tbaa !26
  %wide.load131 = load <8 x i16>, ptr %i.ap, align 2, !tbaa !26
  %i.aq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load130.a)
  %i.ar = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load131)
  store <8 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !26
  store <8 x i16> %i.ar, ptr %i.ap, align 2, !tbaa !26
  %index.next132 = add nuw i64 %index129, 16      ; 2 uses
  %i.as = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.as, label %middle.block133, label %vector.body128, !llvm.loop !435

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.an, %n.vec127
  br i1 %cmp.n134, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %i.at = and i64 %4, 24
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !310

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec127, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec136 = and i64 %i.an, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index137 ; 2 uses
  %wide.load138 = load <4 x i16>, ptr %i.au, align 2, !tbaa !26
  %i.av = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load138)
  store <4 x i16> %i.av, ptr %i.au, align 2, !tbaa !26
  %index.next139 = add nuw i64 %index137, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next139, %n.vec136
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !436

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n140 = icmp eq i64 %i.an, %n.vec136
  br i1 %cmp.n140, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec127, %vec.epilog.iter.check ], [ %n.vec136, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.06.i ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !26
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !26
  %i.ba = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %i.an
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i, !llvm.loop !437

_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit: ; preds = %.lr.ph.i, %middle.block133, %vec.epilog.middle.block, %bb.e
  %i.bb = zext i32 %6 to i64
  %.not99 = icmp eq i32 %6, 0
  br i1 %.not99, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader79.lr.ph

.preheader79.lr.ph:                               ; preds = %_ZN11OpenImageIO4v3_113byteswap_spanItEEvNS0_4spanIT_Lm18446744073709551615EEE.exit
  %i.bc = zext i32 %5 to i64                      ; 3 uses
  %i.bd = icmp ugt i32 %5, 1
  br i1 %i.bd, label %.preheader79.preheader, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit

.preheader79.preheader:                           ; preds = %.preheader79.lr.ph
  %i.be = shl nuw nsw i64 %i.bc, 1
  %i.bf = add nsw i64 %i.bc, -1                   ; 2 uses
  %xtraiter148 = and i64 %i.bf, 3                 ; 3 uses
  %i.bg = add i32 %5, -2
  %i.bh = icmp ult i32 %i.bg, 3
  %unroll_iter = and i64 %i.bf, -4
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  %lcmp.mod150 = icmp ne i64 %xtraiter148, 0
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.preheader, %._crit_edge93
  %.05694 = phi i64 [ %i.bn, %._crit_edge93 ], [ 0, %.preheader79.preheader ] ; 3 uses
  %i.bi = mul i64 %i.be, %.05694
  %scevgep142 = getelementptr i8, ptr %3, i64 %i.bi
  %i.bj = mul nuw i64 %.05694, %i.bc
  %invariant.gep = getelementptr [2 x i8], ptr %3, i64 %i.bj ; 5 uses
  %load_initial143 = load i16, ptr %scevgep142, align 2 ; 2 uses
  br i1 %i.bh, label %.epil.preheader, label %.preheader79.new

._crit_edge93.unr-lcssa:                          ; preds = %.preheader79.new
  br i1 %lcmp.mod149.not, label %._crit_edge93, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge93.unr-lcssa, %.preheader79
  %store_forwarded144.epil.init = phi i16 [ %load_initial143, %.preheader79 ], [ %i.by, %._crit_edge93.unr-lcssa ]
  %.05592.epil.init = phi i64 [ 1, %.preheader79 ], [ %i.bz, %._crit_edge93.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %store_forwarded144.epil = phi i16 [ %store_forwarded144.epil.init, %.epil.preheader ], [ %i.bl, %bb.f ]
  %.05592.epil = phi i64 [ %.05592.epil.init, %.epil.preheader ], [ %i.bm, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.epil = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592.epil ; 2 uses
  %i.bk = load i16, ptr %gep.epil, align 2, !tbaa !26
  %i.bl = add i16 %i.bk, %store_forwarded144.epil ; 2 uses
  store i16 %i.bl, ptr %gep.epil, align 2, !tbaa !26
  %i.bm = add nuw nsw i64 %.05592.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter148
  br i1 %epil.iter.cmp.not, label %._crit_edge93, label %bb.f, !llvm.loop !438

._crit_edge93:                                    ; preds = %bb.f, %._crit_edge93.unr-lcssa
  %i.bn = add nuw nsw i64 %.05694, 1              ; 2 uses
  %exitcond105.not = icmp eq i64 %i.bn, %i.bb
  br i1 %exitcond105.not, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.preheader79, !llvm.loop !439

.preheader79.new:                                 ; preds = %.preheader79, %.preheader79.new
  %store_forwarded144 = phi i16 [ %i.by, %.preheader79.new ], [ %load_initial143, %.preheader79 ]
  %.05592 = phi i64 [ %i.bz, %.preheader79.new ], [ 1, %.preheader79 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader79.new ], [ 0, %.preheader79 ]
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592 ; 2 uses
  %i.bo = load i16, ptr %gep, align 2, !tbaa !26
  %i.bp = add i16 %i.bo, %store_forwarded144      ; 2 uses
  store i16 %i.bp, ptr %gep, align 2, !tbaa !26
  %i.bq = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.1 = getelementptr i8, ptr %i.bq, i64 2     ; 2 uses
  %i.br = load i16, ptr %gep.1, align 2, !tbaa !26
  %i.bs = add i16 %i.br, %i.bp                    ; 2 uses
  store i16 %i.bs, ptr %gep.1, align 2, !tbaa !26
  %i.bt = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.2 = getelementptr i8, ptr %i.bt, i64 4     ; 2 uses
  %i.bu = load i16, ptr %gep.2, align 2, !tbaa !26
  %i.bv = add i16 %i.bu, %i.bs                    ; 2 uses
  store i16 %i.bv, ptr %gep.2, align 2, !tbaa !26
  %i.bw = getelementptr [2 x i8], ptr %invariant.gep, i64 %.05592
  %gep.3 = getelementptr i8, ptr %i.bw, i64 6     ; 2 uses
  %i.bx = load i16, ptr %gep.3, align 2, !tbaa !26
  %i.by = add i16 %i.bx, %i.bv                    ; 3 uses
  store i16 %i.by, ptr %gep.3, align 2, !tbaa !26
  %i.bz = add nuw nsw i64 %.05592, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge93.unr-lcssa, label %.preheader79.new, !llvm.loop !440

.preheader82:                                     ; preds = %.preheader82.preheader, %._crit_edge
  %.05389.a = phi i64 [ %i.co, %._crit_edge ], [ 0, %.preheader82.preheader ]
  %.05488.a = phi i64 [ %7, %._crit_edge ], [ 0, %.preheader82.preheader ] ; 3 uses
  %7 = add i64 %i.n, %.05488.a                    ; 2 uses
  %.184 = or disjoint i64 %.05488.a, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 %.05488.a
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader82
  %i.ca = phi i8 [ %.pre, %.preheader82 ], [ %i.cd, %bb.g ]
  %.187.prol = phi i64 [ %.184, %.preheader82 ], [ %.1.prol, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ 0, %.preheader82 ], [ %prol.iter.next, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 %.187.prol ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !14
  %i.cd = add i8 %i.ca, %i.cc                     ; 3 uses
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !14
  %.1.prol = add i64 %.187.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, 3
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.g, !llvm.loop !441

.prol.loopexit:                                   ; preds = %bb.g
  br i1 %i.o, label %._crit_edge, label %.preheader82.new

._crit_edge90.split:                              ; preds = %._crit_edge, %.preheader83, %.preheader82.lr.ph
  %.pre-phi = phi i64 [ %.pre108, %.preheader83 ], [ 0, %.preheader82.lr.ph ], [ %.pre108, %._crit_edge ]
  tail call void @_ZN11OpenImageIO4v3_18PSDInput27float_planar_to_interleavedENS0_4spanIcLm18446744073709551615EEEmm(ptr nonnull align 8 poison, ptr %3, i64 %4, i64 noundef %.pre-phi, i64 noundef %i.m)
  %i.ce = lshr i64 %4, 2                          ; 4 uses
  %.not.i61 = icmp eq i64 %i.ce, 0
  br i1 %.not.i61, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %._crit_edge90.split
  %min.iters.check = icmp ult i64 %4, 32
  br i1 %min.iters.check, label %.lr.ph.i62.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i62.preheader
  %n.vec = and i64 %i.ce, 4611686018427387896     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !3
  %wide.load121 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !3
  %i.ch = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ci = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load121)
  store <4 x i32> %i.ch, ptr %i.cf, align 4, !tbaa !3
  store <4 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !442

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62.preheader146

.lr.ph.i62.preheader146:                          ; preds = %.lr.ph.i62.preheader, %middle.block
  %.06.i63.ph = phi i64 [ 0, %.lr.ph.i62.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader146, %.lr.ph.i62
  %.06.i63 = phi i64 [ %i.cn, %.lr.ph.i62 ], [ %.06.i63.ph, %.lr.ph.i62.preheader146 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.06.i63 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = tail call noundef i32 @llvm.bswap.i32(i32 %i.cl)
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !3
  %i.cn = add nuw nsw i64 %.06.i63, 1             ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.cn, %i.ce
  br i1 %exitcond.not.i64, label %_ZN11OpenImageIO4v3_113byteswap_spanIjEEvNS0_4spanIT_Lm18446744073709551615EEE.exit, label %.lr.ph.i62, !llvm.loop !443

._crit_edge:                                      ; preds = %.preheader82.new, %.prol.loopexit
  %i.co = add nuw nsw i64 %.05389.a, 1            ; 2 uses
  %exitcond103.not = icmp eq i64 %i.co, %i.m
  br i1 %exitcond103.not, label %._crit_edge90.split, label %.preheader82, !llvm.loop !444

.preheader82.new:                                 ; preds = %.prol.loopexit, %.preheader82.new
  %i.cp = phi i8 [ %i.de, %.preheader82.new ], [ %i.cd, %.prol.loopexit ]
  %.187 = phi i64 [ %.1.3, %.preheader82.new ], [ %.1.prol, %.prol.loopexit ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 %.187 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cs = add i8 %i.cp, %i.cr                     ; 2 uses
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !14
  %i.ct = getelementptr i8, ptr %3, i64 %.187
  %i.cu = getelementptr i8, ptr %i.ct, i64 1      ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = add i8 %i.cs, %i.cv                     ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !14
  %i.cx = getelementptr i8, ptr %3, i64 %.187
  %i.cy = getelementptr i8, ptr %i.cx, i64 2      ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = add i8 %i.cw, %i.cz                     ; 2 uses
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !14
  %i.db = getelementptr i8, ptr %3, i64 %.187
  %i.dc = getelementptr i8, ptr %i.db, i64 3      ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !14
  %i.de = add i8 %i.da, %i.dd                     ; 2 uses
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !14
  %.1.3 = add i64 %.187, 4                        ; 2 uses
  %exitcond.not.3 = icmp eq i64 %.1.3, %7
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
  %i.k = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i) ; 2 uses
  store i16 %i.k, ptr %i.i, align 8, !tbaa !26
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split: ; preds = %bb.d
  %.pr = load i16, ptr %i.i, align 8, !tbaa !199
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split, %.lr.ph.i.preheader.i
  %i.l = phi i16 [ %.pr, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exitthread-pre-split ], [ %i.k, %.lr.ph.i.preheader.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.m = icmp slt i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i8 1, ptr %i.n, align 8, !tbaa !127
  %i.o = sub i16 0, %i.l                          ; 2 uses
  store i16 %i.o, ptr %i.i, align 8, !tbaa !199
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  %i.p = phi i16 [ %i.o, %bb.e ], [ %i.l, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.r = sext i16 %i.p to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %i.r)
  %i.s = load i16, ptr %i.i, align 8, !tbaa !199
  %.not47 = icmp sgt i16 %i.s, 0
  br i1 %.not47, label %.lr.ph, label %.critedge44

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i16, ptr %i.i, align 8, !tbaa !199  ; 3 uses
  %i.u = sext i16 %i.t to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %.not, label %.lr.ph, label %.critedge.preheader, !llvm.loop !446

.critedge.preheader:                              ; preds = %bb.g
  %.not4249 = icmp sgt i16 %i.t, 0
  br i1 %.not4249, label %.lr.ph51, label %.critedge44

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !140
  %i.w = getelementptr inbounds nuw [192 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput10load_layerERNS1_5LayerE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.w)
  br i1 %i.x, label %bb.g, label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit

.lr.ph51:                                         ; preds = %.critedge.preheader, %.critedge
  %i.y = phi i16 [ %i.ak, %.critedge ], [ %i.t, %.critedge.preheader ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw [192 x i8], ptr %i.z, i64 %indvars.iv54 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !201
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = load i16, ptr %i.ab, align 8, !tbaa !201
  %i.ag = zext i16 %i.af to i64
  %.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.ag
  br i1 %.not.i, label %bb.i, label %.critedge.loopexit, !llvm.loop !212

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull readonly align 8 dereferenceable(192) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.ai)
  br i1 %i.aj, label %bb.h, label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit

.critedge.loopexit:                               ; preds = %bb.h
  %.pre = load i16, ptr %i.i, align 8, !tbaa !199
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph51
  %i.ak = phi i16 [ %.pre, %.critedge.loopexit ], [ %i.y, %.lr.ph51 ] ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.al = sext i16 %i.ak to i64
  %.not42 = icmp slt i64 %indvars.iv.next55, %i.al
  br i1 %.not42, label %.lr.ph51, label %.critedge44, !llvm.loop !447

.critedge44:                                      ; preds = %.critedge, %bb.f, %.critedge.preheader
  %i.am = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.an = sub i64 %i.am, %i.h                     ; 2 uses
  %i.ao = add i64 %i.an, 3
  %i.ap = and i64 %i.ao, -4
  %i.aq = sub i64 %i.ap, %i.an                    ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.j, label %.thread, !prof !346

.thread:                                          ; preds = %.critedge44
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1875, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em, ptr noundef nonnull @.str.92) #42 ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %.critedge44
  %i.au = icmp samesign ult i64 %i.aq, 4
  br i1 %i.au, label %bb.l, label %bb.k, !prof !448

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !329
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 1876, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em, ptr noundef nonnull @.str.93) #42 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.j, %bb.k
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aq, i32 noundef 1) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit

_ZN11OpenImageIO4v3_18PSDInput19load_layer_channelsERNS1_5LayerE.exit: ; preds = %.lr.ph, %bb.i, %bb.l, %bb.a
  %.7 = phi i1 [ false, %bb.a ], [ %i.j, %bb.l ], [ false, %bb.i ], [ false, %.lr.ph ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_18PSDInput18fill_channel_namesERNS0_9ImageSpecEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !14
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !137

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 674 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !167  ; 3 uses
  %i.m = icmp eq i16 %i.l, 7
  br i1 %i.m, label %bb.b, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.n = add i16 %i.l, -5
  %.not = icmp ult i16 %i.n, 4
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader
end_hunk_0
