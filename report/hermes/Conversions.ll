inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 14 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.g = call ptr @dtoa_alloc_init(ptr noundef nonnull align 8 dereferenceable(1208) %3, i32 noundef 1200) #8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes14numberToStringEdPcm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.m = call ptr @g_dtoa(ptr noundef %i.g, double noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8 ; 49 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.k, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN6hermes14numberToStringEdPcm:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.090 = phi ptr [ %i.o, %bb.j ], [ %1, %bb.i ]  ; 20 uses
  %.090200 = ptrtoaddr ptr %.090 to i64           ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.q = ptrtoint ptr %i.p to i64                 ; 3 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 8 uses
  %i.s = sub i64 %i.q, %i.r                       ; 9 uses
  %i.t = trunc i64 %i.s to i32                    ; 8 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !3    ; 12 uses
  %i.v = icmp sge i32 %i.u, %i.t
end_hunk_2
begin_hunk_3_@_ZN6hermes14numberToStringEdPcm:bb.a
  br i1 %i.x, label %.lr.ph135.preheader.a, label %.preheader

.lr.ph135.preheader.a:                            ; preds = %.preheader94
  %wide.trip.count176 = and i64 %i.s, 2147483647  ; 4 uses
  %min.iters.check278 = icmp samesign ult i64 %wide.trip.count176, 32
  %i.y = sub i64 %.090200, %i.r
  %diff.check276 = icmp ult i64 %i.y, 32
  %or.cond292 = select i1 %min.iters.check278, i1 true, i1 %diff.check276
  br i1 %or.cond292, label %.lr.ph135.preheader295, label %vector.ph279

vector.ph279:                                     ; preds = %.lr.ph135.preheader.a
  %n.vec281 = and i64 %i.s, 2147483616            ; 4 uses
  %i.z = getelementptr i8, ptr %.090, i64 %n.vec281 ; 2 uses
  br label %vector.body282

end_hunk_3
begin_hunk_4_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load286, ptr %i.ac, align 1, !tbaa !11
  %index.next287 = add nuw i64 %index283, 32      ; 2 uses
  %i.ad = icmp eq i64 %index.next287, %n.vec281
  br i1 %i.ad, label %middle.block288, label %vector.body282, !llvm.loop !14

middle.block288:                                  ; preds = %vector.body282
  %cmp.n289 = icmp eq i64 %wide.trip.count176, %n.vec281
  br i1 %cmp.n289, label %.preheader, label %.lr.ph135.preheader295

.lr.ph135.preheader295:                           ; preds = %.lr.ph135.preheader.a, %middle.block288
  %indvars.iv173.ph = phi i64 [ 0, %.lr.ph135.preheader.a ], [ %n.vec281, %middle.block288 ] ; 3 uses
  %.1133.ph = phi ptr [ %.090, %.lr.ph135.preheader.a ], [ %i.z, %middle.block288 ] ; 2 uses
  %xtraiter317 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

end_hunk_4
begin_hunk_5_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter319.next = add i64 %prol.iter319, 1   ; 2 uses
  %prol.iter319.cmp.not = icmp eq i64 %prol.iter319.next, %xtraiter317
  br i1 %prol.iter319.cmp.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol, !llvm.loop !18

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader295
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader295 ], [ %i.ag, %.lr.ph135.prol ]
end_hunk_5
begin_hunk_6_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.ai = icmp ugt i64 %i.ah, -8
  br i1 %i.ai, label %.preheader, label %.lr.ph135

.preheader:                                       ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %middle.block288, %.preheader94
  %.1.lcssa = phi ptr [ %.090, %.preheader94 ], [ %i.z, %middle.block288 ], [ %.lcssa.unr, %.lr.ph135.prol.loopexit ], [ %i.bx, %.lr.ph135 ] ; 3 uses
  %i.aj = sub nsw i32 %i.u, %i.t                  ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph139.preheader, label %.loopexit
end_hunk_6
begin_hunk_7_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !11
  %indvars.iv.next174.7 = add nuw nsw i64 %indvars.iv173, 8 ; 2 uses
  %exitcond177.not.7 = icmp eq i64 %indvars.iv.next174.7, %wide.trip.count176
  br i1 %exitcond177.not.7, label %.preheader, label %.lr.ph135, !llvm.loop !20

bb.l:                                             ; preds = %bb.k
  %i.by = add i32 %i.u, -1                        ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next165.prol = add nuw nsw i64 %indvars.iv164.prol, 1 ; 2 uses
  %prol.iter316.next = add i64 %prol.iter316, 1   ; 2 uses
  %prol.iter316.cmp.not = icmp eq i64 %prol.iter316.next, %xtraiter314
  br i1 %prol.iter316.cmp.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol, !llvm.loop !21

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader297
  %.3122.lcssa299.unr = phi ptr [ poison, %.lr.ph124.preheader297 ], [ %.3122.prol, %.lr.ph124.prol ]
end_hunk_8
begin_hunk_9_@_ZN6hermes14numberToStringEdPcm:bb.a
  %.lcssa195 = phi ptr [ %i.ca, %middle.block252 ], [ %.lcssa298.unr, %.lr.ph124.prol.loopexit ], [ %i.ei, %._crit_edge125.loopexit.unr-lcssa ]
  %.3122.lcssa257 = ptrtoaddr ptr %.3122.lcssa to i64
  store i8 46, ptr %.lcssa195, align 1, !tbaa !11
  %.4127 = getelementptr inbounds nuw i8, ptr %.3122.lcssa, i64 2 ; 5 uses
  %i.cn = icmp slt i32 %i.u, %i.t
  br i1 %i.cn, label %.lr.ph131.preheader.a, label %.loopexit

.lr.ph131.preheader.a:                            ; preds = %._crit_edge125
  %i.co = zext nneg i32 %i.u to i64               ; 4 uses
  %i.cp = trunc i64 %i.q to i32
  %i.cq = xor i32 %i.u, -1
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = trunc i64 %i.r to i32
  %i.ct = sub i32 %i.cr, %i.cs                    ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %min.iters.check260 = icmp ult i32 %i.ct, 31
  br i1 %min.iters.check260, label %.lr.ph131.preheader296, label %vector.memcheck256

vector.memcheck256:                               ; preds = %.lr.ph131.preheader.a
end_hunk_9
begin_hunk_10_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.cx = add i64 %i.r, %wide.trip.count167
  %i.cy = sub i64 %i.cw, %i.cx
  %diff.check258 = icmp ult i64 %i.cy, 32
  br i1 %diff.check258, label %.lr.ph131.preheader296, label %vector.ph261

vector.ph261:                                     ; preds = %vector.memcheck256
  %n.vec263 = and i64 %i.cv, 8589934560           ; 4 uses
  %i.cz = or disjoint i64 %n.vec263, %i.co
  %i.da = getelementptr i8, ptr %.4127, i64 %n.vec263 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.co
end_hunk_10
begin_hunk_11_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load269, ptr %i.dc, align 1, !tbaa !11
  %index.next270 = add nuw i64 %index265, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.dd, label %middle.block271, label %vector.body264, !llvm.loop !22

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.cv, %n.vec263
  br i1 %cmp.n272, label %.loopexit, label %.lr.ph131.preheader296

.lr.ph131.preheader296:                           ; preds = %vector.memcheck256, %.lr.ph131.preheader.a, %middle.block271
  %indvars.iv170.ph = phi i64 [ %i.co, %vector.memcheck256 ], [ %i.co, %.lr.ph131.preheader.a ], [ %i.cz, %middle.block271 ]
  %.4129.ph = phi ptr [ %.4127, %vector.memcheck256 ], [ %.4127, %.lr.ph131.preheader.a ], [ %i.da, %middle.block271 ]
  br label %.lr.ph131

.lr.ph124:                                        ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124
end_hunk_11
begin_hunk_12_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.eh, ptr %i.ee, align 1, !tbaa !11
  %indvars.iv.next165.7 = add nuw nsw i64 %indvars.iv164, 8 ; 2 uses
  %exitcond168.not.7 = icmp eq i64 %indvars.iv.next165.7, %wide.trip.count167
  br i1 %exitcond168.not.7, label %._crit_edge125.loopexit.unr-lcssa, label %.lr.ph124, !llvm.loop !23

.lr.ph131:                                        ; preds = %.lr.ph131.preheader296, %.lr.ph131
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph131 ], [ %indvars.iv170.ph, %.lr.ph131.preheader296 ] ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6hermes14numberToStringEdPcm:bb.a
  %.4 = getelementptr inbounds nuw i8, ptr %.4129, i64 1 ; 2 uses
  %i.el = trunc nuw i64 %indvars.iv.next171 to i32
  %i.em = icmp slt i32 %i.el, %i.t
  br i1 %i.em, label %.lr.ph131, label %.loopexit, !llvm.loop !24

bb.m:                                             ; preds = %bb.l
  %i.en = add i32 %i.u, 5
end_hunk_13
begin_hunk_14_@_ZN6hermes14numberToStringEdPcm:bb.a
  br i1 %i.eq, label %.lr.ph116, label %.preheader97

.preheader97:                                     ; preds = %.lr.ph116, %bb.n
  %.5.lcssa = phi ptr [ %i.ep, %bb.n ], [ %i.fd, %.lr.ph116 ] ; 5 uses
  %i.er = icmp sgt i32 %i.t, 0
  br i1 %i.er, label %.lr.ph120.preheader.a, label %.loopexit

.lr.ph120.preheader.a:                            ; preds = %.preheader97
  %.5.lcssa222 = ptrtoaddr ptr %.5.lcssa to i64
  %wide.trip.count162 = and i64 %i.s, 2147483647  ; 4 uses
  %min.iters.check225 = icmp samesign ult i64 %wide.trip.count162, 32
  %i.es = sub i64 %.5.lcssa222, %i.r
  %diff.check223 = icmp ult i64 %i.es, 32
  %or.cond294 = select i1 %min.iters.check225, i1 true, i1 %diff.check223
  br i1 %or.cond294, label %.lr.ph120.preheader300, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph120.preheader.a
  %n.vec228 = and i64 %i.s, 2147483616            ; 4 uses
  %i.et = getelementptr i8, ptr %.5.lcssa, i64 %n.vec228 ; 2 uses
  br label %vector.body229

end_hunk_14
begin_hunk_15_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load233, ptr %i.ew, align 1, !tbaa !11
  %index.next234 = add nuw i64 %index230, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next234, %n.vec228
  br i1 %i.ex, label %middle.block235, label %vector.body229, !llvm.loop !25

middle.block235:                                  ; preds = %vector.body229
  %cmp.n236 = icmp eq i64 %wide.trip.count162, %n.vec228
  br i1 %cmp.n236, label %.loopexit, label %.lr.ph120.preheader300

.lr.ph120.preheader300:                           ; preds = %.lr.ph120.preheader.a, %middle.block235
  %indvars.iv159.ph = phi i64 [ 0, %.lr.ph120.preheader.a ], [ %n.vec228, %middle.block235 ] ; 3 uses
  %.6118.ph = phi ptr [ %.5.lcssa, %.lr.ph120.preheader.a ], [ %i.et, %middle.block235 ] ; 2 uses
  %xtraiter311 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

end_hunk_15
begin_hunk_16_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next160.prol = add nuw nsw i64 %indvars.iv159.prol, 1 ; 2 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !26

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader300
  %.lcssa302.unr = phi ptr [ poison, %.lr.ph120.preheader300 ], [ %i.fa, %.lr.ph120.prol ]
end_hunk_16
begin_hunk_17_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.ff = load i32, ptr %i.a, align 4, !tbaa !3
  %i.fg = sub nsw i32 0, %i.ff
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph116, label %.preheader97, !llvm.loop !27

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv159 = phi i64 [ %indvars.iv.next160.7, %.lr.ph120 ], [ %indvars.iv159.unr, %.lr.ph120.prol.loopexit ] ; 9 uses
end_hunk_17
begin_hunk_18_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.gl, ptr %i.gi, align 1, !tbaa !11
  %indvars.iv.next160.7 = add nuw nsw i64 %indvars.iv159, 8 ; 2 uses
  %exitcond163.not.7 = icmp eq i64 %indvars.iv.next160.7, %wide.trip.count162
  br i1 %exitcond163.not.7, label %.loopexit, label %.lr.ph120, !llvm.loop !28

bb.o:                                             ; preds = %bb.m
  %i.gn = icmp eq i32 %i.t, 1
  %i.go = call i32 @llvm.abs.i32(i32 %i.by, i1 true) ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.090, i64 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.090, i64 2 ; 6 uses
  br i1 %i.gn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_18
begin_hunk_19_@_ZN6hermes14numberToStringEdPcm:bb.a

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ha = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %i.go) #8 ; 3 uses
  %i.hb = load i8, ptr %i.m, align 1, !tbaa !11
  store i8 %i.hb, ptr %.090, align 1, !tbaa !11
  store i8 46, ptr %i.gp, align 1, !tbaa !11
end_hunk_19
begin_hunk_20_@_ZN6hermes14numberToStringEdPcm:bb.a

.lr.ph.preheader.a:                               ; preds = %bb.q
  %wide.trip.count = and i64 %i.s, 2147483647     ; 3 uses
  %i.hd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.hd, 32
  br i1 %min.iters.check, label %.lr.ph.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.a
  %i.he = add i64 %.090200, 1
  %i.hf = sub i64 %i.he, %i.r
  %diff.check = icmp ult i64 %i.hf, 32
  br i1 %diff.check, label %.lr.ph.preheader306, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hd, -32                     ; 4 uses
  %i.hg = or disjoint i64 %n.vec, 1
  %i.hh = getelementptr i8, ptr %i.gq, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_20
begin_hunk_21_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load201, ptr %i.hl, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block.a, label %vector.body, !llvm.loop !29

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader306

.lr.ph.preheader306:                              ; preds = %vector.memcheck, %.lr.ph.preheader.a, %middle.block.a
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.a ], [ %i.hg, %middle.block.a ] ; 4 uses
  %.899.ph = phi ptr [ %i.gq, %vector.memcheck ], [ %i.gq, %.lr.ph.preheader.a ], [ %i.hh, %middle.block.a ] ; 2 uses
  %i.hn = sub i64 %i.s, %indvars.iv.ph
  %xtraiter = and i64 %i.hn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_21
begin_hunk_22_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !30

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader306
  %.lcssa307.unr = phi ptr [ poison, %.lr.ph.preheader306 ], [ %i.hq, %.lr.ph.prol ]
end_hunk_22
begin_hunk_23_@_ZN6hermes14numberToStringEdPcm:bb.a
  %i.hs = icmp ugt i64 %i.hr, -8
  br i1 %i.hs, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block.a, %bb.q
  %.8.lcssa = phi ptr [ %i.gq, %bb.q ], [ %i.hh, %middle.block.a ], [ %.lcssa307.unr, %.lr.ph.prol.loopexit ], [ %i.jp, %.lr.ph ] ; 4 uses
  %.8.lcssa204 = ptrtoaddr ptr %.8.lcssa to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 1
  store i8 101, ptr %.8.lcssa, align 1, !tbaa !11
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !3
  %i.hv = icmp slt i32 %i.hu, 1
  %i.hw = select i1 %i.hv, i8 45, i8 43
  %i.hx = getelementptr inbounds nuw i8, ptr %.8.lcssa, i64 2 ; 5 uses
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !11
  %i.hy = icmp sgt i32 %i.ha, 0
  br i1 %i.hy, label %.lr.ph104.preheader.a, label %._crit_edge105

.lr.ph104.preheader.a:                            ; preds = %._crit_edge
  %wide.trip.count154 = zext nneg i32 %i.ha to i64 ; 5 uses
  %min.iters.check207 = icmp ult i32 %i.ha, 32
  br i1 %min.iters.check207, label %.lr.ph104.preheader304, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph104.preheader.a
  %i.hz = add i64 %.8.lcssa204, 2
  %i.ia = sub i64 %i.hz, %i.f
  %diff.check205 = icmp ult i64 %i.ia, 32
  br i1 %diff.check205, label %.lr.ph104.preheader304, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck203
  %n.vec210 = and i64 %wide.trip.count154, 2147483616 ; 4 uses
  %i.ib = getelementptr i8, ptr %i.hx, i64 %n.vec210 ; 2 uses
  br label %vector.body211

end_hunk_23
begin_hunk_24_@_ZN6hermes14numberToStringEdPcm:bb.a
  store <16 x i8> %wide.load215, ptr %i.ie, align 1, !tbaa !11
  %index.next216 = add nuw i64 %index212, 32      ; 2 uses
  %i.if = icmp eq i64 %index.next216, %n.vec210
  br i1 %i.if, label %middle.block217, label %vector.body211, !llvm.loop !31

middle.block217:                                  ; preds = %vector.body211
  %cmp.n218 = icmp eq i64 %n.vec210, %wide.trip.count154
  br i1 %cmp.n218, label %._crit_edge105, label %.lr.ph104.preheader304

.lr.ph104.preheader304:                           ; preds = %vector.memcheck203, %.lr.ph104.preheader.a, %middle.block217
  %indvars.iv151.ph = phi i64 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph104.preheader.a ], [ %n.vec210, %middle.block217 ] ; 3 uses
  %.9101.ph = phi ptr [ %i.hx, %vector.memcheck203 ], [ %i.hx, %.lr.ph104.preheader.a ], [ %i.ib, %middle.block217 ] ; 2 uses
  %xtraiter308 = and i64 %wide.trip.count154, 7   ; 2 uses
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol

end_hunk_24
begin_hunk_25_@_ZN6hermes14numberToStringEdPcm:bb.a
  %indvars.iv.next152.prol = add nuw nsw i64 %indvars.iv151.prol, 1 ; 2 uses
  %prol.iter310.next = add i64 %prol.iter310, 1   ; 2 uses
  %prol.iter310.cmp.not = icmp eq i64 %prol.iter310.next, %xtraiter308
  br i1 %prol.iter310.cmp.not, label %.lr.ph104.prol.loopexit, label %.lr.ph104.prol, !llvm.loop !32

.lr.ph104.prol.loopexit:                          ; preds = %.lr.ph104.prol, %.lr.ph104.preheader304
  %.lcssa305.unr = phi ptr [ poison, %.lr.ph104.preheader304 ], [ %i.ii, %.lr.ph104.prol ]
end_hunk_25
begin_hunk_26_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge105:                                   ; preds = %.lr.ph104.prol.loopexit, %.lr.ph104, %middle.block217, %._crit_edge
  %.9.lcssa = phi ptr [ %i.hx, %._crit_edge ], [ %i.ib, %middle.block217 ], [ %.lcssa305.unr, %.lr.ph104.prol.loopexit ], [ %i.ku, %.lr.ph104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit

end_hunk_26
begin_hunk_27_@_ZN6hermes14numberToStringEdPcm:bb.a
  store i8 %i.kt, ptr %i.kq, align 1, !tbaa !11
  %indvars.iv.next152.7 = add nuw nsw i64 %indvars.iv151, 8 ; 2 uses
  %exitcond155.not.7 = icmp eq i64 %indvars.iv.next152.7, %wide.trip.count154
  br i1 %exitcond155.not.7, label %._crit_edge105, label %.lr.ph104, !llvm.loop !34

.loopexit:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %.lr.ph131, %middle.block235, %middle.block271, %.lr.ph139.preheader, %.preheader97, %._crit_edge125, %.preheader, %._crit_edge111, %._crit_edge105
  %.10 = phi ptr [ %.9.lcssa, %._crit_edge105 ], [ %.4, %.lr.ph131 ], [ %scevgep178, %.lr.ph139.preheader ], [ %.7.lcssa, %._crit_edge111 ], [ %.1.lcssa, %.preheader ], [ %.4127, %._crit_edge125 ], [ %.5.lcssa, %.preheader97 ], [ %i.da, %middle.block271 ], [ %i.et, %middle.block235 ], [ %.lcssa302.unr, %.lr.ph120.prol.loopexit ], [ %i.gm, %.lr.ph120 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.10, i64 1
  store i8 0, ptr %.10, align 1, !tbaa !11
  %i.kw = load ptr, ptr %i.h, align 8, !tbaa !7
end_hunk_27
begin_hunk_28_@llvm.memset.p0.i64
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !15, !16}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !15, !16, !17}
!23 = distinct !{!23, !15, !16}
!24 = distinct !{!24, !15, !16}
!25 = distinct !{!25, !15, !16, !17}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15, !16}
!29 = distinct !{!29, !15, !16, !17}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !15, !16, !17}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !15, !16}
!34 = distinct !{!34, !15, !16}
end_hunk_28
