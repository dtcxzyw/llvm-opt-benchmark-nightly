inline.NumInlined: 86
inline.NumDeleted: 26
begin_hunk_0_@VP8LInverseTransform:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.preheader.us.i61.new
  %.2.us.i69 = phi ptr [ %i.li, %bb.t ], [ %.13037.us.i67, %.preheader.us.i61.new ] ; 3 uses
  %.1.us.i70 = phi i32 [ %i.ll, %bb.t ], [ %.02838.us.i66, %.preheader.us.i61.new ] ; 2 uses
  %i.lm = and i32 %.1.us.i70, %i.lc
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !3
  %i.lq = getelementptr inbounds nuw i8, ptr %.13236.us.i68, i64 4
  store i32 %i.lp, ptr %.13236.us.i68, align 4, !tbaa !3
  %i.lr = lshr i32 %.1.us.i70, %i.ky
  %i.ls = or disjoint i32 %.039.us.i65, 1
  %i.lt = and i32 %i.ls, %i.lb
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lv = getelementptr inbounds nuw i8, ptr %.2.us.i69, i64 4
  %i.lw = load i32, ptr %.2.us.i69, align 4, !tbaa !3
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = and i32 %i.lx, 255
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.us.i69.1 = phi ptr [ %i.lv, %bb.v ], [ %.2.us.i69, %bb.u ] ; 3 uses
  %.1.us.i70.1 = phi i32 [ %i.ly, %bb.v ], [ %i.lr, %bb.u ] ; 2 uses
  %i.lz = and i32 %.1.us.i70.1, %i.lc
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !3
  %i.md = getelementptr inbounds nuw i8, ptr %.13236.us.i68, i64 8 ; 3 uses
  store i32 %i.mc, ptr %i.lq, align 4, !tbaa !3
  %i.me = lshr i32 %.1.us.i70.1, %i.ky            ; 2 uses
  %i.mf = add nuw nsw i32 %.039.us.i65, 2         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i72.unr-lcssa, label %.preheader.us.i61.new, !llvm.loop !50

._crit_edge.us.i72.unr-lcssa:                     ; preds = %bb.w
  br i1 %lcmp.mod.not, label %._crit_edge.us.i72, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i72.unr-lcssa, %.preheader.us.i61
  %.039.us.i65.epil.init = phi i32 [ 0, %.preheader.us.i61 ], [ %i.mf, %._crit_edge.us.i72.unr-lcssa ]
  %.02838.us.i66.epil.init = phi i32 [ 0, %.preheader.us.i61 ], [ %i.me, %._crit_edge.us.i72.unr-lcssa ]
  %.13037.us.i67.epil.init = phi ptr [ %.02943.us.i62, %.preheader.us.i61 ], [ %.2.us.i69.1, %._crit_edge.us.i72.unr-lcssa ] ; 3 uses
  %.13236.us.i68.epil.init = phi ptr [ %.03142.us.i63, %.preheader.us.i61 ], [ %i.md, %._crit_edge.us.i72.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.mg = and i32 %.039.us.i65.epil.init, %i.lb
  %i.mh = icmp eq i32 %i.mg, 0
  br i1 %i.mh, label %bb.x, label %._crit_edge.us.i72.epilog-lcssa

bb.x:                                             ; preds = %.epil.preheader
  %i.mi = getelementptr inbounds nuw i8, ptr %.13037.us.i67.epil.init, i64 4
  %i.mj = load i32, ptr %.13037.us.i67.epil.init, align 4, !tbaa !3
  %i.mk = lshr i32 %i.mj, 8
  %i.ml = and i32 %i.mk, 255
  br label %._crit_edge.us.i72.epilog-lcssa

._crit_edge.us.i72.epilog-lcssa:                  ; preds = %bb.x, %.epil.preheader
  %.2.us.i69.epil = phi ptr [ %i.mi, %bb.x ], [ %.13037.us.i67.epil.init, %.epil.preheader ]
  %.1.us.i70.epil = phi i32 [ %i.ml, %bb.x ], [ %.02838.us.i66.epil.init, %.epil.preheader ]
  %i.mm = and i32 %.1.us.i70.epil, %i.lc
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = getelementptr inbounds nuw i8, ptr %.13236.us.i68.epil.init, i64 4
  store i32 %i.mp, ptr %.13236.us.i68.epil.init, align 4, !tbaa !3
  br label %._crit_edge.us.i72

._crit_edge.us.i72:                               ; preds = %._crit_edge.us.i72.unr-lcssa, %._crit_edge.us.i72.epilog-lcssa
  %.2.us.i69.lcssa = phi ptr [ %.2.us.i69.1, %._crit_edge.us.i72.unr-lcssa ], [ %.2.us.i69.epil, %._crit_edge.us.i72.epilog-lcssa ]
  %.lcssa131 = phi ptr [ %i.md, %._crit_edge.us.i72.unr-lcssa ], [ %i.mq, %._crit_edge.us.i72.epilog-lcssa ]
  %i.mr = add nsw i32 %.03341.us.i64, 1           ; 2 uses
  %exitcond45.not.i73 = icmp eq i32 %i.mr, %2
  br i1 %exitcond45.not.i73, label %ColorSpaceInverseTransform_C.exit, label %.preheader.us.i61, !llvm.loop !51

bb.y:                                             ; preds = %._crit_edge
  %i.ms = load ptr, ptr @VP8LMapColor32b, align 8, !tbaa !27
  tail call void %i.ms(ptr noundef %3, ptr noundef %i.la, ptr noundef %4, i32 noundef %1, i32 noundef %2, i32 noundef %i.b) #12, !inline_history !52
  br label %ColorSpaceInverseTransform_C.exit

ColorSpaceInverseTransform_C.exit:                ; preds = %._crit_edge.us.i72, %._crit_edge.us.i, %bb.i, %bb.y, %bb.s, %bb.r, %bb.l, %bb.f, %PredictorInverseTransform_C.exit, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB_C(ptr noalias noundef readonly captures(address) %0, i32 noundef %1, ptr noalias noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.m, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.e = load i32, ptr %.012, align 4, !tbaa !3   ; 3 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.g, ptr %.01011, align 1, !tbaa !24
  %i.i = lshr i32 %i.e, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.j, ptr %i.h, align 1, !tbaa !24
  %i.l = trunc i32 %i.e to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  %i.n = icmp ult ptr %i.d, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGBA_C(ptr noalias noundef readonly captures(address) %0, i32 noundef %1, ptr noalias noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01213 = phi ptr [ %i.p, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.e = load i32, ptr %.014, align 4, !tbaa !3   ; 4 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.g, ptr %.01213, align 1, !tbaa !24
  %i.i = lshr i32 %i.e, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.j, ptr %i.h, align 1, !tbaa !24
  %i.l = trunc i32 %i.e to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01213, i64 3
  store i8 %i.l, ptr %i.k, align 1, !tbaa !24
  %i.n = lshr i32 %i.e, 24
  %i.o = trunc nuw i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.01213, i64 4
  store i8 %i.o, ptr %i.m, align 1, !tbaa !24
  %i.q = icmp ult ptr %i.d, %i.b
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGBA4444_C(ptr noalias noundef readonly captures(address) %0, i32 noundef %1, ptr noalias noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.b = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.b, 2                     ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %.idx, %i.a
  %i.f = add i64 %i.a, 4
  %umax16 = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.g = xor i64 %i.a, -1
  %i.h = add i64 %umax16, %i.g                    ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 44
  br i1 %min.iters.check, label %.lr.ph.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = add i64 %.idx, %i.a
  %i.l = add i64 %i.a, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.m = xor i64 %i.a, -1
  %i.n = add i64 %umax, %i.m                      ; 2 uses
  %i.o = lshr i64 %i.n, 1
  %i.p = and i64 %i.o, 9223372036854775806
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 2
  %i.r = and i64 %i.n, -4
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %scevgep15 = getelementptr i8, ptr %i.s, i64 4
  %bound0 = icmp ult ptr %2, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %i.v = shl nuw i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %2, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.x
  %i.y = shl i64 %index, 1
  %i.z = getelementptr i8, ptr %2, i64 %i.y
  %wide.load19 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !55 ; 4 uses
  %i.aa = lshr <4 x i32> %wide.load19, splat (i32 16)
  %i.ab = and <4 x i32> %i.aa, splat (i32 240)
  %i.ac = lshr <4 x i32> %wide.load19, splat (i32 12)
  %i.ad = and <4 x i32> %i.ac, splat (i32 15)
  %i.ae = or disjoint <4 x i32> %i.ab, %i.ad
  %i.af = and <4 x i32> %wide.load19, splat (i32 240)
  %i.ag = lshr <4 x i32> %wide.load19, splat (i32 28)
  %i.ah = or disjoint <4 x i32> %i.af, %i.ag
  %i.ai = shufflevector <4 x i32> %i.ae, <4 x i32> %i.ah, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec20 = trunc nuw <8 x i32> %i.ai to <8 x i8>
  store <8 x i8> %interleaved.vec20, ptr %i.z, align 1, !tbaa !24, !alias.scope !58, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader22

.lr.ph.preheader22:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.01213.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader22, %.lr.ph
  %.014 = phi ptr [ %i.ak, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader22 ] ; 2 uses
  %.01213 = phi ptr [ %i.ax, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader22 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.al = load i32, ptr %.014, align 4, !tbaa !3  ; 4 uses
  %i.am = lshr i32 %i.al, 16
  %i.an = and i32 %i.am, 240
  %i.ao = lshr i32 %i.al, 12
  %i.ap = and i32 %i.ao, 15
  %i.aq = or disjoint i32 %i.an, %i.ap
  %i.ar = trunc nuw i32 %i.aq to i8
  %i.as = and i32 %i.al, 240
  %i.at = lshr i32 %i.al, 28
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.ar, ptr %.01213, align 1, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !24
  %i.ay = icmp ult ptr %i.ak, %i.c
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToRGB565_C(ptr noalias noundef readonly captures(address) %0, i32 noundef %1, ptr noalias noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.b = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.b, 2                     ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %.idx, %i.a
  %i.f = add i64 %i.a, 4
  %umax16 = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.g = xor i64 %i.a, -1
  %i.h = add i64 %umax16, %i.g                    ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 44
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.k = add i64 %.idx, %i.a
  %i.l = add i64 %i.a, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  %i.m = xor i64 %i.a, -1
  %i.n = add i64 %umax, %i.m                      ; 2 uses
  %i.o = lshr i64 %i.n, 1
  %i.p = and i64 %i.o, 9223372036854775806
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.q, i64 2
  %i.r = and i64 %i.n, -4
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %scevgep15 = getelementptr i8, ptr %i.s, i64 4
  %bound0 = icmp ult ptr %2, %scevgep15
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 9223372036854775804      ; 4 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %i.v = shl nuw i64 %n.vec, 1
  %i.w = getelementptr i8, ptr %2, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.x
  %i.y = shl i64 %index, 1
  %next.gep17 = getelementptr i8, ptr %2, i64 %i.y
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3, !alias.scope !62 ; 4 uses
  %i.z = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.aa = and <4 x i32> %i.z, splat (i32 248)
  %i.ab = lshr <4 x i32> %wide.load, splat (i32 13)
  %i.ac = and <4 x i32> %i.ab, splat (i32 7)
  %i.ad = or disjoint <4 x i32> %i.aa, %i.ac
  %i.ae = lshr <4 x i32> %wide.load, splat (i32 5)
  %i.af = and <4 x i32> %i.ae, splat (i32 224)
  %i.ag = lshr <4 x i32> %wide.load, splat (i32 3)
  %i.ah = and <4 x i32> %i.ag, splat (i32 31)
  %i.ai = or disjoint <4 x i32> %i.af, %i.ah
  %i.aj = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc nuw <8 x i32> %i.aj to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %next.gep17, align 1, !tbaa !24, !alias.scope !65, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.01213.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.014 = phi ptr [ %i.al, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader19 ] ; 2 uses
  %.01213 = phi ptr [ %i.ba, %.lr.ph ], [ %.01213.ph, %.lr.ph.preheader19 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.am = load i32, ptr %.014, align 4, !tbaa !3  ; 4 uses
  %i.an = lshr i32 %i.am, 16
  %i.ao = and i32 %i.an, 248
  %i.ap = lshr i32 %i.am, 13
  %i.aq = and i32 %i.ap, 7
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = trunc nuw i32 %i.ar to i8
  %i.at = lshr i32 %i.am, 5
  %i.au = and i32 %i.at, 224
  %i.av = lshr i32 %i.am, 3
  %i.aw = and i32 %i.av, 31
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.01213, i64 1
  store i8 %i.as, ptr %.01213, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %.01213, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !24
  %i.bb = icmp ult ptr %i.al, %i.c
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8LConvertBGRAToBGR_C(ptr noalias noundef readonly captures(address) %0, i32 noundef %1, ptr noalias noundef writeonly captures(none) %2) #2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01011 = phi ptr [ %i.m, %.lr.ph ], [ %2, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.012, i64 4 ; 2 uses
  %i.e = load i32, ptr %.012, align 4, !tbaa !3   ; 3 uses
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.01011, i64 1
  store i8 %i.f, ptr %.01011, align 1, !tbaa !24
  %i.h = lshr i32 %i.e, 8
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.01011, i64 2
  store i8 %i.i, ptr %i.g, align 1, !tbaa !24
  %i.k = lshr i32 %i.e, 16
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.01011, i64 3
  store i8 %i.l, ptr %i.j, align 1, !tbaa !24
  %i.n = icmp ult ptr %i.d, %i.b
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @VP8LConvertFromBGRA(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 6 uses
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
  %i.b = load ptr, ptr @VP8LConvertBGRAToRGB, align 8, !tbaa !27
  tail call void %i.b(ptr noundef %0, i32 noundef %1, ptr noundef %3) #12
  br label %CopyOrSwap.exit
end_hunk_0
