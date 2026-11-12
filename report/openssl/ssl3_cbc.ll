Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl3_cbc?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ssl3_cbc_digest_record:bb.a
bb.ak:                                            ; preds = %bb.aj
  call void %.0212(ptr noundef nonnull %10, ptr noundef nonnull %i.f) #6, !callees !20
  call void %.0213(ptr noundef nonnull %10, ptr noundef nonnull %i.f) #6, !callees !23
  br i1 %.fr, label %vector.main.loop.iter.check, label %.split291.us

vector.main.loop.iter.check:                      ; preds = %bb.ak
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.body321

vector.body321:                                   ; preds = %vector.main.loop.iter.check, %vector.body321
  %index322 = phi i64 [ %index.next327, %vector.body321 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 %index322 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load323 = load <16 x i8>, ptr %i.eq, align 16, !tbaa !8
  %wide.load324 = load <16 x i8>, ptr %i.er, align 16, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 %index322 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load325 = load <16 x i8>, ptr %i.es, align 16, !tbaa !8
  %wide.load326 = load <16 x i8>, ptr %i.et, align 16, !tbaa !8
  %i.eu = or <16 x i8> %wide.load325, %wide.load323
  %i.ev = or <16 x i8> %wide.load326, %wide.load324
  store <16 x i8> %i.eu, ptr %i.es, align 16, !tbaa !8
  store <16 x i8> %i.ev, ptr %i.et, align 16, !tbaa !8
  %index.next327 = add nuw i64 %index322, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next327, %n.vec
  br i1 %i.ew, label %middle.block328, label %vector.body321, !llvm.loop !13

middle.block328:                                  ; preds = %vector.body321
  br i1 %cmp.n, label %.split291.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block328
  br i1 %min.epilog.iters.check, label %.split.us, label %vec.epilog.vector.body.preheader, !prof !26

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index329.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index329 = phi i64 [ %index.next332, %vec.epilog.vector.body ], [ %index329.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 %index329
  %wide.load330 = load <4 x i8>, ptr %i.ex, align 4, !tbaa !8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.d, i64 %index329 ; 2 uses
  %wide.load331 = load <4 x i8>, ptr %i.ey, align 4, !tbaa !8
  %i.ez = or <4 x i8> %wide.load331, %wide.load330
  store <4 x i8> %i.ez, ptr %i.ey, align 4, !tbaa !8
  %index.next332 = add nuw i64 %index329, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next332, %.0211
  br i1 %i.fa, label %.split291.us, label %vec.epilog.vector.body, !llvm.loop !14

.split.us:                                        ; preds = %vec.epilog.iter.check, %.split.us
  %.1200289.us = phi i64 [ %i.fg, %.split.us ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1200289.us
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 %.1200289.us ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !8
  %i.ff = or i8 %i.fe, %i.fc
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !8
  %i.fg = add nuw nsw i64 %.1200289.us, 1         ; 2 uses
  %exitcond302.not = icmp eq i64 %i.fg, %.0211
  br i1 %exitcond302.not, label %.split291.us, label %.split.us, !llvm.loop !15

.split291.us:                                     ; preds = %.split.us, %vec.epilog.vector.body, %middle.block328, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %i.fh = add i64 %.3294, 1                       ; 2 uses
  %.not233 = icmp ugt i64 %i.fh, %i.cw
  br i1 %.not233, label %._crit_edge, label %bb.ac, !llvm.loop !16

._crit_edge:                                      ; preds = %.split291.us, %.loopexit
  %i.fi = call ptr @EVP_MD_CTX_new() #6           ; 9 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.at, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.fk = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.fi, ptr noundef %0, ptr noundef null) #6
  %i.fl = icmp slt i32 %i.fk, 1
  br i1 %i.fl, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  br i1 %.not229, label %bb.an, label %vector.body334

vector.body334:                                   ; preds = %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load336 = load <16 x i8>, ptr %i.b, align 16, !tbaa !8
  %wide.load337 = load <16 x i8>, ptr %i.fm, align 16, !tbaa !8
  %i.fn = xor <16 x i8> %wide.load336, splat (i8 106)
  %i.fo = xor <16 x i8> %wide.load337, splat (i8 106)
  store <16 x i8> %i.fn, ptr %i.b, align 16, !tbaa !8
  store <16 x i8> %i.fo, ptr %i.fm, align 16, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %wide.load336.1 = load <16 x i8>, ptr %i.fp, align 16, !tbaa !8
  %wide.load337.1 = load <16 x i8>, ptr %i.fq, align 16, !tbaa !8
  %i.fr = xor <16 x i8> %wide.load336.1, splat (i8 106)
  %i.fs = xor <16 x i8> %wide.load337.1, splat (i8 106)
  store <16 x i8> %i.fr, ptr %i.fp, align 16, !tbaa !8
  store <16 x i8> %i.fs, ptr %i.fq, align 16, !tbaa !8
  br i1 %i.z, label %middle.block339, label %vector.body334.2

vector.body334.2:                                 ; preds = %vector.body334
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %wide.load336.2 = load <16 x i8>, ptr %i.ft, align 16, !tbaa !8
  %wide.load337.2 = load <16 x i8>, ptr %i.fu, align 16, !tbaa !8
  %i.fv = xor <16 x i8> %wide.load336.2, splat (i8 106)
  %i.fw = xor <16 x i8> %wide.load337.2, splat (i8 106)
  store <16 x i8> %i.fv, ptr %i.ft, align 16, !tbaa !8
  store <16 x i8> %i.fw, ptr %i.fu, align 16, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %wide.load336.3 = load <16 x i8>, ptr %i.fx, align 16, !tbaa !8
  %wide.load337.3 = load <16 x i8>, ptr %i.fy, align 16, !tbaa !8
  %i.fz = xor <16 x i8> %wide.load336.3, splat (i8 106)
  %i.ga = xor <16 x i8> %wide.load337.3, splat (i8 106)
  store <16 x i8> %i.fz, ptr %i.fx, align 16, !tbaa !8
  store <16 x i8> %i.ga, ptr %i.fy, align 16, !tbaa !8
  br label %middle.block339

bb.an:                                            ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 92, i64 %.0209, i1 false)
  %i.gb = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef %7, i64 noundef %8) #6
  %i.gc = icmp slt i32 %i.gb, 1
  br i1 %i.gc, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gd = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.b, i64 noundef %.0209) #6
  %i.ge = icmp slt i32 %i.gd, 1
  br i1 %i.ge, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.d, i64 noundef %.0211) #6
  %i.gg = icmp slt i32 %i.gf, 1
  br i1 %i.gg, label %bb.at, label %bb.ar

middle.block339:                                  ; preds = %vector.body334.2, %vector.body334
  %i.gh = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.b, i64 noundef %.0210) #6
  %i.gi = icmp slt i32 %i.gh, 1
  br i1 %i.gi, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %middle.block339
  %i.gj = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.fi, ptr noundef nonnull %i.d, i64 noundef %.0211) #6
  %i.gk = icmp slt i32 %i.gj, 1
  br i1 %i.gk, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gl = call i32 @EVP_DigestFinal(ptr noundef nonnull %i.fi, ptr noundef %1, ptr noundef nonnull %i.e) #6
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = icmp ne ptr %2, null
  %or.cond = and i1 %i.gn, %i.gm
  br i1 %or.cond, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.go = load i32, ptr %i.e, align 4, !tbaa !9
  %i.gp = zext i32 %i.go to i64
  store i64 %i.gp, ptr %2, align 8, !tbaa !19
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %middle.block339, %bb.aq, %bb.an, %bb.ao, %bb.ap, %bb.al, %._crit_edge
  %.0196 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.al ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %middle.block339 ], [ 1, %bb.as ], [ 1, %bb.ar ]
  call void @EVP_MD_CTX_free(ptr noundef %i.fi) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %bb.s, %bb.n, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a, %bb.at
  %.1215 = phi i32 [ 0, %bb.a ], [ %.0196, %bb.at ], [ 0, %bb.y ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.o ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  ret i32 %.1215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @EVP_MD_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MD5_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tls1_md5_final_raw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !28
  %i.b = trunc i32 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.b, ptr %1, align 1, !tbaa !8
  %i.d = load i32, ptr %0, align 4, !tbaa !28
  %i.e = lshr i32 %i.d, 8
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.f, ptr %i.c, align 1, !tbaa !8
  %i.h = load i32, ptr %0, align 4, !tbaa !28
  %i.i = lshr i32 %i.h, 16
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.j, ptr %i.g, align 1, !tbaa !8
  %i.l = load i32, ptr %0, align 4, !tbaa !28
  %i.m = lshr i32 %i.l, 24
  %i.n = trunc nuw i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.n, ptr %i.k, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.r, ptr %i.o, align 1, !tbaa !8
  %i.t = load i32, ptr %i.p, align 4, !tbaa !29
  %i.u = lshr i32 %i.t, 8
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.v, ptr %i.s, align 1, !tbaa !8
  %i.x = load i32, ptr %i.p, align 4, !tbaa !29
  %i.y = lshr i32 %i.x, 16
  %i.z = trunc i32 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.z, ptr %i.w, align 1, !tbaa !8
  %2 = getelementptr i8, ptr %0, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %3, ptr %i.aa, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !8
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !8
  %i.ak = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.al = lshr i32 %i.ak, 16
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !8
  %4 = getelementptr i8, ptr %0, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %5, ptr %i.an, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31
  %i.ar = trunc i32 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !8
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !31
  %i.au = lshr i32 %i.at, 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.av, ptr %i.as, align 1, !tbaa !8
  %i.ax = load i32, ptr %i.ap, align 4, !tbaa !31
  %i.ay = lshr i32 %i.ax, 16
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !8
  %6 = getelementptr i8, ptr %0, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !31
  store i8 %7, ptr %i.ba, align 1, !tbaa !8
  ret void
}

declare void @MD5_Transform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tls1_sha1_final_raw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !33
  %i.b = lshr i32 %i.a, 24
  %i.c = trunc nuw i32 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %1, align 1, !tbaa !8
  %i.e = load i32, ptr %0, align 4, !tbaa !33
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.g, ptr %i.d, align 1, !tbaa !8
  %i.i = load i32, ptr %0, align 4, !tbaa !33
  %i.j = lshr i32 %i.i, 8
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.k, ptr %i.h, align 1, !tbaa !8
  %i.m = load i32, ptr %0, align 4, !tbaa !33
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.n, ptr %i.l, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %2 = getelementptr i8, ptr %0, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %3, ptr %i.o, align 1, !tbaa !8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !34
  %i.s = lshr i32 %i.r, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.t, ptr %i.q, align 1, !tbaa !8
  %i.v = load i32, ptr %i.p, align 4, !tbaa !34
  %i.w = lshr i32 %i.v, 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.x, ptr %i.u, align 1, !tbaa !8
  %i.z = load i32, ptr %i.p, align 4, !tbaa !34
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = getelementptr i8, ptr %0, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %5, ptr %i.ab, align 1, !tbaa !8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ag, ptr %i.ad, align 1, !tbaa !8
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !8
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !35
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.an, ptr %i.al, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %6 = getelementptr i8, ptr %0, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %7, ptr %i.ao, align 1, !tbaa !8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !36
  %i.as = lshr i32 %i.ar, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !8
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !36
  %i.aw = lshr i32 %i.av, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !8
  %i.az = load i32, ptr %i.ap, align 4, !tbaa !36
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %8 = getelementptr i8, ptr %0, i64 19
  %9 = load i8, ptr %8, align 1, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %9, ptr %i.bb, align 1, !tbaa !8
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !37
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !8
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !37
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !8
  %i.bm = load i32, ptr %i.bc, align 4, !tbaa !37
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !8
  ret void
}

declare void @SHA1_Transform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA224_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tls1_sha256_final_raw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = lshr i32 %i.a, 24
  %i.c = trunc nuw i32 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %1, align 1, !tbaa !8
  %i.e = load i32, ptr %0, align 4, !tbaa !9
  %i.f = lshr i32 %i.e, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.g, ptr %i.d, align 1, !tbaa !8
  %i.i = load i32, ptr %0, align 4, !tbaa !9
  %i.j = lshr i32 %i.i, 8
  %i.k = trunc i32 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.k, ptr %i.h, align 1, !tbaa !8
  %i.m = load i32, ptr %0, align 4, !tbaa !9
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.n, ptr %i.l, align 1, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %2 = getelementptr i8, ptr %0, i64 7
  %3 = load i8, ptr %2, align 1, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %3, ptr %i.o, align 1, !tbaa !8
  %i.r = load i32, ptr %i.p, align 4, !tbaa !9
  %i.s = lshr i32 %i.r, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.t, ptr %i.q, align 1, !tbaa !8
  %i.v = load i32, ptr %i.p, align 4, !tbaa !9
  %i.w = lshr i32 %i.v, 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.x, ptr %i.u, align 1, !tbaa !8
  %i.z = load i32, ptr %i.p, align 4, !tbaa !9
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %4 = getelementptr i8, ptr %0, i64 11
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %5, ptr %i.ab, align 1, !tbaa !8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ag, ptr %i.ad, align 1, !tbaa !8
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !8
  %i.am = load i32, ptr %i.ac, align 4, !tbaa !9
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.an, ptr %i.al, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %6 = getelementptr i8, ptr %0, i64 15
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %7, ptr %i.ao, align 1, !tbaa !8
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.as = lshr i32 %i.ar, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !8
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.aw = lshr i32 %i.av, 8
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !8
  %i.az = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %8 = getelementptr i8, ptr %0, i64 19
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %9, ptr %i.bb, align 1, !tbaa !8
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !8
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !8
  %i.bm = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %10 = getelementptr i8, ptr %0, i64 23
  %11 = load i8, ptr %10, align 1, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %11, ptr %i.bo, align 1, !tbaa !8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !8
  %i.bv = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !8
  %i.bz = load i32, ptr %i.bp, align 4, !tbaa !9
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %12 = getelementptr i8, ptr %0, i64 27
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %13, ptr %i.cb, align 1, !tbaa !8
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !8
  %i.ci = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.cj = lshr i32 %i.ci, 8
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !8
  %i.cm = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %14 = getelementptr i8, ptr %0, i64 31
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %15, ptr %i.co, align 1, !tbaa !8
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !9
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.ct, ptr %i.cq, align 1, !tbaa !8
  %i.cv = load i32, ptr %i.cp, align 4, !tbaa !9
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.cx, ptr %i.cu, align 1, !tbaa !8
  %i.cz = load i32, ptr %i.cp, align 4, !tbaa !9
  %i.da = trunc i32 %i.cz to i8
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !8
  ret void
}

declare void @SHA256_Transform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #2

declare i32 @SHA384_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tls1_sha512_final_raw(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 64)) %1) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !39
  %i.b = lshr i64 %i.a, 56
  %i.c = trunc nuw i64 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %1, align 1, !tbaa !8
  %i.e = load i64, ptr %0, align 8, !tbaa !39
  %i.f = lshr i64 %i.e, 48
  %i.g = trunc i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.g, ptr %i.d, align 1, !tbaa !8
  %i.i = load i64, ptr %0, align 8, !tbaa !39
  %i.j = lshr i64 %i.i, 40
  %i.k = trunc i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.k, ptr %i.h, align 1, !tbaa !8
  %i.m = load i64, ptr %0, align 8, !tbaa !39
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.o, ptr %i.l, align 1, !tbaa !8
  %i.q = load i64, ptr %0, align 8, !tbaa !39
  %i.r = lshr i64 %i.q, 24
  %i.s = trunc i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.s, ptr %i.p, align 1, !tbaa !8
  %i.u = load i64, ptr %0, align 8, !tbaa !39
  %i.v = lshr i64 %i.u, 16
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.w, ptr %i.t, align 1, !tbaa !8
  %i.y = load i64, ptr %0, align 8, !tbaa !39
  %i.z = lshr i64 %i.y, 8
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !8
  %i.ac = load i64, ptr %0, align 8, !tbaa !39
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39
  %i.ah = lshr i64 %i.ag, 56
  %i.ai = trunc nuw i64 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !8
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !39
  %i.al = lshr i64 %i.ak, 48
  %i.am = trunc i64 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !8
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !39
  %i.ap = lshr i64 %i.ao, 40
  %i.aq = trunc i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !8
  %i.as = load i64, ptr %i.af, align 8, !tbaa !39
  %i.at = lshr i64 %i.as, 32
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !8
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !39
  %i.ax = lshr i64 %i.aw, 24
  %i.ay = trunc i64 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !8
  %i.ba = load i64, ptr %i.af, align 8, !tbaa !39
  %i.bb = lshr i64 %i.ba, 16
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !8
  %i.be = load i64, ptr %i.af, align 8, !tbaa !39
  %i.bf = lshr i64 %i.be, 8
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !8
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !39
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bn = lshr i64 %i.bm, 56
  %i.bo = trunc nuw i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !8
  %i.bq = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.br = lshr i64 %i.bq, 48
  %i.bs = trunc i64 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !8
  %i.bu = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bv = lshr i64 %i.bu, 40
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !8
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.ca, ptr %i.bx, align 1, !tbaa !8
  %i.cc = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.cd = lshr i64 %i.cc, 24
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.ce, ptr %i.cb, align 1, !tbaa !8
  %i.cg = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.ch = lshr i64 %i.cg, 16
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.ci, ptr %i.cf, align 1, !tbaa !8
  %i.ck = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.cl = lshr i64 %i.ck, 8
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.cm, ptr %i.cj, align 1, !tbaa !8
  %i.co = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.ct = lshr i64 %i.cs, 56
  %i.cu = trunc nuw i64 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 %i.cu, ptr %i.cq, align 1, !tbaa !8
  %i.cw = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.cx = lshr i64 %i.cw, 48
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.cy, ptr %i.cv, align 1, !tbaa !8
  %i.da = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.db = lshr i64 %i.da, 40
  %i.dc = trunc i64 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.dc, ptr %i.cz, align 1, !tbaa !8
  %i.de = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.df = lshr i64 %i.de, 32
  %i.dg = trunc i64 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.dg, ptr %i.dd, align 1, !tbaa !8
  %i.di = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.dj = lshr i64 %i.di, 24
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !8
  %i.dm = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.dn = lshr i64 %i.dm, 16
  %i.do = trunc i64 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !8
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.dr = lshr i64 %i.dq, 8
  %i.ds = trunc i64 %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 %i.ds, ptr %i.dp, align 1, !tbaa !8
  %i.du = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.dv = trunc i64 %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.dz = lshr i64 %i.dy, 56
  %i.ea = trunc nuw i64 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 %i.ea, ptr %i.dw, align 1, !tbaa !8
  %i.ec = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.ed = lshr i64 %i.ec, 48
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 34
  store i8 %i.ee, ptr %i.eb, align 1, !tbaa !8
  %i.eg = load i64, ptr %i.dx, align 8, !tbaa !39
  %i.eh = lshr i64 %i.eg, 40
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !8
end_hunk_0
