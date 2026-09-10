Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mv-search?download=true
inline.NumInlined: 41
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 27
begin_hunk_0_@BPredPartitionCost:bb.a
  %i.gb = load <4 x i16>, ptr %i.fx, align 2, !tbaa !46
  %i.gc = zext <4 x i16> %i.gb to <4 x i32>
  %i.gd = sub nsw <4 x i32> %i.ga, %i.gc          ; 2 uses
  store <4 x i32> %i.gd, ptr %i.fy, align 16, !tbaa !7
  store <4 x i32> %i.gd, ptr getelementptr inbounds nuw (i8, ptr @diff64, i64 32), align 16, !tbaa !7
  %i.ge = getelementptr [8 x i8], ptr %i.eo, i64 %i.dz
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !45
  %i.gh = getelementptr [32 x i8], ptr %i.eq, i64 %i.ea
  %i.gi = getelementptr i8, ptr %i.gh, i64 96
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.gg, i64 %i.er
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.es
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv216
  %i.gm = load <4 x i16>, ptr %i.gj, align 2, !tbaa !46
  %i.gn = zext <4 x i16> %i.gm to <4 x i32>
  %i.go = load <4 x i16>, ptr %i.gk, align 2, !tbaa !46
  %i.gp = zext <4 x i16> %i.go to <4 x i32>
  %i.gq = sub nsw <4 x i32> %i.gn, %i.gp          ; 2 uses
  store <4 x i32> %i.gq, ptr %i.gl, align 16, !tbaa !7
  store <4 x i32> %i.gq, ptr getelementptr inbounds nuw (i8, ptr @diff64, i64 48), align 16, !tbaa !7
  %i.gr = load ptr, ptr @input, align 8, !tbaa !9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 5100
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !64
  %i.gu = icmp eq i32 %i.gt, 0
  %or.cond.us = or i1 %i.dk, %i.gu
  br i1 %or.cond.us, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader154.us
  %i.gv = tail call i32 @distortion4x4(ptr noundef nonnull @diff64) #9
  %i.gw = add nsw i32 %i.gv, %.1146170.us
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader154.us
  %.2147.us = phi i32 [ %i.gw, %bb.c ], [ %.1146170.us, %.preheader154.us ] ; 3 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 4
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.gx = icmp slt i64 %indvars.iv.next219, %i.dq
  br i1 %i.gx, label %.preheader154.us, label %._crit_edge.us180, !llvm.loop !126

._crit_edge.us180:                                ; preds = %bb.d
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 4
  %indvars.iv.next226 = add nsw i64 %indvars.iv225, 1 ; 2 uses
  %i.gy = icmp slt i64 %indvars.iv.next226, %i.ds
  br i1 %i.gy, label %.lr.ph.us179, label %._crit_edge177.loopexit, !llvm.loop !127

._crit_edge177.loopexit:                          ; preds = %._crit_edge.us180
  %.pre = load ptr, ptr @input, align 8, !tbaa !9
  br label %._crit_edge177

._crit_edge177:                                   ; preds = %.lr.ph160, %bb.a, %._crit_edge177.loopexit
  %i.gz = phi ptr [ %i.b, %.lr.ph160 ], [ %.pre, %._crit_edge177.loopexit ], [ %i.b, %bb.a ] ; 4 uses
  %.0145.lcssa = phi i32 [ 0, %.lr.ph160 ], [ %.2147.us, %._crit_edge177.loopexit ], [ 0, %bb.a ] ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 5100
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !64
  %i.hc = icmp ne i32 %i.hb, 0
  %i.hd = icmp slt i32 %0, 5
  %or.cond3 = and i1 %i.hd, %i.hc
  br i1 %or.cond3, label %.preheader153, label %.loopexit

.preheader153:                                    ; preds = %._crit_edge177
  %i.he = getelementptr [8 x i8], ptr %i.gz, i64 %i.l
  %i.hf = getelementptr i8, ptr %i.he, i64 76
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !7
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.preheader152.lr.ph, label %.loopexit

.preheader152.lr.ph:                              ; preds = %.preheader153
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hi, i64 %i.l
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !7
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.preheader152.preheader, label %.loopexit

.preheader152.preheader:                          ; preds = %.preheader152.lr.ph
  %i.hm = tail call i32 @llvm.smin.i32(i32 %i.i, i32 8)
  %smin = sext i32 %i.hm to i64
  %i.hn = tail call i32 @llvm.smin.i32(i32 %i.f, i32 8)
  %smin237 = sext i32 %i.hn to i64
  br label %.preheader152

.preheader152:                                    ; preds = %.preheader152.preheader, %._crit_edge
  %i.ho = phi ptr [ %i.gz, %.preheader152.preheader ], [ %i.ii, %._crit_edge ] ; 2 uses
  %indvars.iv232 = phi i64 [ 0, %.preheader152.preheader ], [ %indvars.iv.next233, %._crit_edge ] ; 9 uses
  %.3187 = phi i32 [ %.0145.lcssa, %.preheader152.preheader ], [ %.4.lcssa, %._crit_edge ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.l
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !7
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader152, %.preheader.lr.ph
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %.preheader.lr.ph ], [ 0, %.preheader152 ] ; 2 uses
  %.4185 = phi i32 [ %i.ib, %.preheader.lr.ph ], [ %.3187, %.preheader152 ]
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv238 ; 8 uses
  %gep = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @diff64, ptr noundef nonnull align 4 dereferenceable(32) %gep, i64 32, i1 false)
  %i.ht = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.1 = getelementptr i8, ptr %i.ht, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 32), ptr noundef nonnull align 4 dereferenceable(32) %gep.1, i64 32, i1 false)
  %i.hu = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.2 = getelementptr i8, ptr %i.hu, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 64), ptr noundef nonnull align 4 dereferenceable(32) %gep.2, i64 32, i1 false)
  %i.hv = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.3 = getelementptr i8, ptr %i.hv, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 96), ptr noundef nonnull align 4 dereferenceable(32) %gep.3, i64 32, i1 false)
  %i.hw = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.4 = getelementptr i8, ptr %i.hw, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 128), ptr noundef nonnull align 4 dereferenceable(32) %gep.4, i64 32, i1 false)
  %i.hx = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.5 = getelementptr i8, ptr %i.hx, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 160), ptr noundef nonnull align 4 dereferenceable(32) %gep.5, i64 32, i1 false)
  %i.hy = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.6 = getelementptr i8, ptr %i.hy, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 192), ptr noundef nonnull align 4 dereferenceable(32) %gep.6, i64 32, i1 false)
  %i.hz = getelementptr [64 x i8], ptr %invariant.gep, i64 %indvars.iv232
  %gep.7 = getelementptr i8, ptr %i.hz, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @diff64, i64 224), ptr noundef nonnull align 4 dereferenceable(32) %gep.7, i64 32, i1 false)
  %i.ia = tail call i32 @distortion8x8(ptr noundef nonnull @diff64) #9
  %i.ib = add nsw i32 %i.ia, %.4185               ; 2 uses
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, %smin237 ; 2 uses
  %i.ic = load ptr, ptr @input, align 8, !tbaa !9 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.l
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !7
  %i.ig = sext i32 %i.if to i64
  %i.ih = icmp slt i64 %indvars.iv.next239, %i.ig
  br i1 %i.ih, label %.preheader.lr.ph, label %._crit_edge, !llvm.loop !128

._crit_edge:                                      ; preds = %.preheader.lr.ph, %.preheader152
  %i.ii = phi ptr [ %i.ho, %.preheader152 ], [ %i.ic, %.preheader.lr.ph ] ; 2 uses
  %.4.lcssa = phi i32 [ %.3187, %.preheader152 ], [ %i.ib, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, %smin ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.ii, i64 %i.l
  %i.ik = getelementptr i8, ptr %i.ij, i64 76
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !7
  %i.im = sext i32 %i.il to i64
  %i.in = icmp slt i64 %indvars.iv.next233, %i.im
  br i1 %i.in, label %.preheader152, label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %._crit_edge, %.preheader152.lr.ph, %.preheader153, %._crit_edge177
  %.5 = phi i32 [ %.0145.lcssa, %._crit_edge177 ], [ %.0145.lcssa, %.preheader153 ], [ %.0145.lcssa, %.preheader152.lr.ph ], [ %.4.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.5
}

declare void @LumaPrediction4x4Bi(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i32 noundef) local_unnamed_addr #2

declare i32 @distortion4x4(ptr noundef) local_unnamed_addr #2

declare i32 @distortion8x8(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BlockMotionSearch(i16 noundef signext %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca [2 x i16], align 4                ; 47 uses
  %i.c = alloca [2 x i16], align 4                ; 24 uses
  %i.d = alloca [2 x i16], align 4                ; 13 uses
  %i.e = alloca [2 x i16], align 2                ; 11 uses
  store i32 %5, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.f = ashr i32 %2, 2                           ; 10 uses
  %i.g = ashr i32 %3, 2                           ; 13 uses
  %i.h = load ptr, ptr @input, align 8, !tbaa !9  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = sext i32 %4 to i64                       ; 8 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !7    ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 12 uses
  %i.o = load ptr, ptr @img, align 8, !tbaa !9    ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load i32, ptr %i.p, align 8, !tbaa !63
  %i.r = add nsw i32 %i.q, %2                     ; 22 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 196
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62
  %i.u = add nsw i32 %i.t, %3                     ; 21 uses
  %i.v = load i32, ptr @chroma_shift_x, align 4, !tbaa !7
  %i.w = add nsw i32 %i.v, -2                     ; 2 uses
  %i.x = ashr i32 %i.r, %i.w                      ; 2 uses
  %i.y = load i32, ptr @chroma_shift_y, align 4, !tbaa !7
  %i.z = add nsw i32 %i.y, -2                     ; 2 uses
  %i.aa = ashr i32 %i.u, %i.z                     ; 2 uses
  %i.ab = ashr i32 %i.l, %i.w                     ; 2 uses
  %i.ac = ashr i32 %i.n, %i.z                     ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 14376
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55
  %i.af = sext i32 %i.g to i64                    ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = sext i32 %i.f to i64                    ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.al = sext i32 %1 to i64                      ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !61
  %i.ao = sext i16 %0 to i64                      ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.j
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 27 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 14384
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 15268
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !31
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 14224
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [536 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 424
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !40
  %.not435 = icmp eq i32 %i.be, 0
  br i1 %.not435, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = and i32 %i.ba, 1
  %.not436 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not436, i32 2, i32 4
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.bh = phi i32 [ %i.bg, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 5244
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !52
  %i.bk = icmp eq i32 %i.bj, 3
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr @EPZSDistortion, align 8, !tbaa !67
  %i.bm = add nsw i32 %i.bh, %1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !69
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.j
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bt = phi ptr [ %i.bs, %bb.e ], [ null, %bb.d ]
  %i.bu = tail call i32 @ftime(ptr noundef nonnull @BlockMotionSearch.tstruct1) #9 ; 0 uses
  %i.bv = icmp sgt i32 %i.n, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.bw = load ptr, ptr @imgY_org, align 8, !tbaa !43
  %i.bx = sext i32 %i.r to i64                    ; 5 uses
  %i.by = sext i32 %i.l to i64                    ; 6 uses
  %i.bz = shl nsw i64 %i.by, 1                    ; 5 uses
  %i.ca = sext i32 %i.u to i64
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bw, i64 %i.ca ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cb = icmp ult i32 %i.n, 4
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %.0417479 = phi ptr [ @orig_pic, %.lr.ph.new ], [ %i.cq, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cc = load ptr, ptr %gep, align 8, !tbaa !45
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.cc, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0417479, ptr align 2 %i.cd, i64 %i.bz, i1 false)
  %i.ce = getelementptr inbounds [2 x i8], ptr %.0417479, i64 %i.by ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.cf, i64 8
  %i.cg = load ptr, ptr %gep.1, align 8, !tbaa !45
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ce, ptr align 2 %i.ch, i64 %i.bz, i1 false)
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.by ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.cj, i64 16
  %i.ck = load ptr, ptr %gep.2, align 8, !tbaa !45
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ci, ptr align 2 %i.cl, i64 %i.bz, i1 false)
  %i.cm = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.by ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.cn, i64 24
  %i.co = load ptr, ptr %gep.3, align 8, !tbaa !45
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.cm, ptr align 2 %i.cp, i64 %i.bz, i1 false)
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.by ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !130

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0417479.epil.init = phi ptr [ @orig_pic, %.lr.ph ], [ %i.cq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod574 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod574)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %.0417479.epil = phi ptr [ %.0417479.epil.init, %.epil.preheader ], [ %i.ct, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil
  %i.cr = load ptr, ptr %gep.epil, align 8, !tbaa !45
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.cr, i64 %i.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.0417479.epil, ptr align 2 %i.cs, i64 %i.bz, i1 false)
  %i.ct = getelementptr inbounds [2 x i8], ptr %.0417479.epil, i64 %i.by
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !131

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %bb.f
  %i.cu = load ptr, ptr @input, align 8, !tbaa !9 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 5776
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !51 ; 2 uses
  store i32 %i.cw, ptr @ChromaMEEnable, align 4, !tbaa !7
  %.not437 = icmp ne i32 %i.cw, 0
  %i.cx = icmp sgt i32 %i.ac, 0
  %or.cond569 = select i1 %.not437, i1 %i.cx, i1 false
  br i1 %or.cond569, label %.lr.ph483, label %.loopexit476

.lr.ph483:                                        ; preds = %._crit_edge
  %i.cy = load ptr, ptr @imgUV_org, align 8, !tbaa !61 ; 3 uses
  %i.cz = sext i32 %i.x to i64                    ; 3 uses
  %i.da = sext i32 %i.ab to i64                   ; 3 uses
  %i.db = shl nsw i64 %i.da, 1                    ; 3 uses
  %i.dc = sext i32 %i.aa to i64                   ; 3 uses
  %wide.trip.count520 = zext nneg i32 %i.ac to i64 ; 5 uses
  %i.dd = add nsw i64 %wide.trip.count520, -1     ; 2 uses
  %xtraiter576 = and i64 %wide.trip.count520, 1
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %.epil.preheader575, label %.lr.ph483.new

.lr.ph483.new:                                    ; preds = %.lr.ph483
  %unroll_iter580 = and i64 %wide.trip.count520, 2147483646
  br label %bb.i

.lr.ph486.unr-lcssa:                              ; preds = %bb.i
  %lcmp.mod578.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod578.not, label %.lr.ph486, label %.epil.preheader575

.epil.preheader575:                               ; preds = %.lr.ph486.unr-lcssa, %.lr.ph483
  %indvars.iv517.epil.init = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next518.1, %.lr.ph486.unr-lcssa ]
  %.1418481.epil.init = phi ptr [ getelementptr inbounds nuw (i8, ptr @orig_pic, i64 512), %.lr.ph483 ], [ %i.ed, %.lr.ph486.unr-lcssa ]
  %lcmp.mod579 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod579)
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv517.epil.init
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.dc
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !45
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.di, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.1418481.epil.init, ptr align 2 %i.dj, i64 %i.db, i1 false)
  br label %.lr.ph486

.lr.ph486:                                        ; preds = %.lr.ph486.unr-lcssa, %.epil.preheader575
  %i.dk = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = sext i32 %i.x to i64                    ; 3 uses
  %i.dn = sext i32 %i.ab to i64                   ; 3 uses
  %i.do = shl nsw i64 %i.dn, 1                    ; 3 uses
  %i.dp = sext i32 %i.aa to i64                   ; 3 uses
  %xtraiter583 = and i64 %wide.trip.count520, 1
  %i.dq = icmp eq i64 %i.dd, 0
  br i1 %i.dq, label %.epil.preheader582, label %.lr.ph486.new

.lr.ph486.new:                                    ; preds = %.lr.ph486
  %unroll_iter587 = and i64 %wide.trip.count520, 2147483646
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph483.new
  %indvars.iv517 = phi i64 [ 0, %.lr.ph483.new ], [ %indvars.iv.next518.1, %bb.i ] ; 3 uses
  %.1418481 = phi ptr [ getelementptr inbounds nuw (i8, ptr @orig_pic, i64 512), %.lr.ph483.new ], [ %i.ed, %bb.i ] ; 2 uses
  %niter581 = phi i64 [ 0, %.lr.ph483.new ], [ %niter581.next.1, %bb.i ]
  %i.dr = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %indvars.iv517
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %i.dc
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !45
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.du, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.1418481, ptr align 2 %i.dv, i64 %i.db, i1 false)
  %i.dw = getelementptr inbounds [2 x i8], ptr %.1418481, i64 %i.da ; 2 uses
  %i.dx = load ptr, ptr %i.cy, align 8, !tbaa !43
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %indvars.iv517
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %i.dc
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !45
  %i.ec = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dw, ptr align 2 %i.ec, i64 %i.db, i1 false)
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.da ; 2 uses
  %indvars.iv.next518.1 = add nuw nsw i64 %indvars.iv517, 2 ; 2 uses
  %niter581.next.1 = add i64 %niter581, 2         ; 2 uses
  %niter581.ncmp.1 = icmp eq i64 %niter581.next.1, %unroll_iter580
  br i1 %niter581.ncmp.1, label %.lr.ph486.unr-lcssa, label %bb.i, !llvm.loop !132

bb.j:                                             ; preds = %bb.j, %.lr.ph486.new
  %indvars.iv522 = phi i64 [ 0, %.lr.ph486.new ], [ %indvars.iv.next523.1, %bb.j ] ; 3 uses
  %.2419484 = phi ptr [ getelementptr inbounds nuw (i8, ptr @orig_pic, i64 1024), %.lr.ph486.new ], [ %i.eq, %bb.j ] ; 2 uses
  %niter588 = phi i64 [ 0, %.lr.ph486.new ], [ %niter588.next.1, %bb.j ]
  %i.ee = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.ef = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv522
  %i.eg = getelementptr [8 x i8], ptr %i.ef, i64 %i.dp
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.eh, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2419484, ptr align 2 %i.ei, i64 %i.do, i1 false)
  %i.ej = getelementptr inbounds [2 x i8], ptr %.2419484, i64 %i.dn ; 2 uses
  %i.ek = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv522
  %i.em = getelementptr i8, ptr %i.el, i64 8
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %i.dp
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !45
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ej, ptr align 2 %i.ep, i64 %i.do, i1 false)
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.dn ; 2 uses
  %indvars.iv.next523.1 = add nuw nsw i64 %indvars.iv522, 2 ; 2 uses
  %niter588.next.1 = add i64 %niter588, 2         ; 2 uses
  %niter588.ncmp.1 = icmp eq i64 %niter588.next.1, %unroll_iter587
  br i1 %niter588.ncmp.1, label %.loopexit476.loopexit.unr-lcssa, label %bb.j, !llvm.loop !133

.loopexit476.loopexit.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod585.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod585.not, label %.loopexit476, label %.epil.preheader582

.epil.preheader582:                               ; preds = %.loopexit476.loopexit.unr-lcssa, %.lr.ph486
  %indvars.iv522.epil.init = phi i64 [ 0, %.lr.ph486 ], [ %indvars.iv.next523.1, %.loopexit476.loopexit.unr-lcssa ]
  %.2419484.epil.init = phi ptr [ getelementptr inbounds nuw (i8, ptr @orig_pic, i64 1024), %.lr.ph486 ], [ %i.eq, %.loopexit476.loopexit.unr-lcssa ]
  %lcmp.mod586 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod586)
  %i.er = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.es = getelementptr [8 x i8], ptr %i.er, i64 %indvars.iv522.epil.init
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.dp
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.2419484.epil.init, ptr align 2 %i.ev, i64 %i.do, i1 false)
  br label %.loopexit476

.loopexit476:                                     ; preds = %.epil.preheader582, %.loopexit476.loopexit.unr-lcssa, %._crit_edge
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cu, i64 5244
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !52 ; 2 uses
  switch i32 %i.ex, label %bb.m [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %.loopexit476
  store i32 %4, ptr @UMHEX_blocktype, align 4, !tbaa !7
  store i32 0, ptr @bipred_flag, align 4, !tbaa !7
  br label %bb.m

bb.l:                                             ; preds = %.loopexit476
  tail call void @smpUMHEX_setup(i16 noundef signext %0, i32 noundef %1, i32 noundef %i.g, i32 noundef %i.f, i32 noundef %4, ptr noundef %i.au) #9
  %.pre = load ptr, ptr @input, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 5244
  %.pre544 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !52
  br label %bb.m

bb.m:                                             ; preds = %.loopexit476, %bb.l, %bb.k
  %i.ey = phi i32 [ %i.ex, %.loopexit476 ], [ %.pre544, %bb.l ], [ 1, %bb.k ]
  %i.ez = phi ptr [ %i.cu, %.loopexit476 ], [ %.pre, %bb.l ], [ %i.cu, %bb.k ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 5100
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !64
  %i.fc = icmp ne i32 %i.fb, 0
  %i.fd = icmp slt i32 %4, 5
  %i.fe = and i1 %i.fd, %i.fc
  %i.ff = zext i1 %i.fe to i32
  store i32 %i.ff, ptr @test8x8transform, align 4, !tbaa !7
  %i.fg = icmp eq i32 %i.ey, 1
  %i.fh = load ptr, ptr @enc_picture, align 8, !tbaa !71 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 6488
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !75
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.al
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !76 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 6512
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !77
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.al
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !61 ; 2 uses
  br i1 %i.fg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @UMHEXSetMotionVectorPredictor(ptr noundef %i.as, ptr noundef %i.fl, ptr noundef %i.fp, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.l, i32 noundef %i.n, ptr noundef nonnull %i.a) #9
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @SetMotionVectorPredictor(ptr noundef %i.as, ptr noundef %i.fl, ptr noundef %i.fp, i16 noundef signext %0, i32 poison, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.l, i32 noundef %i.n)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fq = load ptr, ptr @input, align 8, !tbaa !9 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 5244
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !52
  switch i32 %i.fs, label %bb.ad [
    i32 1, label %bb.q
    i32 2, label %bb.t
    i32 3, label %bb.w
    i32 0, label %bb.ac
  ]

bb.q:                                             ; preds = %bb.p
  %i.ft = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.fu = sdiv i16 %i.ft, 4                       ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !46 ; 2 uses
  %i.fx = sdiv i16 %i.fw, 4                       ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !78
  %.not442 = icmp eq i32 %i.ga, 0
  %.pre547 = load i32, ptr %i.a, align 4, !tbaa !7 ; 8 uses
  br i1 %.not442, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = sub nsw i32 0, %.pre547                 ; 2 uses
  %i.gc = sext i16 %i.fu to i32
  %i.gd = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gc, i32 %i.gb)
  %i.ge = call noundef i32 @llvm.smin.i32(i32 %i.gd, i32 %.pre547)
  %i.gf = trunc i32 %i.ge to i16
  %i.gg = sext i16 %i.fx to i32
  %i.gh = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gg, i32 %i.gb)
  %i.gi = call noundef i32 @llvm.smin.i32(i32 %i.gh, i32 %.pre547)
  %i.gj = trunc i32 %i.gi to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gk = phi i16 [ %i.gj, %bb.r ], [ %i.fx, %bb.q ]
  %i.gl = phi i16 [ %i.gf, %bb.r ], [ %i.fu, %bb.q ]
  %i.gm = add nsw i32 %.pre547, -2047
  %i.gn = sub nsw i32 2047, %.pre547
  %i.go = sext i16 %i.gl to i32
  %i.gp = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.go, i32 %i.gm)
  %i.gq = call noundef i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gn)
  %i.gr = trunc i32 %i.gq to i16
  store i16 %i.gr, ptr %i.b, align 4, !tbaa !46
  %i.gs = load ptr, ptr @img, align 8, !tbaa !9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !79
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !7
  %i.gy = add nsw i32 %i.gx, %.pre547
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = sub nsw i32 %i.ha, %.pre547
  %i.hc = sext i16 %i.gk to i32
  %i.hd = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hc, i32 %i.gy)
  %i.he = call noundef i32 @llvm.smin.i32(i32 %i.hd, i32 %i.hb)
  %i.hf = trunc i32 %i.he to i16
  store i16 %i.hf, ptr %i.fy, align 2, !tbaa !46
  %i.hg = load i32, ptr %6, align 4, !tbaa !7
  %i.hh = call i32 @UMHEXIntegerPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.ft, i16 noundef signext %i.fw, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fy, i32 noundef %.pre547, i32 noundef 2147483647, i32 noundef %i.hg) #9
  br label %.loopexit

bb.t:                                             ; preds = %bb.p
  %i.hi = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.hj = sdiv i16 %i.hi, 4                       ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !46 ; 2 uses
  %i.hm = sdiv i16 %i.hl, 4                       ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !78
  %.not441 = icmp eq i32 %i.hp, 0
  %.pre546 = load i32, ptr %i.a, align 4, !tbaa !7 ; 8 uses
  br i1 %.not441, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hq = sub nsw i32 0, %.pre546                 ; 2 uses
  %i.hr = sext i16 %i.hj to i32
  %i.hs = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hr, i32 %i.hq)
  %i.ht = call noundef i32 @llvm.smin.i32(i32 %i.hs, i32 %.pre546)
  %i.hu = trunc i32 %i.ht to i16
  %i.hv = sext i16 %i.hm to i32
  %i.hw = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hv, i32 %i.hq)
  %i.hx = call noundef i32 @llvm.smin.i32(i32 %i.hw, i32 %.pre546)
  %i.hy = trunc i32 %i.hx to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hz = phi i16 [ %i.hy, %bb.u ], [ %i.hm, %bb.t ]
  %i.ia = phi i16 [ %i.hu, %bb.u ], [ %i.hj, %bb.t ]
  %i.ib = add nsw i32 %.pre546, -2047
  %i.ic = sub nsw i32 2047, %.pre546
  %i.id = sext i16 %i.ia to i32
  %i.ie = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.id, i32 %i.ib)
  %i.if = call noundef i32 @llvm.smin.i32(i32 %i.ie, i32 %i.ic)
  %i.ig = trunc i32 %i.if to i16
  store i16 %i.ig, ptr %i.b, align 4, !tbaa !46
  %i.ih = load ptr, ptr @img, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !79
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.ik ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !7
  %i.in = add nsw i32 %i.im, %.pre546
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !7
  %i.iq = sub nsw i32 %i.ip, %.pre546
  %i.ir = sext i16 %i.hz to i32
  %i.is = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ir, i32 %i.in)
  %i.it = call noundef i32 @llvm.smin.i32(i32 %i.is, i32 %i.iq)
  %i.iu = trunc i32 %i.it to i16
  store i16 %i.iu, ptr %i.hn, align 2, !tbaa !46
  %i.iv = load i32, ptr %6, align 4, !tbaa !7
  %i.iw = call i32 @smpUMHEXIntegerPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.hi, i16 noundef signext %i.hl, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hn, i32 noundef %.pre546, i32 noundef 2147483647, i32 noundef %i.iv) #9 ; 10 uses
  %i.ix = ashr i32 %i.l, 2                        ; 3 uses
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.preheader474.lr.ph, label %.loopexit

.preheader474.lr.ph:                              ; preds = %bb.v
  %i.iz = ashr i32 %i.n, 2                        ; 7 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %.preheader474.lr.ph.split, label %.loopexit

.preheader474.lr.ph.split:                        ; preds = %.preheader474.lr.ph
  %i.jb = icmp eq i32 %1, 0
  br i1 %i.jb, label %.preheader474.us.preheader, label %.preheader474.preheader

.preheader474.preheader:                          ; preds = %.preheader474.lr.ph.split
  %i.jc = icmp eq i32 %i.iz, 1
  %unroll_iter594 = and i32 %i.iz, 2147483646
  %i.jd = and i32 %i.n, 4
  %lcmp.mod592.not = icmp eq i32 %i.jd, 0
  %lcmp.mod593 = trunc i32 %i.iz to i1
  br label %.preheader474

.preheader474.us.preheader:                       ; preds = %.preheader474.lr.ph.split
  %i.je = icmp eq i32 %i.iz, 1
  %unroll_iter601 = and i32 %i.iz, 2147483646
  %i.jf = and i32 %i.n, 4
  %lcmp.mod599.not = icmp eq i32 %i.jf, 0
  %lcmp.mod600 = trunc i32 %i.iz to i1
  br label %.preheader474.us

.preheader474.us:                                 ; preds = %.preheader474.us.preheader, %._crit_edge489.split.us.us
  %.0413490.us = phi i32 [ %i.kz, %._crit_edge489.split.us.us ], [ 0, %.preheader474.us.preheader ] ; 2 uses
  %i.jg = load ptr, ptr @smpUMHEX_l0_cost, align 8
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.j
  %i.ji = load ptr, ptr @img, align 8             ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 180 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 176 ; 3 uses
  %i.jl = add nsw i32 %.0413490.us, %i.f          ; 3 uses
  %i.jm = load ptr, ptr %i.jh, align 8, !tbaa !69 ; 3 uses
  br i1 %i.je, label %.epil.preheader596, label %.preheader474.us.new

.preheader474.us.new:                             ; preds = %.preheader474.us, %.preheader474.us.new
  %.3411487.us.us = phi i32 [ %i.km, %.preheader474.us.new ], [ 0, %.preheader474.us ] ; 3 uses
  %niter602 = phi i32 [ %niter602.next.1, %.preheader474.us.new ], [ 0, %.preheader474.us ]
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !80
  %i.jo = ashr i32 %i.jn, 2
  %i.jp = add nsw i32 %.3411487.us.us, %i.g
  %i.jq = add i32 %i.jp, %i.jo
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !49
  %i.ju = load i32, ptr %i.jk, align 8, !tbaa !81
  %i.jv = ashr i32 %i.ju, 2
  %i.jw = add i32 %i.jl, %i.jv
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.jx
  store i32 %i.iw, ptr %i.jy, align 4, !tbaa !7
  %i.jz = or disjoint i32 %.3411487.us.us, 1
  %i.ka = load i32, ptr %i.jj, align 4, !tbaa !80
  %i.kb = ashr i32 %i.ka, 2
  %i.kc = add nsw i32 %i.jz, %i.g
  %i.kd = add i32 %i.kc, %i.kb
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !49
  %i.kh = load i32, ptr %i.jk, align 8, !tbaa !81
  %i.ki = ashr i32 %i.kh, 2
  %i.kj = add i32 %i.jl, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.kk
  store i32 %i.iw, ptr %i.kl, align 4, !tbaa !7
  %i.km = add nuw nsw i32 %.3411487.us.us, 2      ; 2 uses
  %niter602.next.1 = add nuw nsw i32 %niter602, 2 ; 2 uses
  %niter602.ncmp.1 = icmp eq i32 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge489.split.us.us.unr-lcssa, label %.preheader474.us.new, !llvm.loop !134

._crit_edge489.split.us.us.unr-lcssa:             ; preds = %.preheader474.us.new
  br i1 %lcmp.mod599.not, label %._crit_edge489.split.us.us, label %.epil.preheader596

.epil.preheader596:                               ; preds = %._crit_edge489.split.us.us.unr-lcssa, %.preheader474.us
  %.3411487.us.us.epil.init = phi i32 [ 0, %.preheader474.us ], [ %i.km, %._crit_edge489.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod600)
  %i.kn = load i32, ptr %i.jj, align 4, !tbaa !80
  %i.ko = ashr i32 %i.kn, 2
  %i.kp = add nsw i32 %.3411487.us.us.epil.init, %i.g
  %i.kq = add i32 %i.kp, %i.ko
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %i.kr
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !49
  %i.ku = load i32, ptr %i.jk, align 8, !tbaa !81
  %i.kv = ashr i32 %i.ku, 2
  %i.kw = add i32 %i.jl, %i.kv
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.kx
  store i32 %i.iw, ptr %i.ky, align 4, !tbaa !7
  br label %._crit_edge489.split.us.us

._crit_edge489.split.us.us:                       ; preds = %._crit_edge489.split.us.us.unr-lcssa, %.epil.preheader596
  %i.kz = add nuw nsw i32 %.0413490.us, 1         ; 2 uses
  %exitcond530.not = icmp eq i32 %i.kz, %i.ix
  br i1 %exitcond530.not, label %.loopexit, label %.preheader474.us, !llvm.loop !135

.preheader474:                                    ; preds = %.preheader474.preheader, %._crit_edge489.split
  %.0413490 = phi i32 [ %i.mt, %._crit_edge489.split ], [ 0, %.preheader474.preheader ] ; 2 uses
  %i.la = load ptr, ptr @smpUMHEX_l1_cost, align 8
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.j
  %i.lc = load ptr, ptr @img, align 8             ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 180 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 176 ; 3 uses
  %i.lf = add nsw i32 %.0413490, %i.f             ; 3 uses
  %i.lg = load ptr, ptr %i.lb, align 8, !tbaa !69 ; 3 uses
  br i1 %i.jc, label %.epil.preheader589, label %.preheader474.new

.preheader474.new:                                ; preds = %.preheader474, %.preheader474.new
  %.3411487 = phi i32 [ %i.mg, %.preheader474.new ], [ 0, %.preheader474 ] ; 3 uses
  %niter595 = phi i32 [ %niter595.next.1, %.preheader474.new ], [ 0, %.preheader474 ]
  %i.lh = load i32, ptr %i.ld, align 4, !tbaa !80
  %i.li = ashr i32 %i.lh, 2
  %i.lj = add nsw i32 %.3411487, %i.g
  %i.lk = add i32 %i.lj, %i.li
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !49
  %i.lo = load i32, ptr %i.le, align 8, !tbaa !81
  %i.lp = ashr i32 %i.lo, 2
  %i.lq = add i32 %i.lf, %i.lp
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ln, i64 %i.lr
  store i32 %i.iw, ptr %i.ls, align 4, !tbaa !7
  %i.lt = or disjoint i32 %.3411487, 1
  %i.lu = load i32, ptr %i.ld, align 4, !tbaa !80
  %i.lv = ashr i32 %i.lu, 2
  %i.lw = add nsw i32 %i.lt, %i.g
  %i.lx = add i32 %i.lw, %i.lv
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !49
  %i.mb = load i32, ptr %i.le, align 8, !tbaa !81
  %i.mc = ashr i32 %i.mb, 2
  %i.md = add i32 %i.lf, %i.mc
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %i.me
  store i32 %i.iw, ptr %i.mf, align 4, !tbaa !7
  %i.mg = add nuw nsw i32 %.3411487, 2            ; 2 uses
  %niter595.next.1 = add nuw nsw i32 %niter595, 2 ; 2 uses
  %niter595.ncmp.1 = icmp eq i32 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge489.split.unr-lcssa, label %.preheader474.new, !llvm.loop !134

._crit_edge489.split.unr-lcssa:                   ; preds = %.preheader474.new
  br i1 %lcmp.mod592.not, label %._crit_edge489.split, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge489.split.unr-lcssa, %.preheader474
  %.3411487.epil.init = phi i32 [ 0, %.preheader474 ], [ %i.mg, %._crit_edge489.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod593)
  %i.mh = load i32, ptr %i.ld, align 4, !tbaa !80
  %i.mi = ashr i32 %i.mh, 2
  %i.mj = add nsw i32 %.3411487.epil.init, %i.g
  %i.mk = add i32 %i.mj, %i.mi
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !49
  %i.mo = load i32, ptr %i.le, align 8, !tbaa !81
  %i.mp = ashr i32 %i.mo, 2
  %i.mq = add i32 %i.lf, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mr
  store i32 %i.iw, ptr %i.ms, align 4, !tbaa !7
  br label %._crit_edge489.split

._crit_edge489.split:                             ; preds = %._crit_edge489.split.unr-lcssa, %.epil.preheader589
  %i.mt = add nuw nsw i32 %.0413490, 1            ; 2 uses
  %exitcond528.not = icmp eq i32 %i.mt, %i.ix
  br i1 %exitcond528.not, label %.loopexit, label %.preheader474, !llvm.loop !135

bb.w:                                             ; preds = %bb.p
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4120
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !142 ; 3 uses
  %.not439 = icmp eq i32 %i.mv, 0
  %i.mw = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  br i1 %.not439, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mx = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !46
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.mz = sext i16 %i.mw to i32
  %i.na = add nsw i32 %i.mz, 2
  %i.nb = lshr i32 %i.na, 2
  %i.nc = trunc i32 %i.nb to i16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !46
  %i.nf = sext i16 %i.ne to i32
  %i.ng = add nsw i32 %i.nf, 2
  %i.nh = lshr i32 %i.ng, 2
  %i.ni = trunc i32 %i.nh to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nj = phi i16 [ %i.nc, %bb.y ], [ %i.mw, %bb.x ] ; 2 uses
  %i.nk = phi i16 [ %i.ni, %bb.y ], [ %i.my, %bb.x ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !78
  %.not440 = icmp eq i32 %i.nn, 0
  %.pre545 = load i32, ptr %i.a, align 4, !tbaa !7 ; 7 uses
  br i1 %.not440, label %bb.aa, label %._crit_edge552

._crit_edge552:                                   ; preds = %bb.z
  %.pre553 = shl nsw i32 %i.mv, 1                 ; 2 uses
  %.pre554 = shl i32 %.pre545, %.pre553
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.no = sub nsw i32 0, %.pre545
  %i.np = shl nsw i32 %i.mv, 1                    ; 3 uses
  %i.nq = shl i32 %i.no, %i.np                    ; 2 uses
  %i.nr = shl i32 %.pre545, %i.np                 ; 3 uses
  %i.ns = sext i16 %i.nj to i32
  %i.nt = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ns, i32 %i.nq)
  %i.nu = call noundef i32 @llvm.smin.i32(i32 %i.nt, i32 %i.nr)
  %i.nv = trunc i32 %i.nu to i16
  %i.nw = sext i16 %i.nk to i32
  %i.nx = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.nw, i32 %i.nq)
  %i.ny = call noundef i32 @llvm.smin.i32(i32 %i.nx, i32 %i.nr)
  %i.nz = trunc i32 %i.ny to i16
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge552, %bb.aa
  %.pre-phi555 = phi i32 [ %.pre554, %._crit_edge552 ], [ %i.nr, %bb.aa ]
  %.pre-phi = phi i32 [ %.pre553, %._crit_edge552 ], [ %i.np, %bb.aa ] ; 4 uses
  %i.oa = phi i16 [ %i.nk, %._crit_edge552 ], [ %i.nz, %bb.aa ]
  %i.ob = phi i16 [ %i.nj, %._crit_edge552 ], [ %i.nv, %bb.aa ]
  %i.oc = add nsw i32 %.pre545, -2047
  %i.od = shl i32 %i.oc, %.pre-phi
  %i.oe = sub nsw i32 2047, %.pre545
  %i.of = shl i32 %i.oe, %.pre-phi
  %i.og = sext i16 %i.ob to i32
  %i.oh = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.og, i32 %i.od)
  %i.oi = call noundef i32 @llvm.smin.i32(i32 %i.oh, i32 %i.of)
  %i.oj = trunc i32 %i.oi to i16
  store i16 %i.oj, ptr %i.b, align 4, !tbaa !46
  %i.ok = load ptr, ptr @img, align 8, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !79
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.on ; 2 uses
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !7
  %i.oq = add nsw i32 %i.op, %.pre545
  %i.or = shl i32 %i.oq, %.pre-phi
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !7
  %i.ou = sub nsw i32 %i.ot, %.pre545
  %i.ov = shl i32 %i.ou, %.pre-phi
  %i.ow = sext i16 %i.oa to i32
  %i.ox = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ow, i32 %i.or)
  %i.oy = call noundef i32 @llvm.smin.i32(i32 %i.ox, i32 %i.ov)
  %i.oz = trunc i32 %i.oy to i16
  store i16 %i.oz, ptr %i.nl, align 2, !tbaa !46
  %i.pa = load ptr, ptr @enc_picture, align 8, !tbaa !71 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 6488
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !75
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pa, i64 6512
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !77
  %i.pf = load i32, ptr %6, align 4, !tbaa !7
  %i.pg = call i32 @EPZSPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.bh, ptr noundef %i.pc, ptr noundef %i.pe, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef nonnull %i.as, ptr noundef nonnull %i.b, i32 noundef %.pre-phi555, i32 noundef 2147483647, i32 noundef %i.pf) #9
  br label %.loopexit

bb.ac:                                            ; preds = %bb.p
  %i.ph = load i16, ptr %i.as, align 2, !tbaa !46
  %i.pi = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !46
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.pl = load i32, ptr %i.a, align 4, !tbaa !7
  %i.pm = load i32, ptr %6, align 4, !tbaa !7
  %i.pn = call i32 @FastFullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.ph, i16 noundef signext %i.pj, ptr noundef nonnull %i.b, ptr noundef nonnull %i.pk, i32 noundef %i.pl, i32 noundef 2147483647, i32 noundef %i.pm) #9
  br label %.loopexit

bb.ad:                                            ; preds = %bb.p
  %i.po = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.pp = sdiv i16 %i.po, 4                       ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !46 ; 2 uses
  %i.ps = sdiv i16 %i.pr, 4                       ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.pv = load i32, ptr %i.pu, align 8, !tbaa !78
  %.not438 = icmp eq i32 %i.pv, 0
  %.pre548 = load i32, ptr %i.a, align 4, !tbaa !7 ; 8 uses
  br i1 %.not438, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.pw = sub nsw i32 0, %.pre548                 ; 2 uses
  %i.px = sext i16 %i.pp to i32
  %i.py = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.px, i32 %i.pw)
  %i.pz = call noundef i32 @llvm.smin.i32(i32 %i.py, i32 %.pre548)
  %i.qa = trunc i32 %i.pz to i16
  %i.qb = sext i16 %i.ps to i32
  %i.qc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qb, i32 %i.pw)
  %i.qd = call noundef i32 @llvm.smin.i32(i32 %i.qc, i32 %.pre548)
  %i.qe = trunc i32 %i.qd to i16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.qf = phi i16 [ %i.qe, %bb.ae ], [ %i.ps, %bb.ad ]
  %i.qg = phi i16 [ %i.qa, %bb.ae ], [ %i.pp, %bb.ad ]
  %i.qh = add nsw i32 %.pre548, -2047
  %i.qi = sub nsw i32 2047, %.pre548
  %i.qj = sext i16 %i.qg to i32
  %i.qk = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qj, i32 %i.qh)
  %i.ql = call noundef i32 @llvm.smin.i32(i32 %i.qk, i32 %i.qi)
  %i.qm = trunc i32 %i.ql to i16
  store i16 %i.qm, ptr %i.b, align 4, !tbaa !46
  %i.qn = load ptr, ptr @img, align 8, !tbaa !9
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !79
  %i.qq = sext i32 %i.qp to i64
  %i.qr = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.qq ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !7
  %i.qt = add nsw i32 %i.qs, %.pre548
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !7
  %i.qw = sub nsw i32 %i.qv, %.pre548
  %i.qx = sext i16 %i.qf to i32
  %i.qy = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qx, i32 %i.qt)
  %i.qz = call noundef i32 @llvm.smin.i32(i32 %i.qy, i32 %i.qw)
  %i.ra = trunc i32 %i.qz to i16
  store i16 %i.ra, ptr %i.pt, align 2, !tbaa !46
  %i.rb = load i32, ptr %6, align 4, !tbaa !7
  %i.rc = call i32 @FullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.po, i16 noundef signext %i.pr, ptr noundef nonnull %i.b, ptr noundef nonnull %i.pt, i32 noundef %.pre548, i32 noundef 2147483647, i32 noundef %i.rb) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge489.split, %._crit_edge489.split.us.us, %bb.v, %.preheader474.lr.ph, %bb.ac, %bb.af, %bb.ab, %bb.s
  %.0403 = phi i32 [ %i.hh, %bb.s ], [ %i.rc, %bb.af ], [ %i.pg, %bb.ab ], [ %i.pn, %bb.ac ], [ %i.iw, %.preheader474.lr.ph ], [ %i.iw, %._crit_edge489.split.us.us ], [ %i.iw, %bb.v ], [ %i.iw, %._crit_edge489.split ] ; 6 uses
  %i.rd = load ptr, ptr @input, align 8, !tbaa !9 ; 6 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 4120
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !142
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 5244
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !52
  %.not443 = icmp eq i32 %i.ri, 3
  br i1 %.not443, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.rj = load <2 x i16>, ptr %i.b, align 4, !tbaa !46
  %i.rk = shl <2 x i16> %i.rj, splat (i16 2)
  store <2 x i16> %i.rk, ptr %i.b, align 4, !tbaa !46
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rd, i64 5776
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !51
  %i.rn = icmp eq i32 %i.rm, 2
  %i.ro = zext i1 %i.rn to i32
  store i32 %i.ro, ptr @ChromaMEEnable, align 4, !tbaa !7
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !143
  %.not444 = icmp eq i32 %i.rq, 0
  br i1 %.not444, label %bb.aj, label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rd, i64 5244
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !52 ; 2 uses
  %i.rt = icmp ne i32 %i.rs, 3
  %i.ru = icmp eq i16 %0, 0
  %or.cond = or i1 %i.ru, %i.rt
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rv = load ptr, ptr @img, align 8, !tbaa !9
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !144
  %.not445 = icmp eq i32 %i.rx, 0
  br i1 %.not445, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.ry = icmp sgt i16 %0, 0
  br i1 %i.ry, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  %i.rz = sitofp i32 %.0403 to double
  %i.sa = ashr i32 %i.r, 2
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !7
  %i.se = sitofp i32 %i.sd to double
  %i.sf = fmul nnan double %i.se, 3.500000e+00
  %i.sg = fcmp ogt double %i.sf, %i.rz
  br i1 %i.sg, label %.thread, label %bb.ax

.thread:                                          ; preds = %bb.am, %bb.ak
  %i.sh = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !7
  %.not446463 = icmp eq i32 %i.sh, 0
  %spec.select464 = select i1 %.not446463, i32 2147483647, i32 %.0403
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.si = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !7
  %.not446 = icmp eq i32 %i.si, 0
  %spec.select = select i1 %.not446, i32 2147483647, i32 %.0403 ; 6 uses
  switch i32 %i.rs, label %bb.aw [
    i32 1, label %bb.ao
    i32 2, label %bb.ar
    i32 3, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.an
  %i.sj = icmp sgt i32 %4, 3
  %i.sk = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !46 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  br i1 %i.sj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.so = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !7
  %i.sq = call i32 @UMHEXSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sk, i16 noundef signext %i.sm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sn, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.sp) #9
  br label %.thread468

bb.aq:                                            ; preds = %bb.ao
  %i.sr = call i32 @SubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sk, i16 noundef signext %i.sm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sn, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, ptr noundef %6) #9
  br label %bb.ax

bb.ar:                                            ; preds = %bb.an
  %i.ss = icmp sgt i32 %4, 1
  %i.st = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !46 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !7  ; 2 uses
  br i1 %i.ss, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.sz = call i32 @smpUMHEXSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.st, i16 noundef signext %i.sv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sw, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.sy) #9
  br label %.thread468

bb.at:                                            ; preds = %bb.ar
  %i.ta = call i32 @smpUMHEXFullSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.st, i16 noundef signext %i.sv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sw, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.sy) #9
  br label %bb.ax

bb.au:                                            ; preds = %.thread, %bb.an
  %spec.select465 = phi i32 [ %spec.select464, %.thread ], [ %spec.select, %bb.an ] ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rd, i64 4124
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !145
  %.not447 = icmp eq i32 %i.tc, 0
  br i1 %.not447, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.td = call i32 @EPZSSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef %i.as, ptr noundef nonnull %i.b, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select465, ptr noundef %6) #9
  br label %bb.ax

bb.aw:                                            ; preds = %bb.an, %bb.au
  %spec.select466 = phi i32 [ %spec.select, %bb.an ], [ %spec.select465, %bb.au ]
  %i.te = load i16, ptr %i.as, align 2, !tbaa !46
  %i.tf = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !46
  %i.th = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ti = call i32 @SubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.te, i16 noundef signext %i.tg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.th, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select466, ptr noundef %6) #9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.al, %bb.am, %bb.at, %bb.aw, %bb.av, %bb.aq, %bb.ai
  %.2405 = phi i32 [ %.0403, %bb.ai ], [ %.0403, %bb.am ], [ %i.sr, %bb.aq ], [ %.0403, %bb.al ], [ %i.ta, %bb.at ], [ %i.td, %bb.av ], [ %i.ti, %bb.aw ] ; 4 uses
  %i.tj = load ptr, ptr @input, align 8, !tbaa !9
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 4168
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !78
  %i.tm = icmp eq i32 %i.tl, 0
  %i.tn = icmp eq i32 %4, 1                       ; 2 uses
  %or.cond11 = and i1 %i.tn, %i.tm
  br i1 %or.cond11, label %bb.ay, label %.thread468

bb.ay:                                            ; preds = %bb.ax
  %i.to = load ptr, ptr @img, align 8, !tbaa !9
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 20
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !82
  switch i32 %i.tq, label %.thread468 [
    i32 0, label %bb.az
    i32 3, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  call void @FindSkipModeMotionVector()
  %i.tr = call i32 @GetSkipCostMB()
  %i.ts = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !7
  %i.tu = add nsw i32 %i.tt, 4096
  %i.tv = ashr i32 %i.tu, 13
  %i.tw = sub nsw i32 %i.tr, %i.tv                ; 2 uses
  %i.tx = icmp slt i32 %i.tw, %.2405
  br i1 %i.tx, label %bb.ba, label %.thread468

bb.ba:                                            ; preds = %bb.az
  %i.ty = load ptr, ptr @img, align 8, !tbaa !9
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 14384
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !66
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !57
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !59
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !61
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !43
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !45
  %i.ug = load <2 x i16>, ptr %i.uf, align 2, !tbaa !46
  store <2 x i16> %i.ug, ptr %i.b, align 4, !tbaa !46
  br label %.thread468

.thread468:                                       ; preds = %bb.ap, %bb.as, %bb.az, %bb.ba, %bb.ay, %bb.ax
  %i.uh = phi i1 [ %i.tn, %bb.ax ], [ true, %bb.ay ], [ true, %bb.ba ], [ true, %bb.az ], [ false, %bb.as ], [ false, %bb.ap ]
  %.4407 = phi i32 [ %.2405, %bb.ax ], [ %.2405, %bb.ay ], [ %i.tw, %bb.ba ], [ %.2405, %bb.az ], [ %i.sz, %bb.as ], [ %i.sq, %bb.ap ]
  %i.ui = ashr i32 %i.n, 2                        ; 2 uses
  %i.uj = add nsw i32 %i.ui, %i.g                 ; 2 uses
  %i.uk = icmp sgt i32 %i.ui, 0                   ; 2 uses
  br i1 %i.uk, label %.preheader473.lr.ph, label %._crit_edge497.split

.preheader473.lr.ph:                              ; preds = %.thread468
  %i.ul = ashr i32 %i.l, 2                        ; 2 uses
  %i.um = icmp sgt i32 %i.ul, 0
  %i.un = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  br i1 %i.um, label %.preheader473.preheader, label %._crit_edge497.split

.preheader473.preheader:                          ; preds = %.preheader473.lr.ph
  %i.uo = add nsw i32 %i.ul, %i.f
  %i.up = sext i32 %i.uo to i64
  %i.uq = sext i32 %i.uj to i64
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.preheader, %._crit_edge495
  %indvars.iv534 = phi i64 [ %i.af, %.preheader473.preheader ], [ %indvars.iv.next535, %._crit_edge495 ] ; 2 uses
end_hunk_0
