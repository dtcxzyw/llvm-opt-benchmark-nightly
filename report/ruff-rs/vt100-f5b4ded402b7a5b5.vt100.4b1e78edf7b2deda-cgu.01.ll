Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/vt100-f5b4ded402b7a5b5.vt100.4b1e78edf7b2deda-cgu.01?download=true
inline.NumInlined: 111
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit
  ret void

.lr.ph:                                           ; preds = %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit, %.lr.ph
  %.sroa.01.03 = phi i16 [ %i.n, %.lr.ph ], [ %i.d, %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit ] ; 2 uses
  %i.n = add nuw i16 %.sroa.01.03, 1              ; 2 uses
  tail call void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5erase(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i16 noundef %.sroa.01.03, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %1)
  %exitcond.not = icmp eq i16 %i.n, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17set_scroll_region(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) initializes((76, 80), (84, 88)) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i16, ptr %i.a, align 8, !noundef !3
  %i.c = add i16 %i.b, -1                         ; 2 uses
  %.sroa.0.0.i = tail call noundef i16 @llvm.umin.i16(i16 %i.c, i16 %2) ; 2 uses
  %i.d = icmp ult i16 %1, %.sroa.0.0.i            ; 2 uses
  %spec.select = select i1 %i.d, i16 %1, i16 0    ; 2 uses
  %spec.select3 = select i1 %i.d, i16 %.sroa.0.0.i, i16 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i16 %spec.select, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 86
  store i16 %spec.select3, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 %spec.select, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i16 0, ptr %i.h, align 2
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_all_backward(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(9) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i16, ptr %i.a, align 4, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = zext i16 %i.b to i64                     ; 3 uses
  %i.i = icmp eq i16 %i.b, 0
  %i.j = icmp eq i64 %i.f, 0
  %or.cond3 = or i1 %i.i, %i.j
  br i1 %or.cond3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.not.i.i.not.i.i = icmp samesign ugt i64 %i.f, %i.h
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit.i, label %bb.b, !prof !10

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !186
  unreachable

_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit.i: ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.l = load i16, ptr %i.k, align 2, !alias.scope !183, !noalias !190, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.n = load i16, ptr %i.m, align 2, !alias.scope !183, !noalias !190, !noundef !3
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.h
  %i.p = add i16 %i.n, -1
  %.sroa.0.0.i.i = tail call noundef i16 @llvm.umin.i16(i16 %i.p, i16 %i.l) ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit.i
  %.sroa.0.012.i = phi i16 [ 0, %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit.i ], [ %spec.select11.i, %bb.c ] ; 3 uses
  %i.q = icmp uge i16 %.sroa.0.012.i, %.sroa.0.0.i.i ; 2 uses
  %not..i = xor i1 %i.q, true
  %i.r = zext i1 %not..i to i16
  %spec.select11.i = add nuw i16 %.sroa.0.012.i, %i.r ; 2 uses
  tail call void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5erase(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i16 noundef %.sroa.0.012.i, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %1), !noalias !183
  %.not.i.i = icmp ugt i16 %spec.select11.i, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.q, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward.exit, label %bb.c

_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward.exit: ; preds = %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.a, %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit
  %.sroa.0.05 = phi ptr [ %i.t, %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit ], [ %i.d, %bb.a ] ; 4 uses
  %.sroa.5.04 = phi i64 [ %i.s, %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit ], [ %i.h, %bb.a ]
  %i.s = add nsw i64 %.sroa.5.04, -1              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !191, !noalias !194, !nonnull !3, !noundef !3 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !191, !noalias !194, !noundef !3 ; 2 uses
  %.idx.i = shl i64 %i.x, 5                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %i.aa = add i64 %.idx.i, -32                    ; 2 uses
  %i.ab = lshr exact i64 %i.aa, 5
  %i.ac = add nuw nsw i64 %i.ab, 1
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.02.i.prol = phi ptr [ %i.ad, %.lr.ph.i.prol ], [ %i.v, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.prol, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.prol, i64 31
  store i8 0, ptr %i.ae, align 1, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.0.02.i.prol, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !191
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !197

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.02.i.unr = phi ptr [ %i.v, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.aa, 96
  br i1 %i.af, label %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.sroa.0.02.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 31
  store i8 0, ptr %i.ah, align 1, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.0.02.i, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !191
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 63
  store i8 0, ptr %i.aj, align 1, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !191
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 95
  store i8 0, ptr %i.al, align 1, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ai, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !191
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 127
  store i8 0, ptr %i.an, align 1, !noalias !196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ak, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !191
  %i.ao = icmp eq ptr %i.am, %i.y
  br i1 %i.ao, label %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit, label %.lr.ph.i

_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24
  store i8 0, ptr %i.ap, align 8, !alias.scope !191, !noalias !194
  %i.aq = icmp eq i64 %i.s, 0
  %i.ar = icmp eq ptr %i.t, %i.g
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(9) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.b = load i16, ptr %i.a, align 2, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.d = load i16, ptr %i.c, align 2, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load i16, ptr %i.e, align 4, !alias.scope !198, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !201, !noundef !3
  %i.i = zext i16 %i.f to i64                     ; 2 uses
  %.not.i.i.not.i = icmp samesign ugt i64 %i.h, %i.i
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !198
  unreachable

_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !201, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.i
  %i.m = add i16 %i.b, -1
  %.sroa.0.0.i = tail call noundef i16 @llvm.umin.i16(i16 %i.m, i16 %i.d) ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit, %bb.c
  %.sroa.0.012 = phi i16 [ 0, %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit ], [ %spec.select11, %bb.c ] ; 3 uses
  %i.n = icmp uge i16 %.sroa.0.012, %.sroa.0.0.i  ; 2 uses
  %not. = xor i1 %i.n, true
  %i.o = zext i1 %not. to i16
  %spec.select11 = add nuw i16 %.sroa.0.012, %i.o ; 2 uses
  tail call void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5erase(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i16 noundef %.sroa.0.012, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %1)
  %.not.i = icmp ugt i16 %spec.select11, %.sroa.0.0.i
  %or.cond = select i1 %i.n, i1 true, i1 %.not.i
  br i1 %or.cond, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid19write_contents_diff(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([9 x i8]) align 1 captures(none) dereferenceable(9) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, ptr noalias noundef align 1 captures(address) dead_on_return dereferenceable(9) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [14 x i8], align 2                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 11 uses
  %.sroa.13 = alloca i64, align 8                 ; 5 uses
  %i.c = alloca [168 x i8], align 8               ; 27 uses
  %i.d = alloca [72 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 9 uses
  %i.f = alloca [160 x i8], align 8               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.h = load i16, ptr %i.g, align 4, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 78
  %i.j = load i16, ptr %i.i, align 2, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !207, !noalias !204, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !207, !noalias !204, !noundef !3 ; 4 uses
  %i.p = icmp ult i64 %i.o, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs6rR7J0NOYM8_5vt1003row3RowE4iterB18_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !207, !noalias !204, !noundef !3 ; 2 uses
  %i.s = sub i64 %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !207, !noalias !204, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.o
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx3.i, align 8, !alias.scope !214, !noalias !216
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !214, !noalias !216
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.u, ptr %i.x, align 8, !alias.scope !217, !noalias !218
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.v, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !217, !noalias !218
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.w, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !217, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !222, !noalias !219, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !222, !noalias !219, !noundef !3 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 288230376151711744
  tail call void @llvm.assume(i1 %i.ad)
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs6rR7J0NOYM8_5vt1003row3RowE4iterB18_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !222, !noalias !219, !noundef !3 ; 2 uses
  %i.ag = sub i64 %i.aa, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !222, !noalias !219, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %.sroa.4.0..sroa_idx3.i15 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx3.i15, align 8, !alias.scope !229, !noalias !231
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i16, align 8, !alias.scope !229, !noalias !231
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ai, ptr %i.al, align 8, !alias.scope !232, !noalias !233
  %.sroa.45.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.aj, ptr %.sroa.45.0..sroa_idx.i17, align 8, !alias.scope !232, !noalias !233
  %.sroa.56.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.ak, ptr %.sroa.56.0..sroa_idx.i18, align 8, !alias.scope !232, !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %.144..144..144..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.144..144..144..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit, %bb.a
  %.sroa.05.0 = phi i8 [ 0, %bb.a ], [ %i.df, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ]
  %.sroa.4.0 = phi i16 [ %i.j, %bb.a ], [ %i.dd, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ] ; 2 uses
  %.sroa.02.0 = phi i16 [ %i.h, %bb.a ], [ %i.dc, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ] ; 2 uses
  %.sroa.06.0 = phi i8 [ 0, %bb.a ], [ %i.dh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.bi = load ptr, ptr %i.c, align 8, !alias.scope !239, !noalias !234, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = load i64, ptr %i.an, align 8, !alias.scope !248, !noalias !234, !noundef !3 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = add i64 %i.bj, -1
  store i64 %i.bl, ptr %i.an, align 8, !alias.scope !248, !noalias !234
  %i.bm = load i64, ptr %i.ao, align 8, !alias.scope !253, !noalias !234, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ap, align 8, !alias.scope !256, !noalias !234, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = icmp eq ptr %i.bi, %i.bn
  br i1 %i.bo, label %bb.f, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !256, !noalias !234
  store ptr %i.bi, ptr %i.aq, align 8, !alias.scope !256, !noalias !234
  store ptr %i.bn, ptr %i.ar, align 8, !alias.scope !256, !noalias !234
  %i.bp = load ptr, ptr %i.c, align 8, !alias.scope !256, !noalias !234, !nonnull !3, !noundef !3 ; 2 uses
  %i.bq = load ptr, ptr %i.ap, align 8, !alias.scope !256, !noalias !234, !nonnull !3, !noundef !3
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i: ; preds = %bb.d
  store i64 0, ptr %i.ao, align 8, !alias.scope !253, !noalias !234
  %i.bs = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB15_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.c, i64 noundef %i.bm), !noalias !234 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not4.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i, %bb.f, %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !239, !noalias !234
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.f ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i.i.i.i.i, i64 32
  store ptr %i.bt, ptr %i.c, align 8, !alias.scope !239, !noalias !234
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, %bb.b
  %i.bu = load ptr, ptr %i.as, align 8, !alias.scope !259, !noalias !264, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i
  %i.bv = load i64, ptr %i.at, align 8, !alias.scope !266, !noalias !264, !noundef !3 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = add i64 %i.bv, -1
  store i64 %i.bx, ptr %i.at, align 8, !alias.scope !266, !noalias !264
  %i.by = load ptr, ptr %i.au, align 8, !alias.scope !269, !noalias !264, !nonnull !3, !noundef !3
  %i.bz = icmp eq ptr %i.bu, %i.by
  br i1 %i.bz, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.ca, ptr %i.as, align 8, !alias.scope !269, !noalias !264
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i: ; preds = %bb.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i
  %.sroa.0.0.i2.i.i.i.i = phi ptr [ %.sink6.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i ], [ %i.bu, %bb.i ], [ %i.bs, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i ]
  %i.cb = load ptr, ptr %i.av, align 8, !alias.scope !272, !noalias !234, !noundef !3 ; 4 uses
  %.not.i.i11.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i11.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i
  %i.cc = load i64, ptr %i.aw, align 8, !alias.scope !277, !noalias !234, !noundef !3 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = add i64 %i.cc, -1
  store i64 %i.ce, ptr %i.aw, align 8, !alias.scope !277, !noalias !234
  %i.cf = load i64, ptr %i.ax, align 8, !alias.scope !282, !noalias !234, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i12.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i12.i.i.i, label %bb.l, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.ay, align 8, !alias.scope !285, !noalias !234, !nonnull !3, !noundef !3 ; 2 uses
  %i.ch = icmp eq ptr %i.cb, %i.cg
  br i1 %i.ch, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !285, !noalias !234
  store ptr %i.cb, ptr %i.az, align 8, !alias.scope !285, !noalias !234
  store ptr %i.cg, ptr %i.ba, align 8, !alias.scope !285, !noalias !234
  %i.ci = load ptr, ptr %i.av, align 8, !alias.scope !285, !noalias !234, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = load ptr, ptr %i.ay, align 8, !alias.scope !285, !noalias !234, !nonnull !3, !noundef !3
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i: ; preds = %bb.k
  store i64 0, ptr %i.ax, align 8, !alias.scope !282, !noalias !234
  %i.cl = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB15_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av, i64 noundef %i.cf), !noalias !234 ; 2 uses
  %.not4.i.i14.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not4.i.i14.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i, %bb.m, %bb.j
  store ptr null, ptr %i.av, align 8, !alias.scope !272, !noalias !234
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i: ; preds = %bb.m, %bb.l
  %.sink6.i.i.i.i.i.i20.i.i.i = phi ptr [ %i.ci, %bb.m ], [ %i.cb, %bb.l ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i.i20.i.i.i, i64 32
  store ptr %i.cm, ptr %i.av, align 8, !alias.scope !272, !noalias !234
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i
  %i.cn = load ptr, ptr %i.bb, align 8, !alias.scope !288, !noalias !293, !noundef !3 ; 4 uses
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i18.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i
  %i.co = load i64, ptr %i.bc, align 8, !alias.scope !295, !noalias !293, !noundef !3 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = add i64 %i.co, -1
  store i64 %i.cq, ptr %i.bc, align 8, !alias.scope !295, !noalias !293
  %i.cr = load ptr, ptr %i.bd, align 8, !alias.scope !298, !noalias !293, !nonnull !3, !noundef !3
  %i.cs = icmp eq ptr %i.cn, %i.cr
  br i1 %i.cs, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr %i.ct, ptr %i.bb, align 8, !alias.scope !298, !noalias !293
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i: ; preds = %bb.p, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sink6.i.i.i.i.i.i20.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i ], [ %i.cn, %bb.p ], [ %i.cl, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i) ]
  %i.cu = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !237, !noalias !234, !noundef !3 ; 2 uses
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !237, !noalias !234
  %5 = ptrtoint ptr %.sroa.0.0.i2.i.i.i.i to i64
  store i64 %5, ptr %.sroa.5, align 8, !alias.scope !234, !noalias !237
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i, %bb.g, %bb.h, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i, %bb.n, %bb.o, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i
  %.sroa.025.0 = phi i64 [ undef, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i ], [ undef, %bb.n ], [ undef, %bb.o ], [ %i.cu, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i ] ; 2 uses
  %.sink.i.sroa.phi = phi ptr [ %.sroa.5, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i ], [ %.sroa.5, %bb.g ], [ %.sroa.5, %bb.h ], [ %.sroa.5, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i ], [ %.sroa.5, %bb.n ], [ %.sroa.5, %bb.o ], [ %.sroa.13, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i ]
  %.sroa.4.0.i.i.sink.i = phi ptr [ null, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i ], [ null, %bb.g ], [ null, %bb.h ], [ null, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i ], [ null, %bb.n ], [ null, %bb.o ], [ %.sroa.4.0.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i ]
  store ptr %.sroa.4.0.i.i.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !234, !noalias !237
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !noundef !3 ; 2 uses
  %6 = inttoptr i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. to ptr ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., 0
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit
  %i.cw = icmp ugt i64 %.sroa.025.0, 65535
  %i.cx = trunc nuw i64 %.sroa.025.0 to i32
  %i.cy = shl nuw i32 %i.cx, 16
  %.sroa.012.0.insert.insert = select i1 %i.cw, i32 513, i32 %i.cy ; 2 uses
  %i.cz = trunc i32 %.sroa.012.0.insert.insert to i1
  br i1 %i.cz, label %bb.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit, !prof !17

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !301
  store i8 2, ptr %i.a, align 1, !noalias !301
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit: ; preds = %bb.q
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.16. = load i64, ptr %.sroa.13, align 8, !range !304, !noundef !3
  %7 = inttoptr i64 %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.16. to ptr ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.012.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.da = trunc nuw i8 %.sroa.05.0 to i1
  %i.db = trunc nuw i8 %.sroa.06.0 to i1
  call void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row19write_contents_diff(ptr noalias noundef nonnull sret([14 x i8]) align 2 captures(none) dereferenceable(14) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %7, i16 noundef 0, i16 noundef %i.bf, i16 noundef %.sroa.5.0.extract.trunc.i, i1 noundef zeroext %i.da, i1 noundef zeroext %i.db, i16 noundef %.sroa.02.0, i16 noundef %.sroa.4.0, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(9) %4)
  %i.dc = load i16, ptr %i.b, align 2, !noundef !3
  %i.dd = load i16, ptr %i.bg, align 2, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 2 dereferenceable(9) %i.bh, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.df = load i8, ptr %i.de, align 8, !range !148, !noundef !3
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !range !148, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.b

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.010.2.insert.ext = zext i16 %.sroa.02.0 to i48
  %.sroa.010.2.insert.shift = shl nuw nsw i48 %.sroa.010.2.insert.ext, 16
  %.sroa.010.4.insert.ext = zext i16 %.sroa.4.0 to i48
  %.sroa.010.4.insert.shift = shl nuw i48 %.sroa.010.4.insert.ext, 32
  %.sroa.010.2.insert.insert = or disjoint i48 %.sroa.010.2.insert.shift, %.sroa.010.4.insert.shift
  %.sroa.010.4.insert.insert = or disjoint i48 %.sroa.010.2.insert.insert, 1
  call void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid31write_cursor_position_formatted(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i48 %.sroa.010.4.insert.insert, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 1 dereferenceable(9) %4, i64 9, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid24write_contents_formatted(ptr dead_on_unwind noalias nofree noundef writable sret([9 x i8]) align 1 captures(none) dereferenceable(9) initializes((0, 1), (4, 5), (8, 9)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [14 x i8], align 2                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 18 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  tail call void @_RNvXs6_NtCs6rR7J0NOYM8_5vt1004termNtB5_10ClearAttrsNtB5_8BufWrite9write_buf(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  tail call void @_RNvXNtCs6rR7J0NOYM8_5vt1004termNtB2_11ClearScreenNtB2_8BufWrite9write_buf(ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  store i8 0, ptr %0, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !305, !noalias !308, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !305, !noalias !308, !noundef !3 ; 4 uses
  %i.l = icmp ult i64 %i.k, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs6rR7J0NOYM8_5vt1003row3RowE4iterB18_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !305, !noalias !308, !noundef !3 ; 2 uses
  %i.o = sub i64 %i.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !305, !noalias !308, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.k
  %i.s = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.n)
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx3.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.q, ptr %i.t, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.r, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.s, ptr %.sroa.56.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit, %bb.a
  %.sroa.4.0 = phi i16 [ 0, %bb.a ], [ %i.bh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ] ; 2 uses
  %.sroa.06.0 = phi i16 [ 0, %bb.a ], [ %i.bg, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ] ; 2 uses
  %.sroa.012.0 = phi i8 [ 0, %bb.a ], [ %i.bj, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit ]
  %i.ag = load ptr, ptr %i.c, align 8, !alias.scope !310, !noundef !3 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.u, align 8, !alias.scope !317, !noundef !3 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = add i64 %i.ah, -1
  store i64 %i.aj, ptr %i.u, align 8, !alias.scope !317
  %i.ak = load i64, ptr %i.v, align 8, !alias.scope !322, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.w, align 8, !alias.scope !325, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = icmp eq ptr %i.ag, %i.al
  br i1 %i.am, label %bb.f, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !325
  store ptr %i.ag, ptr %i.x, align 8, !alias.scope !325
  store ptr %i.al, ptr %i.y, align 8, !alias.scope !325
  %i.an = load ptr, ptr %i.c, align 8, !alias.scope !325, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = load ptr, ptr %i.w, align 8, !alias.scope !325, !nonnull !3, !noundef !3
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i: ; preds = %bb.d
  store i64 0, ptr %i.v, align 8, !alias.scope !322
  %i.aq = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB15_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.ak) ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not4.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, label %bb.j

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i, %bb.f, %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !310
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i.i.i, i64 32
  store ptr %i.ar, ptr %i.c, align 8, !alias.scope !310
  br label %bb.j

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, %bb.b
  %i.as = load ptr, ptr %i.z, align 8, !alias.scope !328, !noalias !333, !noundef !3 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i
  %i.at = load i64, ptr %i.aa, align 8, !alias.scope !335, !noalias !333, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add i64 %i.at, -1
  store i64 %i.av, ptr %i.aa, align 8, !alias.scope !335, !noalias !333
  %i.aw = load ptr, ptr %i.ab, align 8, !alias.scope !338, !noalias !333, !nonnull !3, !noundef !3
  %i.ax = icmp eq ptr %i.as, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.ay, ptr %i.z, align 8, !alias.scope !338, !noalias !333
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i
  %.sroa.0.0.i2.i.i = phi ptr [ %.sink6.i.i.i.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i ], [ %i.as, %bb.i ], [ %i.aq, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i ] ; 2 uses
  %i.az = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !341, !noundef !3 ; 3 uses
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !341
  %i.bb = icmp ugt i64 %i.az, 65535
  %i.bc = trunc nuw nsw i64 %i.az to i32
  %i.bd = shl nuw i32 %i.bc, 16
  %.sroa.022.0.insert.insert = select i1 %i.bb, i32 513, i32 %i.bd ; 2 uses
  %i.be = trunc i32 %.sroa.022.0.insert.insert to i1
  br i1 %i.be, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit, !prof !17

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !342
  store i8 2, ptr %i.a, align 1, !noalias !342
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #17
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit: ; preds = %bb.j
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.022.0.insert.insert, 16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %.sroa.5.0.extract.shift.i to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bf = trunc nuw i8 %.sroa.012.0 to i1
  %.sroa.025.2.insert.ext = zext i16 %.sroa.06.0 to i48
  %.sroa.025.2.insert.shift = shl nuw nsw i48 %.sroa.025.2.insert.ext, 16
  %.sroa.025.4.insert.ext = zext i16 %.sroa.4.0 to i48
  %.sroa.025.4.insert.shift = shl nuw i48 %.sroa.025.4.insert.ext, 32
  %.sroa.025.2.insert.insert = or disjoint i48 %.sroa.025.2.insert.shift, %.sroa.025.4.insert.shift
  %.sroa.025.4.insert.insert = or disjoint i48 %.sroa.025.2.insert.insert, 1
  call void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row24write_contents_formatted(ptr noalias noundef nonnull sret([14 x i8]) align 2 captures(none) dereferenceable(14) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i2.i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef 0, i16 noundef %i.ad, i16 noundef %.sroa.5.0.extract.trunc.i, i1 noundef zeroext %i.bf, i48 %.sroa.025.4.insert.insert, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %0)
  %i.bg = load i16, ptr %i.b, align 2, !noundef !3
  %i.bh = load i16, ptr %i.ae, align 2, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 2 dereferenceable(9) %i.af, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.i, i64 24
  %i.bj = load i8, ptr %i.bi, align 8, !range !148, !noundef !3
  br label %bb.b

bb.l:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.020.2.insert.ext = zext i16 %.sroa.06.0 to i48
  %.sroa.020.2.insert.shift = shl nuw nsw i48 %.sroa.020.2.insert.ext, 16
  %.sroa.020.4.insert.ext = zext i16 %.sroa.4.0 to i48
  %.sroa.020.4.insert.shift = shl nuw i48 %.sroa.020.4.insert.ext, 32
  %.sroa.020.2.insert.insert = or disjoint i48 %.sroa.020.2.insert.shift, %.sroa.020.4.insert.shift
  %.sroa.020.4.insert.insert = or disjoint i48 %.sroa.020.2.insert.insert, 1
  call void @_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid31write_cursor_position_formatted(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i48 %.sroa.020.4.insert.insert, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!104 = distinct !{!104, !100, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!105 = !{!104, !102}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!108 = distinct !{!108, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!109 = !{!110}
!110 = distinct !{!110, !108, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 1"}
!113 = distinct !{!113, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_"}
!114 = !{!115}
!115 = distinct !{!115, !113, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 2"}
!116 = !{!117, !112, !107}
!117 = distinct !{!117, !113, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!118 = !{!115, !110}
!119 = !{!117, !115, !107}
!120 = !{!112, !110}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!123 = distinct !{!123, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!124 = !{!125, !127, !122}
!125 = distinct !{!125, !126, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!126 = distinct !{!126, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!127 = distinct !{!127, !128, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!128 = distinct !{!128, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!129 = !{!130, !125, !127, !122}
!130 = distinct !{!130, !131, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!131 = distinct !{!131, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!132 = !{!133, !130, !125, !127, !122}
!133 = distinct !{!133, !134, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!134 = distinct !{!134, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!137 = distinct !{!137, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!138 = distinct !{!138, !139, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!139 = distinct !{!139, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!140 = !{!141}
!141 = distinct !{!141, !139, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!142 = !{!143, !136, !138}
!143 = distinct !{!143, !144, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!144 = distinct !{!144, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!145 = !{!146, !143, !136, !138}
!146 = distinct !{!146, !147, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!147 = distinct !{!147, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!148 = !{i8 0, i8 2}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 0"}
!151 = distinct !{!151, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!154 = distinct !{!154, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid7set_pos: argument 0"}
!157 = distinct !{!157, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid7set_pos"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!160 = distinct !{!160, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!163 = distinct !{!163, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!164 = !{!165}
!165 = distinct !{!165, !163, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!166 = !{!162, !165}
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.unroll.disable"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward: argument 0"}
!171 = distinct !{!171, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward"}
!172 = !{!173}
!173 = distinct !{!173, !171, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward: argument 1"}
!174 = !{!175, !170, !173}
!175 = distinct !{!175, !176, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!176 = distinct !{!176, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!179 = distinct !{!179, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!180 = !{!181, !178}
!181 = distinct !{!181, !182, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!182 = distinct !{!182, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward: argument 0"}
!185 = distinct !{!185, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward"}
!186 = !{!187, !184, !189}
!187 = distinct !{!187, !188, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!188 = distinct !{!188, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!189 = distinct !{!189, !185, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward: argument 1"}
!190 = !{!189}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!193 = distinct !{!193, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!194 = !{!195}
!195 = distinct !{!195, !193, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!196 = !{!192, !195}
!197 = distinct !{!197, !168}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!200 = distinct !{!200, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!201 = !{!202, !199}
!202 = distinct !{!202, !203, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!203 = distinct !{!203, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!206 = distinct !{!206, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!207 = !{!208}
!208 = distinct !{!208, !206, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 1"}
!211 = distinct !{!211, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 2"}
!214 = !{!215, !210, !205}
!215 = distinct !{!215, !211, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!216 = !{!213, !208}
!217 = !{!215, !213, !205}
!218 = !{!210, !208}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!221 = distinct !{!221, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!222 = !{!223}
!223 = distinct !{!223, !221, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 1"}
!226 = distinct !{!226, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_"}
!227 = !{!228}
!228 = distinct !{!228, !226, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 2"}
!229 = !{!230, !225, !220}
!230 = distinct !{!230, !226, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!231 = !{!228, !223}
!232 = !{!230, !228, !220}
!233 = !{!225, !223}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_: argument 0"}
!236 = distinct !{!236, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_"}
!237 = !{!238}
!238 = distinct !{!238, !236, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_: argument 1"}
!239 = !{!240, !242, !244, !246, !238}
!240 = distinct !{!240, !241, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!241 = distinct !{!241, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!242 = distinct !{!242, !243, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!243 = distinct !{!243, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!244 = distinct !{!244, !245, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_5chain5ChainINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1h_INtNtNtBb_5slice4iter4IterB2P_EEEBW_EINtB5_7ZipImplBW_BW_E4nextB2T_: argument 0"}
!245 = distinct !{!245, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_5chain5ChainINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1h_INtNtNtBb_5slice4iter4IterB2P_EEEBW_EINtB5_7ZipImplBW_BW_E4nextB2T_"}
!246 = distinct !{!246, !247, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1g_INtNtNtBa_5slice4iter4IterB2O_EEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextB2S_: argument 0"}
!247 = distinct !{!247, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1g_INtNtNtBa_5slice4iter4IterB2O_EEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextB2S_"}
!248 = !{!249, !251, !240, !242, !244, !246, !238}
!249 = distinct !{!249, !250, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!250 = distinct !{!250, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!251 = distinct !{!251, !252, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!252 = distinct !{!252, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!253 = !{!254, !249, !251, !240, !242, !244, !246, !238}
!254 = distinct !{!254, !255, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!255 = distinct !{!255, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!256 = !{!257, !254, !249, !251, !240, !242, !244, !246, !238}
!257 = distinct !{!257, !258, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!258 = distinct !{!258, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!259 = !{!260, !262, !242, !244, !246, !238}
!260 = distinct !{!260, !261, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!261 = distinct !{!261, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!262 = distinct !{!262, !263, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!263 = distinct !{!263, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!264 = !{!265, !235}
!265 = distinct !{!265, !263, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!266 = !{!267, !260, !262, !242, !244, !246, !238}
!267 = distinct !{!267, !268, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!268 = distinct !{!268, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!269 = !{!270, !267, !260, !262, !242, !244, !246, !238}
!270 = distinct !{!270, !271, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!271 = distinct !{!271, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!272 = !{!273, !275, !244, !246, !238}
!273 = distinct !{!273, !274, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!274 = distinct !{!274, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!275 = distinct !{!275, !276, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!276 = distinct !{!276, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!277 = !{!278, !280, !273, !275, !244, !246, !238}
!278 = distinct !{!278, !279, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!279 = distinct !{!279, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!280 = distinct !{!280, !281, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!281 = distinct !{!281, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!282 = !{!283, !278, !280, !273, !275, !244, !246, !238}
!283 = distinct !{!283, !284, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!284 = distinct !{!284, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!285 = !{!286, !283, !278, !280, !273, !275, !244, !246, !238}
!286 = distinct !{!286, !287, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!287 = distinct !{!287, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!288 = !{!289, !291, !275, !244, !246, !238}
!289 = distinct !{!289, !290, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!290 = distinct !{!290, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!291 = distinct !{!291, !292, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!292 = distinct !{!292, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!293 = !{!294, !235}
!294 = distinct !{!294, !292, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!295 = !{!296, !289, !291, !275, !244, !246, !238}
!296 = distinct !{!296, !297, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!297 = distinct !{!297, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!298 = !{!299, !296, !289, !291, !275, !244, !246, !238}
!299 = distinct !{!299, !300, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!300 = distinct !{!300, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100: argument 0"}
!303 = distinct !{!303, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100"}
!304 = !{i64 1, i64 0}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!307 = distinct !{!307, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!308 = !{!309}
!309 = distinct !{!309, !307, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!310 = !{!311, !313, !315}
!311 = distinct !{!311, !312, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!312 = distinct !{!312, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!313 = distinct !{!313, !314, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!314 = distinct !{!314, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!315 = distinct !{!315, !316, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1s_INtNtNtBa_5slice4iter4IterB30_EEEENtNtNtB8_6traits8iterator8Iterator4nextB34_: argument 0"}
!316 = distinct !{!316, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1s_INtNtNtBa_5slice4iter4IterB30_EEEENtNtNtB8_6traits8iterator8Iterator4nextB34_"}
!317 = !{!318, !320, !311, !313, !315}
!318 = distinct !{!318, !319, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!319 = distinct !{!319, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!320 = distinct !{!320, !321, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!321 = distinct !{!321, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!322 = !{!323, !318, !320, !311, !313, !315}
!323 = distinct !{!323, !324, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!324 = distinct !{!324, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!325 = !{!326, !323, !318, !320, !311, !313, !315}
!326 = distinct !{!326, !327, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!327 = distinct !{!327, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!328 = !{!329, !331, !313, !315}
!329 = distinct !{!329, !330, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!330 = distinct !{!330, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!331 = distinct !{!331, !332, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!332 = distinct !{!332, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!333 = !{!334}
!334 = distinct !{!334, !332, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!335 = !{!336, !329, !331, !313, !315}
!336 = distinct !{!336, !337, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!337 = distinct !{!337, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!338 = !{!339, !336, !329, !331, !313, !315}
!339 = distinct !{!339, !340, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!340 = distinct !{!340, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!341 = !{!315}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100: argument 0"}
!344 = distinct !{!344, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100"}
!345 = !{i8 -1, i8 3}
!346 = !{!347}
!347 = distinct !{!347, !348, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell: argument 0"}
!348 = distinct !{!348, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell"}
!349 = !{!350, !347}
!350 = distinct !{!350, !351, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid11drawing_row: argument 0"}
!351 = distinct !{!351, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid11drawing_row"}
!352 = !{!353}
!353 = distinct !{!353, !354, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell: argument 0"}
!354 = distinct !{!354, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell"}
!355 = !{!356}
!356 = distinct !{!356, !357, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs6rR7J0NOYM8_5vt100: argument 0"}
!357 = distinct !{!357, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs6rR7J0NOYM8_5vt100"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell: argument 0"}
!360 = distinct !{!360, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell"}
!361 = !{!362}
!362 = distinct !{!362, !363, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!363 = distinct !{!363, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!366 = distinct !{!366, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!369 = distinct !{!369, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!372 = distinct !{!372, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!375 = distinct !{!375, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!376 = !{!377}
!377 = distinct !{!377, !375, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!378 = !{!374, !377}
!379 = distinct !{!379, !168}
!380 = !{!381}
!381 = distinct !{!381, !382, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid14row_inc_scroll: argument 0"}
!382 = distinct !{!382, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid14row_inc_scroll"}
!383 = !{!384}
!384 = distinct !{!384, !385, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!385 = distinct !{!385, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!386 = distinct !{!386, !168}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!389 = distinct !{!389, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!390 = !{!391}
!391 = distinct !{!391, !389, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!392 = !{!388, !391}
!393 = distinct !{!393, !168}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!396 = distinct !{!396, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!397 = !{!398, !395}
!398 = distinct !{!398, !399, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!399 = distinct !{!399, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!402 = distinct !{!402, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!403 = !{!404}
!404 = distinct !{!404, !402, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!405 = !{!401, !404}
!406 = distinct !{!406, !168}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_: argument 0"}
!409 = distinct !{!409, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_"}
!410 = !{!411, !412}
!411 = distinct !{!411, !409, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_: argument 1"}
!412 = distinct !{!412, !409, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_: argument 2"}
!413 = !{!408, !411}
!414 = !{!412}
!415 = !{i64 -1, i64 -9223372036854775808}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6rR7J0NOYM8_5vt1003row3RowEEB11_: argument 0"}
!418 = distinct !{!418, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6rR7J0NOYM8_5vt1003row3RowEEB11_"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!421 = distinct !{!421, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
end_hunk_1
