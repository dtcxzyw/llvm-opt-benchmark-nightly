Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless?download=true
inline.NumInlined: 114
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@VP8LConvertBGRAToRGBA4444_C:bb.a
  %i.e = add i64 %.idx, %i.d
  %i.f = add i64 %i.d, 4
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 9223372036854775804      ; 4 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = shl nuw i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %i.q = shl i64 %index, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9 ; 4 uses
  %i.r = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.s = and <4 x i32> %i.r, splat (i32 240)
  %i.t = lshr <4 x i32> %wide.load, splat (i32 12)
  %i.u = and <4 x i32> %i.t, splat (i32 15)
  %i.v = or disjoint <4 x i32> %i.s, %i.u
  %i.w = and <4 x i32> %wide.load, splat (i32 240)
  %i.x = lshr <4 x i32> %wide.load, splat (i32 28)
  %i.y = or disjoint <4 x i32> %i.w, %i.x
  %i.z = shufflevector <4 x i32> %i.v, <4 x i32> %i.y, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.z to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep15, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01213.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.014 = phi ptr [ %i.ab, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01213 = phi ptr [ %i.ao, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader17 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.ac = load i32, ptr %.014, align 4, !tbaa !9  ; 4 uses
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = and i32 %i.ad, 240
  %i.af = lshr i32 %i.ac, 12
  %i.ag = and i32 %i.af, 15
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = and i32 %i.ac, 240
  %i.ak = lshr i32 %i.ac, 28
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.ai, ptr %.01213, align 1, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.am, ptr %i.an, align 1, !tbaa !23
  %i.ap = icmp ult ptr %i.ab, %i.b
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB565_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.e = add i64 %.idx, %i.d
  %i.f = add i64 %i.d, 4
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.h = xor i64 %i.d, -1
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 12
  br i1 %min.iters.check, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 9223372036854775804      ; 4 uses
  %i.l = shl i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = shl nuw i64 %n.vec, 1
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %i.q = shl i64 %index, 1
  %next.gep15 = getelementptr i8, ptr %2, i64 %i.q
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9 ; 4 uses
  %i.r = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.s = and <4 x i32> %i.r, splat (i32 248)
  %i.t = lshr <4 x i32> %wide.load, splat (i32 13)
  %i.u = and <4 x i32> %i.t, splat (i32 7)
  %i.v = or disjoint <4 x i32> %i.s, %i.u
  %i.w = lshr <4 x i32> %wide.load, splat (i32 5)
  %i.x = and <4 x i32> %i.w, splat (i32 224)
  %i.y = lshr <4 x i32> %wide.load, splat (i32 3)
  %i.z = and <4 x i32> %i.y, splat (i32 31)
  %i.aa = or disjoint <4 x i32> %i.x, %i.z
  %i.ab = shufflevector <4 x i32> %i.v, <4 x i32> %i.aa, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.ab to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep15, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01213.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader17, %.lr.ph
  %.014 = phi ptr [ %i.ad, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader17 ] ; 2 uses
  %.01213 = phi ptr [ %i.as, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader17 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.ae = load i32, ptr %.014, align 4, !tbaa !9  ; 4 uses
  %i.af = lshr i32 %i.ae, 16
  %i.ag = and i32 %i.af, 248
  %i.ah = lshr i32 %i.ae, 13
  %i.ai = and i32 %i.ah, 7
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = lshr i32 %i.ae, 5
  %i.am = and i32 %i.al, 224
  %i.an = lshr i32 %i.ae, 3
  %i.ao = and i32 %i.an, 31
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.ak, ptr %.01213, align 1, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %i.at = icmp ult ptr %i.ad, %i.b
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToBGR_C(ptr noalias nofree noundef readonly captures(address) %0, i32 noundef %1, ptr noalias nofree noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nuw nsw i64 %i.a, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.m, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.e = load i32, ptr %.012, align 4, !tbaa !9   ; 3 uses
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.f, ptr %.01011, align 1, !tbaa !23
  %i.h = lshr i32 %i.e, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !23
  %i.k = lshr i32 %i.e, 16
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.l, ptr %i.j, align 1, !tbaa !23
  %i.n = icmp ult ptr %i.d, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LConvertFromBGRA(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  switch i32 %2, label %CopyOrSwap.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 7, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 8, label %bb.g
    i32 4, label %bb.h
    i32 9, label %bb.i
    i32 5, label %bb.j
    i32 10, label %bb.k
    i32 6, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !25
  tail call void %i.a(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !25
  tail call void %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !25
  tail call void %i.c(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  %i.d = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !25
  tail call void %i.d(ptr noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !25
  tail call void %i.e(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.f:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  %.idx.i = shl nsw i64 %i.f, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 4 %0, i64 %.idx.i, i1 false), !alias.scope !82
  br label %CopyOrSwap.exit

bb.g:                                             ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  %.idx.i41 = shl nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 4 %0, i64 %.idx.i41, i1 false), !alias.scope !83
  %i.h = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !25
  tail call void %i.h(ptr noundef %3, i32 noundef 0, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.i = sext i32 %1 to i64
  %.idx.i42 = shl nsw i64 %i.i, 2                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i42
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph.i.preheader, label %CopyOrSwap.exit

.lr.ph.i.preheader:                               ; preds = %bb.h
  %4 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.l = add i64 %.idx.i42, %4
  %i.m = add i64 %4, 4
  %i.n = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.m)
  %i.o = xor i64 %4, -1
  %i.p = add i64 %i.n, %i.o                       ; 2 uses
  %i.q = lshr i64 %i.p, 2
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check52 = icmp ult i64 %i.p, 28
  br i1 %min.iters.check52, label %.lr.ph.i.preheader66, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.i.preheader
  %n.vec54 = and i64 %i.r, 9223372036854775800    ; 3 uses
  %i.s = shl i64 %n.vec54, 2                      ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %3, i64 %i.s
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph53
  %index56 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body55 ] ; 2 uses
  %i.v = shl i64 %index56, 2                      ; 2 uses
  %next.gep57 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %next.gep58 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load59 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !9, !alias.scope !84, !noalias !85
  %wide.load60 = load <4 x i32>, ptr %i.w, align 4, !tbaa !9, !alias.scope !84, !noalias !85
  %i.x = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load59)
  %i.y = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load60)
  %i.z = getelementptr i8, ptr %next.gep58, i64 16
  store <4 x i32> %i.x, ptr %next.gep58, align 1, !alias.scope !85, !noalias !84
  store <4 x i32> %i.y, ptr %i.z, align 1, !alias.scope !85, !noalias !84
  %index.next61 = add nuw i64 %index56, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next61, %n.vec54
  br i1 %i.aa, label %middle.block62, label %vector.body55, !llvm.loop !75

middle.block62:                                   ; preds = %vector.body55
  %cmp.n63 = icmp eq i64 %i.r, %n.vec54
  br i1 %cmp.n63, label %CopyOrSwap.exit, label %.lr.ph.i.preheader66

.lr.ph.i.preheader66:                             ; preds = %.lr.ph.i.preheader, %middle.block62
  %.013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block62 ]
  %.01112.i.ph = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.u, %middle.block62 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader66, %.lr.ph.i
  %.013.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.013.i.ph, %.lr.ph.i.preheader66 ] ; 2 uses
  %.01112.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.01112.i.ph, %.lr.ph.i.preheader66 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %.013.i, align 4, !tbaa !9, !alias.scope !84, !noalias !85
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %i.ad, ptr %.01112.i, align 1, !alias.scope !85, !noalias !84
  %i.ae = getelementptr inbounds nuw i8, ptr %.01112.i, i64 4
  %i.af = icmp ult ptr %i.ab, %i.j
  br i1 %i.af, label %.lr.ph.i, label %CopyOrSwap.exit, !llvm.loop !76

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.ag = sext i32 %1 to i64
  %.idx.i43 = shl nsw i64 %i.ag, 2                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i43
  %i.ai = icmp sgt i32 %1, 0
  br i1 %i.ai, label %.lr.ph.i44.preheader, label %CopyOrSwap.exit47

.lr.ph.i44.preheader:                             ; preds = %bb.i
  %5 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.aj = add i64 %.idx.i43, %5
  %i.ak = add i64 %5, 4
  %i.al = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.am = xor i64 %5, -1
  %i.an = add i64 %i.al, %i.am                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 28
  br i1 %min.iters.check, label %.lr.ph.i44.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i44.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %3, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.at ; 2 uses
  %next.gep48 = getelementptr i8, ptr %3, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !9, !alias.scope !86, !noalias !87
  %wide.load49 = load <4 x i32>, ptr %i.au, align 4, !tbaa !9, !alias.scope !86, !noalias !87
  %i.av = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.aw = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load49)
  %i.ax = getelementptr i8, ptr %next.gep48, i64 16
  store <4 x i32> %i.av, ptr %next.gep48, align 1, !alias.scope !87, !noalias !86
  store <4 x i32> %i.aw, ptr %i.ax, align 1, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %CopyOrSwap.exit47, label %.lr.ph.i44.preheader67

.lr.ph.i44.preheader67:                           ; preds = %.lr.ph.i44.preheader, %middle.block
  %.013.i45.ph = phi ptr [ %0, %.lr.ph.i44.preheader ], [ %i.ar, %middle.block ]
  %.01112.i46.ph = phi ptr [ %3, %.lr.ph.i44.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.preheader67, %.lr.ph.i44
  %.013.i45 = phi ptr [ %i.az, %.lr.ph.i44 ], [ %.013.i45.ph, %.lr.ph.i44.preheader67 ] ; 2 uses
  %.01112.i46 = phi ptr [ %i.bc, %.lr.ph.i44 ], [ %.01112.i46.ph, %.lr.ph.i44.preheader67 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i45, i64 4 ; 2 uses
  %i.ba = load i32, ptr %.013.i45, align 4, !tbaa !9, !alias.scope !86, !noalias !87
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %i.ba)
  store i32 %i.bb, ptr %.01112.i46, align 1, !alias.scope !87, !noalias !86
  %i.bc = getelementptr inbounds nuw i8, ptr %.01112.i46, i64 4
  %i.bd = icmp ult ptr %i.az, %i.ah
  br i1 %i.bd, label %.lr.ph.i44, label %CopyOrSwap.exit47, !llvm.loop !81

CopyOrSwap.exit47:                                ; preds = %.lr.ph.i44, %middle.block, %bb.i
  %i.be = load ptr, ptr @WebPApplyAlphaMultiply, align 8, !tbaa !25
  tail call void %i.be(ptr noundef %3, i32 noundef 1, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.j:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !25
  tail call void %i.bf(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

bb.k:                                             ; preds = %bb.a
  %i.bg = load ptr, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !25
  tail call void %i.bg(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  %i.bh = load ptr, ptr @WebPApplyAlphaMultiply4444, align 8, !tbaa !25
  tail call void %i.bh(ptr noundef %3, i32 noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %CopyOrSwap.exit

bb.l:                                             ; preds = %bb.a
  %i.bi = load ptr, ptr @VP8LConvertBGRAToRGB565, align 8, !tbaa !25
  tail call void %i.bi(ptr noundef %0, i32 noundef %1, ptr noundef %3) #11
  br label %CopyOrSwap.exit

CopyOrSwap.exit:                                  ; preds = %.lr.ph.i, %middle.block62, %bb.h, %bb.a, %bb.l, %bb.k, %bb.j, %CopyOrSwap.exit47, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LDspInit() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @VP8LDspInit_body_lock) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @VP8LDspInit_body_last_cpuinfo_used, align 8, !tbaa !25
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25 ; 3 uses
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %VP8LDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @VP8LPredictor0_C, ptr @VP8LPredictors, align 16, !tbaa !25
  store ptr @VP8LPredictor1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 8), align 8, !tbaa !25
  store ptr @VP8LPredictor2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 16), align 16, !tbaa !25
  store ptr @VP8LPredictor3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 24), align 8, !tbaa !25
  store ptr @VP8LPredictor4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 32), align 16, !tbaa !25
  store ptr @VP8LPredictor5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 40), align 8, !tbaa !25
  store ptr @VP8LPredictor6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 48), align 16, !tbaa !25
  store ptr @VP8LPredictor7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 56), align 8, !tbaa !25
  store ptr @VP8LPredictor8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 64), align 16, !tbaa !25
  store ptr @VP8LPredictor9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 72), align 8, !tbaa !25
  store ptr @VP8LPredictor10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 80), align 16, !tbaa !25
  store ptr @VP8LPredictor11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 88), align 8, !tbaa !25
  store ptr @VP8LPredictor12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 96), align 16, !tbaa !25
  store ptr @VP8LPredictor13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 104), align 8, !tbaa !25
  store ptr @VP8LPredictor0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 112), align 16, !tbaa !25
  store ptr @VP8LPredictor0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictors, i64 120), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr @VP8LPredictorsAdd, align 16, !tbaa !25
  store ptr @PredictorAdd1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 8), align 8, !tbaa !25
  store ptr @PredictorAdd2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 16), align 16, !tbaa !25
  store ptr @PredictorAdd3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 24), align 8, !tbaa !25
  store ptr @PredictorAdd4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 32), align 16, !tbaa !25
  store ptr @PredictorAdd5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 40), align 8, !tbaa !25
  store ptr @PredictorAdd6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 48), align 16, !tbaa !25
  store ptr @PredictorAdd7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 56), align 8, !tbaa !25
  store ptr @PredictorAdd8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 64), align 16, !tbaa !25
  store ptr @PredictorAdd9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 72), align 8, !tbaa !25
  store ptr @PredictorAdd10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 80), align 16, !tbaa !25
  store ptr @PredictorAdd11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 88), align 8, !tbaa !25
  store ptr @PredictorAdd12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 96), align 16, !tbaa !25
  store ptr @PredictorAdd13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 104), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 112), align 16, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd, i64 120), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr @VP8LPredictorsAdd_C, align 16, !tbaa !25
  store ptr @PredictorAdd1_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 8), align 8, !tbaa !25
  store ptr @PredictorAdd2_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 16), align 16, !tbaa !25
  store ptr @PredictorAdd3_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 24), align 8, !tbaa !25
  store ptr @PredictorAdd4_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 32), align 16, !tbaa !25
  store ptr @PredictorAdd5_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 40), align 8, !tbaa !25
  store ptr @PredictorAdd6_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 48), align 16, !tbaa !25
  store ptr @PredictorAdd7_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 56), align 8, !tbaa !25
  store ptr @PredictorAdd8_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 64), align 16, !tbaa !25
  store ptr @PredictorAdd9_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 72), align 8, !tbaa !25
  store ptr @PredictorAdd10_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 80), align 16, !tbaa !25
  store ptr @PredictorAdd11_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 88), align 8, !tbaa !25
  store ptr @PredictorAdd12_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 96), align 16, !tbaa !25
  store ptr @PredictorAdd13_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 104), align 8, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 112), align 16, !tbaa !25
  store ptr @PredictorAdd0_C, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_C, i64 120), align 8, !tbaa !25
  store ptr @VP8LAddGreenToBlueAndRed_C, ptr @VP8LAddGreenToBlueAndRed, align 8, !tbaa !25
  store ptr @VP8LTransformColorInverse_C, ptr @VP8LTransformColorInverse, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGBA_C, ptr @VP8LConvertBGRAToRGBA, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGB_C, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToBGR_C, ptr @VP8LConvertBGRAToBGR, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGBA4444_C, ptr @VP8LConvertBGRAToRGBA4444, align 8, !tbaa !25
  store ptr @VP8LConvertBGRAToRGB565_C, ptr @VP8LConvertBGRAToRGB565, align 8, !tbaa !25
  store ptr @MapARGB_C, ptr @VP8LMapColor32b, align 8, !tbaa !25
  store ptr @MapAlpha_C, ptr @VP8LMapColor8b, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8LDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(i32 noundef 0) #11, !inline_history !88
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %VP8LDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @VP8LDspInitSSE2() #11
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25
  %i.f = tail call i32 %i.e(i32 noundef 3) #11, !inline_history !88
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %VP8LDspInit_body.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8LDspInitSSE41() #11
  %i.g = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25
  %i.h = tail call i32 %i.g(i32 noundef 5) #11, !inline_history !88
  %.not3.i = icmp eq i32 %i.h, 0
  br i1 %.not3.i, label %VP8LDspInit_body.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @VP8LDspInitAVX2() #11
  br label %VP8LDspInit_body.exit

VP8LDspInit_body.exit:                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !25
  store ptr %i.i, ptr @VP8LDspInit_body_last_cpuinfo_used, align 8, !tbaa !25
  %i.j = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @VP8LDspInit_body_lock) #11 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %VP8LDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @PredictorAdd0_C(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noalias nofree noundef writeonly captures(none) %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
end_hunk_0
