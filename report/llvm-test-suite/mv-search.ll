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
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 30 uses
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
  %7 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ft = load <2 x i16>, ptr %i.as, align 2, !tbaa !46
  %i.fu = sdiv <2 x i16> %i.ft, splat (i16 4)     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !78
  %.not442 = icmp eq i32 %i.fx, 0
  %.pre547 = load i32, ptr %i.a, align 4, !tbaa !7 ; 8 uses
  %i.fy = extractelement <2 x i16> %i.fu, i64 0   ; 2 uses
  %i.fz = extractelement <2 x i16> %i.fu, i64 1   ; 2 uses
  br i1 %.not442, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ga = sub nsw i32 0, %.pre547                 ; 2 uses
  %i.gb = sext i16 %i.fy to i32
  %i.gc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gb, i32 %i.ga)
  %i.gd = call noundef i32 @llvm.smin.i32(i32 %i.gc, i32 %.pre547)
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = sext i16 %i.fz to i32
  %i.gg = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gf, i32 %i.ga)
  %i.gh = call noundef i32 @llvm.smin.i32(i32 %i.gg, i32 %.pre547)
  %i.gi = trunc i32 %i.gh to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gj = phi i16 [ %i.gi, %bb.r ], [ %i.fz, %bb.q ]
  %i.gk = phi i16 [ %i.ge, %bb.r ], [ %i.fy, %bb.q ]
  %i.gl = add nsw i32 %.pre547, -2047
  %i.gm = sub nsw i32 2047, %.pre547
  %i.gn = sext i16 %i.gk to i32
  %i.go = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.gn, i32 %i.gl)
  %i.gp = call noundef i32 @llvm.smin.i32(i32 %i.go, i32 %i.gm)
  %i.gq = trunc i32 %i.gp to i16
  store i16 %i.gq, ptr %i.b, align 4, !tbaa !46
  %i.gr = load ptr, ptr @img, align 8, !tbaa !9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !79
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !7
  %i.gx = add nsw i32 %i.gw, %.pre547
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7
  %i.ha = sub nsw i32 %i.gz, %.pre547
  %i.hb = sext i16 %i.gj to i32
  %i.hc = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hb, i32 %i.gx)
  %i.hd = call noundef i32 @llvm.smin.i32(i32 %i.hc, i32 %i.ha)
  %i.he = trunc i32 %i.hd to i16
  store i16 %i.he, ptr %i.fv, align 2, !tbaa !46
  %8 = load i16, ptr %i.as, align 2, !tbaa !46
  %9 = load i16, ptr %7, align 2, !tbaa !46
  %10 = load i32, ptr %6, align 4, !tbaa !7
  %i.hf = call i32 @UMHEXIntegerPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %8, i16 noundef signext %9, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fv, i32 noundef %.pre547, i32 noundef 2147483647, i32 noundef %10) #9
  br label %.loopexit

bb.t:                                             ; preds = %bb.p
  %11 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.hg = load <2 x i16>, ptr %i.as, align 2, !tbaa !46
  %i.hh = sdiv <2 x i16> %i.hg, splat (i16 4)     ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !78
  %.not441 = icmp eq i32 %i.hk, 0
  %.pre546 = load i32, ptr %i.a, align 4, !tbaa !7 ; 8 uses
  %i.hl = extractelement <2 x i16> %i.hh, i64 0   ; 2 uses
  %i.hm = extractelement <2 x i16> %i.hh, i64 1   ; 2 uses
  br i1 %.not441, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hn = sub nsw i32 0, %.pre546                 ; 2 uses
  %i.ho = sext i16 %i.hl to i32
  %i.hp = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ho, i32 %i.hn)
  %i.hq = call noundef i32 @llvm.smin.i32(i32 %i.hp, i32 %.pre546)
  %i.hr = trunc i32 %i.hq to i16
  %i.hs = sext i16 %i.hm to i32
  %i.ht = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.hs, i32 %i.hn)
  %i.hu = call noundef i32 @llvm.smin.i32(i32 %i.ht, i32 %.pre546)
  %i.hv = trunc i32 %i.hu to i16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hw = phi i16 [ %i.hv, %bb.u ], [ %i.hm, %bb.t ]
  %i.hx = phi i16 [ %i.hr, %bb.u ], [ %i.hl, %bb.t ]
  %i.hy = add nsw i32 %.pre546, -2047
  %i.hz = sub nsw i32 2047, %.pre546
  %i.ia = sext i16 %i.hx to i32
  %i.ib = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ia, i32 %i.hy)
  %i.ic = call noundef i32 @llvm.smin.i32(i32 %i.ib, i32 %i.hz)
  %i.id = trunc i32 %i.ic to i16
  store i16 %i.id, ptr %i.b, align 4, !tbaa !46
  %i.ie = load ptr, ptr @img, align 8, !tbaa !9
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !79
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !7
  %i.ik = add nsw i32 %i.ij, %.pre546
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !7
  %i.in = sub nsw i32 %i.im, %.pre546
  %i.io = sext i16 %i.hw to i32
  %i.ip = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.io, i32 %i.ik)
  %i.iq = call noundef i32 @llvm.smin.i32(i32 %i.ip, i32 %i.in)
  %i.ir = trunc i32 %i.iq to i16
  store i16 %i.ir, ptr %i.hi, align 2, !tbaa !46
  %12 = load i16, ptr %i.as, align 2, !tbaa !46
  %13 = load i16, ptr %11, align 2, !tbaa !46
  %14 = load i32, ptr %6, align 4, !tbaa !7
  %i.is = call i32 @smpUMHEXIntegerPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %12, i16 noundef signext %13, ptr noundef nonnull %i.b, ptr noundef nonnull %i.hi, i32 noundef %.pre546, i32 noundef 2147483647, i32 noundef %14) #9 ; 10 uses
  %i.it = ashr i32 %i.l, 2                        ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %.preheader474.lr.ph, label %.loopexit

.preheader474.lr.ph:                              ; preds = %bb.v
  %i.iv = ashr i32 %i.n, 2                        ; 7 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.preheader474.lr.ph.split, label %.loopexit

.preheader474.lr.ph.split:                        ; preds = %.preheader474.lr.ph
  %i.ix = icmp eq i32 %1, 0
  br i1 %i.ix, label %.preheader474.us.preheader, label %.preheader474.preheader

.preheader474.preheader:                          ; preds = %.preheader474.lr.ph.split
  %i.iy = icmp eq i32 %i.iv, 1
  %unroll_iter594 = and i32 %i.iv, 2147483646
  %i.iz = and i32 %i.n, 4
  %lcmp.mod592.not = icmp eq i32 %i.iz, 0
  %lcmp.mod593 = trunc i32 %i.iv to i1
  br label %.preheader474

.preheader474.us.preheader:                       ; preds = %.preheader474.lr.ph.split
  %i.ja = icmp eq i32 %i.iv, 1
  %unroll_iter601 = and i32 %i.iv, 2147483646
  %i.jb = and i32 %i.n, 4
  %lcmp.mod599.not = icmp eq i32 %i.jb, 0
  %lcmp.mod600 = trunc i32 %i.iv to i1
  br label %.preheader474.us

.preheader474.us:                                 ; preds = %.preheader474.us.preheader, %._crit_edge489.split.us.us
  %.0413490.us = phi i32 [ %i.kv, %._crit_edge489.split.us.us ], [ 0, %.preheader474.us.preheader ] ; 2 uses
  %i.jc = load ptr, ptr @smpUMHEX_l0_cost, align 8
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.j
  %i.je = load ptr, ptr @img, align 8             ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 180 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 176 ; 3 uses
  %i.jh = add nsw i32 %.0413490.us, %i.f          ; 3 uses
  %i.ji = load ptr, ptr %i.jd, align 8, !tbaa !69 ; 3 uses
  br i1 %i.ja, label %.epil.preheader596, label %.preheader474.us.new

.preheader474.us.new:                             ; preds = %.preheader474.us, %.preheader474.us.new
  %.3411487.us.us = phi i32 [ %i.ki, %.preheader474.us.new ], [ 0, %.preheader474.us ] ; 3 uses
  %niter602 = phi i32 [ %niter602.next.1, %.preheader474.us.new ], [ 0, %.preheader474.us ]
  %i.jj = load i32, ptr %i.jf, align 4, !tbaa !80
  %i.jk = ashr i32 %i.jj, 2
  %i.jl = add nsw i32 %.3411487.us.us, %i.g
  %i.jm = add i32 %i.jl, %i.jk
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !49
  %i.jq = load i32, ptr %i.jg, align 8, !tbaa !81
  %i.jr = ashr i32 %i.jq, 2
  %i.js = add i32 %i.jh, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jt
  store i32 %i.is, ptr %i.ju, align 4, !tbaa !7
  %i.jv = or disjoint i32 %.3411487.us.us, 1
  %i.jw = load i32, ptr %i.jf, align 4, !tbaa !80
  %i.jx = ashr i32 %i.jw, 2
  %i.jy = add nsw i32 %i.jv, %i.g
  %i.jz = add i32 %i.jy, %i.jx
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !49
  %i.kd = load i32, ptr %i.jg, align 8, !tbaa !81
  %i.ke = ashr i32 %i.kd, 2
  %i.kf = add i32 %i.jh, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.kg
  store i32 %i.is, ptr %i.kh, align 4, !tbaa !7
  %i.ki = add nuw nsw i32 %.3411487.us.us, 2      ; 2 uses
  %niter602.next.1 = add nuw nsw i32 %niter602, 2 ; 2 uses
  %niter602.ncmp.1 = icmp eq i32 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge489.split.us.us.unr-lcssa, label %.preheader474.us.new, !llvm.loop !134

._crit_edge489.split.us.us.unr-lcssa:             ; preds = %.preheader474.us.new
  br i1 %lcmp.mod599.not, label %._crit_edge489.split.us.us, label %.epil.preheader596

.epil.preheader596:                               ; preds = %._crit_edge489.split.us.us.unr-lcssa, %.preheader474.us
  %.3411487.us.us.epil.init = phi i32 [ 0, %.preheader474.us ], [ %i.ki, %._crit_edge489.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod600)
  %i.kj = load i32, ptr %i.jf, align 4, !tbaa !80
  %i.kk = ashr i32 %i.kj, 2
  %i.kl = add nsw i32 %.3411487.us.us.epil.init, %i.g
  %i.km = add i32 %i.kl, %i.kk
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !49
  %i.kq = load i32, ptr %i.jg, align 8, !tbaa !81
  %i.kr = ashr i32 %i.kq, 2
  %i.ks = add i32 %i.jh, %i.kr
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kt
  store i32 %i.is, ptr %i.ku, align 4, !tbaa !7
  br label %._crit_edge489.split.us.us

._crit_edge489.split.us.us:                       ; preds = %._crit_edge489.split.us.us.unr-lcssa, %.epil.preheader596
  %i.kv = add nuw nsw i32 %.0413490.us, 1         ; 2 uses
  %exitcond530.not = icmp eq i32 %i.kv, %i.it
  br i1 %exitcond530.not, label %.loopexit, label %.preheader474.us, !llvm.loop !135

.preheader474:                                    ; preds = %.preheader474.preheader, %._crit_edge489.split
  %.0413490 = phi i32 [ %i.mp, %._crit_edge489.split ], [ 0, %.preheader474.preheader ] ; 2 uses
  %i.kw = load ptr, ptr @smpUMHEX_l1_cost, align 8
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.j
  %i.ky = load ptr, ptr @img, align 8             ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 180 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 176 ; 3 uses
  %i.lb = add nsw i32 %.0413490, %i.f             ; 3 uses
  %i.lc = load ptr, ptr %i.kx, align 8, !tbaa !69 ; 3 uses
  br i1 %i.iy, label %.epil.preheader589, label %.preheader474.new

.preheader474.new:                                ; preds = %.preheader474, %.preheader474.new
  %.3411487 = phi i32 [ %i.mc, %.preheader474.new ], [ 0, %.preheader474 ] ; 3 uses
  %niter595 = phi i32 [ %niter595.next.1, %.preheader474.new ], [ 0, %.preheader474 ]
  %i.ld = load i32, ptr %i.kz, align 4, !tbaa !80
  %i.le = ashr i32 %i.ld, 2
  %i.lf = add nsw i32 %.3411487, %i.g
  %i.lg = add i32 %i.lf, %i.le
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !49
  %i.lk = load i32, ptr %i.la, align 8, !tbaa !81
  %i.ll = ashr i32 %i.lk, 2
  %i.lm = add i32 %i.lb, %i.ll
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ln
  store i32 %i.is, ptr %i.lo, align 4, !tbaa !7
  %i.lp = or disjoint i32 %.3411487, 1
  %i.lq = load i32, ptr %i.kz, align 4, !tbaa !80
  %i.lr = ashr i32 %i.lq, 2
  %i.ls = add nsw i32 %i.lp, %i.g
  %i.lt = add i32 %i.ls, %i.lr
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.lu
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !49
  %i.lx = load i32, ptr %i.la, align 8, !tbaa !81
  %i.ly = ashr i32 %i.lx, 2
  %i.lz = add i32 %i.lb, %i.ly
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.ma
  store i32 %i.is, ptr %i.mb, align 4, !tbaa !7
  %i.mc = add nuw nsw i32 %.3411487, 2            ; 2 uses
  %niter595.next.1 = add nuw nsw i32 %niter595, 2 ; 2 uses
  %niter595.ncmp.1 = icmp eq i32 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge489.split.unr-lcssa, label %.preheader474.new, !llvm.loop !134

._crit_edge489.split.unr-lcssa:                   ; preds = %.preheader474.new
  br i1 %lcmp.mod592.not, label %._crit_edge489.split, label %.epil.preheader589

.epil.preheader589:                               ; preds = %._crit_edge489.split.unr-lcssa, %.preheader474
  %.3411487.epil.init = phi i32 [ 0, %.preheader474 ], [ %i.mc, %._crit_edge489.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod593)
  %i.md = load i32, ptr %i.kz, align 4, !tbaa !80
  %i.me = ashr i32 %i.md, 2
  %i.mf = add nsw i32 %.3411487.epil.init, %i.g
  %i.mg = add i32 %i.mf, %i.me
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !49
  %i.mk = load i32, ptr %i.la, align 8, !tbaa !81
  %i.ml = ashr i32 %i.mk, 2
  %i.mm = add i32 %i.lb, %i.ml
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.mj, i64 %i.mn
  store i32 %i.is, ptr %i.mo, align 4, !tbaa !7
  br label %._crit_edge489.split

._crit_edge489.split:                             ; preds = %._crit_edge489.split.unr-lcssa, %.epil.preheader589
  %i.mp = add nuw nsw i32 %.0413490, 1            ; 2 uses
  %exitcond528.not = icmp eq i32 %i.mp, %i.it
  br i1 %exitcond528.not, label %.loopexit, label %.preheader474, !llvm.loop !135

bb.w:                                             ; preds = %bb.p
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fq, i64 4120
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !142 ; 3 uses
  %.not439 = icmp eq i32 %i.mr, 0
  %i.ms = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  br i1 %.not439, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mt = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !46
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.mv = sext i16 %i.ms to i32
  %i.mw = add nsw i32 %i.mv, 2
  %i.mx = lshr i32 %i.mw, 2
  %i.my = trunc i32 %i.mx to i16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !46
  %i.nb = sext i16 %i.na to i32
  %i.nc = add nsw i32 %i.nb, 2
  %i.nd = lshr i32 %i.nc, 2
  %i.ne = trunc i32 %i.nd to i16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nf = phi i16 [ %i.my, %bb.y ], [ %i.ms, %bb.x ] ; 2 uses
  %i.ng = phi i16 [ %i.ne, %bb.y ], [ %i.mu, %bb.x ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !78
  %.not440 = icmp eq i32 %i.nj, 0
  %.pre545 = load i32, ptr %i.a, align 4, !tbaa !7 ; 7 uses
  br i1 %.not440, label %bb.aa, label %._crit_edge552

._crit_edge552:                                   ; preds = %bb.z
  %.pre553 = shl nsw i32 %i.mr, 1                 ; 2 uses
  %.pre554 = shl i32 %.pre545, %.pre553
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.nk = sub nsw i32 0, %.pre545
  %i.nl = shl nsw i32 %i.mr, 1                    ; 3 uses
  %i.nm = shl i32 %i.nk, %i.nl                    ; 2 uses
  %i.nn = shl i32 %.pre545, %i.nl                 ; 3 uses
  %i.no = sext i16 %i.nf to i32
  %i.np = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.no, i32 %i.nm)
  %i.nq = call noundef i32 @llvm.smin.i32(i32 %i.np, i32 %i.nn)
  %i.nr = trunc i32 %i.nq to i16
  %i.ns = sext i16 %i.ng to i32
  %i.nt = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ns, i32 %i.nm)
  %i.nu = call noundef i32 @llvm.smin.i32(i32 %i.nt, i32 %i.nn)
  %i.nv = trunc i32 %i.nu to i16
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge552, %bb.aa
  %.pre-phi555 = phi i32 [ %.pre554, %._crit_edge552 ], [ %i.nn, %bb.aa ]
  %.pre-phi = phi i32 [ %.pre553, %._crit_edge552 ], [ %i.nl, %bb.aa ] ; 4 uses
  %i.nw = phi i16 [ %i.ng, %._crit_edge552 ], [ %i.nv, %bb.aa ]
  %i.nx = phi i16 [ %i.nf, %._crit_edge552 ], [ %i.nr, %bb.aa ]
  %i.ny = add nsw i32 %.pre545, -2047
  %i.nz = shl i32 %i.ny, %.pre-phi
  %i.oa = sub nsw i32 2047, %.pre545
  %i.ob = shl i32 %i.oa, %.pre-phi
  %i.oc = sext i16 %i.nx to i32
  %i.od = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.oc, i32 %i.nz)
  %i.oe = call noundef i32 @llvm.smin.i32(i32 %i.od, i32 %i.ob)
  %i.of = trunc i32 %i.oe to i16
  store i16 %i.of, ptr %i.b, align 4, !tbaa !46
  %i.og = load ptr, ptr @img, align 8, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !79
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.oj ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !7
  %i.om = add nsw i32 %i.ol, %.pre545
  %i.on = shl i32 %i.om, %.pre-phi
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !7
  %i.oq = sub nsw i32 %i.op, %.pre545
  %i.or = shl i32 %i.oq, %.pre-phi
  %i.os = sext i16 %i.nw to i32
  %i.ot = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.os, i32 %i.on)
  %i.ou = call noundef i32 @llvm.smin.i32(i32 %i.ot, i32 %i.or)
  %i.ov = trunc i32 %i.ou to i16
  store i16 %i.ov, ptr %i.nh, align 2, !tbaa !46
  %i.ow = load ptr, ptr @enc_picture, align 8, !tbaa !71 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 6488
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !75
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 6512
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !77
  %i.pb = load i32, ptr %6, align 4, !tbaa !7
  %i.pc = call i32 @EPZSPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.bh, ptr noundef %i.oy, ptr noundef %i.pa, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef nonnull %i.as, ptr noundef nonnull %i.b, i32 noundef %.pre-phi555, i32 noundef 2147483647, i32 noundef %i.pb) #9
  br label %.loopexit

bb.ac:                                            ; preds = %bb.p
  %i.pd = load i16, ptr %i.as, align 2, !tbaa !46
  %i.pe = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !46
  %i.pg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ph = load i32, ptr %i.a, align 4, !tbaa !7
  %i.pi = load i32, ptr %6, align 4, !tbaa !7
  %i.pj = call i32 @FastFullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.pd, i16 noundef signext %i.pf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.pg, i32 noundef %i.ph, i32 noundef 2147483647, i32 noundef %i.pi) #9
  br label %.loopexit

bb.ad:                                            ; preds = %bb.p
  %15 = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.pk = load <2 x i16>, ptr %i.as, align 2, !tbaa !46
  %i.pl = sdiv <2 x i16> %i.pk, splat (i16 4)     ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.fq, i64 4168
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !78
  %.not438 = icmp eq i32 %i.po, 0
  %.pre548 = load i32, ptr %i.a, align 4, !tbaa !7 ; 8 uses
  %i.pp = extractelement <2 x i16> %i.pl, i64 0   ; 2 uses
  %i.pq = extractelement <2 x i16> %i.pl, i64 1   ; 2 uses
  br i1 %.not438, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.pr = sub nsw i32 0, %.pre548                 ; 2 uses
  %i.ps = sext i16 %i.pp to i32
  %i.pt = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.ps, i32 %i.pr)
  %i.pu = call noundef i32 @llvm.smin.i32(i32 %i.pt, i32 %.pre548)
  %i.pv = trunc i32 %i.pu to i16
  %i.pw = sext i16 %i.pq to i32
  %i.px = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.pw, i32 %i.pr)
  %i.py = call noundef i32 @llvm.smin.i32(i32 %i.px, i32 %.pre548)
  %i.pz = trunc i32 %i.py to i16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.qa = phi i16 [ %i.pz, %bb.ae ], [ %i.pq, %bb.ad ]
  %i.qb = phi i16 [ %i.pv, %bb.ae ], [ %i.pp, %bb.ad ]
  %i.qc = add nsw i32 %.pre548, -2047
  %i.qd = sub nsw i32 2047, %.pre548
  %i.qe = sext i16 %i.qb to i32
  %i.qf = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qe, i32 %i.qc)
  %i.qg = call noundef i32 @llvm.smin.i32(i32 %i.qf, i32 %i.qd)
  %i.qh = trunc i32 %i.qg to i16
  store i16 %i.qh, ptr %i.b, align 4, !tbaa !46
  %i.qi = load ptr, ptr @img, align 8, !tbaa !9
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !79
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [24 x i8], ptr @LEVELMVLIMIT, i64 %i.ql ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8, !tbaa !7
  %i.qo = add nsw i32 %i.qn, %.pre548
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !7
  %i.qr = sub nsw i32 %i.qq, %.pre548
  %i.qs = sext i16 %i.qa to i32
  %i.qt = call range(i32 -65536, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -32768, 32768) %i.qs, i32 %i.qo)
  %i.qu = call noundef i32 @llvm.smin.i32(i32 %i.qt, i32 %i.qr)
  %i.qv = trunc i32 %i.qu to i16
  store i16 %i.qv, ptr %i.pm, align 2, !tbaa !46
  %16 = load i16, ptr %i.as, align 2, !tbaa !46
  %17 = load i16, ptr %15, align 2, !tbaa !46
  %18 = load i32, ptr %6, align 4, !tbaa !7
  %i.qw = call i32 @FullPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %16, i16 noundef signext %17, ptr noundef nonnull %i.b, ptr noundef nonnull %i.pm, i32 noundef %.pre548, i32 noundef 2147483647, i32 noundef %18) #9
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge489.split, %._crit_edge489.split.us.us, %bb.v, %.preheader474.lr.ph, %bb.ac, %bb.af, %bb.ab, %bb.s
  %.0403 = phi i32 [ %i.hf, %bb.s ], [ %i.qw, %bb.af ], [ %i.pc, %bb.ab ], [ %i.pj, %bb.ac ], [ %i.is, %.preheader474.lr.ph ], [ %i.is, %._crit_edge489.split.us.us ], [ %i.is, %bb.v ], [ %i.is, %._crit_edge489.split ] ; 6 uses
  %i.qx = load ptr, ptr @input, align 8, !tbaa !9 ; 6 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 4120
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !142
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 5244
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !52
  %.not443 = icmp eq i32 %i.rc, 3
  br i1 %.not443, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.rd = load <2 x i16>, ptr %i.b, align 4, !tbaa !46
  %i.re = shl <2 x i16> %i.rd, splat (i16 2)
  store <2 x i16> %i.re, ptr %i.b, align 4, !tbaa !46
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qx, i64 5776
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !51
  %i.rh = icmp eq i32 %i.rg, 2
  %i.ri = zext i1 %i.rh to i32
  store i32 %i.ri, ptr @ChromaMEEnable, align 4, !tbaa !7
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !143
  %.not444 = icmp eq i32 %i.rk, 0
  br i1 %.not444, label %bb.aj, label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 5244
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !52 ; 2 uses
  %i.rn = icmp ne i32 %i.rm, 3
  %i.ro = icmp eq i16 %0, 0
  %or.cond = or i1 %i.ro, %i.rn
  br i1 %or.cond, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rp = load ptr, ptr @img, align 8, !tbaa !9
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !144
  %.not445 = icmp eq i32 %i.rr, 0
  br i1 %.not445, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.rs = icmp sgt i16 %0, 0
  br i1 %i.rs, label %bb.am, label %bb.ax

bb.am:                                            ; preds = %bb.al
  %i.rt = sitofp i32 %.0403 to double
  %i.ru = ashr i32 %i.r, 2
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !7
  %i.ry = sitofp i32 %i.rx to double
  %i.rz = fmul nnan double %i.ry, 3.500000e+00
  %i.sa = fcmp ogt double %i.rz, %i.rt
  br i1 %i.sa, label %.thread, label %bb.ax

.thread:                                          ; preds = %bb.am, %bb.ak
  %i.sb = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !7
  %.not446463 = icmp eq i32 %i.sb, 0
  %spec.select464 = select i1 %.not446463, i32 2147483647, i32 %.0403
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.sc = load i32, ptr @start_me_refinement_hp, align 4, !tbaa !7
  %.not446 = icmp eq i32 %i.sc, 0
  %spec.select = select i1 %.not446, i32 2147483647, i32 %.0403 ; 6 uses
  switch i32 %i.rm, label %bb.aw [
    i32 1, label %bb.ao
    i32 2, label %bb.ar
    i32 3, label %bb.au
  ]

bb.ao:                                            ; preds = %bb.an
  %i.sd = icmp sgt i32 %4, 3
  %i.se = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.sg = load i16, ptr %i.sf, align 2, !tbaa !46 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  br i1 %i.sd, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.si = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !7
  %i.sk = call i32 @UMHEXSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.se, i16 noundef signext %i.sg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sh, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.sj) #9
  br label %.thread468

bb.aq:                                            ; preds = %bb.ao
  %i.sl = call i32 @SubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.se, i16 noundef signext %i.sg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sh, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, ptr noundef %6) #9
  br label %bb.ax

bb.ar:                                            ; preds = %bb.an
  %i.sm = icmp sgt i32 %4, 1
  %i.sn = load i16, ptr %i.as, align 2, !tbaa !46 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !46 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !7  ; 2 uses
  br i1 %i.sm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.st = call i32 @smpUMHEXSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sn, i16 noundef signext %i.sp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sq, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.ss) #9
  br label %.thread468

bb.at:                                            ; preds = %bb.ar
  %i.su = call i32 @smpUMHEXFullSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sn, i16 noundef signext %i.sp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.sq, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select, i32 noundef %i.ss) #9
  br label %bb.ax

bb.au:                                            ; preds = %.thread, %bb.an
  %spec.select465 = phi i32 [ %spec.select464, %.thread ], [ %spec.select, %bb.an ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.qx, i64 4124
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !145
  %.not447 = icmp eq i32 %i.sw, 0
  br i1 %.not447, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.sx = call i32 @EPZSSubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, ptr noundef %i.as, ptr noundef nonnull %i.b, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select465, ptr noundef %6) #9
  br label %bb.ax

bb.aw:                                            ; preds = %bb.an, %bb.au
  %spec.select466 = phi i32 [ %spec.select, %bb.an ], [ %spec.select465, %bb.au ]
  %i.sy = load i16, ptr %i.as, align 2, !tbaa !46
  %i.sz = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.ta = load i16, ptr %i.sz, align 2, !tbaa !46
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.tc = call i32 @SubPelBlockMotionSearch(ptr noundef nonnull @orig_pic, i16 noundef signext %0, i32 noundef %1, i32 noundef %i.r, i32 noundef %i.u, i32 noundef %4, i16 noundef signext %i.sy, i16 noundef signext %i.ta, ptr noundef nonnull %i.b, ptr noundef nonnull %i.tb, i32 noundef 9, i32 noundef 9, i32 noundef %spec.select466, ptr noundef %6) #9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.al, %bb.am, %bb.at, %bb.aw, %bb.av, %bb.aq, %bb.ai
  %.2405 = phi i32 [ %.0403, %bb.ai ], [ %.0403, %bb.am ], [ %i.sl, %bb.aq ], [ %.0403, %bb.al ], [ %i.su, %bb.at ], [ %i.sx, %bb.av ], [ %i.tc, %bb.aw ] ; 4 uses
  %i.td = load ptr, ptr @input, align 8, !tbaa !9
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 4168
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !78
  %i.tg = icmp eq i32 %i.tf, 0
  %i.th = icmp eq i32 %4, 1                       ; 2 uses
  %or.cond11 = and i1 %i.th, %i.tg
  br i1 %or.cond11, label %bb.ay, label %.thread468

bb.ay:                                            ; preds = %bb.ax
  %i.ti = load ptr, ptr @img, align 8, !tbaa !9
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 20
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !82
  switch i32 %i.tk, label %.thread468 [
    i32 0, label %bb.az
    i32 3, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay
  call void @FindSkipModeMotionVector()
  %i.tl = call i32 @GetSkipCostMB()
  %i.tm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !7
  %i.to = add nsw i32 %i.tn, 4096
  %i.tp = ashr i32 %i.to, 13
  %i.tq = sub nsw i32 %i.tl, %i.tp                ; 2 uses
  %i.tr = icmp slt i32 %i.tq, %.2405
  br i1 %i.tr, label %bb.ba, label %.thread468

bb.ba:                                            ; preds = %bb.az
  %i.ts = load ptr, ptr @img, align 8, !tbaa !9
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 14384
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !66
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !57
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !59
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !61
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !43
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !45
  %i.ua = load <2 x i16>, ptr %i.tz, align 2, !tbaa !46
  store <2 x i16> %i.ua, ptr %i.b, align 4, !tbaa !46
  br label %.thread468

.thread468:                                       ; preds = %bb.ap, %bb.as, %bb.az, %bb.ba, %bb.ay, %bb.ax
  %i.ub = phi i1 [ %i.th, %bb.ax ], [ true, %bb.ay ], [ true, %bb.ba ], [ true, %bb.az ], [ false, %bb.as ], [ false, %bb.ap ]
  %.4407 = phi i32 [ %.2405, %bb.ax ], [ %.2405, %bb.ay ], [ %i.tq, %bb.ba ], [ %.2405, %bb.az ], [ %i.st, %bb.as ], [ %i.sk, %bb.ap ]
  %i.uc = ashr i32 %i.n, 2                        ; 2 uses
  %i.ud = add nsw i32 %i.uc, %i.g                 ; 2 uses
  %i.ue = icmp sgt i32 %i.uc, 0                   ; 2 uses
  br i1 %i.ue, label %.preheader473.lr.ph, label %._crit_edge497.split

.preheader473.lr.ph:                              ; preds = %.thread468
  %i.uf = ashr i32 %i.l, 2                        ; 2 uses
  %i.ug = icmp sgt i32 %i.uf, 0
  %i.uh = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  br i1 %i.ug, label %.preheader473.preheader, label %._crit_edge497.split

.preheader473.preheader:                          ; preds = %.preheader473.lr.ph
  %i.ui = add nsw i32 %i.uf, %i.f
  %i.uj = sext i32 %i.ui to i64
  %i.uk = sext i32 %i.ud to i64
  br label %.preheader473

.preheader473:                                    ; preds = %.preheader473.preheader, %._crit_edge495
  %indvars.iv534 = phi i64 [ %i.af, %.preheader473.preheader ], [ %indvars.iv.next535, %._crit_edge495 ] ; 2 uses
end_hunk_0
