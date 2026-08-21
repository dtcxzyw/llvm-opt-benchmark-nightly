Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_render?download=true
inline.NumInlined: 131
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@SDL_RenderGeometryRaw_REAL:bb.a
  %i.ak = icmp slt i32 %i.aj, 1
  %i.al = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.aj)
  %i.am = icmp samesign ugt i32 %i.al, 1
  %or.cond197 = select i1 %i.ak, i1 true, i1 %i.am
  br i1 %or.cond197, label %.thread, label %.thread175

.thread175:                                       ; preds = %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ao = load i32, ptr %i.an, align 8
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.aq = load i32, ptr %i.ap, align 8
  br label %bb.aa

.thread:                                          ; preds = %bb.y, %.thread175
  %.0130174 = phi i32 [ %i.ao, %.thread175 ], [ 1, %bb.y ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %spec.select160, i64 8
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i32 %i.as, 1
  %i.au = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.as)
  %i.av = icmp samesign ugt i32 %i.au, 1
  %or.cond199 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond199, label %IsNPOT.exit166.thread, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  %.0130172 = phi i32 [ %.0130174, %.thread ], [ %i.aq, %bb.z ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.ax = load i32, ptr %i.aw, align 4
  br label %IsNPOT.exit166.thread

IsNPOT.exit166.thread:                            ; preds = %.thread, %bb.aa
  %.0130173 = phi i32 [ %.0130172, %bb.aa ], [ %.0130174, %.thread ] ; 3 uses
  %.0127 = phi i32 [ %i.ax, %bb.aa ], [ 1, %.thread ] ; 3 uses
  %i.ay = icmp eq i32 %.0130173, 0
  %i.az = icmp eq i32 %.0127, 0
  %or.cond7 = select i1 %i.ay, i1 true, i1 %i.az
  br i1 %or.cond7, label %.lr.ph.preheader, label %bb.ad

.lr.ph.preheader:                                 ; preds = %IsNPOT.exit166.thread
  %i.ba = sext i32 %7 to i64
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %select.unfold ] ; 2 uses
  %.1128203 = phi i32 [ %.0127, %.lr.ph.preheader ], [ %.3.ph, %select.unfold ] ; 4 uses
  %.1131202 = phi i32 [ %.0130173, %.lr.ph.preheader ], [ %.2132192, %select.unfold ] ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv, %i.ba
  %i.bc = getelementptr inbounds i8, ptr %6, i64 %i.bb ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bf = load float, ptr %i.be, align 4          ; 4 uses
  %i.bg = fcmp olt float %i.bd, 0.000000e+00
  %i.bh = fcmp ogt float %i.bd, 1.000000e+00
  %or.cond9 = or i1 %i.bg, %i.bh
  %i.bi = icmp eq i32 %.1131202, 0                ; 2 uses
  %or.cond17 = select i1 %or.cond9, i1 %i.bi, i1 false
  br i1 %or.cond17, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph
  %.not156 = icmp eq i32 %.1128203, 0
  br i1 %.not156, label %.thread187, label %.thread193

bb.ac:                                            ; preds = %.lr.ph
  %i.bj = fcmp uge float %i.bf, 0.000000e+00
  %i.bk = fcmp ule float %i.bf, 1.000000e+00
  %or.cond11.not255 = and i1 %i.bj, %i.bk
  %i.bl = icmp ne i32 %.1128203, 0
  %or.cond19.not252 = select i1 %or.cond11.not255, i1 true, i1 %i.bl ; 3 uses
  %brmerge = select i1 %or.cond19.not252, i1 true, i1 %i.bi
  %.1131202.mux = select i1 %or.cond19.not252, i32 %.1131202, i32 0
  %.1128203.mux = select i1 %or.cond19.not252, i32 %.1128203, i32 2
  br i1 %brmerge, label %select.unfold, label %.thread193

.thread187:                                       ; preds = %bb.ab
  %i.bm = fcmp olt float %i.bf, 0.000000e+00
  %i.bn = fcmp ogt float %i.bf, 1.000000e+00
  %or.cond11189 = or i1 %i.bm, %i.bn
  br i1 %or.cond11189, label %.thread193, label %select.unfold

select.unfold:                                    ; preds = %bb.ac, %.thread187
  %.2132192 = phi i32 [ 2, %.thread187 ], [ %.1131202.mux, %bb.ac ] ; 2 uses
  %.3.ph = phi i32 [ 0, %.thread187 ], [ %.1128203.mux, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread193, label %.lr.ph, !llvm.loop !62

.thread193:                                       ; preds = %bb.ac, %select.unfold, %bb.ab, %.thread187
  %.4134.ph = phi i32 [ %.2132192, %select.unfold ], [ 2, %.thread187 ], [ 2, %bb.ab ], [ %.1131202, %bb.ac ]
  %.4.ph = phi i32 [ %.3.ph, %select.unfold ], [ 2, %.thread187 ], [ %.1128203, %bb.ab ], [ 2, %bb.ac ]
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.4134.ph, i32 1)
  %spec.store.select20 = tail call i32 @llvm.umax.i32(i32 %.4.ph, i32 1)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread193, %IsNPOT.exit166.thread, %bb.v
  %.1140 = phi ptr [ %spec.select160, %.thread193 ], [ %spec.select160, %IsNPOT.exit166.thread ], [ null, %bb.v ] ; 4 uses
  %.5135 = phi i32 [ %spec.store.select, %.thread193 ], [ %.0130173, %IsNPOT.exit166.thread ], [ 1, %bb.v ] ; 2 uses
  %.5 = phi i32 [ %spec.store.select20, %.thread193 ], [ %.0127, %IsNPOT.exit166.thread ], [ 1, %bb.v ] ; 2 uses
  %i.bo = icmp sgt i32 %10, 0
  %or.cond220 = and i1 %.not, %i.bo
  br i1 %or.cond220, label %.lr.ph214, label %.loopexit

.lr.ph214:                                        ; preds = %bb.ad
  %wide.trip.count239 = zext nneg i32 %10 to i64  ; 3 uses
  switch i32 %11, label %.lr.ph214.split [
    i32 4, label %.lr.ph214.split.us
    i32 2, label %.lr.ph214.split.us215
  ]

.lr.ph214.split.us:                               ; preds = %.lr.ph214, %bb.ae
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.ae ], [ 0, %.lr.ph214 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv231
  %i.bq = load i32, ptr %i.bp, align 4
  %or.cond161.us = icmp ult i32 %i.bq, %8
  br i1 %or.cond161.us, label %bb.ae, label %.split.us

bb.ae:                                            ; preds = %.lr.ph214.split.us
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count239
  br i1 %exitcond235.not, label %.loopexit, label %.lr.ph214.split.us, !llvm.loop !63

.lr.ph214.split.us215:                            ; preds = %.lr.ph214, %bb.af
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %bb.af ], [ 0, %.lr.ph214 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv226
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32
  %or.cond161.us219 = icmp ugt i32 %8, %i.bt
  br i1 %or.cond161.us219, label %bb.af, label %.split.us

bb.af:                                            ; preds = %.lr.ph214.split.us215
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count239
  br i1 %exitcond230.not, label %.loopexit, label %.lr.ph214.split.us215, !llvm.loop !63

bb.ag:                                            ; preds = %.lr.ph214.split
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit, label %.lr.ph214.split, !llvm.loop !63

.lr.ph214.split:                                  ; preds = %.lr.ph214, %bb.ag
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.ag ], [ 0, %.lr.ph214 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv236
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %or.cond161 = icmp ugt i32 %8, %i.bw
  br i1 %or.cond161, label %bb.ag, label %.split.us

.split.us:                                        ; preds = %.lr.ph214.split.us215, %.lr.ph214.split.us, %.lr.ph214.split
  %i.bx = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.91) #14
  br label %bb.al

.loopexit:                                        ; preds = %bb.af, %bb.ae, %bb.ag, %bb.ad
  %.not158 = icmp eq ptr %.1140, null
  br i1 %.not158, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.1140, i64 304
  store i32 %i.bz, ptr %i.ca, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.cc = load i8, ptr %i.cb, align 4, !range !5, !noundef !6
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = icmp eq i32 %.5135, 1
  %or.cond13 = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cf = icmp eq i32 %.5, 1
  %or.cond15 = select i1 %or.cond13, i1 %i.cf, i1 false
  br i1 %or.cond15, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cg = tail call fastcc zeroext i1 @SDL_SW_RenderGeometryRaw(ptr noundef nonnull %0, ptr noundef %.1140, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %spec.select)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.ck = load float, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 148
  %i.cm = load float, ptr %i.cl, align 4
  %i.cn = tail call fastcc zeroext i1 @QueueCmdGeometry(ptr noundef nonnull %0, ptr noundef %.1140, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %spec.select, float noundef %i.ck, float noundef %i.cm, i32 noundef %.5135, i32 noundef %.5)
  br label %bb.al

bb.al:                                            ; preds = %.split.us, %bb.w, %bb.u, %bb.ak, %bb.aj, %bb.t, %bb.r, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.f, %bb.c, %SDL_ObjectValid.exit165.thread168
  %.2 = phi i1 [ false, %bb.c ], [ %i.p, %bb.g ], [ %i.w, %bb.o ], [ %i.x, %bb.r ], [ false, %SDL_ObjectValid.exit165.thread168 ], [ %i.bx, %.split.us ], [ %i.cg, %bb.aj ], [ %i.cn, %bb.ak ], [ true, %bb.u ], [ %i.aa, %bb.t ], [ %i.t, %bb.m ], [ %i.r, %bb.k ], [ %i.q, %bb.i ], [ false, %bb.f ], [ false, %bb.w ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_SW_RenderGeometryRaw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr nofree noundef readonly captures(address_is_null) %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 14 uses
  %12 = alloca %struct.SDL_FRect, align 8         ; 11 uses
  %13 = alloca %struct.SDL_FRect, align 16        ; 7 uses
  %.not = icmp eq ptr %9, null                    ; 2 uses
  %i.b = select i1 %.not, i32 %8, i32 %10         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load float, ptr %i.e, align 4            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %SDL_ObjectValid.exit.i, label %SDL_ObjectValid.exit.thread.i

SDL_ObjectValid.exit.i:                           ; preds = %bb.a
  %i.k = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.k, label %SDL_ObjectValid.exit.thread.i, label %SDL_ObjectValid.exit.thread10.i

SDL_ObjectValid.exit.thread10.i:                  ; preds = %SDL_ObjectValid.exit.i
  %i.l = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRenderDrawBlendMode_REAL.exit

SDL_ObjectValid.exit.thread.i:                    ; preds = %SDL_ObjectValid.exit.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.n = load i8, ptr %i.m, align 8, !range !5, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRenderDrawBlendMode_REAL.exit

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.r = load i32, ptr %i.q, align 4
  br label %SDL_GetRenderDrawBlendMode_REAL.exit

SDL_GetRenderDrawBlendMode_REAL.exit:             ; preds = %bb.c, %bb.b, %SDL_ObjectValid.exit.thread10.i
  %.0440 = phi i32 [ 2147483647, %SDL_ObjectValid.exit.thread10.i ], [ 2147483647, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %SDL_ObjectValid.exit.i386, label %SDL_ObjectValid.exit.thread.i384

SDL_ObjectValid.exit.i386:                        ; preds = %SDL_GetRenderDrawBlendMode_REAL.exit
  %i.u = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.u, label %SDL_ObjectValid.exit.thread.i384, label %SDL_ObjectValid.exit.thread31.i

SDL_ObjectValid.exit.thread31.i:                  ; preds = %SDL_ObjectValid.exit.i386
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_GetRenderDrawColorFloat_REAL.exit

SDL_ObjectValid.exit.thread.i384:                 ; preds = %SDL_ObjectValid.exit.i386, %SDL_GetRenderDrawBlendMode_REAL.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.x = load i8, ptr %i.w, align 8, !range !5, !noundef !6
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread.i384
  %i.z = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_GetRenderDrawColorFloat_REAL.exit

bb.e:                                             ; preds = %SDL_ObjectValid.exit.thread.i384
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ab = load <4 x float>, ptr %i.aa, align 4
  br label %SDL_GetRenderDrawColorFloat_REAL.exit

SDL_GetRenderDrawColorFloat_REAL.exit:            ; preds = %SDL_ObjectValid.exit.thread31.i, %bb.d, %bb.e
  %i.ac = phi <4 x float> [ zeroinitializer, %SDL_ObjectValid.exit.thread31.i ], [ zeroinitializer, %bb.d ], [ %i.ab, %bb.e ]
  %.not515 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not515, label %SDL_GetTextureSize_REAL.exit, label %bb.f

bb.f:                                             ; preds = %SDL_GetRenderDrawColorFloat_REAL.exit
  %i.ad = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %SDL_ObjectValid.exit.i389, label %SDL_ObjectValid.exit.thread.i388

SDL_ObjectValid.exit.i389:                        ; preds = %bb.f
  %i.af = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %1, i32 noundef 3) #14
  br i1 %i.af, label %SDL_ObjectValid.exit.thread.i388, label %SDL_ObjectValid.exit.thread19.i

SDL_ObjectValid.exit.thread19.i:                  ; preds = %SDL_ObjectValid.exit.i389
  %i.ag = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.55) #14 ; 0 uses
  br label %SDL_GetTextureSize_REAL.exit

SDL_ObjectValid.exit.thread.i388:                 ; preds = %SDL_ObjectValid.exit.i389, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load <2 x i32>, ptr %i.ah, align 4
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>
  br label %SDL_GetTextureSize_REAL.exit

SDL_GetTextureSize_REAL.exit:                     ; preds = %SDL_ObjectValid.exit.thread.i388, %SDL_ObjectValid.exit.thread19.i, %SDL_GetRenderDrawColorFloat_REAL.exit
  %i.ak = phi <2 x float> [ zeroinitializer, %SDL_GetRenderDrawColorFloat_REAL.exit ], [ zeroinitializer, %SDL_ObjectValid.exit.thread19.i ], [ %i.aj, %SDL_ObjectValid.exit.thread.i388 ] ; 2 uses
  store i32 -1, ptr %i.a, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 -1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i32 -1, ptr %i.am, align 4
  %i.an = select i1 %.not, i32 0, i32 %11
  %i.ao = icmp sgt i32 %i.b, 0
  br i1 %i.ao, label %.lr.ph, label %QueueCmdGeometry.exit418

.lr.ph:                                           ; preds = %SDL_GetTextureSize_REAL.exit
  %.not484 = icmp eq ptr %6, null
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 540
  %sext = zext nneg i32 %i.b to i64               ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %i.ax = phi i32 [ -1, %.lr.ph ], [ %.be, %.backedge.backedge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.be, %.backedge.backedge ] ; 8 uses
  switch i32 %i.an, label %bb.j [
    i32 4, label %bb.g
    i32 2, label %bb.h
    i32 1, label %bb.i
  ]

bb.g:                                             ; preds = %.backedge
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load i32, ptr %i.bc, align 4
  br label %bb.k

bb.h:                                             ; preds = %.backedge
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %9, i64 %indvars.iv ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = zext i16 %i.bl to i32
  br label %bb.k

bb.i:                                             ; preds = %.backedge
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i32
  br label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.bw = trunc nuw nsw i64 %indvars.iv to i32
  %i.bx = call fastcc i32 @remap_indices(ptr noundef %i.a, i32 noundef %i.bw, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  %i.by = trunc i64 %indvars.iv to i32
  %i.bz = add i32 %i.by, 1
  %i.ca = call fastcc i32 @remap_indices(ptr noundef %i.a, i32 noundef %i.bz, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  %i.cb = trunc i64 %indvars.iv to i32
  %i.cc = add i32 %i.cb, 2
  %i.cd = call fastcc i32 @remap_indices(ptr noundef %i.a, i32 noundef %i.cc, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7)
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.g
  %i.ce = phi i32 [ %i.ax, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ %.pre, %bb.j ] ; 7 uses
  %.0318 = phi i32 [ %i.az, %bb.g ], [ %i.bg, %bb.h ], [ %i.bp, %bb.i ], [ %i.bx, %bb.j ] ; 13 uses
  %.0317 = phi i32 [ %i.bb, %bb.g ], [ %i.bj, %bb.h ], [ %i.bs, %bb.i ], [ %i.ca, %bb.j ] ; 10 uses
  %.0316 = phi i32 [ %i.bd, %bb.g ], [ %i.bm, %bb.h ], [ %i.bv, %bb.i ], [ %i.cd, %bb.j ] ; 8 uses
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %QueueCmdGeometry.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.k
  %i.cg = load i32, ptr %i.am, align 4            ; 4 uses
  %i.ch = icmp eq i32 %i.cg, %.0318
  %i.ci = icmp eq i32 %i.cg, %.0317
  %or.cond356 = select i1 %i.ch, i1 true, i1 %i.ci
  %i.cj = icmp eq i32 %i.cg, %.0316
  %or.cond357 = select i1 %or.cond356, i1 true, i1 %i.cj
  %i.ck = zext i1 %or.cond357 to i32
  %i.cl = load i32, ptr %i.al, align 4            ; 6 uses
  %i.cm = icmp eq i32 %i.cl, %.0318
  %i.cn = icmp eq i32 %i.cl, %.0317
  %or.cond356.1 = select i1 %i.cm, i1 true, i1 %i.cn
  %i.co = icmp eq i32 %i.cl, %.0316
  %or.cond357.1 = select i1 %or.cond356.1, i1 true, i1 %i.co
  %i.cp = zext i1 %or.cond357.1 to i32
  %.1304.1 = add nuw nsw i32 %i.ck, %i.cp
  %i.cq = icmp eq i32 %i.ce, %.0318
  %i.cr = icmp eq i32 %i.ce, %.0317
  %or.cond356.2 = select i1 %i.cq, i1 true, i1 %i.cr
  %i.cs = icmp eq i32 %i.ce, %.0316
  %or.cond357.2 = select i1 %or.cond356.2, i1 true, i1 %i.cs
  %i.ct = zext i1 %or.cond357.2 to i32
  %.1304.2 = add nuw nsw i32 %.1304.1, %i.ct
  %i.cu = icmp eq i32 %.1304.2, 2
  br i1 %i.cu, label %bb.l, label %.thread456

bb.l:                                             ; preds = %.preheader.preheader
  %i.cv = mul nsw i32 %.0318, %3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %2, i64 %i.cw ; 2 uses
  %i.cy = mul nsw i32 %.0317, %3
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %2, i64 %i.cz ; 2 uses
  %i.db = mul nsw i32 %.0316, %3
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %i.dc ; 2 uses
  %i.de = load float, ptr %i.cx, align 4          ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dg = load float, ptr %i.df, align 4          ; 4 uses
  %i.dh = load float, ptr %i.da, align 4          ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dj = load float, ptr %i.di, align 4          ; 4 uses
  %i.dk = load float, ptr %i.dd, align 4          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dm = load float, ptr %i.dl, align 4          ; 2 uses
  %i.dn = fcmp ugt float %i.de, %i.dh
  %i.do = fcmp ugt float %i.dg, %i.dj
  %or.cond358 = select i1 %i.dn, i1 true, i1 %i.do ; 3 uses
  %. = select i1 %or.cond358, float %i.dh, float %i.de
  %.531 = select i1 %or.cond358, float %i.dj, float %i.dg
  %.0317..0318 = select i1 %or.cond358, i32 %.0317, i32 %.0318
  %i.dp = fcmp ugt float %., %i.dk
  %i.dq = fcmp ugt float %.531, %i.dm
  %or.cond360 = select i1 %i.dp, i1 true, i1 %i.dq
  %spec.select376 = select i1 %or.cond360, i32 %.0316, i32 %.0317..0318 ; 7 uses
  %i.dr = fcmp ult float %i.de, %i.dh
  %i.ds = fcmp ult float %i.dg, %i.dj
  %or.cond361 = select i1 %i.dr, i1 true, i1 %i.ds ; 3 uses
  %.sink530 = select i1 %or.cond361, float %i.dh, float %i.de
  %.sink529 = select i1 %or.cond361, float %i.dj, float %i.dg
  %.0317.sink527 = select i1 %or.cond361, i32 %.0317, i32 %.0318
  %i.dt = fcmp ult float %.sink530, %i.dk
  %i.du = fcmp ult float %.sink529, %i.dm
  %or.cond363 = select i1 %i.dt, i1 true, i1 %i.du
  %spec.select378 = select i1 %or.cond363, i32 %.0316, i32 %.0317.sink527 ; 7 uses
  %.not345 = icmp eq i32 %.0318, %spec.select376
  %.not346 = icmp eq i32 %.0318, %spec.select378
  %or.cond364 = or i1 %.not345, %.not346
  %.not347 = icmp eq i32 %.0317, %spec.select376
  %.not348 = icmp eq i32 %.0317, %spec.select378
  %or.cond365 = or i1 %.not347, %.not348
  %spec.select379 = select i1 %or.cond365, i32 %.0316, i32 %.0317
  %.0308 = select i1 %or.cond364, i32 %spec.select379, i32 %.0318 ; 2 uses
  %.not349 = icmp eq i32 %i.ce, %spec.select376
  %.not350 = icmp eq i32 %i.ce, %spec.select378
  %or.cond366 = or i1 %.not349, %.not350
  %.not351 = icmp eq i32 %i.cl, %spec.select376
  %.not352 = icmp eq i32 %i.cl, %spec.select378
  %or.cond367 = or i1 %.not351, %.not352
  %spec.select380 = select i1 %or.cond367, i32 %i.cg, i32 %i.cl
  %.0306 = select i1 %or.cond366, i32 %spec.select380, i32 %i.ce ; 2 uses
  %i.dv = mul nsw i32 %spec.select376, %3
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %2, i64 %i.dw ; 3 uses
  %i.dy = mul nsw i32 %spec.select378, %3
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %2, i64 %i.dz ; 3 uses
  %i.eb = mul nsw i32 %.0308, %3
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec ; 2 uses
  %i.ee = load float, ptr %i.dx, align 4          ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.eg = load float, ptr %i.ef, align 4          ; 2 uses
  %i.eh = load float, ptr %i.ea, align 4          ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ej = load float, ptr %i.ei, align 4          ; 2 uses
  %i.ek = load float, ptr %i.ed, align 4          ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.em = load float, ptr %i.el, align 4          ; 2 uses
  %i.en = fcmp oeq float %i.ee, %i.ek
  %i.eo = fcmp oeq float %i.ej, %i.em
  %or.cond368 = select i1 %i.en, i1 %i.eo, i1 false
  %i.ep = fcmp oeq float %i.eg, %i.em
  %i.eq = fcmp oeq float %i.eh, %i.ek
  %or.cond369 = select i1 %i.ep, i1 %i.eq, i1 false
  %i.er = select i1 %or.cond368, i1 true, i1 %or.cond369 ; 2 uses
  %i.es = mul nsw i32 %.0306, %3
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %2, i64 %i.et ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4          ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ex = load float, ptr %i.ew, align 4          ; 2 uses
  %i.ey = fcmp oeq float %i.ee, %i.ev
  %i.ez = fcmp oeq float %i.ej, %i.ex
  %or.cond370 = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond370, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fa = fcmp oeq float %i.eg, %i.ex
  %i.fb = fcmp oeq float %i.eh, %i.ev
  %or.cond371.not480.not483 = select i1 %i.fa, i1 %i.fb, i1 false
  %or.cond477.not = select i1 %or.cond371.not480.not483, i1 %i.er, i1 false
  br i1 %or.cond477.not, label %bb.n, label %.thread456

select.unfold:                                    ; preds = %bb.l
  br i1 %i.er, label %bb.n, label %.thread456

bb.n:                                             ; preds = %bb.m, %select.unfold
  %i.fc = mul nsw i32 %spec.select376, %5
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %4, i64 %i.fd ; 3 uses
  %i.ff = mul nsw i32 %spec.select378, %5
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %4, i64 %i.fg
  %i.fi = mul nsw i32 %.0306, %5
  %i.fj = sext i32 %i.fi to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@SDL_SW_RenderGeometryRaw:bb.a
SDL_ObjectValid.exit.thread.i397:                 ; preds = %SDL_ObjectValid.exit.i400, %SDL_SetTextureAlphaModFloat_REAL.exit.split
  %i.ir = phi i8 [ %.pre497, %SDL_ObjectValid.exit.i400 ], [ 0, %SDL_SetTextureAlphaModFloat_REAL.exit.split ]
  %i.is = getelementptr inbounds nuw i8, ptr %.tr.i395, i64 48
  store <2 x float> %i.ic, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %.tr.i395, i64 56
  store float %i.ie, ptr %i.it, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %.tr.i395, i64 248
  %i.iv = load ptr, ptr %i.iu, align 8            ; 2 uses
  %.not.i398 = icmp eq ptr %i.iv, null
  br i1 %.not.i398, label %SDL_SetTextureColorModFloat_REAL.exit, label %SDL_SetTextureAlphaModFloat_REAL.exit.split, !llvm.loop !65

SDL_SetTextureColorModFloat_REAL.exit:            ; preds = %SDL_ObjectValid.exit.thread.i397.us, %SDL_ObjectValid.exit.thread.i397, %SDL_ObjectValid.exit.thread15.i
  %i.iw = load float, ptr %i.ar, align 8          ; 4 uses
  %i.ix = fcmp ogt float %i.iw, 0.000000e+00
  %i.iy = load float, ptr %i.aq, align 4          ; 4 uses
  %i.iz = fcmp ogt float %i.iy, 0.000000e+00
  %or.cond10 = select i1 %i.ix, i1 %i.iz, i1 false
  br i1 %or.cond10, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %SDL_SetTextureColorModFloat_REAL.exit
  %i.ja = call zeroext i1 @SDL_RenderTexture_REAL(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %13) ; 0 uses
  br label %.thread

bb.ab:                                            ; preds = %SDL_SetTextureColorModFloat_REAL.exit
  %i.jb = fcmp olt float %i.iw, 0.000000e+00
  br i1 %i.jb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.jc = fneg float %i.iw
  store float %i.jc, ptr %i.ar, align 8
  %i.jd = load float, ptr %12, align 8
  %i.je = fadd float %i.iw, %i.jd
  store float %i.je, ptr %12, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0 = phi i32 [ 1, %bb.ac ], [ 0, %bb.ab ]      ; 2 uses
  %i.jf = fcmp olt float %i.iy, 0.000000e+00
  br i1 %i.jf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jg = or disjoint i32 %.0, 2
  %i.jh = fneg float %i.iy
  store float %i.jh, ptr %i.aq, align 4
  %i.ji = load float, ptr %i.as, align 4
  %i.jj = fadd float %i.iy, %i.ji
  store float %i.jj, ptr %i.as, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.1 = phi i32 [ %i.jg, %bb.ae ], [ %.0, %bb.ad ]
  %i.jk = call zeroext i1 @SDL_RenderTextureRotated_REAL(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %13, double noundef 0.000000e+00, ptr noundef null, i32 noundef %.1) ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.y
  %i.jl = extractelement <2 x float> %i.hf, i64 0
  %i.jm = fcmp une float %i.jl, 0.000000e+00
  %i.jn = extractelement <2 x float> %i.hf, i64 1
  %i.jo = fcmp une float %i.jn, 0.000000e+00
  %or.cond13 = select i1 %i.jm, i1 %i.jo, i1 false
  br i1 %or.cond13, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.jp = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %SDL_ObjectValid.exit.i404, label %SDL_ObjectValid.exit.thread.i402

SDL_ObjectValid.exit.i404:                        ; preds = %bb.ah
  %i.jr = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.jr, label %SDL_ObjectValid.exit.thread.i402, label %SDL_ObjectValid.exit.thread11.i

SDL_ObjectValid.exit.thread11.i:                  ; preds = %SDL_ObjectValid.exit.i404
  %i.js = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.ak

SDL_ObjectValid.exit.thread.i402:                 ; preds = %SDL_ObjectValid.exit.i404, %bb.ah
  %i.jt = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %SDL_ObjectValid.exit.thread.i402
  %i.jv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %SDL_ObjectValid.exit.thread.i402
  store i32 1, ptr %i.av, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %SDL_ObjectValid.exit.thread11.i
  %i.jw = load <4 x float>, ptr %i.gm, align 4
  %i.jx = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %SDL_ObjectValid.exit.i408, label %SDL_ObjectValid.exit.thread.i406

SDL_ObjectValid.exit.i408:                        ; preds = %bb.ak
  %i.jz = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.jz, label %SDL_ObjectValid.exit.thread.i406, label %SDL_ObjectValid.exit.thread12.i

SDL_ObjectValid.exit.thread12.i:                  ; preds = %SDL_ObjectValid.exit.i408
  %i.ka = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_SetRenderDrawColorFloat_REAL.exit

SDL_ObjectValid.exit.thread.i406:                 ; preds = %SDL_ObjectValid.exit.i408, %bb.ak
  %i.kb = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %SDL_ObjectValid.exit.thread.i406
  %i.kd = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_SetRenderDrawColorFloat_REAL.exit

bb.am:                                            ; preds = %SDL_ObjectValid.exit.thread.i406
  store <4 x float> %i.jw, ptr %i.aw, align 4
  br label %SDL_SetRenderDrawColorFloat_REAL.exit

SDL_SetRenderDrawColorFloat_REAL.exit:            ; preds = %bb.am, %bb.al, %SDL_ObjectValid.exit.thread12.i
  %i.ke = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %SDL_ObjectValid.exit.i413, label %SDL_ObjectValid.exit.thread.i410

SDL_ObjectValid.exit.i413:                        ; preds = %SDL_SetRenderDrawColorFloat_REAL.exit
  %i.kg = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.kg, label %SDL_ObjectValid.exit.thread.i410, label %SDL_ObjectValid.exit.thread10.i414

SDL_ObjectValid.exit.thread10.i414:               ; preds = %SDL_ObjectValid.exit.i413
  %i.kh = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %.thread

SDL_ObjectValid.exit.thread.i410:                 ; preds = %SDL_ObjectValid.exit.i413, %SDL_SetRenderDrawColorFloat_REAL.exit
  %i.ki = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %SDL_ObjectValid.exit.thread.i410
  %i.kk = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %.thread

bb.ao:                                            ; preds = %SDL_ObjectValid.exit.thread.i410
  %savedstack = call ptr @llvm.stacksave.p0()
  %i.kl = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %SDL_ObjectValid.exit.i428, label %SDL_ObjectValid.exit.thread.i426

SDL_ObjectValid.exit.i428:                        ; preds = %bb.ao
  %i.kn = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.kn, label %SDL_ObjectValid.exit.thread.i426, label %SDL_ObjectValid.exit.thread48.i

SDL_ObjectValid.exit.thread48.i:                  ; preds = %SDL_ObjectValid.exit.i428
  %i.ko = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_RenderFillRects_REAL.exit

SDL_ObjectValid.exit.thread.i426:                 ; preds = %SDL_ObjectValid.exit.i428, %bb.ao
  %i.kp = load i8, ptr %i.au, align 8, !range !5, !noundef !6
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.ap, label %._crit_edge.i

bb.ap:                                            ; preds = %SDL_ObjectValid.exit.thread.i426
  %i.kr = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_RenderFillRects_REAL.exit

._crit_edge.i:                                    ; preds = %SDL_ObjectValid.exit.thread.i426
  %i.ks = alloca [16 x i8], align 16              ; 2 uses
  %i.kt = load ptr, ptr %i.c, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 144
  %i.kv = load <2 x float>, ptr %i.ku, align 4
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.kx = load <4 x float>, ptr %13, align 16
  %i.ky = fmul <4 x float> %i.kw, %i.kx
  store <4 x float> %i.ky, ptr %i.ks, align 16
  %i.kz = call fastcc zeroext i1 @QueueCmdFillRects(ptr noundef nonnull %0, ptr noundef %i.ks, i32 noundef 1) ; 0 uses
  br label %SDL_RenderFillRects_REAL.exit

SDL_RenderFillRects_REAL.exit:                    ; preds = %SDL_ObjectValid.exit.thread48.i, %bb.ap, %._crit_edge.i
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br label %.thread

.thread456:                                       ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.n, %bb.o, %bb.p, %bb.m, %.preheader.preheader, %select.unfold
  %i.la = load i32, ptr %i.a, align 4
  %.not355 = icmp eq i32 %i.la, -1
  br i1 %.not355, label %QueueCmdGeometry.exit, label %bb.aq

bb.aq:                                            ; preds = %.thread456
  %i.lb = call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not.i415 = icmp eq ptr %i.lb, null
  br i1 %.not.i415, label %QueueCmdGeometry.exit418, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 60
  store i32 1, ptr %i.lc, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  store i32 1, ptr %i.ld, align 8
  %i.le = load ptr, ptr %i.ap, align 8
  %i.lf = call zeroext i1 %i.le(ptr noundef %0, ptr noundef nonnull %i.lb, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 4, float noundef %i.f, float noundef %i.h) #14, !inline_history !48
  br i1 %i.lf, label %QueueCmdGeometry.exit, label %QueueCmdGeometry.exit418.sink.split

QueueCmdGeometry.exit:                            ; preds = %.thread456, %bb.ar, %bb.k
  store i32 %.0318, ptr %i.a, align 4
  store i32 %.0317, ptr %i.al, align 4
  store i32 %.0316, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %14 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %14, label %.backedge.backedge, label %._crit_edge

.backedge.backedge:                               ; preds = %QueueCmdGeometry.exit, %.thread
  %.be = phi i32 [ %.0318, %QueueCmdGeometry.exit ], [ -1, %.thread ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %QueueCmdGeometry.exit ], [ %indvars.iv.next518, %.thread ]
  br label %.backedge, !llvm.loop !66

.thread:                                          ; preds = %bb.af, %bb.aa, %bb.ag, %SDL_ObjectValid.exit.thread10.i414, %bb.an, %SDL_RenderFillRects_REAL.exit
  store i32 -1, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %indvars.iv.next518 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %15 = icmp samesign ult i64 %indvars.iv.next518, %sext
  br i1 %15, label %.backedge.backedge, label %QueueCmdGeometry.exit418

._crit_edge:                                      ; preds = %QueueCmdGeometry.exit
  %i.lg = icmp eq i32 %.0318, -1
  br i1 %i.lg, label %QueueCmdGeometry.exit418, label %bb.as

bb.as:                                            ; preds = %._crit_edge
  %i.lh = call fastcc ptr @PrepQueueCmdDraw(ptr noundef %0, i32 noundef 10, ptr noundef %1) ; 5 uses
  %.not.i416 = icmp eq ptr %i.lh, null
  br i1 %.not.i416, label %QueueCmdGeometry.exit418, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 60
  store i32 1, ptr %i.li, align 4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  store i32 1, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = call zeroext i1 %i.ll(ptr noundef %0, ptr noundef nonnull %i.lh, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef range(i32 3, -2147483648) %8, ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef 4, float noundef %i.f, float noundef %i.h) #14, !inline_history !48
  br i1 %i.lm, label %QueueCmdGeometry.exit418, label %QueueCmdGeometry.exit418.sink.split

QueueCmdGeometry.exit418.sink.split:              ; preds = %bb.ar, %bb.at
  %.sink = phi ptr [ %i.lh, %bb.at ], [ %i.lb, %bb.ar ]
  store i32 0, ptr %.sink, align 8
  br label %QueueCmdGeometry.exit418

QueueCmdGeometry.exit418:                         ; preds = %.thread, %bb.aq, %QueueCmdGeometry.exit418.sink.split, %SDL_GetTextureSize_REAL.exit, %bb.at, %bb.as, %._crit_edge
  %.4323 = phi i1 [ true, %._crit_edge ], [ false, %bb.as ], [ true, %SDL_GetTextureSize_REAL.exit ], [ true, %bb.at ], [ false, %QueueCmdGeometry.exit418.sink.split ], [ true, %.thread ], [ false, %bb.aq ]
  %i.ln = call zeroext i1 @SDL_SetRenderDrawBlendMode_REAL(ptr noundef %0, i32 noundef %.0440) ; 0 uses
  %i.lo = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %SDL_ObjectValid.exit.i422, label %SDL_ObjectValid.exit.thread.i420

SDL_ObjectValid.exit.i422:                        ; preds = %QueueCmdGeometry.exit418
  %i.lq = call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.lq, label %SDL_ObjectValid.exit.thread.i420, label %SDL_ObjectValid.exit.thread12.i423

SDL_ObjectValid.exit.thread12.i423:               ; preds = %SDL_ObjectValid.exit.i422
  %i.lr = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %SDL_SetRenderDrawColorFloat_REAL.exit424

SDL_ObjectValid.exit.thread.i420:                 ; preds = %SDL_ObjectValid.exit.i422, %QueueCmdGeometry.exit418
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.lt = load i8, ptr %i.ls, align 8, !range !5, !noundef !6
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %SDL_ObjectValid.exit.thread.i420
  %i.lv = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %SDL_SetRenderDrawColorFloat_REAL.exit424

bb.av:                                            ; preds = %SDL_ObjectValid.exit.thread.i420
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 540
  store <4 x float> %i.ac, ptr %i.lw, align 4
  br label %SDL_SetRenderDrawColorFloat_REAL.exit424

SDL_SetRenderDrawColorFloat_REAL.exit424:         ; preds = %SDL_ObjectValid.exit.thread12.i423, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.4323
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SetRenderTextureAddressMode_REAL(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread7

SDL_ObjectValid.exit.thread7:                     ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.e

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 564
  store i32 %2, ptr %i.j, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %SDL_ObjectValid.exit.thread7
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %SDL_ObjectValid.exit.thread7 ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_GetRenderTextureAddressMode_REAL(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not16 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %2, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.f
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread18

SDL_ObjectValid.exit.thread18:                    ; preds = %bb.e, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.l

SDL_ObjectValid.exit.thread:                      ; preds = %bb.f, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %SDL_ObjectValid.exit.thread
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.j = load i32, ptr %i.i, align 8
  store i32 %i.j, ptr %1, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %2, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %SDL_ObjectValid.exit.thread18
  %.0 = phi i1 [ false, %bb.g ], [ false, %SDL_ObjectValid.exit.thread18 ], [ true, %bb.k ], [ true, %bb.j ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_RenderReadPixels_REAL(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SDL_Rect, align 4           ; 6 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %SDL_ObjectValid.exit.thread57, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @SDL_object_validation, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %SDL_ObjectValid.exit, label %SDL_ObjectValid.exit.thread

SDL_ObjectValid.exit:                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @SDL_FindObject(ptr noundef nonnull %0, i32 noundef 2) #14
  br i1 %i.c, label %SDL_ObjectValid.exit.thread, label %SDL_ObjectValid.exit.thread57

SDL_ObjectValid.exit.thread57:                    ; preds = %bb.a, %SDL_ObjectValid.exit
  %i.d = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.v

SDL_ObjectValid.exit.thread:                      ; preds = %bb.b, %SDL_ObjectValid.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.f = load i8, ptr %i.e, align 8, !range !5, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %SDL_ObjectValid.exit.thread
  %i.h = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29) #14 ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %SDL_ObjectValid.exit.thread
end_hunk_1
