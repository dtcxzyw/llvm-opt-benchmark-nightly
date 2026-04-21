inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 15 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.g = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %3, i32 noundef 1200) #8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes14numberToStringEdPcm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.m = call ptr @g_dtoa(ptr noundef %i.g, double noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8 ; 53 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.k, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN6hermes14numberToStringEdPcm:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.090 = phi ptr [ %i.o, %bb.j ], [ %1, %bb.i ]  ; 22 uses
  %.090200 = ptrtoaddr ptr %.090 to i64           ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 8 uses
  %i.s = sub i64 %i.q, %i.r                       ; 13 uses
  %i.t = trunc i64 %i.s to i32                    ; 8 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3    ; 12 uses
  %i.v = icmp sge i32 %i.u, %i.t
end_hunk_2
begin_hunk_3_@_ZN6hermes14numberToStringEdPcm:bb.a
  br i1 %i.x, label %.lr.ph135.preheader.a, label %.preheader

.lr.ph135.preheader.a:                            ; preds = %.preheader94
  %wide.trip.count176 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check278 = icmp samesign ult i64 %wide.trip.count176, 4
  %i.y = sub i64 %.090200, %i.r
  %diff.check276 = icmp ult i64 %i.y, 32
  %or.cond292 = select i1 %min.iters.check278, i1 true, i1 %diff.check276
  br i1 %or.cond292, label %.lr.ph135.preheader295, label %vector.main.loop.iter.check338

vector.main.loop.iter.check338:                   ; preds = %.lr.ph135.preheader.a
  %min.iters.check339 = icmp samesign ult i64 %wide.trip.count176, 32
  br i1 %min.iters.check339, label %vec.epilog.ph357, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check338
  %n.mod.vf341 = and i64 %i.s, 28
  %n.vec281 = and i64 %i.s, 2147483616            ; 5 uses
  %i.z = getelementptr i8, ptr %.090, i64 %n.vec281 ; 2 uses
  br label %vector.body282

end_hunk_3
begin_hunk_4_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load286, ptr %i.ac, align 1, !tbaa !11
  %index.next287 = add nuw i64 %index283, 32      ; 2 uses
  %i.ad = icmp eq i64 %index.next287, %n.vec281
  br i1 %i.ad, label %middle.block349, label %vector.body282, !llvm.loop !14

middle.block349:                                  ; preds = %vector.body282
  %cmp.n350 = icmp eq i64 %wide.trip.count176, %n.vec281
  br i1 %cmp.n350, label %.preheader, label %vec.epilog.iter.check355

vec.epilog.iter.check355:                         ; preds = %middle.block349
  %min.epilog.iters.check356 = icmp eq i64 %n.mod.vf341, 0
  br i1 %min.epilog.iters.check356, label %.lr.ph135.preheader295, label %vec.epilog.ph357, !prof !18

vec.epilog.ph357:                                 ; preds = %vector.main.loop.iter.check338, %vec.epilog.iter.check355
  %vec.epilog.resume.val351 = phi i64 [ %n.vec281, %vec.epilog.iter.check355 ], [ 0, %vector.main.loop.iter.check338 ]
  %n.vec359 = and i64 %i.s, 2147483644            ; 4 uses
  %4 = getelementptr i8, ptr %.090, i64 %n.vec359 ; 2 uses
  br label %vec.epilog.vector.body360

vec.epilog.vector.body360:                        ; preds = %vec.epilog.vector.body360, %vec.epilog.ph357
  %index361 = phi i64 [ %vec.epilog.resume.val351, %vec.epilog.ph357 ], [ %index.next364, %vec.epilog.vector.body360 ] ; 3 uses
  %next.gep362 = getelementptr i8, ptr %.090, i64 %index361
  %5 = getelementptr inbounds nuw i8, ptr %i.m, i64 %index361
  %wide.load363 = load <4 x i8>, ptr %5, align 1, !tbaa !11
  store <4 x i8> %wide.load363, ptr %next.gep362, align 1, !tbaa !11
  %index.next364 = add nuw i64 %index361, 4       ; 2 uses
  %6 = icmp eq i64 %index.next364, %n.vec359
  br i1 %6, label %middle.block288, label %vec.epilog.vector.body360, !llvm.loop !19

middle.block288:                                  ; preds = %vec.epilog.vector.body360
  %cmp.n289 = icmp eq i64 %wide.trip.count176, %n.vec359
  br i1 %cmp.n289, label %.preheader, label %.lr.ph135.preheader295

.lr.ph135.preheader295:                           ; preds = %.lr.ph135.preheader.a, %vec.epilog.iter.check355, %middle.block288
  %indvars.iv173.ph = phi i64 [ 0, %.lr.ph135.preheader.a ], [ %n.vec281, %vec.epilog.iter.check355 ], [ %n.vec359, %middle.block288 ] ; 4 uses
  %.1133.ph = phi ptr [ %.090, %.lr.ph135.preheader.a ], [ %i.z, %vec.epilog.iter.check355 ], [ %4, %middle.block288 ] ; 2 uses
  %7 = sub i64 %i.s, %indvars.iv173.ph
  %xtraiter317 = and i64 %7, 7                    ; 2 uses
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

end_hunk_4
begin_hunk_5_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter319.next = add i64 %prol.iter319, 1   ; 2 uses
  %prol.iter319.cmp.not = icmp eq i64 %prol.iter319.next, %xtraiter317
  br i1 %prol.iter319.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !20

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader295
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader295 ], [ %i.ag, %.lr.ph135.prol ]
end_hunk_5
begin_hunk_6_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %.preheader, label %.lr.ph135

.preheader:                                       ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %middle.block349, %middle.block288, %.preheader94
  %.1.lcssa = phi ptr [ %.090, %.preheader94 ], [ %4, %middle.block288 ], [ %i.z, %middle.block349 ], [ %.lcssa.unr, %.lr.ph135.prol.loopexit ], [ %i.bx, %.lr.ph135 ] ; 3 uses
  %i.aj = sub nsw i32 %i.u, %i.t                  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph139.preheader, label %.loopexit
end_hunk_6
begin_hunk_7_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !11
  %indvars.iv.next174.7 = add nuw nsw i64 %indvars.iv173, 8 ; 2 uses
  %exitcond177.not.7 = icmp eq i64 %indvars.iv.next174.7, %wide.trip.count176
  br i1 %exitcond177.not.7, label %.preheader, label %.lr.ph135, !llvm.loop !22

bb.l:                                             ; preds = %bb.k
  %i.by = add i32 %i.u, -1                        ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next165.prol = add nuw nsw i64 %indvars.iv164.prol, 1 ; 2 uses
  %prol.iter316.next = add i64 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i64 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !23

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader297
  %.3122.lcssa299.unr = phi ptr [ poison, %.lr.ph124.preheader297 ], [ %.3122.prol, %.lr.ph124.prol ]
end_hunk_8
begin_hunk_9_@_ZN6hermes14numberToStringEdPcm:bb.a
  %.lcssa195 = phi ptr [ %i.ca, %middle.block252 ], [ %.lcssa298.unr, %.lr.ph124.prol.loopexit ], [ %i.ei, %._crit_edge125.loopexit.unr-lcssa ]
  %.3122.lcssa257 = ptrtoaddr ptr %.3122.lcssa to i64
  store i8 46, ptr %.lcssa195, align 1, !tbaa !11
  %.4127 = getelementptr inbounds nuw i8, ptr %.3122.lcssa, i64 2 ; 7 uses
  %i.cn = icmp slt i32 %i.u, %i.t
  br i1 %i.cn, label %.lr.ph131.preheader.a, label %.loopexit

.lr.ph131.preheader.a:                            ; preds = %._crit_edge125
  %i.co = zext nneg i32 %i.u to i64               ; 6 uses
  %i.cp = trunc i64 %i.q to i32
  %i.cq = xor i32 %i.u, -1
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = trunc i64 %i.r to i32
  %i.ct = sub i32 %i.cr, %i.cs                    ; 3 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 5 uses
  %min.iters.check260 = icmp ult i32 %i.ct, 3
  br i1 %min.iters.check260, label %.lr.ph131.preheader296, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph131.preheader.a
end_hunk_9
begin_hunk_10_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.cx = add i64 %i.r, %wide.trip.count167
  %i.cy = sub i64 %i.cw, %i.cx
  %diff.check258 = icmp ult i64 %i.cy, 32
  br i1 %diff.check258, label %.lr.ph131.preheader296, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck256
  %min.iters.check302 = icmp ult i32 %i.ct, 31
  br i1 %min.iters.check302, label %vec.epilog.ph322, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check301
  %n.mod.vf304 = and i64 %i.cv, 28
  %n.vec263 = and i64 %i.cv, 8589934560           ; 5 uses
  %i.cz = or disjoint i64 %n.vec263, %i.co
  %i.da = getelementptr i8, ptr %.4127, i64 %n.vec263 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.co
end_hunk_10
begin_hunk_11_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load269, ptr %i.dc, align 1, !tbaa !11
  %index.next270 = add nuw i64 %index265, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.dd, label %middle.block313, label %vector.body264, !llvm.loop !24

middle.block313:                                  ; preds = %vector.body264
  %cmp.n314 = icmp eq i64 %i.cv, %n.vec263
  br i1 %cmp.n314, label %.loopexit, label %vec.epilog.iter.check320

vec.epilog.iter.check320:                         ; preds = %middle.block313
  %min.epilog.iters.check321 = icmp eq i64 %n.mod.vf304, 0
  br i1 %min.epilog.iters.check321, label %.lr.ph131.preheader296, label %vec.epilog.ph322, !prof !18

vec.epilog.ph322:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check320
  %vec.epilog.resume.val315 = phi i64 [ %n.vec263, %vec.epilog.iter.check320 ], [ 0, %vector.main.loop.iter.check301 ]
  %n.vec324 = and i64 %i.cv, 8589934588           ; 4 uses
  %8 = add nuw nsw i64 %n.vec324, %i.co
  %9 = getelementptr i8, ptr %.4127, i64 %n.vec324 ; 2 uses
  %invariant.gep405 = getelementptr i8, ptr %i.m, i64 %i.co
  br label %vec.epilog.vector.body325

vec.epilog.vector.body325:                        ; preds = %vec.epilog.vector.body325, %vec.epilog.ph322
  %index326 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph322 ], [ %index.next329, %vec.epilog.vector.body325 ] ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.4127, i64 %index326
  %gep406 = getelementptr i8, ptr %invariant.gep405, i64 %index326
  %wide.load328 = load <4 x i8>, ptr %gep406, align 1, !tbaa !11
  store <4 x i8> %wide.load328, ptr %next.gep327, align 1, !tbaa !11
  %index.next329 = add nuw i64 %index326, 4       ; 2 uses
  %10 = icmp eq i64 %index.next329, %n.vec324
  br i1 %10, label %middle.block271, label %vec.epilog.vector.body325, !llvm.loop !25

middle.block271:                                  ; preds = %vec.epilog.vector.body325
  %cmp.n272 = icmp eq i64 %i.cv, %n.vec324
  br i1 %cmp.n272, label %.loopexit, label %.lr.ph131.preheader296

.lr.ph131.preheader296:                           ; preds = %vector.memcheck256, %.lr.ph131.preheader.a, %vec.epilog.iter.check320, %middle.block271
  %indvars.iv170.ph = phi i64 [ %i.co, %.lr.ph131.preheader.a ], [ %i.co, %vector.memcheck256 ], [ %i.cz, %vec.epilog.iter.check320 ], [ %8, %middle.block271 ]
  %.4129.ph = phi ptr [ %.4127, %.lr.ph131.preheader.a ], [ %.4127, %vector.memcheck256 ], [ %i.da, %vec.epilog.iter.check320 ], [ %9, %middle.block271 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
end_hunk_11
begin_hunk_12_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !11
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164, 8 ; 2 uses
  %exitcond168.not.7 = icmp eq i64 %indvars.iv.next165.7, %wide.trip.count167
  br i1 %exitcond168.not.7, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124, !llvm.loop !26

.lr.ph131:                                        ; preds = %.lr.ph131.preheader296, %.lr.ph131
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph131 ], [ %indvars.iv170.ph, %.lr.ph131.preheader296 ] ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6hermes14numberToStringEdPcm:bb.a
  %.4 = getelementptr inbounds nuw i8, ptr %.4129, i64 1 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv.next171 to i32
  %i.em = icmp slt i32 %i.el, %i.t
  br i1 %i.em, label %.lr.ph131, label %.loopexit, !llvm.loop !27

bb.m:                                             ; preds = %bb.l
  %i.en = add i32 %i.u, 5
end_hunk_13
begin_hunk_14_@_ZN6hermes14numberToStringEdPcm:bb.a
  br i1 %i.eq, label %.lr.ph116, label %.preheader97

.preheader97:                                     ; preds = %.lr.ph116, %bb.n
  %.5.lcssa = phi ptr [ %i.ep, %bb.n ], [ %i.fd, %.lr.ph116 ] ; 7 uses
  %i.er = icmp sgt i32 %i.t, 0
  br i1 %i.er, label %.lr.ph120.preheader.a, label %.loopexit

.lr.ph120.preheader.a:                            ; preds = %.preheader97
  %.5.lcssa222 = ptrtoaddr ptr %.5.lcssa to i64
  %wide.trip.count162 = and i64 %i.s, 2147483647  ; 6 uses
  %min.iters.check225 = icmp samesign ult i64 %wide.trip.count162, 4
  %i.es = sub i64 %.5.lcssa222, %i.r
  %diff.check223 = icmp ult i64 %i.es, 32
  %or.cond294 = select i1 %min.iters.check225, i1 true, i1 %diff.check223
  br i1 %or.cond294, label %.lr.ph120.preheader300, label %vector.main.loop.iter.check251

vector.main.loop.iter.check251:                   ; preds = %.lr.ph120.preheader.a
  %min.iters.check252 = icmp samesign ult i64 %wide.trip.count162, 32
  br i1 %min.iters.check252, label %vec.epilog.ph269, label %vector.ph226

vector.ph226:                                     ; preds = %vector.main.loop.iter.check251
  %n.mod.vf254 = and i64 %i.s, 28
  %n.vec228 = and i64 %i.s, 2147483616            ; 5 uses
  %i.et = getelementptr i8, ptr %.5.lcssa, i64 %n.vec228 ; 2 uses
  br label %vector.body229

end_hunk_14
begin_hunk_15_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load233, ptr %i.ew, align 1, !tbaa !11
  %index.next234 = add nuw i64 %index230, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next234, %n.vec228
  br i1 %i.ex, label %middle.block262, label %vector.body229, !llvm.loop !28

middle.block262:                                  ; preds = %vector.body229
  %cmp.n263 = icmp eq i64 %wide.trip.count162, %n.vec228
  br i1 %cmp.n263, label %.loopexit, label %vec.epilog.iter.check267

vec.epilog.iter.check267:                         ; preds = %middle.block262
  %min.epilog.iters.check268 = icmp eq i64 %n.mod.vf254, 0
  br i1 %min.epilog.iters.check268, label %.lr.ph120.preheader300, label %vec.epilog.ph269, !prof !18

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check251, %vec.epilog.iter.check267
  %vec.epilog.resume.val264 = phi i64 [ %n.vec228, %vec.epilog.iter.check267 ], [ 0, %vector.main.loop.iter.check251 ]
  %n.vec271 = and i64 %i.s, 2147483644            ; 4 uses
  %11 = getelementptr i8, ptr %.5.lcssa, i64 %n.vec271 ; 2 uses
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph269
  %index273 = phi i64 [ %vec.epilog.resume.val264, %vec.epilog.ph269 ], [ %index.next276, %vec.epilog.vector.body272 ] ; 3 uses
  %next.gep274 = getelementptr i8, ptr %.5.lcssa, i64 %index273
  %12 = getelementptr inbounds nuw i8, ptr %i.m, i64 %index273
  %wide.load275 = load <4 x i8>, ptr %12, align 1, !tbaa !11
  store <4 x i8> %wide.load275, ptr %next.gep274, align 1, !tbaa !11
  %index.next276 = add nuw i64 %index273, 4       ; 2 uses
  %13 = icmp eq i64 %index.next276, %n.vec271
  br i1 %13, label %middle.block235, label %vec.epilog.vector.body272, !llvm.loop !29

middle.block235:                                  ; preds = %vec.epilog.vector.body272
  %cmp.n236 = icmp eq i64 %wide.trip.count162, %n.vec271
  br i1 %cmp.n236, label %.loopexit, label %.lr.ph120.preheader300

.lr.ph120.preheader300:                           ; preds = %.lr.ph120.preheader.a, %vec.epilog.iter.check267, %middle.block235
  %indvars.iv159.ph = phi i64 [ 0, %.lr.ph120.preheader.a ], [ %n.vec228, %vec.epilog.iter.check267 ], [ %n.vec271, %middle.block235 ] ; 4 uses
  %.6118.ph = phi ptr [ %.5.lcssa, %.lr.ph120.preheader.a ], [ %i.et, %vec.epilog.iter.check267 ], [ %11, %middle.block235 ] ; 2 uses
  %14 = sub i64 %i.s, %indvars.iv159.ph
  %xtraiter311 = and i64 %14, 7                   ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

end_hunk_15
begin_hunk_16_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next160.prol = add nuw nsw i64 %indvars.iv159.prol, 1 ; 2 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !30

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader300
  %.lcssa302.unr = phi ptr [ poison, %.lr.ph120.preheader300 ], [ %i.fa, %.lr.ph120.prol ]
end_hunk_16
begin_hunk_17_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !3
  %i.fg = sub nsw i32 0, %i.ff
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph116, label %.preheader97, !llvm.loop !31

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.7, %.lr.ph120 ], [ %indvars.iv159.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
end_hunk_17
begin_hunk_18_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.gl, ptr %i.gi, align 1, !tbaa !11
  %indvars.iv.next160.7 = add nuw nsw i64 %indvars.iv159, 8 ; 2 uses
  %exitcond163.not.7 = icmp eq i64 %indvars.iv.next160.7, %wide.trip.count162
  br i1 %exitcond163.not.7, label %.loopexit, label %.lr.ph120, !llvm.loop !32

bb.o:                                             ; preds = %bb.m
  %i.gn = icmp eq i32 %i.t, 1
  %i.go = call i32 @llvm.abs.i32(i32 %i.by, i1 true) ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.090, i64 2 ; 8 uses
  br i1 %i.gn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_18
begin_hunk_19_@_ZN6hermes14numberToStringEdPcm:bb.a

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ha = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.go) #8 ; 4 uses
  %i.hb = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.hb, ptr %.090, align 1, !tbaa !11
  store i8 46, ptr %i.gp, align 1, !tbaa !11
end_hunk_19
begin_hunk_20_@_ZN6hermes14numberToStringEdPcm:bb.a

.lr.ph.preheader.a:                               ; preds = %bb.q
  %wide.trip.count = and i64 %i.s, 2147483647     ; 3 uses
  %i.hd = add nsw i64 %wide.trip.count, -1        ; 7 uses
  %min.iters.check = icmp ult i64 %i.hd, 4
  br i1 %min.iters.check, label %.lr.ph.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.a
  %i.he = add i64 %.090200, 1
  %i.hf = sub i64 %i.he, %i.r
  %diff.check = icmp ult i64 %i.hf, 32
  br i1 %diff.check, label %.lr.ph.preheader306, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check201 = icmp ult i64 %i.hd, 32
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.hd, 28
  %n.vec = and i64 %i.hd, -32                     ; 5 uses
  %i.hg = or disjoint i64 %n.vec, 1
  %i.hh = getelementptr i8, ptr %i.gq, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_20
begin_hunk_21_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load201, ptr %i.hl, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader306, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %i.hd, -4                   ; 4 uses
  %15 = or disjoint i64 %n.vec205, 1
  %16 = getelementptr i8, ptr %i.gq, i64 %n.vec205 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next209, %vec.epilog.vector.body ] ; 3 uses
  %next.gep207 = getelementptr i8, ptr %i.gq, i64 %index206
  %17 = getelementptr inbounds nuw i8, ptr %i.m, i64 %index206
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 1
  %wide.load208 = load <4 x i8>, ptr %18, align 1, !tbaa !11
  store <4 x i8> %wide.load208, ptr %next.gep207, align 1, !tbaa !11
  %index.next209 = add nuw i64 %index206, 4       ; 2 uses
  %19 = icmp eq i64 %index.next209, %n.vec205
  br i1 %19, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !34

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.hd, %n.vec205
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader306

.lr.ph.preheader306:                              ; preds = %vector.memcheck, %.lr.ph.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader.a ], [ 1, %vector.memcheck ], [ %i.hg, %vec.epilog.iter.check ], [ %15, %middle.block.a ] ; 4 uses
  %.899.ph = phi ptr [ %i.gq, %.lr.ph.preheader.a ], [ %i.gq, %vector.memcheck ], [ %i.hh, %vec.epilog.iter.check ], [ %16, %middle.block.a ] ; 2 uses
  %i.hn = sub i64 %i.s, %indvars.iv.ph
  %xtraiter = and i64 %i.hn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_21
begin_hunk_22_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !35

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader306
  %.lcssa307.unr = phi ptr [ poison, %.lr.ph.preheader306 ], [ %i.hq, %.lr.ph.prol ]
end_hunk_22
begin_hunk_23_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.hs = icmp ugt i64 %i.hr, -8
  br i1 %i.hs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %middle.block.a, %bb.q
  %.8.lcssa = phi ptr [ %i.gq, %bb.q ], [ %16, %middle.block.a ], [ %i.hh, %middle.block ], [ %.lcssa307.unr, %.lr.ph.prol.loopexit ], [ %i.jp, %.lr.ph ] ; 4 uses
  %.8.lcssa204 = ptrtoaddr ptr %.8.lcssa to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 101, ptr %.8.lcssa, align 1, !tbaa !11
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !3
  %i.hv = icmp slt i32 %i.hu, 1
  %i.hw = select i1 %i.hv, i8 45, i8 43
  %i.hx = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2 ; 7 uses
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !11
  %i.hy = icmp sgt i32 %i.ha, 0
  br i1 %i.hy, label %.lr.ph104.preheader.a, label %._crit_edge105

.lr.ph104.preheader.a:                            ; preds = %._crit_edge
  %wide.trip.count154 = zext nneg i32 %i.ha to i64 ; 8 uses
  %min.iters.check207 = icmp ult i32 %i.ha, 4
  br i1 %min.iters.check207, label %.lr.ph104.preheader304, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph104.preheader.a
  %i.hz = add i64 %.8.lcssa204, 2
  %i.ia = sub i64 %i.hz, %i.f
  %diff.check205 = icmp ult i64 %i.ia, 32
  br i1 %diff.check205, label %.lr.ph104.preheader304, label %vector.main.loop.iter.check217

vector.main.loop.iter.check217:                   ; preds = %vector.memcheck203
  %min.iters.check218 = icmp ult i32 %i.ha, 32
  br i1 %min.iters.check218, label %vec.epilog.ph235, label %vector.ph208

vector.ph208:                                     ; preds = %vector.main.loop.iter.check217
  %n.mod.vf220 = and i64 %wide.trip.count154, 28
  %n.vec210 = and i64 %wide.trip.count154, 2147483616 ; 5 uses
  %i.ib = getelementptr i8, ptr %i.hx, i64 %n.vec210 ; 2 uses
  br label %vector.body211

end_hunk_23
begin_hunk_24_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load215, ptr %i.ie, align 1, !tbaa !11
  %index.next216 = add nuw i64 %index212, 32      ; 2 uses
  %i.if = icmp eq i64 %index.next216, %n.vec210
  br i1 %i.if, label %middle.block228, label %vector.body211, !llvm.loop !36

middle.block228:                                  ; preds = %vector.body211
  %cmp.n229 = icmp eq i64 %n.vec210, %wide.trip.count154
  br i1 %cmp.n229, label %._crit_edge105, label %vec.epilog.iter.check233

vec.epilog.iter.check233:                         ; preds = %middle.block228
  %min.epilog.iters.check234 = icmp eq i64 %n.mod.vf220, 0
  br i1 %min.epilog.iters.check234, label %.lr.ph104.preheader304, label %vec.epilog.ph235, !prof !18

vec.epilog.ph235:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check233
  %vec.epilog.resume.val230 = phi i64 [ %n.vec210, %vec.epilog.iter.check233 ], [ 0, %vector.main.loop.iter.check217 ]
  %n.vec237 = and i64 %wide.trip.count154, 2147483644 ; 4 uses
  %20 = getelementptr i8, ptr %i.hx, i64 %n.vec237 ; 2 uses
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph235
  %index239 = phi i64 [ %vec.epilog.resume.val230, %vec.epilog.ph235 ], [ %index.next242, %vec.epilog.vector.body238 ] ; 3 uses
  %next.gep240 = getelementptr i8, ptr %i.hx, i64 %index239
  %21 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index239
  %wide.load241 = load <4 x i8>, ptr %21, align 4, !tbaa !11
  store <4 x i8> %wide.load241, ptr %next.gep240, align 1, !tbaa !11
  %index.next242 = add nuw i64 %index239, 4       ; 2 uses
  %22 = icmp eq i64 %index.next242, %n.vec237
  br i1 %22, label %middle.block217, label %vec.epilog.vector.body238, !llvm.loop !37

middle.block217:                                  ; preds = %vec.epilog.vector.body238
  %cmp.n218 = icmp eq i64 %n.vec237, %wide.trip.count154
  br i1 %cmp.n218, label %._crit_edge105, label %.lr.ph104.preheader304

.lr.ph104.preheader304:                           ; preds = %vector.memcheck203, %.lr.ph104.preheader.a, %vec.epilog.iter.check233, %middle.block217
  %indvars.iv151.ph = phi i64 [ 0, %.lr.ph104.preheader.a ], [ 0, %vector.memcheck203 ], [ %n.vec210, %vec.epilog.iter.check233 ], [ %n.vec237, %middle.block217 ] ; 4 uses
  %.9101.ph = phi ptr [ %i.hx, %.lr.ph104.preheader.a ], [ %i.hx, %vector.memcheck203 ], [ %i.ib, %vec.epilog.iter.check233 ], [ %20, %middle.block217 ] ; 2 uses
  %23 = sub nsw i64 %wide.trip.count154, %indvars.iv151.ph
  %xtraiter308 = and i64 %23, 7                   ; 2 uses
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

end_hunk_24
begin_hunk_25_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next152.prol = add nuw nsw i64 %indvars.iv151.prol, 1 ; 2 uses
  %prol.iter310.next = add i64 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i64 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !38

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader304
  %.lcssa305.unr = phi ptr [ poison, %.lr.ph104.preheader304 ], [ %i.ii, %.lr.ph104.prol ]
end_hunk_25
begin_hunk_26_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge105:                                   ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block228, %middle.block217, %._crit_edge
  %.9.lcssa = phi ptr [ %i.hx, %._crit_edge ], [ %20, %middle.block217 ], [ %i.ib, %middle.block228 ], [ %.lcssa305.unr, %.lr.ph104.prol.loopexit ], [ %i.ku, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit

end_hunk_26
begin_hunk_27_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.kt, ptr %i.kq, align 1, !tbaa !11
  %indvars.iv.next152.7 = add nuw nsw i64 %indvars.iv151, 8 ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %indvars.iv.next152.7, %wide.trip.count154
  br i1 %exitcond155.not.7, label %._crit_edge105, label %.lr.ph104, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %.lr.ph131, %middle.block262, %middle.block235, %middle.block313, %middle.block271, %.lr.ph139.preheader, %.preheader97, %._crit_edge125, %.preheader, %._crit_edge111, %._crit_edge105
  %.10 = phi ptr [ %.9.lcssa, %._crit_edge105 ], [ %.4, %.lr.ph131 ], [ %scevgep178, %.lr.ph139.preheader ], [ %.7.lcssa, %._crit_edge111 ], [ %.1.lcssa, %.preheader ], [ %.4127, %._crit_edge125 ], [ %.5.lcssa, %.preheader97 ], [ %9, %middle.block271 ], [ %i.da, %middle.block313 ], [ %11, %middle.block235 ], [ %i.et, %middle.block262 ], [ %.lcssa302.unr, %.lr.ph120.prol.loopexit ], [ %i.gm, %.lr.ph120 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 0, ptr %.10, align 1, !tbaa !11
  %i.kw = load ptr, ptr %i.h, align 8, !tbaa !7
end_hunk_27
begin_hunk_28_@llvm.memset.p0.i64
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 4, i32 28}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !15, !16, !17}
!25 = distinct !{!25, !15, !16, !17}
!26 = distinct !{!26, !15, !16}
!27 = distinct !{!27, !15, !16}
!28 = distinct !{!28, !15, !16, !17}
!29 = distinct !{!29, !15, !16, !17}
!30 = distinct !{!30, !21}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15, !16}
!33 = distinct !{!33, !15, !16, !17}
!34 = distinct !{!34, !15, !16, !17}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !16, !17}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !15, !16}
!40 = distinct !{!40, !15, !16}
end_hunk_28
