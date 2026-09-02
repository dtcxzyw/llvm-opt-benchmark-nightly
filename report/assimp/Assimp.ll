Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL26stbi__compute_transparencyP9stbi__pngPhi:bb.a
  %xtraiter = and i32 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.a, 4
  br i1 %i.e, label %.lr.ph7.epil.preheader, label %.lr.ph7.preheader.new

.lr.ph7.preheader.new:                            ; preds = %.lr.ph7.preheader
  %unroll_iter = and i32 %i.a, -4
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7, %.lr.ph7.preheader.new
  %.06 = phi ptr [ %.24.val, %.lr.ph7.preheader.new ], [ %i.ac, %.lr.ph7 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph7.preheader.new ], [ %niter.next.3, %.lr.ph7 ]
  %i.f = load i8, ptr %.06, align 1
  %i.g = load i8, ptr %0, align 1
  %i.h = icmp ne i8 %i.f, %i.g
  %i.i = sext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %0, align 1
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 3
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = load i8, ptr %0, align 1
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.06, i64 5
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.06, i64 6
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %0, align 1
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.06, i64 7
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.06, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph7, !llvm.loop !184

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.ap, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.f ]
  %i.ad = load i8, ptr %.14, align 1
  %i.ae = load i8, ptr %0, align 1
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = load i8, ptr %i.c, align 1
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = load i8, ptr %i.d, align 1
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 0, ptr %i.ao, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.aq = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.aq, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !185

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
  %i.ar = load i8, ptr %.06.epil, align 1
  %i.as = load i8, ptr %0, align 1
  %i.at = icmp ne i8 %i.ar, %i.as
  %i.au = sext i1 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.epil, i64 1
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph7.epil, !llvm.loop !186

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph7.epil, %.preheader1, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr nofree readonly captures(none) %.0.val, ptr nofree captures(none) %.24.val) unnamed_addr #35 {
bb.a:
  %i.a = load i32, ptr %.0.val, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = mul i32 %i.c, %i.a                       ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.f = load i32, ptr %i.e, align 4
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
  %i.i = load i8, ptr %.04616, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.04616, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  store i8 %i.k, ptr %.04616, align 1
  store i8 %i.i, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.04616, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.04616, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1
  store i8 %i.o, ptr %i.l, align 1
  store i8 %i.m, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.p, align 1
  store i8 %i.q, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  store i8 %i.w, ptr %i.t, align 1
  store i8 %i.u, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !187

bb.b:                                             ; preds = %bb.a
  %i.y = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL31stbi__unpremultiply_on_load_set)
  %i.z = load i32, ptr %i.y, align 4
  %.not = icmp eq i32 %i.z, 0
  %i.aa = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__unpremultiply_on_load_local)
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4
  %i.ad = select i1 %.not, i32 %i.ac, i32 %i.ab
  %.not50 = icmp eq i32 %i.ad, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not50, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.ae = icmp ult i32 %i.d, 4
  br i1 %i.ae, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.aw, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.av, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ag = load i8, ptr %i.af, align 1             ; 3 uses
  %i.ah = load i8, ptr %.14711, align 1           ; 2 uses
  %.not51 = icmp eq i8 %i.ag, 0
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ai = lshr i8 %i.ag, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1
  %0 = zext i8 %i.ak to i32
  %1 = mul nuw nsw i32 %0, 255
  %2 = zext nneg i8 %i.ai to i32                  ; 3 uses
  %3 = add nuw nsw i32 %1, %2
  %.lhs.trunc = trunc nuw i32 %3 to i16
  %.rhs.trunc = zext i8 %i.ag to i16              ; 3 uses
  %i.al = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.am = trunc i16 %i.al to i8
  store i8 %i.am, ptr %.14711, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %4 = zext i8 %i.ao to i32
  %5 = mul nuw nsw i32 %4, 255
  %6 = add nuw nsw i32 %5, %2
  %.lhs.trunc1 = trunc nuw i32 %6 to i16
  %i.ap = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.aq = trunc i16 %i.ap to i8
  store i8 %i.aq, ptr %i.an, align 1
  %7 = zext i8 %i.ah to i32
  %8 = mul nuw nsw i32 %7, 255
  %9 = add nuw nsw i32 %8, %2
  %.lhs.trunc4 = trunc nuw i32 %9 to i16
  %i.ar = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.as = trunc i16 %i.ar to i8
  store i8 %i.as, ptr %i.aj, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  store i8 %i.au, ptr %.14711, align 1
  store i8 %i.ah, ptr %i.at, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.aw = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !188

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.bm, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.ax = load i8, ptr %.24813, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  store i8 %i.az, ptr %.24813, align 1
  store i8 %i.ax, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1
  store i8 %i.bd, ptr %i.ba, align 1
  store i8 %i.bb, ptr %i.bc, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1
  store i8 %i.bh, ptr %i.be, align 1
  store i8 %i.bf, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1
  store i8 %i.bl, ptr %i.bi, align 1
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !189

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bq, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bn = load i8, ptr %.04616.epil, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1
  store i8 %i.bp, ptr %.04616.epil, align 1
  store i8 %i.bn, ptr %i.bo, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !190

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.bm, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bu, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.br = load i8, ptr %.24813.epil, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %.24813.epil, align 1
  store i8 %i.br, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !191

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #30 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
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

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a, %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nuw nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.v, align 8
  br label %bb.ak

bb.e:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %_ZL21stbi__mad3sizes_validiiii.exit.thread

bb.g:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %_ZL21stbi__mad3sizes_validiiii.exit.thread, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit.thread:       ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %bb.e, %_ZL21stbi__mul2sizes_validii.exit.i, %_ZL21stbi__mul2sizes_validii.exit12.i
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.11, ptr %i.af, align 8
  br label %bb.ak

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.g, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 8 uses
  br i1 %i.k, label %_ZL21stbi__mad2sizes_validiii.exit, label %_ZL21stbi__mul2sizes_validii.exit.i299
end_hunk_0
begin_hunk_1_@_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii:bb.a
  br i1 %exitcond461.not, label %._crit_edge, label %bb.m, !llvm.loop !227

._crit_edge:                                      ; preds = %.loopexit, %bb.l
  tail call void @free(ptr noundef %i.as) #47
  br label %bb.ak

bb.aj:                                            ; preds = %bb.m
  %i.aag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.30, ptr %i.aag, align 8
  tail call void @free(ptr noundef %i.as) #47
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge, %bb.k, %bb.i, %_ZL21stbi__mad2sizes_validiii.exit.thread, %_ZL21stbi__mad3sizes_validiiii.exit.thread, %bb.d
  %.0271 = phi i32 [ 0, %bb.i ], [ 0, %bb.d ], [ 0, %_ZL21stbi__mad3sizes_validiiii.exit.thread ], [ 0, %bb.k ], [ 0, %_ZL21stbi__mad2sizes_validiii.exit.thread ], [ 0, %bb.aj ], [ 1, %._crit_edge ]
  ret i32 %.0271
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__zbuild_huffmanP14stbi__zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #38 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
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
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !229

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
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70.sink.split, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
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
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
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
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c, !llvm.loop !231

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = sub i32 %i.ce, %i.ch
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.cc
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = zext i16 %i.ck to i32
  %i.cm = add nsw i32 %i.ci, %i.cl
  %3 = shl nuw nsw i32 %i.cb, 9
  %4 = trunc nuw nsw i64 %indvars.iv94 to i32
  %5 = or i32 %3, %4
  %6 = trunc i32 %5 to i16
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.bx, i64 %i.cn
  store i8 %i.ca, ptr %i.co, align 1
  %i.cp = trunc i64 %indvars.iv94 to i16
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cn
  store i16 %i.cp, ptr %i.cq, align 2
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
  store i16 %6, ptr %i.cy, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.cx ; 2 uses
  %i.cz = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.cz, label %bb.h, label %.loopexit, !llvm.loop !232

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.da = add nsw i32 %i.ce, 1
  store i32 %i.da, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !233

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %.str.39.sink = phi ptr [ @.str.38, %._crit_edge ], [ @.str.38, %bb.b ], [ @.str.38, %._crit_edge.thread ], [ @.str.39, %bb.c ]
  %i.db = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr %.str.39.sink, ptr %i.db, align 8
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret i32 %.065
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #39

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #40

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #36

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #46 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.e, align 8
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load <2 x ptr>, ptr %i.b, align 8
  %i.m = load <2 x ptr>, ptr %i.k, align 8
  %i.n = icmp ult <2 x ptr> %i.l, %i.m            ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.r = phi i1 [ %i.q, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #45
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #45
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.e
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.e ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load <2 x ptr>, ptr %i.g, align 8
  %i.i = load <2 x ptr>, ptr %2, align 8
  %i.j = icmp ult <2 x ptr> %i.h, %i.i            ; 2 uses
  %i.k = extractelement <2 x i1> %i.j, i64 0
  %i.l = extractelement <2 x i1> %i.j, i64 1
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.n, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ult ptr %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.02024.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp ult ptr %i.q, %i.v
  %i.x = select i1 %i.t, i1 %i.w, i1 false        ; 2 uses
  %.in.v.i = select i1 %i.x, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !234

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.x, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %.019.lcssa29.i, %i.z
  br i1 %i.aa, label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.ab = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #49 ; 3 uses
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.pre85 = load ptr, ptr %.phi.trans.insert84, align 8
  %.pre86 = load ptr, ptr %2, align 8
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.pre88 = load ptr, ptr %.phi.trans.insert87, align 8
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre90 = load ptr, ptr %.phi.trans.insert89, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.ac = phi ptr [ %.pre90, %bb.f ], [ %i.q, %._crit_edge.i ]
  %i.ad = phi ptr [ %.pre88, %bb.f ], [ %i.v, %._crit_edge.i ]
  %i.ae = phi ptr [ %.pre86, %bb.f ], [ %i.o, %._crit_edge.i ]
  %i.af = phi ptr [ %.pre85, %bb.f ], [ %i.s, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.ab, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.ag = icmp ult ptr %i.af, %i.ae
  %i.ah = icmp ult ptr %i.ad, %i.ac
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false     ; 2 uses
  %spec.select.i = select i1 %i.ai, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.ai, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeI11aiLogStreamSt4pairIKS0_PN6Assimp9LogStreamEESt10_Select1stIS6_ENS3_5mpredESaIS6_EE24_M_get_insert_unique_posERS2_.exit

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %2, align 8               ; 8 uses
  %i.al = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
end_hunk_1
