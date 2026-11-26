Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexUtils?download=true
inline.NumInlined: 292
inline.NumDeleted: 159
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4Ptex4v2_49PtexUtils16decodeDifferenceEPviNS0_8DataTypeE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.not10.i = icmp eq i32 %1, 0
  br i1 %.not10.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter15 = and i64 %i.a, 7
  %i.b = icmp ult i32 %1, 8
  br i1 %i.b, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter19 = and i64 %i.a, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi i8 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ]
  %.0911.i = phi ptr [ %0, %.lr.ph.i.preheader.new ], [ %i.z, %.lr.ph.i ] ; 10 uses
  %niter20 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter20.next.7, %.lr.ph.i ]
  %i.c = load i8, ptr %.0911.i, align 1, !tbaa !14
  %i.d = add i8 %i.c, %.012.i                     ; 2 uses
  store i8 %i.d, ptr %.0911.i, align 1, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = add i8 %i.f, %i.d                        ; 2 uses
  store i8 %i.g, ptr %i.e, align 1, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %.0911.i, i64 2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = add i8 %i.i, %i.g                        ; 2 uses
  store i8 %i.j, ptr %i.h, align 1, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i, i64 3 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = add i8 %i.l, %i.j                        ; 2 uses
  store i8 %i.m, ptr %i.k, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = add i8 %i.o, %i.m                        ; 2 uses
  store i8 %i.p, ptr %i.n, align 1, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %.0911.i, i64 5 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = add i8 %i.r, %i.p                        ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i, i64 6 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !14
  %i.v = add i8 %i.u, %i.s                        ; 2 uses
  store i8 %i.v, ptr %i.t, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i, i64 7 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = add i8 %i.x, %i.v                        ; 3 uses
  store i8 %i.y, ptr %i.w, align 1, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i, i64 8 ; 2 uses
  %niter20.next.7 = add i64 %niter20, 8           ; 2 uses
  %niter20.ncmp.7 = icmp eq i64 %niter20.next.7, %unroll_iter19
  br i1 %niter20.ncmp.7, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !85

bb.c:                                             ; preds = %bb.a
  %.off.i = add i32 %1, 1
  %.not10.i4 = icmp ult i32 %.off.i, 3
  br i1 %.not10.i4, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit, label %.lr.ph.i5.preheader

.lr.ph.i5.preheader:                              ; preds = %bb.c
  %i.aa = sdiv i32 %1, 2
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add i64 %i.ab, 9223372036854775807
  %i.ad = and i64 %i.ac, 9223372036854775807      ; 2 uses
  %i.ae = add nuw i64 %i.ad, 1                    ; 2 uses
  %xtraiter = and i64 %i.ae, 7                    ; 3 uses
  %i.af = icmp samesign ult i64 %i.ad, 7
  br i1 %i.af, label %.lr.ph.i5.epil.preheader, label %.lr.ph.i5.preheader.new

.lr.ph.i5.preheader.new:                          ; preds = %.lr.ph.i5.preheader
  %unroll_iter = and i64 %i.ae, -8
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.lr.ph.i5, %.lr.ph.i5.preheader.new
  %.012.i6 = phi i16 [ 0, %.lr.ph.i5.preheader.new ], [ %i.bc, %.lr.ph.i5 ]
  %.0911.i7 = phi ptr [ %0, %.lr.ph.i5.preheader.new ], [ %i.bd, %.lr.ph.i5 ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.i5.preheader.new ], [ %niter.next.7, %.lr.ph.i5 ]
  %i.ag = load i16, ptr %.0911.i7, align 2, !tbaa !21
  %i.ah = add i16 %i.ag, %.012.i6                 ; 2 uses
  store i16 %i.ah, ptr %.0911.i7, align 2, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 2 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !21
  %i.ak = add i16 %i.aj, %i.ah                    ; 2 uses
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 4 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !21
  %i.an = add i16 %i.am, %i.ak                    ; 2 uses
  store i16 %i.an, ptr %i.al, align 2, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 6 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !21
  %i.aq = add i16 %i.ap, %i.an                    ; 2 uses
  store i16 %i.aq, ptr %i.ao, align 2, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 8 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !21
  %i.at = add i16 %i.as, %i.aq                    ; 2 uses
  store i16 %i.at, ptr %i.ar, align 2, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 10 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !21
  %i.aw = add i16 %i.av, %i.at                    ; 2 uses
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 12 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !21
  %i.az = add i16 %i.ay, %i.aw                    ; 2 uses
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 14 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !21
  %i.bc = add i16 %i.bb, %i.az                    ; 3 uses
  store i16 %i.bc, ptr %i.ba, align 2, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i7, i64 16 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit13.unr-lcssa, label %.lr.ph.i5, !llvm.loop !86

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %i.be = and i32 %1, 7
  %lcmp.mod17.not = icmp eq i32 %i.be, 0
  br i1 %lcmp.mod17.not, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i8 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit.unr-lcssa ]
  %.0911.i.epil.init = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.z, %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit.unr-lcssa ]
  %i.bf = and i32 %1, 7
  %lcmp.mod18 = icmp ne i32 %i.bf, 0
  tail call void @llvm.assume(i1 %lcmp.mod18)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi i8 [ %i.bh, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.0911.i.epil = phi ptr [ %i.bi, %.lr.ph.i.epil ], [ %.0911.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter16 = phi i64 [ %epil.iter16.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bg = load i8, ptr %.0911.i.epil, align 1, !tbaa !14
  %i.bh = add i8 %i.bg, %.012.i.epil              ; 2 uses
  store i8 %i.bh, ptr %.0911.i.epil, align 1, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.epil, i64 1
  %epil.iter16.next = add i64 %epil.iter16, 1     ; 2 uses
  %epil.iter16.cmp.not = icmp eq i64 %epil.iter16.next, %xtraiter15
  br i1 %epil.iter16.cmp.not, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit, label %.lr.ph.i.epil, !llvm.loop !87

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit13.unr-lcssa: ; preds = %.lr.ph.i5
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit, label %.lr.ph.i5.epil.preheader

.lr.ph.i5.epil.preheader:                         ; preds = %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit13.unr-lcssa, %.lr.ph.i5.preheader
  %.012.i6.epil.init = phi i16 [ 0, %.lr.ph.i5.preheader ], [ %i.bc, %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit13.unr-lcssa ]
  %.0911.i7.epil.init = phi ptr [ %0, %.lr.ph.i5.preheader ], [ %i.bd, %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit13.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i5.epil

.lr.ph.i5.epil:                                   ; preds = %.lr.ph.i5.epil, %.lr.ph.i5.epil.preheader
  %.012.i6.epil = phi i16 [ %i.bk, %.lr.ph.i5.epil ], [ %.012.i6.epil.init, %.lr.ph.i5.epil.preheader ]
  %.0911.i7.epil = phi ptr [ %i.bl, %.lr.ph.i5.epil ], [ %.0911.i7.epil.init, %.lr.ph.i5.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i5.epil ], [ 0, %.lr.ph.i5.epil.preheader ]
  %i.bj = load i16, ptr %.0911.i7.epil, align 2, !tbaa !21
  %i.bk = add i16 %i.bj, %.012.i6.epil            ; 2 uses
  store i16 %i.bk, ptr %.0911.i7.epil, align 2, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i7.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit, label %.lr.ph.i5.epil, !llvm.loop !88

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit: ; preds = %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit13.unr-lcssa, %.lr.ph.i5.epil, %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_116decodeDifferenceIhEEvPT_i.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils6reduceEPKviiiPviNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  switch i32 %6, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %3, %1                       ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %.not53.i = icmp eq i32 %i.b, 0
  br i1 %.not53.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %bb.b
  %i.e = mul nsw i32 %7, %2                       ; 4 uses
  %.neg.i = sdiv i32 %i.e, -2
  %i.f = add i32 %.neg.i, %5
  %i.g = shl i32 %1, 1                            ; 2 uses
  %i.h = sub nsw i32 %i.g, %i.e
  %i.i = sext i32 %i.e to i64
  %i.j = sext i32 %7 to i64                       ; 14 uses
  %i.k = sext i32 %1 to i64                       ; 6 uses
  %i.l = add i32 %7, %1
  %i.m = sext i32 %i.l to i64                     ; 6 uses
  %i.n = sext i32 %i.h to i64
  %i.o = sext i32 %i.f to i64
  %.not3945.i = icmp eq i32 %i.e, 0
  br i1 %.not3945.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i.preheader.preheader

.lr.ph49.i.preheader.preheader:                   ; preds = %.lr.ph57.i
  %8 = add i64 %i.a, %i.m
  %i.p = sext i32 %i.g to i64                     ; 2 uses
  %i.q = add i64 %i.a, %i.k
  %i.r = add i64 %i.a, %i.j                       ; 3 uses
  %i.s = mul nsw i64 %i.j, -2
  %i.t = shl nsw i64 %i.j, 1
  %i.u = add i64 %i.r, -1
  %min.iters.check252 = icmp ult i32 %7, 4
  %min.iters.check261 = icmp ult i32 %7, 16
  %n.vec263 = and i64 %i.j, -16                   ; 5 uses
  %cmp.n274 = icmp eq i64 %n.vec263, %i.j
  %i.v = and i32 %7, 12
  %min.epilog.iters.check = icmp eq i32 %i.v, 0
  %n.vec275 = and i64 %i.j, -4                    ; 4 uses
  %cmp.n284 = icmp eq i64 %n.vec275, %i.j
  br label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %.lr.ph49.i.preheader.preheader, %._crit_edge50.i.loopexit.split
  %indvar246 = phi i64 [ 0, %.lr.ph49.i.preheader.preheader ], [ %indvar.next247, %._crit_edge50.i.loopexit.split ] ; 3 uses
  %.055.i = phi ptr [ %0, %.lr.ph49.i.preheader.preheader ], [ %i.ae, %._crit_edge50.i.loopexit.split ] ; 2 uses
  %.03654.i = phi ptr [ %4, %.lr.ph49.i.preheader.preheader ], [ %i.af, %._crit_edge50.i.loopexit.split ]
  %i.w = mul i64 %indvar246, %i.p
  %i.x = add i64 %i.u, %i.w
  %i.y = mul i64 %indvar246, %i.p                 ; 4 uses
  %i.z = add i64 %8, %i.y
  %i.aa = add i64 %i.q, %i.y
  %i.ab = add i64 %i.r, %i.y
  %i.ac = add i64 %i.y, %i.a
  %i.ad = getelementptr inbounds i8, ptr %.055.i, i64 %i.i ; 2 uses
  br label %iter.check

._crit_edge50.i.loopexit.split:                   ; preds = %._crit_edge.i.loopexit
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.n ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.lcssa, i64 %i.o
  %.not.i = icmp eq ptr %i.ae, %i.d
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %.not.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i.preheader, !llvm.loop !89

iter.check:                                       ; preds = %.lr.ph49.i.preheader, %._crit_edge.i.loopexit
  %indvar248 = phi i64 [ 0, %.lr.ph49.i.preheader ], [ %indvar.next249, %._crit_edge.i.loopexit ] ; 3 uses
  %.147.i = phi ptr [ %.055.i, %.lr.ph49.i.preheader ], [ %i.cu, %._crit_edge.i.loopexit ] ; 7 uses
  %.13746.i = phi ptr [ %.03654.i, %.lr.ph49.i.preheader ], [ %.lcssa, %._crit_edge.i.loopexit ] ; 7 uses
  %i.ag = mul i64 %i.t, %indvar248
  %i.ah = add i64 %i.x, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %.147.i, i64 %i.j ; 2 uses
  br i1 %min.iters.check252, label %.lr.ph.i.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %iter.check
  %.13746.i250 = ptrtoaddr ptr %.13746.i to i64   ; 4 uses
  %i.aj = mul i64 %indvar248, %i.s                ; 4 uses
  %i.ak = sub i64 %i.aj, %i.ac
  %i.al = add i64 %i.ak, %.13746.i250
  %i.am = add i64 %i.al, -1
  %diff.check254 = icmp ult i64 %i.am, 15
  %i.an = sub i64 %i.aj, %i.ab
  %i.ao = add i64 %i.an, %.13746.i250
  %i.ap = add i64 %i.ao, -1
  %diff.check255 = icmp ult i64 %i.ap, 15
  %conflict.rdx256 = or i1 %diff.check254, %diff.check255
  %i.aq = sub i64 %i.aj, %i.aa
  %i.ar = add i64 %i.aq, %.13746.i250
  %i.as = add i64 %i.ar, -1
  %diff.check257 = icmp ult i64 %i.as, 15
  %conflict.rdx258 = or i1 %conflict.rdx256, %diff.check257
  %i.at = sub i64 %i.aj, %i.z
  %i.au = add i64 %i.at, %.13746.i250
  %i.av = add i64 %i.au, -1
  %diff.check259 = icmp ult i64 %i.av, 15
  %conflict.rdx260 = or i1 %conflict.rdx258, %diff.check259
  br i1 %conflict.rdx260, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck253
  br i1 %min.iters.check261, label %vec.epilog.ph, label %vector.ph262

vector.ph262:                                     ; preds = %vector.main.loop.iter.check
  %i.aw = getelementptr i8, ptr %.147.i, i64 %n.vec263
  %i.ax = getelementptr i8, ptr %.13746.i, i64 %n.vec263 ; 2 uses
  br label %vector.body264

vector.body264:                                   ; preds = %vector.ph262, %vector.body264
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next272, %vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.147.i, i64 %index265 ; 4 uses
  %next.gep267 = getelementptr i8, ptr %.13746.i, i64 %index265
  %wide.load268 = load <16 x i8>, ptr %next.gep266, align 1, !tbaa !14
  %i.ay = zext <16 x i8> %wide.load268 to <16 x i16>
  %i.az = getelementptr inbounds i8, ptr %next.gep266, i64 %i.j
  %wide.load269 = load <16 x i8>, ptr %i.az, align 1, !tbaa !14
  %i.ba = zext <16 x i8> %wide.load269 to <16 x i16>
  %i.bb = add nuw nsw <16 x i16> %i.ba, %i.ay
  %i.bc = getelementptr inbounds i8, ptr %next.gep266, i64 %i.k
  %wide.load270 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !14
  %i.bd = zext <16 x i8> %wide.load270 to <16 x i16>
  %i.be = add nuw nsw <16 x i16> %i.bb, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %next.gep266, i64 %i.m
  %wide.load271 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !14
  %i.bg = zext <16 x i8> %wide.load271 to <16 x i16>
  %i.bh = add nuw nsw <16 x i16> %i.be, %i.bg
  %i.bi = lshr <16 x i16> %i.bh, splat (i16 2)
  %i.bj = trunc nuw <16 x i16> %i.bi to <16 x i8>
  store <16 x i8> %i.bj, ptr %next.gep267, align 1, !tbaa !14
  %index.next272 = add nuw i64 %index265, 16      ; 2 uses
  %i.bk = icmp eq i64 %index.next272, %n.vec263
  br i1 %i.bk, label %middle.block273, label %vector.body264, !llvm.loop !90

middle.block273:                                  ; preds = %vector.body264
  br i1 %cmp.n274, label %._crit_edge.i.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block273
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec263, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bl = getelementptr i8, ptr %.147.i, i64 %n.vec275
  %i.bm = getelementptr i8, ptr %.13746.i, i64 %n.vec275 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next283, %vec.epilog.vector.body ] ; 3 uses
  %next.gep277 = getelementptr i8, ptr %.147.i, i64 %index276 ; 4 uses
  %next.gep278 = getelementptr i8, ptr %.13746.i, i64 %index276
  %wide.load279 = load <4 x i8>, ptr %next.gep277, align 1, !tbaa !14
  %i.bn = zext <4 x i8> %wide.load279 to <4 x i16>
  %i.bo = getelementptr inbounds i8, ptr %next.gep277, i64 %i.j
  %wide.load280 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !14
  %i.bp = zext <4 x i8> %wide.load280 to <4 x i16>
  %i.bq = add nuw nsw <4 x i16> %i.bp, %i.bn
  %i.br = getelementptr inbounds i8, ptr %next.gep277, i64 %i.k
  %wide.load281 = load <4 x i8>, ptr %i.br, align 1, !tbaa !14
  %i.bs = zext <4 x i8> %wide.load281 to <4 x i16>
  %i.bt = add nuw nsw <4 x i16> %i.bq, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %next.gep277, i64 %i.m
  %wide.load282 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !14
  %i.bv = zext <4 x i8> %wide.load282 to <4 x i16>
  %i.bw = add nuw nsw <4 x i16> %i.bt, %i.bv
  %i.bx = lshr <4 x i16> %i.bw, splat (i16 2)
  %i.by = trunc nuw <4 x i16> %i.bx to <4 x i8>
  store <4 x i8> %i.by, ptr %next.gep278, align 1, !tbaa !14
  %index.next283 = add nuw i64 %index276, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next283, %n.vec275
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n284, label %._crit_edge.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck253, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.243.i.ph = phi ptr [ %.147.i, %iter.check ], [ %.147.i, %vector.memcheck253 ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ] ; 7 uses
  %.23842.i.ph = phi ptr [ %.13746.i, %iter.check ], [ %.13746.i, %vector.memcheck253 ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 3 uses
  %.243.i.ph294 = ptrtoaddr ptr %.243.i.ph to i64 ; 2 uses
  %i.ca = sub i64 %i.r, %.243.i.ph294
  %xtraiter = and i64 %i.ca, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.cb = load i8, ptr %.243.i.ph, align 1, !tbaa !14
  %i.cc = zext i8 %i.cb to i16
  %i.cd = getelementptr inbounds i8, ptr %.243.i.ph, i64 %i.j
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.cf = zext i8 %i.ce to i16
  %i.cg = add nuw nsw i16 %i.cf, %i.cc
  %i.ch = getelementptr inbounds i8, ptr %.243.i.ph, i64 %i.k
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.cj = zext i8 %i.ci to i16
  %i.ck = add nuw nsw i16 %i.cg, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %.243.i.ph, i64 %i.m
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !14
  %i.cn = zext i8 %i.cm to i16
  %i.co = add nuw nsw i16 %i.ck, %i.cn
  %i.cp = lshr i16 %i.co, 2
  %i.cq = trunc nuw i16 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.23842.i.ph, i64 1 ; 2 uses
  store i8 %i.cq, ptr %.23842.i.ph, align 1, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %.243.i.ph, i64 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa287.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cr, %.lr.ph.i.prol ]
  %.243.i.unr = phi ptr [ %.243.i.ph, %.lr.ph.i.preheader ], [ %i.cs, %.lr.ph.i.prol ]
  %.23842.i.unr = phi ptr [ %.23842.i.ph, %.lr.ph.i.preheader ], [ %i.cr, %.lr.ph.i.prol ]
  %i.ct = icmp eq i64 %i.ah, %.243.i.ph294
  br i1 %i.ct, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block273
  %.lcssa = phi ptr [ %i.bm, %vec.epilog.middle.block ], [ %i.ax, %middle.block273 ], [ %.lcssa287.unr, %.lr.ph.i.prol.loopexit ], [ %i.ed, %.lr.ph.i ] ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ai, i64 %i.j ; 2 uses
  %.not39.i = icmp eq ptr %i.cu, %i.ad
  %indvar.next249 = add i64 %indvar248, 1
  br i1 %.not39.i, label %._crit_edge50.i.loopexit.split, label %iter.check, !llvm.loop !92

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.243.i = phi ptr [ %i.ee, %.lr.ph.i ], [ %.243.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.23842.i = phi ptr [ %i.ed, %.lr.ph.i ], [ %.23842.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.cv = load i8, ptr %.243.i, align 1, !tbaa !14
  %i.cw = zext i8 %i.cv to i16
  %i.cx = getelementptr inbounds i8, ptr %.243.i, i64 %i.j
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !14
  %i.cz = zext i8 %i.cy to i16
  %i.da = add nuw nsw i16 %i.cz, %i.cw
  %i.db = getelementptr inbounds i8, ptr %.243.i, i64 %i.k
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !14
  %i.dd = zext i8 %i.dc to i16
  %i.de = add nuw nsw i16 %i.da, %i.dd
  %i.df = getelementptr inbounds i8, ptr %.243.i, i64 %i.m
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = zext i8 %i.dg to i16
  %i.di = add nuw nsw i16 %i.de, %i.dh
  %i.dj = lshr i16 %i.di, 2
  %i.dk = trunc nuw i16 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.23842.i, i64 1
  store i8 %i.dk, ptr %.23842.i, align 1, !tbaa !14
  %i.dm = getelementptr inbounds nuw i8, ptr %.243.i, i64 1 ; 4 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i16
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.j
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !14
  %i.dr = zext i8 %i.dq to i16
  %i.ds = add nuw nsw i16 %i.dr, %i.do
  %i.dt = getelementptr inbounds i8, ptr %i.dm, i64 %i.k
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !14
  %i.dv = zext i8 %i.du to i16
  %i.dw = add nuw nsw i16 %i.ds, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %i.dm, i64 %i.m
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.dz = zext i8 %i.dy to i16
  %i.ea = add nuw nsw i16 %i.dw, %i.dz
  %i.eb = lshr i16 %i.ea, 2
  %i.ec = trunc nuw i16 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.23842.i, i64 2 ; 2 uses
  store i8 %i.ec, ptr %i.dl, align 1, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %.243.i, i64 2 ; 2 uses
  %.not40.i.1 = icmp eq ptr %i.ee, %i.ai
  br i1 %.not40.i.1, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !93

bb.c:                                             ; preds = %bb.a
  %i.ef = sdiv i32 %1, 2                          ; 4 uses
  %i.eg = mul nsw i32 %3, %i.ef                   ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %.idx.i = shl nsw i64 %i.eh, 1
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not53.i28 = icmp eq i32 %i.eg, 0
  br i1 %.not53.i28, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph57.i29

.lr.ph57.i29:                                     ; preds = %bb.c
  %i.ej = mul nsw i32 %7, %2                      ; 4 uses
  %.neg.i30 = sdiv i32 %i.ej, -2
  %i.ek = sdiv i32 %5, 2
  %i.el = add nsw i32 %.neg.i30, %i.ek
  %i.em = shl nsw i32 %i.ef, 1
  %i.en = sub nsw i32 %i.em, %i.ej
  %i.eo = sext i32 %i.ej to i64
  %i.ep = sext i32 %7 to i64                      ; 3 uses
  %i.eq = sext i32 %i.ef to i64
  %i.er = add nsw i32 %7, %i.ef
  %i.es = sext i32 %i.er to i64
  %i.et = sext i32 %i.en to i64
  %i.eu = sext i32 %i.el to i64
  %.idx59.i = shl nsw i64 %i.eo, 1
  %.not3945.i31 = icmp eq i32 %i.ej, 0
  %.idx60.i = shl nsw i64 %i.ep, 1
  br i1 %.not3945.i31, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i35.preheader

.lr.ph49.i35.preheader:                           ; preds = %.lr.ph57.i29, %._crit_edge50.i46.loopexit.split
  %.055.i33 = phi ptr [ %i.ew, %._crit_edge50.i46.loopexit.split ], [ %0, %.lr.ph57.i29 ] ; 2 uses
  %.03654.i34 = phi ptr [ %i.ex, %._crit_edge50.i46.loopexit.split ], [ %4, %.lr.ph57.i29 ]
  %i.ev = getelementptr inbounds i8, ptr %.055.i33, i64 %.idx59.i ; 2 uses
  br label %.lr.ph49.i35

._crit_edge50.i46.loopexit.split:                 ; preds = %._crit_edge.i42.loopexit
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.ev, i64 %i.et ; 2 uses
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.gj, i64 %i.eu
  %.not.i49 = icmp eq ptr %i.ew, %i.ei
  br i1 %.not.i49, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i35.preheader, !llvm.loop !94

.lr.ph49.i35:                                     ; preds = %.lr.ph49.i35.preheader, %._crit_edge.i42.loopexit
  %.147.i36 = phi ptr [ %i.ez, %._crit_edge.i42.loopexit ], [ %.055.i33, %.lr.ph49.i35.preheader ] ; 2 uses
  %.13746.i37 = phi ptr [ %i.gj, %._crit_edge.i42.loopexit ], [ %.03654.i34, %.lr.ph49.i35.preheader ]
  %i.ey = getelementptr inbounds i8, ptr %.147.i36, i64 %.idx60.i ; 2 uses
  br label %.lr.ph.i38

._crit_edge.i42.loopexit:                         ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ep ; 2 uses
  %.not39.i45 = icmp eq ptr %i.ez, %i.ev
  br i1 %.not39.i45, label %._crit_edge50.i46.loopexit.split, label %.lr.ph49.i35, !llvm.loop !95

.lr.ph.i38:                                       ; preds = %.lr.ph49.i35, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %.243.i39 = phi ptr [ %i.gk, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.147.i36, %.lr.ph49.i35 ] ; 5 uses
  %.23842.i40 = phi ptr [ %i.gj, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.13746.i37, %.lr.ph49.i35 ] ; 2 uses
  %i.fa = load i16, ptr %.243.i39, align 2, !tbaa !23
  %i.fb = zext i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !24
  %i.fe = getelementptr inbounds [2 x i8], ptr %.243.i39, i64 %i.ep
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !23
  %i.fg = zext i16 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !24
  %i.fj = fadd float %i.fd, %i.fi
  %i.fk = getelementptr inbounds [2 x i8], ptr %.243.i39, i64 %i.eq
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !23
  %i.fm = zext i16 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !24
  %i.fp = fadd float %i.fj, %i.fo
  %i.fq = getelementptr inbounds [2 x i8], ptr %.243.i39, i64 %i.es
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !23
  %i.fs = zext i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.fs
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !24
  %i.fv = fadd float %i.fp, %i.fu
  %i.fw = fmul float %i.fv, 2.500000e-01          ; 2 uses
  %i.fx = fcmp oeq float %i.fw, 0.000000e+00
  br i1 %i.fx, label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i38
  %i.fy = bitcast float %i.fw to i32              ; 3 uses
  %i.fz = lshr i32 %i.fy, 23
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.ga
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !21 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gc, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gd = and i32 %i.fy, 8384512
  %i.ge = add nuw nsw i32 %i.gd, 4096
  %i.gf = lshr i32 %i.ge, 13
  %i.gg = trunc nuw nsw i32 %i.gf to i16
  %i.gh = add i16 %i.gc, %i.gg
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

bb.f:                                             ; preds = %bb.d
  %i.gi = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.fy)
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i:                ; preds = %bb.f, %bb.e, %.lr.ph.i38
  %.1.i.i.i = phi i16 [ 0, %.lr.ph.i38 ], [ %i.gh, %bb.e ], [ %i.gi, %bb.f ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.23842.i40, i64 2 ; 3 uses
  store i16 %.1.i.i.i, ptr %.23842.i40, align 2, !tbaa !21
  %i.gk = getelementptr inbounds nuw i8, ptr %.243.i39, i64 2 ; 2 uses
  %.not40.i41 = icmp eq ptr %i.gk, %i.ey
  br i1 %.not40.i41, label %._crit_edge.i42.loopexit, label %.lr.ph.i38, !llvm.loop !96

bb.g:                                             ; preds = %bb.a
  %i.gl = sdiv i32 %1, 2                          ; 4 uses
  %i.gm = mul nsw i32 %3, %i.gl                   ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %.idx.i50 = shl nsw i64 %i.gn, 1
  %i.go = getelementptr inbounds i8, ptr %0, i64 %.idx.i50
  %.not53.i51 = icmp eq i32 %i.gm, 0
  br i1 %.not53.i51, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph57.i52

.lr.ph57.i52:                                     ; preds = %bb.g
  %i.gp = mul nsw i32 %7, %2                      ; 4 uses
  %.neg.i53 = sdiv i32 %i.gp, -2
  %i.gq = sdiv i32 %5, 2
  %i.gr = add nsw i32 %.neg.i53, %i.gq
  %i.gs = shl nsw i32 %i.gl, 1                    ; 2 uses
  %i.gt = sub nsw i32 %i.gs, %i.gp
  %i.gu = sext i32 %i.gp to i64
  %i.gv = sext i32 %7 to i64                      ; 5 uses
  %i.gw = sext i32 %i.gl to i64                   ; 3 uses
  %i.gx = add i32 %7, %i.gl
  %i.gy = sext i32 %i.gx to i64                   ; 3 uses
  %i.gz = sext i32 %i.gt to i64
  %i.ha = sext i32 %i.gr to i64
  %.idx59.i54 = shl nsw i64 %i.gu, 1
  %.not3945.i55 = icmp eq i32 %i.gp, 0
  %.idx60.i56 = shl nsw i64 %i.gv, 1              ; 3 uses
  br i1 %.not3945.i55, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i60.preheader.preheader

.lr.ph49.i60.preheader.preheader:                 ; preds = %.lr.ph57.i52
  %i.hb = sub i64 0, %i.a                         ; 3 uses
  %9 = shl nsw i64 %i.gy, 1
  %10 = sub i64 %i.hb, %9
  %i.hc = sext i32 %i.gs to i64
  %i.hd = mul nsw i64 %i.hc, -2
  %i.he = shl nsw i64 %i.gw, 1
  %i.hf = sub i64 %i.hb, %i.he
  %11 = sub i64 %i.hb, %.idx60.i56
  %12 = mul nsw i64 %i.gv, -4
  %i.hg = add nsw i64 %.idx60.i56, -2             ; 2 uses
  %i.hh = lshr exact i64 %i.hg, 1
  %i.hi = add nuw i64 %i.hh, 1                    ; 2 uses
  %min.iters.check209 = icmp ult i64 %i.hg, 14
  %n.vec219 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = shl i64 %n.vec219, 1                    ; 2 uses
  %cmp.n230 = icmp eq i64 %i.hi, %n.vec219
  br label %.lr.ph49.i60.preheader

.lr.ph49.i60.preheader:                           ; preds = %.lr.ph49.i60.preheader.preheader, %._crit_edge50.i71.loopexit.split
  %indvar206 = phi i64 [ 0, %.lr.ph49.i60.preheader.preheader ], [ %indvar.next207, %._crit_edge50.i71.loopexit.split ] ; 2 uses
  %.055.i58 = phi ptr [ %0, %.lr.ph49.i60.preheader.preheader ], [ %i.ho, %._crit_edge50.i71.loopexit.split ] ; 2 uses
  %.03654.i59 = phi ptr [ %4, %.lr.ph49.i60.preheader.preheader ], [ %i.hp, %._crit_edge50.i71.loopexit.split ]
  %i.hk = mul i64 %i.hd, %indvar206               ; 4 uses
  %13 = add i64 %10, %i.hk
  %i.hl = add i64 %i.hf, %i.hk
  %i.hm = add i64 %11, %i.hk
  %14 = sub i64 %i.hk, %i.a
  %i.hn = getelementptr inbounds i8, ptr %.055.i58, i64 %.idx59.i54 ; 2 uses
  br label %.lr.ph49.i60

._crit_edge50.i71.loopexit.split:                 ; preds = %._crit_edge.i67.loopexit
  %i.ho = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.gz ; 2 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %.lcssa163, i64 %i.ha
  %.not.i74 = icmp eq ptr %i.ho, %i.go
  %indvar.next207 = add i64 %indvar206, 1
  br i1 %.not.i74, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i60.preheader, !llvm.loop !97

.lr.ph49.i60:                                     ; preds = %.lr.ph49.i60.preheader, %._crit_edge.i67.loopexit
  %indvar204 = phi i64 [ 0, %.lr.ph49.i60.preheader ], [ %indvar.next205, %._crit_edge.i67.loopexit ] ; 2 uses
  %.147.i61 = phi ptr [ %.055.i58, %.lr.ph49.i60.preheader ], [ %i.iu, %._crit_edge.i67.loopexit ] ; 5 uses
  %.13746.i62 = phi ptr [ %.03654.i59, %.lr.ph49.i60.preheader ], [ %.lcssa163, %._crit_edge.i67.loopexit ] ; 5 uses
  %i.hq = getelementptr inbounds i8, ptr %.147.i61, i64 %.idx60.i56 ; 2 uses
  br i1 %min.iters.check209, label %.lr.ph.i63.preheader, label %vector.memcheck210

vector.memcheck210:                               ; preds = %.lr.ph49.i60
  %.13746.i62203 = ptrtoaddr ptr %.13746.i62 to i64 ; 4 uses
  %i.hr = mul i64 %indvar204, %12                 ; 4 uses
  %i.hs = add i64 %14, %i.hr
  %i.ht = add i64 %i.hs, %.13746.i62203
  %i.hu = add i64 %i.ht, -1
  %diff.check211 = icmp ult i64 %i.hu, 15
  %i.hv = add i64 %i.hm, %i.hr
  %i.hw = add i64 %i.hv, %.13746.i62203
  %i.hx = add i64 %i.hw, -1
  %diff.check212 = icmp ult i64 %i.hx, 15
  %conflict.rdx213 = or i1 %diff.check211, %diff.check212
  %i.hy = add i64 %i.hl, %i.hr
  %i.hz = add i64 %i.hy, %.13746.i62203
  %i.ia = add i64 %i.hz, -1
  %diff.check214 = icmp ult i64 %i.ia, 15
  %conflict.rdx215 = or i1 %conflict.rdx213, %diff.check214
  %i.ib = add i64 %13, %i.hr
  %i.ic = add i64 %i.ib, %.13746.i62203
  %i.id = add i64 %i.ic, -1
  %diff.check216 = icmp ult i64 %i.id, 15
  %conflict.rdx217 = or i1 %conflict.rdx215, %diff.check216
  br i1 %conflict.rdx217, label %.lr.ph.i63.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck210
  %i.ie = getelementptr i8, ptr %.147.i61, i64 %i.hj
  %i.if = getelementptr i8, ptr %.13746.i62, i64 %i.hj ; 2 uses
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next228, %vector.body220 ] ; 2 uses
  %i.ig = shl i64 %index221, 1                    ; 2 uses
  %next.gep222 = getelementptr i8, ptr %.147.i61, i64 %i.ig ; 4 uses
  %next.gep223 = getelementptr i8, ptr %.13746.i62, i64 %i.ig
  %wide.load224 = load <8 x i16>, ptr %next.gep222, align 2, !tbaa !21
  %i.ih = zext <8 x i16> %wide.load224 to <8 x i32>
  %i.ii = getelementptr inbounds [2 x i8], ptr %next.gep222, i64 %i.gv
  %wide.load225 = load <8 x i16>, ptr %i.ii, align 2, !tbaa !21
  %i.ij = zext <8 x i16> %wide.load225 to <8 x i32>
  %i.ik = add nuw nsw <8 x i32> %i.ij, %i.ih
  %i.il = getelementptr inbounds [2 x i8], ptr %next.gep222, i64 %i.gw
  %wide.load226 = load <8 x i16>, ptr %i.il, align 2, !tbaa !21
  %i.im = zext <8 x i16> %wide.load226 to <8 x i32>
  %i.in = add nuw nsw <8 x i32> %i.ik, %i.im
  %i.io = getelementptr inbounds [2 x i8], ptr %next.gep222, i64 %i.gy
  %wide.load227 = load <8 x i16>, ptr %i.io, align 2, !tbaa !21
  %i.ip = zext <8 x i16> %wide.load227 to <8 x i32>
  %i.iq = add nuw nsw <8 x i32> %i.in, %i.ip
  %i.ir = lshr <8 x i32> %i.iq, splat (i32 2)
  %i.is = trunc nuw <8 x i32> %i.ir to <8 x i16>
  store <8 x i16> %i.is, ptr %next.gep223, align 2, !tbaa !21
  %index.next228 = add nuw i64 %index221, 8       ; 2 uses
  %i.it = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.it, label %middle.block229, label %vector.body220, !llvm.loop !98

middle.block229:                                  ; preds = %vector.body220
  br i1 %cmp.n230, label %._crit_edge.i67.loopexit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %vector.memcheck210, %.lr.ph49.i60, %middle.block229
  %.243.i64.ph = phi ptr [ %.147.i61, %vector.memcheck210 ], [ %.147.i61, %.lr.ph49.i60 ], [ %i.ie, %middle.block229 ]
  %.23842.i65.ph = phi ptr [ %.13746.i62, %vector.memcheck210 ], [ %.13746.i62, %.lr.ph49.i60 ], [ %i.if, %middle.block229 ]
  br label %.lr.ph.i63

._crit_edge.i67.loopexit:                         ; preds = %.lr.ph.i63, %middle.block229
  %.lcssa163 = phi ptr [ %i.if, %middle.block229 ], [ %i.jl, %.lr.ph.i63 ] ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.gv ; 2 uses
  %.not39.i70 = icmp eq ptr %i.iu, %i.hn
  %indvar.next205 = add i64 %indvar204, 1
  br i1 %.not39.i70, label %._crit_edge50.i71.loopexit.split, label %.lr.ph49.i60, !llvm.loop !99

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader, %.lr.ph.i63
  %.243.i64 = phi ptr [ %i.jm, %.lr.ph.i63 ], [ %.243.i64.ph, %.lr.ph.i63.preheader ] ; 5 uses
  %.23842.i65 = phi ptr [ %i.jl, %.lr.ph.i63 ], [ %.23842.i65.ph, %.lr.ph.i63.preheader ] ; 2 uses
  %i.iv = load i16, ptr %.243.i64, align 2, !tbaa !21
  %i.iw = zext i16 %i.iv to i32
  %i.ix = getelementptr inbounds [2 x i8], ptr %.243.i64, i64 %i.gv
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !21
  %i.iz = zext i16 %i.iy to i32
  %i.ja = add nuw nsw i32 %i.iz, %i.iw
  %i.jb = getelementptr inbounds [2 x i8], ptr %.243.i64, i64 %i.gw
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !21
  %i.jd = zext i16 %i.jc to i32
  %i.je = add nuw nsw i32 %i.ja, %i.jd
  %i.jf = getelementptr inbounds [2 x i8], ptr %.243.i64, i64 %i.gy
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !21
  %i.jh = zext i16 %i.jg to i32
  %i.ji = add nuw nsw i32 %i.je, %i.jh
  %i.jj = lshr i32 %i.ji, 2
  %i.jk = trunc nuw i32 %i.jj to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %.23842.i65, i64 2 ; 2 uses
  store i16 %i.jk, ptr %.23842.i65, align 2, !tbaa !21
  %i.jm = getelementptr inbounds nuw i8, ptr %.243.i64, i64 2 ; 2 uses
  %.not40.i66 = icmp eq ptr %i.jm, %i.hq
  br i1 %.not40.i66, label %._crit_edge.i67.loopexit, label %.lr.ph.i63, !llvm.loop !100

bb.h:                                             ; preds = %bb.a
  %i.jn = sdiv i32 %1, 4                          ; 4 uses
  %i.jo = mul nsw i32 %3, %i.jn                   ; 2 uses
  %i.jp = sext i32 %i.jo to i64
  %.idx.i75 = shl nsw i64 %i.jp, 2
  %i.jq = getelementptr inbounds i8, ptr %0, i64 %.idx.i75
  %.not53.i76 = icmp eq i32 %i.jo, 0
  br i1 %.not53.i76, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph57.i77

.lr.ph57.i77:                                     ; preds = %bb.h
  %i.jr = mul nsw i32 %7, %2                      ; 4 uses
  %.neg.i78 = sdiv i32 %i.jr, -2
  %i.js = sdiv i32 %5, 4
  %i.jt = add nsw i32 %.neg.i78, %i.js
  %i.ju = shl nsw i32 %i.jn, 1                    ; 2 uses
  %i.jv = sub nsw i32 %i.ju, %i.jr
  %i.jw = sext i32 %i.jr to i64
  %i.jx = sext i32 %7 to i64                      ; 5 uses
  %i.jy = sext i32 %i.jn to i64                   ; 3 uses
  %i.jz = add i32 %7, %i.jn
  %i.ka = sext i32 %i.jz to i64                   ; 3 uses
  %i.kb = sext i32 %i.jv to i64
  %i.kc = sext i32 %i.jt to i64
  %.idx59.i79 = shl nsw i64 %i.jw, 2
  %.not3945.i80 = icmp eq i32 %i.jr, 0
  %.idx60.i81 = shl nsw i64 %i.jx, 2              ; 3 uses
  br i1 %.not3945.i80, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i85.preheader.preheader

.lr.ph49.i85.preheader.preheader:                 ; preds = %.lr.ph57.i77
  %i.kd = sub i64 0, %i.a                         ; 3 uses
  %15 = shl nsw i64 %i.ka, 2
  %16 = sub i64 %i.kd, %15
  %i.ke = sext i32 %i.ju to i64
  %i.kf = mul nsw i64 %i.ke, -4
  %i.kg = shl nsw i64 %i.jy, 2
  %i.kh = sub i64 %i.kd, %i.kg
  %17 = sub i64 %i.kd, %.idx60.i81
  %18 = mul nsw i64 %i.jx, -8
  %i.ki = add nsw i64 %.idx60.i81, -4             ; 2 uses
  %i.kj = lshr exact i64 %i.ki, 2
  %i.kk = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ki, 28
  %n.vec = and i64 %i.kk, 9223372036854775800     ; 3 uses
  %i.kl = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.kk, %n.vec
  br label %.lr.ph49.i85.preheader

.lr.ph49.i85.preheader:                           ; preds = %.lr.ph49.i85.preheader.preheader, %._crit_edge50.i96.loopexit.split
  %indvar174 = phi i64 [ 0, %.lr.ph49.i85.preheader.preheader ], [ %indvar.next175, %._crit_edge50.i96.loopexit.split ] ; 2 uses
  %.055.i83 = phi ptr [ %0, %.lr.ph49.i85.preheader.preheader ], [ %i.kq, %._crit_edge50.i96.loopexit.split ] ; 2 uses
  %.03654.i84 = phi ptr [ %4, %.lr.ph49.i85.preheader.preheader ], [ %i.kr, %._crit_edge50.i96.loopexit.split ]
  %i.km = mul i64 %i.kf, %indvar174               ; 4 uses
  %19 = add i64 %16, %i.km
  %i.kn = add i64 %i.kh, %i.km
  %i.ko = add i64 %17, %i.km
  %20 = sub i64 %i.km, %i.a
  %i.kp = getelementptr inbounds i8, ptr %.055.i83, i64 %.idx59.i79 ; 2 uses
  br label %.lr.ph49.i85

._crit_edge50.i96.loopexit.split:                 ; preds = %._crit_edge.i92.loopexit
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kb ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %.lcssa164, i64 %i.kc
  %.not.i99 = icmp eq ptr %i.kq, %i.jq
  %indvar.next175 = add i64 %indvar174, 1
  br i1 %.not.i99, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph49.i85.preheader, !llvm.loop !101

.lr.ph49.i85:                                     ; preds = %.lr.ph49.i85.preheader, %._crit_edge.i92.loopexit
  %indvar = phi i64 [ 0, %.lr.ph49.i85.preheader ], [ %indvar.next, %._crit_edge.i92.loopexit ] ; 2 uses
  %.147.i86 = phi ptr [ %.055.i83, %.lr.ph49.i85.preheader ], [ %i.ma, %._crit_edge.i92.loopexit ] ; 5 uses
  %.13746.i87 = phi ptr [ %.03654.i84, %.lr.ph49.i85.preheader ], [ %.lcssa164, %._crit_edge.i92.loopexit ] ; 5 uses
  %i.ks = getelementptr inbounds i8, ptr %.147.i86, i64 %.idx60.i81 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i88.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.i85
  %.13746.i87173 = ptrtoaddr ptr %.13746.i87 to i64 ; 4 uses
  %i.kt = mul i64 %indvar, %18                    ; 4 uses
  %i.ku = add i64 %20, %i.kt
  %i.kv = add i64 %i.ku, %.13746.i87173
  %i.kw = add i64 %i.kv, -1
  %diff.check = icmp ult i64 %i.kw, 31
  %i.kx = add i64 %i.ko, %i.kt
  %i.ky = add i64 %i.kx, %.13746.i87173
  %i.kz = add i64 %i.ky, -1
  %diff.check176 = icmp ult i64 %i.kz, 31
  %conflict.rdx = or i1 %diff.check, %diff.check176
  %i.la = add i64 %i.kn, %i.kt
  %i.lb = add i64 %i.la, %.13746.i87173
  %i.lc = add i64 %i.lb, -1
  %diff.check177 = icmp ult i64 %i.lc, 31
  %conflict.rdx178 = or i1 %conflict.rdx, %diff.check177
  %i.ld = add i64 %19, %i.kt
  %i.le = add i64 %i.ld, %.13746.i87173
  %i.lf = add i64 %i.le, -1
  %diff.check179 = icmp ult i64 %i.lf, 31
  %conflict.rdx180 = or i1 %conflict.rdx178, %diff.check179
  br i1 %conflict.rdx180, label %.lr.ph.i88.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.lg = getelementptr i8, ptr %.147.i86, i64 %i.kl
  %i.lh = getelementptr i8, ptr %.13746.i87, i64 %i.kl ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.li = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.147.i86, i64 %i.li ; 5 uses
  %next.gep181 = getelementptr i8, ptr %.13746.i87, i64 %i.li ; 2 uses
  %i.lj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !16
  %wide.load182 = load <4 x float>, ptr %i.lj, align 4, !tbaa !16
  %i.lk = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.jx ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %wide.load183 = load <4 x float>, ptr %i.lk, align 4, !tbaa !16
  %wide.load184 = load <4 x float>, ptr %i.ll, align 4, !tbaa !16
  %i.lm = fadd <4 x float> %wide.load, %wide.load183
  %i.ln = fadd <4 x float> %wide.load182, %wide.load184
  %i.lo = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.jy ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %wide.load185 = load <4 x float>, ptr %i.lo, align 4, !tbaa !16
  %wide.load186 = load <4 x float>, ptr %i.lp, align 4, !tbaa !16
  %i.lq = fadd <4 x float> %i.lm, %wide.load185
  %i.lr = fadd <4 x float> %i.ln, %wide.load186
  %i.ls = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.ka ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load187 = load <4 x float>, ptr %i.ls, align 4, !tbaa !16
  %wide.load188 = load <4 x float>, ptr %i.lt, align 4, !tbaa !16
  %i.lu = fadd <4 x float> %i.lq, %wide.load187
  %i.lv = fadd <4 x float> %i.lr, %wide.load188
  %i.lw = fmul <4 x float> %i.lu, splat (float 2.500000e-01)
  %i.lx = fmul <4 x float> %i.lv, splat (float 2.500000e-01)
  %i.ly = getelementptr i8, ptr %next.gep181, i64 16
  store <4 x float> %i.lw, ptr %next.gep181, align 4, !tbaa !16
  store <4 x float> %i.lx, ptr %i.ly, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lz = icmp eq i64 %index.next, %n.vec
  br i1 %i.lz, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i92.loopexit, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %vector.memcheck, %.lr.ph49.i85, %middle.block
  %.243.i89.ph = phi ptr [ %.147.i86, %vector.memcheck ], [ %.147.i86, %.lr.ph49.i85 ], [ %i.lg, %middle.block ]
  %.23842.i90.ph = phi ptr [ %.13746.i87, %vector.memcheck ], [ %.13746.i87, %.lr.ph49.i85 ], [ %i.lh, %middle.block ]
  br label %.lr.ph.i88

._crit_edge.i92.loopexit:                         ; preds = %.lr.ph.i88, %middle.block
  %.lcssa164 = phi ptr [ %i.lh, %middle.block ], [ %i.mm, %.lr.ph.i88 ] ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.jx ; 2 uses
  %.not39.i95 = icmp eq ptr %i.ma, %i.kp
  %indvar.next = add i64 %indvar, 1
  br i1 %.not39.i95, label %._crit_edge50.i96.loopexit.split, label %.lr.ph49.i85, !llvm.loop !103

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader, %.lr.ph.i88
  %.243.i89 = phi ptr [ %i.mn, %.lr.ph.i88 ], [ %.243.i89.ph, %.lr.ph.i88.preheader ] ; 5 uses
  %.23842.i90 = phi ptr [ %i.mm, %.lr.ph.i88 ], [ %.23842.i90.ph, %.lr.ph.i88.preheader ] ; 2 uses
  %i.mb = load float, ptr %.243.i89, align 4, !tbaa !16
  %i.mc = getelementptr inbounds [4 x i8], ptr %.243.i89, i64 %i.jx
  %i.md = load float, ptr %i.mc, align 4, !tbaa !16
  %i.me = fadd float %i.mb, %i.md
  %i.mf = getelementptr inbounds [4 x i8], ptr %.243.i89, i64 %i.jy
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !16
  %i.mh = fadd float %i.me, %i.mg
  %i.mi = getelementptr inbounds [4 x i8], ptr %.243.i89, i64 %i.ka
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !16
  %i.mk = fadd float %i.mh, %i.mj
  %i.ml = fmul float %i.mk, 2.500000e-01
  %i.mm = getelementptr inbounds nuw i8, ptr %.23842.i90, i64 4 ; 2 uses
  store float %i.ml, ptr %.23842.i90, align 4, !tbaa !16
  %i.mn = getelementptr inbounds nuw i8, ptr %.243.i89, i64 4 ; 2 uses
  %.not40.i91 = icmp eq ptr %i.mn, %i.ks
  br i1 %.not40.i91, label %._crit_edge.i92.loopexit, label %.lr.ph.i88, !llvm.loop !104

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_16reduceIhEEvPKT_iiiPS4_ii.exit: ; preds = %._crit_edge50.i96.loopexit.split, %._crit_edge50.i71.loopexit.split, %._crit_edge50.i46.loopexit.split, %._crit_edge50.i.loopexit.split, %.lr.ph57.i77, %.lr.ph57.i52, %.lr.ph57.i29, %.lr.ph57.i, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils7reduceuEPKviiiPviNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  switch i32 %6, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %3, %1                       ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %.not48.i = icmp eq i32 %i.b, 0
  br i1 %.not48.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.b
  %i.e = mul nsw i32 %7, %2                       ; 4 uses
  %.neg.i = sdiv i32 %i.e, -2
  %i.f = add i32 %.neg.i, %5
  %i.g = sub nsw i32 %1, %i.e
  %i.h = sext i32 %i.e to i64
  %i.i = sext i32 %7 to i64                       ; 16 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sext i32 %i.f to i64
  %.not3440.i = icmp eq i32 %i.e, 0
  br i1 %.not3440.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i.preheader.preheader

.lr.ph44.i.preheader.preheader:                   ; preds = %.lr.ph52.i
  %8 = add i64 %i.a, %i.i                         ; 2 uses
  %i.l = sext i32 %1 to i64                       ; 2 uses
  %i.m = mul nsw i64 %i.i, -2
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %8, -1
  %min.iters.check237 = icmp ult i32 %7, 8
  %min.iters.check243 = icmp ult i32 %7, 32
  %n.vec245 = and i64 %i.i, -32                   ; 5 uses
  %cmp.n256 = icmp eq i64 %n.vec245, %i.i
  %i.p = and i32 %7, 24
  %min.epilog.iters.check260 = icmp eq i32 %i.p, 0
  %n.vec263 = and i64 %i.i, -8                    ; 4 uses
  %cmp.n272 = icmp eq i64 %n.vec263, %i.i
  br label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %.lr.ph44.i.preheader.preheader, %._crit_edge45.i.loopexit.split
  %indvar231 = phi i64 [ 0, %.lr.ph44.i.preheader.preheader ], [ %indvar.next232, %._crit_edge45.i.loopexit.split ] ; 3 uses
  %.050.i = phi ptr [ %0, %.lr.ph44.i.preheader.preheader ], [ %i.w, %._crit_edge45.i.loopexit.split ] ; 2 uses
  %.03149.i = phi ptr [ %4, %.lr.ph44.i.preheader.preheader ], [ %i.x, %._crit_edge45.i.loopexit.split ]
  %i.q = mul i64 %indvar231, %i.l
  %i.r = add i64 %i.o, %i.q
  %i.s = mul i64 %indvar231, %i.l                 ; 2 uses
  %i.t = add i64 %8, %i.s                         ; 2 uses
  %i.u = add i64 %i.s, %i.a
  %i.v = getelementptr inbounds i8, ptr %.050.i, i64 %i.h ; 2 uses
  br label %iter.check257

._crit_edge45.i.loopexit.split:                   ; preds = %._crit_edge.i.loopexit
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.j ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.lcssa, i64 %i.k
  %.not.i = icmp eq ptr %i.w, %i.d
  %indvar.next232 = add i64 %indvar231, 1
  br i1 %.not.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i.preheader, !llvm.loop !105

iter.check257:                                    ; preds = %.lr.ph44.i.preheader, %._crit_edge.i.loopexit
  %indvar233 = phi i64 [ 0, %.lr.ph44.i.preheader ], [ %indvar.next234, %._crit_edge.i.loopexit ] ; 3 uses
  %.142.i = phi ptr [ %.050.i, %.lr.ph44.i.preheader ], [ %i.bw, %._crit_edge.i.loopexit ] ; 7 uses
  %.13241.i = phi ptr [ %.03149.i, %.lr.ph44.i.preheader ], [ %.lcssa, %._crit_edge.i.loopexit ] ; 7 uses
  %i.y = mul i64 %i.n, %indvar233                 ; 2 uses
  %i.z = add i64 %i.t, %i.y
  %i.aa = add i64 %i.r, %i.y
  %i.ab = getelementptr inbounds i8, ptr %.142.i, i64 %i.i ; 2 uses
  br i1 %min.iters.check237, label %.lr.ph.i.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %iter.check257
  %.13241.i235 = ptrtoaddr ptr %.13241.i to i64   ; 2 uses
  %i.ac = mul i64 %indvar233, %i.m                ; 2 uses
  %i.ad = sub i64 %i.ac, %i.u
  %i.ae = add i64 %i.ad, %.13241.i235
  %i.af = add i64 %i.ae, -1
  %diff.check239 = icmp ult i64 %i.af, 31
  %i.ag = sub i64 %i.ac, %i.t
  %i.ah = add i64 %i.ag, %.13241.i235
  %i.ai = add i64 %i.ah, -1
  %diff.check240 = icmp ult i64 %i.ai, 31
  %conflict.rdx241 = or i1 %diff.check239, %diff.check240
  br i1 %conflict.rdx241, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check242

vector.main.loop.iter.check242:                   ; preds = %vector.memcheck238
  br i1 %min.iters.check243, label %vec.epilog.ph261, label %vector.ph244

vector.ph244:                                     ; preds = %vector.main.loop.iter.check242
  %i.aj = getelementptr i8, ptr %.142.i, i64 %n.vec245
  %i.ak = getelementptr i8, ptr %.13241.i, i64 %n.vec245 ; 2 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.ph244, %vector.body246
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next254, %vector.body246 ] ; 3 uses
  %next.gep248 = getelementptr i8, ptr %.142.i, i64 %index247 ; 3 uses
  %next.gep249 = getelementptr i8, ptr %.13241.i, i64 %index247 ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep248, i64 16
  %wide.load250 = load <16 x i8>, ptr %next.gep248, align 1, !tbaa !14
  %wide.load251 = load <16 x i8>, ptr %i.al, align 1, !tbaa !14
  %i.am = zext <16 x i8> %wide.load250 to <16 x i16>
  %i.an = zext <16 x i8> %wide.load251 to <16 x i16>
  %i.ao = getelementptr inbounds i8, ptr %next.gep248, i64 %i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load252 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !14
  %wide.load253 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !14
  %i.aq = zext <16 x i8> %wide.load252 to <16 x i16>
  %i.ar = zext <16 x i8> %wide.load253 to <16 x i16>
  %i.as = add nuw nsw <16 x i16> %i.aq, %i.am
  %i.at = add nuw nsw <16 x i16> %i.ar, %i.an
  %i.au = lshr <16 x i16> %i.as, splat (i16 1)
  %i.av = lshr <16 x i16> %i.at, splat (i16 1)
  %i.aw = trunc nuw <16 x i16> %i.au to <16 x i8>
  %i.ax = trunc nuw <16 x i16> %i.av to <16 x i8>
  %i.ay = getelementptr i8, ptr %next.gep249, i64 16
  store <16 x i8> %i.aw, ptr %next.gep249, align 1, !tbaa !14
  store <16 x i8> %i.ax, ptr %i.ay, align 1, !tbaa !14
  %index.next254 = add nuw i64 %index247, 32      ; 2 uses
  %i.az = icmp eq i64 %index.next254, %n.vec245
  br i1 %i.az, label %middle.block255, label %vector.body246, !llvm.loop !106

middle.block255:                                  ; preds = %vector.body246
  br i1 %cmp.n256, label %._crit_edge.i.loopexit, label %vec.epilog.iter.check258

vec.epilog.iter.check258:                         ; preds = %middle.block255
  br i1 %min.epilog.iters.check260, label %.lr.ph.i.preheader, label %vec.epilog.ph261, !prof !27

vec.epilog.ph261:                                 ; preds = %vector.main.loop.iter.check242, %vec.epilog.iter.check258
  %vec.epilog.resume.val262 = phi i64 [ %n.vec245, %vec.epilog.iter.check258 ], [ 0, %vector.main.loop.iter.check242 ]
  %i.ba = getelementptr i8, ptr %.142.i, i64 %n.vec263
  %i.bb = getelementptr i8, ptr %.13241.i, i64 %n.vec263 ; 2 uses
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph261
  %index265 = phi i64 [ %vec.epilog.resume.val262, %vec.epilog.ph261 ], [ %index.next270, %vec.epilog.vector.body264 ] ; 3 uses
  %next.gep266 = getelementptr i8, ptr %.142.i, i64 %index265 ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.13241.i, i64 %index265
  %wide.load268 = load <8 x i8>, ptr %next.gep266, align 1, !tbaa !14
  %i.bc = zext <8 x i8> %wide.load268 to <8 x i16>
  %i.bd = getelementptr inbounds i8, ptr %next.gep266, i64 %i.i
  %wide.load269 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !14
  %i.be = zext <8 x i8> %wide.load269 to <8 x i16>
  %i.bf = add nuw nsw <8 x i16> %i.be, %i.bc
  %i.bg = lshr <8 x i16> %i.bf, splat (i16 1)
  %i.bh = trunc nuw <8 x i16> %i.bg to <8 x i8>
  store <8 x i8> %i.bh, ptr %next.gep267, align 1, !tbaa !14
  %index.next270 = add nuw i64 %index265, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.bi, label %vec.epilog.middle.block271, label %vec.epilog.vector.body264, !llvm.loop !107

vec.epilog.middle.block271:                       ; preds = %vec.epilog.vector.body264
  br i1 %cmp.n272, label %._crit_edge.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check257, %vector.memcheck238, %vec.epilog.iter.check258, %vec.epilog.middle.block271
  %.238.i.ph = phi ptr [ %.142.i, %iter.check257 ], [ %.142.i, %vector.memcheck238 ], [ %i.aj, %vec.epilog.iter.check258 ], [ %i.ba, %vec.epilog.middle.block271 ] ; 3 uses
  %.23337.i.ph = phi ptr [ %.13241.i, %iter.check257 ], [ %.13241.i, %vector.memcheck238 ], [ %i.ak, %vec.epilog.iter.check258 ], [ %i.bb, %vec.epilog.middle.block271 ] ; 2 uses
  %.238.i.ph282 = ptrtoaddr ptr %.238.i.ph to i64 ; 2 uses
  %i.bj = sub i64 %i.z, %.238.i.ph282
  %i.bk = sub i64 %i.aa, %.238.i.ph282
  %xtraiter = and i64 %i.bj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.238.i.prol = phi ptr [ %i.bu, %.lr.ph.i.prol ], [ %.238.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.23337.i.prol = phi ptr [ %i.bt, %.lr.ph.i.prol ], [ %.23337.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bl = load i8, ptr %.238.i.prol, align 1, !tbaa !14
  %i.bm = zext i8 %i.bl to i16
  %i.bn = getelementptr inbounds i8, ptr %.238.i.prol, i64 %i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !14
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bp, %i.bm
  %i.br = lshr i16 %i.bq, 1
  %i.bs = trunc nuw i16 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %.23337.i.prol, i64 1 ; 3 uses
  store i8 %i.bs, ptr %.23337.i.prol, align 1, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.238.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !108

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa275.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol ]
  %.238.i.unr = phi ptr [ %.238.i.ph, %.lr.ph.i.preheader ], [ %i.bu, %.lr.ph.i.prol ]
  %.23337.i.unr = phi ptr [ %.23337.i.ph, %.lr.ph.i.preheader ], [ %i.bt, %.lr.ph.i.prol ]
  %i.bv = icmp ult i64 %i.bk, 3
  br i1 %i.bv, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block271, %middle.block255
  %.lcssa = phi ptr [ %i.bb, %vec.epilog.middle.block271 ], [ %i.ak, %middle.block255 ], [ %.lcssa275.unr, %.lr.ph.i.prol.loopexit ], [ %i.dj, %.lr.ph.i ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.ab, i64 %i.i ; 2 uses
  %.not34.i = icmp eq ptr %i.bw, %i.v
  %indvar.next234 = add i64 %indvar233, 1
  br i1 %.not34.i, label %._crit_edge45.i.loopexit.split, label %iter.check257, !llvm.loop !109

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.238.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.238.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.23337.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.23337.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bx = load i8, ptr %.238.i, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr inbounds i8, ptr %.238.i, i64 %i.i
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add nuw nsw i16 %i.cb, %i.by
  %i.cd = lshr i16 %i.cc, 1
  %i.ce = trunc nuw i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.23337.i, i64 1
  store i8 %i.ce, ptr %.23337.i, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.238.i, i64 1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !14
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cl, %i.ci
  %i.cn = lshr i16 %i.cm, 1
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.23337.i, i64 2
  store i8 %i.co, ptr %i.cf, align 1, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.238.i, i64 2 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.i
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = zext i8 %i.cu to i16
  %i.cw = add nuw nsw i16 %i.cv, %i.cs
  %i.cx = lshr i16 %i.cw, 1
  %i.cy = trunc nuw i16 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.23337.i, i64 3
  store i8 %i.cy, ptr %i.cp, align 1, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %.238.i, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %i.dc = zext i8 %i.db to i16
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = zext i8 %i.de to i16
  %i.dg = add nuw nsw i16 %i.df, %i.dc
  %i.dh = lshr i16 %i.dg, 1
  %i.di = trunc nuw i16 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %.23337.i, i64 4 ; 2 uses
  store i8 %i.di, ptr %i.cz, align 1, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %.238.i, i64 4 ; 2 uses
  %.not35.i.3 = icmp eq ptr %i.dk, %i.ab
  br i1 %.not35.i.3, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !110

bb.c:                                             ; preds = %bb.a
  %i.dl = sdiv i32 %1, 2                          ; 2 uses
  %i.dm = mul nsw i32 %3, %i.dl                   ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %.idx.i = shl nsw i64 %i.dn, 1
  %i.do = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not48.i28 = icmp eq i32 %i.dm, 0
  br i1 %.not48.i28, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph52.i29

.lr.ph52.i29:                                     ; preds = %bb.c
  %i.dp = mul nsw i32 %7, %2                      ; 4 uses
  %.neg.i30 = sdiv i32 %i.dp, -2
  %i.dq = sdiv i32 %5, 2
  %i.dr = add nsw i32 %.neg.i30, %i.dq
  %i.ds = sub nsw i32 %i.dl, %i.dp
  %i.dt = sext i32 %i.dp to i64
  %i.du = sext i32 %7 to i64                      ; 3 uses
  %i.dv = sext i32 %i.ds to i64
  %i.dw = sext i32 %i.dr to i64
  %.idx54.i = shl nsw i64 %i.dt, 1
  %.not3440.i31 = icmp eq i32 %i.dp, 0
  %.idx55.i = shl nsw i64 %i.du, 1
  br i1 %.not3440.i31, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i35.preheader

.lr.ph44.i35.preheader:                           ; preds = %.lr.ph52.i29, %._crit_edge45.i46.loopexit.split
  %.050.i33 = phi ptr [ %i.dy, %._crit_edge45.i46.loopexit.split ], [ %0, %.lr.ph52.i29 ] ; 2 uses
  %.03149.i34 = phi ptr [ %i.dz, %._crit_edge45.i46.loopexit.split ], [ %4, %.lr.ph52.i29 ]
  %i.dx = getelementptr inbounds i8, ptr %.050.i33, i64 %.idx54.i ; 2 uses
  br label %.lr.ph44.i35

._crit_edge45.i46.loopexit.split:                 ; preds = %._crit_edge.i42.loopexit
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.dx, i64 %i.dv ; 2 uses
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.ez, i64 %i.dw
  %.not.i49 = icmp eq ptr %i.dy, %i.do
  br i1 %.not.i49, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i35.preheader, !llvm.loop !111

.lr.ph44.i35:                                     ; preds = %.lr.ph44.i35.preheader, %._crit_edge.i42.loopexit
  %.142.i36 = phi ptr [ %i.eb, %._crit_edge.i42.loopexit ], [ %.050.i33, %.lr.ph44.i35.preheader ] ; 2 uses
  %.13241.i37 = phi ptr [ %i.ez, %._crit_edge.i42.loopexit ], [ %.03149.i34, %.lr.ph44.i35.preheader ]
  %i.ea = getelementptr inbounds i8, ptr %.142.i36, i64 %.idx55.i ; 2 uses
  br label %.lr.ph.i38

._crit_edge.i42.loopexit:                         ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.du ; 2 uses
  %.not34.i45 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not34.i45, label %._crit_edge45.i46.loopexit.split, label %.lr.ph44.i35, !llvm.loop !112

.lr.ph.i38:                                       ; preds = %.lr.ph44.i35, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %.238.i39 = phi ptr [ %i.fa, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.142.i36, %.lr.ph44.i35 ] ; 3 uses
  %.23337.i40 = phi ptr [ %i.ez, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.13241.i37, %.lr.ph44.i35 ] ; 2 uses
  %i.ec = load i16, ptr %.238.i39, align 2, !tbaa !23
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !24
  %i.eg = getelementptr inbounds [2 x i8], ptr %.238.i39, i64 %i.du
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !23
  %i.ei = zext i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !24
  %i.el = fadd float %i.ef, %i.ek
  %i.em = fmul float %i.el, 5.000000e-01          ; 2 uses
  %i.en = fcmp oeq float %i.em, 0.000000e+00
  br i1 %i.en, label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i38
  %i.eo = bitcast float %i.em to i32              ; 3 uses
  %i.ep = lshr i32 %i.eo, 23
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !21 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.es, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.et = and i32 %i.eo, 8384512
  %i.eu = add nuw nsw i32 %i.et, 4096
  %i.ev = lshr i32 %i.eu, 13
  %i.ew = trunc nuw nsw i32 %i.ev to i16
  %i.ex = add i16 %i.es, %i.ew
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ey = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.eo)
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i:                ; preds = %bb.f, %bb.e, %.lr.ph.i38
  %.1.i.i.i = phi i16 [ 0, %.lr.ph.i38 ], [ %i.ex, %bb.e ], [ %i.ey, %bb.f ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.23337.i40, i64 2 ; 3 uses
  store i16 %.1.i.i.i, ptr %.23337.i40, align 2, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %.238.i39, i64 2 ; 2 uses
  %.not35.i41 = icmp eq ptr %i.fa, %i.ea
  br i1 %.not35.i41, label %._crit_edge.i42.loopexit, label %.lr.ph.i38, !llvm.loop !113

bb.g:                                             ; preds = %bb.a
  %i.fb = sdiv i32 %1, 2                          ; 3 uses
  %i.fc = mul nsw i32 %3, %i.fb                   ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %.idx.i50 = shl nsw i64 %i.fd, 1
  %i.fe = getelementptr inbounds i8, ptr %0, i64 %.idx.i50
  %.not48.i51 = icmp eq i32 %i.fc, 0
  br i1 %.not48.i51, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph52.i52

.lr.ph52.i52:                                     ; preds = %bb.g
  %i.ff = mul nsw i32 %7, %2                      ; 4 uses
  %.neg.i53 = sdiv i32 %i.ff, -2
  %i.fg = sdiv i32 %5, 2
  %i.fh = add nsw i32 %.neg.i53, %i.fg
  %i.fi = sub nsw i32 %i.fb, %i.ff
  %i.fj = sext i32 %i.ff to i64
  %i.fk = sext i32 %7 to i64                      ; 6 uses
  %i.fl = sext i32 %i.fi to i64
  %i.fm = sext i32 %i.fh to i64
  %.idx54.i54 = shl nsw i64 %i.fj, 1
  %.not3440.i55 = icmp eq i32 %i.ff, 0
  %.idx55.i56 = shl nsw i64 %i.fk, 1              ; 3 uses
  br i1 %.not3440.i55, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i60.preheader.preheader

.lr.ph44.i60.preheader.preheader:                 ; preds = %.lr.ph52.i52
  %9 = add i64 %.idx55.i56, %i.a
  %i.fn = sext i32 %i.fb to i64
  %i.fo = mul nsw i64 %i.fn, -2
  %i.fp = mul nsw i64 %i.fk, -4
  %i.fq = add nsw i64 %.idx55.i56, -2             ; 3 uses
  %i.fr = lshr exact i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, 1                    ; 5 uses
  %min.iters.check193 = icmp ult i64 %i.fq, 6
  %min.iters.check198 = icmp ult i64 %i.fq, 30
  %i.ft = and i64 %i.fs, 12
  %n.vec200 = and i64 %i.fs, -16                  ; 4 uses
  %i.fu = shl i64 %n.vec200, 1                    ; 2 uses
  %cmp.n211 = icmp eq i64 %i.fs, %n.vec200
  %min.epilog.iters.check = icmp eq i64 %i.ft, 0
  %n.vec212 = and i64 %i.fs, -4                   ; 3 uses
  %i.fv = shl i64 %n.vec212, 1                    ; 2 uses
  %cmp.n219 = icmp eq i64 %i.fs, %n.vec212
  br label %.lr.ph44.i60.preheader

.lr.ph44.i60.preheader:                           ; preds = %.lr.ph44.i60.preheader.preheader, %._crit_edge45.i71.loopexit.split
  %indvar187 = phi i64 [ 0, %.lr.ph44.i60.preheader.preheader ], [ %indvar.next188, %._crit_edge45.i71.loopexit.split ] ; 2 uses
  %.050.i58 = phi ptr [ %0, %.lr.ph44.i60.preheader.preheader ], [ %i.ga, %._crit_edge45.i71.loopexit.split ] ; 2 uses
  %.03149.i59 = phi ptr [ %4, %.lr.ph44.i60.preheader.preheader ], [ %i.gb, %._crit_edge45.i71.loopexit.split ]
  %i.fw = mul i64 %i.fo, %indvar187               ; 2 uses
  %i.fx = sub i64 %i.fw, %9
  %i.fy = sub i64 %i.fw, %i.a
  %i.fz = getelementptr inbounds i8, ptr %.050.i58, i64 %.idx54.i54 ; 2 uses
  br label %iter.check

._crit_edge45.i71.loopexit.split:                 ; preds = %._crit_edge.i67.loopexit
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.fl ; 2 uses
  %i.gb = getelementptr inbounds [2 x i8], ptr %.lcssa163, i64 %i.fm
  %.not.i74 = icmp eq ptr %i.ga, %i.fe
  %indvar.next188 = add i64 %indvar187, 1
  br i1 %.not.i74, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i60.preheader, !llvm.loop !114

iter.check:                                       ; preds = %.lr.ph44.i60.preheader, %._crit_edge.i67.loopexit
  %indvar189 = phi i64 [ 0, %.lr.ph44.i60.preheader ], [ %indvar.next190, %._crit_edge.i67.loopexit ] ; 2 uses
  %.142.i61 = phi ptr [ %.050.i58, %.lr.ph44.i60.preheader ], [ %i.hm, %._crit_edge.i67.loopexit ] ; 7 uses
  %.13241.i62 = phi ptr [ %.03149.i59, %.lr.ph44.i60.preheader ], [ %.lcssa163, %._crit_edge.i67.loopexit ] ; 7 uses
  %i.gc = getelementptr inbounds i8, ptr %.142.i61, i64 %.idx55.i56 ; 2 uses
  br i1 %min.iters.check193, label %.lr.ph.i63.preheader, label %vector.memcheck194

vector.memcheck194:                               ; preds = %iter.check
  %.13241.i62191 = ptrtoaddr ptr %.13241.i62 to i64 ; 2 uses
  %i.gd = mul i64 %indvar189, %i.fp               ; 2 uses
  %i.ge = add i64 %i.fy, %i.gd
  %i.gf = add i64 %i.ge, %.13241.i62191
  %i.gg = add i64 %i.gf, -1
  %diff.check195 = icmp ult i64 %i.gg, 31
  %i.gh = add i64 %i.fx, %i.gd
  %i.gi = add i64 %i.gh, %.13241.i62191
  %i.gj = add i64 %i.gi, -1
  %diff.check196 = icmp ult i64 %i.gj, 31
  %conflict.rdx197 = or i1 %diff.check195, %diff.check196
  br i1 %conflict.rdx197, label %.lr.ph.i63.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck194
  br i1 %min.iters.check198, label %vec.epilog.ph, label %vector.ph199

vector.ph199:                                     ; preds = %vector.main.loop.iter.check
  %i.gk = getelementptr i8, ptr %.142.i61, i64 %i.fu
  %i.gl = getelementptr i8, ptr %.13241.i62, i64 %i.fu ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.ph199, %vector.body201
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next209, %vector.body201 ] ; 2 uses
  %i.gm = shl i64 %index202, 1                    ; 2 uses
  %next.gep203 = getelementptr i8, ptr %.142.i61, i64 %i.gm ; 3 uses
  %next.gep204 = getelementptr i8, ptr %.13241.i62, i64 %i.gm ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load205 = load <8 x i16>, ptr %next.gep203, align 2, !tbaa !21
  %wide.load206 = load <8 x i16>, ptr %i.gn, align 2, !tbaa !21
  %i.go = zext <8 x i16> %wide.load205 to <8 x i32>
  %i.gp = zext <8 x i16> %wide.load206 to <8 x i32>
  %i.gq = getelementptr inbounds [2 x i8], ptr %next.gep203, i64 %i.fk ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %wide.load207 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !21
  %wide.load208 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !21
  %i.gs = zext <8 x i16> %wide.load207 to <8 x i32>
  %i.gt = zext <8 x i16> %wide.load208 to <8 x i32>
  %i.gu = add nuw nsw <8 x i32> %i.gs, %i.go
  %i.gv = add nuw nsw <8 x i32> %i.gt, %i.gp
  %i.gw = lshr <8 x i32> %i.gu, splat (i32 1)
  %i.gx = lshr <8 x i32> %i.gv, splat (i32 1)
  %i.gy = trunc nuw <8 x i32> %i.gw to <8 x i16>
  %i.gz = trunc nuw <8 x i32> %i.gx to <8 x i16>
  %i.ha = getelementptr i8, ptr %next.gep204, i64 16
  store <8 x i16> %i.gy, ptr %next.gep204, align 2, !tbaa !21
  store <8 x i16> %i.gz, ptr %i.ha, align 2, !tbaa !21
  %index.next209 = add nuw i64 %index202, 16      ; 2 uses
  %i.hb = icmp eq i64 %index.next209, %n.vec200
  br i1 %i.hb, label %middle.block210, label %vector.body201, !llvm.loop !115

middle.block210:                                  ; preds = %vector.body201
  br i1 %cmp.n211, label %._crit_edge.i67.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block210
  br i1 %min.epilog.iters.check, label %.lr.ph.i63.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec200, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hc = getelementptr i8, ptr %.142.i61, i64 %i.fv
  %i.hd = getelementptr i8, ptr %.13241.i62, i64 %i.fv ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index213 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next218, %vec.epilog.vector.body ] ; 2 uses
  %i.he = shl i64 %index213, 1                    ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.142.i61, i64 %i.he ; 2 uses
  %next.gep215 = getelementptr i8, ptr %.13241.i62, i64 %i.he
  %wide.load216 = load <4 x i16>, ptr %next.gep214, align 2, !tbaa !21
  %i.hf = zext <4 x i16> %wide.load216 to <4 x i32>
  %i.hg = getelementptr inbounds [2 x i8], ptr %next.gep214, i64 %i.fk
  %wide.load217 = load <4 x i16>, ptr %i.hg, align 2, !tbaa !21
  %i.hh = zext <4 x i16> %wide.load217 to <4 x i32>
  %i.hi = add nuw nsw <4 x i32> %i.hh, %i.hf
  %i.hj = lshr <4 x i32> %i.hi, splat (i32 1)
  %i.hk = trunc nuw <4 x i32> %i.hj to <4 x i16>
  store <4 x i16> %i.hk, ptr %next.gep215, align 2, !tbaa !21
  %index.next218 = add nuw i64 %index213, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n219, label %._crit_edge.i67.loopexit, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %iter.check, %vector.memcheck194, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.238.i64.ph = phi ptr [ %.142.i61, %iter.check ], [ %.142.i61, %vector.memcheck194 ], [ %i.gk, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ]
  %.23337.i65.ph = phi ptr [ %.13241.i62, %iter.check ], [ %.13241.i62, %vector.memcheck194 ], [ %i.gl, %vec.epilog.iter.check ], [ %i.hd, %vec.epilog.middle.block ]
  br label %.lr.ph.i63

._crit_edge.i67.loopexit:                         ; preds = %.lr.ph.i63, %vec.epilog.middle.block, %middle.block210
  %.lcssa163 = phi ptr [ %i.hd, %vec.epilog.middle.block ], [ %i.gl, %middle.block210 ], [ %i.hv, %.lr.ph.i63 ] ; 2 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.fk ; 2 uses
  %.not34.i70 = icmp eq ptr %i.hm, %i.fz
  %indvar.next190 = add i64 %indvar189, 1
  br i1 %.not34.i70, label %._crit_edge45.i71.loopexit.split, label %iter.check, !llvm.loop !117

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader, %.lr.ph.i63
  %.238.i64 = phi ptr [ %i.hw, %.lr.ph.i63 ], [ %.238.i64.ph, %.lr.ph.i63.preheader ] ; 3 uses
  %.23337.i65 = phi ptr [ %i.hv, %.lr.ph.i63 ], [ %.23337.i65.ph, %.lr.ph.i63.preheader ] ; 2 uses
  %i.hn = load i16, ptr %.238.i64, align 2, !tbaa !21
  %i.ho = zext i16 %i.hn to i32
  %i.hp = getelementptr inbounds [2 x i8], ptr %.238.i64, i64 %i.fk
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !21
  %i.hr = zext i16 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.ho
  %i.ht = lshr i32 %i.hs, 1
  %i.hu = trunc nuw i32 %i.ht to i16
  %i.hv = getelementptr inbounds nuw i8, ptr %.23337.i65, i64 2 ; 2 uses
  store i16 %i.hu, ptr %.23337.i65, align 2, !tbaa !21
  %i.hw = getelementptr inbounds nuw i8, ptr %.238.i64, i64 2 ; 2 uses
  %.not35.i66 = icmp eq ptr %i.hw, %i.gc
  br i1 %.not35.i66, label %._crit_edge.i67.loopexit, label %.lr.ph.i63, !llvm.loop !118

bb.h:                                             ; preds = %bb.a
  %i.hx = sdiv i32 %1, 4                          ; 3 uses
  %i.hy = mul nsw i32 %3, %i.hx                   ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %.idx.i75 = shl nsw i64 %i.hz, 2
  %i.ia = getelementptr inbounds i8, ptr %0, i64 %.idx.i75
  %.not48.i76 = icmp eq i32 %i.hy, 0
  br i1 %.not48.i76, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph52.i77

.lr.ph52.i77:                                     ; preds = %bb.h
  %i.ib = mul nsw i32 %7, %2                      ; 4 uses
  %.neg.i78 = sdiv i32 %i.ib, -2
  %i.ic = sdiv i32 %5, 4
  %i.id = add nsw i32 %.neg.i78, %i.ic
  %i.ie = sub nsw i32 %i.hx, %i.ib
  %i.if = sext i32 %i.ib to i64
  %i.ig = sext i32 %7 to i64                      ; 5 uses
  %i.ih = sext i32 %i.ie to i64
  %i.ii = sext i32 %i.id to i64
  %.idx54.i79 = shl nsw i64 %i.if, 2
  %.not3440.i80 = icmp eq i32 %i.ib, 0
  %.idx55.i81 = shl nsw i64 %i.ig, 2              ; 3 uses
  br i1 %.not3440.i80, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i85.preheader.preheader

.lr.ph44.i85.preheader.preheader:                 ; preds = %.lr.ph52.i77
  %10 = add i64 %.idx55.i81, %i.a
  %i.ij = sext i32 %i.hx to i64
  %i.ik = mul nsw i64 %i.ij, -4
  %i.il = mul nsw i64 %i.ig, -8
  %i.im = add nsw i64 %.idx55.i81, -4             ; 2 uses
  %i.in = lshr exact i64 %i.im, 2
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.im, 28
  %n.vec = and i64 %i.io, 9223372036854775800     ; 3 uses
  %i.ip = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br label %.lr.ph44.i85.preheader

.lr.ph44.i85.preheader:                           ; preds = %.lr.ph44.i85.preheader.preheader, %._crit_edge45.i96.loopexit.split
  %indvar170 = phi i64 [ 0, %.lr.ph44.i85.preheader.preheader ], [ %indvar.next171, %._crit_edge45.i96.loopexit.split ] ; 2 uses
  %.050.i83 = phi ptr [ %0, %.lr.ph44.i85.preheader.preheader ], [ %i.iu, %._crit_edge45.i96.loopexit.split ] ; 2 uses
  %.03149.i84 = phi ptr [ %4, %.lr.ph44.i85.preheader.preheader ], [ %i.iv, %._crit_edge45.i96.loopexit.split ]
  %i.iq = mul i64 %i.ik, %indvar170               ; 2 uses
  %i.ir = sub i64 %i.iq, %10
  %i.is = sub i64 %i.iq, %i.a
  %i.it = getelementptr inbounds i8, ptr %.050.i83, i64 %.idx54.i79 ; 2 uses
  br label %.lr.ph44.i85

._crit_edge45.i96.loopexit.split:                 ; preds = %._crit_edge.i92.loopexit
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ih ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %.lcssa164, i64 %i.ii
  %.not.i99 = icmp eq ptr %i.iu, %i.ia
  %indvar.next171 = add i64 %indvar170, 1
  br i1 %.not.i99, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph44.i85.preheader, !llvm.loop !119

.lr.ph44.i85:                                     ; preds = %.lr.ph44.i85.preheader, %._crit_edge.i92.loopexit
  %indvar = phi i64 [ 0, %.lr.ph44.i85.preheader ], [ %indvar.next, %._crit_edge.i92.loopexit ] ; 2 uses
  %.142.i86 = phi ptr [ %.050.i83, %.lr.ph44.i85.preheader ], [ %i.jq, %._crit_edge.i92.loopexit ] ; 5 uses
  %.13241.i87 = phi ptr [ %.03149.i84, %.lr.ph44.i85.preheader ], [ %.lcssa164, %._crit_edge.i92.loopexit ] ; 5 uses
  %i.iw = getelementptr inbounds i8, ptr %.142.i86, i64 %.idx55.i81 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i88.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph44.i85
  %.13241.i87169 = ptrtoaddr ptr %.13241.i87 to i64 ; 2 uses
  %i.ix = mul i64 %indvar, %i.il                  ; 2 uses
  %i.iy = add i64 %i.is, %i.ix
  %i.iz = add i64 %i.iy, %.13241.i87169
  %i.ja = add i64 %i.iz, -1
  %diff.check = icmp ult i64 %i.ja, 31
  %i.jb = add i64 %i.ir, %i.ix
  %i.jc = add i64 %i.jb, %.13241.i87169
  %i.jd = add i64 %i.jc, -1
  %diff.check172 = icmp ult i64 %i.jd, 31
  %conflict.rdx = or i1 %diff.check, %diff.check172
  br i1 %conflict.rdx, label %.lr.ph.i88.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.je = getelementptr i8, ptr %.142.i86, i64 %i.ip
  %i.jf = getelementptr i8, ptr %.13241.i87, i64 %i.ip ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.142.i86, i64 %i.jg ; 3 uses
  %next.gep173 = getelementptr i8, ptr %.13241.i87, i64 %i.jg ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !16
  %wide.load174 = load <4 x float>, ptr %i.jh, align 4, !tbaa !16
  %i.ji = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.ig ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load175 = load <4 x float>, ptr %i.ji, align 4, !tbaa !16
  %wide.load176 = load <4 x float>, ptr %i.jj, align 4, !tbaa !16
  %i.jk = fadd <4 x float> %wide.load, %wide.load175
  %i.jl = fadd <4 x float> %wide.load174, %wide.load176
  %i.jm = fmul <4 x float> %i.jk, splat (float 5.000000e-01)
  %i.jn = fmul <4 x float> %i.jl, splat (float 5.000000e-01)
  %i.jo = getelementptr i8, ptr %next.gep173, i64 16
  store <4 x float> %i.jm, ptr %next.gep173, align 4, !tbaa !16
  store <4 x float> %i.jn, ptr %i.jo, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jp = icmp eq i64 %index.next, %n.vec
  br i1 %i.jp, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i92.loopexit, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %vector.memcheck, %.lr.ph44.i85, %middle.block
  %.238.i89.ph = phi ptr [ %.142.i86, %vector.memcheck ], [ %.142.i86, %.lr.ph44.i85 ], [ %i.je, %middle.block ]
  %.23337.i90.ph = phi ptr [ %.13241.i87, %vector.memcheck ], [ %.13241.i87, %.lr.ph44.i85 ], [ %i.jf, %middle.block ]
  br label %.lr.ph.i88

._crit_edge.i92.loopexit:                         ; preds = %.lr.ph.i88, %middle.block
  %.lcssa164 = phi ptr [ %i.jf, %middle.block ], [ %i.jw, %.lr.ph.i88 ] ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ig ; 2 uses
  %.not34.i95 = icmp eq ptr %i.jq, %i.it
  %indvar.next = add i64 %indvar, 1
  br i1 %.not34.i95, label %._crit_edge45.i96.loopexit.split, label %.lr.ph44.i85, !llvm.loop !121

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader, %.lr.ph.i88
  %.238.i89 = phi ptr [ %i.jx, %.lr.ph.i88 ], [ %.238.i89.ph, %.lr.ph.i88.preheader ] ; 3 uses
  %.23337.i90 = phi ptr [ %i.jw, %.lr.ph.i88 ], [ %.23337.i90.ph, %.lr.ph.i88.preheader ] ; 2 uses
  %i.jr = load float, ptr %.238.i89, align 4, !tbaa !16
  %i.js = getelementptr inbounds [4 x i8], ptr %.238.i89, i64 %i.ig
  %i.jt = load float, ptr %i.js, align 4, !tbaa !16
  %i.ju = fadd float %i.jr, %i.jt
  %i.jv = fmul float %i.ju, 5.000000e-01
  %i.jw = getelementptr inbounds nuw i8, ptr %.23337.i90, i64 4 ; 2 uses
  store float %i.jv, ptr %.23337.i90, align 4, !tbaa !16
  %i.jx = getelementptr inbounds nuw i8, ptr %.238.i89, i64 4 ; 2 uses
  %.not35.i91 = icmp eq ptr %i.jx, %i.iw
  br i1 %.not35.i91, label %._crit_edge.i92.loopexit, label %.lr.ph.i88, !llvm.loop !122

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reduceuIhEEvPKT_iiiPS4_ii.exit: ; preds = %._crit_edge45.i96.loopexit.split, %._crit_edge45.i71.loopexit.split, %._crit_edge45.i46.loopexit.split, %._crit_edge45.i.loopexit.split, %.lr.ph52.i77, %.lr.ph52.i52, %.lr.ph52.i29, %.lr.ph52.i, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils7reducevEPKviiiPviNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  switch i32 %6, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %3, %1                       ; 2 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %.not32.i = icmp eq i32 %i.b, 0
  br i1 %.not32.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %bb.b
  %i.e = mul nsw i32 %7, %2                       ; 7 uses
  %i.f = sub nsw i32 %5, %i.e
  %i.g = shl i32 %1, 1                            ; 2 uses
  %i.h = sub nsw i32 %i.g, %i.e
  %i.i = sext i32 %i.e to i64                     ; 6 uses
  %i.j = sext i32 %1 to i64                       ; 8 uses
  %i.k = sext i32 %i.h to i64
  %i.l = sext i32 %i.f to i64
  %.not2728.i = icmp eq i32 %i.e, 0
  br i1 %.not2728.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph36.i
  %8 = add i64 %i.a, %i.j
  %9 = sext i32 %i.g to i64                       ; 2 uses
  %i.m = add i64 %i.a, %i.i                       ; 2 uses
  %i.n = add i64 %i.m, -1
  %min.iters.check169 = icmp ult i32 %i.e, 8
  %min.iters.check175 = icmp ult i32 %i.e, 32
  %n.vec177 = and i64 %i.i, -32                   ; 5 uses
  %cmp.n188 = icmp eq i64 %n.vec177, %i.i
  %i.o = and i32 %i.e, 24
  %min.epilog.iters.check192 = icmp eq i32 %i.o, 0
  %n.vec195 = and i64 %i.i, -8                    ; 4 uses
  %cmp.n204 = icmp eq i64 %n.vec195, %i.i
  br label %iter.check189

iter.check189:                                    ; preds = %.lr.ph.i.preheader.preheader, %._crit_edge.i.loopexit
  %indvar165 = phi i64 [ 0, %.lr.ph.i.preheader.preheader ], [ %indvar.next166, %._crit_edge.i.loopexit ] ; 3 uses
  %.034.i = phi ptr [ %0, %.lr.ph.i.preheader.preheader ], [ %i.bl, %._crit_edge.i.loopexit ] ; 7 uses
  %.02533.i = phi ptr [ %4, %.lr.ph.i.preheader.preheader ], [ %i.bm, %._crit_edge.i.loopexit ] ; 7 uses
  %i.p = mul i64 %indvar165, %9                   ; 2 uses
  %i.q = add i64 %i.m, %i.p
  %i.r = add i64 %i.n, %i.p
  %i.s = getelementptr inbounds i8, ptr %.034.i, i64 %i.i ; 2 uses
  br i1 %min.iters.check169, label %.lr.ph.i.preheader, label %vector.memcheck170

vector.memcheck170:                               ; preds = %iter.check189
  %.02533.i167 = ptrtoaddr ptr %.02533.i to i64   ; 2 uses
  %i.t = mul i64 %indvar165, %9                   ; 2 uses
  %i.u = add i64 %i.t, %i.a
  %i.v = sub i64 %i.u, %.02533.i167
  %diff.check171 = icmp ugt i64 %i.v, -32
  %i.w = add i64 %8, %i.t
  %i.x = sub i64 %i.w, %.02533.i167
  %diff.check172 = icmp ugt i64 %i.x, -32
  %conflict.rdx173 = or i1 %diff.check171, %diff.check172
  br i1 %conflict.rdx173, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check174

vector.main.loop.iter.check174:                   ; preds = %vector.memcheck170
  br i1 %min.iters.check175, label %vec.epilog.ph193, label %vector.ph176

vector.ph176:                                     ; preds = %vector.main.loop.iter.check174
  %i.y = getelementptr i8, ptr %.034.i, i64 %n.vec177
  %i.z = getelementptr i8, ptr %.02533.i, i64 %n.vec177 ; 2 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.ph176, %vector.body178
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 3 uses
  %next.gep180 = getelementptr i8, ptr %.034.i, i64 %index179 ; 3 uses
  %next.gep181 = getelementptr i8, ptr %.02533.i, i64 %index179 ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep180, i64 16
  %wide.load182 = load <16 x i8>, ptr %next.gep180, align 1, !tbaa !14
  %wide.load183 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !14
  %i.ab = zext <16 x i8> %wide.load182 to <16 x i16>
  %i.ac = zext <16 x i8> %wide.load183 to <16 x i16>
  %i.ad = getelementptr inbounds i8, ptr %next.gep180, i64 %i.j ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load184 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !14
  %wide.load185 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !14
  %i.af = zext <16 x i8> %wide.load184 to <16 x i16>
  %i.ag = zext <16 x i8> %wide.load185 to <16 x i16>
  %i.ah = add nuw nsw <16 x i16> %i.af, %i.ab
  %i.ai = add nuw nsw <16 x i16> %i.ag, %i.ac
  %i.aj = lshr <16 x i16> %i.ah, splat (i16 1)
  %i.ak = lshr <16 x i16> %i.ai, splat (i16 1)
  %i.al = trunc nuw <16 x i16> %i.aj to <16 x i8>
  %i.am = trunc nuw <16 x i16> %i.ak to <16 x i8>
  %i.an = getelementptr i8, ptr %next.gep181, i64 16
  store <16 x i8> %i.al, ptr %next.gep181, align 1, !tbaa !14
  store <16 x i8> %i.am, ptr %i.an, align 1, !tbaa !14
  %index.next186 = add nuw i64 %index179, 32      ; 2 uses
  %i.ao = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.ao, label %middle.block187, label %vector.body178, !llvm.loop !123

middle.block187:                                  ; preds = %vector.body178
  br i1 %cmp.n188, label %._crit_edge.i.loopexit, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block187
  br i1 %min.epilog.iters.check192, label %.lr.ph.i.preheader, label %vec.epilog.ph193, !prof !27

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check174, %vec.epilog.iter.check190
  %vec.epilog.resume.val194 = phi i64 [ %n.vec177, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check174 ]
  %i.ap = getelementptr i8, ptr %.034.i, i64 %n.vec195
  %i.aq = getelementptr i8, ptr %.02533.i, i64 %n.vec195 ; 2 uses
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph193 ], [ %index.next202, %vec.epilog.vector.body196 ] ; 3 uses
  %next.gep198 = getelementptr i8, ptr %.034.i, i64 %index197 ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.02533.i, i64 %index197
  %wide.load200 = load <8 x i8>, ptr %next.gep198, align 1, !tbaa !14
  %i.ar = zext <8 x i8> %wide.load200 to <8 x i16>
  %i.as = getelementptr inbounds i8, ptr %next.gep198, i64 %i.j
  %wide.load201 = load <8 x i8>, ptr %i.as, align 1, !tbaa !14
  %i.at = zext <8 x i8> %wide.load201 to <8 x i16>
  %i.au = add nuw nsw <8 x i16> %i.at, %i.ar
  %i.av = lshr <8 x i16> %i.au, splat (i16 1)
  %i.aw = trunc nuw <8 x i16> %i.av to <8 x i8>
  store <8 x i8> %i.aw, ptr %next.gep199, align 1, !tbaa !14
  %index.next202 = add nuw i64 %index197, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.ax, label %vec.epilog.middle.block203, label %vec.epilog.vector.body196, !llvm.loop !124

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body196
  br i1 %cmp.n204, label %._crit_edge.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check189, %vector.memcheck170, %vec.epilog.iter.check190, %vec.epilog.middle.block203
  %.130.i.ph = phi ptr [ %.034.i, %iter.check189 ], [ %.034.i, %vector.memcheck170 ], [ %i.y, %vec.epilog.iter.check190 ], [ %i.ap, %vec.epilog.middle.block203 ] ; 3 uses
  %.12629.i.ph = phi ptr [ %.02533.i, %iter.check189 ], [ %.02533.i, %vector.memcheck170 ], [ %i.z, %vec.epilog.iter.check190 ], [ %i.aq, %vec.epilog.middle.block203 ] ; 2 uses
  %.130.i.ph218 = ptrtoaddr ptr %.130.i.ph to i64 ; 2 uses
  %i.ay = sub i64 %i.q, %.130.i.ph218
  %i.az = sub i64 %i.r, %.130.i.ph218
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.130.i.prol = phi ptr [ %i.bj, %.lr.ph.i.prol ], [ %.130.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.12629.i.prol = phi ptr [ %i.bi, %.lr.ph.i.prol ], [ %.12629.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = load i8, ptr %.130.i.prol, align 1, !tbaa !14
  %i.bb = zext i8 %i.ba to i16
  %i.bc = getelementptr inbounds i8, ptr %.130.i.prol, i64 %i.j
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i16
  %i.bf = add nuw nsw i16 %i.be, %i.bb
  %i.bg = lshr i16 %i.bf, 1
  %i.bh = trunc nuw i16 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.12629.i.prol, i64 1 ; 3 uses
  store i8 %i.bh, ptr %.12629.i.prol, align 1, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %.130.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !125

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa210.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.130.i.unr = phi ptr [ %.130.i.ph, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %.12629.i.unr = phi ptr [ %.12629.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.az, 3
  br i1 %i.bk, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block203, %middle.block187
  %.lcssa = phi ptr [ %i.aq, %vec.epilog.middle.block203 ], [ %i.z, %middle.block187 ], [ %.lcssa210.unr, %.lr.ph.i.prol.loopexit ], [ %i.cz, %.lr.ph.i ]
  %i.bl = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.lcssa, i64 %i.l
  %.not.i = icmp eq ptr %i.bl, %i.d
  %indvar.next166 = add i64 %indvar165, 1
  br i1 %.not.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %iter.check189, !llvm.loop !126

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.130.i = phi ptr [ %i.da, %.lr.ph.i ], [ %.130.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.12629.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %.12629.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bn = load i8, ptr %.130.i, align 1, !tbaa !14
  %i.bo = zext i8 %i.bn to i16
  %i.bp = getelementptr inbounds i8, ptr %.130.i, i64 %i.j
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %i.br = zext i8 %i.bq to i16
  %i.bs = add nuw nsw i16 %i.br, %i.bo
  %i.bt = lshr i16 %i.bs, 1
  %i.bu = trunc nuw i16 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.12629.i, i64 1
  store i8 %i.bu, ptr %.12629.i, align 1, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %.130.i, i64 1 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %i.j
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add nuw nsw i16 %i.cb, %i.by
  %i.cd = lshr i16 %i.cc, 1
  %i.ce = trunc nuw i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.12629.i, i64 2
  store i8 %i.ce, ptr %i.bv, align 1, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %.130.i, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.j
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !14
  %i.cl = zext i8 %i.ck to i16
  %i.cm = add nuw nsw i16 %i.cl, %i.ci
  %i.cn = lshr i16 %i.cm, 1
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.12629.i, i64 3
  store i8 %i.co, ptr %i.cf, align 1, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %.130.i, i64 3 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !14
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.j
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = zext i8 %i.cu to i16
  %i.cw = add nuw nsw i16 %i.cv, %i.cs
  %i.cx = lshr i16 %i.cw, 1
  %i.cy = trunc nuw i16 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.12629.i, i64 4 ; 2 uses
  store i8 %i.cy, ptr %i.cp, align 1, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %.130.i, i64 4 ; 2 uses
  %.not27.i.3 = icmp eq ptr %i.da, %i.s
  br i1 %.not27.i.3, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !127

bb.c:                                             ; preds = %bb.a
  %i.db = sdiv i32 %1, 2                          ; 3 uses
  %i.dc = mul nsw i32 %3, %i.db                   ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %.idx.i = shl nsw i64 %i.dd, 1
  %i.de = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not32.i28 = icmp eq i32 %i.dc, 0
  br i1 %.not32.i28, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph36.i29

.lr.ph36.i29:                                     ; preds = %bb.c
  %i.df = sdiv i32 %5, 2
  %i.dg = mul nsw i32 %7, %2                      ; 4 uses
  %i.dh = sub nsw i32 %i.df, %i.dg
  %i.di = shl nsw i32 %i.db, 1
  %i.dj = sub nsw i32 %i.di, %i.dg
  %i.dk = sext i32 %i.dg to i64
  %i.dl = sext i32 %i.db to i64
  %i.dm = sext i32 %i.dj to i64
  %i.dn = sext i32 %i.dh to i64
  %.idx38.i = shl nsw i64 %i.dk, 1
  %.not2728.i30 = icmp eq i32 %i.dg, 0
  br i1 %.not2728.i30, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %.lr.ph36.i29, %._crit_edge.i37.loopexit
  %.034.i31 = phi ptr [ %i.dp, %._crit_edge.i37.loopexit ], [ %0, %.lr.ph36.i29 ] ; 2 uses
  %.02533.i32 = phi ptr [ %i.dq, %._crit_edge.i37.loopexit ], [ %4, %.lr.ph36.i29 ]
  %i.do = getelementptr inbounds i8, ptr %.034.i31, i64 %.idx38.i ; 2 uses
  br label %.lr.ph.i33

._crit_edge.i37.loopexit:                         ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.do, i64 %i.dm ; 2 uses
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.dn
  %.not.i40 = icmp eq ptr %i.dp, %i.de
  br i1 %.not.i40, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph.i33.preheader, !llvm.loop !128

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.preheader, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %.130.i34 = phi ptr [ %i.ep, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.034.i31, %.lr.ph.i33.preheader ] ; 3 uses
  %.12629.i35 = phi ptr [ %i.eo, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.02533.i32, %.lr.ph.i33.preheader ] ; 2 uses
  %i.dr = load i16, ptr %.130.i34, align 2, !tbaa !23
  %i.ds = zext i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !24
  %i.dv = getelementptr inbounds [2 x i8], ptr %.130.i34, i64 %i.dl
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !23
  %i.dx = zext i16 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !24
  %i.ea = fadd float %i.du, %i.dz
  %i.eb = fmul float %i.ea, 5.000000e-01          ; 2 uses
  %i.ec = fcmp oeq float %i.eb, 0.000000e+00
  br i1 %i.ec, label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i33
  %i.ed = bitcast float %i.eb to i32              ; 3 uses
  %i.ee = lshr i32 %i.ed, 23
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !21 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ei = and i32 %i.ed, 8384512
  %i.ej = add nuw nsw i32 %i.ei, 4096
  %i.ek = lshr i32 %i.ej, 13
  %i.el = trunc nuw nsw i32 %i.ek to i16
  %i.em = add i16 %i.eh, %i.el
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

bb.f:                                             ; preds = %bb.d
  %i.en = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.ed)
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i:                ; preds = %bb.f, %bb.e, %.lr.ph.i33
  %.1.i.i.i = phi i16 [ 0, %.lr.ph.i33 ], [ %i.em, %bb.e ], [ %i.en, %bb.f ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.12629.i35, i64 2 ; 2 uses
  store i16 %.1.i.i.i, ptr %.12629.i35, align 2, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %.130.i34, i64 2 ; 2 uses
  %.not27.i36 = icmp eq ptr %i.ep, %i.do
  br i1 %.not27.i36, label %._crit_edge.i37.loopexit, label %.lr.ph.i33, !llvm.loop !129

bb.g:                                             ; preds = %bb.a
  %i.eq = sdiv i32 %1, 2                          ; 3 uses
  %i.er = mul nsw i32 %3, %i.eq                   ; 2 uses
  %i.es = sext i32 %i.er to i64
  %.idx.i41 = shl nsw i64 %i.es, 1
  %i.et = getelementptr inbounds i8, ptr %0, i64 %.idx.i41
  %.not32.i42 = icmp eq i32 %i.er, 0
  br i1 %.not32.i42, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph36.i43

.lr.ph36.i43:                                     ; preds = %bb.g
  %i.eu = sdiv i32 %5, 2
  %i.ev = mul nsw i32 %7, %2                      ; 4 uses
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = shl nsw i32 %i.eq, 1                    ; 2 uses
  %i.ey = sub nsw i32 %i.ex, %i.ev
  %i.ez = sext i32 %i.ev to i64
  %i.fa = sext i32 %i.eq to i64                   ; 4 uses
  %i.fb = sext i32 %i.ey to i64
  %i.fc = sext i32 %i.ew to i64
  %.idx38.i44 = shl nsw i64 %i.ez, 1              ; 2 uses
  %.not2728.i45 = icmp eq i32 %i.ev, 0
  br i1 %.not2728.i45, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph.i48.preheader.preheader

.lr.ph.i48.preheader.preheader:                   ; preds = %.lr.ph36.i43
  %.neg208 = mul nsw i64 %i.fa, -2
  %.neg209 = sub i64 %.neg208, %i.a
  %10 = sext i32 %i.ex to i64
  %11 = mul nsw i64 %10, -2
  %i.fd = add nsw i64 %.idx38.i44, -2             ; 3 uses
  %i.fe = lshr exact i64 %i.fd, 1
  %i.ff = add nuw i64 %i.fe, 1                    ; 5 uses
  %min.iters.check129 = icmp ult i64 %i.fd, 6
  %min.iters.check134 = icmp ult i64 %i.fd, 30
  %i.fg = and i64 %i.ff, 12
  %n.vec136 = and i64 %i.ff, -16                  ; 4 uses
  %i.fh = shl i64 %n.vec136, 1                    ; 2 uses
  %cmp.n147 = icmp eq i64 %i.ff, %n.vec136
  %min.epilog.iters.check = icmp eq i64 %i.fg, 0
  %n.vec148 = and i64 %i.ff, -4                   ; 3 uses
  %i.fi = shl i64 %n.vec148, 1                    ; 2 uses
  %cmp.n155 = icmp eq i64 %i.ff, %n.vec148
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.i48.preheader.preheader, %._crit_edge.i52.loopexit
  %indvar125 = phi i64 [ 0, %.lr.ph.i48.preheader.preheader ], [ %indvar.next126, %._crit_edge.i52.loopexit ] ; 2 uses
  %.034.i46 = phi ptr [ %0, %.lr.ph.i48.preheader.preheader ], [ %i.gr, %._crit_edge.i52.loopexit ] ; 7 uses
  %.02533.i47 = phi ptr [ %4, %.lr.ph.i48.preheader.preheader ], [ %i.gs, %._crit_edge.i52.loopexit ] ; 7 uses
  %i.fj = getelementptr inbounds i8, ptr %.034.i46, i64 %.idx38.i44 ; 2 uses
  br i1 %min.iters.check129, label %.lr.ph.i48.preheader, label %vector.memcheck130

vector.memcheck130:                               ; preds = %iter.check
  %.02533.i47127 = ptrtoaddr ptr %.02533.i47 to i64 ; 2 uses
  %i.fk = mul i64 %indvar125, %11                 ; 2 uses
  %12 = sub i64 %i.fk, %i.a
  %i.fl = add i64 %12, %.02533.i47127
  %i.fm = add i64 %i.fl, -1
  %diff.check131 = icmp ult i64 %i.fm, 31
  %13 = add i64 %.neg209, %i.fk
  %i.fn = add i64 %13, %.02533.i47127
  %i.fo = add i64 %i.fn, -1
  %diff.check132 = icmp ult i64 %i.fo, 31
  %conflict.rdx133 = or i1 %diff.check131, %diff.check132
  br i1 %conflict.rdx133, label %.lr.ph.i48.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck130
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check
  %i.fp = getelementptr i8, ptr %.034.i46, i64 %i.fh
  %i.fq = getelementptr i8, ptr %.02533.i47, i64 %i.fh ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph135, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next145, %vector.body137 ] ; 2 uses
  %i.fr = shl i64 %index138, 1                    ; 2 uses
  %next.gep139 = getelementptr i8, ptr %.034.i46, i64 %i.fr ; 3 uses
  %next.gep140 = getelementptr i8, ptr %.02533.i47, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %next.gep139, i64 16
  %wide.load141 = load <8 x i16>, ptr %next.gep139, align 2, !tbaa !21
  %wide.load142 = load <8 x i16>, ptr %i.fs, align 2, !tbaa !21
  %i.ft = zext <8 x i16> %wide.load141 to <8 x i32>
  %i.fu = zext <8 x i16> %wide.load142 to <8 x i32>
  %i.fv = getelementptr inbounds [2 x i8], ptr %next.gep139, i64 %i.fa ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load143 = load <8 x i16>, ptr %i.fv, align 2, !tbaa !21
  %wide.load144 = load <8 x i16>, ptr %i.fw, align 2, !tbaa !21
  %i.fx = zext <8 x i16> %wide.load143 to <8 x i32>
  %i.fy = zext <8 x i16> %wide.load144 to <8 x i32>
  %i.fz = add nuw nsw <8 x i32> %i.fx, %i.ft
  %i.ga = add nuw nsw <8 x i32> %i.fy, %i.fu
  %i.gb = lshr <8 x i32> %i.fz, splat (i32 1)
  %i.gc = lshr <8 x i32> %i.ga, splat (i32 1)
  %i.gd = trunc nuw <8 x i32> %i.gb to <8 x i16>
  %i.ge = trunc nuw <8 x i32> %i.gc to <8 x i16>
  %i.gf = getelementptr i8, ptr %next.gep140, i64 16
  store <8 x i16> %i.gd, ptr %next.gep140, align 2, !tbaa !21
  store <8 x i16> %i.ge, ptr %i.gf, align 2, !tbaa !21
  %index.next145 = add nuw i64 %index138, 16      ; 2 uses
  %i.gg = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.gg, label %middle.block146, label %vector.body137, !llvm.loop !130

middle.block146:                                  ; preds = %vector.body137
  br i1 %cmp.n147, label %._crit_edge.i52.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block146
  br i1 %min.epilog.iters.check, label %.lr.ph.i48.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gh = getelementptr i8, ptr %.034.i46, i64 %i.fi
  %i.gi = getelementptr i8, ptr %.02533.i47, i64 %i.fi ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index149 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ] ; 2 uses
  %i.gj = shl i64 %index149, 1                    ; 2 uses
  %next.gep150 = getelementptr i8, ptr %.034.i46, i64 %i.gj ; 2 uses
  %next.gep151 = getelementptr i8, ptr %.02533.i47, i64 %i.gj
  %wide.load152 = load <4 x i16>, ptr %next.gep150, align 2, !tbaa !21
  %i.gk = zext <4 x i16> %wide.load152 to <4 x i32>
  %i.gl = getelementptr inbounds [2 x i8], ptr %next.gep150, i64 %i.fa
  %wide.load153 = load <4 x i16>, ptr %i.gl, align 2, !tbaa !21
  %i.gm = zext <4 x i16> %wide.load153 to <4 x i32>
  %i.gn = add nuw nsw <4 x i32> %i.gm, %i.gk
  %i.go = lshr <4 x i32> %i.gn, splat (i32 1)
  %i.gp = trunc nuw <4 x i32> %i.go to <4 x i16>
  store <4 x i16> %i.gp, ptr %next.gep151, align 2, !tbaa !21
  %index.next154 = add nuw i64 %index149, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next154, %n.vec148
  br i1 %i.gq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n155, label %._crit_edge.i52.loopexit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %iter.check, %vector.memcheck130, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.130.i49.ph = phi ptr [ %.034.i46, %iter.check ], [ %.034.i46, %vector.memcheck130 ], [ %i.fp, %vec.epilog.iter.check ], [ %i.gh, %vec.epilog.middle.block ]
  %.12629.i50.ph = phi ptr [ %.02533.i47, %iter.check ], [ %.02533.i47, %vector.memcheck130 ], [ %i.fq, %vec.epilog.iter.check ], [ %i.gi, %vec.epilog.middle.block ]
  br label %.lr.ph.i48

._crit_edge.i52.loopexit:                         ; preds = %.lr.ph.i48, %vec.epilog.middle.block, %middle.block146
  %.lcssa107 = phi ptr [ %i.gi, %vec.epilog.middle.block ], [ %i.fq, %middle.block146 ], [ %i.hb, %.lr.ph.i48 ]
  %i.gr = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %i.fb ; 2 uses
  %i.gs = getelementptr inbounds [2 x i8], ptr %.lcssa107, i64 %i.fc
  %.not.i55 = icmp eq ptr %i.gr, %i.et
  %indvar.next126 = add i64 %indvar125, 1
  br i1 %.not.i55, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %iter.check, !llvm.loop !132

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader, %.lr.ph.i48
  %.130.i49 = phi ptr [ %i.hc, %.lr.ph.i48 ], [ %.130.i49.ph, %.lr.ph.i48.preheader ] ; 3 uses
  %.12629.i50 = phi ptr [ %i.hb, %.lr.ph.i48 ], [ %.12629.i50.ph, %.lr.ph.i48.preheader ] ; 2 uses
  %i.gt = load i16, ptr %.130.i49, align 2, !tbaa !21
  %i.gu = zext i16 %i.gt to i32
  %i.gv = getelementptr inbounds [2 x i8], ptr %.130.i49, i64 %i.fa
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !21
  %i.gx = zext i16 %i.gw to i32
  %i.gy = add nuw nsw i32 %i.gx, %i.gu
  %i.gz = lshr i32 %i.gy, 1
  %i.ha = trunc nuw i32 %i.gz to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %.12629.i50, i64 2 ; 2 uses
  store i16 %i.ha, ptr %.12629.i50, align 2, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %.130.i49, i64 2 ; 2 uses
  %.not27.i51 = icmp eq ptr %i.hc, %i.fj
  br i1 %.not27.i51, label %._crit_edge.i52.loopexit, label %.lr.ph.i48, !llvm.loop !133

bb.h:                                             ; preds = %bb.a
  %i.hd = sdiv i32 %1, 4                          ; 3 uses
  %i.he = mul nsw i32 %3, %i.hd                   ; 2 uses
  %i.hf = sext i32 %i.he to i64
  %.idx.i56 = shl nsw i64 %i.hf, 2
  %i.hg = getelementptr inbounds i8, ptr %0, i64 %.idx.i56
  %.not32.i57 = icmp eq i32 %i.he, 0
  br i1 %.not32.i57, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph36.i58

.lr.ph36.i58:                                     ; preds = %bb.h
  %i.hh = sdiv i32 %5, 4
  %i.hi = mul nsw i32 %7, %2                      ; 4 uses
  %i.hj = sub nsw i32 %i.hh, %i.hi
  %i.hk = shl nsw i32 %i.hd, 1                    ; 2 uses
  %i.hl = sub nsw i32 %i.hk, %i.hi
  %i.hm = sext i32 %i.hi to i64
  %i.hn = sext i32 %i.hd to i64                   ; 3 uses
  %i.ho = sext i32 %i.hl to i64
  %i.hp = sext i32 %i.hj to i64
  %.idx38.i59 = shl nsw i64 %i.hm, 2              ; 2 uses
  %.not2728.i60 = icmp eq i32 %i.hi, 0
  br i1 %.not2728.i60, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph.i63.preheader.preheader

.lr.ph.i63.preheader.preheader:                   ; preds = %.lr.ph36.i58
  %.neg = mul nsw i64 %i.hn, -4
  %.neg207 = sub i64 %.neg, %i.a
  %14 = sext i32 %i.hk to i64
  %15 = mul nsw i64 %14, -4
  %i.hq = add nsw i64 %.idx38.i59, -4             ; 2 uses
  %i.hr = lshr exact i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.hq, 28
  %n.vec = and i64 %i.hs, 9223372036854775800     ; 3 uses
  %i.ht = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %.lr.ph.i63.preheader.preheader, %._crit_edge.i67.loopexit
  %indvar = phi i64 [ 0, %.lr.ph.i63.preheader.preheader ], [ %indvar.next, %._crit_edge.i67.loopexit ] ; 2 uses
  %.034.i61 = phi ptr [ %0, %.lr.ph.i63.preheader.preheader ], [ %i.im, %._crit_edge.i67.loopexit ] ; 5 uses
  %.02533.i62 = phi ptr [ %4, %.lr.ph.i63.preheader.preheader ], [ %i.in, %._crit_edge.i67.loopexit ] ; 5 uses
  %i.hu = getelementptr inbounds i8, ptr %.034.i61, i64 %.idx38.i59 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i63.preheader215, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i63.preheader
  %.02533.i62111 = ptrtoaddr ptr %.02533.i62 to i64 ; 2 uses
  %i.hv = mul i64 %indvar, %15                    ; 2 uses
  %16 = sub i64 %i.hv, %i.a
  %i.hw = add i64 %16, %.02533.i62111
  %i.hx = add i64 %i.hw, -1
  %diff.check = icmp ult i64 %i.hx, 31
  %17 = add i64 %.neg207, %i.hv
  %i.hy = add i64 %17, %.02533.i62111
  %i.hz = add i64 %i.hy, -1
  %diff.check112 = icmp ult i64 %i.hz, 31
  %conflict.rdx = or i1 %diff.check, %diff.check112
  br i1 %conflict.rdx, label %.lr.ph.i63.preheader215, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ia = getelementptr i8, ptr %.034.i61, i64 %i.ht
  %i.ib = getelementptr i8, ptr %.02533.i62, i64 %i.ht ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ic = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.034.i61, i64 %i.ic ; 3 uses
  %next.gep113 = getelementptr i8, ptr %.02533.i62, i64 %i.ic ; 2 uses
  %i.id = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !16
  %wide.load114 = load <4 x float>, ptr %i.id, align 4, !tbaa !16
  %i.ie = getelementptr inbounds [4 x i8], ptr %next.gep, i64 %i.hn ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load115 = load <4 x float>, ptr %i.ie, align 4, !tbaa !16
  %wide.load116 = load <4 x float>, ptr %i.if, align 4, !tbaa !16
  %i.ig = fadd <4 x float> %wide.load, %wide.load115
  %i.ih = fadd <4 x float> %wide.load114, %wide.load116
  %i.ii = fmul <4 x float> %i.ig, splat (float 5.000000e-01)
  %i.ij = fmul <4 x float> %i.ih, splat (float 5.000000e-01)
  %i.ik = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x float> %i.ii, ptr %next.gep113, align 4, !tbaa !16
  store <4 x float> %i.ij, ptr %i.ik, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i67.loopexit, label %.lr.ph.i63.preheader215

.lr.ph.i63.preheader215:                          ; preds = %vector.memcheck, %.lr.ph.i63.preheader, %middle.block
  %.130.i64.ph = phi ptr [ %.034.i61, %vector.memcheck ], [ %.034.i61, %.lr.ph.i63.preheader ], [ %i.ia, %middle.block ]
  %.12629.i65.ph = phi ptr [ %.02533.i62, %vector.memcheck ], [ %.02533.i62, %.lr.ph.i63.preheader ], [ %i.ib, %middle.block ]
  br label %.lr.ph.i63

._crit_edge.i67.loopexit:                         ; preds = %.lr.ph.i63, %middle.block
  %.lcssa108 = phi ptr [ %i.ib, %middle.block ], [ %i.it, %.lr.ph.i63 ]
  %i.im = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %i.ho ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %.lcssa108, i64 %i.hp
  %.not.i70 = icmp eq ptr %i.im, %i.hg
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i70, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph.i63.preheader, !llvm.loop !135

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader215, %.lr.ph.i63
  %.130.i64 = phi ptr [ %i.iu, %.lr.ph.i63 ], [ %.130.i64.ph, %.lr.ph.i63.preheader215 ] ; 3 uses
  %.12629.i65 = phi ptr [ %i.it, %.lr.ph.i63 ], [ %.12629.i65.ph, %.lr.ph.i63.preheader215 ] ; 2 uses
  %i.io = load float, ptr %.130.i64, align 4, !tbaa !16
  %i.ip = getelementptr inbounds [4 x i8], ptr %.130.i64, i64 %i.hn
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !16
  %i.ir = fadd float %i.io, %i.iq
  %i.is = fmul float %i.ir, 5.000000e-01
  %i.it = getelementptr inbounds nuw i8, ptr %.12629.i65, i64 4 ; 2 uses
  store float %i.is, ptr %.12629.i65, align 4, !tbaa !16
  %i.iu = getelementptr inbounds nuw i8, ptr %.130.i64, i64 4 ; 2 uses
  %.not27.i66 = icmp eq ptr %i.iu, %i.hu
  br i1 %.not27.i66, label %._crit_edge.i67.loopexit, label %.lr.ph.i63, !llvm.loop !136

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_17reducevIhEEvPKT_iiiPS4_ii.exit: ; preds = %._crit_edge.i67.loopexit, %._crit_edge.i52.loopexit, %._crit_edge.i37.loopexit, %._crit_edge.i.loopexit, %.lr.ph36.i58, %.lr.ph36.i43, %.lr.ph36.i29, %.lr.ph36.i, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils9reduceTriEPKviiiPviNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  switch i32 %6, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.g
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = mul nsw i32 %7, %2                       ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = sext i32 %7 to i64                       ; 15 uses
  %i.e = mul nsw i32 %2, %1                       ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  %.not73.i = icmp eq i32 %i.e, 0
  br i1 %.not73.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.b
  %.neg.i = sdiv i32 %i.b, -2
  %i.h = add i32 %.neg.i, %5
  %i.i = shl nsw i32 %7, 1
  %i.j = sub nsw i32 %i.e, %i.i
  %i.k = shl i32 %1, 1                            ; 2 uses
  %i.l = sub nsw i32 %i.k, %i.b
  %i.m = mul nsw i32 %1, -2
  %i.n = sub nsw i32 %i.m, %7
  %i.o = sext i32 %1 to i64                       ; 6 uses
  %i.p = sext i32 %i.n to i64
  %i.q = sext i32 %i.l to i64
  %i.r = sext i32 %i.j to i64
  %i.s = sext i32 %i.h to i64
  %.not5563.i = icmp eq i32 %i.b, 0
  br i1 %.not5563.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i.preheader.preheader

.lr.ph68.i.preheader.preheader:                   ; preds = %.lr.ph78.i
  %i.t = add nsw i32 %2, -1
  %i.u = mul nsw i32 %i.t, %1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.c
  %i.y = sub nsw i64 0, %i.d
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %8 = add i64 %i.a, %i.o
  %i.aa = sext i32 %i.k to i64                    ; 2 uses
  %i.ab = add i64 %i.a, %i.d                      ; 3 uses
  %i.ac = mul nsw i64 %i.d, -2
  %i.ad = shl nsw i64 %i.d, 1
  %i.ae = add i64 %i.ab, -1
  %min.iters.check321 = icmp ult i32 %7, 4
  %min.iters.check330 = icmp ult i32 %7, 16
  %n.vec332 = and i64 %i.d, -16                   ; 6 uses
  %cmp.n344 = icmp eq i64 %n.vec332, %i.d
  %i.af = and i32 %7, 12
  %min.epilog.iters.check = icmp eq i32 %i.af, 0
  %n.vec345 = and i64 %i.d, -4                    ; 5 uses
  %cmp.n355 = icmp eq i64 %n.vec345, %i.d
  br label %.lr.ph68.i.preheader

.lr.ph68.i.preheader:                             ; preds = %.lr.ph68.i.preheader.preheader, %._crit_edge69.i.loopexit.split
  %indvar314 = phi i64 [ 0, %.lr.ph68.i.preheader.preheader ], [ %indvar.next315, %._crit_edge69.i.loopexit.split ] ; 3 uses
  %.076.i = phi ptr [ %i.z, %.lr.ph68.i.preheader.preheader ], [ %i.ao, %._crit_edge69.i.loopexit.split ]
  %.04975.i = phi ptr [ %0, %.lr.ph68.i.preheader.preheader ], [ %i.an, %._crit_edge69.i.loopexit.split ] ; 2 uses
  %.05274.i = phi ptr [ %4, %.lr.ph68.i.preheader.preheader ], [ %i.ap, %._crit_edge69.i.loopexit.split ]
  %i.ag = mul i64 %indvar314, %i.aa
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = mul i64 %indvar314, %i.aa               ; 3 uses
  %i.aj = add i64 %8, %i.ai
  %i.ak = add i64 %i.ab, %i.ai
  %i.al = add i64 %i.ai, %i.a
  %i.am = getelementptr inbounds i8, ptr %.04975.i, i64 %i.c ; 2 uses
  br label %iter.check

._crit_edge69.i.loopexit.split:                   ; preds = %._crit_edge.i.loopexit
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.q ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.dc, i64 %i.r
  %i.ap = getelementptr inbounds i8, ptr %.lcssa213, i64 %i.s
  %.not.i = icmp eq ptr %i.an, %i.g
  %indvar.next315 = add i64 %indvar314, 1
  br i1 %.not.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i.preheader, !llvm.loop !137

iter.check:                                       ; preds = %.lr.ph68.i.preheader, %._crit_edge.i.loopexit
  %indvar316 = phi i64 [ 0, %.lr.ph68.i.preheader ], [ %indvar.next317, %._crit_edge.i.loopexit ] ; 3 uses
  %.166.i = phi ptr [ %.076.i, %.lr.ph68.i.preheader ], [ %i.dc, %._crit_edge.i.loopexit ] ; 7 uses
  %.15065.i = phi ptr [ %.04975.i, %.lr.ph68.i.preheader ], [ %i.db, %._crit_edge.i.loopexit ] ; 7 uses
  %.15364.i = phi ptr [ %.05274.i, %.lr.ph68.i.preheader ], [ %.lcssa213, %._crit_edge.i.loopexit ] ; 7 uses
  %i.aq = mul i64 %i.ad, %indvar316
  %i.ar = add i64 %i.ah, %i.aq
  %i.as = getelementptr inbounds i8, ptr %.15065.i, i64 %i.d ; 2 uses
  br i1 %min.iters.check321, label %.lr.ph.i.preheader, label %vector.memcheck322

vector.memcheck322:                               ; preds = %iter.check
  %.15364.i319 = ptrtoaddr ptr %.15364.i to i64   ; 4 uses
  %.166.i318 = ptrtoaddr ptr %.166.i to i64
  %i.at = mul i64 %indvar316, %i.ac               ; 3 uses
  %i.au = sub i64 %i.at, %i.al
  %i.av = add i64 %i.au, %.15364.i319
  %i.aw = add i64 %i.av, -1
  %diff.check324.a = icmp ult i64 %i.aw, 15
  %i.ax = sub i64 %i.at, %i.ak
  %i.ay = add i64 %i.ax, %.15364.i319
  %i.az = add i64 %i.ay, -1
  %diff.check326.a = icmp ult i64 %i.az, 15
  %conflict.rdx327.a = or i1 %diff.check324.a, %diff.check326.a
  %i.ba = sub i64 %i.at, %i.aj
  %i.bb = add i64 %i.ba, %.15364.i319
  %i.bc = add i64 %i.bb, -1
  %diff.check328.a = icmp ult i64 %i.bc, 15
  %conflict.rdx327 = or i1 %conflict.rdx327.a, %diff.check328.a
  %9 = sub i64 %.166.i318, %.15364.i319
  %diff.check328 = icmp ugt i64 %9, -16
  %conflict.rdx329 = or i1 %conflict.rdx327, %diff.check328
  br i1 %conflict.rdx329, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck322
  br i1 %min.iters.check330, label %vec.epilog.ph, label %vector.ph331

vector.ph331:                                     ; preds = %vector.main.loop.iter.check
  %i.bd = getelementptr i8, ptr %.166.i, i64 %n.vec332 ; 2 uses
  %i.be = getelementptr i8, ptr %.15065.i, i64 %n.vec332
  %i.bf = getelementptr i8, ptr %.15364.i, i64 %n.vec332 ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.ph331, %vector.body333
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next342, %vector.body333 ] ; 4 uses
  %next.gep335 = getelementptr i8, ptr %.166.i, i64 %index334
  %next.gep336 = getelementptr i8, ptr %.15065.i, i64 %index334 ; 3 uses
  %next.gep337 = getelementptr i8, ptr %.15364.i, i64 %index334
  %wide.load338 = load <16 x i8>, ptr %next.gep336, align 1, !tbaa !14
  %i.bg = zext <16 x i8> %wide.load338 to <16 x i16>
  %i.bh = getelementptr inbounds i8, ptr %next.gep336, i64 %i.d
  %wide.load339 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !14
  %i.bi = zext <16 x i8> %wide.load339 to <16 x i16>
  %i.bj = add nuw nsw <16 x i16> %i.bi, %i.bg
  %i.bk = getelementptr inbounds i8, ptr %next.gep336, i64 %i.o
  %wide.load340 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !14
  %i.bl = zext <16 x i8> %wide.load340 to <16 x i16>
  %i.bm = add nuw nsw <16 x i16> %i.bj, %i.bl
  %wide.load341 = load <16 x i8>, ptr %next.gep335, align 1, !tbaa !14
  %i.bn = zext <16 x i8> %wide.load341 to <16 x i16>
  %i.bo = add nuw nsw <16 x i16> %i.bm, %i.bn
  %i.bp = lshr <16 x i16> %i.bo, splat (i16 2)
  %i.bq = trunc nuw <16 x i16> %i.bp to <16 x i8>
  store <16 x i8> %i.bq, ptr %next.gep337, align 1, !tbaa !14
  %index.next342 = add nuw i64 %index334, 16      ; 2 uses
  %i.br = icmp eq i64 %index.next342, %n.vec332
  br i1 %i.br, label %middle.block343, label %vector.body333, !llvm.loop !138

middle.block343:                                  ; preds = %vector.body333
  br i1 %cmp.n344, label %._crit_edge.i.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block343
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec332, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bs = getelementptr i8, ptr %.166.i, i64 %n.vec345 ; 2 uses
  %i.bt = getelementptr i8, ptr %.15065.i, i64 %n.vec345
  %i.bu = getelementptr i8, ptr %.15364.i, i64 %n.vec345 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index346 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next354, %vec.epilog.vector.body ] ; 4 uses
  %next.gep347 = getelementptr i8, ptr %.166.i, i64 %index346
  %next.gep348 = getelementptr i8, ptr %.15065.i, i64 %index346 ; 3 uses
  %next.gep349 = getelementptr i8, ptr %.15364.i, i64 %index346
  %wide.load350 = load <4 x i8>, ptr %next.gep348, align 1, !tbaa !14
  %i.bv = zext <4 x i8> %wide.load350 to <4 x i16>
  %i.bw = getelementptr inbounds i8, ptr %next.gep348, i64 %i.d
  %wide.load351 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !14
  %i.bx = zext <4 x i8> %wide.load351 to <4 x i16>
  %i.by = add nuw nsw <4 x i16> %i.bx, %i.bv
  %i.bz = getelementptr inbounds i8, ptr %next.gep348, i64 %i.o
  %wide.load352 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !14
  %i.ca = zext <4 x i8> %wide.load352 to <4 x i16>
  %i.cb = add nuw nsw <4 x i16> %i.by, %i.ca
  %wide.load353 = load <4 x i8>, ptr %next.gep347, align 1, !tbaa !14
  %i.cc = zext <4 x i8> %wide.load353 to <4 x i16>
  %i.cd = add nuw nsw <4 x i16> %i.cb, %i.cc
  %i.ce = lshr <4 x i16> %i.cd, splat (i16 2)
  %i.cf = trunc nuw <4 x i16> %i.ce to <4 x i8>
  store <4 x i8> %i.cf, ptr %next.gep349, align 1, !tbaa !14
  %index.next354 = add nuw i64 %index346, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next354, %n.vec345
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n355, label %._crit_edge.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck322, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.260.i.ph = phi ptr [ %.166.i, %iter.check ], [ %.166.i, %vector.memcheck322 ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 3 uses
  %.25159.i.ph = phi ptr [ %.15065.i, %iter.check ], [ %.15065.i, %vector.memcheck322 ], [ %i.be, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 6 uses
  %.25458.i.ph = phi ptr [ %.15364.i, %iter.check ], [ %.15364.i, %vector.memcheck322 ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ] ; 3 uses
  %.25159.i.ph374 = ptrtoaddr ptr %.25159.i.ph to i64 ; 2 uses
  %i.ch = sub i64 %i.ab, %.25159.i.ph374
  %xtraiter = and i64 %i.ch, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ci = load i8, ptr %.25159.i.ph, align 1, !tbaa !14
  %i.cj = zext i8 %i.ci to i16
  %i.ck = getelementptr inbounds i8, ptr %.25159.i.ph, i64 %i.d
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !14
  %i.cm = zext i8 %i.cl to i16
  %i.cn = add nuw nsw i16 %i.cm, %i.cj
  %i.co = getelementptr inbounds i8, ptr %.25159.i.ph, i64 %i.o
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14
  %i.cq = zext i8 %i.cp to i16
  %i.cr = add nuw nsw i16 %i.cn, %i.cq
  %i.cs = load i8, ptr %.260.i.ph, align 1, !tbaa !14
  %i.ct = zext i8 %i.cs to i16
  %i.cu = add nuw nsw i16 %i.cr, %i.ct
  %i.cv = lshr i16 %i.cu, 2
  %i.cw = trunc nuw i16 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.25458.i.ph, i64 1 ; 2 uses
  store i8 %i.cw, ptr %.25458.i.ph, align 1, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %.25159.i.ph, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.260.i.ph, i64 1 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa360.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cx, %.lr.ph.i.prol ]
  %.lcssa359.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.cz, %.lr.ph.i.prol ]
  %.260.i.unr = phi ptr [ %.260.i.ph, %.lr.ph.i.preheader ], [ %i.cz, %.lr.ph.i.prol ]
  %.25159.i.unr = phi ptr [ %.25159.i.ph, %.lr.ph.i.preheader ], [ %i.cy, %.lr.ph.i.prol ]
  %.25458.i.unr = phi ptr [ %.25458.i.ph, %.lr.ph.i.preheader ], [ %i.cx, %.lr.ph.i.prol ]
  %i.da = icmp eq i64 %i.ar, %.25159.i.ph374
  br i1 %i.da, label %._crit_edge.i.loopexit, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block343
  %.lcssa213 = phi ptr [ %i.bu, %vec.epilog.middle.block ], [ %i.bf, %middle.block343 ], [ %.lcssa360.unr, %.lr.ph.i.prol.loopexit ], [ %i.ek, %.lr.ph.i ] ; 2 uses
  %.lcssa = phi ptr [ %i.bs, %vec.epilog.middle.block ], [ %i.bd, %middle.block343 ], [ %.lcssa359.unr, %.lr.ph.i.prol.loopexit ], [ %i.em, %.lr.ph.i ]
  %i.db = getelementptr inbounds i8, ptr %i.as, i64 %i.d ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.lcssa, i64 %i.p ; 2 uses
  %.not55.i = icmp eq ptr %i.db, %i.am
  %indvar.next317 = add i64 %indvar316, 1
  br i1 %.not55.i, label %._crit_edge69.i.loopexit.split, label %iter.check, !llvm.loop !140

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.260.i = phi ptr [ %i.em, %.lr.ph.i ], [ %.260.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.25159.i = phi ptr [ %i.el, %.lr.ph.i ], [ %.25159.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.25458.i = phi ptr [ %i.ek, %.lr.ph.i ], [ %.25458.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.dd = load i8, ptr %.25159.i, align 1, !tbaa !14
  %i.de = zext i8 %i.dd to i16
  %i.df = getelementptr inbounds i8, ptr %.25159.i, i64 %i.d
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = zext i8 %i.dg to i16
  %i.di = add nuw nsw i16 %i.dh, %i.de
  %i.dj = getelementptr inbounds i8, ptr %.25159.i, i64 %i.o
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !14
  %i.dl = zext i8 %i.dk to i16
  %i.dm = add nuw nsw i16 %i.di, %i.dl
  %i.dn = load i8, ptr %.260.i, align 1, !tbaa !14
  %i.do = zext i8 %i.dn to i16
  %i.dp = add nuw nsw i16 %i.dm, %i.do
  %i.dq = lshr i16 %i.dp, 2
  %i.dr = trunc nuw i16 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.25458.i, i64 1
  store i8 %i.dr, ptr %.25458.i, align 1, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %.25159.i, i64 1 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.260.i, i64 1
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !14
  %i.dw = zext i8 %i.dv to i16
  %i.dx = getelementptr inbounds i8, ptr %i.dt, i64 %i.d
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !14
  %i.dz = zext i8 %i.dy to i16
  %i.ea = add nuw nsw i16 %i.dz, %i.dw
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 %i.o
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !14
  %i.ed = zext i8 %i.ec to i16
  %i.ee = add nuw nsw i16 %i.ea, %i.ed
  %i.ef = load i8, ptr %i.du, align 1, !tbaa !14
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add nuw nsw i16 %i.ee, %i.eg
  %i.ei = lshr i16 %i.eh, 2
  %i.ej = trunc nuw i16 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.25458.i, i64 2 ; 2 uses
  store i8 %i.ej, ptr %i.ds, align 1, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %.25159.i, i64 2 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.260.i, i64 2 ; 2 uses
  %.not56.i.1 = icmp eq ptr %i.el, %i.as
  br i1 %.not56.i.1, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !141

bb.c:                                             ; preds = %bb.a
  %i.en = sdiv i32 %1, 2                          ; 5 uses
  %i.eo = sext i32 %7 to i64                      ; 4 uses
  %i.ep = mul nsw i32 %2, %i.en                   ; 3 uses
  %i.eq = sext i32 %i.ep to i64
  %.idx.i = shl nsw i64 %i.eq, 1
  %i.er = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.not73.i24 = icmp eq i32 %i.ep, 0
  br i1 %.not73.i24, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph78.i25

.lr.ph78.i25:                                     ; preds = %bb.c
  %i.es = mul nsw i32 %7, %2                      ; 4 uses
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %.neg.i26 = sdiv i32 %i.es, -2
  %i.eu = sdiv i32 %5, 2
  %i.ev = add nsw i32 %.neg.i26, %i.eu
  %i.ew = shl nsw i32 %7, 1
  %i.ex = sub nsw i32 %i.ep, %i.ew
  %i.ey = shl nsw i32 %i.en, 1
  %i.ez = sub nsw i32 %i.ey, %i.es
  %i.fa = mul nsw i32 %i.en, -2
  %i.fb = sub nsw i32 %i.fa, %7
  %i.fc = sext i32 %i.en to i64
  %i.fd = sext i32 %i.fb to i64
  %i.fe = sext i32 %i.ez to i64
  %i.ff = sext i32 %i.ex to i64
  %i.fg = sext i32 %i.ev to i64
  %.idx80.i = shl nsw i64 %i.et, 1
  %.not5563.i27 = icmp eq i32 %i.es, 0
  %.idx81.i = shl nsw i64 %i.eo, 1
  br i1 %.not5563.i27, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i32.preheader.preheader

.lr.ph68.i32.preheader.preheader:                 ; preds = %.lr.ph78.i25
  %i.fh = add nsw i32 %2, -1
  %i.fi = mul nsw i32 %i.fh, %i.en
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [2 x i8], ptr %0, i64 %i.fj
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.fk, i64 %i.et
  %i.fm = sub nsw i64 0, %i.eo
  %i.fn = getelementptr inbounds [2 x i8], ptr %i.fl, i64 %i.fm
  br label %.lr.ph68.i32.preheader

.lr.ph68.i32.preheader:                           ; preds = %.lr.ph68.i32.preheader.preheader, %._crit_edge69.i46.loopexit.split
  %.076.i29 = phi ptr [ %i.fq, %._crit_edge69.i46.loopexit.split ], [ %i.fn, %.lr.ph68.i32.preheader.preheader ]
  %.04975.i30 = phi ptr [ %i.fp, %._crit_edge69.i46.loopexit.split ], [ %0, %.lr.ph68.i32.preheader.preheader ] ; 2 uses
  %.05274.i31 = phi ptr [ %i.fr, %._crit_edge69.i46.loopexit.split ], [ %4, %.lr.ph68.i32.preheader.preheader ]
  %i.fo = getelementptr inbounds i8, ptr %.04975.i30, i64 %.idx80.i ; 2 uses
  br label %.lr.ph68.i32

._crit_edge69.i46.loopexit.split:                 ; preds = %._crit_edge.i41.loopexit
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fo, i64 %i.fe ; 2 uses
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.fu, i64 %i.ff
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.fg
  %.not.i50 = icmp eq ptr %i.fp, %i.er
  br i1 %.not.i50, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i32.preheader, !llvm.loop !142

.lr.ph68.i32:                                     ; preds = %.lr.ph68.i32.preheader, %._crit_edge.i41.loopexit
  %.166.i33 = phi ptr [ %i.fu, %._crit_edge.i41.loopexit ], [ %.076.i29, %.lr.ph68.i32.preheader ]
  %.15065.i34 = phi ptr [ %i.ft, %._crit_edge.i41.loopexit ], [ %.04975.i30, %.lr.ph68.i32.preheader ] ; 2 uses
  %.15364.i35 = phi ptr [ %i.hd, %._crit_edge.i41.loopexit ], [ %.05274.i31, %.lr.ph68.i32.preheader ]
  %i.fs = getelementptr inbounds i8, ptr %.15065.i34, i64 %.idx81.i ; 2 uses
  br label %.lr.ph.i36

._crit_edge.i41.loopexit:                         ; preds = %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %i.ft = getelementptr inbounds [2 x i8], ptr %i.fs, i64 %i.eo ; 2 uses
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.hf, i64 %i.fd ; 2 uses
  %.not55.i45 = icmp eq ptr %i.ft, %i.fo
  br i1 %.not55.i45, label %._crit_edge69.i46.loopexit.split, label %.lr.ph68.i32, !llvm.loop !143

.lr.ph.i36:                                       ; preds = %.lr.ph68.i32, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i
  %.260.i37 = phi ptr [ %i.hf, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.166.i33, %.lr.ph68.i32 ] ; 2 uses
  %.25159.i38 = phi ptr [ %i.he, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.15065.i34, %.lr.ph68.i32 ] ; 4 uses
  %.25458.i39 = phi ptr [ %i.hd, %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i ], [ %.15364.i35, %.lr.ph68.i32 ] ; 2 uses
  %i.fv = load i16, ptr %.25159.i38, align 2, !tbaa !23
  %i.fw = zext i16 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !24
  %i.fz = getelementptr inbounds [2 x i8], ptr %.25159.i38, i64 %i.eo
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !23
  %i.gb = zext i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !24
  %i.ge = fadd float %i.fy, %i.gd
  %i.gf = getelementptr inbounds [2 x i8], ptr %.25159.i38, i64 %i.fc
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !23
  %i.gh = zext i16 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !24
  %i.gk = fadd float %i.ge, %i.gj
  %i.gl = load i16, ptr %.260.i37, align 2, !tbaa !23
  %i.gm = zext i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !24
  %i.gp = fadd float %i.gk, %i.go
  %i.gq = fmul float %i.gp, 2.500000e-01          ; 2 uses
  %i.gr = fcmp oeq float %i.gq, 0.000000e+00
  br i1 %i.gr, label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i36
  %i.gs = bitcast float %i.gq to i32              ; 3 uses
  %i.gt = lshr i32 %i.gs, 23
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8f2hTableE, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !21 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gw, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gx = and i32 %i.gs, 8384512
  %i.gy = add nuw nsw i32 %i.gx, 4096
  %i.gz = lshr i32 %i.gy, 13
  %i.ha = trunc nuw nsw i32 %i.gz to i16
  %i.hb = add i16 %i.gw, %i.ha
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

bb.f:                                             ; preds = %bb.d
  %i.hc = tail call noundef zeroext i16 @_ZN4Ptex4v2_48PtexHalf16fromFloat_exceptEj(i32 noundef %i.gs)
  br label %_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i

_ZN4Ptex4v2_48PtexHalfC2Ef.exit.i:                ; preds = %bb.f, %bb.e, %.lr.ph.i36
  %.1.i.i.i = phi i16 [ 0, %.lr.ph.i36 ], [ %i.hb, %bb.e ], [ %i.hc, %bb.f ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.25458.i39, i64 2 ; 3 uses
  store i16 %.1.i.i.i, ptr %.25458.i39, align 2, !tbaa !21
  %i.he = getelementptr inbounds nuw i8, ptr %.25159.i38, i64 2 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.260.i37, i64 2 ; 2 uses
  %.not56.i40 = icmp eq ptr %i.he, %i.fs
  br i1 %.not56.i40, label %._crit_edge.i41.loopexit, label %.lr.ph.i36, !llvm.loop !144

bb.g:                                             ; preds = %bb.a
  %i.hg = sdiv i32 %1, 2                          ; 5 uses
  %i.hh = sext i32 %7 to i64                      ; 6 uses
  %i.hi = mul nsw i32 %2, %i.hg                   ; 3 uses
  %i.hj = sext i32 %i.hi to i64
  %.idx.i51 = shl nsw i64 %i.hj, 1
  %i.hk = getelementptr inbounds i8, ptr %0, i64 %.idx.i51
  %.not73.i52 = icmp eq i32 %i.hi, 0
  br i1 %.not73.i52, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph78.i53

.lr.ph78.i53:                                     ; preds = %bb.g
  %i.hl = mul nsw i32 %7, %2                      ; 4 uses
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %.neg.i54 = sdiv i32 %i.hl, -2
  %i.hn = sdiv i32 %5, 2
  %i.ho = add nsw i32 %.neg.i54, %i.hn
  %i.hp = shl nsw i32 %7, 1
  %i.hq = sub nsw i32 %i.hi, %i.hp
  %i.hr = shl nsw i32 %i.hg, 1                    ; 2 uses
  %i.hs = sub nsw i32 %i.hr, %i.hl
  %i.ht = mul nsw i32 %i.hg, -2
  %i.hu = sub nsw i32 %i.ht, %7
  %i.hv = sext i32 %i.hg to i64                   ; 3 uses
  %i.hw = sext i32 %i.hu to i64
  %i.hx = sext i32 %i.hs to i64
  %i.hy = sext i32 %i.hq to i64
  %i.hz = sext i32 %i.ho to i64
  %.idx80.i55 = shl nsw i64 %i.hm, 1
  %.not5563.i56 = icmp eq i32 %i.hl, 0
  %.idx81.i57 = shl nsw i64 %i.hh, 1              ; 3 uses
  br i1 %.not5563.i56, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i62.preheader.preheader

.lr.ph68.i62.preheader.preheader:                 ; preds = %.lr.ph78.i53
  %i.ia = add nsw i32 %2, -1
  %i.ib = mul nsw i32 %i.ia, %i.hg
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ic
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.id, i64 %i.hm
  %i.if = sub nsw i64 0, %i.hh
  %i.ig = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.if
  %i.ih = sub i64 0, %i.a                         ; 2 uses
  %10 = shl nsw i64 %i.hv, 1
  %11 = sub i64 %i.ih, %10
  %i.ii = sext i32 %i.hr to i64
  %i.ij = mul nsw i64 %i.ii, -2
  %i.ik = sub i64 %i.ih, %.idx81.i57
  %i.il = mul nsw i64 %i.hh, -4
  %i.im = add nsw i64 %.idx81.i57, -2             ; 2 uses
  %i.in = lshr exact i64 %i.im, 1
  %i.io = add nuw i64 %i.in, 1                    ; 2 uses
  %min.iters.check274 = icmp ult i64 %i.im, 14
  %n.vec284 = and i64 %i.io, -8                   ; 3 uses
  %i.ip = shl i64 %n.vec284, 1                    ; 3 uses
  %cmp.n296 = icmp eq i64 %i.io, %n.vec284
  br label %.lr.ph68.i62.preheader

.lr.ph68.i62.preheader:                           ; preds = %.lr.ph68.i62.preheader.preheader, %._crit_edge69.i76.loopexit.split
  %indvar271 = phi i64 [ 0, %.lr.ph68.i62.preheader.preheader ], [ %indvar.next272, %._crit_edge69.i76.loopexit.split ] ; 2 uses
  %.076.i59 = phi ptr [ %i.ig, %.lr.ph68.i62.preheader.preheader ], [ %i.iu, %._crit_edge69.i76.loopexit.split ]
  %.04975.i60 = phi ptr [ %0, %.lr.ph68.i62.preheader.preheader ], [ %i.it, %._crit_edge69.i76.loopexit.split ] ; 2 uses
  %.05274.i61 = phi ptr [ %4, %.lr.ph68.i62.preheader.preheader ], [ %i.iv, %._crit_edge69.i76.loopexit.split ]
  %i.iq = mul i64 %i.ij, %indvar271               ; 3 uses
  %12 = add i64 %11, %i.iq
  %i.ir = add i64 %i.ik, %i.iq
  %13 = sub i64 %i.iq, %i.a
  %i.is = getelementptr inbounds i8, ptr %.04975.i60, i64 %.idx80.i55 ; 2 uses
  br label %.lr.ph68.i62

._crit_edge69.i76.loopexit.split:                 ; preds = %._crit_edge.i71.loopexit
  %i.it = getelementptr inbounds [2 x i8], ptr %i.is, i64 %i.hx ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.jy, i64 %i.hy
  %i.iv = getelementptr inbounds [2 x i8], ptr %.lcssa219, i64 %i.hz
  %.not.i80 = icmp eq ptr %i.it, %i.hk
  %indvar.next272 = add i64 %indvar271, 1
  br i1 %.not.i80, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i62.preheader, !llvm.loop !145

.lr.ph68.i62:                                     ; preds = %.lr.ph68.i62.preheader, %._crit_edge.i71.loopexit
  %indvar269 = phi i64 [ 0, %.lr.ph68.i62.preheader ], [ %indvar.next270, %._crit_edge.i71.loopexit ] ; 2 uses
  %.166.i63 = phi ptr [ %.076.i59, %.lr.ph68.i62.preheader ], [ %i.jy, %._crit_edge.i71.loopexit ] ; 5 uses
  %.15065.i64 = phi ptr [ %.04975.i60, %.lr.ph68.i62.preheader ], [ %i.jx, %._crit_edge.i71.loopexit ] ; 5 uses
  %.15364.i65 = phi ptr [ %.05274.i61, %.lr.ph68.i62.preheader ], [ %.lcssa219, %._crit_edge.i71.loopexit ] ; 5 uses
  %i.iw = getelementptr inbounds i8, ptr %.15065.i64, i64 %.idx81.i57 ; 2 uses
  br i1 %min.iters.check274, label %.lr.ph.i66.preheader, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph68.i62
  %.166.i63268 = ptrtoaddr ptr %.166.i63 to i64
  %.15364.i65267 = ptrtoaddr ptr %.15364.i65 to i64 ; 4 uses
  %i.ix = mul i64 %indvar269, %i.il               ; 3 uses
  %i.iy = add i64 %13, %i.ix
  %i.iz = add i64 %i.iy, %.15364.i65267
  %i.ja = add i64 %i.iz, -1
  %diff.check277.a = icmp ult i64 %i.ja, 15
  %i.jb = add i64 %i.ir, %i.ix
  %i.jc = add i64 %i.jb, %.15364.i65267
  %i.jd = add i64 %i.jc, -1
  %diff.check279.a = icmp ult i64 %i.jd, 15
  %conflict.rdx280.a = or i1 %diff.check277.a, %diff.check279.a
  %i.je = add i64 %12, %i.ix
  %i.jf = add i64 %i.je, %.15364.i65267
  %i.jg = add i64 %i.jf, -1
  %diff.check281.a = icmp ult i64 %i.jg, 15
  %conflict.rdx280 = or i1 %conflict.rdx280.a, %diff.check281.a
  %14 = sub i64 %.166.i63268, %.15364.i65267
  %diff.check281 = icmp ugt i64 %14, -16
  %conflict.rdx282 = or i1 %conflict.rdx280, %diff.check281
  br i1 %conflict.rdx282, label %.lr.ph.i66.preheader, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck275
  %i.jh = getelementptr i8, ptr %.166.i63, i64 %i.ip ; 2 uses
  %i.ji = getelementptr i8, ptr %.15065.i64, i64 %i.ip
  %i.jj = getelementptr i8, ptr %.15364.i65, i64 %i.ip ; 2 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next294, %vector.body285 ] ; 2 uses
  %i.jk = shl i64 %index286, 1                    ; 3 uses
  %next.gep287 = getelementptr i8, ptr %.166.i63, i64 %i.jk
  %next.gep288 = getelementptr i8, ptr %.15065.i64, i64 %i.jk ; 3 uses
  %next.gep289 = getelementptr i8, ptr %.15364.i65, i64 %i.jk
  %wide.load290 = load <8 x i16>, ptr %next.gep288, align 2, !tbaa !21
  %i.jl = zext <8 x i16> %wide.load290 to <8 x i32>
  %i.jm = getelementptr inbounds [2 x i8], ptr %next.gep288, i64 %i.hh
  %wide.load291 = load <8 x i16>, ptr %i.jm, align 2, !tbaa !21
  %i.jn = zext <8 x i16> %wide.load291 to <8 x i32>
  %i.jo = add nuw nsw <8 x i32> %i.jn, %i.jl
  %i.jp = getelementptr inbounds [2 x i8], ptr %next.gep288, i64 %i.hv
  %wide.load292 = load <8 x i16>, ptr %i.jp, align 2, !tbaa !21
  %i.jq = zext <8 x i16> %wide.load292 to <8 x i32>
  %i.jr = add nuw nsw <8 x i32> %i.jo, %i.jq
  %wide.load293 = load <8 x i16>, ptr %next.gep287, align 2, !tbaa !21
  %i.js = zext <8 x i16> %wide.load293 to <8 x i32>
  %i.jt = add nuw nsw <8 x i32> %i.jr, %i.js
  %i.ju = lshr <8 x i32> %i.jt, splat (i32 2)
  %i.jv = trunc nuw <8 x i32> %i.ju to <8 x i16>
  store <8 x i16> %i.jv, ptr %next.gep289, align 2, !tbaa !21
  %index.next294 = add nuw i64 %index286, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next294, %n.vec284
  br i1 %i.jw, label %middle.block295, label %vector.body285, !llvm.loop !146

middle.block295:                                  ; preds = %vector.body285
  br i1 %cmp.n296, label %._crit_edge.i71.loopexit, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %vector.memcheck275, %.lr.ph68.i62, %middle.block295
  %.260.i67.ph = phi ptr [ %.166.i63, %vector.memcheck275 ], [ %.166.i63, %.lr.ph68.i62 ], [ %i.jh, %middle.block295 ]
  %.25159.i68.ph = phi ptr [ %.15065.i64, %vector.memcheck275 ], [ %.15065.i64, %.lr.ph68.i62 ], [ %i.ji, %middle.block295 ]
  %.25458.i69.ph = phi ptr [ %.15364.i65, %vector.memcheck275 ], [ %.15364.i65, %.lr.ph68.i62 ], [ %i.jj, %middle.block295 ]
  br label %.lr.ph.i66

._crit_edge.i71.loopexit:                         ; preds = %.lr.ph.i66, %middle.block295
  %.lcssa219 = phi ptr [ %i.jj, %middle.block295 ], [ %i.ko, %.lr.ph.i66 ] ; 2 uses
  %.lcssa218 = phi ptr [ %i.jh, %middle.block295 ], [ %i.kq, %.lr.ph.i66 ]
  %i.jx = getelementptr inbounds [2 x i8], ptr %i.iw, i64 %i.hh ; 2 uses
  %i.jy = getelementptr inbounds [2 x i8], ptr %.lcssa218, i64 %i.hw ; 2 uses
  %.not55.i75 = icmp eq ptr %i.jx, %i.is
  %indvar.next270 = add i64 %indvar269, 1
  br i1 %.not55.i75, label %._crit_edge69.i76.loopexit.split, label %.lr.ph68.i62, !llvm.loop !147

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader, %.lr.ph.i66
  %.260.i67 = phi ptr [ %i.kq, %.lr.ph.i66 ], [ %.260.i67.ph, %.lr.ph.i66.preheader ] ; 2 uses
  %.25159.i68 = phi ptr [ %i.kp, %.lr.ph.i66 ], [ %.25159.i68.ph, %.lr.ph.i66.preheader ] ; 4 uses
  %.25458.i69 = phi ptr [ %i.ko, %.lr.ph.i66 ], [ %.25458.i69.ph, %.lr.ph.i66.preheader ] ; 2 uses
  %i.jz = load i16, ptr %.25159.i68, align 2, !tbaa !21
  %i.ka = zext i16 %i.jz to i32
  %i.kb = getelementptr inbounds [2 x i8], ptr %.25159.i68, i64 %i.hh
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !21
  %i.kd = zext i16 %i.kc to i32
  %i.ke = add nuw nsw i32 %i.kd, %i.ka
  %i.kf = getelementptr inbounds [2 x i8], ptr %.25159.i68, i64 %i.hv
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !21
  %i.kh = zext i16 %i.kg to i32
  %i.ki = add nuw nsw i32 %i.ke, %i.kh
  %i.kj = load i16, ptr %.260.i67, align 2, !tbaa !21
  %i.kk = zext i16 %i.kj to i32
  %i.kl = add nuw nsw i32 %i.ki, %i.kk
  %i.km = lshr i32 %i.kl, 2
  %i.kn = trunc nuw i32 %i.km to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.25458.i69, i64 2 ; 2 uses
  store i16 %i.kn, ptr %.25458.i69, align 2, !tbaa !21
  %i.kp = getelementptr inbounds nuw i8, ptr %.25159.i68, i64 2 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.260.i67, i64 2 ; 2 uses
  %.not56.i70 = icmp eq ptr %i.kp, %i.iw
  br i1 %.not56.i70, label %._crit_edge.i71.loopexit, label %.lr.ph.i66, !llvm.loop !148

bb.h:                                             ; preds = %bb.a
  %i.kr = sdiv i32 %1, 4                          ; 5 uses
  %i.ks = sext i32 %7 to i64                      ; 6 uses
  %i.kt = mul nsw i32 %2, %i.kr                   ; 3 uses
  %i.ku = sext i32 %i.kt to i64
  %.idx.i81 = shl nsw i64 %i.ku, 2
  %i.kv = getelementptr inbounds i8, ptr %0, i64 %.idx.i81
  %.not73.i82 = icmp eq i32 %i.kt, 0
  br i1 %.not73.i82, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph78.i83

.lr.ph78.i83:                                     ; preds = %bb.h
  %i.kw = mul nsw i32 %7, %2                      ; 4 uses
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %.neg.i84 = sdiv i32 %i.kw, -2
  %i.ky = sdiv i32 %5, 4
  %i.kz = add nsw i32 %.neg.i84, %i.ky
  %i.la = shl nsw i32 %7, 1
  %i.lb = sub nsw i32 %i.kt, %i.la
  %i.lc = shl nsw i32 %i.kr, 1                    ; 2 uses
  %i.ld = sub nsw i32 %i.lc, %i.kw
  %i.le = mul nsw i32 %i.kr, -2
  %i.lf = sub nsw i32 %i.le, %7
  %i.lg = sext i32 %i.kr to i64                   ; 3 uses
  %i.lh = sext i32 %i.lf to i64
  %i.li = sext i32 %i.ld to i64
  %i.lj = sext i32 %i.lb to i64
  %i.lk = sext i32 %i.kz to i64
  %.idx80.i85 = shl nsw i64 %i.kx, 2
  %.not5563.i86 = icmp eq i32 %i.kw, 0
  %.idx81.i87 = shl nsw i64 %i.ks, 2              ; 3 uses
  br i1 %.not5563.i86, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i92.preheader.preheader

.lr.ph68.i92.preheader.preheader:                 ; preds = %.lr.ph78.i83
  %i.ll = add nsw i32 %2, -1
  %i.lm = mul nsw i32 %i.ll, %i.kr
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ln
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.kx
  %i.lq = sub nsw i64 0, %i.ks
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = sub i64 0, %i.a                         ; 2 uses
  %15 = shl nsw i64 %i.lg, 2
  %16 = sub i64 %i.ls, %15
  %i.lt = sext i32 %i.lc to i64
  %i.lu = mul nsw i64 %i.lt, -4
  %i.lv = sub i64 %i.ls, %.idx81.i87
  %i.lw = mul nsw i64 %i.ks, -8
  %i.lx = add nsw i64 %.idx81.i87, -4             ; 2 uses
  %i.ly = lshr exact i64 %i.lx, 2
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lx, 28
  %n.vec = and i64 %i.lz, 9223372036854775800     ; 3 uses
  %i.ma = shl i64 %n.vec, 2                       ; 3 uses
  %cmp.n = icmp eq i64 %i.lz, %n.vec
  br label %.lr.ph68.i92.preheader

.lr.ph68.i92.preheader:                           ; preds = %.lr.ph68.i92.preheader.preheader, %._crit_edge69.i106.loopexit.split
  %indvar235 = phi i64 [ 0, %.lr.ph68.i92.preheader.preheader ], [ %indvar.next236, %._crit_edge69.i106.loopexit.split ] ; 2 uses
  %.076.i89 = phi ptr [ %i.lr, %.lr.ph68.i92.preheader.preheader ], [ %i.mf, %._crit_edge69.i106.loopexit.split ]
  %.04975.i90 = phi ptr [ %0, %.lr.ph68.i92.preheader.preheader ], [ %i.me, %._crit_edge69.i106.loopexit.split ] ; 2 uses
  %.05274.i91 = phi ptr [ %4, %.lr.ph68.i92.preheader.preheader ], [ %i.mg, %._crit_edge69.i106.loopexit.split ]
  %i.mb = mul i64 %i.lu, %indvar235               ; 3 uses
  %17 = add i64 %16, %i.mb
  %i.mc = add i64 %i.lv, %i.mb
  %18 = sub i64 %i.mb, %i.a
  %i.md = getelementptr inbounds i8, ptr %.04975.i90, i64 %.idx80.i85 ; 2 uses
  br label %.lr.ph68.i92

._crit_edge69.i106.loopexit.split:                ; preds = %._crit_edge.i101.loopexit
  %i.me = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.li ; 2 uses
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.lj
  %i.mg = getelementptr inbounds [4 x i8], ptr %.lcssa222, i64 %i.lk
  %.not.i110 = icmp eq ptr %i.me, %i.kv
  %indvar.next236 = add i64 %indvar235, 1
  br i1 %.not.i110, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit, label %.lr.ph68.i92.preheader, !llvm.loop !149

.lr.ph68.i92:                                     ; preds = %.lr.ph68.i92.preheader, %._crit_edge.i101.loopexit
  %indvar = phi i64 [ 0, %.lr.ph68.i92.preheader ], [ %indvar.next, %._crit_edge.i101.loopexit ] ; 2 uses
  %.166.i93 = phi ptr [ %.076.i89, %.lr.ph68.i92.preheader ], [ %i.nn, %._crit_edge.i101.loopexit ] ; 5 uses
  %.15065.i94 = phi ptr [ %.04975.i90, %.lr.ph68.i92.preheader ], [ %i.nm, %._crit_edge.i101.loopexit ] ; 5 uses
  %.15364.i95 = phi ptr [ %.05274.i91, %.lr.ph68.i92.preheader ], [ %.lcssa222, %._crit_edge.i101.loopexit ] ; 5 uses
  %i.mh = getelementptr inbounds i8, ptr %.15065.i94, i64 %.idx81.i87 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i96.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph68.i92
  %.166.i93234 = ptrtoaddr ptr %.166.i93 to i64
  %.15364.i95233 = ptrtoaddr ptr %.15364.i95 to i64 ; 4 uses
  %i.mi = mul i64 %indvar, %i.lw                  ; 3 uses
  %i.mj = add i64 %18, %i.mi
  %i.mk = add i64 %i.mj, %.15364.i95233
  %i.ml = add i64 %i.mk, -1
  %diff.check237.a = icmp ult i64 %i.ml, 31
  %i.mm = add i64 %i.mc, %i.mi
  %i.mn = add i64 %i.mm, %.15364.i95233
  %i.mo = add i64 %i.mn, -1
  %diff.check238.a = icmp ult i64 %i.mo, 31
  %conflict.rdx239.a = or i1 %diff.check237.a, %diff.check238.a
  %i.mp = add i64 %17, %i.mi
  %i.mq = add i64 %i.mp, %.15364.i95233
  %i.mr = add i64 %i.mq, -1
  %diff.check240.a = icmp ult i64 %i.mr, 31
  %conflict.rdx239 = or i1 %conflict.rdx239.a, %diff.check240.a
  %19 = sub i64 %.166.i93234, %.15364.i95233
  %diff.check240 = icmp ugt i64 %19, -32
  %conflict.rdx241 = or i1 %conflict.rdx239, %diff.check240
  br i1 %conflict.rdx241, label %.lr.ph.i96.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ms = getelementptr i8, ptr %.166.i93, i64 %i.ma ; 2 uses
  %i.mt = getelementptr i8, ptr %.15065.i94, i64 %i.ma
  %i.mu = getelementptr i8, ptr %.15364.i95, i64 %i.ma ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mv = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.166.i93, i64 %i.mv ; 2 uses
  %next.gep242 = getelementptr i8, ptr %.15065.i94, i64 %i.mv ; 4 uses
  %next.gep243 = getelementptr i8, ptr %.15364.i95, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep242, i64 16
  %wide.load = load <4 x float>, ptr %next.gep242, align 4, !tbaa !16
  %wide.load244 = load <4 x float>, ptr %i.mw, align 4, !tbaa !16
  %i.mx = getelementptr inbounds [4 x i8], ptr %next.gep242, i64 %i.ks ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %wide.load245 = load <4 x float>, ptr %i.mx, align 4, !tbaa !16
  %wide.load246 = load <4 x float>, ptr %i.my, align 4, !tbaa !16
  %i.mz = fadd <4 x float> %wide.load, %wide.load245
  %i.na = fadd <4 x float> %wide.load244, %wide.load246
  %i.nb = getelementptr inbounds [4 x i8], ptr %next.gep242, i64 %i.lg ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %wide.load247 = load <4 x float>, ptr %i.nb, align 4, !tbaa !16
  %wide.load248 = load <4 x float>, ptr %i.nc, align 4, !tbaa !16
  %i.nd = fadd <4 x float> %i.mz, %wide.load247
  %i.ne = fadd <4 x float> %i.na, %wide.load248
  %i.nf = getelementptr i8, ptr %next.gep, i64 16
  %wide.load249 = load <4 x float>, ptr %next.gep, align 4, !tbaa !16
  %wide.load250 = load <4 x float>, ptr %i.nf, align 4, !tbaa !16
  %i.ng = fadd <4 x float> %i.nd, %wide.load249
  %i.nh = fadd <4 x float> %i.ne, %wide.load250
  %i.ni = fmul <4 x float> %i.ng, splat (float 2.500000e-01)
  %i.nj = fmul <4 x float> %i.nh, splat (float 2.500000e-01)
  %i.nk = getelementptr i8, ptr %next.gep243, i64 16
  store <4 x float> %i.ni, ptr %next.gep243, align 4, !tbaa !16
  store <4 x float> %i.nj, ptr %i.nk, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nl = icmp eq i64 %index.next, %n.vec
  br i1 %i.nl, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i101.loopexit, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %vector.memcheck, %.lr.ph68.i92, %middle.block
  %.260.i97.ph = phi ptr [ %.166.i93, %vector.memcheck ], [ %.166.i93, %.lr.ph68.i92 ], [ %i.ms, %middle.block ]
  %.25159.i98.ph = phi ptr [ %.15065.i94, %vector.memcheck ], [ %.15065.i94, %.lr.ph68.i92 ], [ %i.mt, %middle.block ]
  %.25458.i99.ph = phi ptr [ %.15364.i95, %vector.memcheck ], [ %.15364.i95, %.lr.ph68.i92 ], [ %i.mu, %middle.block ]
  br label %.lr.ph.i96

._crit_edge.i101.loopexit:                        ; preds = %.lr.ph.i96, %middle.block
  %.lcssa222 = phi ptr [ %i.mu, %middle.block ], [ %i.ny, %.lr.ph.i96 ] ; 2 uses
  %.lcssa221 = phi ptr [ %i.ms, %middle.block ], [ %i.oa, %.lr.ph.i96 ]
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.ks ; 2 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %.lcssa221, i64 %i.lh ; 2 uses
  %.not55.i105 = icmp eq ptr %i.nm, %i.md
  %indvar.next = add i64 %indvar, 1
  br i1 %.not55.i105, label %._crit_edge69.i106.loopexit.split, label %.lr.ph68.i92, !llvm.loop !151

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96
  %.260.i97 = phi ptr [ %i.oa, %.lr.ph.i96 ], [ %.260.i97.ph, %.lr.ph.i96.preheader ] ; 2 uses
  %.25159.i98 = phi ptr [ %i.nz, %.lr.ph.i96 ], [ %.25159.i98.ph, %.lr.ph.i96.preheader ] ; 4 uses
  %.25458.i99 = phi ptr [ %i.ny, %.lr.ph.i96 ], [ %.25458.i99.ph, %.lr.ph.i96.preheader ] ; 2 uses
  %i.no = load float, ptr %.25159.i98, align 4, !tbaa !16
  %i.np = getelementptr inbounds [4 x i8], ptr %.25159.i98, i64 %i.ks
  %i.nq = load float, ptr %i.np, align 4, !tbaa !16
  %i.nr = fadd float %i.no, %i.nq
  %i.ns = getelementptr inbounds [4 x i8], ptr %.25159.i98, i64 %i.lg
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !16
  %i.nu = fadd float %i.nr, %i.nt
  %i.nv = load float, ptr %.260.i97, align 4, !tbaa !16
  %i.nw = fadd float %i.nu, %i.nv
  %i.nx = fmul float %i.nw, 2.500000e-01
  %i.ny = getelementptr inbounds nuw i8, ptr %.25458.i99, i64 4 ; 2 uses
  store float %i.nx, ptr %.25458.i99, align 4, !tbaa !16
  %i.nz = getelementptr inbounds nuw i8, ptr %.25159.i98, i64 4 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.260.i97, i64 4 ; 2 uses
  %.not56.i100 = icmp eq ptr %i.nz, %i.mh
  br i1 %.not56.i100, label %._crit_edge.i101.loopexit, label %.lr.ph.i96, !llvm.loop !152

_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_19reduceTriIhEEvPKT_iiiPS4_ii.exit: ; preds = %._crit_edge69.i106.loopexit.split, %._crit_edge69.i76.loopexit.split, %._crit_edge69.i46.loopexit.split, %._crit_edge69.i.loopexit.split, %.lr.ph78.i83, %.lr.ph78.i53, %.lr.ph78.i25, %.lr.ph78.i, %bb.h, %bb.g, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils4fillEPKvPviiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = mul nsw i32 %5, %3                       ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %.not24 = icmp eq i32 %i.a, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = sext i32 %5 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.025, ptr align 1 %0, i64 %i.d, i1 false)
  %i.e = getelementptr inbounds i8, ptr %.025, i64 %i.d ; 2 uses
  %.not = icmp eq ptr %i.e, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = mul nsw i32 %4, %2                       ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %.not2327 = icmp eq i32 %2, %i.g
  br i1 %.not2327, label %._crit_edge31, label %.lr.ph30.preheader

.lr.ph30.preheader:                               ; preds = %._crit_edge
  %.126 = getelementptr inbounds i8, ptr %1, i64 %i.f
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %.lr.ph30
  %.128 = phi ptr [ %.1, %.lr.ph30 ], [ %.126, %.lr.ph30.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.128, ptr align 1 %1, i64 %i.b, i1 false)
  %.1 = getelementptr inbounds i8, ptr %.128, i64 %i.f ; 2 uses
  %.not23 = icmp eq ptr %.1, %i.i
  br i1 %.not23, label %._crit_edge31, label %.lr.ph30, !llvm.loop !154

._crit_edge31:                                    ; preds = %.lr.ph30, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils4copyEPKviPviii(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, %5
  %i.b = icmp eq i32 %3, %5
  %or.cond = and i1 %i.a, %i.b
  %i.c = mul nsw i32 %1, %4                       ; 2 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %0, i64 %i.d, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = sext i32 %5 to i64
  %i.g = sext i32 %3 to i64
  %i.h = sext i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.025 = phi ptr [ %2, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %.02124 = phi ptr [ %0, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.025, ptr align 1 %.02124, i64 %i.f, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.025, i64 %i.g
  %i.j = getelementptr inbounds i8, ptr %.02124, i64 %i.h ; 2 uses
  %.not = icmp eq ptr %i.j, %i.e
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !155

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_49PtexUtils5blendEPKvfPvbiNS0_8DataTypeEi(ptr nofree noundef readonly captures(address) %0, float noundef %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = shl i32 %5, 1
  %i.c = zext i1 %3 to i32
  %i.d = or disjoint i32 %i.b, %i.c
  switch i32 %i.d, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_15blendIhEEvPKT_fPS4_ii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.k
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 6, label %bb.t
    i32 7, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = mul nsw i32 %6, %4                       ; 5 uses
  %i.f = sext i32 %i.e to i64                     ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f       ; 2 uses
  %.not10.i = icmp eq i32 %i.e, 0
  br i1 %.not10.i, label %_ZN4Ptex4v2_49PtexUtils12_GLOBAL__N_15blendIhEEvPKT_fPS4_ii.exit, label %iter.check303

iter.check303:                                    ; preds = %bb.b
  %min.iters.check283 = icmp ult i32 %i.e, 4
  br i1 %min.iters.check283, label %.lr.ph.i.preheader, label %vector.memcheck284

vector.memcheck284:                               ; preds = %iter.check303
  %i.h = getelementptr i8, ptr %2, i64 %i.f
  %bound0285 = icmp ult ptr %2, %i.g
  %bound1286 = icmp ult ptr %0, %i.h
end_hunk_0
