inline.NumInlined: 28
inline.NumDeleted: 5
begin_hunk_0_@VP8RecordCoeffTokens:bb.a
TBufferNewPage.exit.i281:                         ; preds = %bb.ca
  store ptr null, ptr %i.ui, align 8, !tbaa !19
  %i.uk = load ptr, ptr %i.bc, align 8, !tbaa !15
  store ptr %i.ui, ptr %i.uk, align 8, !tbaa !32
  store ptr %i.ui, ptr %i.bc, align 8, !tbaa !15
  %i.ul = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 2 uses
  store ptr %i.um, ptr %i.bd, align 8, !tbaa !7
  br label %bb.cb

bb.cb:                                            ; preds = %TBufferNewPage.exit.i281, %._crit_edge.i282
  %i.un = phi ptr [ %i.um, %TBufferNewPage.exit.i281 ], [ %.pre.i284, %._crit_edge.i282 ]
  %i.uo = phi i32 [ %i.ul, %TBufferNewPage.exit.i281 ], [ %i.ub, %._crit_edge.i282 ]
  %i.up = add nsw i32 %i.uo, -1                   ; 2 uses
  store i32 %i.up, ptr %i.t, align 8, !tbaa !16
  %i.uq = select i1 %.not, i16 16384, i16 -16384
  %i.ur = or disjoint i16 %i.uq, %i.ua
  %i.us = sext i32 %i.up to i64
  %i.ut = getelementptr inbounds [2 x i8], ptr %i.un, i64 %i.us
  store i16 %i.ur, ptr %i.ut, align 2, !tbaa !33
  br label %AddConstantToken.exit285

AddConstantToken.exit285:                         ; preds = %TBufferNewPage.exit.thread.i280, %bb.cb
  %i.uu = lshr i32 %.1116304, 1                   ; 2 uses
  %.not137 = icmp eq i32 %i.uu, 0
  br i1 %.not137, label %AddConstantToken.exit, label %bb.by, !llvm.loop !37

AddConstantToken.exit:                            ; preds = %AddConstantToken.exit285, %AddToken.exit178, %AddToken.exit170, %TBufferNewPage.exit.thread.i196, %bb.ak, %TBufferNewPage.exit.thread.i209, %bb.ar, %AddToken.exit154
  %.sink367 = phi i32 [ 11, %AddToken.exit154 ], [ 22, %AddToken.exit178 ], [ 22, %bb.ar ], [ 22, %TBufferNewPage.exit.thread.i209 ], [ 22, %bb.ak ], [ 22, %TBufferNewPage.exit.thread.i196 ], [ 22, %AddToken.exit170 ], [ 22, %AddConstantToken.exit285 ]
  %.sink362 = phi i64 [ 44, %AddToken.exit154 ], [ 88, %AddToken.exit178 ], [ 88, %bb.ar ], [ 88, %TBufferNewPage.exit.thread.i209 ], [ 88, %bb.ak ], [ 88, %TBufferNewPage.exit.thread.i196 ], [ 88, %AddToken.exit170 ], [ 88, %AddConstantToken.exit285 ]
  %i.uv = getelementptr inbounds i8, ptr @VP8EncBands, i64 %indvars.iv.next
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !35  ; 2 uses
  %i.ux = zext i8 %i.uw to i32
  %i.uy = add nsw i32 %i.h, %i.ux
  %i.uz = mul i32 %i.uy, 33
  %i.va = add i32 %i.uz, %.sink367                ; 2 uses
  %i.vb = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.vc = zext i8 %i.uw to i64
  %i.vd = getelementptr inbounds nuw [132 x i8], ptr %i.vb, i64 %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.sink362 ; 3 uses
  %i.vf = load i32, ptr %i.t, align 8, !tbaa !16  ; 2 uses
  %i.vg = icmp sgt i32 %i.vf, 0
  br i1 %i.vg, label %._crit_edge.i289, label %bb.cc

._crit_edge.i289:                                 ; preds = %AddConstantToken.exit
  %.pre.i291 = load ptr, ptr %i.bd, align 8, !tbaa !7
  br label %bb.ce

bb.cc:                                            ; preds = %AddConstantToken.exit
  %i.vh = load i32, ptr %i.ba, align 8, !tbaa !18
  %.not.i.i286 = icmp eq i32 %i.vh, 0
  br i1 %.not.i.i286, label %bb.cd, label %TBufferNewPage.exit.thread.i287

bb.cd:                                            ; preds = %bb.cc
  %i.vi = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.vj = sext i32 %i.vi to i64
  %i.vk = shl nsw i64 %i.vj, 1
  %i.vl = add nsw i64 %i.vk, 8
  %i.vm = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.vl) #6 ; 5 uses
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %TBufferNewPage.exit.thread.i287, label %TBufferNewPage.exit.i288

TBufferNewPage.exit.thread.i287:                  ; preds = %bb.cd, %bb.cc
  store i32 1, ptr %i.ba, align 8, !tbaa !18
  br label %AddConstantToken.exit292

TBufferNewPage.exit.i288:                         ; preds = %bb.cd
  store ptr null, ptr %i.vm, align 8, !tbaa !19
  %i.vo = load ptr, ptr %i.bc, align 8, !tbaa !15
  store ptr %i.vm, ptr %i.vo, align 8, !tbaa !32
  store ptr %i.vm, ptr %i.bc, align 8, !tbaa !15
  %i.vp = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 2 uses
  store ptr %i.vq, ptr %i.bd, align 8, !tbaa !7
  br label %bb.ce

bb.ce:                                            ; preds = %TBufferNewPage.exit.i288, %._crit_edge.i289
  %i.vr = phi ptr [ %i.vq, %TBufferNewPage.exit.i288 ], [ %.pre.i291, %._crit_edge.i289 ]
  %i.vs = phi i32 [ %i.vp, %TBufferNewPage.exit.i288 ], [ %i.vf, %._crit_edge.i289 ]
  %i.vt = add nsw i32 %i.vs, -1                   ; 2 uses
  store i32 %i.vt, ptr %i.t, align 8, !tbaa !16
  %i.vu = or disjoint i16 %.lobit, 16512
  %i.vv = sext i32 %i.vt to i64
  %i.vw = getelementptr inbounds [2 x i8], ptr %i.vr, i64 %i.vv
  store i16 %i.vu, ptr %i.vw, align 2, !tbaa !33
  br label %AddConstantToken.exit292

AddConstantToken.exit292:                         ; preds = %TBufferNewPage.exit.thread.i287, %bb.ce
  %i.vx = icmp eq i64 %indvars.iv.next, 16
  br i1 %i.vx, label %.thread, label %bb.cf

bb.cf:                                            ; preds = %AddConstantToken.exit292
  %i.vy = icmp slt i64 %indvars.iv, %i.be         ; 3 uses
  %i.vz = load i32, ptr %i.t, align 8, !tbaa !16  ; 2 uses
  %i.wa = icmp sgt i32 %i.vz, 0
  br i1 %i.wa, label %._crit_edge.i297, label %bb.cg

._crit_edge.i297:                                 ; preds = %bb.cf
  %.pre.i299 = load ptr, ptr %i.bd, align 8, !tbaa !7
  br label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.wb = load i32, ptr %i.ba, align 8, !tbaa !18
  %.not.i.i293 = icmp eq i32 %i.wb, 0
  br i1 %.not.i.i293, label %bb.ch, label %TBufferNewPage.exit.thread.i294

bb.ch:                                            ; preds = %bb.cg
  %i.wc = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.wd = sext i32 %i.wc to i64
  %i.we = shl nsw i64 %i.wd, 1
  %i.wf = add nsw i64 %i.we, 8
  %i.wg = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.wf) #6 ; 5 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %TBufferNewPage.exit.thread.i294, label %TBufferNewPage.exit.i296

TBufferNewPage.exit.thread.i294:                  ; preds = %bb.ch, %bb.cg
  store i32 1, ptr %i.ba, align 8, !tbaa !18
  br label %AddToken.exit300

TBufferNewPage.exit.i296:                         ; preds = %bb.ch
  store ptr null, ptr %i.wg, align 8, !tbaa !19
  %i.wi = load ptr, ptr %i.bc, align 8, !tbaa !15
  store ptr %i.wg, ptr %i.wi, align 8, !tbaa !32
  store ptr %i.wg, ptr %i.bc, align 8, !tbaa !15
  %i.wj = load i32, ptr %i.bb, align 4, !tbaa !17
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 8 ; 2 uses
  store ptr %i.wk, ptr %i.bd, align 8, !tbaa !7
  br label %bb.ci

bb.ci:                                            ; preds = %TBufferNewPage.exit.i296, %._crit_edge.i297
  %i.wl = phi ptr [ %i.wk, %TBufferNewPage.exit.i296 ], [ %.pre.i299, %._crit_edge.i297 ]
  %i.wm = phi i32 [ %i.wj, %TBufferNewPage.exit.i296 ], [ %i.vz, %._crit_edge.i297 ]
  %i.wn = add nsw i32 %i.wm, -1                   ; 2 uses
  store i32 %i.wn, ptr %i.t, align 8, !tbaa !16
  %i.wo = select i1 %i.vy, i32 32768, i32 0
  %i.wp = or i32 %i.va, %i.wo
  %i.wq = trunc i32 %i.wp to i16
  %i.wr = sext i32 %i.wn to i64
  %i.ws = getelementptr inbounds [2 x i8], ptr %i.wl, i64 %i.wr
  store i16 %i.wq, ptr %i.ws, align 2, !tbaa !33
  br label %AddToken.exit300

AddToken.exit300:                                 ; preds = %TBufferNewPage.exit.thread.i294, %bb.ci
  %i.wt = load i32, ptr %i.ve, align 4, !tbaa !3  ; 3 uses
  %i.wu = icmp ugt i32 %i.wt, -131073
  %i.wv = add nsw i32 %i.wt, 1
  %i.ww = lshr i32 %i.wv, 1
  %i.wx = and i32 %i.ww, 2147450879
  %.0.i9.i295 = select i1 %i.wu, i32 %i.wx, i32 %i.wt
  %i.wy = select i1 %i.vy, i32 65537, i32 65536
  %i.wz = add nuw i32 %i.wy, %.0.i9.i295
  store i32 %i.wz, ptr %i.ve, align 4, !tbaa !3
  br i1 %i.vy, label %bb.cj, label %.thread

bb.cj:                                            ; preds = %AddToken.exit300, %bb.i
  %.2126 = phi ptr [ %i.ct, %bb.i ], [ %i.ve, %AddToken.exit300 ]
  %.2122 = phi i32 [ %i.cq, %bb.i ], [ %i.va, %AddToken.exit300 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.cj, %AddConstantToken.exit292, %AddToken.exit300, %.preheader, %AddToken.exit
  %.2 = phi i32 [ 0, %AddToken.exit ], [ 1, %.preheader ], [ 1, %AddToken.exit300 ], [ 1, %AddConstantToken.exit292 ], [ 1, %bb.cj ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @VP8EmitTokens(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not28 = icmp eq ptr %i.a, null
  br i1 %.not28, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.not26 = icmp eq i32 %3, 0
  br i1 %.not26, label %.lr.ph31.split.us, label %.lr.ph31.split

.lr.ph31.split.us:                                ; preds = %.lr.ph31, %._crit_edge.us
  %.029.us = phi ptr [ %i.d, %._crit_edge.us ], [ %i.a, %.lr.ph31 ] ; 2 uses
  %i.d = load ptr, ptr %.029.us, align 8, !tbaa !19 ; 2 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph31.split.us
  %i.f = load i32, ptr %i.b, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph31.split.us
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %.lr.ph31.split.us ] ; 2 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.029.us, i64 8
  %i.j = icmp sgt i32 %i.h, %i.g
  br i1 %i.j, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %bb.c
  %i.k = sext i32 %i.h to i64
  %i.l = sext i32 %i.g to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.f
  %indvars.iv36 = phi i64 [ %i.k, %.lr.ph.us.preheader ], [ %indvars.iv.next37, %bb.f ]
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1 ; 3 uses
  %i.m = getelementptr inbounds [2 x i8], ptr %i.i, i64 %indvars.iv.next37
  %i.n = load i16, ptr %i.m, align 2, !tbaa !33
  %i.o = zext i16 %i.n to i32                     ; 4 uses
  %i.p = lshr i32 %i.o, 15
  %i.q = and i32 %i.o, 16384
  %.not27.us = icmp eq i32 %i.q, 0
  br i1 %.not27.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us
  %i.r = and i32 %i.o, 255
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.us
  %i.s = and i32 %i.o, 16383
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ %i.w, %bb.e ], [ %i.r, %bb.d ]
  %i.x = tail call i32 @VP8PutBit(ptr noundef %1, i32 noundef %i.p, i32 noundef %.sink) #6 ; 0 uses
  %i.y = icmp sgt i64 %indvars.iv.next37, %i.l
  br i1 %i.y, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !38

._crit_edge.us:                                   ; preds = %bb.f, %bb.c
  br i1 %i.e, label %._crit_edge32, label %.lr.ph31.split.us, !llvm.loop !39

.lr.ph31.split:                                   ; preds = %.lr.ph31, %._crit_edge
  %.029 = phi ptr [ %i.z, %._crit_edge ], [ %i.a, %.lr.ph31 ] ; 3 uses
  %i.z = load ptr, ptr %.029, align 8, !tbaa !19  ; 2 uses
  %i.aa = icmp eq ptr %i.z, null                  ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph31.split
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph31.split, %bb.g
  %i.ac = phi i32 [ %i.ab, %bb.g ], [ 0, %.lr.ph31.split ] ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.af = icmp sgt i32 %i.ad, %i.ac
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ag = sext i32 %i.ad to i64
  %i.ah = sext i32 %i.ac to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !33
  %i.ak = zext i16 %i.aj to i32                   ; 4 uses
  %i.al = lshr i32 %i.ak, 15
  %i.am = and i32 %i.ak, 16384
  %.not27 = icmp eq i32 %i.am, 0
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.an = and i32 %i.ak, 255
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ao = and i32 %i.ak, 16383
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !35
  %i.as = zext i8 %i.ar to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink46 = phi i32 [ %i.as, %bb.j ], [ %i.an, %bb.i ]
  %i.at = tail call i32 @VP8PutBit(ptr noundef %1, i32 noundef %i.al, i32 noundef %.sink46) #6 ; 0 uses
  %i.au = icmp sgt i64 %indvars.iv.next, %i.ah
  br i1 %i.au, label %.lr.ph, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.k, %bb.h
  tail call void @WebPSafeFree(ptr noundef nonnull %.029) #6
  br i1 %i.aa, label %._crit_edge32, label %.lr.ph31.split, !llvm.loop !39

._crit_edge32:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  %.not25 = icmp eq i32 %3, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge32
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge32
  ret i32 1
}

declare i32 @VP8PutBit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @VP8EstimateTokenSize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not31 = icmp eq ptr %i.a, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = sext i32 %i.d to i64
  br label %bb.b

.loopexit:                                        ; preds = %bb.g, %bb.d
  %.1.lcssa = phi i64 [ %.033, %bb.d ], [ %.2, %bb.g ] ; 2 uses
  br i1 %i.g, label %._crit_edge, label %bb.b, !llvm.loop !40

bb.b:                                             ; preds = %.lr.ph34, %.loopexit
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %.02132 = phi ptr [ %i.a, %.lr.ph34 ], [ %i.f, %.loopexit ] ; 2 uses
  %i.f = load ptr, ptr %.02132, align 8, !tbaa !19 ; 2 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02132, i64 8
  %i.k = icmp sgt i32 %i.d, %i.i
  br i1 %i.k, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.l = sext i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ]
  %.130 = phi i64 [ %.033, %.lr.ph.preheader ], [ %.2, %bb.g ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.m = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.n = load i16, ptr %i.m, align 2, !tbaa !33   ; 2 uses
  %i.o = zext i16 %i.n to i32                     ; 4 uses
  %i.p = and i32 %i.o, 16384
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.q = shl nuw i32 %i.o, 16
  %sext = ashr i32 %i.q, 31
  %.pn.in.i29 = xor i32 %sext, %i.o
  %i.r = and i32 %.pn.in.i29, 255
  %.pn.i = zext nneg i32 %i.r to i64
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = and i32 %i.o, 16383
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %.lobit = ashr i16 %i.n, 15
  %i.w = trunc nsw i16 %.lobit to i8
  %.pn.in.i25 = xor i8 %i.v, %i.w
  %.pn.i26 = zext i8 %.pn.in.i25 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.pn = phi i64 [ %.pn.i, %bb.e ], [ %.pn.i26, %bb.f ]
  %.pn.in.in.in = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.pn
  %.pn.in.in = load i16, ptr %.pn.in.in.in, align 2, !tbaa !33
  %.pn = zext i16 %.pn.in.in to i64
  %.2 = add i64 %.130, %.pn                       ; 2 uses
  %i.x = icmp sgt i64 %indvars.iv.next, %i.l
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !41

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ]
  ret i64 %.0.lcssa
}

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !13, i64 16}
!8 = !{!"", !9, i64 0, !11, i64 8, !13, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!9 = !{!"p1 _ZTS9VP8Tokens", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p2 _ZTS9VP8Tokens", !12, i64 0}
!12 = !{!"any p2 pointer", !10, i64 0}
!13 = !{!"p1 short", !10, i64 0}
!14 = !{!8, !9, i64 0}
!15 = !{!8, !11, i64 8}
!16 = !{!8, !4, i64 24}
!17 = !{!8, !4, i64 28}
!18 = !{!8, !4, i64 32}
!19 = !{!20, !9, i64 0}
!20 = !{!"VP8Tokens", !9, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !13, i64 8}
!24 = !{!"VP8Residual", !4, i64 0, !4, i64 4, !13, i64 8, !4, i64 16, !25, i64 24, !26, i64 32, !27, i64 40}
!25 = !{!"p1 omnipotent char", !10, i64 0}
!26 = !{!"p1 int", !10, i64 0}
!27 = !{!"p2 short", !12, i64 0}
!28 = !{!24, !4, i64 16}
!29 = !{!24, !4, i64 4}
!30 = !{!24, !4, i64 0}
!31 = !{!24, !26, i64 32}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !5, i64 0}
!35 = !{!5, !5, i64 0}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
end_hunk_0
