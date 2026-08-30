Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngtrans?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@png_set_add_alpha:bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i32 %1 to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 634
  store i16 %i.e, ptr %i.f, align 2, !tbaa !37, !alias.scope !40
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.h = load i8, ptr %i.g, align 1, !tbaa !27, !alias.scope !40
  switch i8 %i.h, label %bb.i [
    i8 2, label %bb.e
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 4, ptr %i.i, align 4, !tbaa !38, !alias.scope !40
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.k = load i8, ptr %i.j, align 8, !tbaa !25, !alias.scope !40
  %i.l = icmp ugt i8 %i.k, 7
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i8 2, ptr %i.m, align 4, !tbaa !38, !alias.scope !40
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #10
  br label %png_set_filler.exit

bb.i:                                             ; preds = %bb.d
  tail call void @png_app_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #10
  br label %png_set_filler.exit

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8, !alias.scope !40
  %i.p = or i32 %i.o, 32768
  store i32 %i.p, ptr %i.n, align 4, !tbaa !8, !alias.scope !40
  %i.q = icmp eq i32 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !39, !alias.scope !40 ; 2 uses
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = or i32 %i.s, 128
  store i32 %i.t, ptr %i.r, align 8, !tbaa !39, !alias.scope !40
  br label %png_set_filler.exit

bb.l:                                             ; preds = %bb.j
  %i.u = and i32 %i.s, -129
  store i32 %i.u, ptr %i.r, align 8, !tbaa !39, !alias.scope !40
  br label %png_set_filler.exit

png_set_filler.exit:                              ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %i.x = and i32 %i.w, 32768
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %png_set_filler.exit
  %i.y = or i32 %i.w, 16777216
  store i32 %i.y, ptr %i.v, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %png_set_filler.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_swap_alpha(ptr noalias nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = or i32 %i.c, 131072
  store i32 %i.d, ptr %i.b, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_invert_alpha(ptr noalias nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = or i32 %i.c, 524288
  store i32 %i.d, ptr %i.b, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_set_invert_mono(ptr noalias nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = or i32 %i.c, 32
  store i32 %i.d, ptr %i.b, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_invert(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !43
  switch i8 %i.b, label %.loopexit [
    i8 0, label %bb.b
    i8 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 9 uses
  %.not47 = icmp eq i64 %i.d, 0
  br i1 %.not47, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.d, 4
  br i1 %min.iters.check, label %.lr.ph45.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.f = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 3 uses
  %i.g = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !34
  %wide.load58 = load <16 x i8>, ptr %i.g, align 1, !tbaa !34
  %i.h = xor <16 x i8> %wide.load, splat (i8 -1)
  %i.i = xor <16 x i8> %wide.load58, splat (i8 -1)
  store <16 x i8> %i.h, ptr %next.gep, align 1, !tbaa !34
  store <16 x i8> %i.i, ptr %i.g, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.d, -4                     ; 4 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %next.gep61 = getelementptr i8, ptr %1, i64 %index60 ; 2 uses
  %wide.load62 = load <4 x i8>, ptr %next.gep61, align 1, !tbaa !34
  %i.l = xor <4 x i8> %wide.load62, splat (i8 -1)
  store <4 x i8> %i.l, ptr %next.gep61, align 1, !tbaa !34
  %index.next63 = add nuw i64 %index60, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %i.d, %n.vec59
  br i1 %cmp.n64, label %.loopexit, label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03344.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ]
  %.03443.ph = phi ptr [ %1, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.k, %vec.epilog.middle.block ]
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %.03344 = phi i64 [ %i.q, %.lr.ph45 ], [ %.03344.ph, %.lr.ph45.preheader ]
  %.03443 = phi ptr [ %i.p, %.lr.ph45 ], [ %.03443.ph, %.lr.ph45.preheader ] ; 3 uses
  %i.n = load i8, ptr %.03443, align 1, !tbaa !34
  %i.o = xor i8 %i.n, -1
  store i8 %i.o, ptr %.03443, align 1, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %.03443, i64 1
  %i.q = add nuw i64 %.03344, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph45, !llvm.loop !52

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.s = load i8, ptr %i.r, align 1, !tbaa !53
  switch i8 %i.s, label %.loopexit [
    i8 8, label %bb.d
    i8 16, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !45   ; 3 uses
  %.not46 = icmp eq i64 %i.u, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph42.preheader

.lr.ph42.preheader:                               ; preds = %bb.d
  %i.v = add i64 %i.u, -1
  %i.w = lshr i64 %i.v, 1
  %i.x = add nuw i64 %i.w, 1                      ; 2 uses
  %xtraiter70 = and i64 %i.x, 3                   ; 3 uses
  %i.y = icmp ult i64 %i.u, 7
  br i1 %i.y, label %.lr.ph42.epil.preheader, label %.lr.ph42.preheader.new

.lr.ph42.preheader.new:                           ; preds = %.lr.ph42.preheader
  %unroll_iter73 = and i64 %i.x, -4
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42, %.lr.ph42.preheader.new
  %.03440 = phi ptr [ %1, %.lr.ph42.preheader.new ], [ %i.ak, %.lr.ph42 ] ; 6 uses
  %niter74 = phi i64 [ 0, %.lr.ph42.preheader.new ], [ %niter74.next.3, %.lr.ph42 ]
  %i.z = load i8, ptr %.03440, align 1, !tbaa !34
  %i.aa = xor i8 %i.z, -1
  store i8 %i.aa, ptr %.03440, align 1, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.03440, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = xor i8 %i.ac, -1
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %.03440, i64 4 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %i.ag = xor i8 %i.af, -1
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %.03440, i64 6 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  %i.aj = xor i8 %i.ai, -1
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.03440, i64 8 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3.not = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3.not, label %.loopexit.loopexit67.unr-lcssa, label %.lr.ph42, !llvm.loop !54

bb.e:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.an = add i64 %i.am, -1                       ; 2 uses
  %i.ao = lshr i64 %i.an, 2                       ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03138 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ar = load i8, ptr %.03138, align 1, !tbaa !34
  %i.as = xor i8 %i.ar, -1
  store i8 %i.as, ptr %.03138, align 1, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %.03138, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !34
  %i.av = xor i8 %i.au, -1
  store i8 %i.av, ptr %i.at, align 1, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %.03138, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.ay = xor i8 %i.ax, -1
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.03138, i64 5 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  %i.bb = xor i8 %i.ba, -1
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %.03138, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit68.unr-lcssa, label %.lr.ph, !llvm.loop !55

.loopexit.loopexit67.unr-lcssa:                   ; preds = %.lr.ph42
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.loopexit, label %.lr.ph42.epil.preheader

.lr.ph42.epil.preheader:                          ; preds = %.loopexit.loopexit67.unr-lcssa, %.lr.ph42.preheader
  %.03440.epil.init = phi ptr [ %1, %.lr.ph42.preheader ], [ %i.ak, %.loopexit.loopexit67.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph42.epil

.lr.ph42.epil:                                    ; preds = %.lr.ph42.epil, %.lr.ph42.epil.preheader
  %.03440.epil = phi ptr [ %i.bf, %.lr.ph42.epil ], [ %.03440.epil.init, %.lr.ph42.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph42.epil ], [ 0, %.lr.ph42.epil.preheader ]
  %i.bd = load i8, ptr %.03440.epil, align 1, !tbaa !34
  %i.be = xor i8 %i.bd, -1
  store i8 %i.be, ptr %.03440.epil, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %.03440.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph42.epil, !llvm.loop !56

.loopexit.loopexit68.unr-lcssa:                   ; preds = %.lr.ph
  %i.bg = and i64 %i.an, 4
  %lcmp.mod.not.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit68.unr-lcssa, %.lr.ph.preheader
  %.03138.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bc, %.loopexit.loopexit68.unr-lcssa ] ; 3 uses
  %lcmp.mod69 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.bh = load i8, ptr %.03138.epil.init, align 1, !tbaa !34
  %i.bi = xor i8 %i.bh, -1
  store i8 %i.bi, ptr %.03138.epil.init, align 1, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %.03138.epil.init, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  %i.bl = xor i8 %i.bk, -1
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit68.unr-lcssa, %.loopexit.loopexit67.unr-lcssa, %.lr.ph42.epil, %.lr.ph45, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_swap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53
  %i.c = icmp eq i8 %i.b, 16
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = load i8, ptr %i.e, align 2, !tbaa !59
  %i.g = zext i8 %i.f to i32
  %i.h = mul i32 %i.d, %i.g                       ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %xtraiter = and i32 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.h, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.014 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.j = load i8, ptr %.014, align 1, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %.014, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  store i8 %i.l, ptr %.014, align 1, !tbaa !34
  store i8 %i.j, ptr %i.k, align 1, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %.014, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 3 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !34
  store i8 %i.p, ptr %i.m, align 1, !tbaa !34
  store i8 %i.n, ptr %i.o, align 1, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %.014, i64 5 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  store i8 %i.t, ptr %i.q, align 1, !tbaa !34
  store i8 %i.r, ptr %i.s, align 1, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %.014, i64 6 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 7 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  store i8 %i.x, ptr %i.u, align 1, !tbaa !34
  store i8 %i.v, ptr %i.w, align 1, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !60

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.014.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.y, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.014.epil = phi ptr [ %i.ac, %.lr.ph.epil ], [ %.014.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.z = load i8, ptr %.014.epil, align 1, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.epil, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  store i8 %i.ab, ptr %.014.epil, align 1, !tbaa !34
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !61

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_packswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53    ; 2 uses
  %i.c = icmp ult i8 %i.b, 8
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  switch i8 %i.b, label %.loopexit [
    i8 1, label %bb.e
    i8 2, label %bb.c
    i8 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ @fourbppswaptable, %bb.d ], [ @twobppswaptable, %bb.c ], [ @onebppswaptable, %bb.b ]
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.01315 = phi ptr [ %i.k, %.lr.ph ], [ %1, %bb.e ] ; 3 uses
  %i.g = load i8, ptr %.01315, align 1, !tbaa !34
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !34
  store i8 %i.j, ptr %.01315, align 1, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %.01315, i64 1 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.f
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !62

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_strip_channel(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !59
  switch i8 %i.e, label %bb.k [
    i8 2, label %bb.b
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.g = load i8, ptr %i.f, align 1, !tbaa !53    ; 2 uses
  switch i8 %i.g, label %bb.k [
    i8 8, label %bb.c
    i8 16, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.not87 = icmp eq i32 %2, 0                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.074 = select i1 %.not87, ptr %i.i, ptr %i.h   ; 2 uses
  %.0 = select i1 %.not87, ptr %i.h, ptr %1       ; 2 uses
  %i.j = icmp ult ptr %.074, %i.c
  br i1 %i.j, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.c, %.lr.ph105
  %.1103 = phi ptr [ %i.l, %.lr.ph105 ], [ %.0, %bb.c ] ; 2 uses
  %.175102 = phi ptr [ %i.m, %.lr.ph105 ], [ %.074, %bb.c ] ; 2 uses
  %i.k = load i8, ptr %.175102, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %.1103, i64 1 ; 2 uses
  store i8 %i.k, ptr %.1103, align 1, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %.175102, i64 2 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.c
  br i1 %i.n, label %.lr.ph105, label %._crit_edge106, !llvm.loop !63

bb.d:                                             ; preds = %bb.b
  %.not86 = icmp eq i32 %2, 0                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.276 = select i1 %.not86, ptr %i.p, ptr %i.o   ; 2 uses
  %.2 = select i1 %.not86, ptr %i.o, ptr %1       ; 2 uses
  %i.q = icmp ult ptr %.276, %i.c
  br i1 %i.q, label %.lr.ph99, label %._crit_edge106

.lr.ph99:                                         ; preds = %bb.d, %.lr.ph99
  %.397 = phi ptr [ %i.v, %.lr.ph99 ], [ %.2, %bb.d ] ; 3 uses
  %.37796 = phi ptr [ %i.w, %.lr.ph99 ], [ %.276, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.37796, i64 1
  %i.s = load i8, ptr %.37796, align 1, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.397, i64 1
  store i8 %i.s, ptr %.397, align 1, !tbaa !34
  %i.u = load i8, ptr %i.r, align 1, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %.397, i64 2 ; 2 uses
  store i8 %i.u, ptr %i.t, align 1, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %.37796, i64 4 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.c
  br i1 %i.x, label %.lr.ph99, label %._crit_edge106, !llvm.loop !64

._crit_edge106:                                   ; preds = %.lr.ph99, %.lr.ph105, %bb.d, %bb.c
  %.478.a = phi ptr [ %.0, %bb.c ], [ %.2, %bb.d ], [ %i.l, %.lr.ph105 ], [ %i.v, %.lr.ph99 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.g, ptr %i.y, align 1, !tbaa !65
  store i8 1, ptr %i.d, align 2, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !43
  %i.ab = icmp eq i8 %i.aa, 4
  br i1 %i.ab, label %bb.e, label %bb.j

bb.e:                                             ; preds = %._crit_edge106
  store i8 0, ptr %i.z, align 8, !tbaa !43
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !53
  switch i8 %i.ad, label %bb.k [
    i8 8, label %bb.g
    i8 16, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %.not85 = icmp eq i32 %2, 0                     ; 2 uses
  %.579.idx = select i1 %.not85, i64 4, i64 1     ; 2 uses
  %.5.idx = select i1 %.not85, i64 3, i64 0
  %.5 = getelementptr inbounds nuw i8, ptr %1, i64 %.5.idx ; 2 uses
  %i.ae = icmp samesign ult i64 %.579.idx, %i.b
  br i1 %i.ae, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %bb.g
  %.4 = getelementptr inbounds nuw i8, ptr %1, i64 %.579.idx
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  %.591 = phi ptr [ %i.am, %.lr.ph93 ], [ %.5, %.lr.ph93.preheader ] ; 4 uses
  %.68090 = phi ptr [ %i.an, %.lr.ph93 ], [ %.4, %.lr.ph93.preheader ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.68090, i64 1
  %i.ag = load i8, ptr %.68090, align 1, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %.591, i64 1
  store i8 %i.ag, ptr %.591, align 1, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %.68090, i64 2
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.591, i64 2
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !34
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %.591, i64 3 ; 2 uses
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %.68090, i64 4 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.c
  br i1 %i.ao, label %.lr.ph93, label %._crit_edge94, !llvm.loop !66

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %.781.idx = select i1 %.not, i64 8, i64 2       ; 2 uses
  %.7.idx = select i1 %.not, i64 6, i64 0
  %.7 = getelementptr inbounds nuw i8, ptr %1, i64 %.7.idx ; 2 uses
  %i.ap = icmp samesign ult i64 %.781.idx, %i.b
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge94

.lr.ph.preheader:                                 ; preds = %bb.h
  %.6 = getelementptr inbounds nuw i8, ptr %1, i64 %.781.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.789 = phi ptr [ %i.bg, %.lr.ph ], [ %.7, %.lr.ph.preheader ] ; 7 uses
  %.888 = phi ptr [ %i.bh, %.lr.ph ], [ %.6, %.lr.ph.preheader ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.888, i64 1
  %i.ar = load i8, ptr %.888, align 1, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %.789, i64 1
  store i8 %i.ar, ptr %.789, align 1, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %.888, i64 2
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %.789, i64 2
  store i8 %i.au, ptr %i.as, align 1, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %.888, i64 3
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %.789, i64 3
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.888, i64 4
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %.789, i64 4
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %.888, i64 5
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %.789, i64 5
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !34
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %.789, i64 6 ; 2 uses
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %.888, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.c
  br i1 %i.bi, label %.lr.ph, label %._crit_edge94, !llvm.loop !67

._crit_edge94:                                    ; preds = %.lr.ph, %.lr.ph93, %bb.h, %bb.g
  %.sink116 = phi i8 [ 24, %bb.g ], [ 48, %bb.h ], [ 24, %.lr.ph93 ], [ 48, %.lr.ph ]
  %.9 = phi ptr [ %.5, %bb.g ], [ %.7, %bb.h ], [ %i.am, %.lr.ph93 ], [ %i.bg, %.lr.ph ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sink116, ptr %i.bj, align 1, !tbaa !65
  store i8 3, ptr %i.d, align 2, !tbaa !59
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !43
  %i.bm = icmp eq i8 %i.bl, 6
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge94
  store i8 2, ptr %i.bk, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge94, %._crit_edge106, %bb.e
  %.10 = phi ptr [ %.478.a, %bb.e ], [ %.478.a, %._crit_edge106 ], [ %.9, %bb.i ], [ %.9, %._crit_edge94 ]
  %i.bn = ptrtoint ptr %.10 to i64
  %i.bo = ptrtoint ptr %1 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.f, %bb.b, %bb.j
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_do_bgr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !43    ; 3 uses
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !58     ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.f = load i8, ptr %i.e, align 1, !tbaa !53
  switch i8 %i.f, label %.loopexit [
    i8 8, label %bb.c
    i8 16, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  switch i8 %i.b, label %.loopexit [
    i8 2, label %.preheader
    i8 6, label %.preheader66
  ]

.preheader66:                                     ; preds = %bb.c
  %.not85 = icmp eq i32 %i.d, 0
  br i1 %.not85, label %.loopexit, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %.preheader66
  %xtraiter108 = and i32 %i.d, 3                  ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.lr.ph79.epil.preheader, label %.lr.ph79.preheader.new

.lr.ph79.preheader.new:                           ; preds = %.lr.ph79.preheader
  %unroll_iter111 = and i32 %i.d, -4
  br label %.lr.ph79

.preheader:                                       ; preds = %bb.c
  %.not86 = icmp eq i32 %i.d, 0
  br i1 %.not86, label %.loopexit, label %.lr.ph82.preheader

.lr.ph82.preheader:                               ; preds = %.preheader
  %xtraiter113 = and i32 %i.d, 3                  ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.lr.ph82.epil.preheader, label %.lr.ph82.preheader.new

.lr.ph82.preheader.new:                           ; preds = %.lr.ph82.preheader
  %unroll_iter117 = and i32 %i.d, -4
  br label %.lr.ph82

.lr.ph82:                                         ; preds = %.lr.ph82, %.lr.ph82.preheader.new
  %.081 = phi ptr [ %1, %.lr.ph82.preheader.new ], [ %i.x, %.lr.ph82 ] ; 10 uses
  %niter118 = phi i32 [ 0, %.lr.ph82.preheader.new ], [ %niter118.next.3, %.lr.ph82 ]
  %i.i = load i8, ptr %.081, align 1, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %.081, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  store i8 %i.k, ptr %.081, align 1, !tbaa !34
  store i8 %i.i, ptr %i.j, align 1, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %.081, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %.081, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !34
  store i8 %i.o, ptr %i.l, align 1, !tbaa !34
  store i8 %i.m, ptr %i.n, align 1, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %.081, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %.081, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34
  store i8 %i.s, ptr %i.p, align 1, !tbaa !34
  store i8 %i.q, ptr %i.r, align 1, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %.081, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %.081, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !34
  store i8 %i.w, ptr %i.t, align 1, !tbaa !34
  store i8 %i.u, ptr %i.v, align 1, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %.081, i64 12 ; 2 uses
  %niter118.next.3 = add nuw i32 %niter118, 4     ; 2 uses
  %niter118.ncmp.3 = icmp eq i32 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph82, !llvm.loop !68

.lr.ph79:                                         ; preds = %.lr.ph79, %.lr.ph79.preheader.new
  %.06278 = phi ptr [ %1, %.lr.ph79.preheader.new ], [ %i.an, %.lr.ph79 ] ; 10 uses
  %niter112 = phi i32 [ 0, %.lr.ph79.preheader.new ], [ %niter112.next.3, %.lr.ph79 ]
  %i.y = load i8, ptr %.06278, align 1, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %.06278, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !34
  store i8 %i.aa, ptr %.06278, align 1, !tbaa !34
  store i8 %i.y, ptr %i.z, align 1, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.06278, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %.06278, i64 6 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !34
  store i8 %i.ae, ptr %i.ab, align 1, !tbaa !34
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.06278, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %.06278, i64 10 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !34
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %.06278, i64 12 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %.06278, i64 14 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !34
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %.06278, i64 16 ; 2 uses
  %niter112.next.3 = add nuw i32 %niter112, 4     ; 2 uses
  %niter112.ncmp.3 = icmp eq i32 %niter112.next.3, %unroll_iter111
  br i1 %niter112.ncmp.3, label %.loopexit.loopexit99.unr-lcssa, label %.lr.ph79, !llvm.loop !69

bb.d:                                             ; preds = %bb.b
  switch i8 %i.b, label %.loopexit [
    i8 2, label %.preheader68
    i8 6, label %.preheader70
  ]

.preheader70:                                     ; preds = %bb.d
  %.not83 = icmp eq i32 %i.d, 0
  br i1 %.not83, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader70
  %xtraiter = and i32 %i.d, 1
  %i.ao = icmp eq i32 %i.d, 1
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.d, -2
  br label %.lr.ph

.preheader68:                                     ; preds = %bb.d
  %.not84 = icmp eq i32 %i.d, 0
  br i1 %.not84, label %.loopexit, label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.preheader68
  %xtraiter103 = and i32 %i.d, 1
  %i.ap = icmp eq i32 %i.d, 1
  br i1 %i.ap, label %.lr.ph76.epil.preheader, label %.lr.ph76.preheader.new

.lr.ph76.preheader.new:                           ; preds = %.lr.ph76.preheader
  %unroll_iter106 = and i32 %i.d, -2
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76, %.lr.ph76.preheader.new
  %.06174 = phi ptr [ %1, %.lr.ph76.preheader.new ], [ %i.bf, %.lr.ph76 ] ; 10 uses
  %niter107 = phi i32 [ 0, %.lr.ph76.preheader.new ], [ %niter107.next.1, %.lr.ph76 ]
  %i.aq = load i8, ptr %.06174, align 1, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.06174, i64 4 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !34
  store i8 %i.as, ptr %.06174, align 1, !tbaa !34
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %.06174, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %.06174, i64 5 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !34
  store i8 %i.au, ptr %i.av, align 1, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %.06174, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %.06174, i64 10 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !34
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !34
  %i.bb = getelementptr inbounds nuw i8, ptr %.06174, i64 7 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %.06174, i64 11 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !34
  store i8 %i.be, ptr %i.bb, align 1, !tbaa !34
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !34
  %i.bf = getelementptr inbounds nuw i8, ptr %.06174, i64 12 ; 2 uses
  %niter107.next.1 = add nuw i32 %niter107, 2     ; 2 uses
  %niter107.ncmp.1 = icmp eq i32 %niter107.next.1, %unroll_iter106
  br i1 %niter107.ncmp.1, label %.loopexit.loopexit100.unr-lcssa, label %.lr.ph76, !llvm.loop !70

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
end_hunk_0
