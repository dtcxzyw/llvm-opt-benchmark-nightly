Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZL26stbi__compute_transparencyP9stbi__pngPhi:bb.a
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %xtraiter = and i32 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.a, 4
  br i1 %i.e, label %.lr.ph7.epil.preheader, label %.lr.ph7.preheader.new

.lr.ph7.preheader.new:                            ; preds = %.lr.ph7.preheader
  %unroll_iter = and i32 %i.a, -4
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7, %.lr.ph7.preheader.new
  %.06 = phi ptr [ %.24.val, %.lr.ph7.preheader.new ], [ %i.ac, %.lr.ph7 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph7.preheader.new ], [ %niter.next.3, %.lr.ph7 ]
  %i.f = load i8, ptr %.06, align 1, !tbaa !35
  %i.g = load i8, ptr %0, align 1, !tbaa !35
  %i.h = icmp ne i8 %i.f, %i.g
  %i.i = sext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = load i8, ptr %0, align 1, !tbaa !35
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = load i8, ptr %0, align 1, !tbaa !35
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.06, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.06, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = load i8, ptr %0, align 1, !tbaa !35
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.06, i64 7
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.06, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph7, !llvm.loop !300

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.ap, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.f ]
  %i.ad = load i8, ptr %.14, align 1, !tbaa !35
  %i.ae = load i8, ptr %0, align 1, !tbaa !35
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = load i8, ptr %i.c, align 1, !tbaa !35
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35
  %i.am = load i8, ptr %i.d, align 1, !tbaa !35
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 0, ptr %i.ao, align 1, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.aq = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !301

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph7.epil.preheader

.lr.ph7.epil.preheader:                           ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph7.preheader
  %.06.epil.init = phi ptr [ %.24.val, %.lr.ph7.preheader ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph7.epil

.lr.ph7.epil:                                     ; preds = %.lr.ph7.epil, %.lr.ph7.epil.preheader
  %.06.epil = phi ptr [ %i.aw, %.lr.ph7.epil ], [ %.06.epil.init, %.lr.ph7.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph7.epil ], [ 0, %.lr.ph7.epil.preheader ]
  %i.ar = load i8, ptr %.06.epil, align 1, !tbaa !35
  %i.as = load i8, ptr %0, align 1, !tbaa !35
  %i.at = icmp ne i8 %i.ar, %i.as
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.epil, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph7.epil, !llvm.loop !302

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph7.epil, %.preheader1, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr nofree readonly captures(none) %.0.val, ptr nofree captures(none) %.24.val) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %.0.val, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52
  %i.d = mul i32 %i.c, %i.a                       ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not21 = icmp eq i32 %i.d, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.preheader
  %xtraiter35 = and i32 %i.d, 3                   ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.lr.ph18.epil.preheader, label %.lr.ph18.preheader.new

.lr.ph18.preheader.new:                           ; preds = %.lr.ph18.preheader
  %unroll_iter39 = and i32 %i.d, -4
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader.new
  %.04616 = phi ptr [ %.24.val, %.lr.ph18.preheader.new ], [ %i.x, %.lr.ph18 ] ; 10 uses
  %niter40 = phi i32 [ 0, %.lr.ph18.preheader.new ], [ %niter40.next.3, %.lr.ph18 ]
  %i.i = load i8, ptr %.04616, align 1, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %.04616, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  store i8 %i.k, ptr %.04616, align 1, !tbaa !35
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.04616, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %.04616, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  store i8 %i.o, ptr %i.l, align 1, !tbaa !35
  store i8 %i.m, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  store i8 %i.s, ptr %i.p, align 1, !tbaa !35
  store i8 %i.q, ptr %i.r, align 1, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  store i8 %i.w, ptr %i.t, align 1, !tbaa !35
  store i8 %i.u, ptr %i.v, align 1, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !303

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4, !tbaa !23
  %.not = icmp eq i32 %i.y, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.d, 4
  br i1 %i.z, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.ar, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.aq, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35  ; 3 uses
  %i.ac = load i8, ptr %.14711, align 1, !tbaa !35 ; 2 uses
  %.not50 = icmp eq i8 %i.ab, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %0 = zext i8 %i.af to i16
  %1 = mul nuw i16 %0, 255
  %2 = zext nneg i8 %i.ad to i16                  ; 3 uses
  %.lhs.trunc = add nuw i16 %1, %2
  %.rhs.trunc = zext i8 %i.ab to i16              ; 3 uses
  %i.ag = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.ah = trunc i16 %i.ag to i8
  store i8 %i.ah, ptr %.14711, align 1, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !35
  %3 = zext i8 %i.aj to i16
  %4 = mul nuw i16 %3, 255
  %.lhs.trunc1 = add nuw i16 %4, %2
  %i.ak = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !35
  %5 = zext i8 %i.ac to i16
  %6 = mul nuw i16 %5, 255
  %.lhs.trunc4 = add nuw i16 %6, %2
  %i.am = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.an = trunc i16 %i.am to i8
  store i8 %i.an, ptr %i.ae, align 1, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !35
  store i8 %i.ap, ptr %.14711, align 1, !tbaa !35
  store i8 %i.ac, ptr %i.ao, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.ar = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !304

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.bh, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.as = load i8, ptr %.24813, align 1, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !35
  store i8 %i.au, ptr %.24813, align 1, !tbaa !35
  store i8 %i.as, ptr %i.at, align 1, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !35
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !35
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !35
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !305

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bl, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bi = load i8, ptr %.04616.epil, align 1, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  store i8 %i.bk, ptr %.04616.epil, align 1, !tbaa !35
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !306

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bh, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bp, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bm = load i8, ptr %.24813.epil, align 1, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  store i8 %i.bo, ptr %.24813.epil, align 1, !tbaa !35
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !307

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !47
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 12 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nuw nsw i32 %5, %4                   ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !48
  br label %.critedge.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #36 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !48
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.critedge.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.critedge.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.critedge.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond695 = or i1 %.not.i, %i.ad
  br i1 %or.cond695, label %.critedge.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 5 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5
  %i.ai = icmp ult i32 %2, %i.ah
  br i1 %i.ai, label %.critedge.sink.split, label %.preheader738

.preheader738:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.aj = icmp slt i32 %6, 8                      ; 2 uses
  br i1 %i.k, label %._crit_edge826.thread, label %.lr.ph825

.lr.ph825:                                        ; preds = %.preheader738
  %i.ak = icmp ugt i32 %i.af, %4
end_hunk_0
begin_hunk_1_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  store i8 %i.xz, ptr %i.xx, align 1, !tbaa !35
  %i.yb = add nsw i32 %.2.i.i, -8                 ; 2 uses
  %.not77.i.i.7 = icmp eq i32 %i.yb, 0
  br i1 %.not77.i.i.7, label %.loopexit.i.i, label %.preheader143.i.i, !llvm.loop !507

.loopexit.i.i:                                    ; preds = %.preheader143.i.i.prol.loopexit, %.preheader143.i.i, %middle.block, %vec.epilog.middle.block, %bb.ep, %.preheader.preheader.i.i, %bb.eo, %bb.dd
  %.9.i.i = phi ptr [ %scevgep226.i.i, %.preheader.preheader.i.i ], [ %.263.i.i, %bb.ep ], [ %i.ra, %bb.dd ], [ %.263.i.i, %bb.eo ], [ %i.ws, %vec.epilog.middle.block ], [ %i.wl, %middle.block ], [ %.lcssa590.unr, %.preheader143.i.i.prol.loopexit ], [ %i.ya, %.preheader143.i.i ]
  br label %bb.cf, !llvm.loop !508

_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i: ; preds = %bb.de
  store ptr %.061.i.i, ptr %i.e, align 8, !tbaa !111
  br label %bb.eq

bb.eq:                                            ; preds = %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i
  %i.yc = phi ptr [ %.061.i.i, %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i ], [ %i.gf, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i ]
  %.not22.i = icmp eq i32 %i.ca, 0
  br i1 %.not22.i, label %thread-pre-split.i, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit, !llvm.loop !509

_ZL16stbi__parse_zlibP10stbi__zbufi.exit:         ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit30.i, %bb.ae, %bb.af, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i, %bb.eq, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.thread.i, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i, %bb.ct, %bb.cw, %bb.cy, %bb.cz, %bb.db, %bb.dg, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit110.thread.i.i, %bb.ed, %bb.eg, %bb.ei, %bb.ej, %bb.el
  %.0.i = phi i32 [ 0, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.thread.i ], [ 0, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.thread.i ], [ 0, %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i ], [ 0, %bb.db ], [ 0, %bb.ei ], [ 0, %bb.ej ], [ 0, %bb.el ], [ 0, %bb.eg ], [ 0, %bb.cw ], [ 0, %bb.ed ], [ 0, %_ZL21stbi__zhuffman_decodeP10stbi__zbufP14stbi__zhuffman.exit110.thread.i.i ], [ 0, %bb.dg ], [ 0, %bb.ct ], [ 0, %bb.cy ], [ 0, %bb.cz ], [ 0, %_ZL27stbi__compute_huffman_codesP10stbi__zbuf.exit.i ], [ 0, %bb.ae ], [ 0, %_ZL14stbi__zreceiveP10stbi__zbufi.exit30.i ], [ 0, %bb.af ], [ 1, %bb.eq ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #24 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !514

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod161)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !23
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !23
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !515

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !23
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8, !tbaa !23
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr160 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr160, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4, !tbaa !23
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !41
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !41
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23 ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !23
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !516

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4, !tbaa !23
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !35  ; 6 uses
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !23 ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !41
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !41
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %3 = trunc i64 %indvars.iv94 to i16
  %.tr = zext i8 %i.ca to i16
  %4 = shl i16 %.tr, 9
  %5 = or i16 %4, %3
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bx, i64 %i.cn
  store i8 %i.ca, ptr %i.co, align 1, !tbaa !35
  %i.cp = trunc i64 %indvars.iv94 to i16
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cn
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !41
  %i.cr = icmp ult i8 %i.ca, 10
  br i1 %i.cr, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cs = zext i16 %rev.i.i to i32
  %i.ct = sub nuw nsw i32 16, %i.cb
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = shl nuw nsw i32 1, %i.cb
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = zext nneg i32 %i.cv to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.cw, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %5, ptr %i.cy, align 2, !tbaa !41
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.cx ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.cz, label %bb.h, label %.loopexit, !llvm.loop !517

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.da = add nsw i32 %i.ce, 1
  store i32 %i.da, ptr %i.cd, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !518

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %.str.80.sink = phi ptr [ @.str.79, %._crit_edge ], [ @.str.79, %bb.b ], [ @.str.79, %._crit_edge.thread ], [ @.str.80, %bb.c ]
  store ptr %.str.80.sink, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !22
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret i32 %.065
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @stbi_zlib_decode_malloc(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.a = tail call noalias noundef dereferenceable_or_null(16384) ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) 16384) #36 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %stbi_zlib_decode_malloc_guesssize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !108
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !109
  %i.f = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 16384, i32 noundef 1, i32 noundef 1)
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not11.i = icmp eq ptr %2, null
  br i1 %.not11.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !110
  br label %stbi_zlib_decode_malloc_guesssize.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %2, align 4, !tbaa !23
  br label %stbi_zlib_decode_malloc_guesssize.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110
  call void @free(ptr noundef %i.p) #35
  br label %stbi_zlib_decode_malloc_guesssize.exit

stbi_zlib_decode_malloc_guesssize.exit:           ; preds = %bb.a, %._crit_edge.i, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre.i, %._crit_edge.i ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @stbi_zlib_decode_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.stbi__zbuf, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !108
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !109
  %i.d = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 1)
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %.0 = select i1 %.not, i32 -1, i32 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @stbi_zlib_decode_noheader_malloc(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #11 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.a = tail call noalias noundef dereferenceable_or_null(16384) ptr @malloc(i64 noundef 16384) #36 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !108
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !109
  %i.f = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef 16384, i32 noundef 1, i32 noundef 0)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !110
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110  ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %2, align 4, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110
  call void @free(ptr noundef %i.p) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre, %._crit_edge ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @stbi_zlib_decode_noheader_buffer(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.stbi__zbuf, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %2, ptr %4, align 8, !tbaa !108
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !109
  %i.d = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0)
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %.0 = select i1 %.not, i32 -1, i32 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_set_unpremultiply_on_load(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_convert_iphone_png_to_rgb(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @_ZL27stbi__de_iphone_flag_global, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str) ; 6 uses
  %.not = icmp eq ptr %i.a, null
end_hunk_1
begin_hunk_2_@stbi_is_16_bit_from_memory:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !22
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.q = call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.q, 16
  %..i = zext i1 %.not.i to i32
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

_ZL16stbi__is_16_mainP13stbi__context.exit:       ; preds = %_ZL14stbi__png_is16P13stbi__context.exit.i, %bb.b
  %.0.i = phi i32 [ 1, %_ZL14stbi__png_is16P13stbi__context.exit.i ], [ %..i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 0, 2) i32 @stbi_is_16_bit_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 7 uses
  %3 = alloca %struct.stbi__context, align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.j = call noundef i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !7 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !33
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !31
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !31
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !35
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit

_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %3, ptr %2, align 8, !tbaa !47
  %i.y = call fastcc noundef i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %_ZL14stbi__png_is16P13stbi__context.exit.i, label %bb.d

_ZL14stbi__png_is16P13stbi__context.exit.i:       ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

bb.d:                                             ; preds = %_ZL21stbi__start_callbacksP13stbi__contextP17stbi_io_callbacksPv.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !22
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.af = call fastcc noundef i32 @_ZL14stbi__pnm_infoP13stbi__contextPiS1_S1_(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.af, 16
  %..i = zext i1 %.not.i to i32
  br label %_ZL16stbi__is_16_mainP13stbi__context.exit

_ZL16stbi__is_16_mainP13stbi__context.exit:       ; preds = %_ZL14stbi__png_is16P13stbi__context.exit.i, %bb.d
  %.0.i = phi i32 [ 1, %_ZL14stbi__png_is16P13stbi__context.exit.i ], [ %..i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stbi_flip_vertically_on_write(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  store i32 %0, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @stbi_write_bmp_to_func(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %6 = alloca %struct.stbi__write_context, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !117
  %i.c = call fastcc noundef i32 @_ZL19stbi_write_bmp_coreP19stbi__write_contextiiiPKv(ptr noundef %6, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19stbi_write_bmp_coreP19stbi__write_contextiiiPKv(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %3, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %1, 3                            ; 2 uses
  %i.b = mul nsw i32 %1, 3
  %i.c = add nsw i32 %i.b, %i.a
  %i.d = mul nsw i32 %i.c, %2
  %i.e = add nsw i32 %i.d, 54
  %i.f = tail call noundef i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4, i32 noundef 0, i32 noundef %i.a, ptr noundef nonnull @.str.82, i32 noundef 66, i32 noundef 77, i32 noundef %i.e, i32 noundef 0, i32 noundef 0, i32 noundef 54, i32 noundef 40, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %1, 2
  %i.h = mul i32 %i.g, %2
  %i.i = add nsw i32 %i.h, 122
  %i.j = tail call noundef i32 (ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ...) @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef %0, i32 poison, i32 poison, i32 noundef %1, i32 noundef %2, i32 noundef 4, i32 noundef 1, ptr noundef %4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.83, i32 noundef 66, i32 noundef 77, i32 noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 122, i32 noundef 108, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 32, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16711680, i32 noundef 65280, i32 noundef 255, i32 noundef -16777216, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr noundef nonnull %0, i32 %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 4) %9, ptr nofree noundef readonly captures(none) %10, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %11 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = or i32 %4, %3
  %or.cond.not = icmp sgt i32 %i.b, -1
  br i1 %or.cond.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.va_start.p0(ptr nonnull %11)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef %10, ptr noundef %11)
  call void @llvm.va_end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @_ZL30stbi__flip_vertically_on_write, align 4, !tbaa !23
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 -1, i32 1 ; 2 uses
  %i.e = add nsw i32 %4, -1
  %.027.i = select i1 %.not.i, i32 %i.e, i32 0    ; 2 uses
  %.026.i = select i1 %.not.i, i32 -1, i32 %4     ; 2 uses
  %.not35.i = icmp eq i32 %3, 0
  %.not.i.i = icmp eq i32 %8, 0                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %.not33.i.i = icmp eq i32 %6, 0
  %i.i = sext i32 %5 to i64                       ; 2 uses
  br i1 %.not35.i, label %.preheader.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %bb.c
  %i.j = zext nneg i32 %.027.i to i64
  %i.k = sext i32 %spec.select.i to i64
  %i.l = zext nneg i32 %3 to i64                  ; 2 uses
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i, %.preheader.us.preheader.i
  %indvars.iv38.i = phi i64 [ %i.j, %.preheader.us.preheader.i ], [ %indvars.iv.next39.i, %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i ] ; 2 uses
  %i.m = mul nsw i64 %indvars.iv38.i, %i.l
  br label %bb.d

bb.d:                                             ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i ] ; 2 uses
  %i.n = add nsw i64 %indvars.iv.i, %i.m
  %i.o = mul nsw i64 %i.n, %i.i
  %i.p = getelementptr inbounds i8, ptr %7, i64 %i.o ; 8 uses
  switch i32 %5, label %bb.n [
    i32 2, label %bb.i
    i32 1, label %bb.i
    i32 4, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %.preheader.i.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = load i8, ptr %i.p, align 1, !tbaa !35
  %i.v = load i32, ptr %i.f, align 8, !tbaa !118  ; 3 uses
  %i.w = sext i32 %i.v to i64
  %i.x = add nsw i64 %i.w, 3
  %i.y = icmp ult i64 %i.x, 65
  br i1 %i.y, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !116
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.z(ptr noundef %i.aa, ptr noundef nonnull %i.h, i32 noundef %i.v), !inline_history !520
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i

_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i: ; preds = %bb.g, %bb.f
  %i.ab = phi i32 [ 0, %bb.g ], [ %i.v, %bb.f ]   ; 2 uses
  %i.ac = add nsw i32 %i.ab, 3
  store i32 %i.ac, ptr %i.f, align 8, !tbaa !118
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %i.ad ; 3 uses
  store i8 %i.r, ptr %i.ae, align 1, !tbaa !35
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  store i8 %i.t, ptr %i.af, align 1, !tbaa !35
  %i.ag = getelementptr i8, ptr %i.ae, i64 2
  store i8 %i.u, ptr %i.ag, align 1, !tbaa !35
  br label %bb.n

.preheader.i.us.i:                                ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %12 = zext i8 %i.ai to i16                      ; 2 uses
  %i.aj = load i8, ptr %i.p, align 1, !tbaa !35
  %i.ak = xor i8 %i.aj, -1
  %.neg47.i.us.i = zext i8 %i.ak to i16
  %.lhs.trunc.i.us.i = mul nuw i16 %.neg47.i.us.i, %12
  %i.al = udiv i16 %.lhs.trunc.i.us.i, 255
  %.zext.i.us.i = trunc nuw i16 %i.al to i8
  %i.am = xor i8 %.zext.i.us.i, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %13 = load <2 x i8>, ptr %i.an, align 1, !tbaa !35
  %14 = xor <2 x i8> %13, <i8 0, i8 -1>
  %15 = zext <2 x i8> %14 to <2 x i16>
  %16 = insertelement <2 x i16> poison, i16 %12, i64 0
  %17 = shufflevector <2 x i16> %16, <2 x i16> poison, <2 x i32> zeroinitializer
  %18 = mul nuw <2 x i16> %17, %15
  %19 = udiv <2 x i16> %18, splat (i16 255)       ; 2 uses
  %20 = bitcast <2 x i16> %19 to <4 x i8>
  %21 = extractelement <4 x i8> %20, i64 0
  %22 = bitcast <2 x i16> %19 to <4 x i8>
  %.zext46.i.us.i = extractelement <4 x i8> %22, i64 2
  %i.ao = xor i8 %.zext46.i.us.i, -1
  %i.ap = load i32, ptr %i.f, align 8, !tbaa !118 ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %i.aq, 3
  %i.as = icmp ult i64 %i.ar, 65
  br i1 %i.as, label %.thread.i.us.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.us.i
  %i.at = load ptr, ptr %0, align 8, !tbaa !116
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.at(ptr noundef %i.au, ptr noundef nonnull %i.h, i32 noundef %i.ap), !inline_history !520
  br label %.thread.i.us.i

.thread.i.us.i:                                   ; preds = %bb.h, %.preheader.i.us.i
  %i.av = phi i32 [ 0, %bb.h ], [ %i.ap, %.preheader.i.us.i ] ; 2 uses
  %i.aw = add nsw i32 %i.av, 3
  store i32 %i.aw, ptr %i.f, align 8, !tbaa !118
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds i8, ptr %i.h, i64 %i.ax ; 3 uses
  store i8 %i.ao, ptr %i.ay, align 1, !tbaa !35
  %i.az = getelementptr i8, ptr %i.ay, i64 1
  store i8 %21, ptr %i.az, align 1, !tbaa !35
  %i.ba = getelementptr i8, ptr %i.ay, i64 2
  store i8 %i.am, ptr %i.ba, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.bb = load i8, ptr %i.p, align 1, !tbaa !35   ; 4 uses
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !118 ; 5 uses
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  br i1 %.not33.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i64 %i.bd, 3
  %i.bf = icmp ult i64 %i.be, 65
  br i1 %i.bf, label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %0, align 8, !tbaa !116
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.bg(ptr noundef %i.bh, ptr noundef nonnull %i.h, i32 noundef %i.bc), !inline_history !520
  br label %_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i

_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i: ; preds = %bb.k, %bb.j
  %i.bi = phi i32 [ 0, %bb.k ], [ %i.bc, %bb.j ]  ; 2 uses
  %i.bj = add nsw i32 %i.bi, 3
  store i32 %i.bj, ptr %i.f, align 8, !tbaa !118
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %i.h, i64 %i.bk ; 3 uses
  store i8 %i.bb, ptr %i.bl, align 1, !tbaa !35
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !35
  %i.bn = getelementptr i8, ptr %i.bl, i64 2
  store i8 %i.bb, ptr %i.bn, align 1, !tbaa !35
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bo = add nsw i64 %i.bd, 1
  %i.bp = icmp ult i64 %i.bo, 65
  br i1 %i.bp, label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %0, align 8, !tbaa !116
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.bq(ptr noundef %i.br, ptr noundef nonnull %i.h, i32 noundef %i.bc), !inline_history !521
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i

_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i: ; preds = %bb.m, %bb.l
  %i.bs = phi i32 [ 0, %bb.m ], [ %i.bc, %bb.l ]  ; 2 uses
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.f, align 8, !tbaa !118
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds i8, ptr %i.h, i64 %i.bu
  store i8 %i.bb, ptr %i.bv, align 1, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit.i.us.i, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit.i.us.i, %_ZL13stbiw__write3P19stbi__write_contexthhh.exit36.i.us.i, %bb.d
  br i1 %.not.i.i, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr i8, ptr %i.p, i64 %i.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35
  %i.bz = load i32, ptr %i.f, align 8, !tbaa !118 ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = add nsw i64 %i.ca, 1
  %i.cc = icmp ult i64 %i.cb, 65
  br i1 %i.cc, label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %0, align 8, !tbaa !116
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.cd(ptr noundef %i.ce, ptr noundef nonnull %i.h, i32 noundef %i.bz), !inline_history !521
  br label %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i

_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i: ; preds = %bb.p, %bb.o
  %i.cf = phi i32 [ 0, %bb.p ], [ %i.bz, %bb.o ]  ; 2 uses
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.f, align 8, !tbaa !118
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds i8, ptr %i.h, i64 %i.ch
  store i8 %i.by, ptr %i.ci, align 1, !tbaa !35
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i: ; preds = %_ZL13stbiw__write1P19stbi__write_contexth.exit37.i.us.i, %bb.n, %.thread.i.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !522

bb.q:                                             ; preds = %._crit_edge.us.i
  %i.cj = load ptr, ptr %0, align 8, !tbaa !116
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.cj(ptr noundef %i.ck, ptr noundef nonnull %i.h, i32 noundef %i.co), !inline_history !523
  store i32 0, ptr %i.f, align 8, !tbaa !118
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i

_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i: ; preds = %._crit_edge.us.i, %bb.q
  %i.cl = load ptr, ptr %0, align 8, !tbaa !116
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.cl(ptr noundef %i.cm, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %9), !inline_history !524
  %indvars.iv.next39.i = add nsw i64 %indvars.iv38.i, %i.k ; 2 uses
  %i.cn = trunc nsw i64 %indvars.iv.next39.i to i32
  %.not31.us.i = icmp eq i32 %.026.i, %i.cn
  br i1 %.not31.us.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.us.i, !llvm.loop !525

._crit_edge.us.i:                                 ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.i
  %i.co = load i32, ptr %i.f, align 8, !tbaa !118 ; 2 uses
  %.not.i32.us.i = icmp eq i32 %i.co, 0
  br i1 %.not.i32.us.i, label %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i, label %bb.q

.preheader.i:                                     ; preds = %bb.c, %_ZL18stbiw__write_flushP19stbi__write_context.exit.i
  %.134.i = phi i32 [ %i.cu, %_ZL18stbiw__write_flushP19stbi__write_context.exit.i ], [ %.027.i, %bb.c ]
  %i.cp = load i32, ptr %i.f, align 8, !tbaa !118 ; 2 uses
  %.not.i32.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i32.i, label %_ZL18stbiw__write_flushP19stbi__write_context.exit.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.cq = load ptr, ptr %0, align 8, !tbaa !116
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.cq(ptr noundef %i.cr, ptr noundef nonnull %i.h, i32 noundef %i.cp), !inline_history !523
  store i32 0, ptr %i.f, align 8, !tbaa !118
  br label %_ZL18stbiw__write_flushP19stbi__write_context.exit.i

_ZL18stbiw__write_flushP19stbi__write_context.exit.i: ; preds = %bb.r, %.preheader.i
  %i.cs = load ptr, ptr %0, align 8, !tbaa !116
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.cs(ptr noundef %i.ct, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 4) %9), !inline_history !524
  %i.cu = add nsw i32 %.134.i, %spec.select.i     ; 2 uses
  %.not31.i = icmp eq i32 %i.cu, %.026.i
  br i1 %.not31.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.i, !llvm.loop !525

_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit: ; preds = %_ZL18stbiw__write_flushP19stbi__write_context.exit.us.i, %_ZL18stbiw__write_flushP19stbi__write_context.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit
  %.0 = phi i32 [ 1, %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #26

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !35      ; 2 uses
  %.not20 = icmp eq i8 %i.d, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %i.h = phi i8 [ %i.d, %.lr.ph ], [ %i.av, %bb.o ]
  %.021 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.o ]
  %i.i = getelementptr inbounds nuw i8, ptr %.021, i64 1 ; 2 uses
  switch i8 %i.h, label %._crit_edge [
    i8 32, label %bb.o
    i8 49, label %bb.c
    i8 50, label %bb.g
    i8 52, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.j = load i32, ptr %2, align 8                ; 3 uses
  %i.k = icmp ult i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = add nuw nsw i32 %i.j, 8
  store i32 %i.o, ptr %2, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !23
  %i.t = trunc i32 %i.s to i8
  store i8 %i.t, ptr %i.a, align 1, !tbaa !35
  %i.u = load ptr, ptr %0, align 8, !tbaa !116
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !117
  call void %i.u(ptr noundef %i.v, ptr noundef nonnull %i.a, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.o

end_hunk_2
