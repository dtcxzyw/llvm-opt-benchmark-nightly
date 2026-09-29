Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdlossls-8?download=true
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@start_pass_lossless:bb.a
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store ptr @jpeg_undifference_first_row, ptr %i.am, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !57

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !45
  %.not30 = icmp eq i32 %i.ao, 0
  %spec.select = select i1 %.not30, ptr @noscale, ptr @simple_upscale
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %spec.select, ptr %i.ap, align 8, !tbaa !59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jpeg_undifference_first_row(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 7 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !45
  %i.h = xor i32 %i.g, -1
  %i.i = add i32 %i.e, %i.h
  %i.j = shl nuw i32 1, %i.i
  %i.k = add nsw i32 %i.j, %i.c
  %i.l = and i32 %i.k, 65535                      ; 3 uses
  store i32 %i.l, ptr %4, align 4, !tbaa !50
  %i.m = add i32 %5, -1                           ; 4 uses
  %.not41 = icmp eq i32 %i.m, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = add i32 %5, -2
  %xtraiter = and i32 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.o = phi i32 [ %i.s, %.lr.ph.prol ], [ %i.m, %.lr.ph.preheader ]
  %.044.prol = phi i32 [ %i.r, %.lr.ph.prol ], [ %i.l, %.lr.ph.preheader ]
  %.pn4043.prol = phi ptr [ %.037.prol, %.lr.ph.prol ], [ %4, %.lr.ph.preheader ]
  %.pn42.prol = phi ptr [ %.038.prol, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.037.prol = getelementptr inbounds nuw i8, ptr %.pn4043.prol, i64 4 ; 3 uses
  %.038.prol = getelementptr inbounds nuw i8, ptr %.pn42.prol, i64 4 ; 3 uses
  %i.p = load i32, ptr %.038.prol, align 4, !tbaa !50
  %i.q = add nsw i32 %i.p, %.044.prol
  %i.r = and i32 %i.q, 65535                      ; 3 uses
  store i32 %i.r, ptr %.037.prol, align 4, !tbaa !50
  %i.s = add i32 %i.o, -1                         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !60

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %i.m, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.044.unr = phi i32 [ %i.l, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.pn4043.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %.037.prol, %.lr.ph.prol ]
  %.pn42.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %.038.prol, %.lr.ph.prol ]
  %i.t = icmp ult i32 %i.n, 3
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.u = phi i32 [ %i.ah, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.044 = phi i32 [ %i.ag, %.lr.ph ], [ %.044.unr, %.lr.ph.prol.loopexit ]
  %.pn4043 = phi ptr [ %.037.3, %.lr.ph ], [ %.pn4043.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn42 = phi ptr [ %.038.3, %.lr.ph ], [ %.pn42.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.037 = getelementptr inbounds nuw i8, ptr %.pn4043, i64 4
  %.038 = getelementptr inbounds nuw i8, ptr %.pn42, i64 4
  %i.v = load i32, ptr %.038, align 4, !tbaa !50
  %i.w = add nsw i32 %i.v, %.044                  ; 2 uses
  %i.x = and i32 %i.w, 65535
  store i32 %i.x, ptr %.037, align 4, !tbaa !50
  %.037.1 = getelementptr inbounds nuw i8, ptr %.pn4043, i64 8
  %.038.1 = getelementptr inbounds nuw i8, ptr %.pn42, i64 8
  %i.y = load i32, ptr %.038.1, align 4, !tbaa !50
  %i.z = add i32 %i.y, %i.w                       ; 2 uses
  %i.aa = and i32 %i.z, 65535
  store i32 %i.aa, ptr %.037.1, align 4, !tbaa !50
  %.037.2 = getelementptr inbounds nuw i8, ptr %.pn4043, i64 12
  %.038.2 = getelementptr inbounds nuw i8, ptr %.pn42, i64 12
  %i.ab = load i32, ptr %.038.2, align 4, !tbaa !50
  %i.ac = add i32 %i.ab, %i.z                     ; 2 uses
  %i.ad = and i32 %i.ac, 65535
  store i32 %i.ad, ptr %.037.2, align 4, !tbaa !50
  %.037.3 = getelementptr inbounds nuw i8, ptr %.pn4043, i64 16 ; 2 uses
  %.038.3 = getelementptr inbounds nuw i8, ptr %.pn42, i64 16 ; 2 uses
  %i.ae = load i32, ptr %.038.3, align 4, !tbaa !50
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = and i32 %i.af, 65535                    ; 2 uses
  store i32 %i.ag, ptr %.037.3, align 4, !tbaa !50
  %i.ah = add i32 %i.u, -4                        ; 2 uses
  %.not.3 = icmp eq i32 %i.ah, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42 ; 2 uses
  switch i32 %i.aj, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.al = sext i32 %1 to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  store ptr @jpeg_undifference1, ptr %i.am, align 8, !tbaa !46
  br label %bb.j

bb.c:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ao = sext i32 %1 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  store ptr @jpeg_undifference2, ptr %i.ap, align 8, !tbaa !46
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ar = sext i32 %1 to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  store ptr @jpeg_undifference3, ptr %i.as, align 8, !tbaa !46
  br label %bb.j

bb.e:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.au = sext i32 %1 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  store ptr @jpeg_undifference4, ptr %i.av, align 8, !tbaa !46
  br label %bb.j

bb.f:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ax = sext i32 %1 to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store ptr @jpeg_undifference5, ptr %i.ay, align 8, !tbaa !46
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.ba = sext i32 %1 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr @jpeg_undifference6, ptr %i.bb, align 8, !tbaa !46
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bd = sext i32 %1 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store ptr @jpeg_undifference7, ptr %i.be, align 8, !tbaa !46
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i32 16, ptr %i.bg, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  store i32 %i.aj, ptr %i.bh, align 4, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !43
  %i.bk = load ptr, ptr %0, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !44
  %i.bo = load ptr, ptr %0, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !37
  %i.bq = load i32, ptr %i.f, align 8, !tbaa !45
  %i.br = load ptr, ptr %0, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !37
  %i.bt = load ptr, ptr %0, align 8, !tbaa !33
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
  tail call void %i.bu(ptr noundef nonnull %0) #2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @simple_upscale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 7 uses
  %i.b = add i32 %3, -1                           ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 1                  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 19
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %2, i64 %i.d   ; 2 uses
  %i.e = shl nuw nsw i64 %i.c, 2
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %scevgep5 = getelementptr i8, ptr %i.f, i64 4
  %scevgep6 = getelementptr i8, ptr %0, i64 540
  %bound0 = icmp ult ptr %2, %scevgep5
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound07 = icmp ult ptr %2, %scevgep6
  %bound18 = icmp ult ptr %i.a, %scevgep
  %found.conflict9 = and i1 %bound07, %bound18
  %conflict.rdx = or i1 %found.conflict, %found.conflict9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.d, 8589934584               ; 5 uses
  %i.g = shl nuw nsw i64 %n.vec, 2
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %2, i64 %n.vec
  %i.j = trunc i64 %n.vec to i32
  %i.k = sub i32 %3, %i.j
  %i.l = load i32, ptr %i.a, align 8, !tbaa !45, !alias.scope !69
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %next.gep10 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !50, !alias.scope !70
  %wide.load11 = load <4 x i32>, ptr %i.n, align 4, !tbaa !50, !alias.scope !70
  %i.o = shl <4 x i32> %wide.load, %broadcast.splat
  %i.p = shl <4 x i32> %wide.load11, %broadcast.splat
  %i.q = trunc <4 x i32> %i.o to <4 x i8>
  %i.r = trunc <4 x i32> %i.p to <4 x i8>
  %i.s = getelementptr i8, ptr %next.gep10, i64 4
  store <4 x i8> %i.q, ptr %next.gep10, align 1, !tbaa !37, !alias.scope !71, !noalias !72
  store <4 x i8> %i.r, ptr %i.s, align 1, !tbaa !37, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.04.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.03.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %i.i, %middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %i.k, %middle.block ] ; 4 uses
  %i.u = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.04.prol = phi ptr [ %i.v, %scalar.ph.prol ], [ %.04.ph, %scalar.ph.preheader ] ; 2 uses
  %.03.prol = phi ptr [ %i.aa, %scalar.ph.prol ], [ %.03.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.ab, %scalar.ph.prol ], [ %.0.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.04.prol, i64 4 ; 2 uses
  %i.w = load i32, ptr %.04.prol, align 4, !tbaa !50
  %i.x = load i32, ptr %i.a, align 8, !tbaa !45
  %i.y = shl i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.03.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %.03.prol, align 1, !tbaa !37
  %i.ab = add i32 %.0.prol, -1                    ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !67

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.04.unr = phi ptr [ %.04.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.03.unr = phi ptr [ %.03.ph, %scalar.ph.preheader ], [ %i.aa, %scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = icmp ult i32 %i.u, 3
  br i1 %i.ac, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04 = phi ptr [ %i.av, %scalar.ph ], [ %.04.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.03 = phi ptr [ %i.ba, %scalar.ph ], [ %.03.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.0 = phi i32 [ %i.bb, %scalar.ph ], [ %.0.unr, %scalar.ph.prol.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.04, i64 4
  %i.ae = load i32, ptr %.04, align 4, !tbaa !50
  %i.af = load i32, ptr %i.a, align 8, !tbaa !45
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.03, i64 1
  store i8 %i.ah, ptr %.03, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %.04, i64 8
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.al = load i32, ptr %i.a, align 8, !tbaa !45
  %i.am = shl i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.03, i64 2
  store i8 %i.an, ptr %i.ai, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %.04, i64 12
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !50
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !45
  %i.as = shl i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.03, i64 3
  store i8 %i.at, ptr %i.ao, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.04, i64 16
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !50
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !45
  %i.ay = shl i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.03, i64 4
  store i8 %i.az, ptr %i.au, align 1, !tbaa !37
  %i.bb = add i32 %.0, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.bb, 0
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !68

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @noscale(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = add i32 %3, -1                           ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 19
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %2, i64 %i.c
  %i.d = shl nuw nsw i64 %i.b, 2
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %scevgep4 = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %2, %scevgep4
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.c, 8589934584               ; 5 uses
  %i.f = shl nuw nsw i64 %n.vec, 2
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %2, i64 %n.vec
  %i.i = trunc i64 %n.vec to i32
  %i.j = sub i32 %3, %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.k  ; 2 uses
  %next.gep5 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !50, !alias.scope !79
  %wide.load6 = load <4 x i32>, ptr %i.l, align 4, !tbaa !50, !alias.scope !79
  %i.m = trunc <4 x i32> %wide.load to <4 x i8>
  %i.n = trunc <4 x i32> %wide.load6 to <4 x i8>
  %i.o = getelementptr i8, ptr %next.gep5, i64 4
  store <4 x i8> %i.m, ptr %next.gep5, align 1, !tbaa !37, !alias.scope !80, !noalias !79
  store <4 x i8> %i.n, ptr %i.o, align 1, !tbaa !37, !alias.scope !80, !noalias !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.03.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %bb.a ], [ %i.g, %middle.block ] ; 2 uses
  %.02.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.a ], [ %i.h, %middle.block ] ; 2 uses
  %.0.ph = phi i32 [ %3, %vector.memcheck ], [ %3, %bb.a ], [ %i.j, %middle.block ] ; 4 uses
  %i.q = add i32 %.0.ph, -1
  %xtraiter = and i32 %.0.ph, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.03.prol = phi ptr [ %i.r, %scalar.ph.prol ], [ %.03.ph, %scalar.ph.preheader ] ; 2 uses
  %.02.prol = phi ptr [ %i.u, %scalar.ph.prol ], [ %.02.ph, %scalar.ph.preheader ] ; 2 uses
  %.0.prol = phi i32 [ %i.v, %scalar.ph.prol ], [ %.0.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.03.prol, i64 4 ; 2 uses
  %i.s = load i32, ptr %.03.prol, align 4, !tbaa !50
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.02.prol, i64 1 ; 2 uses
  store i8 %i.t, ptr %.02.prol, align 1, !tbaa !37
  %i.v = add i32 %.0.prol, -1                     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !77

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03.unr = phi ptr [ %.03.ph, %scalar.ph.preheader ], [ %i.r, %scalar.ph.prol ]
  %.02.unr = phi ptr [ %.02.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %.0.unr = phi i32 [ %.0.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %i.w = icmp ult i32 %i.q, 7
  br i1 %i.w, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.03 = phi ptr [ %i.az, %scalar.ph ], [ %.03.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.02 = phi ptr [ %i.bc, %scalar.ph ], [ %.02.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.0 = phi i32 [ %i.bd, %scalar.ph ], [ %.0.unr, %scalar.ph.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.03, i64 4
  %i.y = load i32, ptr %.03, align 4, !tbaa !50
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %.02, i64 1
  store i8 %i.z, ptr %.02, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %.03, i64 8
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !50
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.02, i64 2
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %.03, i64 12
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !50
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.02, i64 3
  store i8 %i.ah, ptr %i.ae, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %.03, i64 16
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !50
  %i.al = trunc i32 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.02, i64 4
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.03, i64 20
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !50
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.02, i64 5
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.03, i64 24
  %i.as = load i32, ptr %i.an, align 4, !tbaa !50
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.02, i64 6
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %.03, i64 28
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !50
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.02, i64 7
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %.03, i64 32
  %i.ba = load i32, ptr %i.av, align 4, !tbaa !50
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.02, i64 8
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !37
  %i.bd = add i32 %.0, -8                         ; 2 uses
  %.not.7 = icmp eq i32 %i.bd, 0
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !78

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @jpeg_undifference1(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, i32 noundef %5) #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !50
  %i.b = load i32, ptr %3, align 4, !tbaa !50
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = and i32 %i.c, 65535                      ; 3 uses
  store i32 %i.d, ptr %4, align 4, !tbaa !50
  %i.e = add i32 %5, -1                           ; 4 uses
  %.not13 = icmp eq i32 %i.e, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i32 %5, -2
  %xtraiter = and i32 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %i.g = phi i32 [ %i.k, %.lr.ph.prol ], [ %i.e, %.lr.ph.preheader ]
  %.016.prol = phi i32 [ %i.j, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.pn1215.prol = phi ptr [ %.09.prol, %.lr.ph.prol ], [ %4, %.lr.ph.preheader ]
  %.pn14.prol = phi ptr [ %.010.prol, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.09.prol = getelementptr inbounds nuw i8, ptr %.pn1215.prol, i64 4 ; 3 uses
  %.010.prol = getelementptr inbounds nuw i8, ptr %.pn14.prol, i64 4 ; 3 uses
  %i.h = load i32, ptr %.010.prol, align 4, !tbaa !50
  %i.i = add nsw i32 %i.h, %.016.prol
  %i.j = and i32 %i.i, 65535                      ; 3 uses
  store i32 %i.j, ptr %.09.prol, align 4, !tbaa !50
  %i.k = add i32 %i.g, -1                         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !81

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %.016.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.lr.ph.prol ]
  %.pn1215.unr = phi ptr [ %4, %.lr.ph.preheader ], [ %.09.prol, %.lr.ph.prol ]
  %.pn14.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %.010.prol, %.lr.ph.prol ]
  %i.l = icmp ult i32 %i.f, 3
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.m = phi i32 [ %i.z, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.016 = phi i32 [ %i.y, %.lr.ph ], [ %.016.unr, %.lr.ph.prol.loopexit ]
  %.pn1215 = phi ptr [ %.09.3, %.lr.ph ], [ %.pn1215.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.pn14 = phi ptr [ %.010.3, %.lr.ph ], [ %.pn14.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.09 = getelementptr inbounds nuw i8, ptr %.pn1215, i64 4
  %.010 = getelementptr inbounds nuw i8, ptr %.pn14, i64 4
  %i.n = load i32, ptr %.010, align 4, !tbaa !50
  %i.o = add nsw i32 %i.n, %.016                  ; 2 uses
  %i.p = and i32 %i.o, 65535
  store i32 %i.p, ptr %.09, align 4, !tbaa !50
  %.09.1 = getelementptr inbounds nuw i8, ptr %.pn1215, i64 8
  %.010.1 = getelementptr inbounds nuw i8, ptr %.pn14, i64 8
  %i.q = load i32, ptr %.010.1, align 4, !tbaa !50
  %i.r = add i32 %i.q, %i.o                       ; 2 uses
  %i.s = and i32 %i.r, 65535
  store i32 %i.s, ptr %.09.1, align 4, !tbaa !50
  %.09.2 = getelementptr inbounds nuw i8, ptr %.pn1215, i64 12
  %.010.2 = getelementptr inbounds nuw i8, ptr %.pn14, i64 12
  %i.t = load i32, ptr %.010.2, align 4, !tbaa !50
  %i.u = add i32 %i.t, %i.r                       ; 2 uses
  %i.v = and i32 %i.u, 65535
  store i32 %i.v, ptr %.09.2, align 4, !tbaa !50
  %.09.3 = getelementptr inbounds nuw i8, ptr %.pn1215, i64 16 ; 2 uses
  %.010.3 = getelementptr inbounds nuw i8, ptr %.pn14, i64 16 ; 2 uses
  %i.w = load i32, ptr %.010.3, align 4, !tbaa !50
  %i.x = add i32 %i.w, %i.u
  %i.y = and i32 %i.x, 65535                      ; 2 uses
  store i32 %i.y, ptr %.09.3, align 4, !tbaa !50
  %i.z = add i32 %i.m, -4                         ; 2 uses
  %.not.3 = icmp eq i32 %i.z, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

end_hunk_0
