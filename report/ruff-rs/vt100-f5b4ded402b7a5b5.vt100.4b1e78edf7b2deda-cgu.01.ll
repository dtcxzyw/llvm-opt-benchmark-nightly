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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.not.i.i.not.i.i = icmp samesign ugt i64 %i.f, %i.h
  br i1 %.not.i.i.not.i.i, label %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit.i, label %bb.b, !prof !4

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !193
  unreachable

_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit.i: ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.l = load i16, ptr %i.k, align 2, !alias.scope !192, !noalias !194, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.n = load i16, ptr %i.m, align 2, !alias.scope !192, !noalias !194, !noundef !3
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
  tail call void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5erase(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o, i16 noundef %.sroa.0.012.i, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %1), !noalias !192
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !195, !noalias !196, !nonnull !3, !noundef !3 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !195, !noalias !196, !noundef !3 ; 2 uses
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
  store i8 0, ptr %i.ae, align 1, !noalias !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.0.02.i.prol, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !195
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !191

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.02.i.unr = phi ptr [ %i.v, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.af = icmp ult i64 %i.aa, 96
  br i1 %i.af, label %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.sroa.0.02.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 31
  store i8 0, ptr %i.ah, align 1, !noalias !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.0.02.i, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !195
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 63
  store i8 0, ptr %i.aj, align 1, !noalias !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !195
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 95
  store i8 0, ptr %i.al, align 1, !noalias !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ai, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !195
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 127
  store i8 0, ptr %i.an, align 1, !noalias !197
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ak, ptr noundef nonnull readonly align 1 dereferenceable(9) %1, i64 9, i1 false), !noalias !195
  %i.ao = icmp eq ptr %i.am, %i.y
  br i1 %i.ao, label %_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit, label %.lr.ph.i

_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24
  store i8 0, ptr %i.ap, align 8, !alias.scope !195, !noalias !196
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load i16, ptr %i.e, align 4, !alias.scope !202, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !203, !noundef !3
  %i.i = zext i16 %i.f to i64                     ; 2 uses
  %.not.i.i.not.i = icmp samesign ugt i64 %i.h, %i.i
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17, !noalias !202
  unreachable

_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !203, !nonnull !3, !noundef !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !270, !noalias !269, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !270, !noalias !269, !noundef !3 ; 4 uses
  %i.p = icmp ult i64 %i.o, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs6rR7J0NOYM8_5vt1003row3RowE4iterB18_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !270, !noalias !269, !noundef !3 ; 2 uses
  %i.s = sub i64 %i.m, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !270, !noalias !269, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.o
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.s, ptr %.sroa.4.0..sroa_idx3.i, align 8, !alias.scope !273, !noalias !274
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !273, !noalias !274
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %i.u, ptr %i.x, align 8, !alias.scope !275, !noalias !276
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.v, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !276
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %i.w, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !275, !noalias !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !278, !noalias !277, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !278, !noalias !277, !noundef !3 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 288230376151711744
  tail call void @llvm.assume(i1 %i.ad)
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs6rR7J0NOYM8_5vt1003row3RowE4iterB18_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !278, !noalias !277, !noundef !3 ; 2 uses
  %i.ag = sub i64 %i.aa, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !278, !noalias !277, !nonnull !3, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 %i.af)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %.sroa.4.0..sroa_idx3.i15 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx3.i15, align 8, !alias.scope !281, !noalias !282
  %.sroa.5.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx.i16, align 8, !alias.scope !281, !noalias !282
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ai, ptr %i.al, align 8, !alias.scope !283, !noalias !284
  %.sroa.45.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.aj, ptr %.sroa.45.0..sroa_idx.i17, align 8, !alias.scope !283, !noalias !284
  %.sroa.56.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %i.ak, ptr %.sroa.56.0..sroa_idx.i18, align 8, !alias.scope !283, !noalias !284
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
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.bi = load ptr, ptr %i.c, align 8, !alias.scope !287, !noalias !285, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = load i64, ptr %i.an, align 8, !alias.scope !288, !noalias !285, !noundef !3 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = add i64 %i.bj, -1
  store i64 %i.bl, ptr %i.an, align 8, !alias.scope !288, !noalias !285
  %i.bm = load i64, ptr %i.ao, align 8, !alias.scope !289, !noalias !285, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i, !prof !4

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.ap, align 8, !alias.scope !290, !noalias !285, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = icmp eq ptr %i.bi, %i.bn
  br i1 %i.bo, label %bb.f, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !290, !noalias !285
  store ptr %i.bi, ptr %i.aq, align 8, !alias.scope !290, !noalias !285
  store ptr %i.bn, ptr %i.ar, align 8, !alias.scope !290, !noalias !285
  %i.bp = load ptr, ptr %i.c, align 8, !alias.scope !290, !noalias !285, !nonnull !3, !noundef !3 ; 2 uses
  %i.bq = load ptr, ptr %i.ap, align 8, !alias.scope !290, !noalias !285, !nonnull !3, !noundef !3
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i: ; preds = %bb.d
  store i64 0, ptr %i.ao, align 8, !alias.scope !289, !noalias !285
  %i.bs = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB15_(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.c, i64 noundef %i.bm), !noalias !285 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not4.i.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i, %bb.f, %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !287, !noalias !285
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.f ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i.i.i.i.i, i64 32
  store ptr %i.bt, ptr %i.c, align 8, !alias.scope !287, !noalias !285
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i.i.i, %bb.b
  %i.bu = load ptr, ptr %i.as, align 8, !alias.scope !291, !noalias !292, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i
  %i.bv = load i64, ptr %i.at, align 8, !alias.scope !293, !noalias !292, !noundef !3 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = add i64 %i.bv, -1
  store i64 %i.bx, ptr %i.at, align 8, !alias.scope !293, !noalias !292
  %i.by = load ptr, ptr %i.au, align 8, !alias.scope !294, !noalias !292, !nonnull !3, !noundef !3
  %i.bz = icmp eq ptr %i.bu, %i.by
  br i1 %i.bz, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.ca, ptr %i.as, align 8, !alias.scope !294, !noalias !292
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i: ; preds = %bb.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i
  %.sroa.0.0.i2.i.i.i.i = phi ptr [ %.sink6.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i.i.i ], [ %i.bu, %bb.i ], [ %i.bs, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i.i.i ]
  %i.cb = load ptr, ptr %i.av, align 8, !alias.scope !295, !noalias !285, !noundef !3 ; 4 uses
  %.not.i.i11.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i11.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i
  %i.cc = load i64, ptr %i.aw, align 8, !alias.scope !296, !noalias !285, !noundef !3 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = add i64 %i.cc, -1
  store i64 %i.ce, ptr %i.aw, align 8, !alias.scope !296, !noalias !285
  %i.cf = load i64, ptr %i.ax, align 8, !alias.scope !297, !noalias !285, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i12.i.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i12.i.i.i, label %bb.l, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i, !prof !4

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.ay, align 8, !alias.scope !298, !noalias !285, !nonnull !3, !noundef !3 ; 2 uses
  %i.ch = icmp eq ptr %i.cb, %i.cg
  br i1 %i.ch, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !298, !noalias !285
  store ptr %i.cb, ptr %i.az, align 8, !alias.scope !298, !noalias !285
  store ptr %i.cg, ptr %i.ba, align 8, !alias.scope !298, !noalias !285
  %i.ci = load ptr, ptr %i.av, align 8, !alias.scope !298, !noalias !285, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = load ptr, ptr %i.ay, align 8, !alias.scope !298, !noalias !285, !nonnull !3, !noundef !3
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i: ; preds = %bb.k
  store i64 0, ptr %i.ax, align 8, !alias.scope !297, !noalias !285
  %i.cl = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB15_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av, i64 noundef %i.cf), !noalias !285 ; 2 uses
  %.not4.i.i14.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not4.i.i14.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i, %bb.m, %bb.j
  store ptr null, ptr %i.av, align 8, !alias.scope !295, !noalias !285
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i: ; preds = %bb.m, %bb.l
  %.sink6.i.i.i.i.i.i20.i.i.i = phi ptr [ %i.ci, %bb.m ], [ %i.cb, %bb.l ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i.i20.i.i.i, i64 32
  store ptr %i.cm, ptr %i.av, align 8, !alias.scope !295, !noalias !285
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i16.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit.i.i.i
  %i.cn = load ptr, ptr %i.bb, align 8, !alias.scope !299, !noalias !300, !noundef !3 ; 4 uses
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i18.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i
  %i.co = load i64, ptr %i.bc, align 8, !alias.scope !301, !noalias !300, !noundef !3 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = add i64 %i.co, -1
  store i64 %i.cq, ptr %i.bc, align 8, !alias.scope !301, !noalias !300
  %i.cr = load ptr, ptr %i.bd, align 8, !alias.scope !302, !noalias !300, !nonnull !3, !noundef !3
  %i.cs = icmp eq ptr %i.cn, %i.cr
  br i1 %i.cs, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr %i.ct, ptr %i.bb, align 8, !alias.scope !302, !noalias !300
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i: ; preds = %bb.p, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sink6.i.i.i.i.i.i20.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i19.i.i.i ], [ %i.cn, %bb.p ], [ %i.cl, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i13.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i) ]
  %i.cu = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !286, !noalias !285, !noundef !3 ; 2 uses
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !286, !noalias !285
  %5 = ptrtoint ptr %.sroa.0.0.i2.i.i.i.i to i64
  store i64 %5, ptr %.sroa.5, align 8, !alias.scope !285, !noalias !286
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_.exit: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i, %bb.g, %bb.h, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i, %bb.n, %bb.o, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i
  %.sroa.025.0 = phi i64 [ undef, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i ], [ undef, %bb.n ], [ undef, %bb.o ], [ %i.cu, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i ] ; 2 uses
  %.sink.i.sroa.phi = phi ptr [ %.sroa.5, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i ], [ %.sroa.5, %bb.g ], [ %.sroa.5, %bb.h ], [ %.sroa.5, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i ], [ %.sroa.5, %bb.n ], [ %.sroa.5, %bb.o ], [ %.sroa.13, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i ]
  %.sroa.4.0.i.i.sink.i = phi ptr [ null, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i.i.i ], [ null, %bb.g ], [ null, %bb.h ], [ null, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i17.i.i.i ], [ null, %bb.n ], [ null, %bb.o ], [ %.sroa.4.0.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_.exit21.i.i.i ]
  store ptr %.sroa.4.0.i.i.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !285, !noalias !286
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
  br i1 %i.cz, label %bb.r, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !303
  store i8 2, ptr %i.a, align 1, !noalias !303
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
  %i.df = load i8, ptr %i.de, align 8, !range !7, !noundef !3
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !range !7, !noundef !3
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
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !333, !noalias !334, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !333, !noalias !334, !noundef !3 ; 4 uses
  %i.l = icmp ult i64 %i.k, 288230376151711744
  tail call void @llvm.assume(i1 %i.l)
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs6rR7J0NOYM8_5vt1003row3RowE4iterB18_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !333, !noalias !334, !noundef !3 ; 2 uses
  %i.o = sub i64 %i.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !333, !noalias !334, !nonnull !3, !noundef !3 ; 2 uses
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
  %i.ag = load ptr, ptr %i.c, align 8, !alias.scope !335, !noundef !3 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.u, align 8, !alias.scope !336, !noundef !3 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = add i64 %i.ah, -1
  store i64 %i.aj, ptr %i.u, align 8, !alias.scope !336
  %i.ak = load i64, ptr %i.v, align 8, !alias.scope !337, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i, !prof !4

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.w, align 8, !alias.scope !338, !nonnull !3, !noundef !3 ; 2 uses
  %i.am = icmp eq ptr %i.ag, %i.al
  br i1 %i.am, label %bb.f, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !338
  store ptr %i.ag, ptr %i.x, align 8, !alias.scope !338
  store ptr %i.al, ptr %i.y, align 8, !alias.scope !338
  %i.an = load ptr, ptr %i.c, align 8, !alias.scope !338, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = load ptr, ptr %i.w, align 8, !alias.scope !338, !nonnull !3, !noundef !3
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i: ; preds = %bb.d
  store i64 0, ptr %i.v, align 8, !alias.scope !337
  %i.aq = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3nthB15_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.ak) ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not4.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, label %bb.j

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i: ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i, %bb.f, %bb.c
  store ptr null, ptr %i.c, align 8, !alias.scope !335
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink6.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.f ], [ %i.ag, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i.i.i.i, i64 32
  store ptr %i.ar, ptr %i.c, align 8, !alias.scope !335
  br label %bb.j

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread8.i.i, %bb.b
  %i.as = load ptr, ptr %i.z, align 8, !alias.scope !339, !noalias !340, !noundef !3 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.thread.i.i
  %i.at = load i64, ptr %i.aa, align 8, !alias.scope !341, !noalias !340, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = add i64 %i.at, -1
  store i64 %i.av, ptr %i.aa, align 8, !alias.scope !341, !noalias !340
  %i.aw = load ptr, ptr %i.ab, align 8, !alias.scope !342, !noalias !340, !nonnull !3, !noundef !3
  %i.ax = icmp eq ptr %i.as, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr %i.ay, ptr %i.z, align 8, !alias.scope !342, !noalias !340
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i
  %.sroa.0.0.i2.i.i = phi ptr [ %.sink6.i.i.i.i.i.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_.exit.i.i ], [ %i.as, %bb.i ], [ %i.aq, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_.exit.i.i.i ] ; 2 uses
  %i.az = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !343, !noundef !3 ; 3 uses
  %i.ba = add i64 %i.az, 1
  store i64 %i.ba, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !343
  %i.bb = icmp ugt i64 %i.az, 65535
  %i.bc = trunc nuw nsw i64 %i.az to i32
  %i.bd = shl nuw i32 %i.bc, 16
  %.sroa.022.0.insert.insert = select i1 %i.bb, i32 513, i32 %i.bd ; 2 uses
  %i.be = trunc i32 %.sroa.022.0.insert.insert to i1
  br i1 %i.be, label %bb.k, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !344
  store i8 2, ptr %i.a, align 1, !noalias !344
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
  %i.bj = load i8, ptr %i.bi, align 8, !range !7, !noundef !3
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
!104 = !{!101}
!105 = !{!102}
!106 = !{!103, !101}
!107 = !{!103, !102}
!108 = distinct !{!108, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!109 = distinct !{!109, !108, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!110 = distinct !{!110, !108, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!111 = distinct !{!111, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_"}
!112 = distinct !{!112, !111, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 1"}
!113 = distinct !{!113, !111, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 2"}
!114 = distinct !{!114, !111, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!115 = distinct !{!115, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!116 = distinct !{!116, !115, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!117 = distinct !{!117, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!118 = distinct !{!118, !117, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!119 = distinct !{!119, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!120 = distinct !{!120, !119, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!121 = distinct !{!121, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!122 = distinct !{!122, !121, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!123 = distinct !{!123, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!124 = distinct !{!124, !123, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!125 = distinct !{!125, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!126 = distinct !{!126, !125, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!127 = distinct !{!127, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!128 = distinct !{!128, !127, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!129 = distinct !{!129, !125, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!130 = distinct !{!130, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!131 = distinct !{!131, !130, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!132 = distinct !{!132, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!133 = distinct !{!133, !132, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!134 = distinct !{!134, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate"}
!135 = distinct !{!135, !134, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String8truncate: argument 0"}
!136 = distinct !{!136, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push"}
!137 = distinct !{!137, !136, !"_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push: argument 0"}
!138 = !{!109}
!139 = !{!110}
!140 = !{!112}
!141 = !{!113}
!142 = !{!114, !112, !109}
!143 = !{!113, !110}
!144 = !{!114, !113, !109}
!145 = !{!112, !110}
!146 = !{!116}
!147 = !{!120, !118, !116}
!148 = !{!122, !120, !118, !116}
!149 = !{!124, !122, !120, !118, !116}
!150 = !{!128, !126}
!151 = !{!129}
!152 = !{!131, !128, !126}
!153 = !{!133, !131, !128, !126}
!154 = !{!135}
!155 = !{!137}
!156 = distinct !{!156, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid7set_pos"}
!157 = distinct !{!157, !156, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid7set_pos: argument 0"}
!158 = !{!157}
!159 = distinct !{!159, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!160 = distinct !{!160, !159, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!163 = distinct !{!163, !162, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!164 = distinct !{!164, !162, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!165 = distinct !{!165, !8}
!166 = distinct !{!166, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward"}
!167 = distinct !{!167, !166, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward: argument 0"}
!168 = distinct !{!168, !166, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid17erase_row_forward: argument 1"}
!169 = distinct !{!169, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!170 = distinct !{!170, !169, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!171 = !{!163}
!172 = !{!164}
!173 = !{!163, !164}
!174 = !{!167}
!175 = !{!168}
!176 = !{!170, !167, !168}
!177 = distinct !{!177, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!178 = distinct !{!178, !177, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!179 = distinct !{!179, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!180 = distinct !{!180, !179, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!181 = !{!178}
!182 = !{!180, !178}
!183 = distinct !{!183, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward"}
!184 = distinct !{!184, !183, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward: argument 0"}
!185 = distinct !{!185, !183, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid18erase_row_backward: argument 1"}
!186 = distinct !{!186, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!187 = distinct !{!187, !186, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!188 = distinct !{!188, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!189 = distinct !{!189, !188, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!190 = distinct !{!190, !188, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!191 = distinct !{!191, !8}
!192 = !{!184}
!193 = !{!187, !184, !185}
!194 = !{!185}
!195 = !{!189}
!196 = !{!190}
!197 = !{!189, !190}
!198 = distinct !{!198, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!199 = distinct !{!199, !198, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!200 = distinct !{!200, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!201 = distinct !{!201, !200, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!202 = !{!199}
!203 = !{!201, !199}
!204 = distinct !{!204, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!205 = distinct !{!205, !204, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!206 = distinct !{!206, !204, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!207 = distinct !{!207, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_"}
!208 = distinct !{!208, !207, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 1"}
!209 = distinct !{!209, !207, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 2"}
!210 = distinct !{!210, !207, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!211 = distinct !{!211, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!212 = distinct !{!212, !211, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!213 = distinct !{!213, !211, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!214 = distinct !{!214, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_"}
!215 = distinct !{!215, !214, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 1"}
!216 = distinct !{!216, !214, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 2"}
!217 = distinct !{!217, !214, !"_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBa_6traits8iterator8Iterator5chainIB4_INtNtNtBc_5slice4iter4IterB2a_EEEB2e_: argument 0"}
!218 = distinct !{!218, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_"}
!219 = distinct !{!219, !218, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_: argument 0"}
!220 = distinct !{!220, !218, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1I_INtNtNtBa_5slice4iter4IterB3g_EEEB1n_EENtNtNtB8_6traits8iterator8Iterator4nextB3k_: argument 1"}
!221 = distinct !{!221, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1g_INtNtNtBa_5slice4iter4IterB2O_EEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextB2S_"}
!222 = distinct !{!222, !221, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1g_INtNtNtBa_5slice4iter4IterB2O_EEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextB2S_: argument 0"}
!223 = distinct !{!223, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_5chain5ChainINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1h_INtNtNtBb_5slice4iter4IterB2P_EEEBW_EINtB5_7ZipImplBW_BW_E4nextB2T_"}
!224 = distinct !{!224, !223, !"_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_5chain5ChainINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1h_INtNtNtBb_5slice4iter4IterB2P_EEEBW_EINtB5_7ZipImplBW_BW_E4nextB2T_: argument 0"}
!225 = distinct !{!225, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!226 = distinct !{!226, !225, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!227 = distinct !{!227, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!228 = distinct !{!228, !227, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!229 = distinct !{!229, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!230 = distinct !{!230, !229, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!231 = distinct !{!231, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!232 = distinct !{!232, !231, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!233 = distinct !{!233, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!234 = distinct !{!234, !233, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!235 = distinct !{!235, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!236 = distinct !{!236, !235, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!237 = distinct !{!237, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!238 = distinct !{!238, !237, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!239 = distinct !{!239, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!240 = distinct !{!240, !239, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!241 = distinct !{!241, !237, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!242 = distinct !{!242, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!243 = distinct !{!243, !242, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!244 = distinct !{!244, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!245 = distinct !{!245, !244, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!246 = distinct !{!246, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!247 = distinct !{!247, !246, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!248 = distinct !{!248, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!249 = distinct !{!249, !248, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!250 = distinct !{!250, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!251 = distinct !{!251, !250, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!252 = distinct !{!252, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!253 = distinct !{!253, !252, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!254 = distinct !{!254, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!255 = distinct !{!255, !254, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!256 = distinct !{!256, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!257 = distinct !{!257, !256, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!258 = distinct !{!258, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!259 = distinct !{!259, !258, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!260 = distinct !{!260, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!261 = distinct !{!261, !260, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!262 = distinct !{!262, !258, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!263 = distinct !{!263, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!264 = distinct !{!264, !263, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!265 = distinct !{!265, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!266 = distinct !{!266, !265, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!267 = distinct !{!267, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100"}
!268 = distinct !{!268, !267, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100: argument 0"}
!269 = !{!205}
!270 = !{!206}
!271 = !{!208}
!272 = !{!209}
!273 = !{!210, !208, !205}
!274 = !{!209, !206}
!275 = !{!210, !209, !205}
!276 = !{!208, !206}
!277 = !{!212}
!278 = !{!213}
!279 = !{!215}
!280 = !{!216}
!281 = !{!217, !215, !212}
!282 = !{!216, !213}
!283 = !{!217, !216, !212}
!284 = !{!215, !213}
!285 = !{!219}
!286 = !{!220}
!287 = !{!228, !226, !224, !222, !220}
!288 = !{!232, !230, !228, !226, !224, !222, !220}
!289 = !{!234, !232, !230, !228, !226, !224, !222, !220}
!290 = !{!236, !234, !232, !230, !228, !226, !224, !222, !220}
!291 = !{!240, !238, !226, !224, !222, !220}
!292 = !{!241, !219}
!293 = !{!243, !240, !238, !226, !224, !222, !220}
!294 = !{!245, !243, !240, !238, !226, !224, !222, !220}
!295 = !{!249, !247, !224, !222, !220}
!296 = !{!253, !251, !249, !247, !224, !222, !220}
!297 = !{!255, !253, !251, !249, !247, !224, !222, !220}
!298 = !{!257, !255, !253, !251, !249, !247, !224, !222, !220}
!299 = !{!261, !259, !247, !224, !222, !220}
!300 = !{!262, !219}
!301 = !{!264, !261, !259, !247, !224, !222, !220}
!302 = !{!266, !264, !261, !259, !247, !224, !222, !220}
!303 = !{!268}
!304 = !{i64 1, i64 0}
!305 = distinct !{!305, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows"}
!306 = distinct !{!306, !305, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 1"}
!307 = distinct !{!307, !305, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12visible_rows: argument 0"}
!308 = distinct !{!308, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1s_INtNtNtBa_5slice4iter4IterB30_EEEENtNtNtB8_6traits8iterator8Iterator4nextB34_"}
!309 = distinct !{!309, !308, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_5chain5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB1s_INtNtNtBa_5slice4iter4IterB30_EEEENtNtNtB8_6traits8iterator8Iterator4nextB34_: argument 0"}
!310 = distinct !{!310, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_"}
!311 = distinct !{!311, !310, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_4take4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB10_INtNtNtBa_5slice4iter4IterB2y_EEENtNtNtB8_6traits8iterator8Iterator4nextB2C_: argument 0"}
!312 = distinct !{!312, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_"}
!313 = distinct !{!313, !312, !"_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_4take4TakeINtNtB4_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEERB2D_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB2H_: argument 0"}
!314 = distinct !{!314, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_"}
!315 = distinct !{!315, !314, !"_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtBa_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB2g_: argument 0"}
!316 = distinct !{!316, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_"}
!317 = distinct !{!317, !316, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEENtNtNtB8_6traits8iterator8Iterator4nextB2i_: argument 0"}
!318 = distinct !{!318, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_"}
!319 = distinct !{!319, !318, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skipINtB4_4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB20_: argument 0"}
!320 = distinct !{!320, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!321 = distinct !{!321, !320, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!322 = distinct !{!322, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_"}
!323 = distinct !{!323, !322, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 1"}
!324 = distinct !{!324, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_"}
!325 = distinct !{!325, !324, !"_RNCNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB6_5ChainINtNtB8_4take4TakeINtNtB8_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEEEIB12_INtNtNtBc_5slice4iter4IterB2A_EEENtNtNtBa_6traits8iterator8Iterator4next0B2E_: argument 0"}
!326 = distinct !{!326, !322, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCs6rR7J0NOYM8_5vt1003row3RowE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1v_5ChainINtNtB1x_4take4TakeINtNtB1x_4skip4SkipINtNtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iter4IterBJ_EEEIB2c_INtNtNtB5_5slice4iter4IterBJ_EEENtNtNtB1z_6traits8iterator8Iterator4next0EBN_: argument 0"}
!327 = distinct !{!327, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_"}
!328 = distinct !{!328, !327, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtNtBa_5slice4iter4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowEENtNtNtB8_6traits8iterator8Iterator4nextB1r_: argument 0"}
!329 = distinct !{!329, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_"}
!330 = distinct !{!330, !329, !"_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_: argument 0"}
!331 = distinct !{!331, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100"}
!332 = distinct !{!332, !331, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6rR7J0NOYM8_5vt100: argument 0"}
!333 = !{!306}
!334 = !{!307}
!335 = !{!313, !311, !309}
!336 = !{!317, !315, !313, !311, !309}
!337 = !{!319, !317, !315, !313, !311, !309}
!338 = !{!321, !319, !317, !315, !313, !311, !309}
!339 = !{!325, !323, !311, !309}
!340 = !{!326}
!341 = !{!328, !325, !323, !311, !309}
!342 = !{!330, !328, !325, !323, !311, !309}
!343 = !{!309}
!344 = !{!332}
!345 = distinct !{!345, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell"}
!346 = distinct !{!346, !345, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell: argument 0"}
!347 = distinct !{!347, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid11drawing_row"}
!348 = distinct !{!348, !347, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid11drawing_row: argument 0"}
!349 = distinct !{!349, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell"}
!350 = distinct !{!350, !349, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell: argument 0"}
!351 = distinct !{!351, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs6rR7J0NOYM8_5vt100"}
!352 = distinct !{!352, !351, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE8push_mutCs6rR7J0NOYM8_5vt100: argument 0"}
!353 = distinct !{!353, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell"}
!354 = distinct !{!354, !353, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid12drawing_cell: argument 0"}
!355 = distinct !{!355, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!356 = distinct !{!356, !355, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!357 = distinct !{!357, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!358 = distinct !{!358, !357, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!359 = distinct !{!359, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!360 = distinct !{!360, !359, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!361 = distinct !{!361, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100"}
!362 = distinct !{!362, !361, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs6rR7J0NOYM8_5vt100: argument 0"}
!363 = !{i8 -1, i8 3}
!364 = !{!346}
!365 = !{!348, !346}
!366 = !{!350}
!367 = !{!352}
!368 = !{!354}
!369 = !{!356}
!370 = !{!358}
!371 = !{!360}
!372 = !{!362}
!373 = distinct !{!373, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!374 = distinct !{!374, !373, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!375 = distinct !{!375, !373, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!376 = distinct !{!376, !8}
!377 = !{!374}
!378 = !{!375}
!379 = !{!374, !375}
!380 = distinct !{!380, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid14row_inc_scroll"}
!381 = distinct !{!381, !380, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid14row_inc_scroll: argument 0"}
!382 = distinct !{!382, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!383 = distinct !{!383, !382, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!384 = !{!381}
!385 = !{!383}
!386 = distinct !{!386, !8}
!387 = distinct !{!387, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!388 = distinct !{!388, !387, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!389 = distinct !{!389, !387, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!390 = distinct !{!390, !8}
!391 = !{!388}
!392 = !{!389}
!393 = !{!388, !389}
!394 = distinct !{!394, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut"}
!395 = distinct !{!395, !394, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15current_row_mut: argument 0"}
!396 = distinct !{!396, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut"}
!397 = distinct !{!397, !396, !"_RNvMNtCs6rR7J0NOYM8_5vt1004gridNtB2_4Grid15drawing_row_mut: argument 0"}
!398 = distinct !{!398, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear"}
!399 = distinct !{!399, !398, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 0"}
!400 = distinct !{!400, !398, !"_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row5clear: argument 1"}
!401 = distinct !{!401, !8}
!402 = !{!395}
!403 = !{!397, !395}
!404 = !{!399}
!405 = !{!400}
!406 = !{!399, !400}
!407 = distinct !{!407, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_"}
!408 = distinct !{!408, !407, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_: argument 0"}
!409 = distinct !{!409, !407, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_: argument 2"}
!410 = distinct !{!410, !407, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs6rR7J0NOYM8_5vt1003row3RowE10insert_mutBH_: argument 1"}
!411 = distinct !{!411, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6rR7J0NOYM8_5vt1003row3RowEEB11_"}
!412 = distinct !{!412, !411, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6rR7J0NOYM8_5vt1003row3RowEEB11_: argument 0"}
!413 = !{!408}
!414 = !{!410, !409}
!415 = !{!408, !410}
!416 = !{!409}
!417 = !{i64 -1, i64 -9223372036854775808}
!418 = !{!412}
!419 = distinct !{!419, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_"}
!420 = distinct !{!420, !419, !"_RNvXs2_NtNtNtCscdodAO9FK5_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs6rR7J0NOYM8_5vt1003row3RowENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1b_: argument 0"}
!421 = !{!420}
end_hunk_1
