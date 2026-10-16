Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__copy_cut:bb.a
.preheader84.preheader:                           ; preds = %.preheader84.lr.ph.split.split
  %i.jz = sext i32 %i.u to i64                    ; 5 uses
  %i.ka = add i32 %i.t, 1
  %i.kb = sext i32 %i.y to i64                    ; 2 uses
  %i.kc = add i32 %i.x, 1
  %i.kd = shl nsw i64 %i.jz, 2
  %i.ke = add i64 %i.kd, %i.a
  %i.kf = sub i64 add (i64 ptrtoaddr (ptr @stbte__ui to i64), i64 414164), %i.ke
  %.neg = mul nsw i64 %i.kb, -800
  %i.kg = add i64 %.neg, %i.kf
  %i.kh = add i32 %i.t, 1
  %i.ki = zext i32 %i.v to i64
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 7
  %n.vec = and i64 %i.kj, 8589934584              ; 4 uses
  %i.kk = add nsw i64 %n.vec, %i.jz
  %cmp.n = icmp eq i64 %i.kj, %n.vec
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge97.split.split
  %indvar = phi i64 [ 0, %.preheader84.preheader ], [ %indvar.next, %._crit_edge97.split.split ] ; 2 uses
  %indvars.iv170 = phi i64 [ %i.kb, %.preheader84.preheader ], [ %indvars.iv.next171, %._crit_edge97.split.split ] ; 2 uses
  %.0117 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next163.lcssa, %._crit_edge97.split.split ] ; 5 uses
  %i.kl = getelementptr inbounds [800 x i8], ptr %i.by, i64 %indvars.iv170 ; 6 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader84
  %i.km = mul nsw i64 %indvar, -800
  %i.kn = add i64 %i.kg, %i.km
  %i.ko = shl i64 %.0117, 2
  %i.kp = add i64 %i.kn, %i.ko
  %i.kq = add i64 %i.kp, -1
  %diff.check = icmp ult i64 %i.kq, 31
  br i1 %diff.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kr = add i64 %.0117, %n.vec                  ; 2 uses
  %i.ks = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %.0117
  %invariant.gep = getelementptr [4 x i8], ptr %i.kl, i64 %i.jz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kt = getelementptr [4 x i8], ptr %i.ks, i64 %index ; 2 uses
  %gep373 = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %gep373, i64 16
  %wide.load = load <4 x float>, ptr %gep373, align 4, !tbaa !54
  %wide.load327 = load <4 x float>, ptr %i.ku, align 4, !tbaa !54
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x float> %wide.load, ptr %i.kt, align 4, !tbaa !54
  store <4 x float> %wide.load327, ptr %i.kv, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge97.split.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader84, %middle.block
  %indvars.iv164.ph = phi i64 [ %i.jz, %vector.memcheck ], [ %i.jz, %.preheader84 ], [ %i.kk, %middle.block ] ; 3 uses
  %indvars.iv162.ph = phi i64 [ %.0117, %vector.memcheck ], [ %.0117, %.preheader84 ], [ %i.kr, %middle.block ] ; 2 uses
  %i.kx = trunc i64 %indvars.iv164.ph to i32      ; 2 uses
  %i.ky = sub i32 %i.kh, %i.kx
  %i.kz = sub i32 %i.t, %i.kx
  %xtraiter337 = and i32 %i.ky, 3                 ; 2 uses
  %lcmp.mod338.not = icmp eq i32 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv164.prol = phi i64 [ %indvars.iv.next165.prol, %.preheader.prol ], [ %indvars.iv164.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv162.prol = phi i64 [ %indvars.iv.next163.prol, %.preheader.prol ], [ %indvars.iv162.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.la = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162.prol
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %indvars.iv164.prol
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !54
  store float %i.lc, ptr %i.la, align 4, !tbaa !54
  %indvars.iv.next163.prol = add nsw i64 %indvars.iv162.prol, 1 ; 3 uses
  %indvars.iv.next165.prol = add nsw i64 %indvars.iv164.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !186

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.next163.lcssa335.unr = phi i64 [ poison, %.preheader.preheader ], [ %indvars.iv.next163.prol, %.preheader.prol ]
  %indvars.iv164.unr = phi i64 [ %indvars.iv164.ph, %.preheader.preheader ], [ %indvars.iv.next165.prol, %.preheader.prol ]
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %.preheader.preheader ], [ %indvars.iv.next163.prol, %.preheader.prol ]
  %i.ld = icmp ult i32 %i.kz, 3
  br i1 %i.ld, label %._crit_edge97.split.split, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.3, %.preheader ], [ %indvars.iv164.unr, %.preheader.prol.loopexit ] ; 5 uses
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.3, %.preheader ], [ %indvars.iv162.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.le = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !54
  store float %i.lg, ptr %i.le, align 4, !tbaa !54
  %i.lh = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %i.lj = getelementptr [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !54
  store float %i.ll, ptr %i.li, align 4, !tbaa !54
  %i.lm = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %i.lo = getelementptr [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !54
  store float %i.lq, ptr %i.ln, align 4, !tbaa !54
  %i.lr = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.ls = getelementptr i8, ptr %i.lr, i64 12
  %i.lt = getelementptr [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lu = getelementptr i8, ptr %i.lt, i64 12
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !54
  store float %i.lv, ptr %i.ls, align 4, !tbaa !54
  %indvars.iv.next163.3 = add nsw i64 %indvars.iv162, 4 ; 2 uses
  %indvars.iv.next165.3 = add nsw i64 %indvars.iv164, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next165.3 to i32
  %exitcond169.not.3 = icmp eq i32 %i.ka, %lftr.wideiv.3
  br i1 %exitcond169.not.3, label %._crit_edge97.split.split, label %.preheader, !llvm.loop !187

._crit_edge97.split.split:                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  %indvars.iv.next163.lcssa = phi i64 [ %i.kr, %middle.block ], [ %indvars.iv.next163.lcssa335.unr, %.preheader.prol.loopexit ], [ %indvars.iv.next163.3, %.preheader ]
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1 ; 2 uses
  %lftr.wideiv173 = trunc i64 %indvars.iv.next171 to i32
  %exitcond174.not = icmp eq i32 %i.kc, %lftr.wideiv173
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond174.not, label %._crit_edge118.split, label %.preheader84, !llvm.loop !183

._crit_edge118.split:                             ; preds = %._crit_edge97.split.split, %._crit_edge97.split.us.us.split, %._crit_edge97.split.us.us.split.us.split.split.us138, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us, %._crit_edge97.split.us.us.split.us.split.us.us.us.split, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us, %.preheader84.lr.ph.split.split, %.preheader84.lr.ph, %bb.j
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4
  %.not.i82 = icmp eq i32 %i.lw, 0
  %or.cond83 = select i1 %.not73, i1 true, i1 %.not.i82
  br i1 %or.cond83, label %stbte__end_undo.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge118.split
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !77 ; 2 uses
  %i.lz = add i32 %i.ly, 8388607
  %i.ma = and i32 %i.lz, 8388607                  ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !40 ; 2 uses
  %i.md = zext nneg i32 %i.ma to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !35
  %i.mg = icmp eq i16 %i.mf, -2
  br i1 %i.mg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !77
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !78
  %i.mj = add nsw i32 %i.mi, -1
  store i32 %i.mj, ptr %i.mh, align 8, !tbaa !78
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mk = phi i32 [ %i.ma, %bb.bf ], [ %i.ly, %bb.be ]
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [2 x i8], ptr %i.mc, i64 %i.ml
  store i16 -4, ptr %i.mm, align 2, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %bb.bg, %._crit_edge118.split
  store i32 %i.w, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !124
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4, !tbaa !125
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316336), align 8, !tbaa !126
  store i32 %.011.i, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316340), align 4, !tbaa !188
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316320), align 8, !tbaa !189
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316308), align 4, !tbaa !190
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316312), align 8, !tbaa !191
  br label %bb.bh

bb.bh:                                            ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbte__in_rect(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %.not = icmp sge i32 %0, %2
  %i.a = add nsw i32 %4, %2
  %i.b = icmp slt i32 %0, %i.a
  %or.cond.not17.not19 = select i1 %.not, i1 %i.b, i1 false
  %.not13 = icmp sge i32 %1, %3
  %or.cond15.not = and i1 %.not13, %or.cond.not17.not19
  %i.c = add nsw i32 %5, %3
  %i.d = icmp slt i32 %1, %i.c
  %narrow = select i1 %or.cond15.not, i1 %i.d, i1 false
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__paste(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 8 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !124 ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4, !tbaa !125 ; 3 uses
  %i.d = ashr i32 %i.b, 1
  %i.e = sub nsw i32 %1, %i.d                     ; 2 uses
  %i.f = ashr i32 %i.c, 1
  %i.g = sub nsw i32 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 801036
  %i.i = load i32, ptr %i.h, align 4, !tbaa !122
  switch i32 %i.i, label %bb.c [
    i32 1, label %stbte__should_copy_properties.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %stbte__should_copy_properties.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.k = load i32, ptr %i.j, align 8, !tbaa !116
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %stbte__should_copy_properties.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %stbte__should_copy_properties.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %stbte__should_copy_properties.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbte__should_copy_properties.exit, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.f, label %stbte__should_copy_properties.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !119
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.e, label %stbte__should_copy_properties.exit

stbte__should_copy_properties.exit:               ; preds = %bb.e, %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader.i
  %i.y = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %bb.f ], [ false, %.lr.ph.i ]
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316340), align 4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316336), align 8, !tbaa !126
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %bb.g

bb.g:                                             ; preds = %stbte__should_copy_properties.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40 ; 12 uses
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj
  store i16 -2, ptr %i.ak, align 2, !tbaa !35
  %i.al = add nsw i32 %i.ag, 1
  %i.am = and i32 %i.al, 8388607                  ; 4 uses
  store i32 %i.am, ptr %i.af, align 4, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !78 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 8388606
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nsw i32 %i.ao, %i.aq                ; 4 uses
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !78
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 800876 ; 3 uses
  store i8 0, ptr %i.as, align 4, !tbaa !51
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  %i.at = icmp sgt i32 %i.c, 0
  br i1 %i.at, label %.preheader103.lr.ph, label %._crit_edge120.split

.preheader103.lr.ph:                              ; preds = %bb.g
  %i.au = icmp sgt i32 %i.b, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640000
  br i1 %i.au, label %.preheader103.preheader, label %._crit_edge120.split

.preheader103.preheader:                          ; preds = %.preheader103.lr.ph
  %wide.trip.count135 = zext nneg i32 %i.c to i64
  %wide.trip.count130 = zext nneg i32 %i.b to i64
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.preheader, %._crit_edge117
  %i.az = phi i32 [ %i.ar, %.preheader103.preheader ], [ %i.fk, %._crit_edge117 ]
  %i.ba = phi i32 [ %i.am, %.preheader103.preheader ], [ %i.fl, %._crit_edge117 ]
  %indvars.iv132 = phi i64 [ 0, %.preheader103.preheader ], [ %indvars.iv.next133, %._crit_edge117 ] ; 2 uses
  %.0119 = phi i64 [ 0, %.preheader103.preheader ], [ %indvars.iv.next124, %._crit_edge117 ]
  %i.bb = trunc nuw nsw i64 %indvars.iv132 to i32
  %i.bc = add nsw i32 %i.g, %i.bb                 ; 5 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [3200 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = trunc i32 %i.bc to i16                  ; 2 uses
  %i.bh = sext i32 %i.bc to i64
  %i.bi = getelementptr inbounds [800 x i8], ptr %i.ay, i64 %i.bh
  br label %bb.h

bb.h:                                             ; preds = %.preheader103, %bb.p
  %i.bj = phi i32 [ %i.az, %.preheader103 ], [ %i.fk, %bb.p ] ; 6 uses
  %i.bk = phi i32 [ %i.ba, %.preheader103 ], [ %i.fl, %bb.p ] ; 6 uses
  %indvars.iv125 = phi i64 [ 0, %.preheader103 ], [ %indvars.iv.next126, %bb.p ] ; 3 uses
  %indvars.iv123 = phi i64 [ %.0119, %.preheader103 ], [ %indvars.iv.next124, %bb.p ] ; 4 uses
  br i1 %i.bd, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %i.av, align 4, !tbaa !43
  %i.bm = icmp slt i32 %i.bc, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bn = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.bo = add nsw i32 %i.e, %i.bn                 ; 5 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !41 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph107, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %i.bu = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv123
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bu, i32 noundef 0)
  br label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.l
  %i.bv = zext nneg i32 %i.bo to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bv
  %i.bx = shl nuw i32 %i.bs, 1
  %i.by = zext i32 %i.bx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.bw, i64 %i.by, i1 false), !tbaa !35
  %i.bz = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv123
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bz, i32 noundef 0)
  %i.ca = zext nneg i32 %i.bo to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ca
  %i.cc = trunc i32 %i.bo to i16
  %wide.trip.count = zext nneg i32 %i.bs to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph107, %bb.n
  %i.cd = phi i32 [ %i.bj, %.lr.ph107 ], [ %i.dm, %bb.n ] ; 3 uses
  %i.ce = phi i32 [ %i.bk, %.lr.ph107 ], [ %i.dn, %bb.n ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !35 ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !35 ; 2 uses
  %.not = icmp eq i16 %i.cg, %i.ci
  br i1 %.not, label %bb.n, label %stbte__undo_record.exit

stbte__undo_record.exit:                          ; preds = %bb.m
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cj
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !35
  %i.cl = add nuw nsw i32 %i.ce, 1
  %i.cm = and i32 %i.cl, 8388607
  %i.cn = icmp slt i32 %i.cd, 8388606
  %i.co = zext i1 %i.cn to i32
  %i.cp = add nsw i32 %i.cd, %i.co                ; 2 uses
  %i.cq = zext nneg i32 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cq
  store i16 %i.cc, ptr %i.cr, align 2, !tbaa !35
  %i.cs = add nuw nsw i32 %i.ce, 2
  %i.ct = and i32 %i.cs, 8388607
  %i.cu = icmp slt i32 %i.cp, 8388606
  %i.cv = zext i1 %i.cu to i32
  %i.cw = add nsw i32 %i.cp, %i.cv                ; 2 uses
  %i.cx = zext nneg i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cx
  store i16 %i.bg, ptr %i.cy, align 2, !tbaa !35
  %i.cz = add nuw nsw i32 %i.ce, 3
  %i.da = and i32 %i.cz, 8388607
  %i.db = icmp slt i32 %i.cw, 8388606
  %i.dc = zext i1 %i.db to i32
  %i.dd = add nsw i32 %i.cw, %i.dc                ; 2 uses
  %i.de = trunc i64 %indvars.iv to i16
  %i.df = zext nneg i32 %i.da to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.df
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !35
  %i.dh = add nuw nsw i32 %i.ce, 4
  %i.di = and i32 %i.dh, 8388607                  ; 2 uses
  store i32 %i.di, ptr %i.af, align 4, !tbaa !77
  %i.dj = icmp slt i32 %i.dd, 8388606
  %i.dk = zext i1 %i.dj to i32
  %i.dl = add nsw i32 %i.dd, %i.dk                ; 2 uses
  store i32 %i.dl, ptr %i.an, align 8, !tbaa !78
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  store i8 0, ptr %i.as, align 4, !tbaa !51
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %stbte__undo_record.exit
  %i.dm = phi i32 [ %i.cd, %bb.m ], [ %i.dl, %stbte__undo_record.exit ] ; 2 uses
  %i.dn = phi i32 [ %i.ce, %bb.m ], [ %i.di, %stbte__undo_record.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge108, label %bb.m, !llvm.loop !192

._crit_edge108:                                   ; preds = %bb.n, %._crit_edge
  %i.do = phi i32 [ %i.bj, %._crit_edge ], [ %i.dm, %bb.n ]
  %i.dp = phi i32 [ %i.bk, %._crit_edge ], [ %i.dn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge108, %bb.k, %bb.j, %bb.i, %bb.h
  %.promoted110 = phi i32 [ %i.do, %._crit_edge108 ], [ %i.bj, %bb.k ], [ %i.bj, %bb.j ], [ %i.bj, %bb.i ], [ %i.bj, %bb.h ] ; 4 uses
  %.promoted = phi i32 [ %i.dp, %._crit_edge108 ], [ %i.bk, %bb.k ], [ %i.bk, %bb.j ], [ %i.bk, %bb.i ], [ %i.bk, %bb.h ] ; 8 uses
  br i1 %i.ab, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.o
  %i.dq = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.dr = add nsw i32 %i.e, %i.dq                 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ds ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !54 ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv123
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !54 ; 2 uses
  %i.dx = fcmp une float %i.du, %i.dw
  br i1 %i.dx, label %.preheader.split, label %.split

.preheader.split:                                 ; preds = %.preheader
  %i.dy = bitcast float %i.du to i32              ; 2 uses
  %.sroa.05.2.extract.shift.i = lshr i32 %i.dy, 16
  %.sroa.05.2.extract.trunc.i = trunc nuw i32 %.sroa.05.2.extract.shift.i to i16
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.dy to i16
  %i.dz = zext nneg i32 %.promoted to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.dz
  store i16 %.sroa.05.2.extract.trunc.i, ptr %i.ea, align 2, !tbaa !35
  %i.eb = add nuw nsw i32 %.promoted, 1
  %i.ec = and i32 %i.eb, 8388607
  %i.ed = icmp slt i32 %.promoted110, 8388606
  %i.ee = zext i1 %i.ed to i32
  %i.ef = add nsw i32 %.promoted110, %i.ee        ; 2 uses
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.eg
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.eh, align 2, !tbaa !35
  %i.ei = add nuw nsw i32 %.promoted, 2
  %i.ej = and i32 %i.ei, 8388607
  %i.ek = icmp slt i32 %i.ef, 8388606
  %i.el = zext i1 %i.ek to i32
  %i.em = add nsw i32 %i.ef, %i.el                ; 2 uses
  %3 = trunc i32 %i.dr to i16
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.en
  store i16 %3, ptr %i.eo, align 2, !tbaa !35
  %i.ep = add nuw nsw i32 %.promoted, 3
  %i.eq = and i32 %i.ep, 8388607
  %i.er = icmp slt i32 %i.em, 8388606
  %i.es = zext i1 %i.er to i32
  %i.et = add nsw i32 %i.em, %i.es                ; 2 uses
  %i.eu = zext nneg i32 %i.eq to i64
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.eu
  store i16 %i.bg, ptr %i.ev, align 2, !tbaa !35
  %i.ew = add nuw nsw i32 %.promoted, 4
  %i.ex = and i32 %i.ew, 8388607
  %i.ey = icmp slt i32 %i.et, 8388606
  %i.ez = zext i1 %i.ey to i32
  %i.fa = add nsw i32 %i.et, %i.ez                ; 2 uses
  %i.fb = zext nneg i32 %i.ex to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.fb
  store i16 256, ptr %i.fc, align 2, !tbaa !35
  %i.fd = add nuw nsw i32 %.promoted, 5
  %i.fe = and i32 %i.fd, 8388607                  ; 2 uses
  store i32 %i.fe, ptr %i.af, align 4, !tbaa !77
  %i.ff = icmp slt i32 %i.fa, 8388606
  %i.fg = zext i1 %i.ff to i32
  %i.fh = add nsw i32 %i.fa, %i.fg                ; 2 uses
  store i32 %i.fh, ptr %i.an, align 8, !tbaa !78
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  store i8 0, ptr %i.as, align 4, !tbaa !51
  br label %.split

.split:                                           ; preds = %.preheader.split, %.preheader
  %i.fi = phi i32 [ %i.fh, %.preheader.split ], [ %.promoted110, %.preheader ]
  %i.fj = phi i32 [ %i.fe, %.preheader.split ], [ %.promoted, %.preheader ]
  store float %i.dw, ptr %i.dt, align 4, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %.split, %bb.o
  %i.fk = phi i32 [ %i.fi, %.split ], [ %.promoted110, %bb.o ] ; 3 uses
  %i.fl = phi i32 [ %i.fj, %.split ], [ %.promoted, %bb.o ] ; 3 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, 1 ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge117, label %bb.h, !llvm.loop !193

._crit_edge117:                                   ; preds = %bb.p
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge120.split, label %.preheader103, !llvm.loop !194

._crit_edge120.split:                             ; preds = %._crit_edge117, %.preheader103.lr.ph, %bb.g
  %i.fm = phi i32 [ %i.ar, %bb.g ], [ %i.ar, %.preheader103.lr.ph ], [ %i.fk, %._crit_edge117 ]
  %i.fn = phi i32 [ %i.am, %bb.g ], [ %i.am, %.preheader103.lr.ph ], [ %i.fl, %._crit_edge117 ] ; 2 uses
  %i.fo = add nuw nsw i32 %i.fn, 8388607
  %i.fp = and i32 %i.fo, 8388607                  ; 3 uses
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !35
  %i.ft = icmp eq i16 %i.fs, -2
  br i1 %i.ft, label %bb.q, label %stbte__end_undo.exit

bb.q:                                             ; preds = %._crit_edge120.split
  store i32 %i.fp, ptr %i.af, align 4, !tbaa !77
  %i.fu = add nsw i32 %i.fm, -1
  store i32 %i.fu, ptr %i.an, align 8, !tbaa !78
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %._crit_edge120.split, %bb.q
  %i.fv = phi i32 [ %i.fp, %bb.q ], [ %i.fn, %._crit_edge120.split ]
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.fw
  store i16 -4, ptr %i.fx, align 2, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  br label %bb.r

bb.r:                                             ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__drag_update(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 18 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5268), align 4, !tbaa !127 ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5272), align 8, !tbaa !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 44), align 4, !tbaa !95
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %stbte__clear_stack.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !129
  %i.f = sub nsw i32 %1, %i.e                     ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %stbte__clear_stack.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !130
  %i.i = sub nsw i32 %2, %i.h                     ; 2 uses
  %i.j = icmp slt i32 %i.f, %i.b
  %i.k = icmp sgt i32 %i.i, -1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = icmp slt i32 %i.i, %i.c
  %or.cond112 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond112, label %.preheader124, label %stbte__clear_stack.exit

.preheader124:                                    ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41   ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.preheader124
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.p
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r
  %i.t = shl nuw i32 %i.n, 1
  %i.u = zext i32 %i.t to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.s, i64 %i.u, i1 false), !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.y = load i32, ptr %i.x, align 8, !tbaa !116  ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %spec.select.i = select i1 %i.z, i32 %i.w, i32 %i.y ; 2 uses
  %i.aa = icmp sgt i32 %spec.select.i, -1
  br i1 %i.aa, label %bb.g, label %.lr.ph.i

._crit_edge.thread:                               ; preds = %.preheader124
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  %spec.select.i153 = select i1 %i.af, i32 %i.ac, i32 %i.ae ; 2 uses
  %i.ag = icmp sgt i32 %spec.select.i153, -1
  br i1 %i.ag, label %bb.g, label %stbte__clear_stack.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 800908
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !118
  %.not.peel.i = icmp eq i32 %i.ak, 0
  br i1 %.not.peel.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800904
  %i.am = load i32, ptr %i.al, align 8, !tbaa !119
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load i16, ptr %i.ai, align 8, !tbaa !52
  store i16 %i.ao, ptr %i.a, align 16, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.n, 1
  br i1 %exitcond.peel.not.i, label %stbte__clear_stack.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.f
  %i.ap = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.aq = icmp eq i32 %i.n, 2
  br i1 %i.aq, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i64 %i.ap, -2
  br label %.peel.next.i

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %spec.select.i154 = phi i32 [ %spec.select.i153, %._crit_edge.thread ], [ %spec.select.i, %._crit_edge ] ; 2 uses
  %i.ar = icmp eq i32 %spec.select.i154, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.at = load i16, ptr %i.as, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi i16 [ %i.at, %bb.h ], [ -1, %bb.g ]
  %i.av = zext nneg i32 %spec.select.i154 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.av
  store i16 %i.au, ptr %i.aw, align 2, !tbaa !35
  br label %stbte__clear_stack.exit

.peel.next.i:                                     ; preds = %bb.n, %.peel.next.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i.preheader.new ], [ %indvars.iv.next.i.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.j, label %.peel.next.i.1

bb.j:                                             ; preds = %.peel.next.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !119
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %.peel.next.i.1

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 -1, ptr %i.bd, align 2, !tbaa !35
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.k, %bb.j, %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118
  %.not.i.1 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.1, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.peel.next.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !119
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 -1, ptr %i.bk, align 2, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.peel.next.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbte__clear_stack.exit.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !12

stbte__clear_stack.exit.loopexit.unr-lcssa:       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbte__clear_stack.exit, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %stbte__clear_stack.exit.loopexit.unr-lcssa, %.peel.next.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.peel.next.i.preheader ], [ %indvars.iv.next.i.1, %stbte__clear_stack.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod210 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !118
  %.not.i.epil = icmp eq i32 %i.bn, 0
  br i1 %.not.i.epil, label %bb.o, label %stbte__clear_stack.exit

bb.o:                                             ; preds = %.peel.next.i.epil.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !119
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %stbte__clear_stack.exit

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  store i16 -1, ptr %i.br, align 2, !tbaa !35
  br label %stbte__clear_stack.exit

stbte__clear_stack.exit:                          ; preds = %stbte__clear_stack.exit.loopexit.unr-lcssa, %bb.p, %bb.o, %.peel.next.i.epil.preheader, %._crit_edge.thread, %bb.i, %bb.f, %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.a, %._crit_edge.thread ], [ %i.a, %bb.f ], [ %i.a, %bb.i ], [ %i.a, %.peel.next.i.epil.preheader ], [ %i.a, %bb.o ], [ %i.a, %bb.p ], [ %i.a, %stbte__clear_stack.exit.loopexit.unr-lcssa ] ; 4 uses
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5284), align 4, !tbaa !131
  %i.bt = sub nsw i32 %1, %i.bs                   ; 4 uses
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5288), align 8, !tbaa !132
  %i.bv = sub nsw i32 %2, %i.bu                   ; 4 uses
  %i.bw = icmp sgt i32 %i.bt, -1
  br i1 %i.bw, label %bb.q, label %.loopexit121

bb.q:                                             ; preds = %stbte__clear_stack.exit
  %i.bx = icmp slt i32 %i.bt, %i.b
  %i.by = icmp sgt i32 %i.bv, -1
  %or.cond3 = select i1 %i.bx, i1 %i.by, i1 false
  %i.bz = icmp slt i32 %i.bv, %i.c
  %or.cond113 = select i1 %or.cond3, i1 %i.bz, i1 false
  br i1 %or.cond113, label %bb.r, label %.loopexit121

bb.r:                                             ; preds = %bb.q
  %i.ca = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !129
  %i.cb = add nsw i32 %i.ca, %i.bt                ; 3 uses
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !130
  %i.cd = add nsw i32 %i.cc, %i.bv                ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !43
  %i.ci = icmp sge i32 %i.cb, %i.cf
  %i.cj = or i32 %i.cd, %i.cb
  %i.ck = icmp slt i32 %i.cj, 0
  %or.cond15.not.i.not119 = select i1 %i.ck, i1 true, i1 %i.ci
  %i.cl = icmp sge i32 %i.cd, %i.ch
  %narrow.i.not = select i1 %or.cond15.not.i.not119, i1 true, i1 %i.cl
  br i1 %narrow.i.not, label %.loopexit121, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = icmp eq ptr %.0, null
  br i1 %i.cm, label %.preheader122, label %.loopexit123

.preheader122:                                    ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !41 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph127, label %.loopexit123

.lr.ph127:                                        ; preds = %.preheader122
  %i.cq = sext i32 %2 to i64
  %i.cr = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.cq
  %i.cs = sext i32 %1 to i64
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = shl nuw i32 %i.co, 1
  %i.cv = zext i32 %i.cu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.ct, i64 %i.cv, i1 false), !tbaa !35
  br label %.loopexit123

.loopexit123:                                     ; preds = %.lr.ph127, %.preheader122, %bb.s
  %.1 = phi ptr [ %.0, %bb.s ], [ %i.a, %.preheader122 ], [ %i.a, %.lr.ph127 ] ; 5 uses
  %i.cw = sext i32 %i.cd to i64
  %i.cx = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.cw
  %i.cy = sext i32 %i.cb to i64
  %i.cz = getelementptr inbounds [16 x i8], ptr %i.cx, i64 %i.cy
  %i.da = zext i1 %.not to i32
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %.1, ptr noundef nonnull %.1, ptr noundef %i.cz, i32 noundef %i.da)
  %.not109 = icmp eq i32 %3, 0
  br i1 %.not109, label %.preheader, label %.preheader120

.preheader120:                                    ; preds = %.loopexit123
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 640000 ; 2 uses
  %i.dc = sext i32 %2 to i64
  %i.dd = getelementptr inbounds [800 x i8], ptr %i.db, i64 %i.dc
  %i.de = sext i32 %1 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %4 = load float, ptr %i.df, align 4, !tbaa !54  ; 2 uses
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !130
  %i.dh = add nsw i32 %i.dg, %i.bv
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [800 x i8], ptr %i.db, i64 %i.di
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !129
  %i.dl = add nsw i32 %i.dk, %i.bt
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dm
  %i.do = load float, ptr %i.dn, align 4, !tbaa !54 ; 2 uses
  %i.dp = fcmp une float %4, %i.do
  br i1 %i.dp, label %.preheader120.split, label %.preheader

.preheader120.split:                              ; preds = %.preheader120
  %i.dq = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  %.not.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i, label %stbte__undo_record_prop_float.exit, label %bb.t

bb.t:                                             ; preds = %.preheader120.split
  %i.dr = bitcast float %4 to i32                 ; 2 uses
  %.sroa.05.2.extract.shift.i = lshr i32 %i.dr, 16
  %.sroa.05.2.extract.trunc.i = trunc nuw i32 %.sroa.05.2.extract.shift.i to i16
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.dr to i16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.ds = load i32, ptr %5, align 4, !tbaa !77    ; 6 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.dt = load ptr, ptr %6, align 8, !tbaa !40    ; 5 uses
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  store i16 %.sroa.05.2.extract.trunc.i, ptr %i.dv, align 2, !tbaa !35
  %i.dw = add nsw i32 %i.ds, 1
  %i.dx = and i32 %i.dw, 8388607
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.dy = load i32, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 8388606
  %i.ea = zext i1 %i.dz to i32
  %i.eb = add nsw i32 %i.dy, %i.ea                ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.ec = load i32, ptr %8, align 4, !tbaa !79    ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  %.neg.i.i.i = sext i1 %i.ed to i32
  %i.ee = add i32 %i.ec, %.neg.i.i.i              ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.ef = zext nneg i32 %i.dx to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.ef
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.eg, align 2, !tbaa !35
  %i.eh = add i32 %i.ds, 2
  %i.ei = and i32 %i.eh, 8388607
  %i.ej = icmp slt i32 %i.eb, 8388606
  %i.ek = zext i1 %i.ej to i32
  %i.el = add nsw i32 %i.eb, %i.ek                ; 2 uses
  %i.em = icmp sgt i32 %i.ee, 0
  %.neg.i9.i.i = sext i1 %i.em to i32
  %i.en = add i32 %i.ee, %.neg.i9.i.i             ; 2 uses
  %10 = trunc i32 %1 to i16
  %i.eo = zext nneg i32 %i.ei to i64
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.eo
  store i16 %10, ptr %i.ep, align 2, !tbaa !35
  %i.eq = add i32 %i.ds, 3
  %i.er = and i32 %i.eq, 8388607
  %i.es = icmp slt i32 %i.el, 8388606
  %i.et = zext i1 %i.es to i32
  %i.eu = add nsw i32 %i.el, %i.et                ; 2 uses
  %i.ev = icmp sgt i32 %i.en, 0
  %.neg.i10.i.i = sext i1 %i.ev to i32
  %i.ew = add i32 %i.en, %.neg.i10.i.i            ; 2 uses
  %11 = trunc i32 %2 to i16
  %i.ex = zext nneg i32 %i.er to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.ex
  store i16 %11, ptr %i.ey, align 2, !tbaa !35
  %i.ez = add i32 %i.ds, 4
  %i.fa = and i32 %i.ez, 8388607
  %i.fb = icmp slt i32 %i.eu, 8388606
  %i.fc = zext i1 %i.fb to i32
  %i.fd = add nsw i32 %i.eu, %i.fc                ; 2 uses
  %i.fe = icmp sgt i32 %i.ew, 0
  %.neg.i11.i.i = sext i1 %i.fe to i32
  %i.ff = add i32 %i.ew, %.neg.i11.i.i            ; 2 uses
  %i.fg = zext nneg i32 %i.fa to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.fg
  store i16 256, ptr %i.fh, align 2, !tbaa !35
  %i.fi = add i32 %i.ds, 5
  %i.fj = and i32 %i.fi, 8388607
  store i32 %i.fj, ptr %5, align 4, !tbaa !77
  %i.fk = icmp slt i32 %i.fd, 8388606
  %i.fl = zext i1 %i.fk to i32
  %i.fm = add nsw i32 %i.fd, %i.fl
  store i32 %i.fm, ptr %7, align 8, !tbaa !78
  %i.fn = icmp sgt i32 %i.ff, 0
  %.neg.i12.i.i = sext i1 %i.fn to i32
  %i.fo = add i32 %i.ff, %.neg.i12.i.i
  store i32 %i.fo, ptr %8, align 4, !tbaa !79
  store i8 0, ptr %9, align 4, !tbaa !51
  br label %stbte__undo_record_prop_float.exit

stbte__undo_record_prop_float.exit:               ; preds = %.preheader120.split, %bb.t
  store float %i.do, ptr %i.df, align 4, !tbaa !54
  br label %.preheader

.loopexit121:                                     ; preds = %bb.r, %bb.q, %stbte__clear_stack.exit
  %.not110 = icmp eq ptr %.0, null
  br i1 %.not110, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %stbte__undo_record_prop_float.exit, %.preheader120, %.loopexit123, %.loopexit121
  %.2157 = phi ptr [ %.0, %.loopexit121 ], [ %.1, %.loopexit123 ], [ %.1, %.preheader120 ], [ %.1, %stbte__undo_record_prop_float.exit ] ; 8 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !41 ; 4 uses
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph130, label %.loopexit

.lr.ph130:                                        ; preds = %.preheader
  %i.fs = sext i32 %2 to i64                      ; 2 uses
  %i.ft = getelementptr [3200 x i8], ptr %0, i64 %i.fs
  %i.fu = sext i32 %1 to i64                      ; 2 uses
  %i.fv = getelementptr [16 x i8], ptr %i.ft, i64 %i.fu ; 25 uses
  %i.fw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4
  %.fr = freeze i32 %i.fw
  %.not.i115 = icmp eq i32 %.fr, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 800876
  %i.gc = trunc i32 %1 to i16
  %i.gd = trunc i32 %2 to i16
  %wide.trip.count138 = zext nneg i32 %i.fq to i64 ; 10 uses
  br i1 %.not.i115, label %iter.check, label %.lr.ph130.split

iter.check:                                       ; preds = %.lr.ph130
  %min.iters.check = icmp ult i32 %i.fq, 4
  br i1 %min.iters.check, label %.lr.ph130.split.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ge = mul nsw i64 %i.fs, 3200
  %i.gf = shl nsw i64 %i.fu, 4
  %i.gg = shl nuw nsw i64 %wide.trip.count138, 1  ; 2 uses
  %i.gh = getelementptr i8, ptr %0, i64 %i.ge
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.gf
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr i8, ptr %.2157, i64 %i.gg
  %bound0 = icmp ult ptr %i.fv, %i.gk
  %bound1 = icmp ult ptr %.2157, %i.gj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph130.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check161 = icmp ult i32 %i.fq, 16
  br i1 %min.iters.check161, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gl = and i64 %wide.trip.count138, 12
  %n.vec = and i64 %wide.trip.count138, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue194
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue194 ] ; 18 uses
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load = load <8 x i16>, ptr %i.gm, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  %wide.load162.a = load <8 x i16>, ptr %i.gn, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.2157, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load163 = load <8 x i16>, ptr %i.go, align 2, !tbaa !35, !alias.scope !203 ; 9 uses
  %wide.load164 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !35, !alias.scope !203 ; 9 uses
  %i.gq = icmp ne <8 x i16> %wide.load, %wide.load163 ; 8 uses
  %i.gr = icmp ne <8 x i16> %wide.load162.a, %wide.load164 ; 8 uses
  %i.gs = extractelement <8 x i1> %i.gq, i64 0
  br i1 %i.gs, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.gt = extractelement <8 x i16> %wide.load163, i64 0
  store i16 %i.gt, ptr %i.gm, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.gu = extractelement <8 x i1> %i.gq, i64 1
  br i1 %i.gu, label %pred.store.if165.a, label %pred.store.continue166.a

pred.store.if165.a:                               ; preds = %pred.store.continue
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.gx = extractelement <8 x i16> %wide.load163, i64 1
  store i16 %i.gx, ptr %i.gw, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue166.a

pred.store.continue166.a:                         ; preds = %pred.store.if165.a, %pred.store.continue
  %i.gy = extractelement <8 x i1> %i.gq, i64 2
  br i1 %i.gy, label %pred.store.if167.a, label %pred.store.continue168.a

pred.store.if167.a:                               ; preds = %pred.store.continue166.a
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = extractelement <8 x i16> %wide.load163, i64 2
  store i16 %i.hb, ptr %i.ha, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue168.a

pred.store.continue168.a:                         ; preds = %pred.store.if167.a, %pred.store.continue166.a
  %i.hc = extractelement <8 x i1> %i.gq, i64 3
  br i1 %i.hc, label %pred.store.if169.a, label %pred.store.continue170.a

pred.store.if169.a:                               ; preds = %pred.store.continue168.a
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 6
  %i.hf = extractelement <8 x i16> %wide.load163, i64 3
  store i16 %i.hf, ptr %i.he, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue170.a

pred.store.continue170.a:                         ; preds = %pred.store.if169.a, %pred.store.continue168.a
  %i.hg = extractelement <8 x i1> %i.gq, i64 4
  br i1 %i.hg, label %pred.store.if171.a, label %pred.store.continue172.a

pred.store.if171.a:                               ; preds = %pred.store.continue170.a
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = extractelement <8 x i16> %wide.load163, i64 4
  store i16 %i.hj, ptr %i.hi, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue172.a

pred.store.continue172.a:                         ; preds = %pred.store.if171.a, %pred.store.continue170.a
  %i.hk = extractelement <8 x i1> %i.gq, i64 5
  br i1 %i.hk, label %pred.store.if173.a, label %pred.store.continue174.a

pred.store.if173.a:                               ; preds = %pred.store.continue172.a
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 10
  %i.hn = extractelement <8 x i16> %wide.load163, i64 5
  store i16 %i.hn, ptr %i.hm, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue174.a

pred.store.continue174.a:                         ; preds = %pred.store.if173.a, %pred.store.continue172.a
  %i.ho = extractelement <8 x i1> %i.gq, i64 6
  br i1 %i.ho, label %pred.store.if175.a, label %pred.store.continue176.a

pred.store.if175.a:                               ; preds = %pred.store.continue174.a
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hr = extractelement <8 x i16> %wide.load163, i64 6
  store i16 %i.hr, ptr %i.hq, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue176.a

pred.store.continue176.a:                         ; preds = %pred.store.if175.a, %pred.store.continue174.a
  %i.hs = extractelement <8 x i1> %i.gq, i64 7
  br i1 %i.hs, label %pred.store.if177.a, label %pred.store.continue178.a

pred.store.if177.a:                               ; preds = %pred.store.continue176.a
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 14
  %i.hv = extractelement <8 x i16> %wide.load163, i64 7
  store i16 %i.hv, ptr %i.hu, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue178.a

pred.store.continue178.a:                         ; preds = %pred.store.if177.a, %pred.store.continue176.a
  %i.hw = extractelement <8 x i1> %i.gr, i64 0
  br i1 %i.hw, label %pred.store.if179.a, label %pred.store.continue180.a

pred.store.if179.a:                               ; preds = %pred.store.continue178.a
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = extractelement <8 x i16> %wide.load164, i64 0
  store i16 %i.hz, ptr %i.hy, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue180.a

pred.store.continue180.a:                         ; preds = %pred.store.if179.a, %pred.store.continue178.a
  %i.ia = extractelement <8 x i1> %i.gr, i64 1
  br i1 %i.ia, label %pred.store.if181.a, label %pred.store.continue182.a

pred.store.if181.a:                               ; preds = %pred.store.continue180.a
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 18
  %i.id = extractelement <8 x i16> %wide.load164, i64 1
  store i16 %i.id, ptr %i.ic, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue182.a

pred.store.continue182.a:                         ; preds = %pred.store.if181.a, %pred.store.continue180.a
  %i.ie = extractelement <8 x i1> %i.gr, i64 2
  br i1 %i.ie, label %pred.store.if183.a, label %pred.store.continue184.a

pred.store.if183.a:                               ; preds = %pred.store.continue182.a
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 20
  %i.ih = extractelement <8 x i16> %wide.load164, i64 2
  store i16 %i.ih, ptr %i.ig, align 2, !tbaa !35, !alias.scope !202, !noalias !203
  br label %pred.store.continue184.a

pred.store.continue184.a:                         ; preds = %pred.store.if183.a, %pred.store.continue182.a
  %i.ii = extractelement <8 x i1> %i.gr, i64 3
  br i1 %i.ii, label %pred.store.if185.a, label %pred.store.continue186.a

pred.store.if185.a:                               ; preds = %pred.store.continue184.a
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %index
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 22
  %i.il = extractelement <8 x i16> %wide.load164, i64 3
  store i16 %i.il, ptr %i.ik, align 2, !tbaa !35, !alias.scope !202, !noalias !203
end_hunk_0
